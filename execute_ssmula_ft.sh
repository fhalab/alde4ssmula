# script for running the simulation with different ZS predictors for focused training
export CUDA_VISIBLE_DEVICES=0

########## Hamming / edited distance ##########
# two rounds with Hamming / edited distance
# python execute_simulation.py --zs=ed --n_pseudorand_init=60 --batch_size=60 --budget=60 --runs=50 --output_path=results/ed_2eq_60/
# python execute_simulation.py --zs=ed --n_pseudorand_init=72 --batch_size=72 --budget=72 --runs=50 --output_path=results/ed_2eq_72/
# python execute_simulation.py --zs=ed --n_pseudorand_init=96 --batch_size=96 --budget=96 --runs=50 --output_path=results/ed_2eq_96/
# python execute_simulation.py --zs=ed --n_pseudorand_init=144 --batch_size=144 --budget=144 --runs=50 --output_path=results/ed_2eq_144/
# python execute_simulation.py --zs=ed --n_pseudorand_init=192 --batch_size=192 --budget=192 --runs=50 --output_path=results/ed_2eq_192/
# python execute_simulation.py --zs=ed --n_pseudorand_init=240 --batch_size=240 --budget=240 --runs=50 --output_path=results/ed_2eq_240/
# python execute_simulation.py --zs=ed --n_pseudorand_init=288 --batch_size=288 --budget=288 --runs=50 --output_path=results/ed_2eq_288/
# python execute_simulation.py --zs=ed --n_pseudorand_init=336 --batch_size=336 --budget=336 --runs=50 --output_path=results/ed_2eq_336/
# python execute_simulation.py --zs=ed --n_pseudorand_init=528 --batch_size=528 --budget=528 --runs=50 --output_path=results/ed_2eq_528/
# python execute_simulation.py --zs=ed --n_pseudorand_init=1008 --batch_size=1008 --budget=1008 --runs=50 --output_path=results/ed_2eq_1008/

# three rounds with Hamming / edited distance
# python execute_simulation.py --zs=ed --n_pseudorand_init=40 --batch_size=40 --budget=80 --runs=50 --output_path=results/ed_3eq_40/
# python execute_simulation.py --zs=ed --n_pseudorand_init=48 --batch_size=48 --budget=96 --runs=50 --output_path=results/ed_3eq_48/
# python execute_simulation.py --zs=ed --n_pseudorand_init=64 --batch_size=64 --budget=128 --runs=50 --output_path=results/ed_3eq_64/
# python execute_simulation.py --zs=ed --n_pseudorand_init=96 --batch_size=96 --budget=192 --runs=50 --output_path=results/ed_3eq_96/
# python execute_simulation.py --zs=ed --n_pseudorand_init=128 --batch_size=128 --budget=256 --runs=50 --output_path=results/ed_3eq_128/
# python execute_simulation.py --zs=ed --n_pseudorand_init=160 --batch_size=160 --budget=320 --runs=50 --output_path=results/ed_3eq_160/
# python execute_simulation.py --zs=ed --n_pseudorand_init=192 --batch_size=192 --budget=384 --runs=50 --output_path=results/ed_3eq_192/
# python execute_simulation.py --zs=ed --n_pseudorand_init=224 --batch_size=224 --budget=448 --runs=50 --output_path=results/ed_3eq_224/
# python execute_simulation.py --zs=ed --n_pseudorand_init=352 --batch_size=352 --budget=704 --runs=50 --output_path=results/ed_3eq_352/
# python execute_simulation.py --zs=ed --n_pseudorand_init=672 --batch_size=672 --budget=1344 --runs=50 --output_path=results/ed_3eq_672/

