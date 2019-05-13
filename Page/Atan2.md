在[三角函数中](../Page/三角函数.md "wikilink")，两个参数的[函数](../Page/函数.md "wikilink")\(\operatorname{atan2}\)是[正切函数](https://zh.wikipedia.org/wiki/正切函数 "wikilink")\(\tan\)的一个变种。对于任意不同时等于0的实参数\(x\)和\(y\)，\(\operatorname{atan2}(y,x)\)所表达的意思是坐标原点为起点，指向\((x,y)\)的射线在坐标平面上与x轴正方向之间的角的角度。当\(y>0\)时，射线与x轴正方向的所得的角的角度指的是x轴正方向绕逆时针方向到达射线旋转的角的角度；而当\(y<0\)时，射线与x轴正方向所得的角的角度指的是x轴正方向绕顺时针方向达到射线旋转的角的角度。

在几何意义上，\(\operatorname{atan2}(y,x)\)等价于\(\operatorname{atan2}(\frac{y}{x})\)，但\(\operatorname{atan2}\)的最大优势是可以正确处理\(x=0\)而\(y\neq 0\)的情况，而不必进行会引发[除零异常的](../Page/除以零.md "wikilink")\(\frac{y}{x}\)操作。

\(\operatorname{atan2}\)函数最初在计算机编程语言中被引入，但是现在它的应用在科学和工程等其他多个领域十分常见。他的出现最早可以追溯到[FORTRAN语言](../Page/FORTRAN.md "wikilink")\[1\]，并且可以在[C语言的数学标准库的math](https://zh.wikipedia.org/wiki/C语言 "wikilink").h文件中找到，此外在[Java数学库](../Page/Java.md "wikilink")、[.NET的System](https://zh.wikipedia.org/wiki/.NET "wikilink").Math（可应用于[C\#](../Page/C♯.md "wikilink")、[VB.NET等语言](https://zh.wikipedia.org/wiki/VB.NET "wikilink")）、[Python的数学模块以及其他地方都可以找到atan](../Page/Python.md "wikilink")2的身影。许多脚本语言，比如[Perl](../Page/Perl.md "wikilink")，也包含了C语言风格的atan2函数<ref>The
[Linux Programmer's
Manual](https://zh.wikipedia.org/wiki/Linux_API "wikilink")
[1](http://linux.die.net/man/3/atan2) says:

  -
    "The **atan2**() function calculates the [arc
    tangent](https://zh.wikipedia.org/wiki/arc_tangent "wikilink") of
    the two variables ***y*** and ***x***. It is similar to calculating
    the arc tangent of ***y*** / ***x***, except that the
    [signs](https://zh.wikipedia.org/wiki/positive_and_negative_numbers "wikilink")
    of both arguments are used to determine the
    [quadrant](https://zh.wikipedia.org/wiki/Cartesian_coordinate_system "wikilink")
    of the result."</ref>。

## 工作原理

## 函数定义

基于值域为 \(\left ( -\frac{\pi}{2}, \frac{\pi}{2} \right )\)
的[反正切函数](https://zh.wikipedia.org/wiki/反正切 "wikilink")，该函数定义如下：

\[\operatorname{atan2}(y, x) = \begin{cases}
\arctan\left(\frac y x\right) & \qquad x > 0 \\
\arctan\left(\frac y x\right) + \pi& \qquad y \ge 0 , x < 0 \\
\arctan\left(\frac y x\right) - \pi& \qquad y < 0 , x < 0 \\
+\frac{\pi}{2} & \qquad y > 0 , x = 0 \\
-\frac{\pi}{2} & \qquad y < 0 , x = 0 \\
\text{undefined} & \qquad y = 0, x = 0
\end{cases}\]

说明**:**

  - 该函数的值域为\(\left ( -\pi,\pi \right ]\)，可以通过对负数结果加2\(\pi\)的方法，将函数的结果映射到\(\left [ 0,2\pi\right )\)范围内。

## 其他软件中的变形

## 有关图片

[Atan2_60.svg](https://zh.wikipedia.org/wiki/File:Atan2_60.svg "fig:Atan2_60.svg")

旁边的图片显示内容是：在一个单位圆内\(\operatorname{atan2}\)函数在各点的取值。圆内标注代表各点的取值的幅度表示。

图片中，从最左端开始，角度的大小随着逆时针方向逐渐从\(-\pi\)增大到\(+\pi\)，并且角度大小在点位于最右端时，取值为0。

另外要注意的是，函数\(\operatorname{atan2}(y,x)\)中参数的顺序是倒置的，\(\operatorname{atan2}(y,x)\)计算的值相当于点\((x,y)\)的角度值。

下方的图片显示的是单位圆上各点在atan2函数上的值，从原点射向\((0,1)\)点的射线，开始绕逆时针方向可以与x轴正方向得到对应各点的复平面的复角，其中几个特殊点取值：

  - \((0,1)\)对应的复平面夹角为\(\frac{\pi}{2}\)，
  - \((-1,0)\)对应复平面的夹角为\(\pi\)，
  - \((0,-1)\)对应复平面的夹角为\(\frac{3\pi}{2}\)，
  - 回到\((1,0)\)复平面的夹角为\(0=(2n\pi \mod 2\pi)\)。

这些你可以直观地从图中看出。\[2\]

<center>

[<File:Atan2-discontinuity.svg>](https://zh.wikipedia.org/wiki/File:Atan2-discontinuity.svg "fig:File:Atan2-discontinuity.svg")

</center>

下面的插图分别显示的是\(\operatorname{atan2}(y,x)\)和\(\operatorname{atan}(y,x)\)在坐标平面的三维景象。

注意在\(\operatorname{atan2}(y,x)\)函数中，从原点辐射出的射线上有常数值，而在\(\operatorname{atan}(y,x)\)的函数中，经过原点的直线有常数值。

<center>

[Atan2Diagram.png](https://zh.wikipedia.org/wiki/File:Atan2Diagram.png "fig:Atan2Diagram.png")
[AtanDiagram.png](https://zh.wikipedia.org/wiki/File:AtanDiagram.png "fig:AtanDiagram.png")

</center>

## 参考文献

## 参见

  - [幅角](../Page/幅角.md "wikilink")
  - [复数](https://zh.wikipedia.org/wiki/复数 "wikilink")
  - [反三角函数中的](../Page/反三角函数.md "wikilink")**正切函数**

## 外部链接

  - [Java 1.6 SE
    JavaDoc](http://java.sun.com/javase/6/docs/api/java/lang/Math.html#atan2%28double,%20double%29)
  - [C++ Programmer's
    Reference](http://www.cplusplus.com/ref/cmath/atan2.html)

[Category:三角学](https://zh.wikipedia.org/wiki/Category:三角学 "wikilink")

1.
2.  [Computation of the external argument by Wolf
    Jung](http://www.mndynamics.com/indexp.html)