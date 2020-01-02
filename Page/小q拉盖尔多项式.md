> 本文内容由[小q拉盖尔多项式](https://zh.wikipedia.org/wiki/小q拉盖尔多项式)转换而来。


[Little_q-Laguerre_polynomials.gif](https://zh.wikipedia.org/wiki/File:Little_q-Laguerre_polynomials.gif "fig:Little_q-Laguerre_polynomials.gif") **小q拉盖尔多项式**是一个以[基本超几何函数](../Page/基本超几何函数.md "wikilink")定义的[正交多项式](https://zh.wikipedia.org/wiki/正交多项式 "wikilink")

\[\displaystyle  p_n(x;a|q) = {}_2\phi_1(q^{-n},0;aq;q,qx) = \frac{1}{(a^{-1}q^{-n};q)_n}{}_2\phi_0(q^{-n},x^{-1};;q,x/a)\]

## 极限关系

  - 大q拉盖尔多项式→小q拉盖尔多项式

在大q拉盖尔多项式中，令\(x \to  bqx\),并令\(b \to \infty\)即得小q拉盖尔多项式

\(\lim_{b \to \infty}P_{n}(bqx;a,b;q)=p_{n}(x;a|q)\)

[仿射Q克拉夫楚克多项式](https://zh.wikipedia.org/wiki/仿射Q克拉夫楚克多项式 "wikilink")→ 小q拉盖尔多项式：

\(\lim_{a \to 1}=K_{n}^{aff}(q^{x-N};p,N|q)=p_{n}(q^x;p,q)\) 令小q拉盖尔多项式 \(a=q^a\) \(x=(1-q)*x\),然后令q→1 即得[拉盖尔多项式](../Page/拉盖尔多项式.md "wikilink")

\(\lim_{q \to 1}P_{a}(1-q)x;q^a|q)=\frac{L_{n}^{(a)}(x)}{L_{n}^{(a)}(0)}\)

  - 验证 9阶小q拉盖尔多项式→拉盖尔多项式

作上述代换，

\(P_{a}(1-q)x;q^a|q) =1+{\frac {qx}{1-{q}^{\alpha}q}}-{\frac {x}{{q}^{8} \left( 1-{q}^{\alpha}q \right) }}\) \(+ \left( 1-{q}^{-9} \right)  \left( 1-{q}^{-8}
\right) {q}^{2} \left( 1-q \right) {x}^{2} \left( 1-{q}^{2} \right) ^
{-1} \left( 1-{q}^{\alpha}q \right) ^{-1} \left( 1-{q}^{\alpha}{q}^{2}
\right) ^{-1}\)\(+ \left( 1-{q}^{-9} \right)  \left( 1-{q}^{-8} \right)
\left( 1-{q}^{-7} \right) {q}^{3} \left( 1-q \right) ^{2}{x}^{3}
\left( 1-{q}^{2} \right) ^{-1}\)\(\left( 1-{q}^{3} \right) ^{-1} \left(
1-{q}^{\alpha}q \right) ^{-1} \left( 1-{q}^{\alpha}{q}^{2} \right) ^{-
1} \left( 1-{q}^{\alpha}{q}^{3} \right) ^{-1}+\cdots\)

求q→1极限得 [LimqLaguerre.JPG](https://zh.wikipedia.org/wiki/File:LimqLaguerre.JPG "fig:LimqLaguerre.JPG")

令a=3,得 \((1-{\frac {9}{4}}x+{\frac {9}{5}}{x}^{2}-{\frac {7}{10}}{x}^{3}+{
\frac {3}{20}}{x}^{4}-{\frac {3}{160}}{x}^{5}+{\frac {1}{720}}{x}^{6}-
{\frac {1}{16800}}{x}^{7}+{\frac {1}{739200}}{x}^{8}-{\frac {1}{
79833600}}{x}^{9})\)

另一方面

\(\frac{L_{n}^{(3)}(x)}{L_{n}^{(3)}(0)}\) =\((1-{\frac {9}{4}}x+{\frac {9}{5}}{x}^{2}-{\frac {7}{10}}{x}^{3}+{
\frac {3}{20}}{x}^{4}-{\frac {3}{160}}{x}^{5}+{\frac {1}{720}}{x}^{6}-
{\frac {1}{16800}}{x}^{7}+{\frac {1}{739200}}{x}^{8}-{\frac {1}{
79833600}}{x}^{9})\)

二者显然相等 QED

## 图集

|                                                                                                                                                                                                                                        |                                                                                                                                                                                                                                     |                                                                                                                                                                                                                                     |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [LITTLE_Q-LAGUERRE_POLYNOMIALS_ABS_COMPLEX_3D_MAPLE_PLOT.gif](https://zh.wikipedia.org/wiki/File:LITTLE_Q-LAGUERRE_POLYNOMIALS_ABS_COMPLEX_3D_MAPLE_PLOT.gif "fig:LITTLE_Q-LAGUERRE_POLYNOMIALS_ABS_COMPLEX_3D_MAPLE_PLOT.gif") | [LITTLE_Q-LAGUERRE_POLYNOMIALS_IM_COMPLEX_3D_MAPLE_PLOT.gif](https://zh.wikipedia.org/wiki/File:LITTLE_Q-LAGUERRE_POLYNOMIALS_IM_COMPLEX_3D_MAPLE_PLOT.gif "fig:LITTLE_Q-LAGUERRE_POLYNOMIALS_IM_COMPLEX_3D_MAPLE_PLOT.gif") | [LITTLE_Q-LAGUERRE_POLYNOMIALS_RE_COMPLEX_3D_MAPLE_PLOT.gif](https://zh.wikipedia.org/wiki/File:LITTLE_Q-LAGUERRE_POLYNOMIALS_RE_COMPLEX_3D_MAPLE_PLOT.gif "fig:LITTLE_Q-LAGUERRE_POLYNOMIALS_RE_COMPLEX_3D_MAPLE_PLOT.gif") |

|                                                                                                                                                                                                                              |                                                                                                                                                                                                                           |                                                                                                                                                                                                                           |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [LITTLE_Q-LAGUERRE_POLYNOMIALS_ABS_DENSITY_MAPLE_PLOT.gif](https://zh.wikipedia.org/wiki/File:LITTLE_Q-LAGUERRE_POLYNOMIALS_ABS_DENSITY_MAPLE_PLOT.gif "fig:LITTLE_Q-LAGUERRE_POLYNOMIALS_ABS_DENSITY_MAPLE_PLOT.gif") | [LITTLE_Q-LAGUERRE_POLYNOMIALS_IM_DENSITY_MAPLE_PLOT.gif](https://zh.wikipedia.org/wiki/File:LITTLE_Q-LAGUERRE_POLYNOMIALS_IM_DENSITY_MAPLE_PLOT.gif "fig:LITTLE_Q-LAGUERRE_POLYNOMIALS_IM_DENSITY_MAPLE_PLOT.gif") | [LITTLE_Q-LAGUERRE_POLYNOMIALS_RE_DENSITY_MAPLE_PLOT.gif](https://zh.wikipedia.org/wiki/File:LITTLE_Q-LAGUERRE_POLYNOMIALS_RE_DENSITY_MAPLE_PLOT.gif "fig:LITTLE_Q-LAGUERRE_POLYNOMIALS_RE_DENSITY_MAPLE_PLOT.gif") |

## 参考文献

  -
  -
  -
  -
  -
  -
[Category:正交多项式](https://zh.wikipedia.org/wiki/Category:正交多项式 "wikilink")