# four rounds with Hamming / edited distance
# python execute_simulation.py --zs=ed --n_pseudorand_init=30 --batch_size=30 --budget=90 --runs=50 --output_path=results/ed_4eq_30/
# python execute_simulation.py --zs=ed --n_pseudorand_init=36 --batch_size=36 --budget=108 --runs=50 --output_path=results/ed_4eq_36/
# python execute_simulation.py --zs=ed --n_pseudorand_init=48 --batch_size=48 --budget=144 --runs=50 --output_path=results/ed_4eq_48/
# python execute_simulation.py --zs=ed --n_pseudorand_init=72 --batch_size=72 --budget=216 --runs=50 --output_path=results/ed_4eq_72/
# python execute_simulation.py --zs=ed --n_pseudorand_init=96 --batch_size=96 --budget=288 --runs=50 --output_path=results/ed_4eq_96/
# python execute_simulation.py --zs=ed --n_pseudorand_init=120 --batch_size=120 --budget=360 --runs=50 --output_path=results/ed_4eq_120/
# python execute_simulation.py --zs=ed --n_pseudorand_init=144 --batch_size=144 --budget=432 --runs=50 --output_path=results/ed_4eq_144/
# python execute_simulation.py --zs=ed --n_pseudorand_init=168 --batch_size=168 --budget=504 --runs=50 --output_path=results/ed_4eq_168/
# python execute_simulation.py --zs=ed --n_pseudorand_init=264 --batch_size=264 --budget=792 --runs=50 --output_path=results/ed_4eq_264/
# python execute_simulation.py --zs=ed --n_pseudorand_init=504 --batch_size=504 --budget=1512 --runs=50 --output_path=results/ed_4eq_504/


########## EVmutation ##########
# two rounds with EVmutation
# python execute_simulation.py --zs=ev --n_pseudorand_init=60 --batch_size=60 --budget=60 --runs=50 --output_path=results/ev_2eq_60/
# python execute_simulation.py --zs=ev --n_pseudorand_init=72 --batch_size=72 --budget=72 --runs=50 --output_path=results/ev_2eq_72/
# python execute_simulation.py --zs=ev --n_pseudorand_init=96 --batch_size=96 --budget=96 --runs=50 --output_path=results/ev_2eq_96/
# python execute_simulation.py --zs=ev --n_pseudorand_init=144 --batch_size=144 --budget=144 --runs=50 --output_path=results/ev_2eq_144/
# python execute_simulation.py --zs=ev --n_pseudorand_init=192 --batch_size=192 --budget=192 --runs=50 --output_path=results/ev_2eq_192/
# python execute_simulation.py --zs=ev --n_pseudorand_init=240 --batch_size=240 --budget=240 --runs=50 --output_path=results/ev_2eq_240/
# python execute_simulation.py --zs=ev --n_pseudorand_init=288 --batch_size=288 --budget=288 --runs=50 --output_path=results/ev_2eq_288/
# python execute_simulation.py --zs=ev --n_pseudorand_init=336 --batch_size=336 --budget=336 --runs=50 --output_path=results/ev_2eq_336/
# python execute_simulation.py --zs=ev --n_pseudorand_init=528 --batch_size=528 --budget=528 --runs=50 --output_path=results/ev_2eq_528/
# python execute_simulation.py --zs=ev --n_pseudorand_init=1008 --batch_size=1008 --budget=1008 --runs=50 --output_path=results/ev_2eq_1008/

