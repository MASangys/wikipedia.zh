[Sinc_function_(both).svg](https://zh.wikipedia.org/wiki/File:Sinc_function_\(both\).svg "fig:Sinc_function_(both).svg")

**sinc函数**是一種[函數](https://zh.wikipedia.org/wiki/函數 "wikilink")，在不同的領域它有不同的定義。數學家們用符號 \(\mathrm{sinc}(x)\,\) 表示這種函數。 sinc函数可以被定義为**归一化的**或者**非归一化的**，不過兩種函數都是[正弦函数和](https://zh.wikipedia.org/wiki/正弦函数 "wikilink")[单调的](../Page/单调函数.md "wikilink")[递减函数](https://zh.wikipedia.org/wiki/递减函数 "wikilink") 1/*x*的乘积：

1.  在[-{zh-tw:數位訊號處理; zh-cn:数字信号处理; zh-hk:數碼訊號處理;}-和](https://zh.wikipedia.org/wiki/數位訊號處理 "wikilink")[通信理论中](https://zh.wikipedia.org/wiki/通信理论 "wikilink")，人們把**归一化sinc函数**定义为
      -
        對於所有，\(\mathrm{sinc}(x) = \frac{\sin(\pi x)}{\pi x}\)
2.  在[数学](../Page/数学.md "wikilink")领域中，人們以前使用的**非归一化sinc函数** （for *sinus cardinalis*）被定义为
      -
        對於所有， \(\mathrm{sinc}(x) = \frac{\sin(x)}{x}\)

在这两种情况下，當x=0時sinc函数的值被定义为以下的極限值，因此 sinc 函数是处处可解析的。

  -
    對於任何實數 ，\(\operatorname{sinc}(0):=\lim_{x\to 0}\frac{\sin(a x)}{a x}= 1\)

**非归一化**sinc函数等同于**归一化**sinc函数，只是它的变量中没有放大系数 π 。

## 属性

[Re_Sinc_complex_plot.JPG](https://zh.wikipedia.org/wiki/File:Re_Sinc_complex_plot.JPG "fig:Re_Sinc_complex_plot.JPG") [Im_Sinc_complex_plot.JPG](https://zh.wikipedia.org/wiki/File:Im_Sinc_complex_plot.JPG "fig:Im_Sinc_complex_plot.JPG") [Abs_Sinc_complex_plot.JPG](https://zh.wikipedia.org/wiki/File:Abs_Sinc_complex_plot.JPG "fig:Abs_Sinc_complex_plot.JPG") **归一化** sinc 函数的特性使得它在插值与带限函数中得到理想应用：

  - 对于 \(k\ne 0\,\) 与 \(k\in\mathbb{Z}\,\)（[整数](../Page/整数.md "wikilink")），\(\mathrm{sinc}(0) = 1\,\) 和 \(\mathrm{sinc}(k) = 0\,\)；也就是说，它是一个[插值函数](https://zh.wikipedia.org/wiki/插值函数 "wikilink")。
  - 函数 \(x_k(t)=\mathrm{sinc}(t-k) \\) 在[函数空间](../Page/Lp空间.md "wikilink") \(L^2(\R)\) 形成一个[带限函数的](https://zh.wikipedia.org/wiki/带限 "wikilink")[正交基](https://zh.wikipedia.org/wiki/正交基 "wikilink")，它的最大角频率是 \(\omega_\mathrm{H}=\pi\,\) ，也就是说最大的循环频率是 \(f_\mathrm{H}=1/2\,\)。

这两个 sinc 函数的其它特性包括：

  - 非归一化 sinc 函数 \(\begin{matrix}\frac{\sin(x)}{x} \end{matrix}\,\)；对应于它与余弦函数的交点。也就是说，如果 \(\begin{matrix}\frac{\sin(x)}{x} \end{matrix}\,\) 的导数是 0 ，即在 \(x = a\,\) 有极值，那么 \(\begin{matrix}\frac{\sin(a)}{a} \end{matrix} = \cos(a) \,\) 。

<!-- end list -->

  - 非归一化 sinc 是第一类零阶球[贝塞尔函数](../Page/贝塞尔函数.md "wikilink")\(j_0(x) = \begin{matrix}\frac{\sin(x)}{x} \end{matrix}\,\)。归一化 sinc 是 \(j_0(\pi x)\,\)。

<!-- end list -->

  - 非归一化 sinc 的过零点是 \(\pi\,\) 的非零倍数；归一化 sinc 函数  \(\mathrm{sinc}(x) = \begin{matrix}\frac{\sin(\pi x)}{\pi x} \end{matrix}\,\)   的过零点出现在非零整数。

<!-- end list -->

  - 归一化 sinc 函数  \(\mathrm{sinc}(x) = \begin{matrix}\frac{\sin(\pi x)}{\pi x} \end{matrix}\,\)   的对于普通频率的[连续傅里叶变换](../Page/连续傅里叶变换.md "wikilink")是  \(\mathrm{rect}(f)\,\)。

\[\int_{-\infty}^\infty \mathrm{sinc}(t)\,e^{-2\pi i f t}dt = \mathrm{rect}(f)\],

  -
    其中[矩形函数](../Page/矩形函数.md "wikilink")在 –1/2 到 1/2 之间值为 1，在其它区域值为 0。

<!-- end list -->

  - 积分

\[\int_{-\infty}^\infty \begin{matrix}\frac{\sin(\pi x)}{\pi x} \end{matrix}\, dx = 1\]

  -
    是[广义积分](https://zh.wikipedia.org/wiki/广义积分 "wikilink")。因为：
    \[\int_{-\infty}^\infty \left|\begin{matrix}\frac{\sin(\pi x)}{\pi x} \end{matrix}\right|\ dx = \infty \,\]

所以它不是[勒貝格積分](../Page/勒貝格積分.md "wikilink")。

  - \(\mathrm{sinc}(x) = \frac{\sin \pi x}{\pi x} = \prod_{n=1}^\infty \left(1 - \frac{x^2}{n^2}\right)\)

<!-- end list -->

  - \(\mathrm{sinc}(x) = \frac{\sin \pi x}{\pi x} = \frac{1}{\Gamma(1+x)\Gamma(1-x)} = \frac{1}{x! (-x)!}\)

<!-- end list -->

  -
    其中 \(\Gamma(x)\) 是 [Γ函数](../Page/Γ函数.md "wikilink")。

## 与狄拉克δ分布的关系

尽管不是[分布](https://zh.wikipedia.org/wiki/分佈_\(數學分析\) "wikilink")，归一化 sinc 函数也可以作为 *nascent δ函数*（参见[狄拉克δ函数](../Page/狄拉克δ函数.md "wikilink")）使用。

*归一化* sinc 函数通过下式与[δ分布](https://zh.wikipedia.org/wiki/δ分布 "wikilink") δ(*x*) 发生联系

\[\lim_{a\rightarrow 0}\frac{1}{a}\textrm{sinc}(x/a)=\delta(x).\]

由于等式左侧并不收敛，所以这不是普通的 [limit](../Page/极限_\(数学\).md "wikilink")，而是说明对于任意的[緊支撐平滑函数](https://zh.wikipedia.org/wiki/緊支撐 "wikilink") \(\varphi(x)\) 有

\[\lim_{a\rightarrow 0}\int_{-\infty}^\infty \frac{1}{a}\textrm{sinc}(x/a)\varphi(x)\,dx
           =\int_{-\infty}^\infty\delta(x)\varphi(x)\,dx = \varphi(0),\]

在上面的表达式中，随着 *a* 趋近于 0，sinc 函数每个单元长度上的振动次数趋近于[无限](https://zh.wikipedia.org/wiki/无限 "wikilink")，然而不管 *a* 是什么值，这个表示通常在 ±1/(π*x*) 内振动。这与 δ(x) 的非正式表示有所矛盾，δ(x) 除了 *x=0* 之外其它 *x* 上的值都是 0，这表明了将δ函数作为函数而不是分布带来的问题。在[吉布斯现象](../Page/吉布斯现象.md "wikilink")（Gibbs phenomenon）中也有类似的状况。

## 参考文献

## 外部链接

  -
## 参见

  - [抗混叠](https://zh.wikipedia.org/wiki/抗混叠 "wikilink")

  - [Sinc滤波器](https://zh.wikipedia.org/wiki/Sinc滤波器 "wikilink")

  -
  - [波尔文积分](../Page/波尔文积分.md "wikilink")

[Category:信号处理](https://zh.wikipedia.org/wiki/Category:信号处理 "wikilink") [Category:基本特殊函数](https://zh.wikipedia.org/wiki/Category:基本特殊函数 "wikilink")