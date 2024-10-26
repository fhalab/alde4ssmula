# ALDE4SSMuLA
* ALDE simulation runs for [SSMuLA](https://github.com/fhalab/SSMuLA) (Site Saturation Mutagenesis Landscape Analysis), the code base for our [paper](https://doi.org/10.1101/2024.10.24.619774) titled "Evaluation of Machine Learning-Assisted Directed Evolution Across Diverse Combinatorial Landscapes"
* Data and results can be found at [Zenodo](https://doi.org/10.5281/zenodo.13910506)
* Modified from [the original ALDE repo](https://github.com/jsunn-y/ALDE)
* Follow the instructions for simulation runs with the `alde.yml` environment

## Installation
* To download, clone this repository (or alternatively, follow the original ALDE repo instructions)
```
git clone https://github.com/fhalab/alde4ssmula
```
To run ALDE, the relevant anaconda environment can be installed from `alde.yml`. To build this environment, run:
```
cd ./alde4ssmula
mkdir results
conda env create -f alde.yml
conda activate ALDE
```

## Preprocess data
* To propess SSMuLA data for ALDE and ensure no stop codon is included, run:
```
python execute_preprocess.py
```
* Input files follow the patern `data_original/*/*.csv`, i.e., `data_original/GB1/GB1.csv`
* Output files are saved in `data/*/*.csv`, i.e., `data/GB1/fitness.csv` which includes the columns `Combo` and `fitness`
* Alternatively, prepare input data for `ALDE` with column `Combo` and `fitness`

## Simulation runs for SSMuLA
* All simulation runs are based on `execute_simulation.py`
* Update `--zs_folder` for the correct path to the ZS predictor and `--alde_folder` for the correct path to the ALDE data
* To run default ALDE without focused training, execute:
```
execute_rounds.sh
```
* To run ALDE with focused training (including different rounds), execute:
```
execute_ssmula_ft.sh
```
* To run ALDE with focused training with Hamming distance ensemble (cutoff equals to 2, including different rounds), execute:
```
execute_ssmula_dsft.sh
```

## Results files
* Each run should be creating a subfolder in the `results` directory, with the following structure:
```
results/
    experiment_name/
        landscape_name/
            onehot/
                {model name}-DO-{dropout rate}-{kernel}-{acquisition function}-{end layer dimensions of architecture}_{index for the random seed}/
                    indices.pt
                    _mu.pt
                    _sigma.pt
```
* Example subfolder
    * `results/coves_4eq_120` means COVES ZS predictor, four round ALDE, each with sample size of 120
    * `results/ds-esmif_2eq_240` means Hamming distance (with a cutoff equals to 2) ESMIF ensemble ZS predictor, two round ALDE, each with sample size of 240
* Each of the result file is in the format of `{model name}-DO-{dropout rate}-{kernel}-{acquisition function}-{end layer dimensions of architecture}_{index for the random seed}`
* The results are saved in the format of `indices.pt`, `_mu.pt`, `_sigma.pt` for each of the simulation runs with more detailed description in the original [ALDE repo](https://github.com/jsunn-y/ALDE)

## Analysis
* To analyze the all results from the simulation runs, run the following script:
```
python execute_analysis.py
```
* The output files will be saved in each of the experiemntal subfolder (i.e.) which will then be used in SSMuLA for further analysis
* The aggregated results can be found [here](https://doi.org/10.5281/zenodo.13910506) with the following columns:
    * `encoding`: default with `onehot`
    * `model`: default with `["Boosting Ensemble", "DNN Ensemble"]` where the `"GREEDY"` acquisition function is used 
    * `n_sample`: total sample size which is equally split into different the rounds
    * `top_maxes_mean`: maximum fitness achieved, which is the fitness of the final variant achieved by each method on average
    * `top_maxes_std`: standard deviation of average maximum fitness achieved
    * `if_truemaxs_mean`: mean of fraction reaching the global optimum, which measures how frequently the true maximum fitness is reached
    * `n_mut_cutoff`: either `all` or `double` (double-site Hamming distance ensemble)
    * `lib`: landscape name, default includes `["DHFR", "GB1", "ParD2", "ParD3", "T7", "TEV", "TrpB3A", "TrpB3B", "TrpB3C", "TrpB3D", "TrpB3E", "TrpB3F", "TrpB3G", "TrpB3H", "TrpB3I", "TrpB4"]`
    * `zs`: ZS predictor, default includes `["ed", "ev", "esm", "esmif", "coves", "Triad"]` and their double-site (Hamming distance) ensemble `["ds-ev", "ds-esm", "ds-esmif", "ds-coves", "ds-Triad"]`
    * `rounds`: number of rounds, default inludes`[2, 3, 4]`