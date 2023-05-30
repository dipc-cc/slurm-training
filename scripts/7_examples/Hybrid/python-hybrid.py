import os
import multiprocessing as mp

rank = int(os.getenv("SLURM_PROCID", "0"))
size = int(os.getenv("SLURM_NTASKS", "1"))
num_threads = int(os.getenv("SLURM_CPUS_PER_TASK", os.cpu_count()))

print(f"Hello from process {rank} of {size} using MPI and {num_threads} threads using OpenMP")

