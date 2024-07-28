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

# python execute_simulation.py --n_pseudorand_init=384 --budget=96 --runs=50 --output_path=results/384+96+baseline/
python execute_simulation.py --n_pseudorand_init=96 --budget=96 --runs=50 --output_path=results/96+96+baseline/

python execute_simulation.py --n_pseudorand_init=24 --budget=96 --runs=50 --output_path=results/24+96+baseline/
python execute_simulation.py --n_pseudorand_init=48 --budget=96 --runs=50 --output_path=results/48+96+baseline/
python execute_simulation.py --n_pseudorand_init=192 --budget=96 --runs=50 --output_path=results/192+96+baseline/
python execute_simulation.py --n_pseudorand_init=288 --budget=96 --runs=50 --output_path=results/288+96+baseline/
python execute_simulation.py --n_pseudorand_init=480 --budget=96 --runs=50 --output_path=results/480+96+baseline/
python execute_simulation.py --n_pseudorand_init=576 --budget=96 --runs=50 --output_path=results/576+96+baseline/
python execute_simulation.py --n_pseudorand_init=960 --budget=96 --runs=50 --output_path=results/960+96+baseline/
python execute_simulation.py --n_pseudorand_init=1920 --budget=96 --runs=50 --output_path=results/1920+96+baseline/


# python execute_simulation.py --batch_size=96 --n_pseudorand_init=96 --budget=384 --runs=50 --output_path=results/96+96+384/
#python execute_simulation.py --batch_size=96 --n_pseudorand_init=96 --budget=288 --runs=50 --output_path=results/96+96+288/

# python execute_simulation.py --batch_size=96 --n_pseudorand_init=96 --budget=288 --runs=50 --output_path=results/96+96+288/