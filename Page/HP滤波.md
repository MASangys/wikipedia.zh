**HP滤波**（或）是[宏观经济学](../Page/宏观经济学.md "wikilink")中用到的[时间序列分析方法](https://zh.wikipedia.org/wiki/时间序列 "wikilink")，尤其在中较为常用。HP滤波可以从原始数据中分离出周期性的部分，并得到一条平滑的曲线来表述整个时间序列，即把对短期波动更敏感的数据转成了对长期波动更敏感的表示方式，改变乘数\(\lambda\)可以调整其敏感程度。20世纪90年代，两位经济学家和[诺贝尔奖得主](../Page/诺贝尔经济学奖.md "wikilink")[爱德华·普雷斯科特发表了这种方法并受到学界欢迎](https://zh.wikipedia.org/wiki/爱德华·普雷斯科特 "wikilink")。\[1\]不过实际上早在1923年就首次发表了该方法\[2\]。

## 数学表述

这个方法的思想类似于。令\(\{y_t\},\ t = 1, 2, ..., T\,\)表示一组[时间序列变量的](https://zh.wikipedia.org/wiki/时间序列 "wikilink")[对数](https://zh.wikipedia.org/wiki/对数 "wikilink")，则\(\{y_t\}\)由一系列趋势项\(\tau_t\)、周期项\(c_t\)和误差项\(\epsilon_t\)组成，即\(y_t\ = \tau_t\ + c_t\ + \epsilon_t\)。\[3\]给定合适的正数\(\lambda\)，存在一个趋势项满足

  -
    \(\min_{\tau}\left(\sum_{t = 1}^T {(y_t - \tau _t )^2 } + \lambda \sum_{t = 2}^{T - 1} {[(\tau _{t+1} - \tau _t) - (\tau _t - \tau _{t - 1} )]^2 }\right)\)。

上式第一项表示变量偏离趋势项的误差\(d_t=y_t-\tau_t\)的平方和，从而控制了周期项的大小；第二项用乘子\(\lambda\)乘上趋势项二阶[差分](../Page/差分.md "wikilink")的平方和，从而控制了趋势项变化的剧烈程度。\(\lambda\)越大，后者的控制就越强。霍德里克和普雷斯科特建议季度数据\(\lambda\)取为1600，若单位不是季度则\(\lambda\)正比于每单位所含季度数的平方，即年度数据取100、月度数据取14,400。\[4\]雷文（Ravn）和乌利希（Uhlig）则在2002年发表的文章中提出\(\lambda\)应该正比于数据每单位所含季度数的四次方，即年度数据\(\lambda\)应取6.25、月度数据取129,600。\[5\]

麦克尔罗伊的一篇论文中给出了双侧HP滤波[谱分解的精确数学表达式](https://zh.wikipedia.org/wiki/谱分解 "wikilink")\[6\]。

## 评价

HP滤波很容易实现，不过它也存在一定缺陷，只在以下严苛条件下才能做出最优估计：\[7\]

  - 时间序列是的\[8\]，否则HP滤波会得到偏离实际情况的趋势项。
      - 如果发生了单次的永久性冲击（permanent shock）或存在稳定的趋势增长率，HP滤波得到的周期项也会扭曲。
  - 样本中的周期项是[白噪音](https://zh.wikipedia.org/wiki/白噪音 "wikilink")，或者趋势项和周期项中的随机变化机制相同。

标准的双侧HP滤波不应该用来估计基于递归状态空间表达的DSGE模型，这是因为HP滤波使用未来的观测\(t+i, i>0\)去构造当前时间点\(t\)的结果，但递归状态空间要求当前的观测仅基于当前和过去的状态。要解决这个问题，可以使用单侧HP滤波。\[9\]

## 参见

  - [带通滤波器](https://zh.wikipedia.org/wiki/带通滤波器 "wikilink")
  - [卡尔曼滤波](../Page/卡尔曼滤波.md "wikilink")

## 参考文献

## 拓展阅读

  -
  -
  -
## 外部链接

  - [普雷斯科特给出的Fortran代码](http://dge.repec.org/codes/prescott/hpfilter.for)
  - [Matlab实现](http://www.mathworks.com/matlabcentral/fileexchange/3972-hodrick-prescott-filter)
  - [单侧HP滤波的Matlab实现](https://ideas.repec.org/c/dge/qmrbcd/181.html)
  - [R语言实现的HP滤波，包名mFilter](https://cran.r-project.org/web/packages/mFilter/mFilter.pdf)
  - [在线进行HP滤波](http://jaac.wz.cz/hponlineapp.php)

[Category:时间序列](https://zh.wikipedia.org/wiki/Category:时间序列 "wikilink")

1.
2.   - as quoted in [Philips 2010](http://cowles.econ.yale.edu/P/cd/d17b/d1771.pdf)
3.  Kim, Hyeongwoo. "[Hodrick–Prescott Filter](http://www.auburn.edu/~hzk0001/hpfilter.pdf)" March 12, 2004
4.
5.
6.
7.
8.
9.