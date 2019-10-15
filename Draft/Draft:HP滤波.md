**HP滤波**（或）是[宏观经济学中用到的](../Page/宏观经济学.md "wikilink")[时间序列分析方法](https://zh.wikipedia.org/wiki/时间序列 "wikilink")，尤其在中较为常用。HP滤波可以从原始数据中分离出周期性的部分，并得到一条平滑的曲线来表述整个时间序列，即把对短期波动更敏感的数据转成了对长期波动更敏感的表示方式。The
adjustment of the sensitivity of the trend to short-term fluctuations is
achieved by modifying a multiplier \(\lambda\). The filter was
popularized in the field of economics in the 1990s by economists [Robert
J. Hodrick](https://zh.wikipedia.org/wiki/Robert_J._Hodrick "wikilink")
and [Nobel Memorial
Prize](https://zh.wikipedia.org/wiki/Nobel_Prize_in_Economics "wikilink")
winner [Edward C.
Prescott](https://zh.wikipedia.org/wiki/Edward_C._Prescott "wikilink").\[1\]
However, it was first proposed much earlier by [E. T.
Whittaker](https://zh.wikipedia.org/wiki/E._T._Whittaker "wikilink") in
1923.\[2\]

## 数学表述

这个方法的思想类似于。令\(\{y_t\},\ t = 1, 2, ..., T\,\)表示一组时间序列变量的[对数](https://zh.wikipedia.org/wiki/对数 "wikilink")，则\(\{y_t\}\)由一系列趋势项\(\tau_t\)、周期项\(c_t\)和误差项\(\epsilon_t\)组成，即\(y_t\ = \tau_t\ + c_t\ + \epsilon_t\)。\[3\]给定合适的正数\(\lambda\)，存在一个趋势项满足

  -
    \(\min_{\tau}\left(\sum_{t = 1}^T {(y_t - \tau _t )^2 } + \lambda \sum_{t = 2}^{T - 1} {[(\tau _{t+1} - \tau _t) - (\tau _t - \tau _{t - 1} )]^2 }\right)\)。

上式第一项表示变量偏离趋势项的误差\(d_t=y_t-\tau_t\)的平方和，从而控制了周期项的大小；第二项用乘子\(\lambda\)乘上趋势项二阶[差分的平方和](../Page/差分.md "wikilink")，从而控制了趋势项变化的剧烈程度。\(\lambda\)越大，后者的控制就越强。Hodrick和Prescott建议季度数据\(\lambda\)取为1600，若单位不是季度则\(\lambda\)正比于每单位所含季度数的平方，即年度数据取100、月度数据取14,400。\[4\]Ravn和Uhlig则在2002年发表的文章中提出\(\lambda\)应该正比于数据每单位所含季度数的四次方，即年度数据\(\lambda\)应取6.25、月度数据取129,600。\[5\]

## 缺陷

HP滤波只在以下条件下是最优的：\[6\]

  - Data exists in a I(2) trend.
      - If one-time permanent shocks or split growth rates occur, the
        filter will generate shifts in the trend that do not actually
        exist.
  - 样本中的噪音呈[正态分布](../Page/正态分布.md "wikilink")。
  - Analysis is purely historical and static (closed domain). The filter
    causes misleading predictions when used dynamically since the
    algorithm changes (during iteration for minimization) the past state
    (unlike a [moving
    average](https://zh.wikipedia.org/wiki/moving_average "wikilink"))
    of the time series to adjust for the current state regardless of the
    size of \(\lambda\) used.

The standard two-sided Hodrick–Prescott filter is non-causal as it is
not purely backward looking. Hence, it should not be used when
estimating DSGE models based on recursive state-space representations
(e.g., likelihood-based methods that make use of the Kalman filter). The
reason is that the Hodrick–Prescott filter uses observations at
\(t+i, i>0\) to construct the current time point \(t\), while the
recursive setting assumes that only current and past states influence
the current observation. One way around this is to use the one-sided
Hodrick–Prescott filter.\[7\]

Exact algebraic formulas are available for the two-sided
Hodrick–Prescott filter in terms of its signal-to-noise ratio
\(\lambda\).\[8\]

A working paper by [James D.
Hamilton](https://zh.wikipedia.org/wiki/James_D._Hamilton "wikilink") at
[UC San
Diego](https://zh.wikipedia.org/wiki/University_of_California,_San_Diego "wikilink")
titled "Why You Should Never Use the Hodrick-Prescott Filter"\[9\]
presents evidence against using the HP filter. Hamilton writes that:
"(1) The HP filter produces series with spurious dynamic relations that
have no basis in the underlying data-generating process.
(2) A one-sided version of the filter reduces but does not eliminate
spurious predictability and moreover produces series that do not have
the properties sought by most potential users of the HP filter.
(3) A statistical formalization of the problem typically produces values
for the smoothing parameter vastly at odds with common practice, e.g., a
value for λ far below 1600 for quarterly data.
(4) There’s a better alternative. A regression of the variable at date
t+h on the four most recent values as of date t offers a robust approach
to detrending that achieves all the objectives sought by users of the HP
filter with none of its drawbacks."

## 参见

  - [带通滤波器](https://zh.wikipedia.org/wiki/带通滤波器 "wikilink")
  - [卡尔曼滤波](../Page/卡尔曼滤波.md "wikilink")

## 参考文献

## 拓展阅读

  -
  -
  -
## 外部链接

  - [a freeware Hodrick Prescott Excel
    Add-In](http://www.web-reg.de/hp_addin.html)
  - [Prescott's Fortran
    code](http://dge.repec.org/codes/prescott/hpfilter.for)
  - [Hodrick–Prescott filter in
    matlab](http://www.mathworks.com/matlabcentral/fileexchange/3972-hodrick-prescott-filter)
  - [One-sided Hodrick–Prescott filters in
    matlab](https://ideas.repec.org/c/dge/qmrbcd/181.html)
  - [HP filter in R with package
    'mFilter'](https://cran.r-project.org/web/packages/mFilter/mFilter.pdf)
  - [HP filter online app](http://jaac.wz.cz/hponlineapp.php)
  - [One-sided Hodrick-Prescott filter in
    Excel](https://www.linkedin.com/pulse/new-hodrick-prescott-excel-add-in-available-webreg-hp-kurt-annen/)

<!-- end list -->

1.

2.   - as quoted in
    [Philips 2010](http://cowles.econ.yale.edu/P/cd/d17b/d1771.pdf)

3.  Kim, Hyeongwoo. "[Hodrick–Prescott
    Filter](http://www.auburn.edu/~hzk0001/hpfilter.pdf)" March 12, 2004

4.
5.

6.

7.

8.

9.