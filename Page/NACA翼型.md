> 本文内容由[NACA翼型](https://zh.wikipedia.org/wiki/NACA翼型)转换而来。


[Airfoil_geometry.svg](https://zh.wikipedia.org/wiki/File:Airfoil_geometry.svg "fig:Airfoil_geometry.svg") **NACA翼型**是[美国国家航空咨询委员会](https://zh.wikipedia.org/wiki/美国国家航空咨询委员会 "wikilink")（NACA）开发的一系列[翼型](https://zh.wikipedia.org/wiki/翼型 "wikilink")。每个翼型的代号由“NACA”这四个字母与一串数字组成，将这串数字所描述的几何参数代入特定方程中即可得到翼型的精确形状。

## 四位数翼型族

NACA四位数翼型的几何参数为：\[1\]

  - 首位数字代表最大[弯度占](https://zh.wikipedia.org/wiki/弯度 "wikilink")[弦长的百分比](../Page/翼弦.md "wikilink")。
  - 第二位数字代表最大弯度距机翼[前缘的距离占弦长的十分之几](https://zh.wikipedia.org/wiki/前缘 "wikilink")。
  - 后两位数字代表机翼最大厚度占弦长的百分比。\[2\]

例如，NACA 2412翼型的最大弯度为弦长的2%，位于距前缘0.4弦长处，而其最大厚度为弦长的12%。四位数翼型默认最大厚度位于距前缘0.3弦长处。

又如，NACA 0015翼型是对称翼型：00表示其没有弯度，15则表示该翼型的最大厚度为弦长的15%。

### 对称四位数翼型方程

[NACA0015_a.png](https://zh.wikipedia.org/wiki/File:NACA0015_a.png "fig:NACA0015_a.png") 对于对称的四位数翼型NACA 00xx，其中“xx”表示最大厚度占弦长的百分比。其形状方程为： \[3\]

\[y_t = 5tc\, \left[ 0.2969 \sqrt{\frac{x}{c}} + (-0.1260) \left(\frac{x}{c}\right) + (-0.3516) \left(\frac{x}{c}\right)^2 + 0.2843 \left(\frac{x}{c}\right)^3 + (-0.1015) \left( \frac{x}{c} \right)^4 \right],\]\[4\]\[5\]

其中：

  - *c*表示[弦长](../Page/翼弦.md "wikilink")
  - *x*表示沿弦长的距离（从0到*c*）
  - \(y_t\)表示*x*处厚度的一半
  - *t*表示最大厚度占弦长的比例（100*t*即NACA四位数翼型的后两位数字）

需要注意的是，此方程中(*x*/*c*)=1处（后缘）的厚度并不完全为零。如果需要零后缘厚度的话，可以改动其中一个系数使得所有系数之和为零。改动最后一个系数对于翼型的整体形状影响最小。

翼型前缘则近似一个半径为\(r = 1.1019 t^2\)的圆柱。

翼型上下表面的坐标\((x_U,y_U)\)与\((x_L,y_L)\)分别为：

\[x_U = x_L = x, \qquad y_U = +y_t, \qquad y_L = -y_t.\]

### 有弯度四位数翼型方程

[NACA_2412.png](https://zh.wikipedia.org/wiki/File:NACA_2412.png "fig:NACA_2412.png") 生成非对称的NACA四位数翼型所使用的方程与00xx对称翼型的方程相同，只不过非对称翼型的中弧线是弯曲的。其中弧线方程为：\[6\]

\[y_c = \left\{\begin{array}{ll}
\displaystyle{m\, \frac{x  }{ p     ^2} \left( 2\, p\, - \frac{x}{c}   \right)}, & 0 \leq x \leq pc \\
\\
\displaystyle{m\, \frac{c-x}{(1 - p)^2} \left( 1 + \frac{x}{c} - 2\, p \right)}, & pc \leq x \leq c
\end{array} \right.\]

其中：

  - *m*表示最大弯度（100*m*即四位数翼型的首位数字）
  - *p*表示最大弯度的位置（10*p*即四位数翼型的第二位数字）

对于有弯度翼型，由于其厚度是垂直于中弧线方向的，所以其上下表面的坐标\((x_U,y_U)\)与\((x_L,y_L)\)分别为：\[7\]

\[\begin{align}
    x_U &= x   - y_t\, \sin \theta, \qquad &
    y_U &= y_c + y_t\, \cos \theta, \\
    x_L &= x   + y_t\, \sin \theta, &
    y_L &= y_c - y_t\, \cos \theta,
  \end{align}\] 其中

\[\theta = \arctan{ \left( \frac{dy_c}{dx} \right)},\]

\[\frac{dy_c}{dx} = \left\{\begin{array}{ll}
\displaystyle{\frac{2m}{p^2} \left(p - \frac{x}{c} \right)}, & 0 \leq x \leq pc \\
\\
\displaystyle{\frac{2m}{(1 - p)^2} \left(p - \frac{x}{c}\right)}, & pc \leq x \leq c
\end{array} \right.\]

## 五位数翼型族

NACA五位数翼型可以描述更为复杂的机翼形状：\[8\]

  - 首位数字乘以0.15表示理想攻角下的设计最佳升力系数。
  - 第二位数字乘以5表示最大弯度距前缘的距离占弦长的百分比。
  - 第三位数字表示翼型是否为负弯度的。
  - 第四、五位数字表示最大厚度占弦长的百分比（与四位数翼型一致）

例如，NACA 23112翼型的设计升力系数为0.3（0.15\*2）、最大弯距位于15%弦长处（5\*3），其为负弯度翼型，而最大厚度为弦长的12%。

翼型的中弧线方程为\[9\]

\[y_c = \begin{cases}\frac{k_1}{6}\left\{x^3-3mx^2+m^2(3-m)x\right\}, & 0<x<p \\
\frac{k_1 m^3}{6}(1-x), & p<x<1\end{cases}\]

其中*x*与*y*已经进行了归一化处理。需选择适当的常数*m*使得最大弯度位于\(x=p\)处。例如，对于230xx翼型的中弧度而言，\(p=0.3/2=0.15\)、\(m=0.2025\)。最后，选择适当的常数\(k_1\)可以得到理想升力系数，例如在230xx翼型中\(k_1=15.957\)。

## 参考文献

[Category:空气动力学](https://zh.wikipedia.org/wiki/Category:空气动力学 "wikilink") [Category:机翼](https://zh.wikipedia.org/wiki/Category:机翼 "wikilink")

1.  E.N. Jacobs, K.E. Ward, & R.M. Pinkerton. [NACA Report No. 460, "The characteristics of 78 related airfoil sections from tests in the variable-density wind tunnel"](http://hdl.handle.net/2060/19930091108). NACA, 1933.
2.  "Fundamentals of aerodynamics", John D. Anderson,Jr, third ed, chap 4
3.
4.  [Aerospaceweb.org | Ask Us - NACA Airfoil Series](http://www.aerospaceweb.org/question/airfoils/q0041.shtml)
5.  <http://www.fges.demon.co.uk/cfd/naca.html#07>
6.
7.
8.  E. N. Jacobs & R. M. Pinkerton 1936 Test in the variable-density wind tunnel of related airfoils having the maximum camber unusually far forward, [NACA Report No. 537](http://hdl.handle.net/2060/19930091610).
9.