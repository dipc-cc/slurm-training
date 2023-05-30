#!/bin/bash
#SBATCH --partition=test
#SBATCH --job-name=MPI-job
#SBATCH --cpus-per-task=1
#SBATCH --time=00:05:00
#SBATCH --mem=1gb
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4


module load Python
module load OpenMPI/4.1.4-GCC-11.3.0

mpirun -np $SLURM_NTASKS python python-mpi.py

