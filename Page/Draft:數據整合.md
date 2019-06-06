**數據整合**（Data fusion）是基於將許多個人數據轉換成連貫、準確和實用的資訊的資訊統合過程\[1\]。

通常在進行數據整合時會將流程分為低中高不同處理階段，根據資訊處理的程度而定\[2\] 。

[缩略图](https://zh.wikipedia.org/wiki/File:Data_Fusion_-_Scatter_plot.png "fig:缩略图")

Low-level data fusion combines several sources of raw data to produce
new raw data. The expectation is that fused data is more [熵
(信息论)](../Page/熵_\(信息论\).md "wikilink") and  than the original
inputs.

For example,  is also known as (multi-sensor) data fusion and is a
subset of [信息融合](https://zh.wikipedia.org/wiki/信息融合 "wikilink").

Humans are a prime example of Data Fusion. As humans, we rely heavily on
our senses such as our Vision, Smell, Taste, Voice and Physical
Movement. A combination of all these senses combine on a daily basis to
help us in performing most if not all tasks in our day to day lives.
That in itself is a prime example of data fusion. We rely on a fusion of
smelling, tasting and touching food to ensure it is edible or not.
Similarly, we rely on our sight and our ability to hear and control
movement of our body to walk or drive and perform most tasks in our
lives. In all these cases, the [脑](../Page/脑.md "wikilink") performs the
fusion processing and controls what we need to do next. Our brain relies
on a fusion of data gathered from the aforementioned senses. \[3\]

## Geospatial applications

In the geospatial ([地理信息系统](../Page/地理信息系统.md "wikilink")) domain, data
fusion is often synonymous with
[数据集成](https://zh.wikipedia.org/wiki/数据集成 "wikilink").
In these applications, there is often a need to combine diverse data
sets into a unified (fused) data set which includes all of the data
points and time steps from the input data sets. The fused data set is
different from a simple combined superset in that the points in the
fused data set contain attributes and metadata which might not have been
included for these points in the original data set.

A simplified example of this process is shown below where data set "α"
is fused with data set β to form the fused data set δ. Data points in
set "α" have spatial coordinates X and Y and attributes A1 and A2. Data
points in set β have spatial coordinates X and Y and attributes B1 and
B2. The fused data set contains all points and attributes.

<table>
<thead>
<tr class="header">
<th><p>Input Data Set α</p></th>
<th><p>Input Data Set β</p></th>
<th><p>Fused Data Set δ</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><table>
<thead>
<tr class="header">
<th><p>Point</p></th>
<th><p>X</p></th>
<th><p>Y</p></th>
<th><p>A1</p></th>
<th><p>A2</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>α1</p></td>
<td><p>10</p></td>
<td><p>10</p></td>
<td><p>M</p></td>
<td><p>N</p></td>
</tr>
<tr class="even">
<td><p>α2</p></td>
<td><p>10</p></td>
<td><p>30</p></td>
<td><p>M</p></td>
<td><p>N</p></td>
</tr>
<tr class="odd">
<td><p>α3</p></td>
<td><p>30</p></td>
<td><p>10</p></td>
<td><p>M</p></td>
<td><p>N</p></td>
</tr>
<tr class="even">
<td><p>α4</p></td>
<td><p>30</p></td>
<td><p>30</p></td>
<td><p>M</p></td>
<td><p>N</p></td>
</tr>
</tbody>
</table></td>
<td><table>
<thead>
<tr class="header">
<th><p>Point</p></th>
<th><p>X</p></th>
<th><p>Y</p></th>
<th><p>B1</p></th>
<th><p>B2</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>β1</p></td>
<td><p>20</p></td>
<td><p>20</p></td>
<td><p>Q</p></td>
<td><p>R</p></td>
</tr>
<tr class="even">
<td><p>β2</p></td>
<td><p>20</p></td>
<td><p>40</p></td>
<td><p>Q</p></td>
<td><p>R</p></td>
</tr>
<tr class="odd">
<td><p>β3</p></td>
<td><p>40</p></td>
<td><p>20</p></td>
<td><p>Q</p></td>
<td><p>R</p></td>
</tr>
<tr class="even">
<td><p>β4</p></td>
<td><p>40</p></td>
<td><p>40</p></td>
<td><p>Q</p></td>
<td><p>R</p></td>
</tr>
</tbody>
</table></td>
<td><table>
<thead>
<tr class="header">
<th><p>Point</p></th>
<th><p>X</p></th>
<th><p>Y</p></th>
<th><p>A1</p></th>
<th><p>A2</p></th>
<th><p>B1</p></th>
<th><p>B2</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>δ1</p></td>
<td><p>10</p></td>
<td><p>10</p></td>
<td><p>M</p></td>
<td><p>N</p></td>
<td><p><em>Q?</em></p></td>
<td><p><em>R?</em></p></td>
</tr>
<tr class="even">
<td><p>δ2</p></td>
<td><p>10</p></td>
<td><p>30</p></td>
<td><p>M</p></td>
<td><p>N</p></td>
<td><p><em>Q?</em></p></td>
<td><p><em>R?</em></p></td>
</tr>
<tr class="odd">
<td><p>δ3</p></td>
<td><p>30</p></td>
<td><p>10</p></td>
<td><p>M</p></td>
<td><p>N</p></td>
<td><p><em>Q?</em></p></td>
<td><p><em>R?</em></p></td>
</tr>
<tr class="even">
<td><p>δ4</p></td>
<td><p>30</p></td>
<td><p>30</p></td>
<td><p>M</p></td>
<td><p>N</p></td>
<td><p><em>Q?</em></p></td>
<td><p><em>R?</em></p></td>
</tr>
<tr class="odd">
<td><p>δ5</p></td>
<td><p>20</p></td>
<td><p>20</p></td>
<td><p><em>M?</em></p></td>
<td><p><em>N?</em></p></td>
<td><p>Q</p></td>
<td><p>R</p></td>
</tr>
<tr class="even">
<td><p>δ6</p></td>
<td><p>20</p></td>
<td><p>40</p></td>
<td><p><em>M?</em></p></td>
<td><p><em>N?</em></p></td>
<td><p>Q</p></td>
<td><p>R</p></td>
</tr>
<tr class="odd">
<td><p>δ7</p></td>
<td><p>40</p></td>
<td><p>20</p></td>
<td><p><em>M?</em></p></td>
<td><p><em>N?</em></p></td>
<td><p>Q</p></td>
<td><p>R</p></td>
</tr>
<tr class="even">
<td><p>δ8</p></td>
<td><p>40</p></td>
<td><p>40</p></td>
<td><p><em>M?</em></p></td>
<td><p><em>N?</em></p></td>
<td><p>Q</p></td>
<td><p>R</p></td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

In a simple case where all attributes are uniform across the entire
analysis domain, the attributes may be simply assigned: *M?, N?, Q?, R?*
to M, N, Q, R. In a real application, attributes are not uniform and
some type of interpolation is usually required to properly assign
attributes to the data points in the fused set.

[右](https://zh.wikipedia.org/wiki/File:Lobster_movement3.jpg "fig:右")
software by Myriax Pty. Ltd. - eonfusion.myriax.com\]\] In a much more
complicated application, marine animal researchers use data fusion to
combine animal tracking data with [測深學](../Page/測深學.md "wikilink"),
[气象学](../Page/气象学.md "wikilink"),
[海面温度](https://zh.wikipedia.org/wiki/海面温度 "wikilink") (SST) and
animal habitat data to examine and understand habitat utilization and
animal behavior in reaction to external forces such as weather or water
temperature. Each of these data sets exhibit a different spatial grid
and sampling rate so a simple combination would likely create erroneous
assumptions and taint the results of the analysis. But through the use
of data fusion, all data and attributes are brought together into a
single view in which a more complete picture of the environment is
created. This enables scientists to identify key locations and times and
form new insights into the interactions between the environment and
animal behaviors.

In the figure at right, rock lobsters are studied off the coast of
Tasmania. Dr. Hugh Pederson of the
[塔斯馬尼亞大學](../Page/塔斯馬尼亞大學.md "wikilink")
used data fusion software to fuse  tracking data (color-coded for in
yellow and black for day and night, respectively) with bathymetry and
habitat data to create a unique 4D picture of rock lobster behavior.

## Data integration

In applications outside of the geospatial domain, differences in the
usage of the terms [Data
integration](https://zh.wikipedia.org/wiki/Data_integration "wikilink")
and Data fusion apply. In areas such as business intelligence, for
example, data integration is used to describe the combining of data,
whereas data fusion is integration followed by reduction or replacement.
Data integration might be viewed as set combination wherein the larger
set is retained, whereas fusion is a set reduction technique with
improved confidence.

## The JDL/DFIG model

In the mid-1980s, the Joint Directors of Laboratories formed the Data
Fusion Subpanel (which later became known as the Data Fusion Group).
With the advent of the World Wide Web, data fusion thus included data,
sensor, and information fusion. The JDL/DFIG introduced a model of data
fusion that divided the various processes. Currently, the six levels
with the Data Fusion Information Group (DFIG) model are:

Level 0: *Source Preprocessing/subject Assessment*

Level 1: *Object Assessment*

Level 2: *Situation Assessment*

Level 3: *Impact Assessment* (or *Threat Refinement*)

Level 4: *Process Refinement*

Level 5: *User Refinement* (or *Cognitive Refinement*)

Although the JDL Model (Level 1–4) is still in use today, it is often
criticized for its implication that the levels necessarily happen in
order and also for its lack of adequate representation of the potential
for a human-in-the-loop. The DFIG model (Level 0–5) explored the
implications of situation awareness, user refinement, and mission
management.\[4\] Despite these shortcomings, the JDL/DFIG models are
useful for visualizing the data fusion process, facilitating discussion
and common understanding,\[5\] and important for systems-level
information fusion design.\[6\]

### Application areas

  - [GIS](https://zh.wikipedia.org/wiki/GIS "wikilink")

  - [土地測量](../Page/土地測量.md "wikilink")

  - [商业智能](../Page/商业智能.md "wikilink")

  - [海洋学](../Page/海洋学.md "wikilink")

  -
  - [企業績效管理](https://zh.wikipedia.org/wiki/企業績效管理 "wikilink")

  - [智慧型運輸系統](../Page/智慧型運輸系統.md "wikilink")

  - [忠誠計劃](../Page/忠誠計劃.md "wikilink")

  - [化学信息学](../Page/化学信息学.md "wikilink")

      - [定量构效关系](../Page/定量构效关系.md "wikilink")

  - [生物信息学](../Page/生物信息学.md "wikilink")

  - [情报机构](../Page/情报机构.md "wikilink")

  - [無線感測網路](../Page/無線感測網路.md "wikilink")

  - [生物识别技术](https://zh.wikipedia.org/wiki/生物识别技术 "wikilink")

## From multiple traffic sensing modalities

The data from the different sensing technologies can be combined in
intelligent ways to determine the traffic state accurately. A Data
fusion based approach that utilizes the road side collected acoustic,
image and sensor data has been shown to combine the advantages of the
different individual methods.\[7\]

## Decision fusion

In many cases, geographically-dispersed sensors are severely energy- and
bandwidth-limited. Therefore, the raw data concerning a certain
phenomenon are often summarized in a few bits from each sensor. When
inferring on a binary event (i.e., \(\mathcal{H}_0\) or
\(\mathcal{H}_1\) ), in the extreme case only binary decisions are sent
from sensors to a Decision Fusion Center (DFC) and combined in order to
obtain improved classification performance.\[8\]\[9\]\[10\]

## For enhanced contextual awareness

With a multitude of built-in sensors including motion sensor,
environmental sensor, position sensor, a modern mobile device typically
gives mobile applications access to a number of sensory data which could
be leveraged to enhance the contextual awareness. Using signal
processing and data fusion techniques such as feature generation,
feasibility study and [主成分分析](../Page/主成分分析.md "wikilink") (PCA) to
analyze such sensory data will greatly improve the positive rate of
classifying the motion and contextual relevant status of the
device.\[11\]

## See also

  - [数据同化](https://zh.wikipedia.org/wiki/数据同化 "wikilink")

  -
  - [影像融合](../Page/影像融合.md "wikilink")

  - [Information
    integration](https://zh.wikipedia.org/wiki/Information_integration "wikilink")

  -
  - [Sensor
    fusion](https://zh.wikipedia.org/wiki/Sensor_fusion "wikilink")

## External links

  - [Discriminant Correlation Analysis
    (DCA)](https://github.com/mhaghighat/dcaFuse)\[12\]
  - [Sensordata Fusion, An
    Introduction](http://www.nv.et-inf.uni-siegen.de/pb2/research/others/datafus/datafuse.htm)
  - [International Society of Information Fusion](http://www.isif.org/)
  - [Sensor Fusion for
    Nanopositioning](https://www.academia.edu/9821404/Sensor_Fusion_in_Nanopositioning)

## References

### Citations

### Sources

  - General references

<!-- end list -->

  -
<!-- end list -->

1.
## Bibliography

  -
  -
  -
{{-}}

[Category:資料分析](https://zh.wikipedia.org/wiki/Category:資料分析 "wikilink")

1.

2.

3.

4.

5.

6.
7.

8.

9.

10.

11.

12.