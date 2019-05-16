**KdV方程**是1895年由荷兰数学家和共同发现的一种[偏微分方程](../Page/偏微分方程.md "wikilink")（也有人称之为**科特韦格-德弗里斯方程**，但一般都习惯直接叫KdV方程）。关于实自变量*x*
和*t* 的[函数φ所满足的KdV方程形式如下](../Page/函数.md "wikilink")：

\[\partial_t\phi+6\phi\partial_x\phi+\partial^3_x\phi=0\]

KdV方程的解为簇集的[孤立子](https://zh.wikipedia.org/wiki/孤立子 "wikilink")（又称**孤子**，**孤波**）。

## KdV方程的行波解

KdV 方程有多种孤波解\[1\]\[2\]。

  - 钟形孤波解

\[\phi(x,t)=\frac12\, c\, \mathrm{sech}^2\left[{\sqrt{c}\over 2}(x-c\,t-a)\right]\]

  - 扭形孤波解

\[\phi(x,t)=k\, \mathrm{tanh}[k(x+2tk^2+c)]\]

  - 暗孤波解

\(\phi(x,t)= a+b\, \mathrm{tanh}(1+cx+dt)^2\)

[File:Bellsoliton2.gif|钟形孤波解](File:Bellsoliton2.gif%7C钟形孤波解)
<File:Twister> soliton.gif|扭形孤波解 <File:Dark> solition.gif|暗孤波解

## tanh 法解

利用Maple tanh 法可得 孤立子解：\[3\]。

\[{u(x, t) = (1/6)*(4*_C2^3-_C3)/_C2-2*_C2^2*csc(_C1+_C2*x+_C3*t)^2}\]

\[{u(x, t) = (1/6)*(4*_C2^3-_C3)/_C2-2*_C2^2*sec(_C1+_C2*x+_C3*t)^2}\]

\[u(x, t) = -(1/6)*(4*_C2^3+_C3)/_C2-2*_C2^2*csch(_C1+_C2*x+_C3*t)^2\]

\[{u(x, t) = -(1/6)*(4*_C2^3+_C3)/_C2+2*_C2^2*sech(_C1+_C2*x+_C3*t)^2}\]

\[{u(x, t) = (1/6)*(8*_C2^3-_C3)/_C2-2*_C2^2*coth(_C1+_C2*x+_C3*t)^2}\]

\[{u(x, t) = (1/6)*(8*_C2^3-_C3)/_C2-2*_C2^2*tanh(_C1+_C2*x+_C3*t)^2}\]

\[{u(x, t) = -(1/6)*(8*_C2^3+_C3)/_C2-2*_C2^2*cot(_C1+_C2*x+_C3*t)^2}\]

\[{u(x, t) = -(1/6)*(8*_C2^3+_C3)/_C2-2*_C2^2*tan(_C1+_C2*x+_C3*t)^2}\]

\[{u(x, t) = (1/6)*(-8*_C3^3+4*_C3^3*_C1^2-_C4)/_C3+2*_C3^2*JacobiDN(_C2+_C3*x+_C4*t, _C1)^2}\]

\[{u(x, t) = (1/6)*(-8*_C3^3+4*_C3^3*_C1^2-_C4)/_C3+(2*_C3^2-2*_C3^2*_C1^2)*JacobiND(_C2+_C3*x+_C4*t, _C1)^2}\]

\[{u(x, t) = (1/6)*(4*_C3^3*_C1^2+4*_C3^3-_C4)/_C3-2*_C3^2*JacobiNS(_C2+_C3*x+_C4*t, _C1)^2}\]

\[{u(x, t) = (1/6)*(4*_C3^3*_C1^2+4*_C3^3-_C4)/_C3-2*_C3^2*_C1^2*JacobiSN(_C2+_C3*x+_C4*t, _C1)^2}\]

\[{u(x, t) = -(1/6)*(8*_C3^3*_C1^2-4*_C3^3+_C4)/_C3+(-2*_C3^2+2*_C3^2*_C1^2)*JacobiNC(_C2+_C3*x+_C4*t, _C1)^2}\]

\[{u(x, t) = -(1/6)*(8*_C3^3*_C1^2-4*_C3^3+_C4)/_C3+2*_C3^2*_C1^2*JacobiCN(_C2+_C3*x+_C4*t, _C1)^2}\]

\[9.81207-7.70406*I+5.44331*arctanh(10.4881/\sqrt(-110.*csc(1.40000+1.50000*x+1.60000*t)^2+110.))\]

\[9.81207-7.70406*I-5.44331*arctan(10.4881/\sqrt(-110.*csch(1.40000+1.50000*x+1.60000*t)^2-110.))\]

\[9.81207-7.70406*I+5.44331*arctan(10.4881/\sqrt(-110.*csch(1.40000+1.50000*x+1.60000*t)^2-110.))\]

## 三维行波图

|                                                                                                                                                                       |                                                                                                                                                                       |                                                                                                                                                                       |                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [KdV_equation_traveling_wave_plot_1.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_1.gif "fig:KdV_equation_traveling_wave_plot_1.gif") | [KdV_equation_traveling_wave_plot_2.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_2.gif "fig:KdV_equation_traveling_wave_plot_2.gif") | [KdV_equation_traveling_wave_plot_3.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_3.gif "fig:KdV_equation_traveling_wave_plot_3.gif") | [KdV_equation_traveling_wave_plot_4.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_4.gif "fig:KdV_equation_traveling_wave_plot_4.gif") |

|                                                                                                                                                                       |                                                                                                                                                                       |                                                                                                                                                                       |                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [KdV_equation_traveling_wave_plot_5.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_5.gif "fig:KdV_equation_traveling_wave_plot_5.gif") | [KdV_equation_traveling_wave_plot_6.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_6.gif "fig:KdV_equation_traveling_wave_plot_6.gif") | [KdV_equation_traveling_wave_plot_7.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_7.gif "fig:KdV_equation_traveling_wave_plot_7.gif") | [KdV_equation_traveling_wave_plot_8.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_8.gif "fig:KdV_equation_traveling_wave_plot_8.gif") |

|                                                                                                                                                                       |                                                                                                                                                                          |                                                                                                                                                                          |                                                                                                                                                                          |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [KdV_equation_traveling_wave_plot_9.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_9.gif "fig:KdV_equation_traveling_wave_plot_9.gif") | [KdV_equation_traveling_wave_plot_10.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_10.gif "fig:KdV_equation_traveling_wave_plot_10.gif") | [KdV_equation_traveling_wave_plot_11.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_11.gif "fig:KdV_equation_traveling_wave_plot_11.gif") | [KdV_equation_traveling_wave_plot_12.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_12.gif "fig:KdV_equation_traveling_wave_plot_12.gif") |

|                                                                                                                                                                          |                                                                                                                                                                          |                                                                                                                                                                          |                                                                                                                                                                          |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [KdV_equation_traveling_wave_plot_13.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_13.gif "fig:KdV_equation_traveling_wave_plot_13.gif") | [KdV_equation_traveling_wave_plot_14.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_14.gif "fig:KdV_equation_traveling_wave_plot_14.gif") | [KdV_equation_traveling_wave_plot_15.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_15.gif "fig:KdV_equation_traveling_wave_plot_15.gif") | [KdV_equation_traveling_wave_plot_16.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_16.gif "fig:KdV_equation_traveling_wave_plot_16.gif") |

|                                                                                                                                                                          |                                                                                                                                                                          |                                                                                                                                                                          |                                                                                                                                                                          |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [KdV_equation_traveling_wave_plot_17.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_17.gif "fig:KdV_equation_traveling_wave_plot_17.gif") | [KdV_equation_traveling_wave_plot_18.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_18.gif "fig:KdV_equation_traveling_wave_plot_18.gif") | [KdV_equation_traveling_wave_plot_19.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_19.gif "fig:KdV_equation_traveling_wave_plot_19.gif") | [KdV_equation_traveling_wave_plot_20.gif](https://zh.wikipedia.org/wiki/File:KdV_equation_traveling_wave_plot_20.gif "fig:KdV_equation_traveling_wave_plot_20.gif") |

## 联系

KdV方程在物理学的许多领域都有应用，例如等离子体磁流波、离子声波、非谐振晶格振动、低温非线性晶格声子波包的热激发、液体气体混合物的压力表等。

KdV方程也可以用[逆散射技术求解](https://zh.wikipedia.org/wiki/逆散射 "wikilink")。

## 参考文献

  - Korteweg, D. J. and de Vries, F. "On the Change of Form of Long
    Waves Advancing in a Rectangular Canal, and on a New Type of Long
    Stationary Waves." Philosophical Magazine, **39**, 422--443, 1895.
  - P. G. Drazin. *Solitons*. Cambridge University Press, 1983.

<!-- end list -->

1.  \*谷超豪
    《[孤立子理论中的](https://zh.wikipedia.org/wiki/孤立子 "wikilink")[达布变换及其几何应用](../Page/达布变换.md "wikilink")》
    上海科学技术出版社
2.  \*阎振亚著 《复杂非线性波的构造性理论及其应用》 科学出版社 2007年
3.  李志斌编著 《非线性数学物理方程的行波解》 科学出版社
4.  王东明著 《消去法及其应用》 科学出版社 2002
5.  \*何青 王丽芬编著 《[Maple](../Page/Maple.md "wikilink") 教程》 科学出版社 2010 ISBN
    9787030177445
6.  Graham W. Griffiths William E.Shiesser Traveling Wave Analysis of
    Partial Differential p135 Equations Academy Press
7.  Richard H. Enns George C. McCGuire, Nonlinear Physics
    Birkhauser,1997
8.  Inna Shingareva, Carlos Lizárraga-Celaya,Solving Nonlinear Partial
    Differential Equations with Maple Springer.
9.  Eryk Infeld and George Rowlands,Nonlinear Waves,Solitons and
    Chaos,Cambridge 2000
10. Saber Elaydi,An Introduction to Difference Equationns, Springer 2000
11. Dongming Wang, Elimination Practice,Imperial College Press 2004
12. David Betounes, Partial Differential Equations for Computational
    Science: With Maple and Vector Analysis Springer, 1998 ISBN
    9780387983004
13. George Articolo Partial Differential Equations & Boundary Value
    Problems with Maple V Academic Press 1998 ISBN 9780120644759

[Category:非线性偏微分方程](https://zh.wikipedia.org/wiki/Category:非线性偏微分方程 "wikilink")

[Category:精确解模型](https://zh.wikipedia.org/wiki/Category:精确解模型 "wikilink")
[Category:孤立子](https://zh.wikipedia.org/wiki/Category:孤立子 "wikilink")
[Category:流体力学中的方程](https://zh.wikipedia.org/wiki/Category:流体力学中的方程 "wikilink")

1.  阎振亚著 《复杂非线性波动构造性理论及其应用》 29页 科学出版社 2007
2.  Graham W.Griffiths William E.Schiesser Traveling Wave Analysis of
    Partial Differential Equations p422-430
3.  Graham W.Griffiths William E.Schiesser Traveling Wave Analysis of
    Partial Differential Equations p391-404