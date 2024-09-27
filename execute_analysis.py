"""
A script for analyzing the results of the simulation.
"""

from __future__ import annotations

from glob import glob

from src.analysis import parse_results

if __name__ == "__main__":
    # parse_results(["results/coves_3eq_192", "results/coves_3eq_224", "results/coves_3eq_352", "results/coves_3eq_672"])
    # parse_results(["results/ed_3eq_192", "results/ed_3eq_224", "results/ed_3eq_352", "results/ed_3eq_672"])
    # parse_results(["results/esm_3eq_192", "results/esm_3eq_224", "results/esm_3eq_352", "results/esm_3eq_672"])
    # parse_results(["results/esmif_3eq_192", "results/esmif_3eq_224", "results/esmif_3eq_352", "results/esmif_3eq_672"])
    # parse_results(["results/ev_3eq_192", "results/ev_3eq_224", "results/ev_3eq_352", "results/ev_3eq_672"])
    # parse_results(["results/Triad_3eq_224", "results/Triad_3eq_352", "results/Triad_3eq_672"])
    parse_results("results/ds*")
    # parse_results(["results/ed_2eq_1008", "results/ed_2eq_528"])
    # parse_results(["results/esm_2eq_240"])
    # parse_results(["results/esmif_2eq_240"])
    # parse_results(["results/ev_2eq_240"])
    # parse_results(["results/Triad_2eq_1008"])

    # parse_results("results/all_*")
    # parse_results("results/4eq_*")
    # parse_results("results/3eq_*")
    # parse_results("results/2eq_*")
    
    # parse_results(["results/2eq_60", "results/2eq_72", "results/2eq_96", "results/2eq_144", "results/2eq_192", "results/2eq_240", "results/2eq_288", "results/2eq_336", "results/2eq_528", "results/2eq_1008"])