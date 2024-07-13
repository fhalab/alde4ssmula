python generate_domain.py --name=KMS --nsites=5
python execute_production.py --name=KMS \
--data_csv=KMS-062424.csv \
--obj_col=fitness \
--output_path=results/KMS/round1 \
--batch_size=96 \
--seed_index=0