"""
A script for analyzing the results of the simulation.
"""

from __future__ import annotations

from src.analysis import parse_results

if __name__ == "__main__":
    parse_results("results/all_*")
    parse_results(["results/4eq_36", "results/4eq_48", "results/4eq_72", "results/4eq_96", "results/4eq_120"])
    parse_results(["results/3eq_40", "results/3eq_96", "results/3eq_128"])
    parse_results(["results/2eq_60", "results/2eq_72", "results/2eq_96", "results/2eq_144", "results/2eq_240"])