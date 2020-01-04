> 本文内容由[Henstock–Kurzweil积分](https://zh.wikipedia.org/wiki/Henstock–Kurzweil积分)转换而来。


在[数学](../Page/数学.md "wikilink")中，**Henstock–Kurzweil积分**（也称为**Luzin积分**、**Perron积分**，有时为了和广义Denjoy积分区别而称为**Denjoy积分**）是[黎曼积分](../Page/黎曼积分.md "wikilink")的一种推广，有些情况下比[勒贝格积分更加宽泛](https://zh.wikipedia.org/wiki/勒贝格积分 "wikilink")。

Henstock-Kurzweil积分最早是由二十世纪初[法国](https://zh.wikipedia.org/wiki/法国 "wikilink")[数学家](../Page/数学家.md "wikilink")引进的。Arnaud Denjoy在研究形似：

\[f(x)=\frac{1}{x}\sin\left(\frac{1}{x^3}\right).\]

的函数的时候，希望能够为它们定义积分。这种函数往往在某一点附近无法定义黎曼积分，但是用类似极限定义的  方法又能够定义出类似黎曼积分的极限。

为了给这类函数定义积分，Denjoy将黎曼不可积的点分为若干种情形，分别用[超限归纳法](../Page/超限归纳法.md "wikilink")来定义积分。这样的定义繁复冗长。Nikolai Luzin使用类似[绝对连续](../Page/绝对连续.md "wikilink")的方式给出了另一种等价定义；Oskar Perron也给出了一种等价的定义，但这个等价关系并不显然。

1957年，[捷克](../Page/捷克.md "wikilink")数学家给出了一种比较优雅的定义，和黎曼积分的定义比较相似。Kurzweil称之为“刻度积分”（）。而则发展并完善了这种积分理论。基于这两位数学家的贡献，现今一般将这种积分称为**Henstock-Kurzweil积分**。由于Kurzweil的定义和黎曼积分的定义同样简洁，有的数学教育者认为可以在教学中用Henstock-Kurzweil积分代替黎曼积分，但这个主张并未被广泛采纳。

## 定义

这里只给出Henstock的定义：

### 区间分割与刻度

给定一个取样分割：\(a = u_0 < u_1 < \cdots < u_n = b, \ \ t_i \in [u_{i-1}, u_i]\)和一个正函数\(\delta \colon [a, b] \to (0, \infty)\,\)（所谓的“刻度”），如果

\[\forall i, \, \ \ t_i-\delta(t_i)< u_{i-1} \leq t_i \leq u_i < t_i + \delta (t_i).\] 就称这个分割是一个δ-精细分割。\[1\]

### 黎曼和

对一个在闭区间\([a,b]\)有定义的实值函数\(f\)，\(f\)关于取样分割：\(x_0,\ldots,x_n\) 、\(t_0,\ldots,t_{n-1}\)的**黎曼和**定义为以下和式：

\[\sum_{i=0}^{n-1} f(t_i) (x_{i+1}-x_i)\]

和式中的每一项是子区间长度\(x_{i+1}-x_i\)与在\(t_i\)处的函数值\(f(t_i)\)的乘积。直观地说，就是以标记点\(t_i\)上的函数值\(f(t_i)\)到X轴的[距离](../Page/距离.md "wikilink")为高，以分割的子区间为长的[矩形](../Page/矩形.md "wikilink")的面积。\[2\]

### Henstock–Kurzweil积分

\(S\)是函数\(f\)在闭区间\([a,b]\)上的Henstock–Kurzweil积分，当且仅当对于任意的\(\epsilon > 0\)，都存在刻度函数\(\delta\)，使得对于任意的取样分割：\(x_0,\ldots,x_n\)、\(t_0,\ldots,t_{n-1}\)，只要是δ-精细分割，就有：

\[\left|\sum_{i=0}^{n-1} f(t_i) (x_{i+1}-x_i) - S \right| < \epsilon.\,\]\[3\]

从定义中可以看出，Henstock–Kurzweil积分比黎曼积分更加注重区间上的取样。黎曼积分中，只将分割的小区间的最大长度作为精细度的标准。Henstock–Kurzweil积分的定义中引入“刻度”函数，并将取样值和刻度函数联系起来，定义分割的精细程度。如果将刻度函数δ设定为常值函数，那么Henstock–Kurzweil积分就退化为黎曼积分。\[4\]

### δ-精细分割的存在性

如果对某些刻度函数δ，δ-精细分割不存在，那么定义中“只要是δ-精细分割，就有”一句就会变成一个[前件全真的判断](https://zh.wikipedia.org/wiki/前件 "wikilink")，从而失去应有的意义。说明，对任意的刻度函数δ，必定存在δ-精细分割，杜绝了Henstock–Kurzweil积分定义逻辑上可能存在的瑕疵\[5\]。

### 积分的唯一性

为了能够良好地定义积分，Henstock–Kurzweil积分的定义中的S必须是唯一存在的，同一个函数在同一个区间上不能有两个不同的积分值。可以证明，Henstock–Kurzweil积分如果存在就必定是唯一的。这说明Henstock–Kurzweil积分是良好定义的。\[6\]

## 参见

  - [黎曼－斯蒂尔杰斯积分](../Page/黎曼－斯蒂尔杰斯积分.md "wikilink")
  - [广义积分](https://zh.wikipedia.org/wiki/广义积分 "wikilink")
  - [勒贝格积分](https://zh.wikipedia.org/wiki/勒贝格积分 "wikilink")

## 参考来源

[Category:积分的定义](https://zh.wikipedia.org/wiki/Category:积分的定义 "wikilink")

1.
2.
3.
4.
5.
6.