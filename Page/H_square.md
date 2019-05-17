***H***<sup>2</sup>或**H-square**是[數學及](https://zh.wikipedia.org/wiki/數學 "wikilink")[控制理論的用語](https://zh.wikipedia.org/wiki/控制理論 "wikilink")，是指有平方范数的[哈代空間](../Page/哈代空間.md "wikilink")，是[*L*<sup>2</sup>空間的子集合](../Page/Lp空间.md "wikilink")，因此也是[希尔伯特空间](../Page/希尔伯特空间.md "wikilink")。特別的是，*H*<sup>2</sup>空間也是。

## 單位圓盤內的*H*<sup>2</sup>空間

一般而言，單位圓盤內*L*<sup>2</sup>空間的元素可以表示為

\[\sum_{n=-\infty}^\infty a_n e^{in\varphi}\]

而*H*<sup>2</sup>空間的元素可以表示為

\[\sum_{n=0}^\infty a_n e^{in\varphi}.\]

從*L*<sup>2</sup>空間到*H*<sup>2</sup>空間的映射（令*n* \< 0時的*a*<sub>*n*</sub> = 0）是orthogonal映射。

## 半平面中的*H*<sup>2</sup>空間

[拉氏轉換](https://zh.wikipedia.org/wiki/拉氏轉換 "wikilink") \(\mathcal{L}\)

\[[\mathcal{L}f](s)=\int_0^\infty e^{-st}f(t)dt\]

可以理解為以下的線性算子

\[\mathcal{L}:L^2(0,\infty)\to
H^2\left(\mathbb{C}^+\right)\]

其中\(L^2(0,\infty)\)為正實數線上[平方可積函數的集合](../Page/平方可積函數.md "wikilink")，且\(\mathbb{C}^+\)為複平面的右半平面，而且拉氏轉換也是[同构](../Page/同构.md "wikilink")（因為其可逆），而且[等距同构](../Page/等距同构.md "wikilink")，因為滿足下式

\[\|\mathcal{L}f\|_{H^2} = \sqrt{2\pi} \|f\|_{L^2}.\]

拉氏轉換是-{「}-半個-{」}-傅立葉轉換，因為以下的分解

\[L^2(\mathbb{R})=L^2(-\infty,0) \oplus L^2(0,\infty)\]

可以得到\(L^2(\mathbb{R})\)正交分解成兩個哈代空間

\[L^2(\mathbb{R})=
H^2\left(\mathbb{C}^-\right) \oplus
H^2\left(\mathbb{C}^+\right).\]

在本質上就是。

## 相關條目

  - [*H*<sub>∞</sub>](https://zh.wikipedia.org/wiki/H_infinity "wikilink")

## 參考資料

  - Jonathan R. Partington, "Linear Operators and Linear Systems, An
    Analytical Approach to Control Theory", *London Mathematical Society
    Student Texts **60***, (2004) Cambridge University Press, .

[Category:控制理论](https://zh.wikipedia.org/wiki/Category:控制理论 "wikilink")
[Category:数学分析](https://zh.wikipedia.org/wiki/Category:数学分析 "wikilink")