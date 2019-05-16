**A无穷代数**（，或 \(\;A_{\infty}\;\)-algebra）是吉姆·斯塔谢夫（）在1960年代研究
[H-空间的乘法的结合性时发现的一种代数结构](https://zh.wikipedia.org/wiki/H-空间 "wikilink")，又称为**强同伦结合代数**（）。1970年代陈国才（K.-T.
Chen）和T.V.
Kadeishvili在一个流形的同调群上用不同的方法各自发现了一种A无穷代数结构。1990年代[深谷贤治在研究](https://zh.wikipedia.org/wiki/深谷贤治 "wikilink")[辛流形的](../Page/辛流形.md "wikilink")[拉格朗日Floer同调](https://zh.wikipedia.org/wiki/拉格朗日Floer同调 "wikilink")（）时推广了斯塔谢夫的概念，称为[A无穷范畴](https://zh.wikipedia.org/wiki/A无穷范畴 "wikilink")（，\(\;A_{\infty}\;\)-category）。一般数学家把深谷的发现称为[深谷范畴](https://zh.wikipedia.org/wiki/深谷范畴 "wikilink")（）。

## 定义

设\(\;V\;\)是数域\(\;k\;\)上的一个分次线性空间。\(\;V\;\)上的一个**A无穷代数**结构是一组映射

<center>

\(\;m_n:V^{\otimes n}\to V,\quad m_n\;\)的度数为\(\; n-2,\;\)

</center>

满足以下4组关系：

1.  \(\;m_1=d\;\)是一个微分，即\(\;d^2=0;\;\)
2.  \(\;m=m_2:V\otimes V\to V\;\)是一个链映射，换言之\(\;d\circ m=m\circ d;\;\)可以把\(\;m_2\;\)看成一个乘法，并且这个乘法能够降到同调上去；
3.  \(\;m_3:V^{\otimes 3}\to V\;\)是乘法\(\;m\;\)关于结合律的同伦，即
    <center>
    \(\;a\cdot(b\cdot c)\ne (a\cdot b)\cdot c,\;\)
    </center>
    而是在同伦的意义下是结合的：
    <center>
    \(\;m_3d+dm_3=m(m\otimes Id)-m(Id\otimes m);\;\)
    </center>
4.  \(\;m_4,\cdots\;\)是高阶同伦，即\(\;m_4\;\)是\(\;m_3\;\)的同伦，\(\;m_5\;\)是\(\;m_4\;\)的同伦等等，换言之
    <center>
    \(m_nd-(-1)^{n}dm_n=\sum_{i+j=n+1,i,j\ge 2}(-1)^j m_i\circ m_j.\;\)
    </center>

从上面的定义可以看出，对于一个A无穷代数，它的同调实际上形成一个结合代数。这也就是一个A无穷代数称为**强同伦结合代数**的原因。

## 等价定义

如果读者熟悉[余代数的概念](https://zh.wikipedia.org/wiki/余代数 "wikilink")，那么考虑\(\;V\;\)的元素度数降低1然后生成的[张量代数](../Page/张量代数.md "wikilink")，记为\(\;TV[1]\;\)。\(\;TV[1]\;\)上有一个自然的[余积](https://zh.wikipedia.org/wiki/余积 "wikilink")，为

<center>

\(\;\Delta(a_1\otimes a_2\otimes\cdots\otimes a_n)=\sum_{i=0}^na_1\otimes\cdots\otimes a_i\bigotimes a_{i+1}\otimes\cdots\otimes a_n.\;\)

</center>

从而使\(\;TV[1]\;\)成为一个**上代数**。\(\;V\;\)上的一个**A无穷代数结构**就是\(\;TV[1]\;\)上的一个[余导子](https://zh.wikipedia.org/wiki/余导子 "wikilink")（）\(\;\delta\;\)并且满足\(\;\delta^2=0\;\)。关于这两个定义的等价性证明可以参考下面
Markl-Shnider-Stasheff 的书。

## 详解

Stasheff是怎样得到A无穷代数的结构的呢？我们下面以一个具体的例子，同时也是Stasheff所考虑的原型来说明。设\(\;M\;\)是一个[拓扑空间](../Page/拓扑空间.md "wikilink")，\(\;x\;\)为其上一点。记

<center>

\(\Omega M:=\{f:[0,1]\to M|f(0)=f(1)=x\},\;\)

</center>

称为\(\;M\;\)的[环路空间](https://zh.wikipedia.org/wiki/环路空间 "wikilink")（[based
loop
space](https://zh.wikipedia.org/wiki/based_loop_space "wikilink")）。在\(\;\Omega M\;\)上我们可以定义一种乘法，如下：任给\(\;\gamma_1,\gamma_2\in\Omega M\;\)，

<center>

\(\;\gamma_1\circ\gamma_2:=\begin{cases}\gamma_1(2x),&\mbox{ if } 0\le x<\frac{1}{2}\\ \gamma_2(2x-1),& \mbox{ if } \frac{1}{2}\le x\le 1.\end{cases}\)

</center>

回忆学习[基本群的时候](../Page/基本群.md "wikilink")，我们都验证过这样的乘法并不是结合的，但在同伦意义下是结合的：不难构造这样的同伦，记为\(\tilde m_3\)，

<center>

\(\tilde m_3:[0,1]\times[0,1]\to M,\)

</center>

使得\(\tilde m_3(0,\cdot)=(\gamma_1\circ\gamma_2)\circ\gamma_3(\cdot),\tilde m_3(1,\cdot)=\gamma_1\circ(\gamma_2\circ\gamma_3)(\cdot)\;\)

</center>

。对于\(\;\Omega M\;\)里面的4个元素，我们有下面五种乘法，他们是相互同伦的，如下图所示：[Associahedra.PNG](https://zh.wikipedia.org/wiki/File:Associahedra.PNG "fig:Associahedra.PNG")图中1表示恒同映射。这样我们就得到了一个以圆周\(\;S^1\;\)为参数的一串从\(\;[0,1]\;\)到\(\;M\;\)的映射。事实上因为这些映射的像都是重合的，因而我们实际上可以把这一串映射延拓到以\(\;S^1\;\)为边的圆盘\(\;D^2\;\)上，即为同伦之间的同伦，记为\(\;\tilde m_4\;\)。如此一直进行下去，我们就得到\(\;\tilde m_5,\tilde m_6,\cdots\;\)，等等。在链水平上，我们把\(\;\tilde m_n\;\)对应的映射记为\(\;m_n\;\)，则不难看出\(\;m_n\;\)就是满足上面A无穷代数定义的那些算子。

## 例子

1.  一个平凡的例子是，任何一个（微分分次）结合代数都是一个A无穷代数。这里只要令\(\;m_3,m_4,\cdots\;\)都等于0就行了。
2.  除了Stasheff的例子和上面这个平凡的例子之外，陈国才和Kadeishvili利用流形的[微分形式也构造了一些A无穷的例子](../Page/微分形式.md "wikilink")，其中陈国才的构造更为深刻，成为[有理同伦论](../Page/有理同伦论.md "wikilink")（[rational
    homotopy
    theory](https://zh.wikipedia.org/wiki/rational_homotopy_theory "wikilink")）中一个重要的理论。给定一个流形，考虑它上面的微分形式，这是一个微分分次代数（differential
    graded algebra,
    DGA），同时我们还可以考虑它的上同调，赋以一个平凡的微分，则它也形成一个微分分次代数。但是这两个微分分次代数不是[链等价的](https://zh.wikipedia.org/wiki/链等价 "wikilink")！比如说，根据[霍奇理论我们可以把上同调用](https://zh.wikipedia.org/wiki/霍奇理论 "wikilink")[调和形式作为代表](https://zh.wikipedia.org/wiki/调和形式 "wikilink")，这种不等价性表现在两个调和形式的外积不一定是调和的。根据霍奇分解，我们可以把这种乘积再投射到调和形式里面去，但是这样定义出来的乘法却不再是结合的，但是在同伦的意义下结合。以此，我们实际上得到了一种**A无穷代数**。这就是陈国才和Kadeishvili以及后来研究者的基本思路，但是陈国才走的更远，他实际上揭示了这种A无穷代数跟流形的环路空间的拓扑之间的关系，以及这些A无穷代数的在某些情况下的退化跟流形本身的一些拓扑障碍有关系，跟Sullivan后来研究流形的**形式化**（）有相似之处。

## 科斯居尔对偶和有理同伦论

Stasheff的A无穷代数的概念自然地出现在关于一般代数结构的分解（resolution）的理论中。给定一个代数结构，我们希望能够通过对它的分解看清其中的结构（对比于流形，这样分解就是[波斯尼科夫塔](../Page/波斯尼科夫塔.md "wikilink")）。这其中，所谓的科斯居尔分解是一种非常有效的分解方式，而A无穷代数则非常自然地出现在[结合代数的Koszul分解过程当中](https://zh.wikipedia.org/wiki/结合代数 "wikilink")：对于一个结合代数，它的科斯居尔分解有一个A无穷代数结构，而这个A无穷代数的科斯居尔分解又是一个A无穷代数，如此不已。但是，原来的结合代数和两次科斯居尔分解后得到的A无穷代数实际上是[链等价的](https://zh.wikipedia.org/wiki/链等价 "wikilink")，第二个分解和第四个分解也是如此，如此循环。这就是所谓的[科斯居尔对偶](https://zh.wikipedia.org/wiki/科斯居尔对偶 "wikilink")（）的概念。

对于[李代数和](https://zh.wikipedia.org/wiki/李代数 "wikilink")[交换代数](https://zh.wikipedia.org/wiki/交换代数 "wikilink")，我们同样可以进行科斯居尔分解。一个李代数的科斯居尔分解有一个[C无穷代数](https://zh.wikipedia.org/wiki/C无穷代数 "wikilink")（C是交换commutativity的英文缩写）结构，而一个交换代数的科斯居尔分解有一个[李无穷代数结构](https://zh.wikipedia.org/wiki/李无穷代数 "wikilink")。所谓李无穷代数和C无穷代数，正如A无穷代数一样，他们的同调分别是李代数和交换代数。李代数和交换代数分别是一种特殊的李无穷代数和C无穷代数。由一个李代数经过科斯居尔分解后到C无穷代数然后再经科斯居尔分解到李无穷代数，所得的这两个李无穷代数实际上是同伦等价的，对于交换代数也是如此。因此我们可以说，李代数和交换代数是相互科斯居尔对偶的。这个结论实际上是奎伦在有理同伦论中发现的，他还证明，在有理系数下，这两个代数组成的[范畴都和拓扑中的](https://zh.wikipedia.org/wiki/范畴 "wikilink")[有理同伦型](https://zh.wikipedia.org/wiki/有理同伦型 "wikilink")（[rational
homotopy type](../Page/有理同伦论.md "wikilink")）组成的范畴是等价的（有一些单连通性条件）。后来
Sullivan通过考察流形的[微分形式](../Page/微分形式.md "wikilink")，得到了类似的结果，但是更几何，更直观。

## A无穷范畴

考虑一个[范畴](https://zh.wikipedia.org/wiki/范畴 "wikilink")\(\;\mathfrak C\;\)。对于其中的四个[对象及其之间](https://zh.wikipedia.org/wiki/对象 "wikilink")[态射](../Page/态射.md "wikilink")

<center>

\(\;A\stackrel{f}{\longrightarrow}B\stackrel{g}{\longrightarrow}C\stackrel{h}{\longrightarrow}D,\;\)

</center>

我们有

<center>

\(\;(f\circ g)\circ h=f\circ(g\circ h),\;\)

</center>

这显示了这些态射之间有一种结合性。一个A无穷范畴就是打破这些结合性，使之成为在同伦意义下是结合的，同时有高阶同伦算子，成为同伦的同伦，同伦的同伦的同伦，等等。因此一个A无穷范畴并不是一个范畴，而是同伦意义下的范畴：它的“同调”形成一个范畴。

深谷在研究[辛拓扑的时候发现了这个A无穷范畴的结构](https://zh.wikipedia.org/wiki/辛拓扑 "wikilink")。给定一个[辛流形](../Page/辛流形.md "wikilink")，考虑其中的[拉格朗日子流形](https://zh.wikipedia.org/wiki/拉格朗日子流形 "wikilink")（[Lagrangian
submanifold](../Page/辛流形.md "wikilink")）。对其中任意两个拉格朗日子流形，考虑所谓的拉格朗日[Floer链复形](https://zh.wikipedia.org/wiki/Floer链复形 "wikilink")，形成所谓的态射。深谷发现这些态射之间可以定义乘法，但是这个乘法本身不结合但在同伦意义下结合，他并构造了高阶同伦算子，使之成为一个A无穷范畴，现在称为深谷范畴。

## 相关概念

  - [B无穷代数](https://zh.wikipedia.org/wiki/B无穷代数 "wikilink")（\(\;B_{\infty}\;\)-algebra）
  - [C无穷代数](https://zh.wikipedia.org/wiki/C无穷代数 "wikilink")（\(\;C_{\infty}\;\)-algebra）
  - [E无穷代数](https://zh.wikipedia.org/wiki/E无穷代数 "wikilink")（\(\;E_{\infty}\;\)-algebra）
  - [G无穷代数](https://zh.wikipedia.org/wiki/G无穷代数 "wikilink")（\(\;G_{\infty}\;\)-algebra）
  - [李无穷代数](https://zh.wikipedia.org/wiki/李无穷代数 "wikilink")（\(\;L_{\infty}\;\)-algebra）

## 参考文献

Stasheff关于A无穷代数的构造见：

  - Stasheff, James Dillon, *Homotopy associativity of $H$-spaces. I,
    II.* Trans. Amer. Math. Soc. 108 (1963), 275-292; ibid. 108 1963
    293-312.
  - Markl, Martin; Shnider, Steve; Stasheff, Jim, *Operads in algebra,
    topology and physics.* Mathematical Surveys and Monographs, 96.
    American Mathematical Society, Providence, RI, 2002.

陈国才的\(\;A_{\infty}\;\)-代数的构造，并不是在文章中明显给出的，但不难推导，见：

  - Chen, Kuo Tsai, *Iterated path integrals.* Bull. Amer. Math. Soc. 83
    (1977), no. 5, 831-879.

Kadeishvili的文章发表于1980年，作者后来重新整理，题为[On the homology theory of fiber
spaces](http://www.arxiv.org/abs/math/0504437)。原文见：

  - Kadeishivili, T. V., *On the theory of homology of fiber spaces.*
    (Russian) International Topology Conference (Moscow State Univ.,
    Moscow, 1979). Uspekhi Mat. Nauk 35 (1980), no. 3(213), 183-188.

关于Koszul对偶，最经典的文章见：

  - Ginzburg, Victor; Kapranov, Mikhail, *Koszul duality for operads.*
    Duke Math. J. 76 (1994), no. 1, 203-272.

Quillen的有理同伦论，见：

  - Quillen, Daniel, [*Rational homotopy
    theory.*](http://www.jstor.org/view/0003486x/di961831/96p0008c/0)
    Ann. of Math. (2) 90 1969 205-295.

Sullivan的有理同伦论，见：

  - Sullivan, Dennis, [*Infinitesimal computations in
    topology.*](http://www.numdam.org/item?id=PMIHES_1977__47__269_0)
    Inst. Hautes Études Sci. Publ. Math. No. 47 (1977), 269-331 (1978).

关于Fukaya范畴，见[他的主页](http://www.math.kyoto-u.ac.jp/~fukaya/fukaya.html)上的文章，以及

  - Fukaya, Kenji, *Morse homotopy, $A\\sp \\infty$-category, and Floer
    homologies.* Proceedings of GARC Workshop on Geometry and Topology
    '93 (Seoul, 1993), 1-102, Lecture Notes Ser., 18, Seoul Nat. Univ.,
    Seoul, 1993.

[Category:同调代数](https://zh.wikipedia.org/wiki/Category:同调代数 "wikilink")
[Category:代数拓扑](https://zh.wikipedia.org/wiki/Category:代数拓扑 "wikilink")
[Category:代数](https://zh.wikipedia.org/wiki/Category:代数 "wikilink")
[Category:辛拓扑](https://zh.wikipedia.org/wiki/Category:辛拓扑 "wikilink")
[Category:数学物理](https://zh.wikipedia.org/wiki/Category:数学物理 "wikilink")