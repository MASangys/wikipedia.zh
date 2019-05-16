**自回归滑动平均模型**（**A**uto**r**egressive **m**oving **a**verage
model，簡稱：**ARMA模型**）。是研究[时间序列的重要方法](https://zh.wikipedia.org/wiki/時間序列_\(經濟學\) "wikilink")，由[自迴歸模型](../Page/自迴歸模型.md "wikilink")（简称AR模型）与[移动平均模型](https://zh.wikipedia.org/wiki/移动平均模型 "wikilink")（简称MA模型）为基础“混合”构成。在市场研究中常用于长期追踪资料的研究，如：[Panel研究中](https://zh.wikipedia.org/wiki/Panel研究 "wikilink")，用于消费行为模式变迁研究；在零售研究中，用于具有季节变动特征的销售量、市场规模的预测等。

## 自回归AR(*p*)模型

\[X_t = c + \sum_{i=1}^p \varphi_i X_{t-i}+ \varepsilon_t .\,\]
自回归模型描述的是当前值与历史值之间的关系。

## 移动平均MA(*q*)模型

\[X_t = \mu + \varepsilon_t + \sum_{i=1}^q \theta_i \varepsilon_{t-i}\,\]
移动平均模型描述的是自回归部分的误差累计。

## ARMA(*p*,*q*)模型

ARMA(*p*,*q*)模型中包含了*p*個自回归项和*q*個移动平均项，ARMA(*p*,*q*)模型可以表示为：

\[X_t = c + \varepsilon_t +  \sum_{i=1}^p \varphi_i X_{t-i} + \sum_{j=1}^q \theta_j \varepsilon_{t-j} \\]

### ARMA滞后算子表示法

有时ARMA模型可以用滞后算子（Lag operator）\(L\)
来表示，\(L^i X_t = X_{t-i}\)。这样AR(*p*)模型可以写成为：

\[\varepsilon_t = \left(1 - \sum_{i=1}^p \varphi_i L^i\right) X_t =  \varphi(L) X_t\,\]

其中\(\varphi\)表示[多项式](https://zh.wikipedia.org/wiki/多项式 "wikilink")

\[\varphi(L) = 1 - \sum_{i=1}^p \varphi_i L^i \,\]

MA(*q*)模型可以写成为：

\[X_t = \left(1 + \sum_{i=1}^q \theta_i L^i\right) \varepsilon_t = \theta(L) \varepsilon_t\,\]

其中θ 表示[多项式](https://zh.wikipedia.org/wiki/多项式 "wikilink")

\[\theta(L)= 1 + \sum_{i=1}^q \theta_i L^i \,\]

最后，ARMA(*p*,*q*)模型可以表示为：

\[\left(1 - \sum_{i=1}^p \varphi_i L^i\right) X_t = \left(1 + \sum_{i=1}^q \theta_i L^i\right) \varepsilon_t\,\]

或者

\[\varphi(L) X_t = \theta(L) \varepsilon_t.\,\]
若\(\varphi(L)=1\),则ARMA过程退化为MA(q)过程
若\(\theta(L)=1\),则ARMA过程退化为AR(p)过程。

## 相關條目

  - [自迴歸模型](../Page/自迴歸模型.md "wikilink")（AR模型）
  - [向量自回归模型](../Page/向量自回归模型.md "wikilink")（VAR模型）
  - [差分自回歸滑動平均模型](../Page/ARIMA模型.md "wikilink")（ARIMA模型）
  - [格蘭傑因果關係](../Page/格蘭傑因果關係.md "wikilink")（Granger Causality）

[Category:計量經濟學](https://zh.wikipedia.org/wiki/Category:計量經濟學 "wikilink")
[Category:統計學](https://zh.wikipedia.org/wiki/Category:統計學 "wikilink")
[Category:回歸分析](https://zh.wikipedia.org/wiki/Category:回歸分析 "wikilink")
[Category:时间序列](https://zh.wikipedia.org/wiki/Category:时间序列 "wikilink")
[Category:信号处理](https://zh.wikipedia.org/wiki/Category:信号处理 "wikilink")