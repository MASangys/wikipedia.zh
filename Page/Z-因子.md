**Z-因子**（**Z-factor**）是一个关于[信号区间和变异的组合](../Page/信号区间.md "wikilink")，它已成为评估测试方法质量的主要参数。Z-因子是统计效应大小的度量，它的提出是用来判断高通量筛选中测定的反应强度是否达到进一步研究的要求。

## 背景

Z-因子于1999年首次发表以来，已被視為一个非常有用的评估试验的统计学方法。在高通量筛选中，一次会将数十万至数千万样品与阴性和阳性对照样品一起进行筛选，并对它们的结果进行比较。因为这种大通量的筛选耗时且昂贵，所以要使用较小规模的筛选（预试验）来评估筛选条件和测量方法的质量，来预测其在高通量环境中的可行性。
Z因子就是一个用来量化筛选条件和测定方法在全高通量筛选中的适用性的指标。

## 定義

\[\text{Z-factor} = 1 - {3 \times (\sigma_p + \sigma_n) \over | \mu_p - \mu_n |}.\]

**（\(\sigma\) = [标准差](../Page/标准差.md "wikilink")，p = 阳性对照，n = 阴性对照）**

## 介紹

Z-因子的值是一个用于区分信号与背景群体的相对指标。其為一个没有量度的参数，其范围可以从「1到小于0」。当Z-因子**等于零**时，信号与背景**开始重叠**。一般而言，可以接受的Z-因子应大于0.4，此时
\(\frac{p}{n}\) 是3、CV([變異係數](../Page/變異係數.md "wikilink"))是4%。
\(\frac{p}{n}\) 越高，变异也越大。通常CVs必须小于20%，尽管转化的 \(\frac{p}{n}\)
与较小的变异相关，但通常为了保证低于5%的CVs， \(\frac{p}{n}\)
不应低于2。为了评价分配质量和取消一些带明显误差的数据，在测试方法的建立确证和高通量筛选的过程中，Z-因子都应在单个反应板基础上进行评估。

## 延伸閱讀

  - Kraybill, B. (2005) ["Quantitative Assay Evaluation and
    Optimization"](https://web.archive.org/web/20100627080603/http://iccb.med.harvard.edu/screening/Quantitative%20Assay%20Evaluation%20and%20Optimization%20complete%20%283%29.pdf)
    (unpublished note)
  - Zhang XHD (2011) ["Optimal High-Throughput Screening: Practical
    Experimental Design and Data Analysis for Genome-scale RNAi
    Research, Cambridge University
    Press"](http://www.cambridge.org/9780521734448)

[Category:统计学](https://zh.wikipedia.org/wiki/Category:统计学 "wikilink")
[Category:實驗設計](https://zh.wikipedia.org/wiki/Category:實驗設計 "wikilink")