---
title: First-example
nav: true
---

# First Example: Estimation of the valur of Pi with Monte Carlo methods

<div align="justify">
Before delving into the code, let's further explore the problem at hand. 

Pi (π) is a mathematical constant originally defined as the ratio of a circle's circumference to its diameter. It's a fundamental element in mathematics and appears in many formulas in all areas of mathematics and physics.

However, π is an irrational number, meaning it cannot be expressed as a simple fraction, and its decimal representation never ends or settles into a permanently repeating pattern. Although we usually approximate π as 3.14159, its exact value is unknown.

So how can we estimate it using a computer program? That's where the Monte Carlo method comes in.
</div>

<br> <!-- Blank line -->

## The Monte Carlo Method

<div align="justify">
The Monte Carlo method, named after the famous Monaco casino, is a statistical technique that uses random sampling to obtain numerical results. The underlying concept is to use randomness to solve problems that might be deterministic in principle.

In this case, we'll be using the Monte Carlo method to estimate the value of π. Here's the idea:
</div>

<br> <!-- Blank line -->
1. **Create a bounded area**: Imagine a square with a side length of 1 unit. Now, inscribe a quarter-circle with a radius of 1 unit inside this square, like a pie wedge.

2. **Throw darts**: We then "throw darts" at this square. The position (x, y) of each dart is determined randomly.

3. **Determine if the dart is inside the quarter-circle**: For each dart, we compute whether it has landed inside the quarter-circle using the equation of a circle (x^2 + y^2 < r^2, where r is the radius). If the dart lands inside the circle (x^2 + y^2 < 1), we consider it a hit.

4. **Approximate π**: We do this thousands or even millions of times. The ratio of the number of darts that hit inside the circle to the total number of darts thrown will approximately be π/4. 

So, by multiplying this ratio by 4, we can approximate π!

<div align="justify"> 
Now, this process is inherently parallel — each "dart throw" is an independent event, and we can perform multiple dart throws simultaneously. This is a perfect scenario for using a high-performance computing environment like SLURM. The more parallel processes we can run (and hence, the more darts we can throw), the better our approximation of π can be. 
</div>


<div style="text-align: justify;">
In the example script, we'll be generating these "random dart throws" using the Bash <code>$RANDOM</code> variable and then estimating π in parallel tasks. By submitting this task to SLURM, we'll effectively be demonstrating a simple, yet powerful use case of HPC.
</div>


Absolutely, we can integrate the use of `sbatch`, `salloc`, and `srun` into the Monte Carlo Pi estimation example. Here's the revised section:

## Sample Batch Script

First, let's examine the SLURM batch script. We'll name our batch script `pi_estimation.sh`. It's important to note that the batch script is the primary way to submit jobs to the SLURM scheduler, and we submit this script using the `sbatch` command.

```bash
#!/bin/bash

#SBATCH --job-name=PiEstimation
#SBATCH --output=pi_job.%j.out
#SBATCH --error=pi_job.%j.err
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --time=01:00:00
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=your-email@example.com

# Load any necessary modules and activate the conda environment (if any)
# module load python/3.8

# Start the job steps
date;hostname;pwd

for i in $(seq 1 $SLURM_NTASKS); do
    (
        # Each task performs 10^6 trials
        trials=1000000
        count=0

        for (( j=0; j<trials; j++ )); do
            x=$(echo "scale=4; $RANDOM/32767" | bc -l)
            y=$(echo "scale=4; $RANDOM/32767" | bc -l)

            # Test if the point ($x, $y) lies within the unit circle
            inside=$( echo "$x*$x + $y*$y < 1.0" | bc -l)

            # Increase count if the point is inside the circle
            if [[ $inside -eq 1 ]]; then
                ((count++))
            fi
        done

        # Estimate Pi based on the count and the number of trials
        pi=$(echo "scale=4; 4*$count/$trials" | bc -l)

        echo "Task $i: Pi is approximately $pi"
    ) &
done

# Wait for all background tasks to finish
wait
```

Once you've written your batch script, you can submit it to SLURM using the `sbatch` command. The `sbatch` command reads a script file and submits the script as a job to SLURM. The script contains both the job parameters, specified on lines beginning with `#SBATCH`, and the job commands.

