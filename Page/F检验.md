**F检验**（），最常用的別名叫做**聯合假設檢驗**（），此外也稱**變異數比率檢驗**、**方差齐性检验**。它是一种在[零假设](../Page/零假设.md "wikilink")（）之下，統計值服从[F-分布](../Page/F-分布.md "wikilink")的检验。其通常是用來分析用了超過一個參數的统计模型，以判斷該模型中的全部或一部分參數是否適合用來估計[母體](https://zh.wikipedia.org/wiki/母體 "wikilink")。

**F检验**這名稱是由美國數學家兼統計學家命名，为了纪念英國統計學家兼生物學家[羅納德·費雪](https://zh.wikipedia.org/wiki/羅納德·費雪 "wikilink")（）。Fisher在1920年代發明了這個檢驗和F分配，最初叫做**變異數比率**（）\[1\]。

## 適用場合

通常的F检验例子包括：

  - 假设一系列服从[正态分布](../Page/正态分布.md "wikilink")的母体，都有相同的[标准差](https://zh.wikipedia.org/wiki/标准差 "wikilink")。这是最典型的F检验，该检验在[方差分析](../Page/方差分析.md "wikilink")（ANOVA）中也非常重要。
  - 假设一个回归模型很好地拟合(解释)[数据集](https://zh.wikipedia.org/wiki/数据集 "wikilink")。

## 注意事项

F检验对于数据的正态性非常敏感，因此在检验方差齐性的时候，Levene检验, Bartlett检验或者Brown–Forsythe检验的稳健性都要优于F检验。 F检验还可以用于三组或者多组之间的均值比较，但是如果被检验的数据无法满足均是正态分布的条件时，该数据的稳健型会大打折扣，特别是当显著性水平比较低时。但是，如果数据符合正态分布，而且alpha值至少为0.05，该检验的稳健型还是相当可靠的。

若两个母体有相同的方差（方差齐性），那么可以采用F检验，但是该检验会呈现极端的非稳健性和非常态性\[2\]\[3\]，可以用[t检验](https://zh.wikipedia.org/wiki/t检验 "wikilink")、[巴特勒特检验等取代](https://zh.wikipedia.org/wiki/巴特勒特检验 "wikilink")。

## 與其它統計值的關係

1.  F检验的分子、分母其實各是一個[卡方變數除以各自的自由度](../Page/卡方分佈.md "wikilink")。\[4\]
2.  F检验用來檢驗單一變數可否排除於模型外時，\(F=t^2\)。\[5\]

## 参见

  - [线性回归系数β1（斜率）的t检验](https://zh.wikipedia.org/wiki/學生t檢驗#簡單線性迴歸之斜率 "wikilink")

## 參考文獻

<div class="references-small">

<references>

</references>

</div>

[Category:變異數分析](https://zh.wikipedia.org/wiki/Category:變異數分析 "wikilink") [Category:統計比率](https://zh.wikipedia.org/wiki/Category:統計比率 "wikilink") [Category:統計檢驗](https://zh.wikipedia.org/wiki/Category:統計檢驗 "wikilink")

1.  Lomax, Richard G. (2007) "Statistical Concepts: A Second Course", p. 10, ISBN 0-8058-5850-4
2.
3.
4.
5.