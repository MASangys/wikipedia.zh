> 本文内容由[Draft:Erdős–Rényi模型](https://zh.wikipedia.org/wiki/Draft:Erdős–Rényi模型)转换而来。


在[图论](../Page/图论.md "wikilink")中，**Erdos–Rényi模型**或**ER模型**是一种[随机图](../Page/随机图.md "wikilink")，以[埃尔德什·帕尔](../Page/埃尔德什·帕尔.md "wikilink")和Alfréd Rényi命名。他们1959年发表了这模型。\[1\]\[2\] Edgar Gilbert独立推出了一个类似的模型。\[3\] 这被认为是随机图论中最基本和重要的模型之一，也有[物理学](../Page/物理学.md "wikilink")、[网格科学的应用](../Page/网络科学.md "wikilink")。

在ER模型中，我们有n顶点。两个不同顶点之间的每条[边都有固定和](../Page/邊_\(圖論\).md "wikilink")[独立的存在概率p](../Page/独立_\(概率论\).md "wikilink")。我们可以使用概率方法和ER模型来证明[几乎所有图的性质](https://zh.wikipedia.org/wiki/幾乎所有 "wikilink")。

## 定义

有两个一样的ER模型： [缩略图](https://zh.wikipedia.org/wiki/File:Erdos_generated_network-p0.01.jpg "fig:缩略图")

1.  G(*n*, *M*) 模型：n顶点、M边、随机均匀选择一个图形。比方说，G(3, 2)模型有三种可能的选择，每种都有1/3概率。
2.  G(*n*, *p*) 模型：n顶点、两个不同顶点之间的每条[边都有固定和](../Page/邊_\(圖論\).md "wikilink")[独立的存在概率p](../Page/独立_\(概率论\).md "wikilink")。每个图都有如下的概率：

<!-- end list -->

  -

      -
        \(p^M (1-p)^{{n \choose 2}-M}.\)
        ## *G*(*n*, *p*)的性质
        平均有 \(\tbinom{n}{2} p\) 条边
        顶点[度遵循](../Page/度_\(图论\).md "wikilink")[二项分布](../Page/二項分佈.md "wikilink"):\[4\]
          -
            \(P(\deg(v) = k) = {n-1\choose k}p^k(1-p)^{n-1-k},\)
        因为
          -
            \(P(\deg(v) = k) \to \frac{(np)^k \mathrm{e}^{-np}}{k!} \quad \text{ as } n \to \infty \text{ and } np = \text{constant},\)

对于大n和常数np，这个分布是[泊松的](../Page/泊松分佈.md "wikilink")。

根据Erdos-Renyi的1960年文章：\[5\]

  - 如果 *np* \<1，则*G*(*n*, *p*) [几乎必然](../Page/几乎必然.md "wikilink")没有大于O(log(n))[连通](../Page/连通图.md "wikilink")[元件](../Page/元件_\(圖論\).md "wikilink")。
  - 如果 *np* ＝1，则*G*(*n*, *p*) 几乎必然会大小为*n*<sup>2/3</sup>数量级的最大元件。
  - 若 *np* → *c* \> 1、*c* 是常数，则*G*(*n*, *p*)几乎必然会有巨大元件。其他元件包含大于O(log(*n*))顶点。
  - 若 \(p<\tfrac{(1-\varepsilon)\ln n} n\)，则 *G*(*n*, *p*)几乎必然是不连通图、会有鼓励顶点。
  - 若 \(p>\tfrac{(1+\varepsilon) \ln n} n\)则*G*(*n*, *p*)几乎必然是连通的。

因此 \(\tfrac{\ln n} n\)是临界阈值（critical threshold、渗流阈值）。阅读[临界现象](https://zh.wikipedia.org/wiki/临界现象 "wikilink")、[渗流理论](../Page/渗流理论.md "wikilink")、[相变](../Page/相變.md "wikilink")、[集聚系数](../Page/集聚系数.md "wikilink")）。

## 渗流理论的关系

关于[渗流理论](../Page/渗流理论.md "wikilink")，ER模型是[完全图的](../Page/完全圖.md "wikilink")“边渗流”（edge / bond / link percolation）。[物理家正常把完全图的研究称为](https://zh.wikipedia.org/wiki/物理 "wikilink")[平均场论](../Page/平均场论.md "wikilink")，所以ER模型是渗流的平均场的特例。（写[配分函数](../Page/配分函数.md "wikilink")。）

## 也参看

  - Rado graph、Dual-phase evolution、Exponential random graph models、Stochastic block model

  - [小世界网路](../Page/小世界網路.md "wikilink")、、

  - [随机图](../Page/随机图.md "wikilink")

  - [渗流理论](../Page/渗流理论.md "wikilink")

  - 、[临界点](https://zh.wikipedia.org/wiki/临界点 "wikilink")、[相变](../Page/相變.md "wikilink")、[集聚系数](../Page/集聚系数.md "wikilink")、universality、[对称性破缺](../Page/对称性破缺.md "wikilink")

  - [平均场论](../Page/平均场论.md "wikilink")

  - [统计力学](../Page/统计力学.md "wikilink")、[伊辛模型](https://zh.wikipedia.org/wiki/伊辛模型 "wikilink")

  - [分形](../Page/分形.md "wikilink")

  - <https://arxiv.org/pdf/math/0205237.pdf> (Grimmett)

  - <http://www.crm.cat/en/Activities/Documents/bogu%C3%B1a.pdf>

## 参考文献

<references group="" responsive="0">

</references>

## 拓展阅读

  -
  -
  -
[Category:图论](https://zh.wikipedia.org/wiki/Category:图论 "wikilink") [Category:随机图](https://zh.wikipedia.org/wiki/Category:随机图 "wikilink") [Category:Erdos](https://zh.wikipedia.org/wiki/Category:Erdos "wikilink") [Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.
2.
3.
4.  , Eq. (1)
5.   The probability *p* used here refers there to \(N(n) = \tbinom{n}{2} p\)