```bash
sbatch pi_estimation.sh
```

Here are the explanations for each `SBATCH` directive used in our batch script:

| Directive              | Explanation                                                                                                                 |
|------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| `--job-name=PiEstimation`  | Sets the name of the job. This name appears in the job listings, making it easier to manage jobs.                         |
| `--output=pi_job.%j.out`  | Sets the name of the standard output file for the job. `%j` is replaced with the job ID.                                  |
| `--error=pi_job.%j.err`   | Sets the name of the standard error file for the job. `%j` is replaced with the job ID.                                   |
| `--nodes=1`                | Specifies that the job requires 1 node.                                                                                   |
| `--ntasks-per-node=4`      | Specifies the number of tasks to be initiated on each node. In this case, we have 4 tasks per node.                       |
| `--time=01:00:00`          | Sets a limit on the total run time of the job. The job will be terminated if it runs longer than this limit.              |
| `--mail-type=END,FAIL`     | Sends an email when the job ends or fails.                                                                                |
| `--mail-user=your-email@example.com`  | Specifies the email address to receive job status updates.


<br> <!-- Blank line -->
Remember that all `SBATCH` directives must come before any executable line in your script. 

This batch script generates four parallel tasks, each performing a million trials to estimate the value of Pi. It demonstrates both the basic usage of SLURM and the application of parallel processing in solving computationally intensive problems. 

To submit this job script to SLURM, we would use the `sbatch` command:

```bash
sbatch pi_estimation.sh
```

This script, as well as subsequent outputs, error logs, and other relevant files, will be used throughout this course as we delve deeper into the powerful features of SLURM.


## Interactive job with salloc

In some cases, you might want to run your jobs interactively, that is, get a shell on a compute node where you can type commands and run programs directly. This can be done using `salloc`.

Here's how you could use `salloc` to start an interactive shell with 4 CPUs for one hour, and then run the Pi estimation program interactively:

```bash
salloc --ntasks=4 --time=01:00:00
bash pi_estimation.sh
exit
```

The `salloc` command allocates resources (in this case, 4 tasks for a duration of one hour) and starts a shell. In that shell, you can then directly execute the `pi_estimation.sh` script. Once you're done, don't forget to type `exit` to release the allocation.

## Direct job step execution with srun

`srun` is another important command in SLURM. It allows you to run job steps directly without having to write a batch script. A job step is essentially a set of (possibly multiple) tasks that are co-scheduled across one or more nodes.

In the context of our Pi estimation program, you could use `srun` to directly run the Pi estimation commands as a job step. However, as our script is a bit more complex (with loops and conditionals), it's not straightforward to do it with `srun` directly. Instead, we can wrap our core script into another script and then use `srun` to execute it:

First, extract the core logic of our Pi estimation into a separate script, `core_pi.sh`:

```bash
#!/bin/bash

# Each task performs 10^6 trials
trials=1000000
count=0

for (( j=0; j<trials; j++ )); do
    x=$(echo "scale=4; $RANDOM/32767" | bc -l)
    y=$(echo "scale=4; $RANDOM/32767" | bc -l)

    # Test if the point ($x, $y) lies within the unit circle
    inside=$( echo "$x*$x + $y*$y < 1.0" | bc -l)

    # Increase count if the point is inside the circle
    if [[ $inside -eq 1 ]]; then
        ((count++))
    fi
done

# Estimate Pi based on the count and the number of trials
pi=$(echo "scale=4; 4*$count/$trials" | bc -l)

echo "Task $SLURM_PROCID: Pi is approximately $pi"
```

Then, use `srun` to run this script as a job step, creating 4 tasks:

```bash
srun --ntasks=4 --time=01:00:00 bash core_pi.sh
```

Each of the 4 tasks will execute `core_pi.sh` separately, effectively running our Pi estimation in parallel.

Remember, `srun` and `salloc` provide you with more flexibility and control over your job execution. You'll typically use `sbatch` for most of your jobs (especially long ones or ones that you want to schedule and forget), but `srun` and `salloc` can be very handy for quick or interactive jobs.
