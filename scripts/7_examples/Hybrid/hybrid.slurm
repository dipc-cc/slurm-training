#!/bin/bash
#SBATCH --partition=test
#SBATCH --job-name=hybrid_job
#SBATCH --time=00:05:00
#SBATCH --cpus-per-task=2
#SBATCH --mem=2gb
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --output=test_hybrid_%j.out
#SBATCH --error=test_hybrid_%j.err

module load Python
module load OpenMPI/4.1.4-GCC-11.3.0

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
mpirun -np $SLURM_NTASKS python python-hybrid.py

