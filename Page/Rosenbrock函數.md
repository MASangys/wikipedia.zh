[Rosenbrock_function.svg](https://zh.wikipedia.org/wiki/File:Rosenbrock_function.svg "fig:Rosenbrock_function.svg") 在數學[最佳化中](https://zh.wikipedia.org/wiki/最佳化 "wikilink")，**Rosenbrock函數**是一個用來測試最佳化[演算法性能的非凸函数](https://zh.wikipedia.org/wiki/演算法 "wikilink")，由Howard Harry Rosenbrock在1960年提出\[1\]。也稱為**Rosenbrock山谷**或**Rosenbrock香蕉函數**，也簡稱為**香蕉函數**。

Rosenbrock函數的定義如下：

  -
    \(f(x, y) = (1-x)^2 + 100(y-x^2)^2 .\quad\)

Rosenbrock函數的每个[等高线大致呈](https://zh.wikipedia.org/wiki/等高线 "wikilink")[抛物线](../Page/抛物线.md "wikilink")形，其全域最小值也位在抛物线形的山谷中（香蕉型山谷）。很容易找到這個山谷，但由於山谷內的值變化不大，要找到全域的最小值相當困難。

其全域最小值位於\((x, y)=(1, 1)\)點，數值為\(f(x, y)=0\)。有時第二項的係數不同，但不會影響全域最小值的位置。

[300 px](https://zh.wikipedia.org/wiki/File:Banana-SteepDesc.gif "fig:300 px")的結果，約1000次才到達全域最小值\]\]

## 多變數下的擴展

多變數的Rosenbrock函數有以下二種形式。一種是\(N/2\)個獨立二維Rosenbrock函數的和：

  -
    <math>f(\\mathbf{x}) = f(x_1, x_2, \\dots, x_N) = \\sum_{i=1}^{N/2} \\left\[100(x_{2i-1}^2 - x_{2i})^2

\+ (x_{2i-1} - 1)^2 \\right\].</math>\[2\]

此形式只在\(N\)為偶數時有定義，而且其解較簡單。

另一個較複雜的形式為：

  -
    \(f(\mathbf{x}) = \sum_{i=1}^{N-1} \left[  (1-x_i)^2+ 100 (x_{i+1} - x_i^2 )^2 \right] \quad \forall  \mathbf{x}\in\mathbb{R}^N.\)\[3\]

可證明當\(N=3\)時，此形式的Rosenbrock函數只有一個最小值（位置在\((1, 1, 1)\)），在 \(4 \le N \le 7\)時只有二個最小值，所有變數均為1時有全域最小值，而在\((x_1, x_2, \dots, x_N) = (-1, 1, \dots, 1)\)附近有局部最小值。此結果是將令函數的梯度為0後求得，Rosenbrock函數的梯度仍為一個\(x\)的多項式，在\(N\)較小時，可以精確的列出多項式， 再求出實根的個數，而其根限制在\(|x_i| < 2.4\)的範圍內\[4\]。若\(N\)較大時因為相關的係數太多，無法用以上方式進行。

## 随机函数

有許多方式可以將Rosenbrock函數延伸到隨機（stochastic）函數，以下是一種例子：\[5\]

  -
    \(f(\mathbf{x}) =\sum_{i=1}^{n-1} \Big[(1-x_i)^2+100 \epsilon_i (x_{i+1}-x_i^2)^2 \Big],\)

其中隨機變數\(\epsilon_i (i=1,2,...,n-1)\)服從[均勻分布](../Page/連續型均勻分布.md "wikilink") Unif(0,1)。原則上，此隨機函數的全域最小值仍在(1,1,...,1)，不過因為其隨機的特性，任何以[梯度下降法為基礎的最佳化演算法均無法用來求得此隨機函數的最小值](https://zh.wikipedia.org/wiki/梯度下降法 "wikilink")。

## 可適用的最佳化演算法

經若經過適當的坐標系調整，可以在沒有梯度資訊及不建立局部近似模型的情形下（和其他不使用梯度資訊的最佳化演算法相反），用最佳化演算法求得Rosenbrock函數的最小值。以下的例子說明如何用對二維的Rosenbrock函數進行最佳化，啟始點\(x_0=(-3,-4)\)。在325次函數的運算後可找到最小值的位置，函數的數值為\(10^{-10}\)。

[Rosenbrock.png](https://zh.wikipedia.org/wiki/File:Rosenbrock.png "fig:Rosenbrock.png")

## 相關條目

  -
  -
  - [格里旺克函數](https://zh.wikipedia.org/wiki/格里旺克函數 "wikilink")

## 參考資料

## 外部連結

  - [Rosenbrock function plot in 3D](http://www.gnuplot.info/screenshots/figs/pm3d-Rosenbrock.png)

  - [Minimizing the Rosenbrock Function](http://demonstrations.wolfram.com/MinimizingTheRosenbrockFunction/) by Michael Croucher, [The Wolfram Demonstrations Project](https://zh.wikipedia.org/wiki/The_Wolfram_Demonstrations_Project "wikilink").

  -
[Category:數學最佳化](https://zh.wikipedia.org/wiki/Category:數學最佳化 "wikilink")

1.
2.  L C W Dixon, D J Mills. Effect of Rounding errors on the Variable Metric Method. *Journal of Optimization Theory and Applications* **80**, 1994. [1](http://portal.acm.org/citation.cfm?id=179711)
3.
4.  Schalk Kok, Carl Sandrock. Locating and Characterizing the Stationary Points of the Extended Rosenbrock Function. *Evolutionary Computation* **17**, 2009. [2](http://www.mitpressjournals.org/doi/abs/10.1162/evco.2009.17.3.437)
5.  Yang X.-S. and Deb S., Engineering optimization by cuckoo searc１h, Int. J. Math. Modelling Num. Optimisation, Vol. 1, No. 4, 330-343 (2010)