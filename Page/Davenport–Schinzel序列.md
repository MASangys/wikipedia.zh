在[组合数学](../Page/组合数学.md "wikilink")中，**Davenport–Schinzel 序列**是指对任意两个符号交替出现的次数作出限制的序列。Davenport–Schinzel 序列其最大长度的界等于序列中不同符号的数目乘以一个渐近意义上很小但并非常数的因子，该因子取决于前述的交替次数上限。Davenport–Schinzel 序列最早是由和于
1965 年为研究[线性微分方程](../Page/线性微分方程.md "wikilink")而定义的。该序列及其长度的渐近界继
一文之后成为了[离散几何与](https://zh.wikipedia.org/wiki/离散几何 "wikilink")[几何算法分析领域的标准工具](../Page/计算几何.md "wikilink")。\[1\]

## 定义

有限序列 *U* = *u*<sub>1</sub>, *u*<sub>2</sub>, *u*<sub>3</sub>, ...
满足下列条件时被称作是 *s* 阶 Davenport–Schinzel 序列：

1.  任意两个相邻的元素不相等。
2.  若 *x* 和 *y* 是序列中不同的两个元素，那么该序列中不包含 *x* 和 *y* 交替出现，共有 *s* + 2 个数值的子序列
    ... *x*, ... *y*, ..., *x*, ..., *y*, ...。

例如，序列

  -
    1, 2, 1, 3, 1, 3, 2, 4, 5, 4, 5, 2, 3

是一个 3 阶 Davenport–Schinzel 序列：它包含了长度为 4 的交替序列，如 ...1, ... 2, ... 1, ...
2, ... （作为子序列在整个序列中出现了 4 次），但它并不包含任何长度为 5 的交替序列。

如果一个 *s* 阶 Davenport–Schinzel 序列包含了 *n* 个不同的值，就称其为 (*n*,*s*)
Davenport–Schinzel 序列，或称 *DS*(*n*,*s*) 序列。\[2\]

## 长度的界

相关文献已经研究了 *DS*(*n*,*s*) 序列在[渐近意义上的复杂度](../Page/渐近分析.md "wikilink")：对于
*n* 趋于无穷，假设 *s* 是固定的常数，已经得出了对于所有 *s* 的近乎紧确的界。令 λ<sub>*s*</sub>(*n*)
表示最长的 *DS*(*n*,*s*) 序列的长度。目前已知的 λ<sub>*s*</sub>
的最佳的界可用[反阿克曼函数](https://zh.wikipedia.org/wiki/阿克曼函数#反函数 "wikilink")

  -
    α(*n*) = min { *m* | A(*m*,*m*) ≥ *n* }

来描述。其中 *A* 是阿克曼函数。由于阿克曼函数增长得很快，其反函数的增长就非常慢，以至于在所有的实际规模的问题中，该函数的值都不会超过常数
4。\[3\]

用[大O符号](../Page/大O符号.md "wikilink")和[大Θ符号可以表述下面这些已知的渐近界](https://zh.wikipedia.org/wiki/大Θ符号 "wikilink")：

  - λ<sub>1</sub>(*n*) = *n*.\[4\]
  - λ<sub>2</sub>(*n*) = 2*n* − 1.\[5\]
  - \(2n\alpha(n)-O(n)\le\lambda_3(n)\le2n\alpha(n)+O(n\sqrt{\alpha(n)})\).\[6\]
    这个界可以在常数因子的误差范围内达到：对于平面上的 *n* 条线段，存在一种摆放它们的方式，使得它们的下包络线（）的线段条数的复杂度达到
    Ω(*n* α(*n*))。\[7\]
  - 对于 *s* ≥ 4 且 *s* 为偶数，\[8\]

\[\lambda_s(n)=n\cdot 2^{\frac{1}{t!}\alpha(n)^t(1+o(1))}\], 其中
*t* = (*s* − 2)/2.

  - 对于 *s* ≥ 5 且 *s* 为奇数，目前已知的最佳的界是 \[9\]

\[\lambda_s(n) < n\cdot 2^{\frac{1}{t!}\alpha(n)^t\log\alpha(n)(1+o(1))}\],
其中 *t* = (*s* − 3)/2. 然而这个界并未被确认是紧确的。\[10\]

当 *s* 是变量而 *n* 是一个很小的常数时，λ<sub>*s*</sub>(*n*) 的值目前也已知道：\[11\]

\[\lambda_s(2)=s+1\,\]

\[\lambda_s(3)=3s-2+(s\, \bmod \, 2)\]

\[\lambda_s(4)=6s-2+(s\, \bmod\, 2).\]

## 在下包络线中的应用

[Line_segment_lower_envelope.svg](https://zh.wikipedia.org/wiki/File:Line_segment_lower_envelope.svg "fig:Line_segment_lower_envelope.svg")
以实数 *x* 为变量的函数族 ƒ<sub>*i*</sub>(*x*) 的**下包络线**（）可用这族函数逐点取的最小值

  -
    ƒ(*x*) = min<sub>*i*</sub>ƒ<sub>*i*</sub>(*x*)

来描述。
我们假定这族函数都非常理想化：它们都是[连续的](../Page/连续函数.md "wikilink")，而且它们之中任意两个函数都只能在最多
*s*
个自变量取值处相等。有了这些假设，我们就可以把实数轴划分为有限个[区间](https://zh.wikipedia.org/wiki/区间 "wikilink")，使得在每一个这样的区间当中，都存在一个函数，其值比其他任何函数的值都要小。用某个区间上值最小的函数为该区间标上号，这些区间所形成的序列就是一个
*s* 阶 Davenport–Schinzel 序列。因此，*s* 阶
Davenport–Schinzel 序列长度的上界也就是下包络线在这种表示方法中区间数目的上界。

在和最初提出的应用当中，上述函数族就是某个
*s* 阶齐次[线性微分方程](../Page/线性微分方程.md "wikilink")的不同的解之集合。任意两个不同的解最多只能有
*s* 个相同的值，所以 *n* 个两两不同的解的下包络线就可形成一个 *DS*(*n*,*s*) 序列。

下包络线的概念也可以应用于[分段](../Page/分段.md "wikilink")连续或仅在实数轴的某些区间上才有定义的函数族；但在这些情况下，计算
Davenport–Schinzel 序列的阶时，不仅要算不同的函数其图像最多能在几个点处相交，函数中不连续点的个数和函数定义区间的端点个数也要算。例如，平面上一条非竖直的线段可看作是把某个区间上的
*x* 值映射到相应的 *y* 值的[函数图形](../Page/函数图形.md "wikilink")，而一族这样的线段的下包络线形成的是
3 阶的 Davenport–Schinzel 序列，因为任何两条线段可以形成长度最大为 4 的交替子序列。

## 另见

  -
## 注释

## 参考文献

  - .

  - .

  - .

  - .

  - .

  - .

  - .

  - .

  - .

  - .

  - .

  - .

  - .

## 外部链接

  - [Davenport-Schinzel
    Sequence](http://mathworld.wolfram.com/Davenport-SchinzelSequence.html)（[MathWorld](../Page/MathWorld.md "wikilink")
    上的页面）
  - [Davenport-Schinzel
    Sequences](http://planning.cs.uiuc.edu/node304.html)，*Motion
    Planning* 一书中的一节，作者是 Steven M. LaValle。

[Category:组合数学](https://zh.wikipedia.org/wiki/Category:组合数学 "wikilink")

1.  ，第 x 至第 2 页。

2.  关于这些记号，参见  的第 1 页。

3.  ，第 14 页。

4.  ，第 6 页。

5.
6.  ，第 2 章，第 12 至第 42 页；；；；；。

7.  ，第 4 章，第 86 至第 114 页；。

8.  ，第 3 章，第 43 至第 85 页；；。

9.
10.
11. .