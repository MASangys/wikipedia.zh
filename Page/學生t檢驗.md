**學生*t*檢驗**（）是指[虛無假设成立時的任一檢定統計有](https://zh.wikipedia.org/wiki/虛無假设 "wikilink")[學生t-分佈的](https://zh.wikipedia.org/wiki/學生t-分佈 "wikilink")[統計假說檢定](https://zh.wikipedia.org/wiki/統計假說檢定 "wikilink")，屬於[母數統計](https://zh.wikipedia.org/wiki/母數統計 "wikilink")。學生*t*檢驗常作為檢驗一群來自[常態分配](https://zh.wikipedia.org/wiki/常態分配 "wikilink")[母體的獨立](https://zh.wikipedia.org/wiki/母體 "wikilink")[樣本之](https://zh.wikipedia.org/wiki/樣本 "wikilink")[期望值的是否為某一實數](../Page/期望值.md "wikilink")，或是二（两）群來自[常態分配](https://zh.wikipedia.org/wiki/常態分配 "wikilink")[母體的獨立](https://zh.wikipedia.org/wiki/母體 "wikilink")[樣本之](https://zh.wikipedia.org/wiki/樣本 "wikilink")[期望值的差是否為某一實數](../Page/期望值.md "wikilink")。舉個簡單的例子，也就是說我們可以在抓取一個班級的男生，去比較該班與全校男生之身高差異程度是不是推測的那樣，或是不同年級班上的男生身高的差異的場合是否一如預期使用此檢驗法。

## 由來

學生*t*檢驗是[威廉·戈塞為了觀測釀酒品質於](../Page/威廉·戈塞.md "wikilink")1908年所提出的，「學生」則是他的[筆名](../Page/筆名.md "wikilink")。\[1\]\[2\]\[3\]\[4\]
基於克勞德·健力士（Claude
Guinness）聘用從[牛津大學和](https://zh.wikipedia.org/wiki/牛津大學 "wikilink")[劍橋大學出來的最好的畢業生](https://zh.wikipedia.org/wiki/劍橋大學 "wikilink")，\[5\]以將生物化學及統計學應用到[健力士工業流程的創新政策](../Page/健力士.md "wikilink")，戈斯特受雇於[都柏林的健力士釀酒廠擔任統計學家](../Page/都柏林.md "wikilink")。戈斯特提出了*t*检验以降低啤酒质量监控的成本。戈斯特於1908年在《[Biometrika](https://zh.wikipedia.org/wiki/Biometrika "wikilink")》期刊上公布t檢驗，但因其老闆認為其為商業機密而被迫使用筆名，統計學論文內容也跟釀酒無關。實際上，其他统计学家是知道戈斯特真實身份的。

## 應用

最常用t检验的情况有：

  - 单样本检验：检验一个[正态分布的总体的均值是否在满足零假设的值之内](../Page/正态分布.md "wikilink")，例如檢驗一群軍校男生的身高的平均是否符合全國標準的170公分界線。

<!-- end list -->

  - 双样本检验：其[零假设为两个正态分布的总体的均值之差為某實數](../Page/零假设.md "wikilink")，例如檢驗二群人的身高之平均是否相等。这一检验通常被称为学生t检验。但更为严格地说，只有两个总体的方差是相等的情况下，才称为学生t检验；否则，有时被称为Welch检验。以上谈到的检验一般被称作“未配对”或“独立样本”t检验，我们特别是在两个被检验的样本没有重叠部分时用到这种检验方式。

<!-- end list -->

  - “配对”或者“重复测量”t检验：检验同一统计量的两次测量值之间的差异是否为零。举例来说，我们测量一位病人接受治疗前和治疗后的肿瘤尺寸大小。如果治疗是有效的，我们可以推定多数病人接受治疗后，肿瘤尺寸應該是变小了。

<!-- end list -->

  - 检验一条回归线的斜率是否显著不为零。

## 前提假設

大多數的*t*檢定之統計量具有*t* =
*Z*/*k*的形式，其中*Z*與*k*是已知資料的函數。*Z*通常被設計成對於[對立假說有關的形式](https://zh.wikipedia.org/wiki/對立假說 "wikilink")，而*k*是一個尺度參數使*t*服從於*t*分佈。以單樣本*t*檢驗為例，\(Z = \bar{X}/(\sigma/\sqrt{n})\)，其中\(\bar{X}\)為樣本平均數，\(n\)為樣本數，\(\sigma\)為总体[標準差](../Page/標準差.md "wikilink")。至於*k*在單樣本*t*檢驗中為\(\hat{\sigma}/\sigma\)，其中\(\hat{\sigma}\)為樣本的標準偏差。在符合零假說的條件下，*t*檢定有以下前題：

  - *Z* 服從標準常態分佈
  - (*n* - 1)*k*<sup>2</sup> 服從自由度(*n* - 1)的卡方分佈
  - *Z*與*k*互相獨立

### 單樣本*t*檢驗

檢驗零假說為一群來自常態分配獨立樣本*x*<sub>*i*</sub>之母體期望值*μ*為*μ*<sub>0</sub>可利用以下統計量

\[t = \frac{\overline{x} - \mu_0}{s/\sqrt{n}}\]

其中\(i = 1 \ldots n\)，\(\overline{x} = \frac{\sum_{i=1}^{n} x_i}{n}\)為樣本平均數，\(s = \sqrt{\frac{\sum_{i=1}^{n}(x_i-\overline{x})^2}{n-1}}\)為樣本[標準偏差](https://zh.wikipedia.org/wiki/標準偏差 "wikilink")，*n*為[樣本數](https://zh.wikipedia.org/wiki/樣本數 "wikilink")。該統計量*t*在零假說：*μ* = *μ*<sub>0</sub>為真的條件下服從自由度為*n* − 1的[t分佈](https://zh.wikipedia.org/wiki/t分佈 "wikilink")。

### 配對樣本*t*檢驗

配對樣本*t*檢驗可視為單樣本*t*檢驗的擴展，不過檢驗的對象由一群來自常態分配獨立樣本更改為二群配對樣本之觀測值之差。

若二群配對樣本*x*<sub>1*i*</sub>與*x*<sub>2*i*</sub>之差為*d*<sub>*i*</sub> =
*x*<sub>1*i*</sub> −
*x*<sub>2*i*</sub>獨立且來自常態分配，則*d*<sub>*i*</sub>之母體期望值*μ*是否為*μ*<sub>0</sub>可利用以下統計量

\[t = \frac{\overline{d} - \mu_0}{s_d/\sqrt{n}}\]

其中\(i = 1 \ldots n\)，\(\overline{d} = \frac{\sum_{i=1}^{n} d_i}{n}\)為配對樣本差值之平均數，\(s_d = \sqrt{\frac{\sum_{i=1}^{n}(d_i-\overline{d})^2}{n-1}}\)為配對樣本差值之[標準偏差](https://zh.wikipedia.org/wiki/標準偏差 "wikilink")，*n*為配對[樣本數](https://zh.wikipedia.org/wiki/樣本數 "wikilink")。該統計量*t*在零假說：*μ* = *μ*<sub>0</sub>為真的條件下服從自由度為*n* − 1的[t分佈](https://zh.wikipedia.org/wiki/t分佈 "wikilink")。

### 獨立雙樣本*t*檢驗

#### 樣本數及方差相等

若二群獨立樣本*x*<sub>1*i*</sub>與*x*<sub>2*i*</sub>具有相同之樣本數*n*，並且彼此獨立及來自二個方差相等的常態分配，則二群母體之期望值差*μ*<sub>1</sub> - *μ*<sub>2</sub>是否為*μ*<sub>0</sub>可利用以下統計量

\[t = \frac{\overline{x}_1 - \overline{x}_2 - \mu_0}{\sqrt{ 2s_p^2 / n}}\]

其中\(i = 1 \ldots n\)，\(\overline{x}_1 = (\sum_{i=1}^n x_{1i}) / n\)及\(\overline{x}_2 = (\sum_{i=1}^n x_{2i}) / n\)為二群樣本各自的平均數，\(s^2_p = ( \sum_{i=1}^n (x_{1i}-\overline{x}_1)^2  + \sum_{i=1}^n (x_{2i}-\overline{x}_2)^2 ) / (2n-2)\)為樣本之共同[方差](../Page/方差.md "wikilink")。該統計量*t*在零假說：*μ*<sub>1</sub> - *μ*<sub>2</sub> = *μ*<sub>0</sub>為真的條件下服從自由度為2*n* − 2的[t分佈](https://zh.wikipedia.org/wiki/t分佈 "wikilink")。

#### 樣本數不相等但方差相等

若二群獨立樣本*x*<sub>1*i*</sub>與*x*<sub>2*j*</sub>具有不相同之樣本數*n*<sub>1</sub>與*n*<sub>2</sub>，並且彼此獨立及來自二個方差相等的常態分配，則二群母體之期望值之差*μ*<sub>1</sub> - *μ*<sub>2</sub>是否為*μ*<sub>0</sub>可利用以下統計量

\[t = \frac{\overline{x}_1 - \overline{x}_2 - \mu_0}{\sqrt{ s_p^2 / n_1 + s_p^2 / n_2}}\]

其中\(i = 1 \ldots n_1\)，其中\(j = 1 \ldots n_2\)，\(\overline{x}_1 = (\sum_{i=1}^n x_{1i}) / n\)及\(\overline{x}_2 = (\sum_{i=1}^n x_{2i}) / n\)為二群樣本各自的平均數，\(s^2_p = ( \sum_{i=1}^n (x_{1i}-\overline{x}_1)^2  + \sum_{j=1}^n (x_{2j}-\overline{x}_2)^2 ) / (n_1 + n_2 - 2)\)為二群樣本共同之[方差](../Page/方差.md "wikilink")。該統計量*t*在零假說：*μ*<sub>1</sub> - *μ*<sub>2</sub> = *μ*<sub>0</sub>為真的條件下服從自由度為*n*<sub>1</sub> + *n*<sub>2</sub> − 2的[t分佈](https://zh.wikipedia.org/wiki/t分佈 "wikilink")。

#### 樣本數及方差皆不相等

若二群獨立樣本*x*<sub>1*i*</sub>與*x*<sub>2*j*</sub>具有相等或不相同之樣本數*n*<sub>1</sub>與*n*<sub>2</sub>，並且彼此獨立及來自二個方差不相等的常態分配，則二群母體之期望值之差*μ*<sub>1</sub> - *μ*<sub>2</sub>是否為*μ*<sub>0</sub>可利用以下統計量

\[t = \frac{\overline{x}_1 - \overline{x}_2 - \mu_0}{\sqrt{ s_1^2 / n_1 + s_2^2 / n_2}}\]

其中\(i = 1 \ldots n_1\)，其中\(j = 1 \ldots n_2\)，\(\overline{x}_1 = (\sum_{i=1}^{n_1} x_{1i}) / n_1\)及\(\overline{x}_2 = (\sum_{j=1}^{n_2} x_{2j}) / n\)為二群樣本各自的平均數，\(s^2_1 = (\sum_{i=1}^n (x_{1i}-\overline{x}_1)^2)/(n_1 - 1)\)及\(s^2_2 = (\sum_{j=1}^n (x_{2j}-\overline{x}_2)^2)/(n_2 - 1)\)分別為二群樣本之[方差](../Page/方差.md "wikilink")。該統計量*t*在零假說：*μ*<sub>1</sub> - *μ*<sub>2</sub> = *μ*<sub>0</sub>為真的條件下服從自由度為

\[df = \frac{ (s_1^2/n_1 + s_2^2/n_2)^2 }{ (s_1^2/n_1)^2/(n_1-1) + (s_2^2/n_2)^2/(n_2-1) }\]

之[t分佈](https://zh.wikipedia.org/wiki/t分佈 "wikilink")。這種方法又常稱為Welch檢驗。

### 簡單線性迴歸之斜率

在簡單線性迴歸的模型

  -
    \(y_i = \alpha + \beta x_i + \varepsilon_i,\)

其中*x*<sub>*i*</sub>，*i* = 1, ..., *n*為已知，*α*與*β*為未知係數，*ε*<sub>*i*</sub>為[殘差獨立且服從期望值](https://zh.wikipedia.org/wiki/殘差 "wikilink")0且方差*σ*<sup>2</sup>未知的常態分佈，*y*<sub>*i*</sub>，*i* = 1, ..., *n*為觀測值。我們可以檢驗迴歸係數（在此例即為迴歸式之斜率）*β*是否相等於特定的*β*<sub>0</sub>（通常使*β*<sub>0</sub> = 0以檢驗*x*<sub>*i*</sub>對*y*<sub>*i*</sub>是否有關聯）。

令\(\widehat\alpha\)與\(\widehat\beta\)為[最小平方法之估計值](https://zh.wikipedia.org/wiki/最小平方法 "wikilink")，\(SE_{\widehat\alpha}\)與\(SE_{\widehat\beta}\)為最小平方法估計值之標準誤差，則

  -
    <math>

t = \\frac{\\widehat\\beta - \\beta_0}{ SE_{\\widehat\\beta}
}\\sim\\mathcal{T}_{n-2} </math>

在零假設為β = β<sub>0</sub>的情況下服從自由度為*n* − 2之t分佈，其中

  -
    <math>

SE_{\\widehat\\beta} = \\frac{\\sqrt{\\frac{1}{n - 2}\\sum_{i=1}^n
(y_i - \\widehat y_i)^2}}{\\sqrt{ \\sum_{i=1}^n (x_i -
\\overline{x})^2 }} </math>

由於
\(\widehat\varepsilon_i = y_i - \widehat y_i = y_i - (\widehat\alpha + \widehat\beta x_i)\)為殘差（即估計誤差），而
\(\text{SSR} = \sum_{i=1}^n \widehat\varepsilon_i^{\;2}\)
為殘差之離均平方和，我們可改寫*t*為

  -
    \(t = \frac{(\widehat\beta - \beta_0)\sqrt{n-2}}{ \sqrt{\text{SSR}/\sum_{i=1}^n \left(x_i - \overline{x}\right)^2} }\)

另请参阅：[方差齐性检验（F检验）](../Page/F检验.md "wikilink")

## 電腦軟體

大多數的[試算表軟體及統計軟體](https://zh.wikipedia.org/wiki/試算表 "wikilink")，諸如[QtiPlot](../Page/QtiPlot.md "wikilink")、[OpenOffice.org
Calc](../Page/OpenOffice.org_Calc.md "wikilink")、[LibreOffice
Calc](https://zh.wikipedia.org/wiki/LibreOffice_Calc "wikilink")、[Microsoft
Excel](../Page/Microsoft_Excel.md "wikilink")、[SAS](https://zh.wikipedia.org/wiki/统计分析系统 "wikilink")、[SPSS](../Page/SPSS.md "wikilink")、[Stata](https://zh.wikipedia.org/wiki/Stata "wikilink")、[DAP](https://zh.wikipedia.org/wiki/DAP_\(software\) "wikilink")、[gretl](https://zh.wikipedia.org/wiki/gretl "wikilink")、[R](../Page/R语言.md "wikilink")、[Python](../Page/Python.md "wikilink")
([1](http://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.ttest_ind.html))、[PSPP](https://zh.wikipedia.org/wiki/PSPP "wikilink")、[Minitab等](../Page/Minitab.md "wikilink")，都可以進行*t*檢驗之運算。

| 编程语言/软件程序                                                               | 函数                                                                                  | 注释                                                                                                                                              |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| [Microsoft Excel](../Page/Microsoft_Excel.md "wikilink") 2010 之前的版本     | `TTEST(`*`array1`*` ,  `*`array2`*` ,  `*`tails`*` ,  `*`type`*`)`                  | 参见 [2](https://web.archive.org/web/20140321141801/http://office.microsoft.com/en-us/excel-help/ttest-HP005209325.aspx)                          |
| [Microsoft Excel](../Page/Microsoft_Excel.md "wikilink") 2010 及更高版本     | `T.TEST(`*`array1`*` ,  `*`array2`*` ,  `*`tails`*` ,  `*`type`*`)`                 | 参见 [3](http://office.microsoft.com/en-us/excel-help/t-test-function-HA102753135.aspx)                                                           |
| [LibreOffice](https://zh.wikipedia.org/wiki/LibreOffice "wikilink")     | `TTEST(`*`Data1;``   ``Data2;``   ``Mode;``   ``Type`*`)`                           | 参见 [4](https://help.libreoffice.org/Calc/Statistical_Functions_Part_Five#TTEST)                                                                 |
| [Google Sheets](https://zh.wikipedia.org/wiki/Google_Sheets "wikilink") | `TTEST(range1, range2, tails, type)`                                                | 参见 [5](https://support.google.com/docs/answer/6055837)                                                                                          |
| [Python](../Page/Python.md "wikilink")                                  | `scipy.stats.ttest_ind(`*`a`*` ,  `*`b`*` ,  `*`axis=0`*` ,  `*`equal_var=True`*`)` | 参见 [6](http://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.ttest_ind.html)                                                          |
| [Matlab](https://zh.wikipedia.org/wiki/Matlab "wikilink")               | `ttest(data1, data2)`                                                               | 参见 [7](http://www.mathworks.com/help/stats/ttest.html)                                                                                          |
| [Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")     | `TTest[{data1,data2}]`                                                              | 参见 [8](http://reference.wolfram.com/language/ref/TTest.html)                                                                                    |
| [R](https://zh.wikipedia.org/wiki/R語言 "wikilink")                       | `t.test(data1, data2)`                                                              |                                                                                                                                                 |
| [SAS](https://zh.wikipedia.org/wiki/SAS "wikilink")                     | `PROC TTEST`                                                                        | 参见 [9](https://web.archive.org/web/20131029195637/http://www.sas.com/offices/europe/belux/pdf/academic/ttest.pdf)                               |
| [Java](https://zh.wikipedia.org/wiki/Java語言 "wikilink")                 | `tTest(sample1, sample2)`                                                           | 参见 [10](http://commons.apache.org/proper/commons-math/apidocs/org/apache/commons/math4/stat/inference/TTest.html)                               |
| [Julia](https://zh.wikipedia.org/wiki/Julia語言 "wikilink")               | `EqualVarianceTTest(sample1, sample2)`                                              | 参见 [11](https://web.archive.org/web/20160814024922/http://hypothesistestsjl.readthedocs.io/en/latest/parametric/test_t.html#EqualVarianceTTest) |
| [Stata](https://zh.wikipedia.org/wiki/Stata "wikilink")                 | `ttest data1 == data2`                                                              | See [12](https://www.stata.com/manuals13/rttest.pdf)                                                                                            |

## 參考文獻

{{-}}

[Category:统计检验](https://zh.wikipedia.org/wiki/Category:统计检验 "wikilink")

1.  Richard Mankiewicz, *The Story of Mathematics* (Princeton University
    Press), p.158.

2.

3.

4.  <http://www.aliquote.org/cours/2012_biomed/biblio/Student1908.pdf>

5.