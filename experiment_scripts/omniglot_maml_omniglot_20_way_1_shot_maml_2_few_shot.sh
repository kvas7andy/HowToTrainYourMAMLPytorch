#!/bin/sh
cd ..
export DATASET_DIR="datasets/"
# Activate the relevant virtual environment:

python train_maml_system.py --name_of_args_json_file experiment_config/omniglot_maml_omniglot_20_way_1_shot_maml_2.json --gpu_to_use 0