"""
A script for analyzing the results of the simulation.
"""

from __future__ import annotations

import numpy as np
import torch
from datetime import datetime
import glob
import os
import math
import pandas as pd

from copy import deepcopy


def index2regret(indices, y):
    """
    Converts list of queried indices to regret (difference between the max value in the deisgn space and the max queired value)
    """
    indices = np.array(indices, dtype=int)
    regret = torch.zeros((indices.shape[0], indices.shape[1]))
    for i in range(indices.shape[0]):
        for j in range(indices.shape[1]):
            regret[i, j] = 1 - y[indices[i, : j + 1]].max()
    return regret


def load_tensors(subdir, y):
    """
    loads al indices from a directory and converts them to regret values
    """
    tensors = sorted(glob.glob(subdir + "/*indices*.pt"))

    tests = {}
    print("Models not included/not over budget yet:\n")

    for tensor in tensors:
        num = int(tensor.split("indices")[0].split("_")[-1])

        if ".pt" in tensor and "state_dict" not in tensor:
            first = False
            if "Random" not in os.path.basename(tensor):
                nm = (
                    os.path.basename(tensor).split("_")[0]
                    + "_"
                    + os.path.basename(tensor).split("_")[1]
                )
            else:
                nm = os.path.basename(tensor).split("_")[0]

            t = torch.load(tensor).cpu().detach()
            t = torch.reshape(t, (1, -1))

            # lim = 480
            # if t.size(-1) < lim:
            #     if 'indices.pt' in tensor:
            #         print(tensor.split('/')[-1])
            #     continue
            if nm in tests.keys():
                d = tests[nm]
            else:
                d = {}
                tests[nm] = d

            dtype = os.path.basename(tensor).split("_")[-1].split(".")[0]
            dtype = "".join([i for i in dtype if not i.isdigit()])
            if dtype in d.keys():
                arr = d[dtype]
            else:
                arr = t
                d[dtype] = arr
                first = True
            if first:
                pass
            elif t.size(-1) < arr.size(-1):
                arr = torch.cat((arr[:, : t.size(-1)], t), 0)
            else:
                arr = torch.cat((arr, t[:, : arr.size(-1)]), 0)
            d[dtype] = arr
            tests[nm] = d

    print("\nModels included:\n")
    batch = {}
    budget, total = math.inf, math.inf
    for key in tests.keys():
        # print(key)
        num_runs = -1
        for dtype in tests[key].keys():
            t = tests[key][dtype]
            t = index2regret(t, y)

            if "indices" == dtype and t.size(-1) != 0:
                if t.size(-1) < budget:
                    budget = t.size(-1)
                num_runs = t.size(0)
            elif "y" in dtype and t.size(-1) < total and t.size(-1) != 0:
                total = t.size(-1)

            sd, mean = torch.std_mean(t, 0)
            sem = sd / (t.size(0) ** 0.5)
            # add fraction achieve max regret
            frac_max_mean = torch.where(
                t == 0, torch.tensor(1.0), torch.tensor(0.0)
            ).sum(dim=0) / t.size(0)

            if dtype in batch.keys():
                d = batch[dtype]
            else:
                d = {}
                batch[dtype] = d

            d[key] = (mean, sem, frac_max_mean)

            batch[dtype] = d
        print("Runs: {}".format(num_runs))
    print(batch.keys())
    print("Budget: {}".format(budget))
    print("Total queries (incl. init): {}".format(budget))

    return batch, budget


def tabulate_regret(df, tests, budget, subdir, randregret=None):
    """
    Tabulates loaded regret values into an organized dataframe.
    """
    names = []
    queries = np.arange(budget) + 1

    for name in sorted(tests.keys()):
        names.append(name)

        mean, sem, frac_max = tests[name]
        mean = 1 - mean
        if mean.size(0) < budget:
            names.pop()
            continue
        if mean.size(0) > budget:
            mean = mean[:budget]
            sem = sem[:budget]

        protein = subdir.split("/")[-2]
        encoding = subdir.split("/")[-1]

        if "Random" in name:
            encoding = "Random"
            model = "Random"
            acquisition = "Random"
        else:
            names = name.split("-")
            model = names[0]
            acquisition = names[-2]

        for timestep, single_mean, single_std, single_frac_max in zip(
            queries, np.array(mean), np.array(sem), np.array(frac_max)
        ):
            df.loc[len(df.index)] = [
                protein,
                encoding,
                model,
                acquisition,
                timestep,
                single_mean,
                single_std,
                single_frac_max,
            ]
    return df


def parse_results(res_dirs: str | list[str]):
    """
    Parses the results of the simulation.

    ie results/all_*
    """

    if type(res_dirs) == str:
        res_dir_list = glob.glob(res_dirs)
    else:
        res_dir_list = deepcopy(res_dirs)

    # Loop over different datasets and encodings
    for res_dir in res_dir_list:

        print(f"Processing {res_dir}...")
        # tabulate all max fitness values into one dataframe
        df = pd.DataFrame(
            columns=[
                "Protein",
                "Encoding",
                "Model",
                "Acquisition",
                "Timestep",
                "Mean",
                "Std",
                "Frac",
            ]
        )

        for protein in [
            "DHFR",
            "GB1",
            "ParD2",
            "ParD3",
            "T7_2",
            "TEV",
            "TrpB3A",
            "TrpB3B",
            "TrpB3C",
            "TrpB3D",
            "TrpB3E",
            "TrpB3F",
            "TrpB3G",
            "TrpB3H",
            "TrpB3I",
            "TrpB4",
        ]:
            for encoding in ["onehot"]:
                subdir = res_dir + "/" + protein + "/" + encoding
                fitness_df = pd.read_csv("data/" + protein + "/fitness.csv")
                y = fitness_df["fitness"].values
                y = y / y.max()

                print(subdir)

                batch, budget = load_tensors(subdir, y)

                df = tabulate_regret(
                    df, batch["indices"], budget, subdir, randregret=None
                )

        # clean up the results and save
        df = df.drop_duplicates(
            subset=["Protein", "Encoding", "Model", "Acquisition", "Timestep"],
            keep="first",
        )
        df["Model"] = df["Model"].replace("BOOSTING_ENSEMBLE", "Boosting Ensemble")
        df["Model"] = df["Model"].replace("GP_BOTORCH", "GP")
        df["Model"] = df["Model"].replace("DNN_ENSEMBLE", "DNN Ensemble")
        df["Model"] = df["Model"].replace("DKL_BOTORCH", "DKL")
        df["Acquisition"] = df["Acquisition"].replace("Random", "GREEDY")
        df.to_csv(res_dir + "/all_results_2.csv", index=False)

        del df