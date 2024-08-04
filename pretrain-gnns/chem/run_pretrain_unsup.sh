#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=gpu4
##
#SBATCH --job-name=mnist
#SBATCH -o SLURM.%N.%j.out
#SBATCH -e SLURM.%N.%j.err
##
#SBATCH --gres=gpu:a6000:4

hostname
date

/home2/h2tae/anaconda3/envs/py39/bin/python3.9 pretrain_edgepred.py --output_model_file edge_hgcn_sup2 --gnn_type highgcn