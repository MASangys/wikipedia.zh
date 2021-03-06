> 本文内容由[Delta中性](https://zh.wikipedia.org/wiki/Delta中性)转换而来。


在[金融](../Page/金融.md "wikilink")领域，如果一个投资组合由相关的金融产品组成，而且其价值不受标的资产小幅价格变动的影响，这样的投资组合具有**delta中性**的性质。这种[投资组合的成分通常包括](../Page/投資組合.md "wikilink")[期权和相对应的标的资产](https://zh.wikipedia.org/wiki/期权 "wikilink")，让[delta正负相消](https://zh.wikipedia.org/wiki/delta "wikilink")，使投资组合的价格对标的资产的价格相对不敏感。

delta对冲是一个与delta中性相关的概念。这种对冲描述的是保持[投资组合的](../Page/投資組合.md "wikilink")[delta尽可能等于或接近零的过程](https://zh.wikipedia.org/wiki/delta "wikilink")。维持零delta在实际操作中的难度较大。这是由于当标的资产的价格变化很大时，再次对冲的风险较高。此外，研究表明频繁的对冲会导致投资组合的低现金流。\[1\]

## 相关术语

\(\Delta\)： 期权价格之于标的物价格变动的敏感性。

\(V_0\)：期权的初始价格。

\(V\)：期权的现价。

\(S_0\) ：标的物的初始价格。

## 数学表达

Delta值衡量的是当其他参数不变的情况下，标的资产价格变化导致的期权价格变化幅度。\[2\]

从数学角度出发，delta代表了期权的公允价格对标的资产价格的一阶导数，\(\tfrac{\partial V}{\partial S}\)。

Delta是S的函数，同时它也是[执行价格和到期时间的函数](../Page/履約價.md "wikilink")。 \[3\]

因此，在标的物的[无穷小的价格变化下](https://zh.wikipedia.org/wiki/无穷小 "wikilink")，一个delta中性的头寸价格变化为零。由于[delta描述的是](https://zh.wikipedia.org/wiki/delta "wikilink")[衍生品价格对标的物价格的敏感度](../Page/金融衍生工具.md "wikilink")，这样的投资组合是被有效对冲的。 其价格不会因为标的物价格的小幅变化而变化。

## 设立头寸

投资者可以通过买入或卖出一定数量的标的资产来建立**Delta对冲**冲所需的头寸。这个数量由投资组合的delta来决定。通过调整这一数量，投资组合的总delta之和为零，即达到delta中性的目标。

期权的[做市商](../Page/做市商.md "wikilink")（或其他市场参与者）也可以用相关的期权来设立delta对冲的头寸。投资组合的delta等于各个成分期权的delta之和。在标的物本身的交易很困难时，可以使用这种方法。比如，有些标的物可能很难借贷，或者无法[做空](https://zh.wikipedia.org/wiki/做空 "wikilink")。

例如，一种delta中性的策略可以是买入一份深价内看涨期权，同时卖出一份深价内看跌期权。深价内看涨期权的delta是1，而深价内看跌期权的delta是-1。这样一来，在标的资产价格一定的浮动范围内，它们的delta互相抵消。

## 理论基础

Delta中性是[布莱克-舒尔兹模型](../Page/布莱克-舒尔兹模型.md "wikilink")的证明中的一部分。

通过对期权价值在 s 处进行[泰勒公式](../Page/泰勒公式.md "wikilink")展开，我们能得出当标的物资产价值变化 ε 时，期权价格C(s)的变动:

  -
    \(C(s + \varepsilon\,) = C(s) + (s + \varepsilon - s)\, C'(s) + {1/2}\,(s + \varepsilon - s )^2\, C''(s) + ...\)

<!-- end list -->

  -

      -
        其中： 
        \(C'(s) = \Delta\,\)(delta) 
        \(C''(s) = \Gamma\,\)(gamma)。

当标的物价格的变化很小时，我们可以忽略二次项不计。此时，如果要建立一个对冲的投资组合，delta的大小决定了我们应该买入或卖出标的物的数量。然而，当标的物价格的变化较大时，二次项不可忽略。此时gamma的大小也应被考虑进投资组合里。

在实际操作中，维持投资组合的delta中性需要连续不断的计算头寸的风险敏感性，以调整持仓结构。这种调整通常是每日或每周一次。

## 参考资料

<references />

## 外部链接

  - [Delta Hedging](http://www.investopedia.com/terms/d/deltahedging.asp), investopedia.com
  - [Theory & Application for Delta Hedging](https://web.archive.org/web/20151107021006/http://www.risklimited.com/Delta-Hedging.pdf)
  - [Delta Neutral Hedging Strategies](http://www.quantprinciple.com/invest/index.php/docs/quant_strategies/delta_neutral_hedging_strategies/)

[Category:金融衍生工具](https://zh.wikipedia.org/wiki/Category:金融衍生工具 "wikilink") [Category:金融市场](https://zh.wikipedia.org/wiki/Category:金融市场 "wikilink") [Category:金融数学](https://zh.wikipedia.org/wiki/Category:金融数学 "wikilink")

1.  De Weert F.  pp. 74-81
2.  <http://www.quantprinciple.com/invest/index.php/docs/quant_strategies/delta_neutral_hedging_strategies/>
3.  <http://www.quantprinciple.com/invest/index.php/docs/quant_strategies/delta_neutral_hedging_strategies/>