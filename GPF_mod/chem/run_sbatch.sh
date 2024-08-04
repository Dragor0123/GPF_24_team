#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=gpu4
##
#SBATCH --job-name=mnist
#SBATCH -o SLURM.%N.%j.out
#SBATCH -e SLURM.%N.%j.err
##
#SBATCH --gres=gpu:a6000:1
#SBATCH --nodelist=n082

hostname
date

/home2/h2tae/anaconda3/envs/py39/bin/python3.9 prompt_tuning_full_shot.py --model_file pretrained_models/edgepred.pth --dataset bbbp --tuning_type gpf --num_layers 2
