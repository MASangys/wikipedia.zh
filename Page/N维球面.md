[Sphere-wireframe.png](https://zh.wikipedia.org/wiki/File:Sphere-wireframe.png "fig:Sphere-wireframe.png")\]\]

***n*维球面**是普通的[球面在任意](../Page/球面.md "wikilink")[维度的推广](../Page/维度.md "wikilink")。它是(*n* + 1)维空间内的*n*维[流形](../Page/流形.md "wikilink")。特别地，0维球面就是直线上的两个点，1维球面是[平面上的](../Page/平面.md "wikilink")[圆](../Page/圆.md "wikilink")，2维球面是三维空间内的普通球面。高于2维的球面有时称为**超球面**。中心位于原点且半径为单位长度的*n*维球面称为**单位*n*维球面**，记为*S*<sup>*n*</sup>。用符号来表示，就是：

\[S^n = \left\{ x \in \mathbb{R}^{n+1} : \|x\| = 1\right\}.\]

*n*维球面是(*n* + 1)维[球体的表面或边界](../Page/球体.md "wikilink")，是*n*维流形的一种。对于*n* ≥ 2，*n*维球面是[单连通的](../Page/单连通.md "wikilink")*n*维流形，其曲率为正的常数。

## 描述

[Hypersphere_coord.gif](https://zh.wikipedia.org/wiki/File:Hypersphere_coord.gif "fig:Hypersphere_coord.gif")（藍色）以及超子午線（綠色）的[立體投影法](../Page/立體投影.md "wikilink")。
因為立體投影法的[共形特性](../Page/共形.md "wikilink")，這些曲線彼此在交點上彼此正交（圖中黃色點），如同在四維空間中一樣。所有曲線都是圓；交會在\<0,0,0,1\>的曲線具有無限大的半徑（亦即直線）。\]\]
对于任何[自然数](../Page/自然数.md "wikilink")*n*，[半径为](../Page/半径.md "wikilink")*r*的*n*维球面定义为(*n* + 1)维[欧几里得空间中到某个定点的距离等于常数](../Page/欧几里得空间.md "wikilink")*r*的所有点的集合，其中*r*可以是任何正的实数。它是(*n* + 1)维空间内的*n*维[流形](../Page/流形.md "wikilink")。特别地：

  - 0维球面是直线上的两个点{*p* − *r*, *p* + *r*}；
  - 1维球面是[平面上的](../Page/平面.md "wikilink")[圆](../Page/圆.md "wikilink")；
  - 2维球面是三维空间内的普通球面；
  - [3维球面是四维空间内的球面](../Page/三维球面.md "wikilink")。

### (*n* + 1)维空间中的欧几里得坐标

(*n* +
1)维空间中的点：(*x*<sub>1</sub>、*x*<sub>1</sub>、*x*<sub>2</sub>、……、*x*<sub>*n*+1</sub>)定义了一个*n*维球面(**S**<sub>*n*</sub>)，由以下方程表示：

\[r^2=\sum_{i=1}^{n+1} (x_i - C_i)^2.\,\]

其中*C*是中心点，*r*是半径。

以上的*n*维球面在(*n* + 1)维空间中存在，是*n*维流形的一个例子。半径为\(r\)的*n*维球面的[体积形式ω由下式给出](../Page/体积形式.md "wikilink")：

\[\omega = {1 \over r} \sum_{j=1}^{n+1} (-1)^{j-1} x_j \,dx_1 \wedge \cdots \wedge dx_{j-1} \wedge dx_{j+1}\wedge \cdots \wedge dx_{n+1} = * dr\]

其中\*是[霍奇星算子](../Page/霍奇星算子.md "wikilink")（关于讨论和这个公式在*r* = 1的情形下的证明，请参见）。因此，\(\scriptstyle{dr \wedge \omega = dx_1 \wedge \cdots \wedge dx_{n+1}}.\)

### *n*维球体

由*n*维球面所包围的体积，称为(*n* + 1)维[球体](../Page/球体.md "wikilink")。如果把球体的表面包括在内，则(*n* + 1)维球体是[封闭的](../Page/闭集.md "wikilink")，否则是[开放的](../Page/开集.md "wikilink")。

特别地：

  - 1维球体，是一个[线段](../Page/线段.md "wikilink")，是0维球面的内部。
  - 2维球体，是一个[圆盘](../Page/圆盘.md "wikilink")，是圆（1维球面）的内部。
  - 3维球体，是一个普通的[球体](../Page/球体.md "wikilink")，是球面（2维球面）的内部。
  - 4维球体，是3维球面的内部。

