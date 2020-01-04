> 本文内容由[AdaBoost](https://zh.wikipedia.org/wiki/AdaBoost)转换而来。


AdaBoost，是英文"Adaptive Boosting"（自适应增强）的缩写，是一种[机器学习](../Page/机器学习.md "wikilink")方法，由Yoav Freund和Robert Schapire提出。\[1\]AdaBoost方法的自适应在于：前一个分类器分错的样本会被用来训练下一个分类器。AdaBoost方法对于噪声数据和异常数据很敏感。但在一些问题中，AdaBoost方法相对于大多数其它学习算法而言，不会很容易出现过拟合现象。AdaBoost方法中使用的分类器可能很弱（比如出现很大错误率），但只要它的分类效果比随机好一点（比如两类问题分类错误率略小于0.5），就能够改善最终得到的模型。而错误率高于随机分类器的弱分类器也是有用的，因为在最终得到的多个分类器的线性组合中，可以给它们赋予负系数，同样也能提升分类效果。

AdaBoost方法是一种迭代算法，在每一轮中加入一个新的弱分类器，直到达到某个预定的足够小的错误率。每一个训练样本都被赋予一个权重，表明它被某个分类器选入训练集的概率。如果某个样本点已经被准确地分类，那么在构造下一个训练集中，它被选中的概率就被降低；相反，如果某个样本点没有被准确地分类，那么它的权重就得到提高。通过这样的方式，AdaBoost方法能“聚焦于”那些较难分（更富信息）的样本上。在具体实现上，最初令每个样本的权重都相等，对于第k次迭代操作，我们就根据这些权重来选取样本点，进而训练分类器C<sub>k</sub>。然后就根据这个分类器，来提高被它分错的的样本的权重，并降低被正确分类的样本权重。然后，权重更新过的样本集被用于训练下一个分类器C<sub>k</sub>\[2\]。整个训练过程如此迭代地进行下去。

## AdaBoost算法

用<big>x</big><sup><big>i</big></sup>和y<sub>i</sub>表示原始样本集D的样本点和它们的类标。用W<sub>k</sub>(i)表示第k次迭代时全体样本的权重分布。这样就有如下所示的AdaBoost算法：

1.  **begin initial** D={x<sup>1</sup>，y<sub>1</sub>，...，x<sup>n</sup>，y<sub>n</sub>}，k<sub>max</sub>（最大循环次数），W<sub>k</sub>(i)=1/n，i=1，...，n
2.  k ← 0
3.  do k ← k+1
4.  训练使用按照W<sub>k</sub>(i)采样的D的弱学习器C<sub>k</sub>
5.  E<sub>k</sub> ←对使用W<sub>k</sub>(i)的D测量的C<sub>k</sub>的训练误差
6.  \(\alpha_{k} \gets \tfrac{1}{2} \ln\frac{1-E_{k}}{E_{k}}\)
7.  \(W_{k+1}(i) \gets \dfrac{W_{k}(i)}{Z_{k}} \times \begin{cases} e^{-\alpha_{k}}, & \mbox{if  } h_{k}(x^{i})=y_{i} \\ e^{\alpha_{k}}, & \mbox{if  } h_{k}(x^{i}) \ne y_{i} \end{cases}\)
8.  **until** k=k<sub>max</sub>
9.  **return** C<sub>k</sub>和α<sub>k</sub>，k=1，...，k<sub>max</sub>（带权值分类器的总体）
10. **end**

注意第5行中，当前权重分布必须考虑到分类器C<sub>k</sub>的误差率。在第7行中，Z<sub>k</sub>只是一个归一化系数，使得W<sub>k</sub>(i)能够代表一个真正的分布，而h<sub>k</sub>(x<sup>i</sup>)是分量分类器C<sub>k</sub>给出的对任一样本点x<sup>i</sup>的标记（+1或-1），h<sub>k</sub>(x<sup>i</sup>) = y<sub>i</sub>时，样本被正确分类。第8行中的迭代停止条件可以被换为判断当前误差率是否小于一个阈值。

最后的总体分类的判决可以使用各个分量分类器加权平均来得到：

\(g(x) = [\sum_{k=1}^{k_{max}} \alpha_{k} h_{k}(x)]\)

这样，最后对分类结果的判定规则是：

\(H(x) = \textrm{sign}\left( g(x) \right)\)

## 软件实现

  - [AdaBoost and the Super Bowl of Classifiers - A Tutorial on AdaBoost.](http://www.inf.fu-berlin.de/inst/ag-ki/adaboost4.pdf)
  - [Adaboost in C++](http://codingplayground.blogspot.com/2009/03/adaboost-improve-your-performance.html), an implementation of Adaboost in C++ and boost by Antonio Gulli
  - [icsiboost](http://code.google.com/p/icsiboost/), an open source implementation of Boostexter
  - [JBoost](http://jboost.sourceforge.net), a site offering a classification and visualization package, implementing AdaBoost among other boosting algorithms.
  - [MATLAB AdaBoost toolbox. Includes Real AdaBoost, Gentle AdaBoost and Modest AdaBoost implementations.](https://web.archive.org/web/20110817114237/http://graphics.cs.msu.ru/en/science/research/machinelearning/adaboosttoolbox)
  - [A Matlab Implementation of AdaBoost](http://www.mathworks.com/matlabcentral/fileexchange/loadFile.do?objectId=21317&objectType=file)
  - [Multi-threaded MATLAB-compatible implementation of Boosted Trees](https://sites.google.com/site/carlosbecker/resources/gradient-boosting-boosted-trees)
  - [milk](http://luispedro.org/software/milk) for Python implements [AdaBoost](https://web.archive.org/web/20120711210335/http://packages.python.org/milk/adaboost.html).
  - [MPBoost++](http://www.esuli.it/mpboost), a C++ implementation of the original AdaBoost.MH algorithm and of an improved variant, the MPBoost algorithm.
  - [multiboost](http://www.multiboost.org/), a fast C++ implementation of multi-class/multi-label/multi-task boosting algorithms. It is based on AdaBoost.MH but also implements popular cascade classifiers and FilterBoost along with a batch of common multi-class base learners（stumps, trees, products, Haar filters）。
  - [NPatternRecognizer](http://npatternrecognizer.codeplex.com/), a fast machine learning algorithm library written in C\#. It contains support vector machine, neural networks, bayes, boost, k-nearest neighbor, decision tree, ..., etc.
  - [OpenCV implementation of several boosting variants](https://web.archive.org/web/20120924165410/http://opencv.willowgarage.com/documentation/cpp/boosting.html)
  - [Into](https://web.archive.org/web/20100709025652/http://intopii.com/into/) contains open source implementations of many AdaBoost and FloatBoost variants in C++.
  - [Mallet](http://mallet.cs.umass.edu/) Java implementation.
  - [adabag](http://cran.r-project.org/web/packages/adabag/) adabag: An R package for binary and multiclass Boosting and Bagging.
  - [Scikit-learn](http://scikit-learn.org/dev/modules/ensemble.html#adaboost) Python implementation.

## 参考书目

[Category:分類演算法](https://zh.wikipedia.org/wiki/Category:分類演算法 "wikilink")

1.
2.  O. Duda, Peter E. Hart, David G. Stork, *Pattern Classification*, 2nd Edition, Wiley, 2000, ISBN 978-0-471-05669-0