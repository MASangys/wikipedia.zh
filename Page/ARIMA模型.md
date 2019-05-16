**ARIMA模型**（），差分整合移動平均自迴歸模型，又稱整合移动平均自回归模型（移動也可稱作滑動），[时间序列预测分析方法之一](https://zh.wikipedia.org/wiki/时间序列 "wikilink")。ARIMA（p，d，q）中，AR是"自回归"，p为自回归项数；MA为"滑动平均"，q为滑动平均项数，d为使之成为平稳序列所做的差分次数（阶数）。「差分」一詞雖未出現在ARIMA的英文名稱中，卻是關鍵步驟。

ARIMA（p，d，q）模型是[ARMA](../Page/ARMA模型.md "wikilink")（p，q）模型的扩展。ARIMA（p，d，q）模型可以表示为：

\[\left(1 - \sum_{i=1}^p \phi_i L^i\right) (1-L)^d X_t = \left(1 + \sum_{i=1}^q \theta_i L^i\right) \varepsilon_t\,\]

其中*L* 是滞后算子（Lag operator），\(d \in \mathbb{Z}, d>0\)

## 模型特点

  - 不直接考虑其他相关随机变量的变化

  -
## ARIMA模型运用的流程

1.  根据[时间序列的散点图](https://zh.wikipedia.org/wiki/时间序列 "wikilink")、自相关函数和偏自相关函数图识别其平稳性。
2.  对非平稳的时间序列数据进行平稳化处理。直到处理后的[自相关函数和](../Page/自相关函数.md "wikilink")[偏自相关函数的数值非显著非零](https://zh.wikipedia.org/wiki/偏自相关函数 "wikilink")。
3.  根据所识别出来的特征建立相应的时间序列模型。平稳化处理后，若[偏自相关函数是](https://zh.wikipedia.org/wiki/偏自相关函数 "wikilink")[截尾的](https://zh.wikipedia.org/wiki/截尾 "wikilink")，而[自相关函数是](../Page/自相关函数.md "wikilink")[拖尾的](https://zh.wikipedia.org/wiki/拖尾 "wikilink")，则建立[AR模型](https://zh.wikipedia.org/wiki/AR模型 "wikilink")；若[偏自相关函数是](https://zh.wikipedia.org/wiki/偏自相关函数 "wikilink")[拖尾的](https://zh.wikipedia.org/wiki/拖尾 "wikilink")，而[自相关函数是](../Page/自相关函数.md "wikilink")[截尾的](https://zh.wikipedia.org/wiki/截尾 "wikilink")，则建立[MA模型](https://zh.wikipedia.org/wiki/MA模型 "wikilink")；若[偏自相关函数和](https://zh.wikipedia.org/wiki/偏自相关函数 "wikilink")[自相关函数均是](../Page/自相关函数.md "wikilink")[拖尾的](https://zh.wikipedia.org/wiki/拖尾 "wikilink")，则序列适合[ARMA模型](../Page/ARMA模型.md "wikilink")。
4.  参数估计，检验是否具有统计意义。
5.  假设检验，判断（诊断）[残差序列是否为](https://zh.wikipedia.org/wiki/残差序列 "wikilink")[白噪声序列](https://zh.wikipedia.org/wiki/白噪声序列 "wikilink")。
6.  利用已通过检验的模型进行预测。

## 相關條目

  - [自迴歸模型](../Page/自迴歸模型.md "wikilink")（AR模型）
  - [向量自回归模型](../Page/向量自回归模型.md "wikilink")（VAR模型）
  - [自回歸滑動平均模型](../Page/ARMA模型.md "wikilink")（ARMA模型）
  - [格蘭傑因果關係](../Page/格蘭傑因果關係.md "wikilink")（Granger Causality）

[Category:計量經濟學](https://zh.wikipedia.org/wiki/Category:計量經濟學 "wikilink")
[Category:統計學](https://zh.wikipedia.org/wiki/Category:統計學 "wikilink")
[Category:回歸分析](https://zh.wikipedia.org/wiki/Category:回歸分析 "wikilink")
[Category:时间序列](https://zh.wikipedia.org/wiki/Category:时间序列 "wikilink")