## *n*维球体的体积

\((n-1)\)维球面所包围的体积（**\(n\)维球体**的体积）由以下公式给出：

\[V_n={\pi^\frac{n}{2}R^n\over\Gamma(\frac{n}{2} + 1)}={C_n R^n}\],

其中\(\Gamma\)是[伽玛函数](../Page/伽玛函数.md "wikilink")。对于偶数\(n\)，\(\Gamma\left(\frac{n}{2}+1\right)= \left(\frac{n}{2}\right)!\)；对于奇数\(n\)，\(\Gamma\left(\frac{n}{2}+1\right)= \sqrt{\pi} \frac{n!!}{2^{(n+1)/2}}\)，其中\(n!!\)表示[双阶乘](../Page/双阶乘.md "wikilink")。

由此可以推出，对于给定的\(n\)，常数\(C_n\)的值为：

\[C_n={\frac{\pi^k}{k!}}\]（对于偶数*n*=2*k*），

\[C_n=C_{2k+1}=\frac{2^{2k+1} k!\, \pi^{k}}{(2k+1)!}\]（对于奇数*n*=2*k*+1）。

这个(n-1)维球面的[表面积是](../Page/表面积.md "wikilink")：

\[S_{n-1}=\frac{dV_n}{dR}=\frac{nV_n}{R}={2\pi^\frac{n}{2}R^{n-1}\over\Gamma(\frac{n}{2})}={n C_n R^{n-1}}\]

*n*维球面的表面积和体积之间有以下的关系：

\[V_n/S_{n-1} = R/n\,\]

\[S_{n+1}/V_n = 2\pi R\,\]

从此可以推导出递推关系：

\[V_n = \frac{2 \pi R^2}{n} V_{n-2}\,\]

这些公式也可以直接从*n*维[球坐标系中的](../Page/球坐标系.md "wikilink")[积分推出](../Page/积分.md "wikilink")。

### 例子

对于较小的\(n\)，半径为\(R\)的\(n\)维球体体积\(V_n\)为如下：

  -
    {|

|- |\(V_0\,\) |= |\(1\,\) |  |  |- |\(V_1\,\) |= |\(2\pi\,R\)
|\(\approx\) |\(6.28319 \,R\) |- |\(V_2\,\) |= |\(\pi\,R^2\)
|\(\approx\) |\(3.14159 \,R^2\) |- |\(V_3\,\) |=
|\(\frac{4 \pi}{3}\,R^3\) |\(\approx\) |\(4.18879 \,R^3\) |- |\(V_4\,\)
|= |\(\frac{\pi^2}{2}\,R^4\) |\(\approx\) |\(4.93480 \,R^4\) |-
|\(V_5\,\) |= |\(\frac{8 \pi^2}{15}\,R^5\) |\(\approx\)
|\(5.26379 \,R^5\) |- |\(V_6\,\) |= |\(\frac{\pi^3}{6}\,R^6\)
|\(\approx\) |\(5.16771 \,R^6\) |- |\(V_7\,\) |=
|\(\frac{16 \pi^3}{105}\,R^7\) |\(\approx\) |\(4.72477 \,R^7\) |-
|\(V_8\,\) |= |\(\frac{\pi^4}{24}\,R^8\) |\(\approx\) |\(4.05871 \,R^8\)
|}

但当 \(n\) 趋于无穷大时，\(\frac{V_n}{R^n}\) 趋于0。

如果维度*n*不限于整数，那么n维球面的体积就是*n*的[连续函数](../Page/连续函数.md "wikilink")，它的[极大值位于](../Page/极大值.md "wikilink")*n*
= 5.2569464...，体积为5.277768...。当*n* = 0或*n* = 12.76405...时，体积为1。

单位*n*维球面的外切[超正方体的边长为](../Page/超正方体.md "wikilink")2，因此体积为2<sup>*n*</sup>；当维度增加时，*n*维球面的体积与外切于它的超正方体的体积之比单调减少。

## 超球坐标系

我们可以定义n维空间内的坐标系统，与3维空间内的[球坐标系类似](../Page/球坐标系.md "wikilink")，由径向坐标\(\ r\)和\(\ n-1\)个角度坐标\(\ \phi _1 , \phi _2 , ... , \phi _{n-1}\)组成。如果\(\ x_i\)是笛卡儿坐标系，那么我们可以定义：

\[x_1=r\cos(\phi_1)\,\]

\[x_2=r\sin(\phi_1)\cos(\phi_2)\,\]

\[x_3=r\sin(\phi_1)\sin(\phi_2)\cos(\phi_3)\,\]

\[\cdots\,\]

