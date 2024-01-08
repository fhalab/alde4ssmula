'''
Collection of test functions. Each has obj function call, as well as get_max(), get_domain(), get_points().
All are framed as maximization problems.
'''
from __future__ import annotations

from collections.abc import Callable
from typing import Any
import numpy as np
import pandas as pd
import torch
from torch import Tensor

import src.utils as utils
from src.utils import Noise, ObjectiveFunc
from src.encoding_utils import generate_onehot, generate_all_combos

class Objective:
    name: str

    @staticmethod
    def objective(x: Tensor, noise: Noise = 0.
                  ) -> Tensor | tuple[Tensor, Tensor]:
        """
        Args
            x: shape [batch_size, d], input
            noise: amount of noise

        Returns: shape [batch_size]
        """
        raise NotImplementedError

    @staticmethod
    def get_max() -> Tensor:
        """Returns maximum value of objective function."""
        raise NotImplementedError

    @staticmethod
    def get_domain() -> tuple[Tensor, Tensor]:
        """Returns (low, high) domain of objective function.

        low, high have type doubleTensor.
        """
        raise NotImplementedError

    @staticmethod
    def get_points() -> tuple[Tensor, Tensor]:
        """Returns (x, y) pairs."""
        raise NotImplementedError

    @staticmethod
    def get_all_points() -> tuple[Tensor, Tensor]:
        """Returns (x, y) pairs."""
        raise NotImplementedError

class Combo(Objective):
    name = 'combinatorial_library'

    def __init__(self, encoding):
        #for now, just flatten the encodings and manually unflatten later (could be better)
        if 'GB1' in encoding:
            fitness_df = pd.read_csv('/disk1/jyang4/repos/data/GB1_fitness.csv')
            self.y = torch.tensor(fitness_df['fit'].values).double()
            self.y = self.y/self.y.max()
        elif 'TrpB' in encoding:
            fitness_df = pd.read_csv('/disk1/jyang4/repos/data/TrpB_fitness.csv')
            self.y = torch.tensor(fitness_df['fitness'].values).double()
            self.y = self.y/self.y.max()

        if encoding == 'GB1_ESM2':
            self.X = torch.tensor(np.load('/disk1/jyang4/repos/data/GB1_ESM2_4site.npy')).double()
            self.X = torch.reshape(self.X, (self.X.shape[0], -1)) #flatten the inputs

        elif encoding == 'TrpB_ESM2':
            self.X = torch.tensor(np.load('/disk1/jyang4/repos/data/TrpB_ESM2_4site.npy')).double()
            self.X = torch.reshape(self.X, (self.X.shape[0], -1)) #flatten the inputs
            
            
        # elif encoding == 'trpB_ESM2':
        #     combo_df = pd.read_csv('/home/jyang4/repos/data/Tm9D8s_combo_ESM.csv')
        #     fitness_df = pd.read_csv('/home/jyang4/repos/data/Tm9D8s_fitness.csv')
        #     indices =  combo_df[combo_df['combo'].isin(fitness_df['Combo'])].index.values
        #     #need to make sure the order didn't get mixed up here
        #     self.X = torch.tensor(np.load('/home/jyang4/repos/data/trpB_esm2_1280_meanpooled.npy')).float()[indices]
        #     self.y = torch.load('/home/jyang4/repos/data/trpB_onehot_y.pt')
        else:
            if encoding == 'GB1_onehot':
                self.bwx = '/disk1/jyang4/repos/data/GB1_onehot_x.pt'
                #self.bwy = '/home/jyang4/repos/data/GB1_onehot_y.pt'
            elif encoding == 'GB1_AA':
                self.bwx = '/disk1/jyang4/repos/data/GB1_AA_x.pt'
            elif encoding == 'GB1_georgiev':
                self.bwx = '/disk1/jyang4/repos/data/GB1_georgiev_x.pt'
                #self.bwy = '/home/jyang4/repos/data/GB1_onehot_y.pt'
            # elif encoding == 'GB1_ESM1b':
            #     self.bwx = '/home/jyang4/repos/data/GB1_ESM1b_x.pt'
            #     self.bwy = '/home/jyang4/repos/data/GB1_ESM1b_y.pt'
            # elif encoding == 'GB1_TAPE':
            #     self.bwx = '/home/jyang4/repos/data/GB1_TAPE_x.pt'
            #     self.bwy = '/home/jyang4/repos/data/GB1_TAPE_y.pt'
            elif encoding == 'TrpB_onehot':
                self.bwx = '/disk1/jyang4/repos/data/TrpB_onehot_x.pt'
                #self.bwy = '/home/jyang4/repos/data/trpB_onehot_y.pt'
            elif encoding == 'TrpB_AA':
                self.bwx = '/disk1/jyang4/repos/data/TrpB_AA_x.pt'
            elif encoding == 'TrpB_georgiev':
                self.bwx = '/disk1/jyang4/repos/data/TrpB_georgiev_x.pt'
            
            self.X = torch.load(self.bwx)
            #self.y = torch.load(self.bwy)
        
    def objective(self, x: Tensor, noise: Noise = 0.) -> tuple[Tensor, Tensor]:
        # need to return actual x queried, not one asked for
        qx, qy = utils.query_discrete(self.X, self.y, x)
        return qx.double(), qy.double()

    def get_max(self) -> Tensor:
        return torch.max(self.y).double()

    def get_domain(self) -> tuple[Tensor, Tensor]:
        lower, upper = utils.domain_discrete(self.X)
        return lower.double(), upper.double()

    def get_points(self) -> tuple[Tensor, Tensor]:
        return self.X.double(), self.y.double()

    @staticmethod
    def get_all_points() -> tuple[Tensor, Tensor]:
        return Combo.get_points()