# three rounds with EVmutation
# python execute_simulation.py --zs=ev --n_pseudorand_init=40 --batch_size=40 --budget=80 --runs=50 --output_path=results/ev_3eq_40/
# python execute_simulation.py --zs=ev --n_pseudorand_init=48 --batch_size=48 --budget=96 --runs=50 --output_path=results/ev_3eq_48/
# python execute_simulation.py --zs=ev --n_pseudorand_init=64 --batch_size=64 --budget=128 --runs=50 --output_path=results/ev_3eq_64/
# python execute_simulation.py --zs=ev --n_pseudorand_init=96 --batch_size=96 --budget=192 --runs=50 --output_path=results/ev_3eq_96/
# python execute_simulation.py --zs=ev --n_pseudorand_init=128 --batch_size=128 --budget=256 --runs=50 --output_path=results/ev_3eq_128/
# python execute_simulation.py --zs=ev --n_pseudorand_init=160 --batch_size=160 --budget=320 --runs=50 --output_path=results/ev_3eq_160/
# python execute_simulation.py --zs=ev --n_pseudorand_init=192 --batch_size=192 --budget=384 --runs=50 --output_path=results/ev_3eq_192/
# python execute_simulation.py --zs=ev --n_pseudorand_init=224 --batch_size=224 --budget=448 --runs=50 --output_path=results/ev_3eq_224/
# python execute_simulation.py --zs=ev --n_pseudorand_init=352 --batch_size=352 --budget=704 --runs=50 --output_path=results/ev_3eq_352/
# python execute_simulation.py --zs=ev --n_pseudorand_init=672 --batch_size=672 --budget=1344 --runs=50 --output_path=results/ev_3eq_672/

# four rounds with EVmutation
# python execute_simulation.py --zs=ev --n_pseudorand_init=30 --batch_size=30 --budget=90 --runs=50 --output_path=results/ev_4eq_30/
# python execute_simulation.py --zs=ev --n_pseudorand_init=36 --batch_size=36 --budget=108 --runs=50 --output_path=results/ev_4eq_36/
# python execute_simulation.py --zs=ev --n_pseudorand_init=48 --batch_size=48 --budget=144 --runs=50 --output_path=results/ev_4eq_48/
# python execute_simulation.py --zs=ev --n_pseudorand_init=72 --batch_size=72 --budget=216 --runs=50 --output_path=results/ev_4eq_72/
# python execute_simulation.py --zs=ev --n_pseudorand_init=96 --batch_size=96 --budget=288 --runs=50 --output_path=results/ev_4eq_96/
# python execute_simulation.py --zs=ev --n_pseudorand_init=120 --batch_size=120 --budget=360 --runs=50 --output_path=results/ev_4eq_120/
# python execute_simulation.py --zs=ev --n_pseudorand_init=144 --batch_size=144 --budget=432 --runs=50 --output_path=results/ev_4eq_144/
# python execute_simulation.py --zs=ev --n_pseudorand_init=168 --batch_size=168 --budget=504 --runs=50 --output_path=results/ev_4eq_168/
# python execute_simulation.py --zs=ev --n_pseudorand_init=264 --batch_size=264 --budget=792 --runs=50 --output_path=results/ev_4eq_264/
# python execute_simulation.py --zs=ev --n_pseudorand_init=504 --batch_size=504 --budget=1512 --runs=50 --output_path=results/ev_4eq_504/


########## ESM ##########
# two rounds with esm
# python execute_simulation.py --zs=esm --n_pseudorand_init=60 --batch_size=60 --budget=60 --runs=50 --output_path=results/esm_2eq_60/
# python execute_simulation.py --zs=esm --n_pseudorand_init=72 --batch_size=72 --budget=72 --runs=50 --output_path=results/esm_2eq_72/
# python execute_simulation.py --zs=esm --n_pseudorand_init=96 --batch_size=96 --budget=96 --runs=50 --output_path=results/esm_2eq_96/
# python execute_simulation.py --zs=esm --n_pseudorand_init=144 --batch_size=144 --budget=144 --runs=50 --output_path=results/esm_2eq_144/
# python execute_simulation.py --zs=esm --n_pseudorand_init=192 --batch_size=192 --budget=192 --runs=50 --output_path=results/esm_2eq_192/
# python execute_simulation.py --zs=esm --n_pseudorand_init=240 --batch_size=240 --budget=240 --runs=50 --output_path=results/esm_2eq_240/
# python execute_simulation.py --zs=esm --n_pseudorand_init=288 --batch_size=288 --budget=288 --runs=50 --output_path=results/esm_2eq_288/
# python execute_simulation.py --zs=esm --n_pseudorand_init=336 --batch_size=336 --budget=336 --runs=50 --output_path=results/esm_2eq_336/
# python execute_simulation.py --zs=esm --n_pseudorand_init=528 --batch_size=528 --budget=528 --runs=50 --output_path=results/esm_2eq_528/
# python execute_simulation.py --zs=esm --n_pseudorand_init=1008 --batch_size=1008 --budget=1008 --runs=50 --output_path=results/esm_2eq_1008/

