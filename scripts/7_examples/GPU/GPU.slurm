#!/bin/bash
#SBATCH --partition=regular
#SBATCH --job-name=GROMACS_job
#SBATCH --mem=200gb
#SBATCH --cpus-per-task=1
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=8
#SBATCH --gres=gpu:p40:2
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.err

module load GROMACS/2020-fosscuda-2019b

srun gmx_mpi mdrun -ntomp $SLURM_CPUS_PER_TASK -nb auto -bonded auto -pme auto -gpu_id 01 -s input.tpr