class Production(Objective):
    name = 'Production'

    def __init__(self, df, encoding, target):
        train_combos = df['Combo'].tolist()
        self.nsamples = len(train_combos)
        self.ytrain = df[target].values
        self.Xtrain = generate_onehot(train_combos)
        self.Xtrain = torch.reshape(self.Xtrain, (self.Xtrain.shape[0], -1))

        nsites = len(df['Combo'][0])
        
        assert encoding == 'onehot'
        self.all_combos = generate_all_combos(nsites)
        self.train_indices = [self.all_combos.index(combo) for combo in train_combos]
        #print(self.train_indices)

        #self.test_combos = [combo for combo in self.all_combos if combo not in train_combos]

        np.save("combos.npy", np.array(self.all_combos))

        #for proposal step
        self.X = torch.reshape(generate_onehot(self.all_combos), (len(self.all_combos), -1))
        #filler array,used to measure regret, does not affect outcome
        self.y = np.zeros(len(self.all_combos)) # filler values
        #replace the indices of y with ytrain

        self.y[self.train_indices] = self.ytrain
        self.ytrain = torch.tensor(self.ytrain)
        self.y = torch.tensor(self.y)
        self.train_indices = torch.tensor(self.train_indices)

        # self.X = torch.tensor(np.concatenate([self.Xtrain, self.Xtest]))
        # self.y = torch.tensor(np.concatenate([self.ytrain, self.ytest]))

    def objective(self, x: Tensor, noise: Noise = 0.) -> tuple[Tensor, Tensor]:
        # need to return actual x queried, not one asked for
        qx, qy = utils.query_discrete(self.X, self.y, x)
        return qx.double(), qy.double()

    def get_max(self) -> Tensor:
        return torch.max(self.y).double()

    def get_domain(self) -> tuple[Tensor, Tensor]:
        lower, upper = utils.domain_discrete(self.X)
        return lower.double(), upper.double()

    def get_points(self) -> tuple[Tensor, Tensor]:
        return self.X.double(), self.y.double()

    @staticmethod
    def get_all_points() -> tuple[Tensor, Tensor]:
        return Production.get_points()
    
ALL_OBJS = [Combo, Production]

NAME_TO_OBJ = {
    obj.name: obj for obj in ALL_OBJS
}
