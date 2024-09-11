"""
A script for analyzing the results of the simulation.
"""

from __future__ import annotations

from src.analysis import parse_results

if __name__ == "__main__":
    parse_results(["results/coves_3eq_40", "results/coves_3eq_48", "results/coves_3eq_64", "results/coves_3eq_96", "results/coves_3eq_128", "results/coves_3eq_160", "results/coves_3eq_192"])
    parse_results(["results/ed_3eq_40", "results/ed_3eq_48", "results/ed_3eq_64", "results/ed_3eq_96", "results/ed_3eq_128", "results/ed_3eq_160"])
    parse_results(["results/esm_3eq_40", "results/esm_3eq_48", "results/esm_3eq_64", "results/esm_3eq_96", "results/esm_3eq_128", "results/esm_3eq_160"])
    parse_results(["results/esmif_3eq_40", "results/esmif_3eq_48", "results/esmif_3eq_64", "results/esmif_3eq_96", "results/esmif_3eq_128", "results/esmif_3eq_160"])
    parse_results(["results/ev_3eq_40", "results/ev_3eq_48", "results/ev_3eq_64", "results/ev_3eq_96", "results/ev_3eq_128", "results/ev_3eq_160"])
    parse_results(["results/Triad_3eq_40", "results/Triad_3eq_48", "results/Triad_3eq_64", "results/Triad_3eq_96", "results/Triad_3eq_128", "results/Triad_3eq_160", "results/Triad_3eq_192"])
    # parse_results("results/coves_*")
    # parse_results("results/esmif_*")
    # parse_results("results/ev_4eq_*")
    # parse_results("results/ed_*")
    # parse_results("results/Triad_*")
    # parse_results("results/esm_*")
    # parse_results("results/all_*")
    # parse_results("results/4eq_*")
    # parse_results("results/3eq_*")
    # parse_results("results/2eq_*")
    
    # # parse_results(["results/2eq_60", "results/2eq_72", "results/2eq_96", "results/2eq_144", "results/2eq_192", "results/2eq_240", "results/2eq_288", "results/2eq_336", "results/2eq_528", "results/2eq_1008"])