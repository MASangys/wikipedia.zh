在[统计学和](../Page/统计学.md "wikilink")[机器学习中](../Page/机器学习.md "wikilink")，**Lasso算法**（英语：**least
absolute shrinkage and selection
operator**，又译最小绝对值收敛和选择算子、套索算法）是一种同时进行[特征选择和](../Page/特征选择.md "wikilink")[正则化](https://zh.wikipedia.org/wiki/正则化 "wikilink")（数学）的[回归分析方法](https://zh.wikipedia.org/wiki/回归分析 "wikilink")，旨在增强[统计模型的预测准确性和可解释性](https://zh.wikipedia.org/wiki/统计模型 "wikilink")，最初由[斯坦福大学统计学教授](https://zh.wikipedia.org/wiki/斯坦福大学 "wikilink")于1996年基于[Leo
Breiman的](https://zh.wikipedia.org/wiki/Leo_Breiman "wikilink")[非负参数推断](https://zh.wikipedia.org/wiki/非负参数推断 "wikilink")(Nonnegative
Garrote,
NNG)提出\[1\]\[2\]。Lasso算法最初用于计算[最小二乘法模型](../Page/最小二乘法.md "wikilink")，这个简单的算法揭示了很多[估计量的重要性质](../Page/估计量.md "wikilink")，如[估计量与](../Page/估计量.md "wikilink")[岭回归](https://zh.wikipedia.org/wiki/岭回归 "wikilink")（Ridge
regression，也叫Tikhonov
regularization）和最佳子集选择的关系，Lasso系数[估计值](https://zh.wikipedia.org/wiki/估计值 "wikilink")(estimate)和[软阈值](https://zh.wikipedia.org/wiki/软阈值 "wikilink")（soft
thresholding）之间的联系。它也揭示了当[协变量](https://zh.wikipedia.org/wiki/协变量 "wikilink")[共线时](../Page/共線_\(幾何\).md "wikilink")，Lasso系数估计值不一定唯一（类似标准[线性回归](../Page/線性回歸.md "wikilink")）。

虽然最早是为应用最小二乘法而定义的算法，lasso正则化可以简单直接地拓展应用于许多统计学模型上，包括[广义线性模型](../Page/廣義線性模型.md "wikilink")，[广义估计方程](https://zh.wikipedia.org/wiki/广义估计方程 "wikilink")，[成比例灾难模型和](https://zh.wikipedia.org/wiki/成比例灾难模型 "wikilink")[M-估计](https://zh.wikipedia.org/wiki/M-估计 "wikilink")\[3\]\[4\]。Lasso选择子集的能力依赖于限制条件的形式并且有多种表现形式，包括[几何学](../Page/几何学.md "wikilink")，[贝叶斯统计](https://zh.wikipedia.org/wiki/贝叶斯统计 "wikilink")，和[凸分析](https://zh.wikipedia.org/wiki/凸分析 "wikilink")。

Lasso算法与[基追踪降噪联系紧密](https://zh.wikipedia.org/wiki/基追踪降噪 "wikilink")。

## 历史来源

[Robert
Tibshirani最初使用Lasso来提高预测的准确性与回归模型的可解释性](https://zh.wikipedia.org/wiki/Robert_Tibshirani "wikilink")，他修改了模型拟合的过程，在协变量中只选择一个子集应用到最终模型中，而非用上全部协变量。这是基于有着相似目的，但方法有所不同的Breiman的非负参数推断。

在Lasso之前，选择模型中协变量最常用的方法是[移步选择](https://zh.wikipedia.org/wiki/移步选择 "wikilink")，这种方法在某些情况下是准确的，例如一些协变量与模型输出值有强相关性情况。然而在另一些情况下，这种方法会让预测结果更差。在当时，[岭回归是提高模型预测准确性最常用的方法](https://zh.wikipedia.org/wiki/岭回归 "wikilink")。岭回归可以通过[缩小大的](https://zh.wikipedia.org/wiki/缩小 "wikilink")[回归系数来减少过拟合从而改善模型预测偏差](../Page/迴歸分析.md "wikilink")。但是它并不选择协变量，所以对模型的准确构建和解释没有帮助。

Lasso结合了上述的两种方法，它通过强制让回归系数绝对值之和小于某固定值，即强制一些回归系数变为0，有效地选择了不包括这些回归系数对应的协变量的更简单的模型。这种方法和[岭回归类似](https://zh.wikipedia.org/wiki/岭回归 "wikilink")，在岭回归中，回归系数平方和被强制小于某定值，不同点在于岭回归只改变系数的值，而不把任何值设为0。

## 基本形式

Lasso最初为了最小二乘法而被设计出来，Lasso的最小二乘法应用能够简单明了地展示Lasso的许多特性。

假设一个样本包括N种事件，每个事件包括*p*个协变量和一个输出值。让\(y_i\)为输出值，并且\(x_i:=(x_1,x_2,\ldots,x_p)^T\)为第i种情况的协变量向量，那么Lasso要计算的目标方程就是：

对所有 \(\sum_{j=1}^p |\beta_j| \leq t\)，计算
\(\min_{ \beta_0, \beta } \left\{ \frac{1}{N} \sum_{i=1}^N (y_i - \beta_0 - x_i^T \beta)^2 \right\}\)\[5\]

这里 \(t\) 是一个决定规则化程度的预定的自由参数。
设\(X\)为[协方差矩阵](../Page/协方差矩阵.md "wikilink")，那么
\(X_{ij} = (x_i)_j\)，其中 \(x_i^T\) 是 \(X\)的第 *i* 行，那么上式可以写成更紧凑的形式：

  -
    对所有 \(\| \beta \|_1 \leq t\)，计算
    \(\min_{ \beta_0, \beta } \left\{ \frac{1}{N} \left\| y - \beta_0 - X \beta \right\|_2^2 \right\}\)

这里 \(\| \beta \|_p = \left( \sum_{i=1}^N | \beta_i |^p \right)^{1/p}\)
是标准
[\(\ell^p\)](https://zh.wikipedia.org/wiki/Lp_space#The_p-norm_in_finite_dimensions "wikilink")
[范数](../Page/范数.md "wikilink")，\(1_N\)是\(N \times 1\)维的1的向量。

因为 \(\hat{\beta}_0 = \bar{y} - \bar{x}^T \beta\)，所以有

  -
    \(y_i - \hat{\beta}_0 - x_i^T \beta = y_i - ( \bar{y} - \bar{x}^T \beta ) - x_i^T \beta = ( y_i - \bar{y} ) - ( x_i - \bar{x} )^T \beta,\)

对变量进行中心化是常用的数据处理方法。并且协方差一般规范化为
\(\textstyle \left( \sum_{i=1}^N x_{ij}^2 = 1 \right)\)
，这样得到的解就不会依赖测量的规模。

它的目标方程还可以写为：

  -
    \(\min_{ \beta \in \mathbb{R}^p } \left\{ \frac{1}{N} \left\| y - X \beta \right\|_2^2 \right\} \text{ subject to } \| \beta \|_1 \leq t.\)

in the so-called Lagrangian form

  -
    \(\min_{ \beta \in \mathbb{R}^p } \left\{ \frac{1}{N} \left\| y - X \beta \right\|_2^2 + \lambda \| \beta \|_1 \right\}\)

where the exact relationship between \(t\) and \(\lambda\) is data
dependent.

### Orthonormal covariates

Some basic properties of the lasso estimator can now be considered.

Assuming first that the covariates are
[orthonormal](https://zh.wikipedia.org/wiki/orthonormal "wikilink") so
that \(( x_i \mid x_j ) = \delta_{ij}\), where \(( \cdot \mid \cdot )\)
is the [inner
product](https://zh.wikipedia.org/wiki/inner_product "wikilink") and
\(\delta_{ij}\) is the [Kronecker
delta](https://zh.wikipedia.org/wiki/Kronecker_delta "wikilink"), or,
equivalently, \(X^T X = I\), then using [subgradient
methods](https://zh.wikipedia.org/wiki/subgradient_methods "wikilink")
it can be shown that

  -
    <math>

\\begin{align} \\hat{\\beta}_j = {} & S_{N \\lambda}(
\\hat{\\beta}^\\text{OLS}_j ) = \\hat{\\beta}^\\text{OLS}_j \\max
\\left( 0, 1 - \\frac{ N \\lambda }{ |\\hat{\\beta}^\\text{OLS}_j| }
\\right) \\\\ & \\text{ where } \\hat{\\beta}^\\text{OLS} = (X^T X)^{-1}
X^T y \\end{align} </math> \[6\]

\(S_\alpha\) is referred to as the soft thresholding operator, since it
translates values towards zero (making them exactly zero if they are
small enough) instead of setting smaller values to zero and leaving
larger ones untouched as the hard thresholding operator, often denoted
\(H_\alpha\), would.

This can be compared to ridge regression, where the objective is to
minimize

  -
    \(\min_{ \beta \in \mathbb{R}^p } \left\{ \frac{1}{N} \| y - X \beta \|_2^2 + \lambda \| \beta \|_2^2 \right\}\)

yielding

  -
    \(\hat{\beta}_j = ( 1 + N \lambda )^{-1} \hat{\beta}^\text{OLS}_j.\)

So ridge regression shrinks all coefficients by a uniform factor of
\((1 + N \lambda)^{-1}\) and does not set any coefficients to zero.

It can also be compared to regression with best subset selection, in
which the goal is to minimize

  -
    \(\min_{ \beta \in \mathbb{R}^p } \left\{ \frac{1}{N} \left\| y - X \beta \right\|_2^2 + \lambda \| \beta \|_0 \right\}\)

where \(\| \cdot \|_0\) is the "\(\ell^0\) norm", which is defined as
\(\| z \| = m\) if exactly m components of z are nonzero. In this case,
it can be shown that

  -
    \(\hat{\beta}_j = H_{ \sqrt{ N \lambda } } \left( \hat{\beta}^\text{OLS}_j \right) = \hat{\beta}^\text{OLS}_j \mathrm{I} \left( \left| \hat{\beta}^\text{OLS}_j \right| \geq \sqrt{ N \lambda } \right)\)

where \(H_\alpha\) is the so-called hard thresholding function and
\(\mathrm{I}\) is an indicator function (it is 1 if its argument is true
and 0 otherwise).

Therefore, the lasso estimates share features of the estimates from both
ridge and best subset selection regression since they both shrink the
magnitude of all the coefficients, like ridge regression, but also set
some of them to zero, as in the best subset selection case.
Additionally, while ridge regression scales all of the coefficients by a
constant factor, lasso instead translates the coefficients towards zero
by a constant value and sets them to zero if they reach it.

### Correlated covariates

Returning to the general case, in which the different covariates may not
be
[independent](https://zh.wikipedia.org/wiki/Independence_\(probability_theory\) "wikilink"),
a special case may be considered in which two of the covariates, say *j*
and *k*, are identical for each case, so that \(x_{(j)} = x_{(k)}\),
where \(x_{(j),i} = x_{ij}\). Then the values of \(\beta_j\) and
\(\beta_k\) that minimize the lasso objective function are not uniquely
determined. In fact, if there is some solution \(\hat{\beta}\) in which
\(\hat{\beta}_j \hat{\beta}_k \geq 0\), then if \(s \in [0,1]\)
replacing \(\hat{\beta}_j\) by \(s ( \hat{\beta}_j + \hat{\beta}_k )\)
and \(\hat{\beta}_k\) by \((1 - s ) ( \hat{\beta}_j + \hat{\beta}_k )\),
while keeping all the other \(\hat{\beta}_i\) fixed, gives a new
solution, so the lasso objective function then has a continuum of valid
minimizers.\[7\] Several variants of the lasso, including the Elastic
Net, have been designed to address this shortcoming, which are discussed
below.

## 一般形式

## 算法解释

## 参见

  - [降维](../Page/降维.md "wikilink")
  - [特征选择](../Page/特征选择.md "wikilink")

## 参考文献

[Category:回归分析](https://zh.wikipedia.org/wiki/Category:回归分析 "wikilink")
[Category:統計方法](https://zh.wikipedia.org/wiki/Category:統計方法 "wikilink")

1.  Tibshirani, Robert. 1996. “Regression Shrinkage and Selection via
    the lasso”. Journal of the Royal Statistical Society. Series B
    (methodological) 58 (1). Wiley: 267–88.
    <http://www.jstor.org/stable/2346178>.

2.

3.

4.

5.
6.
7.