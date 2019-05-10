#!/usr/bin/env bash

date=01-05-19

source /home/akvasov/anaconda3/bin/activate meta_learning_pytorch_env
cd experiment_scripts

N=5
K=1
S=1
LSLR="LSLR_"
BN="BN_"
MSL="MSL_"


LSLR=""
BN="BN_"
MSL="MSL_"
bash omniglot_maml++_omniglot_${N}_way_${K}_shot_maml_${S}_${LSLR}${BN}${MSL}few_shot.sh 2> ../logs/err++_${N}_${K}_${date}_${S}_${LSLR}${BN}${MSL}few_shot.txt | tee ../logs/log++_${N}_${K}_${date}_${S}_${LSLR}${BN}${MSL}few_shot.txt
LSLR="LSLR_"
BN=""
MSL="MSL_"
bash omniglot_maml++_omniglot_${N}_way_${K}_shot_maml_${S}_${LSLR}${BN}${MSL}few_shot.sh 2> ../logs/err++_${N}_${K}_${date}_${S}_${LSLR}${BN}${MSL}few_shot.txt | tee ../logs/log++_${N}_${K}_${date}_${S}_${LSLR}${BN}${MSL}few_shot.txt
LSLR="LSLR_"
BN="BN_"
MSL=""
bash omniglot_maml++_omniglot_${N}_way_${K}_shot_maml_${S}_${LSLR}${BN}${MSL}few_shot.sh 2> ../logs/err++_${N}_${K}_${date}_${S}_${LSLR}${BN}${MSL}few_shot.txt | tee ../logs/log++_${N}_${K}_${date}_${S}_${LSLR}${BN}${MSL}few_shot.txt
