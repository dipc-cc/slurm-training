#!/bin/bash
#SBATCH --partition=test
#SBATCH --job-name=JOB_NAME
#SBATCH --cpus-per-task=4
#SBATCH --time=00:05:00
#SBATCH --mem=2gb
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --output=test_openmp_%j.out
#SBATCH --error=test_openmp_%j.err

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
module load Python

python python-OpenMP.py
