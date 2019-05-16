在[数学中](../Page/数学.md "wikilink")，***L<sup>p</sup>*空间**是由[p次可积函数组成的空间](../Page/可积函数.md "wikilink")；对应的**ℓ<sup>p</sup>空间**是由*p*次可和[序列组成的空间](../Page/序列.md "wikilink")。它們有時叫做**勒貝格空間**，以[昂利·勒貝格命名](../Page/昂利·勒貝格.md "wikilink")，儘管依據它們是首先介入。在[泛函分析和](../Page/泛函分析.md "wikilink")[拓扑向量空间中](https://zh.wikipedia.org/wiki/拓扑向量空间 "wikilink")，他们构成了[巴拿赫空间一类重要的例子](../Page/巴拿赫空间.md "wikilink")。

*L<sup>p</sup>*空间在[工程学领域的](../Page/工程学.md "wikilink")[有限元分析中有应用](../Page/有限元分析.md "wikilink")。

## 基本知识

[Vector_norms.svg](https://zh.wikipedia.org/wiki/File:Vector_norms.svg "fig:Vector_norms.svg")。\]\]

### 长度、距离与范数

泛函分析中，常常会在某类函数的集合上架设[拓扑结构乃至更复杂的结构](../Page/拓扑空间.md "wikilink")，以便使用拓扑乃至分析学的知识来讨论这些集合的属性。最常见的附加结构是[赋范向量空间](https://zh.wikipedia.org/wiki/赋范向量空间 "wikilink")。将函数集合作为装备了[范数](../Page/范数.md "wikilink")[向量空间来看待](../Page/向量空间.md "wikilink")，有助于理解函数类的关系和性质。范数是[欧几里德空间中长度概念的推广](https://zh.wikipedia.org/wiki/欧几里德空间 "wikilink")。在平面几何或立体几何中，长度以及距离是最基本的概念之一。对象的形状、位置、大小等性质或关系都是建立在长度和距离的定义上。最直观的长度概念是由平直物理空间中抽象而来，满足[勾股定理](../Page/勾股定理.md "wikilink")。例如说在平面上，原点到点\(P = (x, y)\)的向量长度是\(\sqrt{x^2 + y^2}\)。三维空间中，原点到点\(P = (x, y, z)\)的向量长度\(\sqrt{x^2 + y^2 + z^2}\)。长度函数\(l\)满足如下的基本性质：

1.  只有零向量的长度是零：\(l(v) = 0 \iff v = 0,\)
2.  数乘线性：\(\forall \lambda \in \mathbb{R}, \; \; l(\lambda v) = \lambda l(v),\)
3.  满足三角不等式：\(l(u) + l(v) \geqslant l(u + v).\)

比如说在更一般的维欧几里德空间\(\mathbb{R}^n\)中，可以定义向量\(v = (x_1, x_2, \cdots x_n)\)的欧几里德长度是

\[l(v) = (x_1^2 + x_2^2 + \cdots + x_n^2)^{\frac12}\]
这个函数也满足以上的基本性质。更一般地，在向量空间\(V\)中，满足以上性质的函数：\(\mathcal{N} :\; V \rightarrow \mathbb{R}_+\)称为\(V\)上的“长度”函数或**[范数](../Page/范数.md "wikilink")**。比如在欧几里德空间\(\mathbb{R}^n\)中也可以对给定的实数
≥ 1定义范数：

\[\ \mathcal{N}_p(x) = \|x\|_p=\left(|x_1|^p+|x_2|^p+\dotsb+|x_n|^p\right)^{\frac{1}{p}}\]
这个范数称为\(\mathbb{R}^n\)上的范数。 = 2的时候，就是常见的欧几里德范数。 =
1的时候，是所谓的[曼哈顿距离](https://zh.wikipedia.org/wiki/曼哈顿距离 "wikilink")。当趋于无穷大的时候，范数趋于一个“极限”范数，称为[一致范数](https://zh.wikipedia.org/wiki/一致范数 "wikilink")（也记作范数），定义为：

\[\ \mathcal{N}_{\infty}(x) = \|x\|_{\infty}=\max (|x_1|, |x_2| \cdots , |x_n|).\]
对不同的来说，等长度点的集合是不一样的。比如右图列出了三种不同范数下[单位圆](../Page/单位圆.md "wikilink")（从原点出发，“长度”等于1的点的集合）形状。

### 可数维度空间的*p*-范数

有限维空间中的范数可以如\(\mathbb{R}^n\)一般定义。当空间维数是可数无限时，也可以将范数的定义拓展到其上。这个定义一般适用于由数列或序列构成的空间，称为\(\ell^p\)空间。常见的有如下例子：

  - \(\ell^1\)空间，所有[绝对收敛](../Page/绝对收敛.md "wikilink")[级数列构成的空间](../Page/级数.md "wikilink")；
  - \(\ell^2\)空间，所有平方收敛[级数列构成的空间](../Page/级数.md "wikilink")；
  - \(\ell^\infty\)空间，所有[有界数列构成的空间](https://zh.wikipedia.org/wiki/有界 "wikilink")。

事实上，序列集合上可以自然地按照序列的加法和数乘定义出向量空间。而\(\ell^p\)空间则是在这个向量空间中定义如下的范数：

\[\|(x_n)_{n\in\mathbb{N}} \|_p = \left(|x_1|^p + |x_2|^p + \dotsb+|x_n|^p + |x_{n+1}|^p + \dotsb\right)^{\frac{1}{p}} = \left(\sum_{n\in\mathbb{N}} |x_n|^p \right)^{\frac{1}{p}}.\]
然而，上式中右侧的级数不总是收敛的（有可能其级数和是无穷大）。所以空间实际上是所有序列集合中，令上式右侧的级数能够收敛的元素组成的子集。

可以证明，随着增大，\(\ell^p\)空间包含的元素也越多。实际上，如果，那么\(\ell^p\)空间是\(\ell^q\)空间的真子集。比如说，以下的数列：

\[a = (\frac1n)_{n\in\mathbb{N}^*} = \left( 1, \frac12 , \frac13 , \cdots , \frac1n , \cdots \right)\]
不属\(\ell^1\)，因为\(1 + \frac12 + \frac13 + \cdots + \frac1n + \cdots\)的和是无穷大。不过，由于

\[1 + \frac{1}{2^2} + \frac{1}{3^2} + \cdots + \frac{1}{n^2} + \cdots\]
的和是有限的，所以数列\(a\)属于\(\ell^2\).

## *L<sup> p</sup>*空间

当空间维度是无穷而且不可数的时候（没有一个可数的基底），无法运用有限维或可数维度空间的办法来定义范数，但对于可积函数空间，仍然能够定义类似的概念。具体来说，给定[可测空间](https://zh.wikipedia.org/wiki/可测空间 "wikilink")(*S*,
*Σ*,
*μ*)以及大于等于1的实数，考虑所有从到[域](https://zh.wikipedia.org/wiki/域 "wikilink")\(\mathbb{K}\)（\(\mathbb{K} = \mathbb{C}\)或\(\mathbb{R}\)）上的[可测函数](../Page/可测函数.md "wikilink")。考虑所有绝对值的次幂在可积的函数，也就是集合：

\[\mathcal{L}^p(S, \mu) = \left\{ f ; \; \|f\|_p = \left({\int_S |f|^p\;\mathrm{d}\mu}\right)^{\frac{1}{p}} < \infty \right\}\]
集合中的函数可以进行加法和数乘：

\[(f+g)(x) = f(x)+g(x),  \quad (\lambda f)(x) = \lambda f(x), \;\; \lambda \in \mathbb{K}\]
从不等式：|*f* + *g*|<sup>*p*</sup> ≤ 2<sup>*p-1*</sup> (|*f*|<sup>*p*</sup>
+
|*g*|<sup>*p*</sup>)可知，两个次可积函数的和，也是一个次可积函数。另外，容易证明\(\| \lambda f \|_p =\lambda \| f \|_p\)；[闵可夫斯基不等式的积分形式说明三角不等式对](../Page/闵可夫斯基不等式.md "wikilink")\(\| \cdot \|_p\)成立。满足这样条件的\(\| \cdot \|_p\)构成一个[半范数](https://zh.wikipedia.org/wiki/半范数 "wikilink")，令\(\mathcal{L}^p(S, \mu)\)成为一个半赋范向量空间。之所以是半范数，是因为满足\(\| f \|_p = 0\)的函数\(f\)不一定是零函数。然而可以通过一套标准的拓扑方法从这个半赋范空间得到一个赋范空间：考虑\(\mathcal{L}^p(S, \mu)\)中所有使得\(\| f \|_p = 0\)的函数\(f\)的集合：

\[N = \left\{ f ; \; \| f \|_p = 0 \right\}.\]
集合\(N\)可以看作是[映射](https://zh.wikipedia.org/wiki/映射 "wikilink")\(f \mapsto \| f \|_p\)的[零空间](../Page/零空间.md "wikilink")。对可测函数\(f\)来说，\(\| f \|_p = 0 \iff \mu (f \neq 0 ) = 0 \iff f\)几乎处处为零（在测度*μ*意义下）。所以

\[N \equiv \mathrm{ker}(\|\cdot\|_p) = \{f : f  \; \; \mu-\]几乎处处为0\(\}.\)
而\(N\)同时也是\(\mathcal{L}^p(S, \mu)\)的一个子空间。设\(L^p(S, \mu)\)是\(\mathcal{L}^p(S, \mu)\)关于\(N\)的[商空间](../Page/商空间.md "wikilink")。\(L^p(S, \mu)\)中的某个元素\(f\)可以看作是所有和函数\(f\)相差一个\(N\)中元素的函数构成的等价类。这样定义的空间\(L^p(S, \mu)\)是一个赋范向量空间，称为上函数关于[测度](../Page/测度.md "wikilink")*μ*的*L<sup> p</sup>*空间。\(\| \cdot \|_p\)称为\(L^p(S, \mu)\)函数的-范数。

需要注意的是，*L<sup> p</sup>*空间中的元素严格来说并不是具体的函数，而是一族函数构成的等价类。而当需要将*L<sup> p</sup>*空间元素当作函数来计算的时候，参与计算的实际是从这一族函数中抽取的一个代表函数。

与序列空间一样，在函数空间上也可以定义一致范数。定义的方法和范数一样，首先定义：

\[\|f\|_\infty \equiv \inf \{ C\ge 0 : |f(x)| \; \; \mu-\]几乎处处小于等于\(C \}.\)

\[\mathcal{L}^\infty (S, \mu) = \left\{ f ; \; \|f\|_\infty  < \infty \right\}\]
\(\|\cdot \|_\infty\)是一个半范数，取\(N \equiv \mathrm{ker}(\|\cdot\|_\infty) = \{f : f \mu-\)几乎处处为0\(\}.\)，则\(\mathcal{L}^\infty (S, \mu)\)关于\(N\)的[商空间是一个赋范向量空间](../Page/商空间.md "wikilink")，记作\(L^\infty (S, \mu)\)。

一致范数与-范数之间存在以下关系：

\[\|f\|_\infty=\lim_{p\to\infty}\|f\|_p\]

可以证明，*L<sup> p</sup>*空间是[完备的空间](../Page/完备空间.md "wikilink")，也即是说是一个[巴拿赫空间](../Page/巴拿赫空间.md "wikilink")（完备赋范向量空间）。*L<sup> p</sup>*空间的完备性通常被称为[里兹－费舍尔定理](https://zh.wikipedia.org/wiki/里兹－费舍尔定理 "wikilink")。具体的证明可以借助测度上的[勒贝格积分的相关收敛定理来完成](https://zh.wikipedia.org/wiki/勒贝格积分 "wikilink")。

### 特例

*L<sup> p</sup>*空间都是巴拿赫空间，但只有当*p* =
2的时候，*L*<sup>2</sup>空间是[希尔伯特空间](../Page/希尔伯特空间.md "wikilink")。也就是说，可以为*L*<sup>2</sup>空间中的元素定义[内积](https://zh.wikipedia.org/wiki/内积 "wikilink")。具体形式是：

\[\langle f, g \rangle = \int_S f(x) \overline{g(x)}  \, \mathrm{d}\mu(x).\]
其中的\(\overline{g(x)}\)表示复数的[共轭](https://zh.wikipedia.org/wiki/共轭 "wikilink")。这个内积是从2-范数自然诱导的内积。*L*<sup>2</sup>空间在[傅立叶级数和](https://zh.wikipedia.org/wiki/傅立叶级数 "wikilink")[量子力学以及其他领域有着重要的运用](../Page/量子力学.md "wikilink")。

\(\ell^p\)空间可以看作是*L<sup> p</sup>*空间的特例。只要取*L<sup> p</sup>*空间中的\(S = \mathbb{N}\)，测度为\(\mathbb{n}\)上的[计数测度](https://zh.wikipedia.org/wiki/计数测度 "wikilink")，则对应的\(L^p (S, \mu)\)就是\(\ell^p\)空间。

## *L*<sup>*p*</sup>空间的性质

### 对偶空间

一个拓扑向量空间的[对偶空间是指由这个向量空间上的所有的连续线性](../Page/对偶空间.md "wikilink")[泛函构成的](../Page/泛函.md "wikilink")[泛函空间](https://zh.wikipedia.org/wiki/泛函空间 "wikilink")。对某个大于1的实数，设是满足\(\frac1p + \frac1q = 1\)的唯一实数，则空间的对偶空间与[同构](../Page/同构.md "wikilink")。这个关系可以通过一个自然的同构映射展现：

\[\kappa_p : \; \; L^q(S, \mu) \longrightarrow L^p(S, \mu)^*\]

\[f \qquad \longmapsto \kappa_p(f) := \left( g \in  L^p(S, \mu) \; \mapsto \; \int_S f g \; d\mu \right).\]
[赫尔德不等式保证了其中的泛函](../Page/赫尔德不等式.md "wikilink")\(\kappa_p(f)\)是良好定义并且是连续的。\(\kappa_p\)是一个线性映射，根据赫尔德不等式的极限情况，\(\kappa_p(f)\)作为泛函的范数和\(f\)一样，这说明\(\kappa_p\)是一个[等距映射](../Page/等距同构.md "wikilink")。此外还可以证明，对偶空间中的任一线性泛函对偶空间都能表示成某个\(\kappa_p(g)\)的形式，所以\(\kappa_p\)是一个[满射](../Page/满射.md "wikilink")。结合以上性质可以推出，\(\kappa_p\)是一个等距同构。在这个同构的意义下，我们常说的对偶空间“是”。

以上性质说明，当大于1的时候，是一个[自反空间](../Page/自反空间.md "wikilink")：的二次对偶空间（对偶空间的对偶空间）“是”它自己（在同构的意义下）。具体来说，从\(\kappa_p\)出发，可以构造出以下的关系：

\[j_p \colon L^p(S, \mu) \overset{\kappa_q}{\to} L^q(S, \mu)^* \overset{\,\,\left(\kappa_p^{-1}\right)^*}{\longrightarrow} L^p(S, \mu)^{**}\]
\(\kappa_q\)与\(\left(\kappa_p^{-1}\right)^*\)的[复合映射](../Page/复合函数.md "wikilink")是从映射到其二次对偶空间的赋值嵌入映射：

\[\forall f \in L^p(S, \mu), \; \;  G \in  L^p(S, \mu)^*, \; \; \exists g \in  L^q(S, \mu)\]
使得\(G = \kappa_p ( g).\) 从而

\[\; \; \left[ j_p(f) \right](G) = \left[ \left( \left(\kappa_p^{-1}\right)^* \circ \kappa_q \right) (f) \right](G) =  \left[\left(\kappa_p^{-1}\right)^* \left(\kappa_q (f) \right)\right] (G)  =  \left[ \kappa_q (f)\right] \left( \kappa_p^{-1} (G)\right)  = \left[\kappa_q (f)\right] (g) = \int_S f g \; d\mu = G(f).\]
作为两个等距同构的复合映射，也是等距同构。这说明和也是同构关系。

如果测度是[σ-有限测度](https://zh.wikipedia.org/wiki/σ-有限测度 "wikilink")，那么和也是等距同构。可以证明，

\[\kappa_1 : \; \; f  \in  L^\infty (S, \mu) \longmapsto  \left( g \in  L^1 (S, \mu) \; \mapsto \; \int_S f g \; d\mu \right)\]
是到上的一个同构。

则更为复杂。可以被刻画为所有关于测度[绝对连续的有界带号有限可加测度的集合](../Page/绝对连续.md "wikilink")。如果承认[选择公理](../Page/选择公理.md "wikilink")，那么一般来说，这个集合要比“大得多”。只有对某些简单的测度，会和同构。

### 嵌入

给定两个实数：1 ≤ *p* \< *q* ≤
∞，当比较和的时候会发现，前者中包含一些局部行为更加不规则的函数，而后者中则包含了“尾巴更粗”的函数。举例来说，\(L^1 (\mathbb{R})\)中的连续函数（也就是实数域上的勒贝格可积函数）可以在0的附近取很大的值，但当自变量趋于无穷大的时候，函数的值必须趋于0.
而对于\(L^\infty (\mathbb{R})\)中的连续函数（有界连续函数），无论自变量多大，函数值都可以不在0附近，但反过来说，无论自变量取多少，函数的值也不能超过上界和下界。

假设全集在中的测度有限，以及1 ≤ *p* \< *q* ≤
∞。那么由[赫尔德不等式有如下限制](../Page/赫尔德不等式.md "wikilink")：

\[\|f\|_p \le \mu(S)^{(1/p)-(1/q)} \|f\|_q\]

这说明空间可以被连续地嵌入到里面。换句话说，到上的[恒等映射](https://zh.wikipedia.org/wiki/恒等函数 "wikilink")\(I_{p,q}\)是有界连续映射。\(I_{p,q}\)的[算子范数就是由以上不等式取等号的情形确定的](../Page/算子范数.md "wikilink")：

\[\| I_{p,q} \| =\mu(S)^{(1/p)-(1/q)}.\]

### 稠密子空间

研究某个复杂的无穷维赋范空间的时候，常常会使用一个由空间中比较“简单”的元素构成的[稠密子集来逼近空间中的一个元素](https://zh.wikipedia.org/wiki/稠密 "wikilink")。假设1 ≤
*p* \< ∞，则空间中的元素可以用[测度空间](https://zh.wikipedia.org/wiki/测度空间 "wikilink")
(*S*, *Σ*, *μ*) 上的**简单可积函数**逼近。给定测度空间(*S*, *Σ*, *μ*)，其上的一个简单可积函数指的是形同：

\[f = \sum_{j=1}^n a_j \mathbf{1}_{A_j}\]
的函数。其中的是实数或复数系数，*A<sub>j</sub>* ∈
*Σ* 是测度有限的可测集合。由[勒贝格积分的构造方法可知](https://zh.wikipedia.org/wiki/勒贝格积分 "wikilink")，简单可积函数的集合在中稠密。

如果本身也是测度空间，而是上的[博雷尔测度](https://zh.wikipedia.org/wiki/博雷尔测度 "wikilink")，那么可以通过[乌雷松引理证明](../Page/乌雷松引理.md "wikilink")，所有可测而且测度有限的子集对应的[指示函数都可以通过连续函数逼近](../Page/指示函数.md "wikilink")。所以所有的简单可积函数可以用连续函数逼近。因而可以证明，中的连续函数构成的集合在中稠密\[1\]。对于更具体的空间，可以证明更加强的结果。比如说当是*n*维欧几里德空间，而是上的正则[博雷尔测度的时候](https://zh.wikipedia.org/wiki/博雷尔测度 "wikilink")，可以证明，所有[紧支撑的](../Page/支撑集.md "wikilink")[光滑函数的集合在](../Page/光滑函数.md "wikilink")中稠密。

## 参见

  - [哈代空间](https://zh.wikipedia.org/wiki/哈代空间 "wikilink")
  - [赫尔德平均](https://zh.wikipedia.org/wiki/赫尔德平均 "wikilink")
  - [赫尔德空间](https://zh.wikipedia.org/wiki/赫尔德空间 "wikilink")
  - [方均根](https://zh.wikipedia.org/wiki/方均根 "wikilink")

## 参考来源

  -
## 外部链接

  -
[Category:泛函分析](https://zh.wikipedia.org/wiki/Category:泛函分析 "wikilink")
[Category:赋范空间](https://zh.wikipedia.org/wiki/Category:赋范空间 "wikilink")
[Category:序列](https://zh.wikipedia.org/wiki/Category:序列 "wikilink")

1.