\[x_{n-1}=r\sin(\phi_1)\cdots\sin(\phi_{n-2})\cos(\phi_{n-1})\,\]

\[x_n~~\,=r\sin(\phi_1)\cdots\sin(\phi_{n-2})\sin(\phi_{n-1})\,\]

从中可以推出逆变换的公式：

\[\tan(\phi_{n-1})=\frac{x_n}{x_{n-1}}\]

\[\tan(\phi_{n-2})=\frac{\sqrt{{x_n}^2+{x_{n-1}}^2}}{x_{n-2}}\]

\[\cdots\,\]

\[\tan(\phi_{1})=\frac{\sqrt{{x_n}^2+{x_{n-1}}^2+\cdots+{x_2}^2}}{x_{1}}\]
注意最后一个角\(\phi _{n-1}\)的值域为\(2\pi\)，而其它角的值域为\(\pi\)。这个值域覆盖了整个球面。

*n*维空间内的[体积元素可以从变换的](../Page/体积元素.md "wikilink")[雅可比行列式得出](../Page/雅可比行列式.md "wikilink")：

\[d_{\mathbb{R}^n}V =
\left|\det\frac{\partial (x_i)}{\partial(r,\phi_j)}\right|
dr\,d\phi_1 \, d\phi_2\ldots d\phi_{n-1}\]

\[=r^{n-1}\sin^{n-2}(\phi_1)\sin^{n-3}(\phi_2)\cdots \sin(\phi_{n-2})\,
dr\,d\phi_1 \, d\phi_2\cdots d\phi_{n-1}\]

以上n维球体的体积方程可以通过积分来重新得出：

\[V_n=\int_{r=0}^R \int_{\phi_1=0}^\pi
\cdots \int_{\phi_{n-2}=0}^\pi\int_{\phi_{n-1}=0}^{2\pi}d_{\mathbb{R}^n}V. \,\]

(*n*-1)–维球面的体积元素是2维球面的[面积元素的推广](../Page/面积元素.md "wikilink")，由以下公式给出：

\[d_{S^{n-1}}V =
\sin^{n-2}(\phi_1)\sin^{n-3}(\phi_2)\cdots \sin(\phi_{n-2})\, d\phi_1 \, d\phi_2\ldots d\phi_{n-1}\]

## 球极平面投影

就像三维空间中的二维球面可以通过[球极平面投影映射到二维平面上一样](../Page/球极平面投影.md "wikilink")，一个n维球面也可以通过球极平面投影的n维形式映射到n维超平面。例如，半径为1的二维球面上的点\(\ [x,y,z]\)映射到\(\ xy\)平面上的点\(\ [x,y,z] \mapsto \left[\frac{x}{1-z},\frac{y}{1-z}\right]\)。也就是说：

\[\ [x,y,z] \mapsto \left[\frac{x}{1-z},\frac{y}{1-z}\right].\]

类似地，半径为1的n维球面\(\mathbf{S}^{n-1}\)的球极平面投影映射到垂直于\(\ x_n\)轴的n-1维超平面\(\mathbf{R}^{n-1}\)：

\[[x_1,x_2,\ldots,x_n] \mapsto \left[\frac{x_1}{1-x_n},\frac{x_2}{1-x_n},\ldots,\frac{x_{n-1}}{1-x_n}\right].\]

## 参见

  - [共形几何](../Page/共形几何.md "wikilink")
  - [同调球](../Page/同调球.md "wikilink")
  - [球的同伦群](../Page/球的同伦群.md "wikilink")
  - [同伦球](../Page/同伦球.md "wikilink")
  - [双曲群](../Page/双曲群.md "wikilink")
  - [超正方体](../Page/超正方体.md "wikilink")
  - [反演几何](../Page/反演几何.md "wikilink")
  - [正交群](../Page/正交群.md "wikilink")
  - [莫比乌斯变换](../Page/莫比乌斯变换.md "wikilink")

## 参考文献

  - .

  - （第20章：3-spheres and hyperbolic 3-spaces）

  - （第14章：The Hypersphere）

  - Marsaglia, G. "Choosing a Point from the Surface of a Sphere." Ann.
    Math. Stat. 43, 645-646, 1972.

  - .

## 外部链接

  -
[科学空间：求n维球的体积http://spaces.ac.cn/index.php/archives/3154/](http://spaces.ac.cn/index.php/archives/3154/)

[Category:四维几何](https://zh.wikipedia.org/wiki/Category:四维几何 "wikilink")
[Category:多维几何](https://zh.wikipedia.org/wiki/Category:多维几何 "wikilink")