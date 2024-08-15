"""
A script for analyzing the results of the simulation.
"""

from __future__ import annotations

from src.analysis import parse_results

if __name__ == "__main__":
    parse_results(["results/4eq_30"])
    # parse_results("results/all_*")
    # parse_results(["results/4eq_36", "results/4eq_48", "results/4eq_72", "results/4eq_96", "results/4eq_120", "results/4eq_144", "results/4eq_168", "results/4eq_264", "results/4eq_504"])
    # parse_results(["results/3eq_40", "results/3eq_48", "results/3eq_64", "results/3eq_96", "results/3eq_128", "results/3eq_160", "results/3eq_192", "results/3eq_224", "results/3eq_352", "results/3eq_672"])
    # parse_results(["results/2eq_60", "results/2eq_72", "results/2eq_96", "results/2eq_144", "results/2eq_192", "results/2eq_240", "results/2eq_288", "results/2eq_336", "results/2eq_528", "results/2eq_1008"])