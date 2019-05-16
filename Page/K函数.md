**K函数**是[hyper阶乘函数在](https://zh.wikipedia.org/wiki/階乘#hyper阶乘 "wikilink")[复数上的扩展](../Page/复数_\(数学\).md "wikilink")，如同[Γ函数是](../Page/Γ函数.md "wikilink")[阶乘函数在复数上的扩展](https://zh.wikipedia.org/wiki/阶乘 "wikilink")。
K函数的定义为：

\[K(z)=(2\pi)^{(-z-1)/2} \exp\left[\begin{pmatrix} z\\ 2\end{pmatrix}+\int_0^{z-1} \ln(t!)\,dt\right].\]

还可以写成闭合形式：

\[K(z)=\exp\left[\zeta^\prime(-1,z)-\zeta^\prime(-1)\right].\]

其中，\(\zeta^\prime(z)\)表示[黎曼ζ函數的](../Page/黎曼ζ函數.md "wikilink")[导函数](https://zh.wikipedia.org/wiki/导函数 "wikilink")，而\(\zeta^\prime(a,z)\)则表示[赫维茨ζ函数的导函数](https://zh.wikipedia.org/wiki/赫维茨ζ函数 "wikilink")，即

\[\zeta^\prime(a,z)\ \stackrel{\mathrm{def}}{=}\ \left[\frac{d\zeta(s,z)}{ds}\right]_{s=a}.\]

另一种使用[多伽玛函数的表示形式是](../Page/多伽玛函数.md "wikilink")：\[1\]

\[K(z)=\exp\left(\psi^{(-2)}(z)+\frac{z^2-z}{2}-\frac z2 \ln (2\pi)\right).\]

或者使用[广义多伽玛函数表示为](https://zh.wikipedia.org/wiki/广义多伽玛函数 "wikilink")：\[2\]

\[K(z)=A e^{\psi(-2,z)+\frac{z^2-z}{2}}.\]
其中A表示[格莱舍常数](https://zh.wikipedia.org/wiki/格莱舍常数 "wikilink")（Glaisher
constant）。

K函数与[Γ函数和](../Page/Γ函数.md "wikilink")[巴尼斯G函数关系密切](../Page/巴尼斯G函数.md "wikilink")。对于自然数n，我们有：

\[K(n)=\frac{(\Gamma(n))^{n-1}}{G(n)}.\]

还可以更简单地写为：

\[K(n+1)=1^1\, 2^2\, 3^3 \cdots n^n.\]

前几项为：1、4、108、27648、86400000、4031078400000、3319766398771200000……([OEIS中的](https://zh.wikipedia.org/wiki/OEIS "wikilink")[第A002109号](https://web.archive.org/web/20100114020316/http://www.research.att.com/~njas/sequences/A002109)数列).

## 相关条目

  - [Γ函数](../Page/Γ函数.md "wikilink")
  - [巴尼斯G函数](../Page/巴尼斯G函数.md "wikilink")

## 参考

## 外部链接

  -
[Category:伽玛及相关函数](https://zh.wikipedia.org/wiki/Category:伽玛及相关函数 "wikilink")

1.  [Victor S. Adamchik. PolyGamma Functions of Negative
    Order](http://www.cs.cmu.edu/~adamchik/articles/polyg.htm)
2.  [Olivier Espinosa Victor H. Moll. A Generalized polygamma function.
    Integral Transforms and Special Functions Vol. 15, No. 2,
    April 2004,
    pp. 101–115](http://www.math.tulane.edu/~vhm/papers_html/genoff.pdf)