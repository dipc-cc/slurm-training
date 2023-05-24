---
title: Constrains
nav: true
---

# Policies and constrains

In an HPC (High-Performance Computing) environment, imposing constraints plays a crucial role in effectively managing and optimizing job execution. These constraints are vital for maintaining fairness, maximizing resource utilization, and ensuring efficient scheduling. 

<table style="border-collapse: collapse;">
    <tr style="background-color: #f5f5f5;">
        <th style="border: 1px solid #ddd; padding: 8px;">Constrain</th>
        <th style="border: 1px solid #ddd; padding: 8px;">Description</th>
        <th style="border: 1px solid #ddd; padding: 8px;">Example</th>
    </tr>
    <tr>
        <td style="border: 1px solid #ddd; padding: 8px;">--constraint=[constraint_list]</td>
        <td style="border: 1px solid #ddd; padding: 8px;">Specifies a list of constraints for the job</td>
        <td style="border: 1px solid #ddd; padding: 8px;">--constraint=cpu24</td>
    </tr>
    <tr>
        <td style="border: 1px solid #ddd; padding: 8px;">--gres=[resource_list]</td>
        <td style="border: 1px solid #ddd; padding: 8px;">Specifies generic consumable resources for the job</td>
        <td style="border: 1px solid #ddd; padding: 8px;">--gres=gpu:2</td>
    </tr>
</table>



| QoS/Partition | Priority | MaxWall      | MaxNodesPU | MaxJobsPU   | MaxSubmitPU | MaxTRES                    |
|---------------|----------|--------------|------------|-------------|-------------|----------------------------|
| regular       | 200      |  1-00:00:00  | 24         |  50         |             |                            |
| test          | 500      |    00:10:00  |  2         |   2         | 2           |                            |
| long          | 200      |  2-00:00:00  | 24         |  20         |             |                            |  
| xlong         | 200      |  8-00:00:00  |  6         |  14         |             |                            |
| large         | 200      |  2-00:00:00  | 40         |   6         |             |                            |
| xlarge        | 200      |  2-00:00:00  | 80         |   6         |             |                            |
| serial        | 200      |  2-00:00:00  | 24         | 120         |             | cpu=1<br/>gpu=1<br/>node=1 |