# three rounds with esm
# python execute_simulation.py --zs=esm --n_pseudorand_init=40 --batch_size=40 --budget=80 --runs=50 --output_path=results/esm_3eq_40/
# python execute_simulation.py --zs=esm --n_pseudorand_init=48 --batch_size=48 --budget=96 --runs=50 --output_path=results/esm_3eq_48/
# python execute_simulation.py --zs=esm --n_pseudorand_init=64 --batch_size=64 --budget=128 --runs=50 --output_path=results/esm_3eq_64/
# python execute_simulation.py --zs=esm --n_pseudorand_init=96 --batch_size=96 --budget=192 --runs=50 --output_path=results/esm_3eq_96/
# python execute_simulation.py --zs=esm --n_pseudorand_init=128 --batch_size=128 --budget=256 --runs=50 --output_path=results/esm_3eq_128/
# python execute_simulation.py --zs=esm --n_pseudorand_init=160 --batch_size=160 --budget=320 --runs=50 --output_path=results/esm_3eq_160/
# python execute_simulation.py --zs=esm --n_pseudorand_init=192 --batch_size=192 --budget=384 --runs=50 --output_path=results/esm_3eq_192/
# python execute_simulation.py --zs=esm --n_pseudorand_init=224 --batch_size=224 --budget=448 --runs=50 --output_path=results/esm_3eq_224/
# python execute_simulation.py --zs=esm --n_pseudorand_init=352 --batch_size=352 --budget=704 --runs=50 --output_path=results/esm_3eq_352/
# python execute_simulation.py --zs=esm --n_pseudorand_init=672 --batch_size=672 --budget=1344 --runs=50 --output_path=results/esm_3eq_672/

# foun rounds with esm
# python execute_simulation.py --zs=esm --n_pseudorand_init=30 --batch_size=30 --budget=90 --runs=50 --output_path=results/esm_4eq_30/
# python execute_simulation.py --zs=esm --n_pseudorand_init=36 --batch_size=36 --budget=108 --runs=50 --output_path=results/esm_4eq_36/
# python execute_simulation.py --zs=esm --n_pseudorand_init=48 --batch_size=48 --budget=144 --runs=50 --output_path=results/esm_4eq_48/
# python execute_simulation.py --zs=esm --n_pseudorand_init=72 --batch_size=72 --budget=216 --runs=50 --output_path=results/esm_4eq_72/
# python execute_simulation.py --zs=esm --n_pseudorand_init=96 --batch_size=96 --budget=288 --runs=50 --output_path=results/esm_4eq_96/
# python execute_simulation.py --zs=esm --n_pseudorand_init=120 --batch_size=120 --budget=360 --runs=50 --output_path=results/esm_4eq_120/
# python execute_simulation.py --zs=esm --n_pseudorand_init=144 --batch_size=144 --budget=432 --runs=50 --output_path=results/esm_4eq_144/
# python execute_simulation.py --zs=esm --n_pseudorand_init=168 --batch_size=168 --budget=504 --runs=50 --output_path=results/esm_4eq_168/
# python execute_simulation.py --zs=esm --n_pseudorand_init=264 --batch_size=264 --budget=792 --runs=50 --output_path=results/esm_4eq_264/
# python execute_simulation.py --zs=esm --n_pseudorand_init=504 --batch_size=504 --budget=1512 --runs=50 --output_path=results/esm_4eq_504/


