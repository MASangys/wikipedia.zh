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
analysis domain, the attributes may be simply assigned: ''M?, N

1.
2.
3.