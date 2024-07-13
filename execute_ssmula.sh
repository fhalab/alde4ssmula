python generate_domain.py --name=DHFR --nsites=3
python generate_domain.py --name=GB1 --nsites=4
python generate_domain.py --name=ParD2 --nsites=3
python generate_domain.py --name=ParD3 --nsites=3
python generate_domain.py --name=TrpB3A --nsites=3
python generate_domain.py --name=TrpB3B --nsites=3
python generate_domain.py --name=TrpB3C --nsites=3
python generate_domain.py --name=TrpB3D --nsites=3
python generate_domain.py --name=TrpB3E --nsites=3
python generate_domain.py --name=TrpB3F --nsites=3
python generate_domain.py --name=TrpB3G --nsites=3
python generate_domain.py --name=TrpB3H --nsites=3
python generate_domain.py --name=TrpB3I --nsites=3
python generate_domain.py --name=TrpB4 --nsites=4

python execute_simulation.py --n_pseudorand_init=384 --budget=96 --runs=50 --output_path=results/384+96+baseline