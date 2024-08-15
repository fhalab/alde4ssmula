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
python execute_simulation.py --n_pseudorand_init=240 --batch_size=240 --budget=240 --runs=50 --output_path=results/2eq_240/

python execute_simulation.py --n_pseudorand_init=60 --batch_size=60 --budget=60 --runs=50 --output_path=results/2eq_60/
python execute_simulation.py --n_pseudorand_init=72 --batch_size=72 --budget=72 --runs=50 --output_path=results/2eq_72/
python execute_simulation.py --n_pseudorand_init=96 --batch_size=96 --budget=96 --runs=50 --output_path=results/2eq_96/
python execute_simulation.py --n_pseudorand_init=144 --batch_size=144 --budget=144 --runs=50 --output_path=results/2eq_144/
python execute_simulation.py --n_pseudorand_init=192 --batch_size=192 --budget=192 --runs=50 --output_path=results/2eq_192/
python execute_simulation.py --n_pseudorand_init=288 --batch_size=288 --budget=288 --runs=50 --output_path=results/2eq_288/
python execute_simulation.py --n_pseudorand_init=336 --batch_size=336 --budget=336 --runs=50 --output_path=results/2eq_336/
python execute_simulation.py --n_pseudorand_init=528 --batch_size=528 --budget=528 --runs=50 --output_path=results/2eq_528/
python execute_simulation.py --n_pseudorand_init=1008 --batch_size=1008 --budget=1008 --runs=50 --output_path=results/2eq_1008/