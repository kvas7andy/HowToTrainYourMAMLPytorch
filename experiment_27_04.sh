#!/usr/bin/env bash
N=5
K=1
date=27-04-19

source /home/akvasov/anaconda3/bin/activate meta_learning_pytorch_env
cd experiment_scripts

bash omniglot_maml_omniglot_${N}_way_${K}_shot_maml_0_few_shot.sh 2> ../logs/err_${N}_${K}_${date}.txt | tee ../logs/log_${N}_${K}_${date}.txt
bash omniglot_maml_omniglot_${N}_way_${K}_shot_maml_0_few_shot.sh 2> ../logs/err_${N}_${K}_${date}.txt | tee ../logs/log_${N}_${K}_${date}.txt
bash omniglot_maml_omniglot_${N}_way_${K}_shot_maml_0_few_shot.sh 2> ../logs/err_${N}_${K}_${date}.txt | tee ../logs/log_${N}_${K}_${date}.txt