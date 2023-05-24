---
title: Constrains
nav: true
---

# Policies and constrains

In an HPC (High-Performance Computing) environment, imposing constraints plays a crucial role in effectively managing and optimizing job execution. These constraints collectively contribute to the overall effectiveness and fairness of job management in an HPC environment. By implementing appropriate constraints, HPC systems can enhance resource utilization, minimize job delays, and accommodate the diverse computational needs of multiple users and applications. 



| QoS/Partition | Priority | MaxWall      | MaxNodesPU | MaxJobsPU   | MaxSubmitPU | MaxTRES                    |
|---------------|----------|--------------|------------|-------------|-------------|----------------------------|
| regular       | 200      |  1-00:00:00  | 24         |  50         |             |                            |
| test          | 500      |    00:10:00  |  2         |   2         | 2           |                            |
| long          | 200      |  2-00:00:00  | 24         |  20         |             |                            |  
| xlong         | 200      |  8-00:00:00  |  6         |  14         |             |                            |
| large         | 200      |  2-00:00:00  | 40         |   6         |             |                            |
| xlarge        | 200      |  2-00:00:00  | 80         |   6         |             |                            |
| serial        | 200      |  2-00:00:00  | 24         | 120         |             | cpu=1<br/>gpu=1<br/>node=1 |
