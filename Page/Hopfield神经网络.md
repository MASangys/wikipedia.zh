**霍普菲爾德神经网络**(Hopfield neural network)是一种[递归神经网络](../Page/递归神经网络.md "wikilink")，由[约翰·霍普菲尔德](../Page/约翰·霍普菲尔德.md "wikilink")在1982年发明。Hopfield网络是一种[结合存储](../Page/结合存储.md "wikilink")系统和[二元系统的神经网络](https://zh.wikipedia.org/wiki/二元 "wikilink")。它保证了向[局部极小的收敛](https://zh.wikipedia.org/wiki/局部极小 "wikilink")，但收敛到错误的局部极小值（local minimum），而非全局极小（global minimum）的情况也可能发生。Hopfield网络也提供了模拟人类记忆的模型。

## 构造

[Hopfield-net.png](https://zh.wikipedia.org/wiki/File:Hopfield-net.png "fig:Hopfield-net.png") Hopfield网络的单元是二元的（binary），即这些单元只能接受两个不同的值，并且值取决于输入的大小是否达到阈值。Hopfield网络通常接受值为-1或1，也可以是0或者1。输入是由[sigmoid函数处理得到的](https://zh.wikipedia.org/wiki/sigmoid函数 "wikilink")。 sigmoid函数定义为：

\(S(t) = \frac{1}{1 + e^{-t}}\)，

用于将输入化简为两个极值。

每一对Hopfiled网络的单元*i*和*j*间都有一对以一定权重（weight）的连接\(w_{ij}\)。因此，Hopfiled网络可被描述为一个完整的[无向图](https://zh.wikipedia.org/wiki/无向图 "wikilink")\(G = <V, f>\)，其中\(V\)是[人工神经元集合](https://zh.wikipedia.org/wiki/人工神经元 "wikilink")。

Hopfiled网络的连接有以下特征：

  - \(w_{ii}=0, \forall i\) （没有神经元和自身相连）
  - \(w_{ij} = w_{ji}, \forall i,j\) （连接权重是对称的）

权重对称的要求是一个重要特征，因为它保证了能量方程（称向函数某一点收敛的过程为势能转化为能量）在神经元激活时单调递减，而不对称的权重可能导致周期性的递增或者噪声。然而，Hopfiled网络也证明噪声过程会被局限在很小的范围，并且并不影响网络的最终性能。

## 参见

  - [玻尔兹曼机](../Page/玻尔兹曼机.md "wikilink") – 像一个Hopfield网络，可采用退火吉布斯抽样代替梯度下降
  - [受限玻尔兹曼机](../Page/受限玻尔兹曼机.md "wikilink")
  - [易辛模型](../Page/易辛模型.md "wikilink")
  - [赫布理论](../Page/赫布理论.md "wikilink")

## 参考文献

  - J. J. Hopfield, "Neural networks and physical systems with emergent collective computational abilities", *Proceedings of the National Academy of Sciences of the USA*, vol. 79 no. 8 pp. 2554–2558, April 1982.

<!-- end list -->

  - Hebb, D.O. (1949). Organization of behavior. New York: Wiley

<!-- end list -->

  - Hertz, J., Krogh, A., & Palmer, R.G. (1991). Introduction to the theory of neural computation. Redwood City, CA: Addison-Wesley.

<!-- end list -->

  - McCullough, W.S., & Pitts, W.H. (1943). A logical calculus of the ideas immanent in nervous activity. Bulletin of Mathematical Biophysics,5, 115-133

<!-- end list -->

  - Polyn, S.M., & Kahana, M.J. (2008). Memory search and the neural representation of context. Trends in Cognitive Sciences, 12, 24-30.

<!-- end list -->

  - Rizzuto, D.S., & Kahana, M.J. (2001). An autoassociative neural network model of paired-associate learning. Neural Computation, 13, 2075-2092.

<!-- end list -->

  - Kruse, Borgelt, Klawonn, Moewes, Russ, Steinbrecher (2011). Computational Intelligence.

## 外部链接

  - Chapter 13 [The Hopfield model](http://page.mi.fu-berlin.de/rojas/neural/chapter/K13.pdf) of [*Neural Networks - A Systematic Introduction*](http://page.mi.fu-berlin.de/rojas/neural/index.html.html) by Raul Rojas (ISBN 978-3-540-60505-8)
  - [Hopfield Neural Network Applet](https://archive.is/20121210050146/http://www.heatonresearch.com/articles/61/page1.html)
  - [Hopfield Neural Network implementation in Ruby (AI4R)](http://ai4r.org)
  - [The Travelling Salesman Problem](http://to-campos.planetaclix.pt/neural/hope.html) - Hopfield Neural Network JAVA Applet
  - [scholarpedia.org- Hopfield network](http://www.scholarpedia.org/article/Hopfield_network) - Article on Hopfield Networks by John Hopfield
  - [Hopfield Network Learning Using Deterministic Latent Variables](https://web.archive.org/web/20111005202201/http://www.tristanfletcher.co.uk/DLVHopfield.pdf) - Tutorial by Tristan Fletcher
  - [Neural Lab Graphical Interface](https://web.archive.org/web/20121025125326/http://gna.org/projects/neurallab/) - Hopfield Neural Network graphical interface (Python & gtk)

[Category:神經網路](https://zh.wikipedia.org/wiki/Category:神經網路 "wikilink")