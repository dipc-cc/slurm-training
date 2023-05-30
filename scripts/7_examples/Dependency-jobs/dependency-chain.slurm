#!/bin/bash
#SBATCH --partition=test
#SBATCH --job-name=dependency_chains
#SBATCH --time=00:01:00
#SBATCH --cpus-per-task=1
#SBATCH --mem=1gb
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --job-name=dependency_test
#SBATCH --output=dependency_test.out
#SBATCH --error=dependency_test.err

module load python

# Submitting the first job
srun --job-name=job1 --output=job1.out --error=job1.err python job1.py

# Submitting the second job and setting it as dependent on the
# completion of job1
srun --job-name=job2 --output=job2.out --error=job2.err --dependency=afterok:job1 python j

# Submitting the third job and setting it as dependent on the completion
# of job2
srun --job-name=job3 --output=job3.out --error=job3.err --dependency=afterok:job2 python j

# Submitting the fourth job and setting it as dependent on the
# completion of both job1 and job2
srun --job-name=job4 --output=job4.out --error=job4.err --dependency=afterok:job1:job2 pyt

