# Post-Run Operations

Once the work is finished we should move the generated data to our home directory under /dipc or to a local folder. This is done for two main reasons:

1. The **scrath is not backed up**, so in case there is a problem with the filesystem, the stored data will be lost.
2. The /scratch file system is designed for performance rather than reliability. When the occupancy goes above 80% the BeeGFS filesystem shows a performance degradation that affects **all users**.

## Analyzing job performance with seff

SLURM provides a tool called ``seff`` to check the memory utilization and CPU efficiency for completed jobs. Note that for running and failed jobs, the efficiency numbers reported by seff are not reliable so please use this tool only for successfully completed jobs:

```
seff <job_id>
```




