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

# four rounds
# python execute_simulation.py --n_pseudorand_init=96 --batch_size=96 --budget=288 --runs=50 --output_path=results/4eq_96/
# python execute_simulation.py --n_pseudorand_init=120 --batch_size=120 --budget=360 --runs=50 --output_path=results/4eq_120/

# python execute_simulation.py --n_pseudorand_init=30 --batch_size=30 --budget=90 --runs=50 --output_path=results/4eq_30/
# python execute_simulation.py --n_pseudorand_init=36 --batch_size=36 --budget=108 --runs=50 --output_path=results/4eq_36/
# python execute_simulation.py --n_pseudorand_init=48 --batch_size=48 --budget=144 --runs=50 --output_path=results/4eq_48/
# python execute_simulation.py --n_pseudorand_init=72 --batch_size=72 --budget=216 --runs=50 --output_path=results/4eq_72/

# python execute_simulation.py --n_pseudorand_init=144 --batch_size=144 --budget=432 --runs=50 --output_path=results/4eq_144/
# python execute_simulation.py --n_pseudorand_init=168 --batch_size=168 --budget=504 --runs=50 --output_path=results/4eq_168/
# python execute_simulation.py --n_pseudorand_init=264 --batch_size=264 --budget=792 --runs=50 --output_path=results/4eq_264/
# python execute_simulation.py --n_pseudorand_init=504 --batch_size=504 --budget=1512 --runs=50 --output_path=results/4eq_504/


python execute_simulation.py --zs=ed --n_pseudorand_init=96 --batch_size=96 --budget=288 --runs=50 --output_path=results/ed_4eq_96/
python execute_simulation.py --zs=ed --n_pseudorand_init=120 --batch_size=120 --budget=360 --runs=50 --output_path=results/ed_4eq_120/

python execute_simulation.py --zs=ed --n_pseudorand_init=30 --batch_size=30 --budget=90 --runs=50 --output_path=results/ed_4eq_30/
python execute_simulation.py --zs=ed --n_pseudorand_init=36 --batch_size=36 --budget=108 --runs=50 --output_path=results/ed_4eq_36/
python execute_simulation.py --zs=ed --n_pseudorand_init=48 --batch_size=48 --budget=144 --runs=50 --output_path=results/ed_4eq_48/
python execute_simulation.py --zs=ed --n_pseudorand_init=72 --batch_size=72 --budget=216 --runs=50 --output_path=results/ed_4eq_72/

python execute_simulation.py --zs=ed --n_pseudorand_init=144 --batch_size=144 --budget=432 --runs=50 --output_path=results/ed_4eq_144/
python execute_simulation.py --zs=ed --n_pseudorand_init=168 --batch_size=168 --budget=504 --runs=50 --output_path=results/ed_4eq_168/
python execute_simulation.py --zs=ed --n_pseudorand_init=264 --batch_size=264 --budget=792 --runs=50 --output_path=results/ed_4eq_264/
python execute_simulation.py --zs=ed --n_pseudorand_init=504 --batch_size=504 --budget=1512 --runs=50 --output_path=results/ed_4eq_504/