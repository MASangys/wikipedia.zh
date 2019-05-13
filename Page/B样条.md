在[数学的子学科](../Page/数学.md "wikilink")[数值分析裡](../Page/数值分析.md "wikilink")，**B-样条**是[样条曲线一种特殊的表示形式](../Page/样条曲线.md "wikilink")。它是B-样条基曲线的[线性组合](../Page/线性组合.md "wikilink")。B-样条是[貝茲曲線的一种一般化](../Page/貝茲曲線.md "wikilink")，可以进一步推广为[非均匀有理B样条](../Page/非均匀有理B样条.md "wikilink")（NURBS），使得我们能给更多一般的几何体建造精确的模型。

[De
Boor算法是一个](../Page/De_Boor算法.md "wikilink")[数值上稳定的计算B样条的方法](../Page/数值稳定性.md "wikilink")。

[术语](../Page/术语.md "wikilink") *B样条*是[Isaac Jacob
Schoenberg创造的](../Page/Isaac_Jacob_Schoenberg.md "wikilink")，是基（basis）样条的缩略。

## 定义

给定*m*+1 个节点*t*<sub>*i*</sub> ，分布在\[0,1\]区间，满足

\[t_0 < t_1 < \ldots < t_m\]

一个*n*次**B样条**是一个[参数曲线](../Page/参数曲线.md "wikilink")：

\[\mathbf{S}:[0,1] \to \mathbb{R}^2\]

它由*n*次**B样条基(basis B-spline)**组成

\[\mathbf{S}(t)= \sum_{i=0}^{m} \mathbf{P}_{i} b_{i,n}(t) \mbox{ , } t \in [0,1]\].

**P**<sub>*i*</sub>称为**控制点**或**de Boor点**. *m*+1个*n*次B样条基可以用**Cox-de
Boor递归公式** 定义

