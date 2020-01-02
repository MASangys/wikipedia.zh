> 本文内容由[S函数](https://zh.wikipedia.org/wiki/S函数)转换而来。


[Sigmoid_function_01.png](https://zh.wikipedia.org/wiki/File:Sigmoid_function_01.png "fig:Sigmoid_function_01.png") [Sigmoid_function_02.png](https://zh.wikipedia.org/wiki/File:Sigmoid_function_02.png "fig:Sigmoid_function_02.png") **Sigmoid函数**得名因其形状像**S**字母。一种常见的S函数是[逻辑函数](https://zh.wikipedia.org/wiki/逻辑函数 "wikilink"):

\[S(t) = \frac{1}{1 + e^{-t}}.\]

其级数展开为：

\(s := 1/2+\frac{1}{4}t-\frac{1}{48}t^3+\frac{1}{480}t^5-\frac{17}{80640}t^7+\frac{31}{1451520}t^9-\frac{691}{319334400}t^{11}+O(t^{12})\)

## 常見的S函數

[Gjl-t(x).svg](https://zh.wikipedia.org/wiki/File:Gjl-t\(x\).svg "fig:Gjl-t(x).svg")

  - [邏輯函數](../Page/邏輯函數.md "wikilink")

\[f(x) = \frac{1}{1 + e^{-x}}\]

  - [雙曲正弦函數](../Page/双曲函数.md "wikilink") (等價於[邏輯函數](../Page/邏輯函數.md "wikilink")的平移與縮放)

\[f(x) = \tanh x = \frac{e^x-e^{-x}}{e^x+e^{-x}}\]

  - [反正切函數](../Page/反三角函数.md "wikilink")

\[f(x) = \arctan x\]

  - [古德曼函數](../Page/古德曼函數.md "wikilink")

\[f(x) = \operatorname{gd}(x) = \int_{0}^{x} \frac{1}{\cosh t} \, dt = 2\arctan\left(\tanh\left(\frac{x}{2}\right)\right)\]

  - [误差函数](../Page/误差函数.md "wikilink")

\[f(x) = \operatorname{erf}(x) = \frac{2}{\sqrt{\pi}}\int_0^x e^{-t^2} \, dt\]

  -
\[f(x) = (1+e^{-x})^{-\alpha}, \quad \alpha > 0\]

  -
\[f(x) = \begin{cases}
\displaystyle{
\frac{\int_{0}^{x} \bigl(1 - u^2 \bigr)^N \ du}
{\int_{0}^{1} {\bigl(1 - u^2 \bigr)^N \ du}}
}, & |x| \le 1 \\
\sgn(x) & |x| \ge 1 \\
\end{cases} \, \quad N \ge 1\]

  - 一些[代數函數](../Page/代數函數.md "wikilink"), 例如

\[f(x) = \frac{x}{\sqrt{1+x^2}}\]

所有連續非負的凸形函數的積分都是S函數，因此許多常見[概率分布](../Page/概率分布.md "wikilink")的[累积分布函数](../Page/累积分布函数.md "wikilink")會是S函數。一個常見的例子是[误差函数](../Page/误差函数.md "wikilink")，它是[正态分布](../Page/正态分布.md "wikilink")的累积分布函数。

## 参考资料

  - {{ cite book | first1=Tom M. |last1= Mitchell | title=Machine Learning | publisher=WCB–McGraw–Hill |year=1997

|isbn=0-07-042807-7}}. In particular see "Chapter 4: Artificial Neural Networks" (in particular pp. 96–97) where Mitchell uses the word "logistic function" and the "sigmoid function" synonymously – this function he also calls the "squashing function" – and the sigmoid (aka logistic) function is used to compress the outputs of the "neurons" in multi-layer neural nets.

  - Properties of the sigmoid, including how it can shift along axes and how its domain may be transformed.

## 参见

  - [函数](../Page/函数.md "wikilink")

[Category:特殊函数](https://zh.wikipedia.org/wiki/Category:特殊函数 "wikilink")