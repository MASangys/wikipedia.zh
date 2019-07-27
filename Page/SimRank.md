SimRank
是一种基于图的[拓扑结构信息来衡量任意两个对象间相似程度的模型](https://zh.wikipedia.org/wiki/拓扑结构 "wikilink")，该模型由
MIT 实验室的 Glen Jeh 和 Jennifer
Widom教授在2002年首先提出\[1\]。SimRank相似度的核心思想为：如果两个对象和被其相似的对象所引用（即它们有相似的入邻边结构），那么这两个对象也相似。近年来已在信息检索领域引起广泛关注，成功应用于网页排名、协同过滤、孤立点检测、网络图聚类、近似查询处理等。

## 介绍

结构相似度（Structural
Similarity）是一种通过网络图的拓扑结构信息（如网页链接关系）来衡量对象间相似程度的普适模型，它在信息检索领域里已有广泛的应用，如搜索引擎优化、协同过滤推荐、文档聚合分类等。2002
年，MIT 实验室的Glen Jeh和Jennifer
Widom教授提出了一种全新的基于网页链接结构的模型来评估网络图中任意两个对象（结点）之间相似度，即
SimRank 模型\[2\].

SimRank
模型定义两个页面的相似度是基于如下递归的思想：如果指向结点\(a\)和指向结点\(b\)的结点相似，那么\(a\)和\(b\)也认为是相似的。这个递归定义的初始条件是：每个结点与它自身最相似。如果用记号\(\mathcal{I}(a)\)表示所有指向结点\(a\)的结点集合（即入邻点集合），用\(s(a,b)\)表示两个对象间的SimRank相似度，则SimRank的数学定义式可以表示如下：

(1) 当\(a = b\)时，\(s(a, b)=1\).

(2)
当\(\mathcal{I}(a) = \emptyset\)或者\(\mathcal{I}(b) = \emptyset\)时，\(s(a, b)=0\).

(3) 其他情况下，

\[s(a, b) = \frac{C}{\left|\mathcal{I}(a)\right| \left|\mathcal{I}(b)\right|}
 \sum_{i=1}^{\left|\mathcal{I}(a)\right|}\sum_{j=1}^{\left|\mathcal{I}(b)\right|}
 s(\mathcal{I}_i(a), \mathcal{I}_j(b))\] 其中，\(0<C<1\)是一个阻尼系数.

与传统的文本相似度（Textual Similarity）相比，SimRank
相似度的计算完全基于网络图的拓扑结构，其递归的定义方式能使SimRank相似度的值捕捉到图结构的整体信息。此外，SimRank
相似度能比较任意两个结点间的相似度问题，相比之下Google
[PageRank](../Page/PageRank.md "wikilink")只能衡量每个结点的重要性。

## 矩阵形式

假设
\(\mathbf{S}\)为SimRank相似度矩阵，其元素\([\mathbf{S}]_{a,b}\)表示相似度值\(s(a,b)\).
\(\mathbf{W}\)是一个按列归一化的图邻接矩阵，其元素\([\mathbf{W}]_{a,b}=\tfrac{1}{|\mathcal{I}(b)|}\)，若存在一条有向边\(a \to b\)；否则为\(0\).
于是，SimRank方程式可以用矩阵的形式表示如下：

\[{{\mathbf{S}}}= C\cdot (\mathbf{W}^{T} \cdot {{\mathbf{S}}}\cdot {{\mathbf{W}}} ) + (1-C) \cdot {{\mathbf{I}}},\]

其中，\(\mathbf{I}\)是一个单位矩阵.

## SimRank计算

由于 SimRank
相似度是\(s(a,b)\)是通过递归定义的，因此可能依赖于图中其他结点对的相似度，这给计算网络图中结点间的相似度值带来很大的困难，尤其当整个图的结点数很多点，SimRank具有很高的时间复杂度。现有的
SimRank 相似度计算方法主要分两大类：

（1）SimRank 确定性计算

这类方法主要基于不动点迭代来求解 SimRank
的值，其优点是计算精度较高，但时间复杂度相当大。对于一个网络图\(G=(V,E)\)来说，传统的直接迭代法\[3\]计算所有结点对的相似度需要\(O(K{|E|}^2)\)的时间复杂度和\(O({|V|}^2)\)的内存，其中\(K\)为总的迭代次数。文献\[4\]和\[5\]是当前计算所有结点对SimRank相似度的最有效算法。

（2）SimRank 随机算法\[6\]

该方法主要基于[蒙特卡罗法模拟](https://zh.wikipedia.org/wiki/蒙特卡罗法 "wikilink")，将两结点间
SimRank
的相似度\(s(a,b)\)表示为两个随机游走者分别从结点\(a\)和\(b\)出发到最后相遇的总时间\(\tau(a,b)\)的期望函数，即

\[{s(a,b)}= \mathbb{E} (C^{\tau(a,b)})\]

这种方法计算每一个结点对的时间和内存复杂度均为\(O(|V|)\)，但带有一定的随机性，因此精度较低。

## 其他相关

  - [PageRank](../Page/PageRank.md "wikilink")

## 参考文献

[Category:信息检索](https://zh.wikipedia.org/wiki/Category:信息检索 "wikilink")

1.  G. Jeh and J. Widom. SimRank: a measure of structural-context
    similarity. In
    [KDD'02](https://zh.wikipedia.org/wiki/SIGKDD "wikilink"):
    Proceedings of the eighth ACM SIGKDD international conference on
    Knowledge discovery and data mining, pages 538-543. [ACM
    Press](https://zh.wikipedia.org/wiki/Association_for_Computing_Machinery "wikilink"),
    2002.

2.
3.
4.  D. Lizorkin, P. Velikhov, M. Grinev and D. Turdakov. Accuracy
    Estimate and Optimization Techniques for SimRank Computation. In
    [VLDB
    '08](https://zh.wikipedia.org/wiki/Very_large_database "wikilink"):
    Proceedings of the 34th International Conference on Very Large Data
    Bases, pages 422--433.

5.  W. Yu, X. Lin, W. Zhang. Towards Efficient SimRank Computation on
    Large Networks. In [ICDE
    '13](https://zh.wikipedia.org/wiki/International_Conference_on_Data_Engineering "wikilink"):
    Proceedings of the 29th IEEE International Conference on Data
    Engineering, pages 601--612.

6.  D. Fogaras and B. Racz. Scaling link-based similarity search. In
    [WWW
    '05](https://zh.wikipedia.org/wiki/World_Wide_Web_Conference "wikilink"):
    Proceedings of the 14th international conference on World Wide Web,
    pages 641--650, New York, NY, USA, 2005.
    [ACM](https://zh.wikipedia.org/wiki/Association_for_Computing_Machinery "wikilink").
    [1](http://www2005.org/docs/p641.pdf)