**巴尼斯G函数**是[超级阶乘函数在](https://zh.wikipedia.org/wiki/階乘#超級階乘 "wikilink")[复数上的扩展](../Page/复数_\(数学\).md "wikilink")。它与[Γ函数](../Page/Γ函数.md "wikilink")、[K函数](../Page/K函数.md "wikilink")以及[格莱舍常数](https://zh.wikipedia.org/wiki/格莱舍常数 "wikilink")（Glaisher constant）有关。以[数学家](../Page/数学家.md "wikilink")[欧尼斯特·巴尼斯](https://zh.wikipedia.org/wiki/欧尼斯特·巴尼斯 "wikilink")（Ernest William Barnes）的名字命名。\[1\]

巴尼斯G函数可以通用[魏尔施特拉斯分解定理的形式定义为](https://zh.wikipedia.org/wiki/魏尔施特拉斯分解定理 "wikilink")：

\[G(z+1)=(2\pi)^{z/2} e^{-[z(z+1)+\gamma z^2]/2}\prod_{n=1}^\infty \left[\left(1+\frac{z}{n}\right)^ne^{-z+z^2/(2n)}\right].\] 其中，γ表示欧拉-马歇罗尼常数。

## 差分方程、函数方程与特殊值

巴尼斯G函数满足[差分方程](https://zh.wikipedia.org/wiki/差分方程 "wikilink")

\[G(z+1)=\Gamma(z)G(z).\]

特殊地，G(1)=1. 从此方程可推出G取整数自变量时有：

\[G(n)=\begin{cases} 0&\mbox{if }n=0,-1,-2,\dots\\ \prod_{i=0}^{n-2} i!&\mbox{if }n=1,2,\dots\end{cases}.\]

因此，

\[G(n)=\frac{(\Gamma(n))^{n-1}}{K(n)}.\] 其中，\(\Gamma(n)\)表示[Γ函数](../Page/Γ函数.md "wikilink")，\(K(n)\)表示[K函数](../Page/K函数.md "wikilink")。

另外，在满足条件\(\frac{d^3}{dx^3}G(x)\geq 0\)时，差分方程唯一确定一个G函数。\[2\].

由G函数的差分方程和Γ函数的函数方程可以得到（由Hermann Kinkelin提出）：

\[G(1-z) = G(1+z)\frac{ 1}{(2\pi)^z} \exp \int_0^z \pi x \cot \pi x \, dx.\]

## 乘法公式

与Γ函数一样，G函数也有其乘法公式：\(G(nz)= K(n) n^{n^{2}z^{2}/2-nz} (2\pi)^{-\frac{n^2-n}{2}z}\prod_{i=0}^{n-1}\prod_{j=0}^{n-1}G\left(z+\frac{i+j}{n}\right).\)

\[G(nz)= K(n) n^{n^{2}z^{2}/2-nz} (2\pi)^{-\frac{n^2-n}{2}z}\prod_{i=0}^{n-1}\prod_{j=0}^{n-1}G\left(z+\frac{i+j}{n}\right).\]

其中K是一个常数，定义为：

\[K(n)= e^{-(n^2-1)\zeta^\prime(-1)} \cdot
n^{\frac{5}{12}}\cdot(2\pi)^{(n-1)/2}\,=\,
(Ae^{-\frac{1}{12}})^{n^2-1}\cdot n^{\frac{5}{12}}\cdot (2\pi)^{(n-1)/2}.\]

其中\(\zeta^\prime\)表示[黎曼ζ函数的](https://zh.wikipedia.org/wiki/黎曼ζ函数 "wikilink")[导函数](https://zh.wikipedia.org/wiki/导函数 "wikilink")，\(A\)则表示为格莱舍常数。

\(\log \,G(z+1 )\)可[渐近展开](../Page/渐近展开.md "wikilink")为（由巴尼斯提出）：

\[\log G(z+1)=\frac{1}{12} - \log A + \frac{z}{2}\log 2\pi +\left(\frac{z^2}{2} -\frac{1}{12}\right)\log z -\frac{3z^2}{4}+
\sum_{k=1}^{N}\frac{B_{2k+2}}{4k\left(k+1\right)z^{2k}} + O\left(\frac{1}{z^{2N+2}}\right).\]

其中\(B_{k}\)为伯努利数，\(A\)为格莱舍常数。（需要注意的是，在巴尼斯的时代，伯努利数\(B_{2k}\)习惯写成\((-1)^{k+1} B_k\)。）

## 相关条目

  - [Γ函数](../Page/Γ函数.md "wikilink")
  - [K函数](../Page/K函数.md "wikilink")

## 参考

[Category:数论](https://zh.wikipedia.org/wiki/Category:数论 "wikilink") [Category:伽玛及相关函数](https://zh.wikipedia.org/wiki/Category:伽玛及相关函数 "wikilink")

1.  E.W.Barnes, "The theory of the G-function", *Quarterly Journ. Pure and Appl. Math.* **31** (1900), 264-314.
2.  M. F. Vignéras, *L'équation fonctionelle de la fonction zêta de Selberg du groupe mudulaire SL\((2,\mathbb{Z})\)*, Astérisque **61**, 235-249 (1979).