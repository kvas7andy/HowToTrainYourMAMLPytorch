#!/usr/bin/env bash
N=5

date=27-04-19

source /home/akvasov/anaconda3/bin/activate meta_learning_pytorch_env
cd experiment_scripts

K=3
bash omniglot_maml_omniglot_${N}_way_${K}_shot_maml_1_few_shot.sh 2> ../logs/err_${N}_${K}_${date}_1.txt | tee ../logs/log_${N}_${K}_${date}_1.txt