########## ESMIF ##########
# two rounds with esmif
# python execute_simulation.py --zs=esmif --n_pseudorand_init=60 --batch_size=60 --budget=60 --runs=50 --output_path=results/esmif_2eq_60/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=72 --batch_size=72 --budget=72 --runs=50 --output_path=results/esmif_2eq_72/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=96 --batch_size=96 --budget=96 --runs=50 --output_path=results/esmif_2eq_96/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=144 --batch_size=144 --budget=144 --runs=50 --output_path=results/esmif_2eq_144/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=192 --batch_size=192 --budget=192 --runs=50 --output_path=results/esmif_2eq_192/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=240 --batch_size=240 --budget=240 --runs=50 --output_path=results/esmif_2eq_240/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=288 --batch_size=288 --budget=288 --runs=50 --output_path=results/esmif_2eq_288/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=336 --batch_size=336 --budget=336 --runs=50 --output_path=results/esmif_2eq_336/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=528 --batch_size=528 --budget=528 --runs=50 --output_path=results/esmif_2eq_528/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=1008 --batch_size=1008 --budget=1008 --runs=50 --output_path=results/esmif_2eq_1008/

# three rounds with esmif
# python execute_simulation.py --zs=esmif --n_pseudorand_init=40 --batch_size=40 --budget=80 --runs=50 --output_path=results/esmif_3eq_40/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=48 --batch_size=48 --budget=96 --runs=50 --output_path=results/esmif_3eq_48/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=64 --batch_size=64 --budget=128 --runs=50 --output_path=results/esmif_3eq_64/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=96 --batch_size=96 --budget=192 --runs=50 --output_path=results/esmif_3eq_96/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=128 --batch_size=128 --budget=256 --runs=50 --output_path=results/esmif_3eq_128/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=160 --batch_size=160 --budget=320 --runs=50 --output_path=results/esmif_3eq_160/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=192 --batch_size=192 --budget=384 --runs=50 --output_path=results/esmif_3eq_192/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=224 --batch_size=224 --budget=448 --runs=50 --output_path=results/esmif_3eq_224/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=352 --batch_size=352 --budget=704 --runs=50 --output_path=results/esmif_3eq_352/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=672 --batch_size=672 --budget=1344 --runs=50 --output_path=results/esmif_3eq_672/

# four rounds with esmif
# python execute_simulation.py --zs=esmif --n_pseudorand_init=30 --batch_size=30 --budget=90 --runs=50 --output_path=results/esmif_4eq_30/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=36 --batch_size=36 --budget=108 --runs=50 --output_path=results/esmif_4eq_36/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=48 --batch_size=48 --budget=144 --runs=50 --output_path=results/esmif_4eq_48/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=72 --batch_size=72 --budget=216 --runs=50 --output_path=results/esmif_4eq_72/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=96 --batch_size=96 --budget=288 --runs=50 --output_path=results/esmif_4eq_96/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=120 --batch_size=120 --budget=360 --runs=50 --output_path=results/esmif_4eq_120/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=144 --batch_size=144 --budget=432 --runs=50 --output_path=results/esmif_4eq_144/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=168 --batch_size=168 --budget=504 --runs=50 --output_path=results/esmif_4eq_168/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=264 --batch_size=264 --budget=792 --runs=50 --output_path=results/esmif_4eq_264/
# python execute_simulation.py --zs=esmif --n_pseudorand_init=504 --batch_size=504 --budget=1512 --runs=50 --output_path=results/esmif_4eq_504/


