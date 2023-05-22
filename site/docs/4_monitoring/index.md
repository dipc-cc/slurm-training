# Monitoring

As we progress through our exploration of SLURM, we now approach an essential aspect of job management - monitoring. After you've submitted your job to the HPC cluster (like our Pi estimation job from the previous example), you'll want to track its status. Monitoring allows you to understand your job's progress, check its resource usage, and help identify any potential issues that could affect its successful completion.

SLURM provides several tools to assist you in job monitoring, including `squeue`, `sacct`, `sstat`, and `seff`. Let's dive into these commands, understand their usage, and see how we can leverage them for efficient job tracking.

Absolutely. Here's a more comprehensive version of the `squeue` section.

## squeue

Think of `squeue` as your immediate source of information about your jobs. The `squeue` command displays information about jobs located in the SLURM scheduling queue. 

Let's say you've just submitted your Pi estimation job, and you're keen to check its status. Here's how to do it:

```bash
squeue -u $USER
```

The `-u` flag followed by `$USER` allows you to filter the jobs belonging to your user. The output will be a table listing your jobs:

```
  JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
123456     debug pi_estim  username  R       0:25      1 node007
```

Let's decipher the output:

- `JOBID`: Unique identifier of your job in the SLURM system.
- `PARTITION`: The partition (or queue) where your job is placed.
- `NAME`: The name of your job.
- `USER`: The user who owns the job.
- `ST`: The state of your job (`R` signifies that the job is currently running).
- `TIME`: The time your job has been running.
- `NODES`: The number of nodes your job is using.
- `NODELIST(REASON)`: The specific node(s) your job is running on.

If you wish to customize the display and show specific fields, you can use the `-o/--format` option. For example, to display the job ID, name, state, and the number of CPUs:

```bash
squeue -u $USER -o "%.10i %.9P %.8j %.8u %.2t %.6D"
```

The format option `%.10i %.9P %.8j %.8u %.2t %.6D` is used to customize the output. Here's what each of these specifiers means:

- `%.10i`: Job ID with a field width of 10 characters.
- `%.9P`: Partition name with a field width of 9 characters.
- `%.8j`: Job name with a field width of 8 characters.
- `%.8u`: User name with a field width of 8 characters.
- `%.2t`: Job state with a field width of 2 characters.
- `%.6D`: Number of nodes with a field width of 6 characters.

