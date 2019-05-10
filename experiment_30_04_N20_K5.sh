#!/usr/bin/env bash
N=20
K=5
date=27-04-19

source /home/akvasov/anaconda3/bin/activate meta_learning_pytorch_env
cd experiment_scripts

S=0
bash omniglot_maml_omniglot_${N}_way_${K}_shot_maml_${S}_few_shot.sh 2> ../logs/err_${N}_${K}_${date}_${S}.txt | tee ../logs/log_${N}_${K}_${date}_${S}.txt
S=1
bash omniglot_maml_omniglot_${N}_way_${K}_shot_maml_${S}_few_shot.sh 2> ../logs/err_${N}_${K}_${date}_${S}.txt | tee ../logs/log_${N}_${K}_${date}_${S}.txt
S=2
bash omniglot_maml_omniglot_${N}_way_${K}_shot_maml_${S}_few_shot.sh 2> ../logs/err_${N}_${K}_${date}_${S}.txt | tee ../logs/log_${N}_${K}_${date}_${S}.txt