########## CoVES ##########
# two rounds with coves
# python execute_simulation.py --zs=coves --n_pseudorand_init=60 --batch_size=60 --budget=60 --runs=50 --output_path=results/coves_2eq_60/
# python execute_simulation.py --zs=coves --n_pseudorand_init=72 --batch_size=72 --budget=72 --runs=50 --output_path=results/coves_2eq_72/
# python execute_simulation.py --zs=coves --n_pseudorand_init=96 --batch_size=96 --budget=96 --runs=50 --output_path=results/coves_2eq_96/
# python execute_simulation.py --zs=coves --n_pseudorand_init=144 --batch_size=144 --budget=144 --runs=50 --output_path=results/coves_2eq_144/
# python execute_simulation.py --zs=coves --n_pseudorand_init=192 --batch_size=192 --budget=192 --runs=50 --output_path=results/coves_2eq_192/
# python execute_simulation.py --zs=coves --n_pseudorand_init=240 --batch_size=240 --budget=240 --runs=50 --output_path=results/coves_2eq_240/
# python execute_simulation.py --zs=coves --n_pseudorand_init=288 --batch_size=288 --budget=288 --runs=50 --output_path=results/coves_2eq_288/
# python execute_simulation.py --zs=coves --n_pseudorand_init=336 --batch_size=336 --budget=336 --runs=50 --output_path=results/coves_2eq_336/
# python execute_simulation.py --zs=coves --n_pseudorand_init=528 --batch_size=528 --budget=528 --runs=50 --output_path=results/coves_2eq_528/
# python execute_simulation.py --zs=coves --n_pseudorand_init=1008 --batch_size=1008 --budget=1008 --runs=50 --output_path=results/coves_2eq_1008/

# three rounds with coves
# python execute_simulation.py --zs=coves --n_pseudorand_init=40 --batch_size=40 --budget=80 --runs=50 --output_path=results/coves_3eq_40/
# python execute_simulation.py --zs=coves --n_pseudorand_init=48 --batch_size=48 --budget=96 --runs=50 --output_path=results/coves_3eq_48/
# python execute_simulation.py --zs=coves --n_pseudorand_init=64 --batch_size=64 --budget=128 --runs=50 --output_path=results/coves_3eq_64/
# python execute_simulation.py --zs=coves --n_pseudorand_init=96 --batch_size=96 --budget=192 --runs=50 --output_path=results/coves_3eq_96/
# python execute_simulation.py --zs=coves --n_pseudorand_init=128 --batch_size=128 --budget=256 --runs=50 --output_path=results/coves_3eq_128/
# python execute_simulation.py --zs=coves --n_pseudorand_init=160 --batch_size=160 --budget=320 --runs=50 --output_path=results/coves_3eq_160/
# python execute_simulation.py --zs=coves --n_pseudorand_init=192 --batch_size=192 --budget=384 --runs=50 --output_path=results/coves_3eq_192/
# python execute_simulation.py --zs=coves --n_pseudorand_init=224 --batch_size=224 --budget=448 --runs=50 --output_path=results/coves_3eq_224/
# python execute_simulation.py --zs=coves --n_pseudorand_init=352 --batch_size=352 --budget=704 --runs=50 --output_path=results/coves_3eq_352/
# python execute_simulation.py --zs=coves --n_pseudorand_init=672 --batch_size=672 --budget=1344 --runs=50 --output_path=results/coves_3eq_672/

# four rounds with coves
# python execute_simulation.py --zs=coves --n_pseudorand_init=30 --batch_size=30 --budget=90 --runs=50 --output_path=results/coves_4eq_30/
# python execute_simulation.py --zs=coves --n_pseudorand_init=36 --batch_size=36 --budget=108 --runs=50 --output_path=results/coves_4eq_36/
# python execute_simulation.py --zs=coves --n_pseudorand_init=48 --batch_size=48 --budget=144 --runs=50 --output_path=results/coves_4eq_48/
# python execute_simulation.py --zs=coves --n_pseudorand_init=72 --batch_size=72 --budget=216 --runs=50 --output_path=results/coves_4eq_72/
# python execute_simulation.py --zs=coves --n_pseudorand_init=96 --batch_size=96 --budget=288 --runs=50 --output_path=results/coves_4eq_96/
# python execute_simulation.py --zs=coves --n_pseudorand_init=120 --batch_size=120 --budget=360 --runs=50 --output_path=results/coves_4eq_120/
# python execute_simulation.py --zs=coves --n_pseudorand_init=144 --batch_size=144 --budget=432 --runs=50 --output_path=results/coves_4eq_144/
# python execute_simulation.py --zs=coves --n_pseudorand_init=168 --batch_size=168 --budget=504 --runs=50 --output_path=results/coves_4eq_168/
# python execute_simulation.py --zs=coves --n_pseudorand_init=264 --batch_size=264 --budget=792 --runs=50 --output_path=results/coves_4eq_264/
# python execute_simulation.py --zs=coves --n_pseudorand_init=504 --batch_size=504 --budget=1512 --runs=50 --output_path=results/coves_4eq_504/


