#!/usr/bin/env bash
N=5

str_ch="omniglot"

date=07-05-19

source /home/akvasov/anaconda3/bin/activate meta_learning_pytorch_env
cd experiment_scripts

for f in ../*; do  # or wget-*.sh instead of *.sh
    if [ -d "$f" ]; then
        if printf '%s\n' "$f" | grep -Fqe "$str_ch"; then
              #txt_file=$(echo ${f%sh})
              #txt_file="${txt_file}txt"
              FILE=$f
              FILE="$(basename -- $FILE)"
              if [[ $FILE == *"maml++_omniglot"* ]]; then
                suff_txt_file=${FILE#"omniglot_maml++_omniglot"}
                echo '------------------\n'
                printf '"%s" running bash file \n' "${FILE}_few_shot.sh"
                bash "${FILE}_few_shot.sh" 2> ../logs/eval_err++_${suff_txt_file}_${date}.txt | tee ../logs/eval_log++_${suff_txt_file}_${date}.txt
              elif [[ $FILE == *"maml_omniglot"* ]]; then
                suff_txt_file=${FILE#"omniglot_maml_omniglot"}
                echo '------------------\n'
                printf '"%s" running bash file \n' "${FILE}_few_shot.sh"
                bash "${FILE}_few_shot.sh" 2> ../logs/eval_err_${suff_txt_file}_${date}.txt | tee ../logs/eval_log_${suff_txt_file}_${date}.txt
              fi
              #json_file=$(echo ${f%sh})
              #json_file="${json_file}json"
              #printf '"%s" is in "%s"\n' "$str_ch" "$f"
              #printf '"%s" is json file\n' "$json_file"
        fi
    fi
done