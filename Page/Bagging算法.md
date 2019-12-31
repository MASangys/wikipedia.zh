> 本文内容由[Bagging算法](https://zh.wikipedia.org/wiki/Bagging算法)转换而来。


**Bagging算法** （英语：**B**ootstrap **agg**regat**ing**，引导聚集算法），又称**装袋算法**，是[机器学习](../Page/机器学习.md "wikilink")领域的一种[算法](../Page/算法.md "wikilink")。最初由[Leo Breiman于](https://zh.wikipedia.org/wiki/Leo_Breiman "wikilink")1996年提出。Bagging算法可与其他[分类](https://zh.wikipedia.org/wiki/统计分类 "wikilink")、[回归算法结合](https://zh.wikipedia.org/wiki/回归分析 "wikilink")，提高其准确率、稳定性的同时，通过降低结果的[方差](../Page/方差.md "wikilink")，避免[过拟合的发生](https://zh.wikipedia.org/wiki/过拟合 "wikilink")。

## 算法步骤

给定一个大小为\(n\)的[训练集](https://zh.wikipedia.org/wiki/训练集 "wikilink")\(D\)，Bagging算法从中均匀、有放回地（即使用[自助抽样法](https://zh.wikipedia.org/wiki/自助法 "wikilink")）选出\(m\)个大小为\(n'\)的[子集](../Page/子集.md "wikilink")\(D_i\)，作为新的训练集。在这\(m\)个训练集上使用分类、回归等算法，则可得到\(m\)个模型，再通过取[平均值](https://zh.wikipedia.org/wiki/平均值 "wikilink")、取多数票等方法，即可得到Bagging的结果。

## 参考文献

  -
  -
[Category:机器学习](https://zh.wikipedia.org/wiki/Category:机器学习 "wikilink")