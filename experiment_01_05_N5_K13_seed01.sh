#!/usr/bin/env bash

date=27-04-19

source /home/akvasov/anaconda3/bin/activate meta_learning_pytorch_env
cd experiment_scripts

N=5
K=1
#S=0
#bash omniglot_maml++_omniglot_${N}_way_${K}_shot_maml_${S}_few_shot.sh 2> ../logs/err++_${N}_${K}_${date}_${S}.txt | tee ../logs/log++_${N}_${K}_${date}_${S}.txt
S=1
bash omniglot_maml++_omniglot_${N}_way_${K}_shot_maml_${S}_few_shot.sh 2> ../logs/err++_${N}_${K}_${date}_${S}.txt | tee ../logs/log++_${N}_${K}_${date}_${S}.txt

N=5
K=3
S=0
bash omniglot_maml++_omniglot_${N}_way_${K}_shot_maml_${S}_few_shot.sh 2> ../logs/err++_${N}_${K}_${date}_${S}.txt | tee ../logs/log++_${N}_${K}_${date}_${S}.txt
S=1
bash omniglot_maml++_omniglot_${N}_way_${K}_shot_maml_${S}_few_shot.sh 2> ../logs/err++_${N}_${K}_${date}_${S}.txt | tee ../logs/log++_${N}_${K}_${date}_${S}.txt