"""A script for preprocessing the data for the ALDE4SSMULA project."""

import os
import pandas as pd
from glob import glob


def checkNgen_folder(folder_path: str) -> str:

    """
    Check if the folder and its subfolder exists
    create a new directory if not
    Args:
    - folder_path: str, the folder path
    """

    split_list = os.path.normpath(folder_path).split("/")
    
    # check if absolute
    if os.path.isabs(folder_path):
        split_list[0] = "/" + split_list[0]

    for p, _ in enumerate(split_list):
        subfolder_path = "/".join(split_list[: p + 1])
        if not os.path.exists(subfolder_path):
            print(f"Making {subfolder_path} ...")
            os.mkdir(subfolder_path)
    return folder_path

def preprocessing_data(path_pattern: str = 'data_original/*/*.csv') -> None:
    """
    A function for cleaning up input data
    """
    for file_path in glob(path_pattern):
        output_path_temp = file_path.replace('data_original', 'data')
        
        output_dir = os.path.dirname(output_path_temp)
        checkNgen_folder(output_dir)

        # replace file name to be fitness
        output_path = os.path.join(output_dir, "fitness.csv")

        df = pd.read_csv(file_path)
        # get rid of rows with * in the name of AAs
        df = df[~df['AAs'].str.contains('\*')].copy()
        df = df.rename(columns={'AAs': 'Combo'})
        df[["Combo", "fitness"]].copy().to_csv(output_path, index=False)
        print(f'Processed {file_path}')

