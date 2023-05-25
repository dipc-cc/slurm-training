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
  <tr>
    <th style="border-bottom: 1px solid black;">QoS/Partition</th>
    <th style="border-bottom: 1px solid black;">Priority</th>
    <th style="border-bottom: 1px solid black;">MaxWall</th>
    <th style="border-bottom: 1px solid black;">MaxNodesPU</th>
    <th style="border-bottom: 1px solid black;">MaxJobsPU</th>
    <th style="border-bottom: 1px solid black;">MaxSubmitPU</th>
    <th style="border-bottom: 1px solid black;">MaxTRES</th>
  </tr>
  <tr>
    <td>regular</td>
    <td>200</td>
    <td>1-00:00:00</td>
    <td>24</td>
    <td>50</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>test</td>
    <td>500</td>
    <td>00:10:00</td>
    <td>2</td>
    <td>2</td>
    <td>2</td>
    <td></td>
  </tr>
  <tr>
    <td>long</td>
    <td>200</td>
    <td>2-00:00:00</td>
    <td>24</td>
    <td>20</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>xlong</td>
    <td>200</td>
    <td>8-00:00:00</td>
    <td>6</td>
    <td>14</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>large</td>
    <td>200</td>
    <td>2-00:00:00</td>
    <td>40</td>
    <td>6</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>xlarge</td>
    <td>200</td>
    <td>2-00:00:00</td>
    <td>80</td>
    <td>6</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>serial</td>
    <td>200</td>
    <td>2-00:00:00</td>
    <td>24</td>
    <td>120</td>
    <td></td>
    <td>cpu=1<br/>gpu=1<br/>node=1</td>
  </tr>
</table>


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

