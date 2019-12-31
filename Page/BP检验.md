> 本文内容由[BP检验](https://zh.wikipedia.org/wiki/BP检验)转换而来。


在[统计学](../Page/统计学.md "wikilink")中，**BP检验**（）是1979年由和提出的方法\[1\]，用来检验[线性回归模型中是否存在](https://zh.wikipedia.org/wiki/线性回归 "wikilink")[异方差的问题](https://zh.wikipedia.org/wiki/异方差 "wikilink")。另外，和韦斯伯格在1983年独立地提出了类似的方法\[2\]。异方差的存在意味着模型的[方差](../Page/方差.md "wikilink")与[自变量是相关的](https://zh.wikipedia.org/wiki/自变量 "wikilink")。

设回归模型为

\[y = \beta_0 + \beta_1 x + u, \,\]

对其进行回归可以得到一组残差\(\widehat{u}\)。要求方差与[自变量无关](https://zh.wikipedia.org/wiki/自变量 "wikilink")，这时方差可以由残差平方和的平均值估计得到。但如果这个前提不成立，例如方差与自变量线性相关，就可以通过下列辅助回归，即残差平方对自变量进行回归检验出来：

\[\widehat{u}^2 = \gamma_0 + \gamma_1 x + v.\,\]

这就是BP检验的一个情形。它实质上是[卡方检验](../Page/卡方检验.md "wikilink")，检验统计量[渐进于](https://zh.wikipedia.org/wiki/渐进分布 "wikilink")[\(n\chi^2\)](https://zh.wikipedia.org/wiki/卡方分布 "wikilink")，自由度与除常数项外的解释变量数相等。如果得到的[p值小于一定阈值](https://zh.wikipedia.org/wiki/p值 "wikilink")（如0.05）就可以拒绝零假设并认为异方差存在。

如果BP检验表明存在异方差存在，可以视情况使用（适用于异方差的分布已知时）或方法。

## 流程

根据[高斯-马尔可夫定理](../Page/高斯-马尔可夫定理.md "wikilink")，在同方差的前提下，普通最小二乘估计是最佳的线性[无偏估计](https://zh.wikipedia.org/wiki/无偏估计 "wikilink")，意即其方差相较其他任何估计量都更小。如果异方差存在，估计结果仍是无偏的，但其方差并不是最小的。在决定使用哪种估计方法之前，可以先进行BP测试来判断是否存在异方差。BP检验的前提是方差\(\sigma_i^2 = h(x_i^T\gamma)\)与各个自变量有关，其中\(x_i = (1, x_{2i}, \ldots, x_{pi})\)是自变量，这里除去常数项以外共有\(p-1\)个解释变量。[零假设](../Page/零假设.md "wikilink")亦即异方差不存在等价于\((p - 1)\)个约束：

\[\gamma_2 = \cdots = \gamma_p = 0.\]

BP测试分为以下三个步骤：\[3\]

  - 第一步：对原始模型进行普通最小二乘估计

<!-- end list -->

  -

      -
        <math>

y = X\\beta+\\varepsilon </math> 并对每个观测都计算出残差\(e_i\)。

  - 第二步：进行下列辅助回归

<!-- end list -->

  -

      -
        <math>

e_i^2=\\gamma_1+\\gamma_2x_{2i}+\\cdots+\\gamma_px_{pi}+\\eta_i </math>

  - 第三步：检验统计量LM等于第二步中辅助回归的[决定系数](../Page/决定系数.md "wikilink")乘以样本大小\(n\)：

<!-- end list -->

  -

      -
        <math>

\\text{LM}=nR^2\\, . </math> 如果同方差的零假设成立，LM统计量是[渐进于](https://zh.wikipedia.org/wiki/渐进分布 "wikilink")\(\chi^2_{p - 1}\)分布的\[4\]。

## 软件实现

在[R语言](../Page/R语言.md "wikilink")中，能够完成BP检验的函数包括`car`[包中的](https://zh.wikipedia.org/wiki/R语言#套件 "wikilink")`ncvTest`函数\[5\]、`lmtest`包中的`bptest`函数\[6\]\[7\]以及`plm`包中的`plmtest`函数\[8\]等。

而[Stata中计算回归后使用](https://zh.wikipedia.org/wiki/Stata "wikilink")`estat hettest`命令，参数填写所有独立变量，即可进行BP检验\[9\]\[10\]。

在[Python](../Page/Python.md "wikilink")中，`statsmodels.stats.diagnostic`（`statsmodels`包）中的函数`het_breuschpagan`可进行BP检验\[11\]。

## 参见

  -
## 参考文献

## 拓展阅读

  -
  -
  -
  -
[Category:统计检验](https://zh.wikipedia.org/wiki/Category:统计检验 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.