**大O符号**（），又稱為**漸進符號**，是用于描述[函数](../Page/函数.md "wikilink")[渐近行为的](../Page/渐近分析.md "wikilink")[数学符号](../Page/数学.md "wikilink")。更确切地说，它是用另一个（通常更简单的）函数来描述一个函数[数量级的](../Page/数量级.md "wikilink")**渐近上界**。在[数学中](../Page/数学.md "wikilink")，它一般用来刻画被截断的[无穷级数尤其是](../Page/无穷级数.md "wikilink")[渐近级数的剩余项](../Page/渐近级数.md "wikilink")；在[计算机科学中](../Page/计算机科学.md "wikilink")，它在[分析](../Page/算法分析.md "wikilink")[算法](../Page/算法.md "wikilink")[复杂性的方面非常有用](../Page/計算複雜性理論.md "wikilink")。

大O符号是由[德国](../Page/德国.md "wikilink")[数论学家](../Page/数论.md "wikilink")在其1892年的著作《解析数论》（*Analytische
Zahlentheorie*）首先引入的。而这个记号则是在另一位德国数论学家的著作中才推广的，因此它有时又称为**朗道符号**（Landau
symbols）。代表“order of
...”（……阶）的大**O**，最初是一个大写[希腊字母](../Page/希腊字母.md "wikilink")“[Ο](../Page/Ο.md "wikilink")”（omicron），现今用的是大写[拉丁字母](../Page/拉丁字母.md "wikilink")“[O](../Page/O.md "wikilink")”。

## 使用

### 无穷大渐近

大O符号在分析算法效率的时候非常有用。举个例子，解决一个规模为\(n\)的问题所花费的时间（或者所需步骤的数目）可以表示為：\(T(n)=4n^2-2n+2\)。当\(n\)增大时，\(n^2\)项将开始占主导地位，而其他各项可以被忽略。举例说明：当\(n=500\)，\(4n^2\)项是\(2n\)项的1000倍大，因此在大多数场合下，省略后者对表达式的值的影响将是可以忽略不计的。

进一步看，如果我们与任一其他级的表达式比较，\(n^2\)项的[系数也是无关紧要的](../Page/系数.md "wikilink")。例如：一个包含\(n^3\)或\(n^2\)项的表达式，即使\(T(n)=1,000,000\cdot n^2\)，假定\(U(n)=n^3\)，一旦\(n\)增长到大于1,000,000，后者就会一直超越前者（\(T(1,000,000)=1,000,000^3=U(1,000,000)\)）。

这样，針對第一個例子\(T(n)=4n^2-2n+2\), 大O符号就记下剩余的部分，写作：

\[T(n)\in\Omicron(n^2)\] 或

\[T(n)=\Omicron(n^2)\]

并且我们就说该算法具有\(n^2\)阶（平方阶）的[时间复杂度](../Page/时间复杂度.md "wikilink")。

### 无穷小渐近

大O也可以用来描述数学函数估计中的误差项。例如\(e^x\)的[泰勒展开](../Page/泰勒展开.md "wikilink")：

\[e^x=1+x+\frac{x^2}{2}+\hbox{O}(x^3)\qquad\]当\(x \to 0\)时

这表示，如果\(x\)足够接近于0，那么误差\(e^x - \left(1 + x + \frac{x^2}{2}\right)\)的[绝对值小于](../Page/绝对值.md "wikilink")\(x^3\)的某一常数倍。

注：泰勒展开的误差余项\(r_3(x)\)是关于\(x^3\)一个高阶无穷小量，用小o来表示，即：\(r_3(x)\)=\(o(x^3)\)，\(\textstyle \lim_{x \to 0} \displaystyle \frac{r_3(x)}{x^3}=0\)

## 形式化定义