Field width specifies the minimum number of characters to be printed. If the value to be printed is shorter than this number, the result is padded with blank spaces. The full list of available options can be found in the [SLURM documentation](https://slurm.schedmd.com/squeue.html).

With the `squeue` command, you can stay updated with the status and progress of your job in the scheduling queue. In the next section, we will explore `sacct` and `sstat` to get more detailed information about the resource usage of your job.

Sure, let's dive into more ways you can use `squeue` to monitor your jobs.

### Example 1: Viewing All Jobs in a Specific Partition

If you want to view all jobs currently in a specific partition, you can use the `-p` or `--partition` option. For example, to view all jobs in the 'regular' partition:

```bash
squeue -p regular
```

This will show all jobs currently in the 'regular' partition, regardless of the user who submitted them.

### Example 2: Viewing Jobs in Specific States

You can use `squeue` to display jobs in specific states. This can be particularly useful when you want to see how many jobs are running, pending, or completed. Use the `-t` or `--states` option followed by the state:

```bash
squeue -u $USER -t RUNNING
```

This command will show all your jobs currently running.

Here are all the job states you can query using the `-t` or `--states` option of `squeue`:

- `PENDING` (or `PD`): Job is awaiting resource allocation. Your job might be pending because the resources it needs are not currently available, or it might be waiting in line due to job scheduling policies.

- `RUNNING` (or `R`): Job currently has an allocation and is running.

- `SUSPENDED` (or `S`): Job has an allocation, but execution has been suspended and CPU usage has been reduced to zero, often due to some system event.

- `COMPLETING` (or `CG`): Job is in the process of completing. Some processes of the job are still running.

- `COMPLETED` (or `CD`): Job has completed successfully.

- `CONFIGURING` (or `CF`): Job has been allocated resources, but are being configured for the job.

- `CANCELLED` (or `CA`): Job was explicitly cancelled by the user or system administrator. The job may or may not have been initiated.

- `FAILED` (or `F`): Job terminated with non-zero exit code or other failure condition.

- `TIMEOUT` (or `TO`): Job terminated upon reaching its time limit.

- `PREEMPTED` (or `PR`): Job was preempted by a higher priority job.

- `NODE_FAIL` (or `NF`): Job terminated due to failure of one or more allocated nodes.

- `REVOKED` (or `RV`): Sibling job was unable to allocate resources and was revoked.

- `SPECIAL_EXIT` (or `SE`): The job terminated in a condition that is interpreted as an exit code.

### Example 3: Sorting Jobs

`squeue` can also sort jobs based on various attributes such as priority, job ID, time left, etc. For instance, to sort your jobs based on their remaining time in descending order, use the `--sort` option:

```bash
squeue -u $USER --sort=-t
```

This will display your jobs in descending order of remaining time (`-t`). The `-` sign before `t` is used for descending order. Without it, the jobs would be sorted in ascending order.

These examples show the versatility of the `squeue` command and how it can be customized to get specific information about your jobs. Please remember to replace `$USER` with your username or keep it as is if you're running these commands directly in your terminal session. The full list of options is available in the [SLURM documentation](https://slurm.schedmd.com/squeue.html).

### Example 4: Showing Extended Job Information 

If you want to see more detailed information about a particular job, including its start time, estimated end time, and the nodes it's running on, you can use the `-l` or `--long` option. 

```bash
squeue -j 123456 --long
```

This command will display extended information about the job with ID 123456 (replace it with your job ID). The output might look like this:

```
Tue May 23 10:15:39 2023
   JOBID PARTITION     NAME     USER ST       START        END  NODES NODELIST(REASON)
  123456     test  pi_estim    myuser  R 10:15:39 10:17:39      1 n0001
```

### Example 5: Displaying Job Information in Parsable Format

For scripts or other automated tasks, you might want to obtain the job information in a parsable format. The `-h` or `--noheader` option can be used to suppress the header, and the `--Format` option allows you to specify the exact fields you need. For instance:

```bash
squeue -j 123456 --noheader --Format=jobid,username,state
```

This will return a single line of output with the job ID, username, and state, separated by pipe characters. The output might look like:

```
123456|myuser|RUNNING
```

In these examples, remember to replace `123456` with the ID of your job, and `myuser` with your username. The full list of format specifiers and options can be found in the [SLURM documentation](https://slurm.schedmd.com/squeue.html).

## sacct

The `sacct` command provides accounting data for all jobs and job steps in the SLURM workload manager. It's a treasure trove of information about your job's performance, offering insights into resource usage and time spent on different stages.

To view the accounting data for a specific job, use the `-j` flag followed by the job id:

```bash
sacct -j 123456 --format=JobID,JobName,MaxRSS,Elapsed
```

The `--format` option customizes the output, similar to the `squeue` command. In the above command, we are asking for the Job ID, Job Name, Maximum RSS memory used, and the Elapsed time of the job. A full list of available format options can be found in the [SLURM documentation](https://slurm.schedmd.com/sacct.html).

The output might look like this:

```
       JobID    JobName     MaxRSS    Elapsed 
------------ ---------- ---------- ---------- 
123456           pi_estim   10000K   00:02:00
```

## sstat

`sstat` allows us to fetch the real-time status of a running job or step. This command gives us live updates on resource usage, which can be essential for optimizing your application.

To get real-time stats of your running job:

```bash
sstat -j 123456 --format=JobID,AveCPU,AveRSS,AveVMSize
```

Again, the `--format` option allows us to customize the output. This command displays the Job ID, average CPU usage, average resident set size (RSS) memory, and average virtual memory size. 

Here is a sample output:

```
  JobID     AveCPU     AveRSS    AveVMSize
--------- ---------- ---------- -----------
123456    00:02:00   100.00MB    500.00MB
```

The full list of format options can be found in the [SLURM documentation](https://slurm.schedmd.com/sstat.html).

## seff

`seff` provides a brief summary of the efficiency of your job. Although it's not part of the default SLURM installation, it's widely used due to its effectiveness.

```bash
seff 123456
```

This command will return something like this:

```
Job ID: 123456
Cluster: cluster_name
User/Group: user/group
State: COMPLETED (exit code 0)
Cores: 4
CPU Utilized: 00:08:00
CPU Efficiency: 100.00% of 00:08:00 core-walltime
Wall-clock time: 00:02:00
Memory Utilized: 100.00 MB
Memory Efficiency: 25.00% of 400.00 MB
```

This output provides an overall picture of how efficiently your job utilized the allocated resources, which can be crucial in optimizing your application for an HPC environment. The use of these commands will give you a good understanding of how your job is performing and where there might be room for improvement.

