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
Scaling experiments are crucial for assessing code scalability and parallel performance. They involve systematically varying computational resources to gain insights into code behavior under different workloads. These experiments provide valuable information, identify limitations, and drive improvements.
</div>

<div align="justify" class="text">
Results serve two key purposes. Firstly, they diagnose code performance by analyzing execution times and speedup as resources increase. This helps identify bottlenecks and optimize code for better performance.
</div>

<div align="justify" class="text">
Secondly, scaling results are necessary for resource allocation requests. Funding agencies require evidence of code scalability and performance to assess resource requirements and potential impact.
</div>

<div align="justify" class="text">
Visualizations like speedup and efficiency plots effectively present scaling results. They illustrate execution time improvement and resource utilization effectiveness.
</div>


<style>
  .info-box {
    background-color: #c7e9c0; /* Green color */
    padding: 10px;
    border: 1px solid #92d693; /* Lighter shade of green for the border */
    border-radius: 4px;
  }
  
  .info-box h3 {
    font-size: 18px;
    margin-bottom: 10px;
    color: #333; /* Optional: Change the heading color if desired */
  }
  
  .info-box p {
    font-size: 14px;
    line-height: 1.5;
    color: #333; /* Optional: Change the paragraph text color if desired */
  }
</style>


<div class="info-box">
  <h3>Important Information</h3>
  <p>This is the content of the informative box.</p>
</div>



<div align="justify" class="text">
In conclusion, scaling experiments are vital for understanding code scalability and parallel performance. They inform optimization efforts and support resource allocation requests. Visualizations aid in communicating results effectively.
</div>



<style>
  .info-box {
    background-color: #f0f8ff;
    padding: 20px;
    border: 1px solid #e6eaf2;
    border-radius: 4px;
    margin-bottom: 20px;
  }
  
  .info-box h3 {
    font-size: 20px;
    margin-bottom: 10px;
    color: #0085ff;
  }
  
  .info-box p {
    font-size: 16px;
    line-height: 1.5;
    color: #333;
  }
</style>

<div class="info-box">
  <h3>Determine best performance from a scalability study</h3>
  <p>
    A scalability study allows you to assess the performance of your code as the workload increases. By varying the computational resources, such as the number of processes or cores, you can measure how your code scales and identify any bottlenecks or limitations.
  </p>
</div>


