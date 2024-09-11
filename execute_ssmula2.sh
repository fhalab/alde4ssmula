export CUDA_VISIBLE_DEVICES=1
# python generate_domain.py --name=DHFR --nsites=3
# python generate_domain.py --name=GB1 --nsites=4
# python generate_domain.py --name=ParD2 --nsites=3
# python generate_domain.py --name=ParD3 --nsites=3
# python generate_domain.py --name=TrpB3A --nsites=3
# python generate_domain.py --name=TrpB3B --nsites=3
# python generate_domain.py --name=TrpB3C --nsites=3
# python generate_domain.py --name=TrpB3D --nsites=3
# python generate_domain.py --name=TrpB3E --nsites=3
# python generate_domain.py --name=TrpB3F --nsites=3
# python generate_domain.py --name=TrpB3G --nsites=3
# python generate_domain.py --name=TrpB3H --nsites=3
# python generate_domain.py --name=TrpB3I --nsites=3
# python generate_domain.py --name=TrpB4 --nsites=4


# one round
# python execute_simulation.py --n_pseudorand_init=384 --budget=96 --runs=50 --output_path=results/all_384+96/

# python execute_simulation.py --n_pseudorand_init=24 --budget=96 --runs=50 --output_path=results/all_24+96/
# python execute_simulation.py --n_pseudorand_init=48 --budget=96 --runs=50 --output_path=results/all_48+96/
# python execute_simulation.py --n_pseudorand_init=96 --budget=96 --runs=50 --output_path=results/all_96+96/
# python execute_simulation.py --n_pseudorand_init=192 --budget=96 --runs=50 --output_path=results/all_192+96/
# python execute_simulation.py --n_pseudorand_init=288 --budget=96 --runs=50 --output_path=results/all_288+96/

# python execute_simulation.py --n_pseudorand_init=480 --budget=96 --runs=50 --output_path=results/all_480+96/
# python execute_simulation.py --n_pseudorand_init=576 --budget=96 --runs=50 --output_path=results/all_576+96/
# python execute_simulation.py --n_pseudorand_init=960 --budget=96 --runs=50 --output_path=results/all_960+96/
# python execute_simulation.py --n_pseudorand_init=1920 --budget=96 --runs=50 --output_path=results/all_1920+96/

# two equal rounds
# python execute_simulation.py --n_pseudorand_init=240 --batch_size=240 --budget=240 --runs=50 --output_path=results/2eq_240/

# python execute_simulation.py --n_pseudorand_init=60 --batch_size=60 --budget=60 --runs=50 --output_path=results/2eq_60/
# python execute_simulation.py --n_pseudorand_init=72 --batch_size=72 --budget=72 --runs=50 --output_path=results/2eq_72/
# python execute_simulation.py --n_pseudorand_init=96 --batch_size=96 --budget=96 --runs=50 --output_path=results/2eq_96/
# python execute_simulation.py --n_pseudorand_init=144 --batch_size=144 --budget=144 --runs=50 --output_path=results/2eq_144/
# python execute_simulation.py --n_pseudorand_init=192 --batch_size=192 --budget=192 --runs=50 --output_path=results/2eq_192/
# python execute_simulation.py --n_pseudorand_init=288 --batch_size=288 --budget=288 --runs=50 --output_path=results/2eq_288/
# python execute_simulation.py --n_pseudorand_init=336 --batch_size=336 --budget=336 --runs=50 --output_path=results/2eq_336/
# python execute_simulation.py --n_pseudorand_init=528 --batch_size=528 --budget=528 --runs=50 --output_path=results/2eq_528/
# python execute_simulation.py --n_pseudorand_init=1008 --batch_size=1008 --budget=1008 --runs=50 --output_path=results/2eq_1008/


# three rounds with coves
python execute_simulation.py --zs=coves --n_pseudorand_init=96 --batch_size=96 --budget=192 --runs=50 --output_path=results/coves_3eq_96/
python execute_simulation.py --zs=coves --n_pseudorand_init=128 --batch_size=128 --budget=256 --runs=50 --output_path=results/coves_3eq_128/

