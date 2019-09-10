[3dtree.png](https://zh.wikipedia.org/wiki/File:3dtree.png "fig:3dtree.png")

在[计算机科学](../Page/计算机科学.md "wikilink")里，***k*-d树**（ **k-维[树](../Page/树_\(数据结构\).md "wikilink")**的缩写）是在*k*维[欧几里德空间组织](https://zh.wikipedia.org/wiki/欧几里德空间 "wikilink")[点](../Page/点.md "wikilink")的数据结构。*k*-d树可以使用在多种应用场合，如多维键值搜索（例：范围搜寻及[最邻近搜索](../Page/最邻近搜索.md "wikilink")）。*k*-d树是[空间二分树](https://zh.wikipedia.org/wiki/空间二分树 "wikilink")（[Binary space partitioning](http://en.wikipedia.org/wiki/Binary_space_partitioning)）的一种特殊情况。

## 简介

*k*-d树是每个节点都为k维点的[二叉树](../Page/二叉树.md "wikilink")。所有非叶子节点可以视作用一个[超平面把空间分割成两个](https://zh.wikipedia.org/wiki/超平面 "wikilink")[半空间](https://zh.wikipedia.org/wiki/半空间 "wikilink")。节点左边的子树代表在超平面左边的点，节点右边的子树代表在超平面右边的点。选择超平面的方法如下：每个节点都与k维中垂直于超平面的那一维有关。因此，如果选择按照x轴划分，所有x值小于指定值的节点都会出现在左子树，所有x值大于指定值的节点都会出现在右子树。这样，超平面可以用该x值来确定，其[法線为x轴的](https://zh.wikipedia.org/wiki/法線 "wikilink")[单位向量](../Page/单位向量.md "wikilink")。

## *k*-d树的运算

### 建立*k*-d树

有很多种方法可以选择轴垂直分割面（ axis-aligned splitting planes ），所以有很多种建立*k*-d树的方法。 最典型的方法如下：

  - 随着树的深度轮流选择轴当作分割面。（例如：在三维空间中根节点是 x 轴垂直分割面，其子节点皆为 y 轴垂直分割面，其孙节点皆为 z 轴垂直分割面，其曾孙节点则皆为 x 轴垂直分割面，依此类推。）
  - 点由垂直分割面之軸座標的[中位数区分并放入子树](https://zh.wikipedia.org/wiki/中位数 "wikilink")

這個方法產生一個平衡的*k*-d樹。每個葉節點的高度都十分接近。然而，平衡的樹不一定對每個應用都是最佳的。

**`function`**` kdtree (`*`list``   ``of``   ``points`*` pointList, `*`int`*` depth)`
`{`
`    `*`//``   ``Select``   ``axis``   ``based``   ``on``   ``depth``   ``so``   ``that``   ``axis``   ``cycles``   ``through``   ``all``   ``valid``   ``values`*
`    `**`var`**` `*`int`*` axis := depth `**`mod`**` k;`
`        `
`    `*`//``   ``Sort``   ``point``   ``list``   ``and``   ``choose``   ``median``   ``as``   ``pivot``   ``element`*
`    `**[`select`](https://zh.wikipedia.org/wiki/Selection_algorithm "wikilink")**` median `**`by`**` axis `**`from`**` pointList;`
`        `
`    `*`//``   ``Create``   ``node``   ``and``   ``construct``   ``subtrees`*
`    `**`var`**` `*`tree_node`*` node;`
`    node.location := median;`
`    node.leftChild := kdtree(points `**`in`**` pointList `**`before`**` median, depth+1);`
`    node.rightChild := kdtree(points `**`in`**` pointList `**`after`**` median, depth+1);`
`    `**`return`**` node;`
`}`

### 插入元素

### 移除元素

### 平衡

在动态插入删除点且不允许预处理插入操作的情况下，一种平衡的方法是使用类似[替罪羊树](../Page/替罪羊树.md "wikilink")的方法重构整棵树。

### [最鄰近搜索](https://zh.wikipedia.org/wiki/最鄰近搜索 "wikilink")

最鄰近搜索用來找出在樹中與輸入點最接近的點。

**k**-d樹最鄰近搜索的過程如下：

1.  從根節點開始，遞迴的往下移。往左還是往右的決定方法與插入元素的方法一樣(如果输入点在分区面的左邊則進入左子節點，在右邊則進入右子節點)。
2.  一旦移動到葉節點，將該節點當作"目前最佳點"。
3.  解開遞迴，並對每個經過的節點執行下列步驟：
    1.  如果目前所在點比目前最佳點更靠近輸入點，則將其變為目前最佳點。
    2.  檢查另一邊子樹有沒有更近的點，如果有則從該節點往下找
4.  當根節點搜尋完畢後完成最鄰近搜尋



### 处理高维数据

[:维数灾难让大部分的搜索算法在高纬情况下都显得花哨且不实用](https://zh.wikipedia.org/wiki/:维数灾难 "wikilink")。 同样的，在高维空间中，k-d树叶并不能做很高效的最邻近搜索。一般的准则是：在k维情况下，数据点数目N应当远远大于\(2^k\)时，k-d树的最邻近搜索才可以很好的发挥其作用。不然的话，大部分的点都会被查询，最终算法效率也不会比全体查询一遍要好到哪里去。另外，如果只是需要一个足够快，且不必最优的结果，那么可以考虑使用近似邻近查询的方法。

## 外部链接

  - [libkdtree++](https://web.archive.org/web/20170617153811/http://libkdtree.alioth.debian.org/), an open-source STL-like implementation of *k*-d trees in C++.
  - [A tutorial on KD Trees](https://web.archive.org/web/20110716085331/http://www.autonlab.org/autonweb/14665/version/2/part/5/data/moore-tutorial.pdf?branch=main&language=en)
  - [A C++ implementation of *k*-d trees for 3D point clouds](https://web.archive.org/web/20100621171539/http://babel.isa.uma.es/mrpt/index.php/The_hierarchical_model_of_metric_maps#Point_maps), part of the [Mobile Robot Programming Toolkit (MRPT)](https://zh.wikipedia.org/wiki/Mobile_Robot_Programming_Toolkit "wikilink")
  - [kdtree](http://code.google.com/p/kdtree/) A simple C library for working with KD-Trees
  - [K-D Tree Demo, Java applet](http://donar.umiacs.umd.edu/quadtree/points/kdtree.html)
  - [libANN](http://www.cs.umd.edu/~mount/ANN/) Approximate Nearest Neighbour Library includes a *k*-d tree implementation
  - [Caltech Large Scale Image Search Toolbox](https://web.archive.org/web/20101203074412/http://www.vision.caltech.edu/malaa/software/research/image-search/): a Matlab toolbox implementing randomized *k*-d tree for fast approximate nearest neighbour search, in addition to [LSH](https://zh.wikipedia.org/wiki/Locality_sensitive_hashing "wikilink"), Hierarchical K-Means, and [Inverted File](https://zh.wikipedia.org/wiki/Inverted_file "wikilink") search algorithms.

[Category:数据结构](https://zh.wikipedia.org/wiki/Category:数据结构 "wikilink") [Category:树结构](https://zh.wikipedia.org/wiki/Category:树结构 "wikilink")