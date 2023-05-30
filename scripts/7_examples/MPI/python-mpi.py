import os
import socket

rank = int(os.environ['SLURM_PROCID'])
size = int(os.environ['SLURM_NPROCS'])

print(f"Hello from process {rank} of {size} on {socket.gethostname()}")
