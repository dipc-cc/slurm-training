---
title: Examples
nav: true
---

# Examples

Here I have the new usefull sbatch script examples.


<style>
  .info-box {
    background-color: #f0f8ff;
    padding: 20px;
    border: 1px solid #e6eaf2;
    border-radius: 4px;
    margin-bottom: 20px;
    font-family: Courier, monospace;
  }

  .info-box h3 {
    font-size: 20px;
    margin-bottom: 10px;
    color: #0085ff;
    cursor: pointer;
    font-family: Helvetica, sans-serif; /* Set your desired regular font here */
  }

  .info-box p {
    font-size: 16px;
    line-height: 1.5;
    color: #333;
    font-family: Courier, monospace;
  }

  .info-box .content {
    display: none; /* Collapsed by default */
  }
</style>

<div class="info-box">
  <h3 onclick="toggleInfoBox(this)">Serial</h3>
  <div class="content">
      <pre>
#!/bin/bash
#SBATCH --job-name=serial_job
#SBATCH --output=output.log
#SBATCH --error=error.log
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1

echo "Running serial job..."
# Your serial job commands go here
    </pre>
  </div>
</div>


<div class="info-box">
  <h3 onclick="toggleInfoBox(this)">Job Array</h3>
  <div class="content">
      <pre>
#!/bin/bash
#SBATCH --partition=regular
#SBATCH --job-name=ARRAY_JOB
#SBATCH --time=00:10:00
#SBATCH --nodes=1              # nodes per instance
#SBATCH --ntasks=1             # tasks per instance
#SBATCH --array=0-9           # instance indexes
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.err

echo "Slurm job id is ${SLURM_JOB_ID}"
echo "Array job id is ${SLURM_ARRAY_JOB_ID}"
echo "Instance index is ${SLURM_ARRAY_TASK_ID}."    
</pre>
  </div>
</div>


<div class="info-box">
  <h3 onclick="toggleInfoBox(this)">Dependency chains</h3>
  <div class="content">
    <p><span style="font-family: Helvetica, Arial, sans-serif;">Job dependencies are used to defer the start of a job until some dependencies have been satisfied. Job dependencies can be defined using the --dependency argument of the sbatch command:</span></p>
      <pre>
#!/bin/bash
#SBATCH --partition=regular
#SBATCH --job-name=ARRAY_JOB
#SBATCH --time=00:10:00
#SBATCH --nodes=1              # nodes per instance
#SBATCH --ntasks=1             # tasks per instance
#SBATCH --array=0-9           # instance indexes
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.err

echo "Slurm job id is ${SLURM_JOB_ID}"
echo "Array job id is ${SLURM_ARRAY_JOB_ID}"
echo "Instance index is ${SLURM_ARRAY_TASK_ID}."
</pre>
  </div>
</div>



<script>
  function toggleInfoBox(element) {
    var content = element.nextElementSibling;
    if (content.style.display === 'none' || content.style.display === '') {
      content.style.display = 'block';
    } else {
      content.style.display = 'none';
    }
  }
</script>