python execute_simulation.py --zs=coves --n_pseudorand_init=40 --batch_size=40 --budget=80 --runs=50 --output_path=results/coves_3eq_40/
python execute_simulation.py --zs=coves --n_pseudorand_init=48 --batch_size=48 --budget=96 --runs=50 --output_path=results/coves_3eq_48/
python execute_simulation.py --zs=coves --n_pseudorand_init=64 --batch_size=64 --budget=128 --runs=50 --output_path=results/coves_3eq_64/
python execute_simulation.py --zs=coves --n_pseudorand_init=160 --batch_size=160 --budget=320 --runs=50 --output_path=results/coves_3eq_160/
python execute_simulation.py --zs=coves --n_pseudorand_init=192 --batch_size=192 --budget=384 --runs=50 --output_path=results/coves_3eq_192/
python execute_simulation.py --zs=coves --n_pseudorand_init=224 --batch_size=224 --budget=448 --runs=50 --output_path=results/coves_3eq_224/
python execute_simulation.py --zs=coves --n_pseudorand_init=352 --batch_size=352 --budget=704 --runs=50 --output_path=results/coves_3eq_352/
python execute_simulation.py --zs=coves --n_pseudorand_init=672 --batch_size=672 --budget=1344 --runs=50 --output_path=results/coves_3eq_672/



python execute_simulation.py --zs=coves --n_pseudorand_init=60 --batch_size=60 --budget=60 --runs=50 --output_path=results/coves_2eq_60/
python execute_simulation.py --zs=coves --n_pseudorand_init=72 --batch_size=72 --budget=72 --runs=50 --output_path=results/coves_2eq_72/
python execute_simulation.py --zs=coves --n_pseudorand_init=96 --batch_size=96 --budget=96 --runs=50 --output_path=results/coves_2eq_96/
python execute_simulation.py --zs=coves --n_pseudorand_init=144 --batch_size=144 --budget=144 --runs=50 --output_path=results/coves_2eq_144/
python execute_simulation.py --zs=coves --n_pseudorand_init=192 --batch_size=192 --budget=192 --runs=50 --output_path=results/coves_2eq_192/
python execute_simulation.py --zs=coves --n_pseudorand_init=288 --batch_size=288 --budget=288 --runs=50 --output_path=results/coves_2eq_288/
python execute_simulation.py --zs=coves --n_pseudorand_init=336 --batch_size=336 --budget=336 --runs=50 --output_path=results/coves_2eq_336/
python execute_simulation.py --zs=coves --n_pseudorand_init=528 --batch_size=528 --budget=528 --runs=50 --output_path=results/coves_2eq_528/
python execute_simulation.py --zs=coves --n_pseudorand_init=1008 --batch_size=1008 --budget=1008 --runs=50 --output_path=results/coves_2eq_1008/



# python execute_simulation.py --zs=coves --n_pseudorand_init=96 --batch_size=96 --budget=288 --runs=50 --output_path=results/coves_4eq_96/
# python execute_simulation.py --zs=coves --n_pseudorand_init=120 --batch_size=120 --budget=360 --runs=50 --output_path=results/coves_4eq_120/

# python execute_simulation.py --zs=coves --n_pseudorand_init=30 --batch_size=30 --budget=90 --runs=50 --output_path=results/coves_4eq_30/
# python execute_simulation.py --zs=coves --n_pseudorand_init=36 --batch_size=36 --budget=108 --runs=50 --output_path=results/coves_4eq_36/
# python execute_simulation.py --zs=coves --n_pseudorand_init=48 --batch_size=48 --budget=144 --runs=50 --output_path=results/coves_4eq_48/
# python execute_simulation.py --zs=coves --n_pseudorand_init=72 --batch_size=72 --budget=216 --runs=50 --output_path=results/coves_4eq_72/

# python execute_simulation.py --zs=coves --n_pseudorand_init=144 --batch_size=144 --budget=432 --runs=50 --output_path=results/coves_4eq_144/
# python execute_simulation.py --zs=coves --n_pseudorand_init=168 --batch_size=168 --budget=504 --runs=50 --output_path=results/coves_4eq_168/
# python execute_simulation.py --zs=coves --n_pseudorand_init=264 --batch_size=264 --budget=792 --runs=50 --output_path=results/coves_4eq_264/
# python execute_simulation.py --zs=coves --n_pseudorand_init=504 --batch_size=504 --budget=1512 --runs=50 --output_path=results/coves_4eq_504/