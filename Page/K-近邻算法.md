> 本文内容由[K-近邻算法](https://zh.wikipedia.org/wiki/K-近邻算法)转换而来。


在[模式识别](../Page/模式识别.md "wikilink")领域中，**最近鄰居法**（**KNN**算法，又譯**K-近邻算法**）是一种用于[分类和](https://zh.wikipedia.org/wiki/分类问题 "wikilink")[回归的](../Page/迴歸分析.md "wikilink")[無母數統計](../Page/無母數統計.md "wikilink")方法\[1\]。在这两种情况下，输入包含（Feature Space）中的***k***个最接近的训练样本。

:\* 在*k-NN分类*中，输出是一个分类族群。一个对象的分类是由其邻居的“多数表决”确定的，*k*个最近邻居（*k*为正[整数](../Page/整数.md "wikilink")，通常较小）中最常见的分类决定了赋予该对象的类别。若*k* = 1，则该对象的类别直接由最近的一个节点赋予。

:\* 在*k-NN回归*中，输出是该对象的属性值。该值是其*k*个最近邻居的值的平均值。

最近鄰居法採用向量空間模型來分類，概念為相同類別的案例，彼此的相似度高，而可以藉由計算與已知類別案例之相似度，來評估未知類別案例可能的分類。

K-NN是一种，或者是局部近似和将所有计算推迟到分类之后的。k-近邻算法是所有的[机器学习](../Page/机器学习.md "wikilink")算法中最简单的之一。

无论是分类还是回归，衡量邻居的权重都非常有用，使较近邻居的权重比较远邻居的权重大。例如，一种常见的加权方案是给每个邻居权重赋值为1/ d，其中d是到邻居的距离。

邻居都取自一组已经正确分类（在回归的情况下，指属性值正确）的对象。虽然没要求明确的训练步骤，但这也可以当作是此算法的一个训练样本集。

k-近邻算法的缺点是对数据的局部结构非常敏感。本算法与[K-平均算法](../Page/K-平均算法.md "wikilink")（另一流行的机器学习技术）没有任何关系，请勿与之混淆。

## 算法

[KnnClassification.svg](https://zh.wikipedia.org/wiki/File:KnnClassification.svg "fig:KnnClassification.svg")

训练样本是多维特征空间向量，其中每个训练样本带有一个类别标签。算法的训练阶段只包含存储的[特征向量和训练样本的标签](https://zh.wikipedia.org/wiki/特征向量 "wikilink")。

在分类阶段，*k*是一个用户定义的常数。一个没有类别标签的向量（查询或测试点）将被归类为最接近该点的*k*个样本点中最频繁使用的一类。

一般情况下，将[欧氏距离作为距离度量](https://zh.wikipedia.org/wiki/欧氏距离 "wikilink")，但是这是只适用于[连续变量](https://zh.wikipedia.org/wiki/概率分布#连续分布 "wikilink")。在文本分类这种离散变量情况下，另一个度量——**重叠度量**（或[海明距离](https://zh.wikipedia.org/wiki/海明距离 "wikilink")）可以用来作为度量。例如对于基因表达微阵列数据，*k*-NN也与Pearson和Spearman相关系数结合起来使用。\[2\]通常情况下，如果运用一些特殊的算法来计算度量的话，*k*近邻分类精度可显著提高，如运用[大间隔最近邻居](../Page/大间隔最近邻居.md "wikilink")或者[邻里成分分析](../Page/邻里成分分析.md "wikilink")法。

“多数表决”分类会在类别分布偏斜时出现缺陷。也就是说，出现频率较多的样本将会主导测试点的预测结果，因为他们比较大可能出现在测试点的K邻域而测试点的属性又是通过*k*邻域内的样本计算出来的。\[3\]解决这个缺点的方法之一是在进行分类时将样本到*k*个近邻点的距离考虑进去。*k*近邻点中每一个的分类（对于回归问题来说，是数值）都乘以与测试点之间距离的成反比的权重。另一种克服偏斜的方式是通过数据表示形式的抽象。例如，在[自组织映射](../Page/自组织映射.md "wikilink")（SOM）中，每个节点是相似的点的一个集群的代表（中心），而与它们在原始训练数据的密度无关。*K*-NN可以应用到SOM中。

## 参数选择

如何选择一个最佳的K值取决于数据。一般情况下，在分类时较大的K值能够减小噪声的影响，\[4\] 但会使类别之间的界限变得模糊。一个较好的K值能通过各种启发式技术（见）来获取。

噪声和非相关性特征的存在，或特徵尺度与它们的重要性不一致会使K近邻算法的准确性严重降低。对于选取和缩放特征来改善分类已经作了很多研究。一个普遍的做法是利用[进化算法优化功能扩展](https://zh.wikipedia.org/wiki/进化算法 "wikilink")\[5\]，还有一种较普遍的方法是利用训练样本的[互信息](../Page/互信息.md "wikilink")进行选择特征。

在二元（两类）分类问题中，选取*k*为奇数有助于避免两个分类平票的情形。在此问题下，选取最佳经验*k*值的方法是[自助法](https://zh.wikipedia.org/wiki/自助法 "wikilink")。\[6\]

## 加权最近邻分类器

\- 最近邻分类器可以被视为为最近邻居分配权重\(1 / k\)以及为所有其他邻居分配权重。这可以推广到加权最近邻分类器。也就是说，第近的邻居被赋予权重\(w_{ni}\)，其中\(\sum_{i = 1}^n w_{ni}= 1\)。关于加权最近邻分类器的强一致性的类似结果也成立。\[7\]

设\(C ^{wnn}_n\)表示权重为\(\{w_{ni}\}_{i = 1}^n\)的加权最近邻分类器。根据类别分布的规律性条件，超额风险具有以下渐近展开\[8\]

\[\mathcal{R}_\mathcal{R}(C^{wnn}_{n}) - \mathcal{R}_{\mathcal{R}}(C^{Bayes}) = \left(B_1 s_n^2 + B_2 t_n^2\right) \{1+o(1)\},\] 对常数 \(B_1\) and \(B_2\) 当 \(s_n^2 = \sum_{i=1}^n w_{ni}^2\) 并且 \(t_n = n^{-2/d}\sum_{i=1}^n w_{ni}\{i^{1+2/d} - (i-1)^{1+2/d}\}\)。

最佳加权方案\(\{w_{ni}^* \}_{i = 1}^n\)用于平衡上面显示中的两个项，如下所示：令 \(k ^* = \lfloor B n ^{\frac 4 {d + 4}}\rfloor\)，

\[w_{ni}^*  = \frac 1 {k^*} \left[1 + \frac d 2 - \frac d {2{k^*}^{2/d}} \{ i ^{1+2/d} - (i-1)^{1+2/d}\}\right]\] 对 \(i=1,2,\dots,k^*\) 并且

\[w^*_{ni} = 0\] 对 \(i = k^*+1,\dots,n\).

利用最优权重，超额风险的渐近展开中的主项是\(\mathcal{O}(n^{-\frac 4 {d+4}})\)。当使用时，类似的结果也是如此。

## 属性

原始朴素的算法通过计算测试点到存储样本点的距离是比较容易实现的，但它属于计算密集型的，特别是当训练样本集变大时，计算量也会跟着增大。多年来，许多用来减少不必要距离评价的近邻搜索算法已经被提出来。使用一种合适的近邻搜索算法能使K近邻算法的计算变得简单许多。

近邻算法具有较强的一致性结果。随着数据趋于无限，算法保证错误率不会超过贝叶斯算法错误率的两倍\[9\]。对于一些K值，K近邻保证错误率不会超过贝叶斯的。

## 决策边界

近邻算法能用一种有效的方式隐含的计算[决策边界](https://zh.wikipedia.org/wiki/决策边界 "wikilink")。另外，它也可以显式的计算决策边界，以及有效率的这样做计算，使得计算复杂度是边界复杂度的函数。\[10\]

## 连续变量估计

K近邻算法也适用于连续变量估计，比如适用反距离加权平均多个K近邻点确定测试点的值。该算法的功能有：

1.  从目标区域抽样计算欧式或马氏距离；
2.  在交叉验证后的RMSE基础上选择启发式最优的K邻域；
3.  计算多元k-最近邻居的距离倒数加权平均。

## 發展

然而k最近鄰居法因為計算量相當的大，所以相當的耗時，Ko與Seo提出一演算法**TCFP**（**t**ext **c**ategorization using **f**eature **p**rojection），嘗試利用來降低與分類無關的特徵對於系統的影響，並藉此提昇系統效能，其實驗結果顯示其分類效果與k最近鄰居法相近，但其運算所需時間僅需k最近鄰居法運算時間的五十分之一。

除了針對文件分類的效率，尚有研究針對如何促進*k*最近鄰居法在文件分類方面的效果，如Han等人於2002年嘗試利用[貪心法](https://zh.wikipedia.org/wiki/貪心法 "wikilink")，針對文件分類實做可調整權重的k最近鄰居法**WAkNN**（**w**eighted **a**djusted **k** **n**earest **n**eighbor），以促進分類效果；而Li等人於2004年提出由於不同分類的文件本身有數量上有差異，因此也應該依照訓練集合中各種分類的文件數量，選取不同數目的最近鄰居，來參與分類。

## 参见

  - [最邻近搜索](../Page/最邻近搜索.md "wikilink")
  - [聚类分析](../Page/聚类分析.md "wikilink")
  - [数据挖掘](../Page/数据挖掘.md "wikilink")
  - [机器学习](../Page/机器学习.md "wikilink")
  - [模式识别](../Page/模式识别.md "wikilink")
  - [预测分析](https://zh.wikipedia.org/wiki/预测分析 "wikilink")
  - [维数灾难](../Page/维数灾难.md "wikilink")
  - [主成分分析](../Page/主成分分析.md "wikilink")
  - [最小哈希](../Page/最小哈希.md "wikilink")

## 注释

## 參考文獻

## 拓展阅读

  - [When Is "Nearest Neighbor" Meaningful?](http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.31.1422)

  -
  -
  -
  - Fast k nearest neighbor search using [GPU](https://zh.wikipedia.org/wiki/GPU "wikilink"). In Proceedings of the CVPR Workshop on Computer Vision on GPU, Anchorage, Alaska, USA, June 2008. V. Garcia and E. Debreuve and M. Barlaud.

  - [Scholarpedia article on *k*-NN](http://www.scholarpedia.org/article/K-nearest_neighbor)

  - [google-all-pairs-similarity-search](https://code.google.com/p/google-all-pairs-similarity-search/)

[Category:分類演算法](https://zh.wikipedia.org/wiki/Category:分類演算法 "wikilink") [Category:搜尋演算法](https://zh.wikipedia.org/wiki/Category:搜尋演算法 "wikilink") [Category:機器學習演算法](https://zh.wikipedia.org/wiki/Category:機器學習演算法 "wikilink") [Category:人工智能](https://zh.wikipedia.org/wiki/Category:人工智能 "wikilink")

1.
2.
3.
4.  Everitt, B. S., Landau, S., Leese, M. and Stahl, D.（2011）Miscellaneous Clustering Methods, in Cluster Analysis, 5th Edition, John Wiley & Sons, Ltd, Chichester, UK.
5.  Nigsch F, Bender A, van Buuren B, Tissen J, Nigsch E, Mitchell JB (2006). "Melting point prediction employing k-nearest neighbor algorithms and genetic parameter optimization". Journal of Chemical Information and Modeling 46 (6): 2412–2422. <doi:10.1021/ci060149f>. PMID 17125183.
6.
7.
8.
9.  Cover TM, Hart PE (1967). "Nearest neighbor pattern classification". IEEE Transactions on Information Theory 13 (1): 21–27. <doi:10.1109/TIT.1967.1053964>.
10. Bremner D, Demaine E, Erickson J, Iacono J, Langerman S, Morin P, Toussaint G (2005). "Output-sensitive algorithms for computing nearest-neighbor decision boundaries". Discrete and Computational Geometry 33 (4): 593–604. <doi:10.1007/s00454-004-1152-0>