\[b_{j,0}(t) := \left\{\begin{matrix}
1 & \mathrm{} \quad t_j < t < t_{j+1} \\
0 & \mathrm{...}
\end{matrix}
\right.\]

\[b_{j,n}(t) := \frac{t - t_{j}}{t_{j+n} - t_j} b_{j,n-1}(t) + \frac{t_{j+n+1} - t}{t_{j+n+1} - t_{j+1}} b_{j+1,n-1}(t).\]

当节点等距，称B样条为**均匀**(uniform)否则为**非均匀**(non-uniform)。

### 均匀B样条曲线

当B样条是均匀的时候，对于给定的*n*，每个B样条基是其他基的平移拷贝而已。一个可以作为替代的非递归定义是

\[b_{j,n}(t) := b_n(t + n - j) \qquad \mbox{ , } j = -1, \ldots m+1\]

满足

\[b_n(t) := (m+1) \sum_{i=0}^{m+1} \omega_i(t_i - t)_+^{m} \qquad \mbox{ , } t \in [0,1]\]

满足

\[\omega_i := \prod_{j=0, i \neq j}^{m+1} \frac{1}{t_i - t_k}\]

其中

\[(t_i - t)_+\]

是[截断幂函数](../Page/截断幂函数.md "wikilink")（truncated power function）

## 注解

当节点数和多项式次数相等时，B样条退化为贝济埃曲线。即函数的形状由节点的位置决定。[缩放或者](../Page/缩放.md "wikilink")[平移](../Page/平移.md "wikilink")[节点向量不会改变基函数](../Page/节点向量.md "wikilink")。

样条包含在它的控制点的[凸包中](../Page/凸包.md "wikilink")

*n*次B样条的一个基

\[b_{i,n}(t)\] 仅当在区间\[*t*<sub>*i*</sub>, *t*<sub>*i+n+1*</sub>\]上非0。就是

\[b_{i,n}(t) = \left\{\begin{matrix}
>0 & \mathrm{} \quad t_{i} \le t < t_{i+n+1} \\
0 & \mathrm{...}
\end{matrix}
\right.\] 换句话说，如果我们操作一个控制点，我们只改变曲线在局部的行为，而不像Bezier曲线那样是全局行为。

## 例子

### 常数B样条

常数B样条是最简单的样条。只定义在一个[节点距离上](../Page/节点距离.md "wikilink")，而且不是节点的[函数](../Page/函数.md "wikilink")。它只是不同节点段（knot
span）的[标志函数](../Page/标志函数.md "wikilink")（indicator function）。

\[b_{j,0}(t) = 1_{[t_j,t_{j+1})} =
\left\{\begin{matrix}
1 & \mathrm{} \quad t_j \le t < t_{j+1} \\
0 & \mathrm{...}
\end{matrix}
\right.\]

### 线性B样条

线性B样条定义在两个相邻的节点段上，在节点连续但不可微。

\[b_{j,1}(t) =
\left\{\begin{matrix}
\frac{t - t_j}{t_{j+1} - t_j} & \mathrm{if} \quad t_j \le t < t_{j+1} \\
\frac{t_{j+2} - t}{t_{j+2} - t_{j+1}} & \mathrm{ } \quad t_{j+1} \le t < t_{j+2} \\
0 & \mathrm{... }
\end{matrix}
\right.\]

### 三次B样条

一个片断上的B样条的表达式可以写作：

\[S_{i} (t) = \sum_{k=0}^3 \mathbf{P}_{i-3+k} b_{i-3+k,3} (t) \qquad \mbox{ , } t \in [0,1]\]

其中**S**<sub>*i*</sub>是第*i*个B样条片断而P是一个控制点集，*i*和*k*是局部控制点索引。控制点的集合会是\(P_i^w = ( w_i x_i, w_i y_i, w_i z_i, w_i)\)的集合，其中\(w_i\)是比重，当它增加时曲线会被拉向控制点\(P_i\)，在减小时则把曲线远离该点。

片段的整个集合*m*-2条曲线（\(S_3,S_4,...,S_m\)）由*m*+1个控制点（\(P_0,P_1,...,P_m, m \ge 3\)）定义，作为*t*上的一个B样条可以定义为

\[S(t) = \sum_{i=0}^m \mathbf{P}_{i} b_{i,} (t)\]

其中*i*是控制点数，*t*是取[节点值的全局参数](../Page/节点值.md "wikilink")。这个表达式把B样条表示为B样条基函数的线性组合，这也是这个名称的原因。

有两类B样条-均匀和非均匀。非均匀B样条相邻控制点间的距离不一定要相等。一个一般的形式是区间随着插入控制点逐步变小到0。

## B样条曲面

## B样条曲线及曲面相关算法

关于此处涉及的算法，在著作\[1\]中有针对Bézier、B样条（B-spline）以及[非均匀有理B样条](../Page/非均匀有理B样条.md "wikilink")（Nurbs）的相关算法的详细数学表达和程序实现方法。

### 求导

在几何处理中，对参数曲线及曲面的求导是最基本的运算之一，由于参数表达的特性，在给定点的切线及法线可通过求导直接得到。
先来考察曲线的情形：采用本页定义中的B样条曲线表达式
\(\mathbf{S}(t)= \sum_{i=0}^{m} \mathbf{P}_{i} b_{i,n}(t) \mbox{ , } t \in [0,1]\)
对参数\(t\)进行求导：
\(\frac{d\mathbf{S}}{dt} = \sum_{i=0}^{m} b'_{i,n}(t) \mathbf{P}_{i}\)

### 节点插入与删除

### 曲线及曲面拟合

## 应用

## 参看

  - [样条](../Page/样条.md "wikilink")
  - [De Boor算法](../Page/De_Boor算法.md "wikilink")
  - [非均匀有理B样条](../Page/非均匀有理B样条.md "wikilink")

## 参考

## 外部链接

  - [Interactive java applets for
    B-splines](http://www.ibiblio.org/e-notes/Splines/Basis.htm)
  - [Introduction to Computing with Geometry Notes
    (Dr.C.-K.Shene/Michigan Technological
    University)](http://www.cs.mtu.edu/~shene/COURSES/cs3621/NOTES/)

[de:Spline\#B-Splines](../Page/de:Spline#B-Splines.md "wikilink")

[Category:样条](https://zh.wikipedia.org/wiki/Category:样条 "wikilink")

1.  Les Piegl and Wayne Tiller: The NURBS Book, Springer-Verlag
    1995-1997 (2nd ed).