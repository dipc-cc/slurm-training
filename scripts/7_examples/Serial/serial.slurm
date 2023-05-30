#!/bin/bash
#SBATCH --job-name=serial_job
#SBATCH --output=output.log
#SBATCH --error=error.log
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1

echo "Running serial job..."
# Your serial job commands go here
