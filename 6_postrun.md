---
title: Post-run
nav: true
---

<style>
.text {
  margin-bottom: 10px;
}
</style>

# Post-Run Operations

<div align="justify" class="text">
Once the work is finished we should move the generated data to our home directory under /dipc or to a local folder. This is done for two main reasons:</div>


1. The **scrath is not backed up**, so in case there is a problem with the filesystem, the stored data will be lost.
2. The /scratch file system is designed for performance rather than reliability. When the occupancy goes above 80% the BeeGFS filesystem shows a performance degradation that affects **all users**.

## Analyzing job performance with seff

<div align="justify" class="text">
SLURM provides a tool called <code>seff</code> to check the memory utilization and CPU efficiency for completed jobs. Note that for running and failed jobs, the efficiency numbers reported by seff are not reliable so please use this tool only for successfully completed jobs:</div>

```
seff <job_id>
```

<br> <!-- Blank line -->
## Scaling experiments

<div align="justify" class="text">
Parallel computing allows us to speed up code by performing multiple tasks simultaneously across a distributed set of processors. On high performance computing (HPC) systems, an efficient parallel code can accomplish in minutes what might take days or even years to perform on a single processor. Not all code will scale well on HPC systems however. Most code has inherently serial components that cannot be divided among processors. If the serial component is a large segment of a code, the speedup gained from parallelization will greatly diminish. Memory and communication bottlenecks also present challenges to parallelization, and their impact on performance may not be readily apparent.</div>

<div align="justify" class="text">
To measure the parallel performance of a code, we perform scaling experiments. Scaling experiments are useful as 1) a diagnostic tool to analyze performance of your code and 2) a evidence of code performance that can be used when requesting allocations on HPC systems (for example, NSF’s XSEDE program requires scaling information when requesting allocations). In this post I’ll outline the basics for performing scaling analysis of your code and discuss how these results are often presented in allocation applications.</div>