給定兩個定義在[實數某子集上的關於](../Page/實數.md "wikilink")\(x\)的函數\(f(x)\)和\(g(x)\)，當\(x\)趨近於無窮大時，[當且僅當存在正常數](../Page/當且僅當.md "wikilink")\(M\)，使得對於所有足夠大（[sufficiently_large](https://en.wikipedia.org/wiki/List_of_mathematical_jargon#sufficiently_large)）的\(x\)，都有\(f(x)\)的絕對值小於等於\(M\)乘以\(g(x)\)的絕對值，那麼我們就可以說，當\(x \to \infty\)時，

\[f(x)=\Omicron(g(x))\]

也就是說，假如[當且僅當存在正實數](../Page/當且僅當.md "wikilink")\(M\)和實數\(x\)<sub>0</sub>，使得對於所有的\(x \ge x_0\)，均有：\(|f(x)| \le \ M |g(x)|\)成立，我們就可以認爲，\(f(x)=\Omicron(g(x))\)。

在很多情況下，我們會省略“當\(x\)趨近於無限大時”這個前提，而簡寫爲：

\[f(x)=\Omicron(g(x))\]

此概念也可以用於描述函數\(f\)在接近實數\(a\)時的行爲，通常\(a = 0\)。當我們說，當\(x \to a\)時，有\(f(x)=\Omicron(g(x))\)，也就相當於稱，[當且僅當存在正實數](../Page/當且僅當.md "wikilink")\(M\)和實數\(\delta\)，使得對於所有的\(0 \le |x - a| \le \delta\)，均有\(|f(x)| \le \ M |g(x)|\)成立。

如果當\(x\)和\(a\)足夠接近（[sufficiently_close](https://en.wikipedia.org/wiki/List_of_mathematical_jargon#sufficiently_large)）時，\(g(x)\)的值仍不爲0，這兩種定義就可以統一用[上極限來表示](../Page/上極限.md "wikilink")：

  -
    當且僅當\(\limsup_{x\to a} \left|\frac{f(x)}{g(x)}\right| < \infty\)時，有\(f(x)=\Omicron(g(x))\)。

## 例子

在具体的运用中，我们不一定使用大O符号的标准定义，而是使用几条简化规则来求出关于函数\(f\)的大O表示：

  - 假如\(f(x)\)是几项之和，那么只保留增长最快（通常是阶最高）的项，其他项省略。
  - 假如\(f(x)\)是几项之积，那么常数（不取决于x的乘数）省略。

比如，使\(f(x) = 6x^4 - 2x^3 + 5\)，我们想要用大O符号来简化这个函数，来描述\(x\)接近无穷大时函数的增长情况。此函数由三项相加而成，\(6x^4\)，\(-2x^3\)和\(5\)。由于增长最快的是\(6x^4\)这一项（因为阶最高，在x接近无穷大时，其对和的影响会大大超过其余两项），应用第一条规则，保留它而省略其他两项。对于\(6x^4\)，由两项相乘而得，\(6\)和\(x^4\)；应用第二条规则，\(6\)是无关x的常数，所以省略。最后结果为\(x^4\)，也即\(g(x) = x^4\)。故有：

  -
    由\(f(x) = \Omicron(g(x))\)，可得：
    \(6x^4 - 2x^3 + 5 = O(x^4)\)

我们可以将上式扩展为标准定义形式：

  -
    对任意\(x \ge x_0\)，均有\(|f(x)| \le M|g(x)|\)，也就是\(6x^4 - 2x^3 + 5 \le M|x^4|\)

可以（粗略）求出\(M\)和\(x_0\)的值来验证。使\(x_0=1\)：

\[\begin{align}|6x^4 - 2x^3 + 5| &\le 6x^4 + |2x^3| + 5\\
                                      &\le 6x^4 + 2x^4 + 5x^4\\
                                      &\le 13x^4\end{align}\]

故\(M\)可以为13。故两者都存在。

## 常用的函数阶

下面是在[分析算法的时候常见的函数分类列表](../Page/算法分析.md "wikilink")。所有这些函数都处于\(n\)趋近于无穷大的情况下，增长得慢的函数列在上面。\(c\)是一个任意常数。

| 符号                                             | 名称                                                                       |
| ---------------------------------------------- | ------------------------------------------------------------------------ |
| \(\Omicron(1)\!\)                              | [常数](../Page/常数.md "wikilink")（阶，下同）                                     |
| \(\Omicron(\log n)\!\)                         | [对数](../Page/对数.md "wikilink")                                           |
| \(\Omicron[(\log n)^c]\!\)                     | [多对数](../Page/多对数.md "wikilink")                                         |
| \(\Omicron(n)\!\)                              | [线性](../Page/线性.md "wikilink")，次线性                                       |
| \(\Omicron(n\log^*n)\!\)                       | \(\log^*n\)為[迭代对数](../Page/迭代对数.md "wikilink")                           |
| \(\Omicron(n \log n)\!\)                       | [线性对数](../Page/线性对数.md "wikilink")，或对数线性、拟线性、超线性                         |
| \(\Omicron( n^2)\!\)                           | [平方](../Page/平方.md "wikilink")                                           |
| \(\Omicron(n^c), \operatorname{Integer}(c>1)\) | [多项式](../Page/多项式.md "wikilink")，有时叫作“代数”（阶）                             |
| \(\Omicron(c^n)\!\)                            | [指数](../Page/指数.md "wikilink")，有时叫作“[几何](../Page/等比数列.md "wikilink")”（阶） |
| \(\Omicron(n!)\!\)                             | [阶乘](../Page/阶乘.md "wikilink")，有时叫做“组合”（阶）                               |

## 一些相关的渐近符号

大O是最经常使用的比较函数的渐近符号。

| 符号                       | 定义                                                                                   |
| ------------------------ | ------------------------------------------------------------------------------------ |
| \(f(n)=\Omicron (g(n))\) | 渐近上限                                                                                 |
| \(f(n)=o(g(n))\)         | Asymptotically negligible渐近可忽略不计（\(\lim{} \frac{f(n)}{g(n)} = 0\)）                   |
| \(f(n)=\Omega(g(n))\)    | 渐近下限（[当且仅当](../Page/当且仅当.md "wikilink")\(g(n) = \Omicron(f(n))\)）                    |
| \(f(n) = \omega (g(n))\) | Asymptotically dominant渐近主导（当且仅当\(g(n)=o(f(n))\)）                                    |
| \(f(n) = \Theta(g(n))\)  | Asymptotically tight bound渐近紧约束（当且仅当\(f(n) = \Omicron(g(n))\)且\(f(n)=\Omega(g(n))\)） |

## 注意

大O符号经常被误用：有的作者可能会使用大O符号表达[大Θ符号的含义](../Page/大Θ符号.md "wikilink")。因此在看到大O符号时应首先确定其是否为误用。

## 参看

  - [O](../Page/O.md "wikilink")（拉丁字母）
  - [大Ω符号](../Page/大Ω符号.md "wikilink")
  - [大Θ符号](../Page/大Θ符号.md "wikilink")

## 参考文献

### 引用

### 来源

  - 书籍

<!-- end list -->

  - 严蔚敏、吴伟民：《数据结构：C语言版》. 清华大学出版社，1996. ISBN 7-302-02368-9. 1.4节
    算法和算法分析，pp. 14-17.
  - 朱青：《計算機算法與程序設計》. 清华大学出版社，2009.10。ISBN 978-7-302-20267-7. 1.4节
    算法的複雜性分析，pp. 16-17.

## 延伸閱讀

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
[Category:算法分析](https://zh.wikipedia.org/wiki/Category:算法分析 "wikilink")
[Category:數學表示法](https://zh.wikipedia.org/wiki/Category:數學表示法 "wikilink")
[Category:数学符号](https://zh.wikipedia.org/wiki/Category:数学符号 "wikilink")
[Category:渐近分析](https://zh.wikipedia.org/wiki/Category:渐近分析 "wikilink")