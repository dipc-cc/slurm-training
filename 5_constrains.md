---
title: Constrains
nav: true
---

# Policies and constrains

<div align="justify">
In an HPC (High-Performance Computing) environment, imposing constraints plays a crucial role in effectively managing and optimizing job execution. These constraints collectively contribute to the overall effectiveness and fairness of job management in an HPC environment. By implementing appropriate constraints, HPC systems can enhance resource utilization, minimize job delays, and accommodate the diverse computational needs of multiple users and applications.</div>


| QoS/Partition | Priority | MaxWall      | MaxNodesPU | MaxJobsPU   | MaxSubmitPU | MaxTRES                    |
|---------------|----------|--------------|------------|-------------|-------------|----------------------------|
| regular       | 200      |  1-00:00:00  | 24         |  50         |             |                            |
| test          | 500      |    00:10:00  |  2         |   2         | 2           |                            |
| long          | 200      |  2-00:00:00  | 24         |  20         |             |                            |  
| xlong         | 200      |  8-00:00:00  |  6         |  14         |             |                            |
| large         | 200      |  2-00:00:00  | 40         |   6         |             |                            |
| xlarge        | 200      |  2-00:00:00  | 80         |   6         |             |                            |
| serial        | 200      |  2-00:00:00  | 24         | 120         |             | cpu=1<br/>gpu=1<br/>node=1 |

<table style="text-align: center; border-collapse: collapse;">
  <colgroup>
    <col style="width: 30px">
    <col style="width: 30px">
    <col style="width: 30px">
    <col style="width: 30px">
    <col style="width: 30px">
  </colgroup>
  <tr>
    <td colspan="3" style="border-bottom: 1px solid black;">Title goes here</td>
    <td style="border-bottom: 1px solid black;">A</td>
    <td style="text-align: right; border-bottom: 1px solid black;">B</td>
  </tr>
  <tr>
    <td rowspan="3" style="border-bottom: 1px solid black;">C</td>
    <td style="border-bottom: 1px solid black;">D</td>
    <td style="border-bottom: 1px solid black;">E</td>
    <td style="border-bottom: 1px solid black;">F</td>
    <td style="text-align: right; border-bottom: 1px solid black;">G</td>
  </tr>
  <tr>
    <td style="border-bottom: 1px solid black;">H</td>
    <td colspan="2" style="border-bottom: 1px solid black;">I</td>
    <td rowspan="2" style="text-align: right; vertical-align: bottom; border-bottom: 1px solid black;">J</td>
  </tr>
  <tr>
    <td style="border-bottom: 1px solid black;">K</td>
    <td style="border-bottom: 1px solid black;">L</td>
    <td style="border-bottom: 1px solid black;">M</td>
  </tr>
  <tr>
    <td style="text-align: right; border-bottom: 1px solid black;">N</td>
    <td colspan="4" style="border-bottom: 1px solid black;">O</td>
  </tr>
</table>

