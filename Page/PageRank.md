<div align=right>

[WikiPR.PNG](https://zh.wikipedia.org/wiki/File:WikiPR.PNG "fig:WikiPR.PNG")

</div>

**佩奇排名**（），又称**网页排名**、**谷歌左侧排名**、**PR**，是[Google公司所使用的对其搜索引擎搜索结果中的网页进行排名的一种算法](../Page/Google.md "wikilink")。

佩奇排名本质上是一种以网页之间的超链接个数和质量作为主要因素粗略地分析网页的重要性的算法。其基本假设是：更重要的页面往往更多地被其他页面引用（或称其他页面中会更多地加入通向该页面的超链接）\[1\]。
其将从A页面到B页面的链接解释为“A页面给B页面投票”，并根据投票来源（甚至来源的来源，即链接到A页面的页面）和投票对象的等级来决定被投票页面的等级。简单的说，一个高等级的页面可以提升其他低等级的页面。

该算法以谷歌公司创始人之一的[拉里·佩奇](../Page/拉里·佩奇.md "wikilink")（）的名字來命名。\[2\]谷歌搜索引擎用它来分析网页的相关性和重要性，在[搜索引擎优化中經常被用來作为評估網頁优化的成效因素之一](https://zh.wikipedia.org/wiki/搜索引擎优化 "wikilink")。

目前，佩奇排名算法不再是谷歌公司用来给网页进行排名的唯一算法，但它是最早的，也是最著名的算法。\[3\]\[4\]

## 概述

[PageRank-hi-res.png](https://zh.wikipedia.org/wiki/File:PageRank-hi-res.png "fig:PageRank-hi-res.png")

PageRank是一种链接分析算法，它通过对超链接集合中的元素用数字进行权重赋值，实现“衡量集合范围内某一元素的相关重要性”的目的。该算法可以应用于任何**含有元素之间相互引用的情况**的集合实体。我们将其中任意元素E的权重数值称为“E的PageRank”（The
PageRank of E），用符号表示为 \(PR(E)\)。其他的因素，类似“作者排名（Author
Rank）”同样可以影响到该元素的权重值。

PageRank的结果来源于一种基于图论的数学算法。它将万维网上所有的网页视作节点（node），而将超链接视作边（edge），并且考虑到了一些权威的网站，类似CNN。每个节点的权重值表示对应的页面的重要度。通向该网页的超链接称做“对该网页的投票（a
vote of
support）”。每个网页的权重值大小被递归地定义，依托于所有链接该页面的页面的权重值。例如，一个被很多页面的链接的页面将会拥有较高的权重值（high
PageRank）。

大量关于PageRank的学术论文在Page和Brin的原版论文前就已有之。\[5\]在实际情况中，PageRank很容易被利用。相关的研究往往会关注那些因受到影响而出现错误的PageRank结果，以找到一种有效地避免其被错误地影响的方法（如忽略部分错误的链接）。\[6\]
2005年初，谷歌公司为网页链接推出一项新属性[nofollow](https://zh.wikipedia.org/wiki/nofollow "wikilink")，使得网站管理员和博客作者可以创建一些不計票的链接，也就是說这些链接不算作「投票」，从而实现抵制垃圾投票的目的。

Google工具条上的PageRank指標从0到10。它似乎是一个对数标度算法，细节未知。雖然**PageRank**是谷歌的商标，其技术亦已经申请专利，但是專利權屬於[斯坦福大學](https://zh.wikipedia.org/wiki/斯坦福大學 "wikilink")，而非谷歌公司。

PageRank算法中的点击算法是由[乔恩·克莱因伯格](../Page/乔恩·克莱因伯格.md "wikilink")(Jon
Kleinberg)提出的。而其他的基于链接的网页排名算法，则包括[乔恩·克莱因伯格发明的HITS算法](../Page/乔恩·克莱因伯格.md "wikilink")，IBM
CLEVER Project，TrustRank算法以及hummingbird算法等等。

## 算法

PageRank算法通过输出[概率分布来体现某人随机地点击某个链接的概率](../Page/概率分布.md "wikilink")。PageRank值（PR）可以在任何规模的文件（document）集合中计算得出，而每个链接都指向该集合中的某个特定文件。相关研究论文指出，在初次计算前，总概率将被均分到每个文件上，使得集合中的每个文件被访问的概率都是相同的。接下来在重复多次的计算（又称为“迭代”）中，算法将根据集合的实际情况不断调整PR值，使得其越来越接近最真实的理论值。

最终的概率将通过一个在0与1之间的数值体现。概率为0.5通常意味着该事件有50%的可能性发生。因此，“PR=0.5”代表“有50%的可能性，某人点击了一个随机的链接并访问了该链接指向的文件”。

### 简化版本

假设一个由4个網頁组成的集合：**A**，**B**，**C**和**D**。同一页面中多个指向相同的链接视为同一个链接，并且每个页面初始的PageRank值相同，最初的算法将每个网页的初始值设定为1。但是在后来的版本以及下面的示例中，为了满足概率值位于0到1之间的需要，我们假设这个值是0.25。

在每次迭代中，给定页面的**PR值**（PageRank值）将均分到该页面所链接的页面上。

如果所有页面都只链接至**A**，那么**A**的PR值将是**B**，**C**及**D**的PR值之和，即：

\[PR(A)= PR(B) + PR(C) + PR(D)\]

重新假设**B**链接到**A**和**C**，**C**链接到**A**，并且**D**链接到**A**,**B**,**C**。最初一個頁面總共只有一票。所以**B**给**A**
,**C**每个页面半票。以此类推，**D**投出的票-{只}-有三分之一加到了**A**的PR值上：

\[PR(A)= \frac{PR(B)}{2}+ \frac{PR(C)}{1}+ \frac{PR(D)}{3}\]

换句话说，算法将根据每个页面連出总数 \(L(x)\)平分该页面的PR值，并将其加到其所指向的页面：

\[PR(A)= \frac{PR(B)}{L(B)}+ \frac{PR(C)}{L(C)}+ \frac{PR(D)}{L(D)}\]

最后，所有这些PR值被换算成百分比形式再乘上一个修正系数
\(d\)。由于“没有向外链接的网页”传递出去的PR值会是0，而这会递归地导致指向它的页面的PR值的计算结果同样为零，所以赋给每个页面一个最小值\((1 - d)/N\)：

\[PR(A)=\left( \frac{PR(B)}{L(B)}+ \frac{PR(C)}{L(C)}+ \frac{PR(D)}{L(D)}+\,\cdots \right) d + \frac{1 - d}{N}\]

  - 需要注意的是，在Sergey Brin和Lawrence
    Page的1998年原版论文中给每一个页面设定的最小值是\(1 - d\)，而不是这里的\((1 - d)/N\)，这将导致集合中所有网页的PR值之和为N（N为集合中网页的数目）而非所期待的1。

因此，一个页面的PR值直接取决于指向它的的页面。如果在最初给每个網頁一个随机且非零的PR值，经过重复计算，这些页面的PR值会趋向于某个定值，也就是处于收斂的狀態，即最终结果。这就是搜索-{引擎}-使用该算法的原因。

### 完整版本

这个方程式引入了**随机浏览者**（random
surfer）的概念，即假设某人在浏览器中随机打开某些页面并点击了某些链接。为了便于理解，这里假设上网者不断点击网页上的链接直到进入一个没有外部链接的网页，此时他会随机浏览其他的网页（可以与之前的网页无关）。

为了处理那些“没有外部链接的页面”（这些页面就像“黑洞”一样吞噬掉用户继续向下浏览的概率）所带来的问题，我们假设：这类页面链接到集合中所有的网页（不管它们是否相关），使得这类网页的PR值将被所有网页均分。对于这种残差概率（residual
probability），我们引入阻尼系数 \(d\)（damping factor），并声明
\(d=0.85\)，其意义是：任意时刻，用户访问到某页面后继续访问下一个页面的概率，相对应的
\(1-d=0.15\) 则是用户停止点击，随机浏览新网页的概率。\(d\) 的大小由一般上网者使用浏览器书签功能的频率的平均值估算得到。

所以，对于某个页面i，其对应PR值大小的计算公式如下：

\[{\rm PR}(p_i) = \frac{1-d}{N} + d \sum_{p_j \in M(p_i)} \frac{{\rm PR} (p_j)}{L(p_j)}\]

  - 这里，\(p_1, p_2, ..., p_N\)是目标页面\(p_i\)，\(M(p_i)\)是链入\(p_i\)页面的集合，\(L(p_j)\)是页面\(p_j\)链出页面的数量，而\(N\)是集合中所有页面的数量。

集合中所有页面的PR值可以由一个特殊的邻接矩阵的特征向量表示。这个特征向量R为：

\[\mathbf{R} =
\begin{bmatrix}
{\rm PR}(p_1) \\
{\rm PR}(p_2) \\
\vdots \\
{\rm PR}(p_N)
\end{bmatrix}\]

同时，R也是下面的方程组的解：

\[\mathbf{R} =

\begin{bmatrix}
{(1-d) / N} \\
{(1-d) / N} \\
\vdots \\
{(1-d) / N}
\end{bmatrix}

+ d

\begin{bmatrix}
\ell(p_1,p_1) & \ell(p_1,p_2) & \cdots & \ell(p_1,p_N) \\
\ell(p_2,p_1) & \ddots & & \\
\vdots & & \ell(p_i,p_j) & \\
\ell(p_N,p_1) & & & \ell(p_N,p_N)
\end{bmatrix}

\mathbf{R}\]

  - 这里的邻接函数（adjacency function） \(\ell(p_i,p_j)\)
    代表“从页面j指向页面i的链接数”与“页面j中含有的外部链接总数”的比值

如果\(p_j\)不链向\(p_i\)，则前面提到的“从页面j指向页面i的链接数”为零。将情况一般化：对于特定的j，应有：

\[\sum_{i = 1}^N \ell(p_i,p_j) = 1,\]

由于上述修改后的邻接矩阵的巨大的eigengap值，几次迭代后即可在极高的精确度下估计PageRank特征向量R的值。

## 缺陷

PageRank算法的主要缺點在于旧的页面的排名往往会比新页面高。因为即使是质量很高的新页面也往往不会有很多外链，除非它是某个已经存在站点的子站点。这也是PageRank需要多项算法结合以保证其结果的准确性的原因。例如，PageRank似乎偏好于维基百科页面，在条目名称的搜索结果中，维基百科页面经常在大多数页面甚至所有页面之前，此现象的原因则是维基百科内部网页中存在大量的内链，同时亦有很多站点链入维基百科。

Google经常处罚恶意提高网页PageRank的行为。至于其如何区分正常的链接和不正常的链接，这仍然是[商业机密](https://zh.wikipedia.org/wiki/商业机密 "wikilink")。但是在Google的链接规范中已清楚地说明，哪些是属于违反规范的行為。\[7\]

## 从谷歌工具栏中移除

2009年10月14日，Google員工蘇珊·莫斯科（Susan
Moskwa）確認該公司已将PageRank从其網站管理員工具中移除。她表示：「我们長久以來一直在告诫人們不应该过分注重PageRank；很多網站站长似乎认为PageRank是他們需要时刻关注的最重要的指标，而这几乎是错误的。」\[8\]然而在蘇珊確認後兩天，PageRank又在谷歌工具欄（Google
Toolbar）上重新顯示，但其指示器（indicator）在谷歌公司自家的[Chrome浏览器上已不可用](https://zh.wikipedia.org/wiki/Chrome浏览器 "wikilink")。

同时，公众可见的PageRank的数据更新周期也越来越长，它的最后一次更新是2013年11月份。

2014年10月7日，谷歌員工John Mueller表示
：「我們可能不會繼續更新PageRank，至少工具栏上的PageRank是這樣。」\[9\]

2016年4月15日，谷歌公司停止向公众开放PageRank数据。就在几个月前，谷歌也声明将会将PageRank评分自谷歌工具栏中移除。\[10\]
但是，今后谷歌公司在对其搜索引擎的搜索结果进行排名时，仍然会使用PageRank中的数据。\[11\]

## 脚注

## 参考文献

## 外部連結

  - [Our Search: Google Technology](http://www.google.com/technology/)
    by Google
  - [The PageRank Citation Ranking: Bringing Order to the
    Web](https://web.archive.org/web/20091118014915/http://ilpubs.stanford.edu:8090/422/)
    by [Larry Page](https://zh.wikipedia.org/wiki/Larry_Page "wikilink")
    *et al.*
  - [The PageRank
    Result](https://web.archive.org/web/20150302083435/http://google-pagerank.info/)


## 参见

  - [Google](../Page/Google.md "wikilink")
  - [Google炸彈](https://zh.wikipedia.org/wiki/Google炸彈 "wikilink")
  - [SimRank](../Page/SimRank.md "wikilink")

{{-}}

[Category:Google搜尋](https://zh.wikipedia.org/wiki/Category:Google搜尋 "wikilink")
[Category:马尔可夫模型](https://zh.wikipedia.org/wiki/Category:马尔可夫模型 "wikilink")

1.
2.
3.
4.
5.
6.  .
7.
8.
9.
10.
11.