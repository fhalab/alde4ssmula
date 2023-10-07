from __future__ import annotations
import torch
import gpytorch
import botorch

import numpy as np
import pandas as pd
import random
# from datetime import datetime
# import glob
import os, time
# import math
import multiprocessing as mp
# from concurrent.futures import ProcessPoolExecutor
import warnings

from src.optimize import BayesianOptimization, BO_ARGS
import src.objectives as objectives
import src.utils as utils

from dataclasses import dataclass

import torch
from botorch.acquisition import qExpectedImprovement
from botorch.fit import fit_gpytorch_mll
from botorch.generation import MaxPosteriorSampling
from botorch.models import SingleTaskGP
from botorch.optim import optimize_acqf
from botorch.test_functions import Ackley
# from botorch.utils.transforms import unnormalize
from torch.quasirandom import SobolEngine

import gpytorch
from gpytorch.constraints import Interval
from gpytorch.kernels import MaternKernel, ScaleKernel
from gpytorch.likelihoods import GaussianLikelihood
from gpytorch.mlls import ExactMarginalLogLikelihood
from gpytorch.priors import HorseshoePrior

'''
Sample experiment runner script for DK-BO. Launches optimization runs as
separate processes.
This uses the Hartmann 6D dataset as an example.
'''

if __name__ == "__main__":
    warnings.filterwarnings("ignore")

    # USER: set up objective func and related values
    #   -- add your own objective function in objectives.py
    #   -- OR replace obj_fn with function handle, etc...
    # fun = botorch.test_functions.synthetic.Hartmann(dim=6, negate=True)#.to(dtype=dtype, device=device)
    # fun.bounds[0, :].fill_(0)
    # fun.bounds[1, :].fill_(1)
    # # dim = fun.dim

    # obj_fn = fun
    # domain = fun.bounds
    # disc_X = utils.grid(domain, samp_per_dim=7)
    # # either compute y_max over all points, or know it before hand. or None.
    # # for regret computing purposes only
    # maxx = torch.Tensor([[.20169, .15001, .47687, .27533, .31165, .6573]])
    # ymax = obj_fn(maxx)

    # USER: create objective fn in objectives.py
    encoding = 'onehot'
    df = pd.read_csv('test_fivesite.csv')
    n_samples = len(df)
    obj = objectives.Production(df, encoding)
    #TODO: output the order of the combos so that the indices are specific
    

    #obj = objectives.Hartmann_6d()
    obj_fn = obj.objective
    domain = obj.get_domain()
    ymax = obj.get_max()
    disc_X = obj.get_points()[0]
    batch_size = 96

    budget = 96 #budget does not include MLDE evaluation at the end with 96 samples, and does not include random samples at the beginning

    try:
        mp.set_start_method('spawn')
    except:
        print('Context already set.')
    
    # make dir to hold tensors
    path = '/home/jyang4/repos/DKBO-MLDE/'
    subdir = path + 'results/production_test/'
    #subdir = path + 'results/Hartmann_6d/'
    os.makedirs(subdir, exist_ok=True)
    # so have record of all params
    os.system('cp ' + __file__ + ' ' + subdir)
    print('Script stored.')

    # USER: set # runs you wish to perform, and index them for saving
    runs = 1
    # start this at 0, -> however many runs you do total. i.e. 20
    index = 0
    

    torch.backends.cudnn.deterministic = True
    torch.backends.cudnn.benchmark = False
    
    arg_list = []

    for r in range(index, index + runs):
        seed = r
        kernel='RBF'
        for mtype in  ['DKL']:
            for acq_fn in ['TS']: #'EI', 'UCB','TS'
                dropout=0

                # if mtype == 'DKL' and acq_fn == 'TS' and "onehot" not in encoding:
                #     num_simult_jobs = 4 #current bottleneck is the maximum number of jobs that can fit on gpu memory
                # else:
                #     num_simult_jobs = 10
                num_simult_jobs = 1

                if mtype =='GP':
                    arc = [domain[0].size(-1), 1] #use this architecture for GP
                elif mtype =='DKL':
                    if 'onehot' in encoding:
                        arc  = [domain[0].size(-1), 40, 20, 10, 10]
                    elif 'ESM2' in encoding:
                        arc  = [domain[0].size(-1), 1000, 200, 50, 50] #becomes DKL automatically if more than two layers
                elif mtype == 'CDKL':
                    if 'onehot' in encoding:
                        #arc  = [int(domain[0].size(-1)/20), 20, 32, 32, 32, 64, 64]
                        arc  = [int(domain[0].size(-1)/20), 20, 32, 32, 32, 32, 32, 32]
                    elif 'ESM2' in encoding:
                        arc  = [int(domain[0].size(-1)/1280), 1280, 80, 40, 40, 32, 32, 32]

                    # if 'ESM2' in encoding:
                    #     arc  = [int(domain[0].size(-1)/1280), 20, 16, 16, 16, 32, 32]
                else:
                    arc = [domain[0].size(-1), 1] #filler architecture for MLDE

                #fname = mtype + '-DO-' + str(dropout) + '-' + kernel + '-' + acq_fn + '_' + str(r + 1) + str(arc[1:-1]) + '_' + str(r + 1)
                if mtype == 'MLDE':
                    fname = mtype +  '_' + str(r + 1)
                else:
                    fname = mtype + '-DO-' + str(dropout) + '-' + kernel + '-' + acq_fn + '-' + str(arc[-2:]) + '_' + str(r + 1)
                args = BO_ARGS(
                    # primary args
                    mtype=mtype,
                    kernel=kernel,
                    acq_fn=acq_fn,
                    # secondary args
                    xi=.1,
                    architecture=arc,
                    activation='lrelu',
                    min_noise=1e-6,
                    trainlr=1e-3, #originally 1e-2 in james
                    train_iter=300,
                    dropout=dropout,
                    mcdropout=0,
                    verbose=2,
                    # usually don't change
                    bb_fn=obj_fn,
                    domain=domain,
                    disc_X=disc_X,
                    obj_max=ymax,
                    noise_std=0,
                    n_rand_init=0,
                    budget=budget,
                    query_cost=1,
                    queries_x=obj.Xtrain,
                    queries_y=obj.ytrain,
                    indices=torch.arange(n_samples),
                    savedir=subdir+fname,
                    batch_size = batch_size,
                    run_mlde = False
                )
                arg_list.append((args, seed))

    total_time = time.time()
    with mp.Pool(num_simult_jobs) as pool:
        pool.starmap(BayesianOptimization.run, arg_list)
        pool.close()
        pool.join()
        print(f'Total runtime: {time.time()-total_time}')
    
    print('Tensors will be saved in {}'.format(subdir))