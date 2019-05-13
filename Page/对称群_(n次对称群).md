[Symmetric_group_4;_Cayley_graph_4,9.svg](https://zh.wikipedia.org/wiki/File:Symmetric_group_4;_Cayley_graph_4,9.svg "fig:Symmetric_group_4;_Cayley_graph_4,9.svg")\]\]

数学上，集合*X*上的**对称群**记作S<sub>*X*</sub>或Sym(*X*)。它的元素是所有*X*到*X*自身的双射组成的群。由于恒等函数是双射，双射的反函数也是双射，并且两个双射的复合仍是双射，这个集合关于函数的复合成为群，即是**置换群**Sym(*X*)。两个函数的复合一般记作*f*
o *g*，在置换群的表示里简记作*fg*。

对称群在很多不同的数学领域中，都扮演了重要角色。包括：伽罗华理论、不变量理论、李群的表示理论和组合学等等。

## 有限置换群

各种置换群中，有限集合上的置换群有着特殊的重要性。

  -
    令*X* = {1,...,*n*}，

称*X*上的对称群是S<sub>*n*</sub>。
*X*上所有的[排列构成了全部一一映射的集合](../Page/排列.md "wikilink")，因此，S<sub>*n*</sub>有[*n*\!个元素](../Page/阶乘.md "wikilink")。对*n*
\> 2，S<sub>*n*</sub>不是[阿贝尔群](../Page/阿贝尔群.md "wikilink")。当且仅当*n* ≤
4时，S<sub>*n*</sub>是[可解群](../Page/可解群.md "wikilink")。对称群的子群称为[置换群](../Page/置换群.md "wikilink")。

## 置换的乘积

对称群中，两个置换的乘积就是指双射函數的[复合](../Page/复合函数.md "wikilink")，由符号"∘"（）來表示，也可以省略。例如：

  -
    \(f = (1\ 3)(4\ 5)(2)=\begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 3 & 2 & 1 & 5 & 4\end{pmatrix}\)

<!-- end list -->

  -
    \(g = (1\ 2\ 5)(3\ 4)=\begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 2 & 5 & 4 & 3 & 1\end{pmatrix}\)

*f*与*g*的复合应先适用*g*，其后适用*f*。那么在*g*中的次序1将先被映射為元素2，然后再由
*f*的次序2变换成元素2，*g*的次序2先映射為5，然后由 *f*的次序5变换成4；3被
*f∘g*变换成5，如此类推。所以 *f*乘以*g*是：

  -
    \(fg = f\circ g = (1\ 2\ 4)(3\ 5)=\begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 2 & 4 & 5 & 1 & 3\end{pmatrix}\)

容易证明长度为L
=*k·m*的[轮换](../Page/对称群_\(n次对称群\)#轮换.md "wikilink")(或稱循環，如下節敘述)，它的*k*次方会分解为*k*个长度为*m*的轮换。比如(,
)：

  -
    \((1~2~3~4~5~6)^2 = (1~3~5) (2~4~6) ~\)。

## 对换

**对换**指只交换集合中的两个元素而使其他元素仍变换到自身的置换，例如(1 3)。每个置换都能写成一系列对换的乘积。比如上例中的*g* =
(1 2)(2 5)(3 4)。

由于*g*能被写成奇数个对换的乘积，*g*是一个**奇置换**。与此相反的，*f*是一个偶置换。

一个置换表达成对换乘积的方式不是唯一的，但每种表达方式中对换的个数的奇偶性不变，可以据此定义奇置换和偶置换。

两个偶置换的乘积是偶置换，两个奇置换的乘积是偶置换，奇置换和偶置换的乘积是奇置换，偶置换和奇置换的乘积是奇置换。于是可以定义置换的**正負號**（sign）：

\[\operatorname{sgn}(f)=\left\{\begin{matrix} +1, & \mbox{if }f\mbox { is even} \\ -1, & \mbox{if }f \mbox{ is odd} \end{matrix}\right.\]

在这个定义下，

  -
    sgn: S<sub>*n*</sub> → {+1,-1}

是一个[群同态](../Page/群同态.md "wikilink")。({+1,-1}关于乘法构成群)，这个同态的同态[核是所有的偶置换](../Page/核.md "wikilink")，称作[n次交错群](../Page/交错群.md "wikilink")，记作A<sub>*n*</sub>。它是S<sub>*n*</sub>的[正规子群](../Page/正规子群.md "wikilink")，有*n*\!
/ 2个元素。

置换的正負號也可以定义为：

\[\operatorname{sgn}(f)=(-1)^{n-O(n)}\]

其中n-O(n)表示置换*f*的**[轮换指数](../Page/轮换指数.md "wikilink")**，O(n)表示置换*f*的**[轨道](../Page/轨道.md "wikilink")**（orbit）数。群S<sub>*n*</sub>是A<sub>*n*</sub>和由一個單一對換生成的任何子群的[半直積](../Page/半直積.md "wikilink")。

## 轮换

**轮换**指一种置换*f*，使得对集合{1,...,*n*}中的某个*x*，*x*, *f*(*x*),
*f*<sup>2</sup>(*x*), ..., *f*<sup>*k*</sup>(*x*) =
*x*是*f*作用下不映射到自身的所有元素。比如说，以下的置换*h*

\[h = \begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 4 & 2 & 1 & 3 & 5\end{pmatrix}\]

就是一个轮换。因为*h*(1) = 4, *h*(3) = 1，*h*(4) =
3。2，5不变。我们将这个轮换记作(1 4 3)，它的长度是3。轮换的阶数等于它的长度。如果两个轮换移动的元素皆不相同，则称它们**不交**。不交的轮换是可交换的，例如(3 1 4)(2 5 6)
=
(2 5 6)(3 1 4)。每个S<sub>*n*</sub>中的元素都可以写成若干个互不相交的轮换的乘积。如果不计轮换的排列次序，这种表示是唯一的。

## 共轭类

S<sub>*n*</sub>的[共轭类是对于置换轮换表达的结构来说的](../Page/共轭类.md "wikilink")。两个置换共轭，当且仅当在它们的轮换表达中，轮换的数量以及长度都相等。比如说，在S<sub>5</sub>中，
(1 2 3)(4 5)与(1 4 3)(2 5)共轭，但不与(1 2)(4 5)共轭。

## 凱萊定理

  -
    凱萊定理：任意群G都与某个[变换群同构](../Page/变换群.md "wikilink")。

推论：任意有限群都与某个[置换群同构](../Page/置换群.md "wikilink")。

## 參見

  - [楊對稱化子](../Page/楊對稱化子.md "wikilink")

[Category:置换群](https://zh.wikipedia.org/wiki/Category:置换群 "wikilink")
[Category:有限群](https://zh.wikipedia.org/wiki/Category:有限群 "wikilink")
[Category:抽象代数](https://zh.wikipedia.org/wiki/Category:抽象代数 "wikilink")
[Category:对称](https://zh.wikipedia.org/wiki/Category:对称 "wikilink")