########## Triad ##########
# two rounds with Triad
# python execute_simulation.py --zs=Triad --n_pseudorand_init=60 --batch_size=60 --budget=60 --runs=50 --output_path=results/Triad_2eq_60/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=72 --batch_size=72 --budget=72 --runs=50 --output_path=results/Triad_2eq_72/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=96 --batch_size=96 --budget=96 --runs=50 --output_path=results/Triad_2eq_96/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=144 --batch_size=144 --budget=144 --runs=50 --output_path=results/Triad_2eq_144/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=192 --batch_size=192 --budget=192 --runs=50 --output_path=results/Triad_2eq_192/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=240 --batch_size=240 --budget=240 --runs=50 --output_path=results/Triad_2eq_240/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=288 --batch_size=288 --budget=288 --runs=50 --output_path=results/Triad_2eq_288/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=336 --batch_size=336 --budget=336 --runs=50 --output_path=results/Triad_2eq_336/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=528 --batch_size=528 --budget=528 --runs=50 --output_path=results/Triad_2eq_528/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=1008 --batch_size=1008 --budget=1008 --runs=50 --output_path=results/Triad_2eq_1008/

# three rounds with Triad
# python execute_simulation.py --zs=Triad --n_pseudorand_init=40 --batch_size=40 --budget=80 --runs=50 --output_path=results/Triad_3eq_40/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=48 --batch_size=48 --budget=96 --runs=50 --output_path=results/Triad_3eq_48/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=64 --batch_size=64 --budget=128 --runs=50 --output_path=results/Triad_3eq_64/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=96 --batch_size=96 --budget=192 --runs=50 --output_path=results/Triad_3eq_96/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=128 --batch_size=128 --budget=256 --runs=50 --output_path=results/Triad_3eq_128/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=160 --batch_size=160 --budget=320 --runs=50 --output_path=results/Triad_3eq_160/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=192 --batch_size=192 --budget=384 --runs=50 --output_path=results/Triad_3eq_192/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=224 --batch_size=224 --budget=448 --runs=50 --output_path=results/Triad_3eq_224/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=352 --batch_size=352 --budget=704 --runs=50 --output_path=results/Triad_3eq_352/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=672 --batch_size=672 --budget=1344 --runs=50 --output_path=results/Triad_3eq_672/

# four rounds with Triad
# python execute_simulation.py --zs=Triad --n_pseudorand_init=30 --batch_size=30 --budget=90 --runs=50 --output_path=results/Triad_4eq_30/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=36 --batch_size=36 --budget=108 --runs=50 --output_path=results/Triad_4eq_36/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=48 --batch_size=48 --budget=144 --runs=50 --output_path=results/Triad_4eq_48/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=72 --batch_size=72 --budget=216 --runs=50 --output_path=results/Triad_4eq_72/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=96 --batch_size=96 --budget=288 --runs=50 --output_path=results/Triad_4eq_96/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=120 --batch_size=120 --budget=360 --runs=50 --output_path=results/Triad_4eq_120/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=144 --batch_size=144 --budget=432 --runs=50 --output_path=results/Triad_4eq_144/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=168 --batch_size=168 --budget=504 --runs=50 --output_path=results/Triad_4eq_168/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=264 --batch_size=264 --budget=792 --runs=50 --output_path=results/Triad_4eq_264/
# python execute_simulation.py --zs=Triad --n_pseudorand_init=504 --batch_size=504 --budget=1512 --runs=50 --output_path=results/Triad_4eq_504/

