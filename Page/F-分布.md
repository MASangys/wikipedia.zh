> 本文内容由[F-分布](https://zh.wikipedia.org/wiki/F-分布)转换而来。


{(d_1\\,x+d_2)^{d_1+d_2}}}} {x\\,\\mathrm{B}\\\!\\left(\\frac{d_1}{2},\\frac{d_2}{2}\\right)}\\\!</math> |cdf = \(I_{\frac{d_1 x}{d_1 x + d_2}}(d_1/2, d_2/2)\!\) |mean = \(\frac{d_2}{d_2-2}\!\) for \(d_2 > 2\) |median = |mode = \(\frac{d_1-2}{d_1}\;\frac{d_2}{d_2+2}\!\) for \(d_1 > 2\) |variance = \(\frac{2\,d_2^2\,(d_1+d_2-2)}{d_1 (d_2-2)^2 (d_2-4)}\!\) for \(d_2 > 4\) |skewness = \(\frac{(2 d_1 + d_2 - 2) \sqrt{8 (d_2-4)}}{(d_2-6) \sqrt{d_1 (d_1 + d_2 -2)}}\!\)
for \(d_2 > 6\) |kurtosis = *见下文* |entropy = |mgf = |char = }}

在[概率论和](https://zh.wikipedia.org/wiki/概率论 "wikilink")[统计学](../Page/统计学.md "wikilink")里，***F*-分布**（*F*-distribution）是一种[连续概率分布](../Page/概率分布.md "wikilink")，\[1\]\[2\]\[3\]\[4\]被广泛应用于[似然比率检验](https://zh.wikipedia.org/wiki/似然比率检验 "wikilink")，特别是[ANOVA中](../Page/方差分析.md "wikilink")。

## 定义

如果[随机变量](../Page/随机变量.md "wikilink") *X* 有参数为 *d*<sub>1</sub> 和 *d*<sub>2</sub> 的 *F*-分布，我们写作 *X* \~ F(*d*<sub>1</sub>, *d*<sub>2</sub>)。那么对于实数 *x* ≥ 0，*X* 的[概率密度函数](https://zh.wikipedia.org/wiki/概率密度函数 "wikilink") (pdf)是

\[\begin{align}
f(x; d_1,d_2) &= \frac{\sqrt{\frac{(d_1\,x)^{d_1}\,\,d_2^{d_2}} {(d_1\,x+d_2)^{d_1+d_2}}}} {x\,\mathrm{B}\!\left(\frac{d_1}{2},\frac{d_2}{2}\right)} \\
&=\frac{1}{\mathrm{B}\!\left(\frac{d_1}{2},\frac{d_2}{2}\right)} \left(\frac{d_1}{d_2}\right)^{\frac{d_1}{2}} x^{\frac{d_1}{2} - 1} \left(1+\frac{d_1}{d_2}\,x\right)^{-\frac{d_1+d_2}{2}}
\end{align}\]

这里\(\mathrm{B}\)是[B函数](https://zh.wikipedia.org/wiki/B函数 "wikilink")。在很多应用中，参数 *d*<sub>1</sub> 和 *d*<sub>2</sub> 是[正整数](https://zh.wikipedia.org/wiki/正整数 "wikilink")，但对于这些参数为正实数时也有定义。

[累积分布函数](../Page/累积分布函数.md "wikilink")为

\[F(x; d_1,d_2)=I_{\frac{d_1 x}{d_1 x + d_2}}\left (\tfrac{d_1}{2}, \tfrac{d_2}{2} \right) ,\]

其中 *I* 是[正则不完全贝塔函数](https://zh.wikipedia.org/wiki/B函数#不完全贝塔函数 "wikilink")。

右边表格中已给出[期望值](../Page/期望值.md "wikilink")、[方差](../Page/方差.md "wikilink")和[偏度](../Page/偏度.md "wikilink")；对于\(d_2>8\)，[峰度](../Page/峰度.md "wikilink")为：

\[\gamma_2 = 12\frac{d_1(5d_2-22)(d_1+d_2-2)+(d_2-4)(d_2-2)^2}{d_1(d_2-6)(d_2-8)(d_1+d_2-2)}\].

## 特征

一个*F*-分布的[随机变量](../Page/随机变量.md "wikilink")是两个[卡方分佈](../Page/卡方分佈.md "wikilink")变量除以自由度的比率：

\[\frac{U_1/d_1}{U_2/d_2}
=
\frac{U_1/U_2}{d_1/d_2}\]

其中：

  - *U*<sub>*1*</sub>和*U*<sub>2</sub>呈[卡方分佈](../Page/卡方分佈.md "wikilink")，它们的[自由度](../Page/自由度_\(统计学\).md "wikilink")（degree of freedom）分别是*d*<sub>*1*</sub>和*d*<sub>2</sub>。
  - *U*<sub>1</sub>和*U*<sub>2</sub>是相互独立的。

## 参考文献

[Category:统计学](https://zh.wikipedia.org/wiki/Category:统计学 "wikilink") [Category:连续分布](https://zh.wikipedia.org/wiki/Category:连续分布 "wikilink")

1.
2.
3.  NIST (2006). [Engineering Statistics Handbook – F Distribution](http://www.itl.nist.gov/div898/handbook/eda/section3/eda3665.htm)
4.