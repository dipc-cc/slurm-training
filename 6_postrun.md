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
    Consider the following scalability plot for a random application.

At what point would you consider to be peak performance in this example.

    1. The point where performance gains are no longer linear
    2. The apex of the curve
    3. The maximum core count
    4. None of the above

You may find that a scalability graph my vary if you ran the same code on a different machine. Why? 
## collapsible markdown?

<details><summary>CLICK ME</summary>

#### yes, even hidden code blocks!

```python
print("hello world!")
```

</details>
  </p>
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

  .info-box .additional-info {
    margin-top: 20px;
    padding: 10px;
    background-color: #f9f9f9;
    border: 1px solid #e6eaf2;
    border-radius: 4px;
    display: none; /* Collapsed by default */
  }

  .info-box .additional-info-toggle {
    cursor: pointer;
    color: #0085ff;
    font-weight: bold;
    text-decoration: underline;
  }
</style>

<div class="info-box">
  <h3>Determine best performance from a scalability study</h3>
  <p>
    Consider the following scalability plot for a random application.

At what point would you consider to be peak performance in this example.

    1. The point where performance gains are no longer linear
    2. The apex of the curve
    3. The maximum core count
    4. None of the above

You may find that a scalability graph may vary if you ran the same code on a different machine. Why?
  </p>
  <div class="additional-info-toggle">Show Additional Information</div>
  <div class="additional-info">
    <h3>Additional Information</h3>
    <p>
      In response to option #4, if you produce scalability studies on different machines, they will be different because of the varying setups and hardware configurations of the machines. It is highly unlikely to obtain two identical scalability studies, but they may agree to some extent.
    </p>
  </div>
</div>

<script>
  document.querySelector('.additional-info-toggle').addEventListener('click', function() {
    var additionalInfo = document.querySelector('.additional-info');
    additionalInfo.style.display = (additionalInfo.style.display === 'none') ? 'block' : 'none';
    this.textContent = (additionalInfo.style.display === 'none') ? 'Show Additional Information' : 'Hide Additional Information';
  });
</script>

