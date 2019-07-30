**ARCH模型**（**A**uto**r**egressive **c**onditional **h**eteroskedasticity model，全称：**自回归条件异方差模型**），解决了传统的[计量经济学](../Page/计量经济学.md "wikilink")对[时间序列变量的第二个假设](https://zh.wikipedia.org/wiki/时间序列 "wikilink")（[變異數恆定](https://zh.wikipedia.org/wiki/變異數 "wikilink")）所引起的问题。这个模型是获得2003年[诺贝尔经济学奖](../Page/诺贝尔经济学奖.md "wikilink")的[计量经济学](../Page/计量经济学.md "wikilink")成果之一。

## 起源

传统的[计量经济学](../Page/计量经济学.md "wikilink")对[时间序列变量的第二个假设](https://zh.wikipedia.org/wiki/时间序列 "wikilink")：假定[时间序列变量的波动幅度](https://zh.wikipedia.org/wiki/时间序列 "wikilink")（[方差](../Page/方差.md "wikilink")）是固定的，不符合实际，比如，人们早就发现[股票](../Page/股票.md "wikilink")[收益的波动幅度是随时间而变化的](https://zh.wikipedia.org/wiki/收益 "wikilink")，并非[常数](https://zh.wikipedia.org/wiki/常数 "wikilink")。这使得传统的[时间序列分析对实际问题并不有效](https://zh.wikipedia.org/wiki/时间序列 "wikilink")。

[罗伯特·恩格尔在](https://zh.wikipedia.org/wiki/罗伯特·恩格尔 "wikilink")1982年发表在《[计量经济学](../Page/计量经济学.md "wikilink")》杂志（Econometrica）的一篇论文中提出了ARCH模型解决了[时间序列的波动性](https://zh.wikipedia.org/wiki/时间序列 "wikilink")（volatility）问题，当时他研究的是[英国](https://zh.wikipedia.org/wiki/英国 "wikilink")[通货膨胀率的波动性](https://zh.wikipedia.org/wiki/通货膨胀率 "wikilink")。

## ARCH模型内涵

以\(\varepsilon_t\)表示收益或者收益残差，假设\(\varepsilon_t=\sigma_t z_t\)，此处\(z_t\sim iid\ N(0,1)\)（即[独立同分布](../Page/独立同分布.md "wikilink")，均符合[期望为](https://zh.wikipedia.org/wiki/期望 "wikilink")0，[方差](../Page/方差.md "wikilink")为1的[正态分布](../Page/正态分布.md "wikilink")）此处序列\(\sigma_t^2\)建模为

\[\sigma_t^2=\alpha_0+\alpha_1 \varepsilon_{t-1}^2+\cdots+\alpha_p \varepsilon_{t-p}^2\]

（其中\(\alpha_0>0 , \alpha_i\ge 0 , i>0\)，即各期[收益以](https://zh.wikipedia.org/wiki/收益 "wikilink")[非负数](https://zh.wikipedia.org/wiki/非负数 "wikilink")[线性组合](https://zh.wikipedia.org/wiki/线性组合 "wikilink")，[常数项为](https://zh.wikipedia.org/wiki/常数项 "wikilink")[正数](https://zh.wikipedia.org/wiki/正数 "wikilink")。

## GARCH模型

如果方差用[ARMA模型](../Page/ARMA模型.md "wikilink")来表示，则ARCH模型的变形为[GARCH模型](https://zh.wikipedia.org/wiki/GARCH模型 "wikilink")（波勒斯勒夫（Bollerslev），1986年）。

GARCH（p，q）模型为

\[\sigma_t^2=\alpha_0+\alpha_1 \varepsilon_{t-1}^2+\cdots+\alpha_q \varepsilon_{t-q}^2 +\beta_1 \sigma_{t-1}^2+\cdots+\beta_p\sigma_{t-p}^2\]

### IGARCH

IGARCH模型对GARCH的参数做了限制。IGARCH（p，q）模型可以表示为：

\[\sigma_t^2 = \alpha_0 + \sum_{i=1}^p \alpha_i \epsilon_{t-i}^2 + \sum_{i=1}^q \beta_i \sigma_{t-i}^2\]

  -
    条件是：\(\sum_{i=1}^p \alpha_i + \sum_{i=1}^q \beta_i =1\)

### GARCH-M

GARCH-M模型把[异方差项引入平均数方程式](https://zh.wikipedia.org/wiki/异方差 "wikilink")。一个简单的GARCH-M（1，1）模型可以表示为：

\[y_t = ~\gamma x_t + ~\phi~\sigma_{t-1} + ~\epsilon_t\]

\[\sigma_t^2 = \alpha_0 + \alpha_1 \epsilon_{t-1}^2 + \beta_1 \sigma_{t-1}^2\]

残差项\(~\epsilon_t\)定义为：

\[~\epsilon_t\sim \ N(0,\sigma_t^2)\]

## ARCH模型的应用

ARCH模型能准确地模拟时间序列变量的波动性的变化，它在[金融工程学的](https://zh.wikipedia.org/wiki/金融工程学 "wikilink")[实证研究中应用广泛](../Page/觀察研究.md "wikilink")，使人们能更加准确地把握[风险](../Page/风险.md "wikilink")（波动性），尤其是应用在[风险价值](https://zh.wikipedia.org/wiki/风险价值 "wikilink")（Value at Risk）理论中，在[华尔街](../Page/华尔街.md "wikilink")是人尽皆知的工具。

## ARCH模型的变形和发展

  - 波勒斯勒夫（Bollerslev）提出[GARCH模型](https://zh.wikipedia.org/wiki/GARCH模型 "wikilink")（Generalized ARCH）；
  - 利立安（Lilien）提出[ARCH-M模型](https://zh.wikipedia.org/wiki/ARCH-M模型 "wikilink")；
  - 罗宾斯（Robbins）提出[NARCH模型](https://zh.wikipedia.org/wiki/NARCH模型 "wikilink")

## 参见

  - [时间序列](https://zh.wikipedia.org/wiki/时间序列 "wikilink")
  - [风险价值](https://zh.wikipedia.org/wiki/风险价值 "wikilink")

[Category:时间序列](https://zh.wikipedia.org/wiki/Category:时间序列 "wikilink") [Category:計量經濟學](https://zh.wikipedia.org/wiki/Category:計量經濟學 "wikilink")