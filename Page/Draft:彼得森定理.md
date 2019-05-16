[缩略图](https://zh.wikipedia.org/wiki/File:Petersen-graph-factors.svg "fig:缩略图")中的
[完美的匹配](../Page/匹配_\(图论\).md "wikilink") (红边)。 因为彼得森图是
[无桥的](../Page/桥_\(图论\).md "wikilink")，它满足彼得森定理的条件。\]\]
[缩略图](https://zh.wikipedia.org/wiki/File:Sylvester_counter.svg "fig:缩略图")
在[图论的](../Page/图论.md "wikilink")[数学学科中](../Page/数学.md "wikilink")，以[朱利叶斯·彼得森](https://zh.wikipedia.org/wiki/朱利叶斯·佩特森 "wikilink")
（英文：Julius Petersen）命名的**彼得森定理（Petersen's theorem）**是图论中最早的结果之一，可以表述如下:

> '''彼得森定理： '''
> 每个立方、[无桥的图包含一个](../Page/桥_\(图论\).md "wikilink")[完美的匹配](../Page/匹配_\(图论\).md "wikilink")。

换句话说，如果一个图在每个顶点都有三条边，并且每条边都属于一个环，则它就有一组边恰好接触每个顶点一次。

## 证明

我们将证明，对于每个立方无桥图  (*V*, *E*)}} ，对于每一组 ，由具有奇数个顶点的 诱导
的图中的[连通分量的数量至多是](../Page/连通图.md "wikilink")
的基数。 然后通过
[图特（Tutte）的定理](https://zh.wikipedia.org/wiki/图特定理 "wikilink")
 包含一个完美的匹配。

设 为一个由顶点集诱导的图中具有奇数个顶点的分量。设 为 所有的顶点，设  为的边数，其中一个顶点在 中，一个顶点在中。通过简单的重复计算论点，

  -
    \(\sum\nolimits_{v\in V_i} \deg_G(v) = 2|E_i| + m_i ,\)

其中  是 中具有两个顶点的 的边集。因为

  -
    \(\sum\nolimits_{v \in V_i} \deg_G(v)= 3 |V_i|\)

是奇数和  是偶数，因此  必须是奇数。 此外，由于  是无桥所以 。

设 为图中一个顶点在
中，一个顶点在中的中的边数。每个顶点数为奇数的分量对贡献至少3条边。这些边是唯一的。因此，这种的分量的数量至多是。在最坏的情况下，每条顶点在
中的边贡献给，因此 。所以

\[|U|\geq\frac{1}{3}m\geq o(V-U) ,\]

是具有奇数个顶点的组件的数量。这满足图特定理的条件，所以证明是完整了。

## 历史

定理归功于丹麦数学家[朱利叶斯·彼得森](https://zh.wikipedia.org/wiki/朱利叶斯·佩特森 "wikilink")，可以被认为是[图论中最早的结果之一](../Page/图论.md "wikilink")。这个定理首先出现在1891年的文章《正则图的理论》中（"*Die
Theorie der regulären graphs*"）。\[1\]
按照今天的标准，彼得森对定理的证明是复杂的。对证明的一系列简化最终导致弗林克
 和柯尼希 的证明。

在现代教科书中，彼得森定理被认为是图特定理的应用。

## 应用程序

  - 在具有完美匹配的立方图中，不完全匹配的边形成（2-factor）。通过定向2因子，完美匹配的边缘可以延伸到长度为3的
    [道路](../Page/道路_\(图论\).md "wikilink")，例如通过采用向外定向的边缘。这表明每个立方无桥图分解成长度为三的边不相交道路。\[2\]
  - 彼得森定理也可以用来证明每个[最大平面图可以分解成一组长度为三的边不相交的道路](../Page/平面图_\(图论\).md "wikilink")。在这种情况下，（dual
    graph）是立方无桥的，所以根据彼得森定理，它有一个匹配，在原始图中对应于一对相邻的三角形面。每对三角形给出一条长度为三的路径，该路径包括将三角形连接在一起的边和其余四条三角形边中的两条。\[3\]
  - 通过将彼得森定理应用于
    [三角形网格](https://zh.wikipedia.org/wiki/三角網格 "wikilink")（triangle
    mesh）的对偶图 并 连接不匹配的三角形对，可以将网格分解成 循环
    [三角形条带](https://zh.wikipedia.org/wiki/三角形条带 "wikilink")（strips
    of triangles）。通过有一些进一步的变换，它可以变成单独的条，并因此给出了一种变换三角形网格的方法，使得它的对偶图变成
    [哈密顿图](../Page/哈密顿图.md "wikilink")。\[4\]

## 扩展

### 立方无桥图的完美匹配的数量

Lovász 和 Plummer 猜想了 立方体, [无桥](../Page/桥_\(图论\).md "wikilink")
图的[完美匹配](../Page/匹配_\(图论\).md "wikilink") 的数量是exponential in
the number 图顶点数量 .\[5\]
首次证明了[双边](../Page/二分图.md "wikilink")、立方体、无桥图的猜想，后来
证明了[平坦](../Page/平面图_\(图论\).md "wikilink")、立方体、无桥图的猜想。 一般情况下由
解决，他们表示每个立方体，无桥图包含至少 \(2^{n/3656}\) 完美的匹配。

### 算法的版本

讨论彼得森定理的有效版本。 根据弗林克Frink的证据\[6\] 他们获得一个  的算法，用于计算立方体，无桥，有  的顶点的图中的完美匹配。
如果图也是 [平坦的](../Page/平面图_\(图论\).md "wikilink") 同论文给出了一个  的算法。 他们  时间界限
可能基于在动态图中维护桥集的时间的后续改进来改进。

给出了进一步的改进，将时间限制减少到  或(用其他 [随机](../Page/随机性.md "wikilink")
[数据结构](../Page/数据结构.md "wikilink")) 。

### 更高度数

如果 *G* 是正常图，度数是 *d* ，
[边连通性](https://zh.wikipedia.org/wiki/边连通性 "wikilink")（edge
connectivity）是至少 *d* − 1 的，以及有偶数个顶点，则它有完美匹配。 更强烈，每个边属于至少一个完美的匹配。
当度是奇数时，顶点树木的条件可以从这个结果中省略，因为在那种情况下，(通过 handshaking lemma)
顶点数目总是偶数。\[7\]

## 脚注

<references group="">

</references>

## 参考文献

  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  - .

  -
  -
  -
[:Category:CS1法语来源
(fr)](https://zh.wikipedia.org/wiki/Category:CS1法语来源_\(fr\) "wikilink")
[:Category:图论](https://zh.wikipedia.org/wiki/Category:图论 "wikilink")
[:Category:匹配](https://zh.wikipedia.org/wiki/Category:匹配 "wikilink")
[:Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

## 彼得森定理

1.  See for example .
2.  See for example .
3.  .
4.  .
5.  .
6.  .
7.  , Theorem 4, p. 285.