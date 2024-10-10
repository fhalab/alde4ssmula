"""
A script for analyzing the results of the simulation.
"""

from __future__ import annotations

from glob import glob

from src.analysis import parse_results

if __name__ == "__main__":
    # to run analysis for all the results
    parse_results("results/*")

    # to run analysis for multiple rounds without focused training
    # parse_results("results/4eq_*")
    # parse_results("results/3eq_*")
    # parse_results("results/2eq_*")

    # to run analysis for multiple rounds with focused training for different rounds
    # parse_results("results/ed_*")
    # parse_results("results/ev_*")
    # parse_results("results/esm_*")
    # parse_results("results/esmif_*")
    # parse_results("results/coves_*")
    # parse_results("results/Triad_*")

