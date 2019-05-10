#!/usr/bin/env bash

date=01-05-19

source /home/akvasov/anaconda3/bin/activate meta_learning_pytorch_env
cd experiment_scripts

N=5
K=1


S=0

bash omniglot_maml++_omniglot_${N}_way_${K}_shot_maml_${S}_ml005_few_shot.sh 2> ../logs/err++_${N}_${K}_${date}_${S}_ml005_few_shot.txt | tee ../logs/log++_${N}_${K}_${date}_${S}_ml005_few_shot.txt

bash omniglot_maml++_omniglot_${N}_way_${K}_shot_maml_${S}_ml0005_few_shot.sh 2> ../logs/err++_${N}_${K}_${date}_${S}_ml0005_few_shot.txt | tee ../logs/log++_${N}_${K}_${date}_${S}_ml0005_few_shot.txt