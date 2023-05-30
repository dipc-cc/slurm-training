import os
import multiprocessing as mp

num_threads = int(os.environ.get('OMP_NUM_THREADS', '1'))
rank = int(os.environ.get('SLURM_PROCID', '0'))

print(f"Hello from thread {rank} of {num_threads} using OpenMP")

