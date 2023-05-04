#!/bin/bash
 
#SBATCH --partition=gpu
#SBATCH --gres=gpu:a40:2
#SBATCH --nodes=1
#SBATCH --ntasks=32
#SBATCH --cpus-per-task=1
#SBATCH --mem=0
#SBATCH --output=output_%A
#SBATCH --error=error_%A
 #SBATCH --time=48:00:00
 
module purge
cd /scratch1/minoofar

nohup singularity exec --nv --cleanenv --bind /scratch1/minoofar skill-chaining-ubuntu-20.04-cuda-11.6-mujoco2.1_v5.siff sh test.sh > logfile&