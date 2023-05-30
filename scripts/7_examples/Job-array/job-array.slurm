#!/bin/bash
#SBATCH --partition=regular
#SBATCH --job-name=ARRAY_JOB
#SBATCH --time=00:10:00
#SBATCH --nodes=1              # nodes per instance
#SBATCH --ntasks=1             # tasks per instance
#SBATCH --array=0-9           # instance indexes
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.err

echo "Slurm job id is ${SLURM_JOB_ID}"
echo "Array job id is ${SLURM_ARRAY_JOB_ID}"
echo "Instance index is ${SLURM_ARRAY_TASK_ID}."    
