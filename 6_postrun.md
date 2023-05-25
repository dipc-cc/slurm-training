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

<br> <!-- Blank line -->
## Analyzing job performance with seff

<div align="justify" class="text">
SLURM provides a tool called <code>seff</code> to check the memory utilization and CPU efficiency for completed jobs. Note that for running and failed jobs, the efficiency numbers reported by seff are not reliable so please use this tool only for successfully completed jobs:</div>

```
seff <job_id>
```

<br> <!-- Blank line -->
## Scalability experiments

<div align="justify" class="text">
Scalability, in the context of parallel computing, refers to the ability to handle larger workloads as the size of a computer application grows. It is a fundamental concept that indicates the capability of both hardware and software to deliver increased computational power when additional resources are allocated. When working with high-performance computing (HPC) systems, ensuring scalability is crucial to maintaining performance as the number of cores or nodes assigned to a series of tasks increases.</div>

<div align="justify" class="text">
Parallel computing allows for the simultaneous execution of multiple tasks across distributed processors, resulting in faster code execution. On HPC systems, an efficiently parallelized code can accomplish tasks in minutes that would otherwise take days or even years on a single processor. However, not all code is amenable to effective scaling on HPC systems. Many codes contain inherent serial components that cannot be divided among processors, leading to diminished speedup if these components represent a significant portion of the code. Additionally, challenges such as memory and communication bottlenecks can hinder parallelization and negatively impact performance, although these issues may not be immediately apparent.</div>

<div align="justify" class="text">
To assess the parallel performance of a code, scaling experiments are conducted. These experiments serve two purposes: as a diagnostic tool to analyze code performance and as evidence of code scalability when requesting allocations on HPC systems. Allocation programs like NSF's XSEDE often require scaling information to evaluate code performance for resource allocation. Scaling analysis provides insights into the efficiency of parallelization, quantified by the ratio between the actual speedup achieved and the ideal speedup expected with a given number of processes.</div>

:::info box
This is a infobox :-)
:::


<div align="justify" class="text">
In summary, achieving scalability in parallel computing is essential for handling larger workloads and maintaining performance. It involves effectively distributing tasks across processors, considering the limitations of serial components, and addressing bottlenecks. Scaling experiments play a vital role in understanding code performance and are often used to support allocation requests for HPC resources.</div>


