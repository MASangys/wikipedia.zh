**STA**，英文全称Spike-triggered average，直译做“发放-触发平均方法”。

STA是[神经科学](../Page/神经科学.md "wikilink")研究，尤其是[视觉研究中用于描述](https://zh.wikipedia.org/wiki/视觉 "wikilink")[神经元反应特性的一种方法](https://zh.wikipedia.org/wiki/神经元 "wikilink")。这种方法主要被用来分析[电生理数据](https://zh.wikipedia.org/wiki/电生理 "wikilink")，估计神经元的[线性](https://zh.wikipedia.org/wiki/线性 "wikilink")[感受野](https://zh.wikipedia.org/wiki/感受野 "wikilink")。

[SpikeTriggeredAverage.png](https://zh.wikipedia.org/wiki/File:SpikeTriggeredAverage.png "fig:SpikeTriggeredAverage.png")使用列的方式表现出来。设定一个[时间窗](https://zh.wikipedia.org/wiki/时间窗 "wikilink")（这里的时间窗是每个spike之前的第2到第4帧，共3帧），将所有发放之前的某个时间窗之内的视觉刺激进行叠加平均（橙色框内），就生成了右面的STA图。这里的STA图表示该神经元对3个白色的像素有响应，并且随着这3帧的播放，这三个白色像素的空间位置也在变化。\]\]

## 原理

从数学上来讲，STA是指每一个[发放前一定时间的所有视觉刺激的叠加平均值](https://zh.wikipedia.org/wiki/发放 "wikilink")\[1\]\[2\]\[3\]\[4\]。计算STA的方法如下，对于一个神经元对某视觉刺激的反应而言，首先设定一个时间窗；然后将每一个发放之前、此时间窗之内呈现的视觉刺激提取出来；最后将所有提取出来的视觉刺激进行叠加平均（如图所示）。只要视觉刺激的分布是[球面对称的](https://zh.wikipedia.org/wiki/球面对称 "wikilink")（比如，[高斯白噪声](https://zh.wikipedia.org/wiki/高斯噪声 "wikilink")），使用STA方法就可以得到一个神经元的[无偏估计感受野](https://zh.wikipedia.org/wiki/无偏估计 "wikilink")\[5\]\[6\]\[7\]。

## 应用

STA方法被用来描绘[视网膜](../Page/视网膜.md "wikilink")[神经节细胞](https://zh.wikipedia.org/wiki/神经节细胞 "wikilink")\[8\]\[9\]、[LGN（外侧膝状体）和](https://zh.wikipedia.org/wiki/外侧膝状体 "wikilink")[纹状皮层](https://zh.wikipedia.org/wiki/纹状皮层 "wikilink")[简单细胞](https://zh.wikipedia.org/wiki/简单细胞 "wikilink")\[10\]\[11\]的感受野。还被用来估计[线性-非线性泊松梯级模型的线性阶段](https://zh.wikipedia.org/wiki/线性-非线性泊松梯级模型 "wikilink")\[12\] 。

STA方法也经常被称为*反相关分析*或者*白噪声分析*。STA方法最早出现在[伏尔特拉内核和](https://zh.wikipedia.org/wiki/伏尔特拉级数 "wikilink")[维纳内核的级数膨胀中](https://zh.wikipedia.org/wiki/维纳级数 "wikilink")\[13\]，与[线性回归有密切的关系](https://zh.wikipedia.org/wiki/线性回归 "wikilink")。

## 数学定义

### 标准STA

假设\(\mathbf{x_i}\)代表每一个[发放之前的第](https://zh.wikipedia.org/wiki/发放 "wikilink")\(i\)帧的视觉刺激时空向量，\(y_i\)代表该发放前面第\(i\)帧这段时间里的发放数。所有视觉刺激的叠加平均值应当为零（\(E[\mathbf{x}]=0\)）。如果不为零，就将所有的向量减掉这个平均值。这样STA就可以从下面的式子得到：

\(\mathrm{STA} = \tfrac{1}{n_{sp}}\sum_{i=1}^T y_i \mathbf{x_i},\)，在这里，\(n_{sp} = \sum y_i\)代表总的发放数。

如果使用矩阵表示，式子就会变得更加简单。假设矩阵\(X\)的第\(i\)行代表视觉刺激时空向量\(\mathbf{x_i^T}\)；\(\mathbf{y}\)代表一个列向量，该列向量的第\(i\)个元素为\(y_i\)。STA就可以写成：

\(\mathrm{STA} = \tfrac{1}{n_{sp}} X^T \mathbf{y}.\)

### 白化STA

如果不是[白噪声](https://zh.wikipedia.org/wiki/白噪声 "wikilink")，而是在时空上具有非零相关性的视觉刺激，那么使用标准STA就会产生对线性感受野的一个[有偏估计](https://zh.wikipedia.org/wiki/有偏估计 "wikilink")\[14\]。 因此可以通过将视觉刺激的[协方差矩阵](../Page/协方差矩阵.md "wikilink")反转的方式将STA进行白化处理。 这样得到的最后结果就是白化STA，公式如下：

\(\mathrm{STA}_w = \left(\tfrac{1}{T}\sum_{i=1}^T\mathbf{x_i}\mathbf{x_i}^T\right)^{-1} \left(\tfrac{1}{n_{sp}} \sum_{i=1}^T y_i \mathbf{x_i}\right),\)

第一项是原始视觉刺激的协方差矩阵的反转，第二项是标准STA。如果使用[矩阵](../Page/矩阵.md "wikilink")的表示，公式可以写成：

\(\mathrm{STA}_w = \tfrac{T}{n_{sp}} \left(X^TX\right)^{-1}X^T \mathbf{y}.\)

只有当视觉刺激的分布可以使用相关的[高斯分布来描述的时候](https://zh.wikipedia.org/wiki/高斯分布 "wikilink")，白化STA才是无偏的（高斯相关分布是[椭圆对称的](https://zh.wikipedia.org/wiki/椭圆对称 "wikilink")，举个例子，高斯相关分布可以通过线性变换变成[球形对称](https://zh.wikipedia.org/wiki/球形对称 "wikilink")，但是并非所有的椭圆对称分布都是高斯的。）。\[15\]这是一种比球面对称更弱的情况。

白化STA相当于以发放序列为参考对视觉刺激做[线性回归计算](https://zh.wikipedia.org/wiki/线性回归 "wikilink")。

### 正则化STA

在实际应用中，由于白化操作会增加视觉刺激某些维度上的噪音（刺激变化比较小的维度），有可能有必要对白化STA进行[正则化处理](https://zh.wikipedia.org/wiki/正则化 "wikilink")。通用的方法是[吉洪诺夫正则化处理](https://zh.wikipedia.org/wiki/吉洪诺夫正则化 "wikilink")。正则化后的STA，如果使用线性回归表述，公式为：

\(\mathrm{STA}_{ridge} = \tfrac{T}{n_{sp}} \left(X^TX + \lambda I\right)^{-1}X^T \mathbf{y},\)

式中\(I\)代表[单位矩阵](https://zh.wikipedia.org/wiki/单位矩阵 "wikilink")， \(\lambda\)是控制正则化量的[岭参数](https://zh.wikipedia.org/wiki/岭参数 "wikilink")。这种处理方法有一个简单的[贝叶斯解释](../Page/贝叶斯定理.md "wikilink")：[岭回归相当于将平均值为零的高斯置于STA的元素前](https://zh.wikipedia.org/wiki/岭回归 "wikilink")。岭参数设定了这种处理之前的逆差别。

## 统计特性

根据LNP模型（[线性-非线性泊松梯级模型](https://zh.wikipedia.org/wiki/线性-非线性泊松梯级模型 "wikilink")），白化STA提供了一个对线性感受野亚空间的估计。这种估计的性质如下：

### 一致性

白化STA是一种[一致性估计](https://zh.wikipedia.org/wiki/一致性估计 "wikilink")，比如，这种估计在下列两个条件下会汇聚到真实的线性亚空间：

1.  视觉刺激的分布 是[椭圆对称的](https://zh.wikipedia.org/wiki/椭圆分布 "wikilink")，比如[高斯](https://zh.wikipedia.org/wiki/高斯分布 "wikilink")（[Bussgang 定理](https://zh.wikipedia.org/wiki/Bussgang_定理 "wikilink")）。
2.  期望的STA是非零的。比如非线性引起的神经发放触发的视觉刺激的位移。\[16\]

### 最优性

白化STA在下面的两种情况下是[有效估计量的渐近线](https://zh.wikipedia.org/wiki/有效估计量 "wikilink")：

1.  视觉刺激的分布\(P(\mathbf{x})\)是椭圆对称的；
2.  神经元的非线性反应函数是指数的，\(exp(x)\)\[17\]。

对于任何一种刺激来说，其STA一般既不是一致的也不是有效的。在这些不一致的情况下，可以使用[最大似然估计](../Page/最大似然估计.md "wikilink")和[互信息](../Page/互信息.md "wikilink")估计\[18\]\[19\]\[20\]来实现一致性和有效性。

## 另外参见

  - [STC](https://zh.wikipedia.org/wiki/STC "wikilink")
  - [线性-非线性泊松梯级模型](https://zh.wikipedia.org/wiki/线性-非线性泊松梯级模型 "wikilink")
  - [分段逆回归](https://zh.wikipedia.org/wiki/分段逆回归 "wikilink")

## 参考文献

## 外部链接

  - [用于计算STA的MATLAB代码](https://web.archive.org/web/20100614031003/http://pillowlab.cps.utexas.edu/code_STC.html)

[Category:神经科学](https://zh.wikipedia.org/wiki/Category:神经科学 "wikilink") [Category:神经生理学](https://zh.wikipedia.org/wiki/Category:神经生理学 "wikilink") [Category:电生理学](https://zh.wikipedia.org/wiki/Category:电生理学 "wikilink") [Category:计算神经科学](https://zh.wikipedia.org/wiki/Category:计算神经科学 "wikilink")

1.  de Boer and Kuyper (1968) Triggered Correlation. *IEEE Transact. Biomed. Eng.*, 15:169-179

2.  Marmarelis, P. Z. and Naka, K. (1972). White-noise analysis of a neuron chain: an application of the Wiener theory. *Science*, 175:1276-1278

3.  Chichilnisky, E. J. (2001). A simple white noise analysis of neuronal light responses. *Network: Computation in Neural Systems*, 12:199-213

4.  Simoncelli, E. P., Paninski, L., Pillow, J. & Swartz, O. (2004). ["Characterization of neural responses with stochastic stimuli"](http://www.cns.nyu.edu/~lcv/pubs/makeAbs.php?loc=Simoncelli03c). In M. Gazzaniga (Ed.) *The Cognitive Neurosciences, III* (pp. 327-338). MIT press.

5.
6.  Paninski, L. (2003). Convergence properties of some spike-triggered analysis techniques. *Network: Computation in Neural Systems* 14:437-464

7.  Sharpee, T.O., Rust, N.C., & Bialek, W. (2004). Analyzing neural responses to natural signals: Maximally informative dimensions. *Neural Computation* 16:223-250

8.  Sakai, H.M. and Naka, K., (1987). Signal transmission in the catfish retina. V. Sensitivity and circuit. *Journal of neurophysiology*, 58:1329--1350

9.  Meister, Pine, and Baylor (1994).

10. Jones and Palmer (1987).

11. McLean and Palmer (1989).

12.
13. Lee and Schetzen (1965). Measurement of the Wiener kernels of a non- linear system by cross-correlation. *International Journal of Control, First Series*, 2:237-254

14.
15.
16.
17.
18.
19.
20. Kouh M. & Sharpee, T.O. (2009). Estimating linear-nonlinear models using Renyi divergences, *Network: Computation in Neural Systems* 20(2): 49–68