在[线性代数與](../Page/线性代数.md "wikilink")[数值分析中](https://zh.wikipedia.org/wiki/数值分析 "wikilink")，**LU分解**是[矩阵分解的一种](https://zh.wikipedia.org/wiki/矩阵分解 "wikilink")，将一个[矩阵分解为一个](../Page/矩阵.md "wikilink")[下三角矩阵和一个](../Page/三角矩阵.md "wikilink")[上三角矩阵的乘积](../Page/三角矩阵.md "wikilink")，有时需要再乘上一个[置换矩阵](../Page/置换矩阵.md "wikilink")。LU分解可以被視為[高斯消去法的矩陣形式](../Page/高斯消去法.md "wikilink")。在[数值计算上](https://zh.wikipedia.org/wiki/数值计算 "wikilink")，LU分解經常被用来解[线性方程组](../Page/线性方程组.md "wikilink")、且在求[反矩陣和计算](https://zh.wikipedia.org/wiki/反矩陣 "wikilink")[行列式中都是一個關鍵的步驟](../Page/行列式.md "wikilink")。

## 定义

對於[方阵](../Page/方块矩阵.md "wikilink") [\(A\)](../Page/方块矩阵.md "wikilink")，
\(A\) 的 **LU
分解**是将它分解成一個[下三角矩阵](https://zh.wikipedia.org/wiki/下三角矩阵 "wikilink")
L 與[上三角矩阵](https://zh.wikipedia.org/wiki/上三角矩阵 "wikilink") U 的乘積，也就是

\[A = LU\]

如果適當的改變 \(A\)的行的順序或列的順序，就可以將 \(A\)做 LU 分解。

舉例來說一个 \(3 \times 3\) 的矩阵 A ，其 LU 分解會寫成下面的形式：

\[A=
\begin{bmatrix}
           a_{11} & a_{12} & a_{13} \\
           a_{21} & a_{22} & a_{23} \\
           a_{31} & a_{32} & a_{33} \\
        \end{bmatrix} =
      \begin{bmatrix}
           l_{11} & 0 & 0 \\
           l_{21} & l_{22} & 0 \\
           l_{31} & l_{32} & l_{33} \\
        \end{bmatrix}
        \begin{bmatrix}
           u_{11} & u_{12} & u_{13} \\
           0 & u_{22} & u_{23} \\
           0 & 0 & u_{33} \\
        \end{bmatrix}\]。

事實上，並不是每個矩陣都有 LU 分解。例如，從上式可知 \(a_{11}=l_{11}u_{11}\)，若 \(a_{11}=0\)，則
\(l_{11}\)或 \(u_{11}\)等於 0，故 L 或 U
是[不可逆矩阵](https://zh.wikipedia.org/wiki/可逆矩阵 "wikilink")，A
必須也是[不可逆矩阵](https://zh.wikipedia.org/wiki/可逆矩阵 "wikilink")。然而，存在著[可逆矩阵](https://zh.wikipedia.org/wiki/可逆矩阵 "wikilink")
A 滿足 \(a_{11}=0\)，這些 A 就是沒有 LU 分解的例子。該問題可藉由置換 A 的各-{zh-hans:行;
zh-hant:列;}-順序來解決，最終會得到一個 A 的 PLU 分解。

### PLU 分解

方陣 A 的 **PLU 分解**是是将它分解成一个[置换矩阵](../Page/置换矩阵.md "wikilink")
P、一個[下三角矩阵](https://zh.wikipedia.org/wiki/下三角矩阵 "wikilink")
L 與[上三角矩阵](https://zh.wikipedia.org/wiki/上三角矩阵 "wikilink") U 的乘積，即

\[A = PLU\]

事實上，所有的方陣都可以寫成 PLU 分解的形式，由於左乘置換矩陣 \(P^{-1}\)是在交換行的順序，所以由
\(P^{-1}A = LU\)推得適當的交換 A 的行的順序，即可將 A 做 LU 分解。事實上，PLU
分解有很高的[數值穩定性](../Page/数值稳定性.md "wikilink")，因此實用上是很好用的工具。

有時為了計算上的方便，會同時間換行與列的順序，此時會將 A 分解成

\[A = PLUQ\]

其中 P、L、U 同上，Q 是一個[置換矩陣](https://zh.wikipedia.org/wiki/置換矩陣 "wikilink")。

### LDU 分解

方陣 A 的 **LDU
分解**是是将它分解成一個[單位下三角矩阵](https://zh.wikipedia.org/wiki/下三角矩阵 "wikilink")
L、[對角矩陣](../Page/對角矩陣.md "wikilink") D
與[單位上三角矩阵](https://zh.wikipedia.org/wiki/上三角矩阵 "wikilink")
U 的乘積，即

\[A = LDU\]

其中單位上、下三角矩陣是指对角线上全是 1 的上、下三角矩阵。

事實上，LDU 分解可以推廣到 A 是一般的矩陣，而非方陣。此時，L 和 D 是方陣，並且與 A 有相同的-{zh-hans:行;
zh-hant:列;}-，U 則有和 A 相同的長寬。注意到現在 U
是上三角的定義改為[主對角線的下方都是](https://zh.wikipedia.org/wiki/主對角線 "wikilink")
0，而主對角線是收集所有 \(U_{ij}\) 滿足 i=j。

## 存在性和唯一性

一个[可逆矩阵可以进行](https://zh.wikipedia.org/wiki/可逆矩阵 "wikilink")*LU*分解[当且仅当它的所有](../Page/当且仅当.md "wikilink")[子式都非零](https://zh.wikipedia.org/wiki/子式 "wikilink")。如果要求其中的*L*矩阵（或*U*矩阵）为单位三角矩阵，那么分解是唯一的。同理可知，矩阵的*LDU*可分解条件也相同，并且总是唯一的。

即使矩阵不可逆，*LU*仍然可能存在。实际上，如果一个[秩为](https://zh.wikipedia.org/wiki/矩阵的秩 "wikilink")*k*的矩阵的前*k*个顺序主子式不为零，那么它就可以进行*LU*分解，但反之则不然。

目前，在任意[域上一个方块矩阵可进行](https://zh.wikipedia.org/wiki/域 "wikilink")*LU*分解的充要条件已经被发现，这些充要条件可以用某些特定子矩阵的秩表示。用[高斯消元法来得到](../Page/高斯消去法.md "wikilink")*LU*分解的算法也可以扩张到任意域上。

任意矩阵*A*（不仅仅是方块矩阵）都可以进行*LUP*分解。其中的*L*和*U*矩阵是方阵，*P*矩阵则与*A*形状一样。

## 正定矩阵

如果矩阵*A*是[埃尔米特矩阵](../Page/埃尔米特矩阵.md "wikilink")，并且是[正定矩阵](../Page/正定矩阵.md "wikilink")，那么可以使，*U*是*L*的[共轭转置](../Page/共轭转置.md "wikilink")。也就是说，*A*可以写成

\[A = L L^{*}. \,\]
这个分解被称作[Cholesky分解](https://zh.wikipedia.org/wiki/Cholesky分解 "wikilink")。对每一个正定矩阵，Cholesky分解都唯一存在。此外，比起一般的*LU*分解，计算Cholesky分解更为快捷，并具有更高的[数值稳定性](../Page/数值稳定性.md "wikilink")。

## 具体的表达式

由于*LDU*分解唯一存在，对给定的矩阵，可以给出相应三个矩阵*L*、*D*和*U*的具体的表达式。表达式由*A*的[主子式之比构成](../Page/子式和余子式.md "wikilink")（因此要求它们不为零）。设\(d_1, d_2, \cdots d_n\)为矩阵*D*的对角线系数，则有\(d_1 =\mathbf{A}_{1,1}\)。对\(i = 2, \ldots, n\)，\(d_i\)的值等于*A*的第\(i\)个顺序主子式与第\(i-1\)个顺序主子式之比，其中约定\(d_0\)=1。

## 算法

*LU*分解在本质上是[高斯消元法的一种表达形式](../Page/高斯消去法.md "wikilink")。实质上是将*A*通过初等行变换变成一个上三角矩阵，其变换矩阵就是一个单位下三角矩阵。这正是所谓的杜尔里特算法（Doolittle
algorithm）：从下至上地对矩阵*A*做初等行变换，将对角线左下方的元素变成零，然后再证明这些行变换的效果等同于左乘一系列单位下三角矩阵，这一系列单位下三角矩阵的乘积的逆就是L矩阵，它也是一个单位下三角矩阵。

这类算法的复杂度一般在\(\frac{2n^3}{3}\)左右，对充分消元的分解则不然 。

### 杜尔里特算法

对给定的*N* × *N*矩阵

\[A= (a_{n,n})\] 有

\[A^{(0)} := A\] 然后定义对于*n* = 1,...,*N-1*的情况如下：

在第*n*步，消去矩阵*A*<sup>(*n-1*)</sup>的第*n*列主对角线下的元素：将*A*<sup>(*n-1*)</sup>的第*n*行乘以\(l_{i,n} := -\frac{a_{i,n}^{(n-1)}}{a_{n,n}^{(n-1)}}\)之后加到第*i*行上去。其中\(i = n+1,\ldots,N\)。

这相当于在*A*<sup>(*n-1*)</sup>的左边乘上一个单位下三角矩阵：

\[L_n =
\begin{pmatrix}
     1 &        &           &         &         & 0 \\
       & \ddots &           &         &         &   \\
       &        &         1 &         &         &   \\
       &        & l_{n+1,n} &  \ddots &         &   \\
       &        &    \vdots &         &  \ddots &   \\
     0 &        &   l_{N,n} &         &         & 1 \\
\end{pmatrix}.\]

于是，定义为：设

\[A^{(n)} := L_n A^{(n-1)}.\]

经过*N-1*轮操作后，所有在主对角线下的系数都为0了，于是我们得到了一个上三角矩阵：*A*<sup>(*N-1*)</sup>，这时就有：

\[A = L_{1}^{-1} L_{1} A^{(0)}
= L_{1}^{-1} A^{(1)} = L_{1}^{-1} L_{2}^{-1} L_{2} A^{(1)} =
L_{1}^{-1}L_{2}^{-1} A^{(2)} =\ldots = L_{1}^{-1} \ldots L_{N-1}^{-1} A^{(N-1)}.\]

这时，矩阵*A*<sup>(*N-1*)</sup> 就是*U*，\(L=L_{1}^{-1} \ldots L_{N-1}^{-1}\)。
下三角矩阵\(L_{k}\)的逆依然是下三角矩阵，而且下三角矩阵的乘积仍是下三角矩阵，所以\(L\)是下三角矩阵。
于是我们得到分解：\(A=LU\)。

显然，要是算法成立，在每步操作时必须有\(a_{n,n}^{(n-1)} \neq 0\)。如果这一条件不成立，就要将第*n*行和另一行交换，由此就会出现一个置换矩阵*P*。这就是为什么一般来说*LU*分解里会带有一个置换矩阵的原因。

## 例子

将一个简单的3×3矩阵*A*进行LU分解：

\[A=
        \begin{bmatrix}
           1 & 2 & 3 \\
           2 & 5 & 7 \\
           3 & 5 & 3 \\
        \end{bmatrix}\]

先将矩阵第一列元素中a<sub>11</sub>以下的所有元素变为0，即

\[L_{1}A=
        \begin{bmatrix}
           1 & 0 & 0 \\
          -2 & 1 & 0 \\
          -3 & 0 & 1 \\
        \end{bmatrix} \times
        \begin{bmatrix}
           1 & 2 & 3 \\
           2 & 5 & 7 \\
           3 & 5 & 3 \\
        \end{bmatrix}  =
        \begin{bmatrix}
           1 & 2 & 3 \\
           0 & 1 & 1 \\
           0 & -1 & -6 \\
        \end{bmatrix}\] 再将矩阵第二列元素中a<sub>22</sub>以下的所有元素变为0，即

\[L_{2}(L_{1}A)=
        \begin{bmatrix}
           1 & 0 & 0 \\
           0 & 1 & 0 \\
           0 & 1 & 1 \\
        \end{bmatrix} \times
        \begin{bmatrix}
           1 & 2 & 3 \\
           0 & 1 & 1 \\
           0 & -1 & -6 \\
        \end{bmatrix}  =
        \begin{bmatrix}
           1 & 2 & 3 \\
           0 & 1 & 1 \\
           0 & 0 & -5 \\
        \end{bmatrix} =U\]

\[L= L_{1}^{-1}L_{2}^{-1}=
        \begin{bmatrix}
           1 & 0 & 0 \\
           2 & 1 & 0 \\
           3 & 0 & 1 \\
        \end{bmatrix} \times
        \begin{bmatrix}
           1 & 0 & 0 \\
           0 & 1 & 0 \\
           0 & -1 & 1 \\
        \end{bmatrix} =
        \begin{bmatrix}
           1 & 0 & 0 \\
           2 & 1 & 0 \\
           3 & -1 & 1 \\
        \end{bmatrix}\]

还有一种方法是通过方程求解，如下所示，将以下矩阵进行*LU*分解：

\[\begin{bmatrix}
           4 & 3 \\
           6 & 3 \\
        \end{bmatrix} =
      \begin{bmatrix}
           l_{11} & 0 \\
           l_{21} & l_{22} \\
        \end{bmatrix}
        \begin{bmatrix}
           u_{11} & u_{12} \\
           0 & u_{22} \\
        \end{bmatrix}.\] 由于矩阵阶数只是2，可以直接列方程解：

\[l_{11}* u_{11} + 0 * 0 = 4\]

\[l_{11}* u_{12} + 0 * u_{22} = 3\]

\[l_{21}* u_{11} + l_{22} * 0 = 6\]

\[l_{21}* u_{12} + l_{22} * u_{22} = 3.\]
这个线性方程组有无数多组解。因此，可以假设其中一个是单位三角矩阵，比如说*L*，也就是说其对角线上的两个系数都是1。这时可以解出：

\[l_{21} = 1.5\]

\[u_{11} = 4\]

\[u_{12} = 3\]

\[u_{22} = -1.5\]。 也就是说

\[\begin{bmatrix}
           4 & 3 \\
           6 & 3 \\
        \end{bmatrix} =
      \begin{bmatrix}
           1 & 0 \\
           1.5 & 1 \\
        \end{bmatrix}
        \begin{bmatrix}
           4 & 3 \\
           0 & -1.5 \\
        \end{bmatrix}.\]

## 稀疏矩阵分解

对于阶数很大的[稀疏矩阵](../Page/稀疏矩阵.md "wikilink")，有特别的简便算法来获得其*LU*分解：这时的*L*和*U*也是稀疏矩阵。理论上来说，算法的复杂度约等于非零系数的个数，而不是矩阵的大小阶数。这些算法通过运用行和列的交换，使得过程中零系数因为操作而变成非零系数的次数减到最少。

一般的将零系数因为操作而变成非零系数的次数减到最少的方法是运用[图论](../Page/图论.md "wikilink")。

## 应用

### 求解线性方程

对于给定的线性方程组

\[A x = L U x = b \,\]

要解出*x*，可以进行一下步骤

1.  首先，解方程\(Ly = b\)得到\(y\)；
2.  然后解方程\(Ux = y\) 得到\(x\)。

在两次的求解中，我们遇到的都是三角矩阵，因此运用向前（向后）替代法就可以简洁地求解（参见[三角矩阵](../Page/三角矩阵.md "wikilink")），而不需要用到[高斯消元法](../Page/高斯消去法.md "wikilink")。然而，在将*A*进行*LU*分解时，仍然要用到[高斯消元法](../Page/高斯消去法.md "wikilink")。因此，这个方法适合在要对许多个不同的b求解时用。

### 求逆矩阵

求矩阵*A*的逆时，可以直接求*L*和*U*的逆矩阵，然后代入：\(A^{-1} = U^{-1}L^{-1}\)
。也可以将单位矩阵分解成*n*个列向量，然后用上面求解线性方程的方法解出逆矩阵的列向量，然后拼起来。后者的复杂度在*n*<sup>2</sup>级别，较高斯法为优。

### 计算行列式

矩阵\(L\)和\(U\)可以用来快速地计算矩阵\(A\)的[行列式](../Page/行列式.md "wikilink")，因为det(*A*)
= det(*L*) det(*U*)，而三角矩阵的行列式就是对角线元素的乘积。如果要求*L*
是单位三角矩阵，那么\(\det(A) = \det(L) \det(U) = \prod_{i=1}^n u_{ii}.\)

同样的方法也可以应用于*LUP*分解，只需乘上*P*的行列式，即相应置换的[符号差](https://zh.wikipedia.org/wiki/符号差 "wikilink")。

## 参见

  - [分块LU分解](https://zh.wikipedia.org/wiki/分块LU分解 "wikilink")
  - [Cholesky分解](https://zh.wikipedia.org/wiki/Cholesky分解 "wikilink")
  - [矩阵分解](https://zh.wikipedia.org/wiki/矩阵分解 "wikilink")
  - [LU约简](https://zh.wikipedia.org/wiki/LU约简 "wikilink")

## 参考来源

  -
  -
  - .

  - . See Section 3.5.

  - .

  - .

  - [LU
    decomposition](http://mathworld.wolfram.com/LUDecomposition.html) on
    *MathWorld*.

  - [LU decomposition](http://www.math-linux.com/spip.php?article51) on
    *Math-Linux*.

  - [LU
    decomposition](http://www.stat.nctu.edu.tw/misg/SUmmer_Course/C_language/Ch06/LUdecomposition.htm)

## 外部链接

  - [LAPACK](http://www.netlib.org/lapack/) is a collection of FORTRAN
    subroutines for solving dense linear algebra problems
  - [ALGLIB](http://www.alglib.net/) includes a partial port of the
    LAPACK to C++, C\#, Delphi, etc.
  - [Online Matrix Calculator](http://www.bluebit.gr/matrix-calculator/)
    performs LU decomposition
  - [LU
    decomposition](http://numericalmethods.eng.usf.edu/mws/gen/04sle/mws_gen_sle_txt_ludecomp.doc)
    at *Holistic Numerical Methods Institute*
  - [Module for LU Factorization with
    Pivoting](https://web.archive.org/web/20070609042305/http://math.fullerton.edu/mathews/n2003/LUFactorMod.html)
  - [LU
    Decomposition](http://demonstrations.wolfram.com/LUDecomposition/)
    by [Ed Pegg,
    Jr.](https://zh.wikipedia.org/wiki/Ed_Pegg,_Jr. "wikilink")，[The
    Wolfram Demonstrations
    Project](https://zh.wikipedia.org/wiki/The_Wolfram_Demonstrations_Project "wikilink")，2007.

[de:Gaußsches
Eliminationsverfahren\#LR-Zerlegung](https://zh.wikipedia.org/wiki/de:Gaußsches_Eliminationsverfahren#LR-Zerlegung "wikilink")

[Category:矩阵分解](https://zh.wikipedia.org/wiki/Category:矩阵分解 "wikilink")