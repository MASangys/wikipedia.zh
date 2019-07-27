**七阶KdV方程**(Seventh order KdV equation)是一个非线性偏微分方程：\[1\]
\(U[t]+6*U*U[x]+U[x,x,x]-U[x,x,x,x,x]+\alpha*U[x,x,x,x,x,x,x,x,x]=0\)

其中

U\[t\] 代表 \(\frac{\partial  u(x,t)}{\partial t}\)

U\[x,x,x\] 代表 \(\frac{\partial^3  u(x,t)}{\partial x^3}\)

其余类推。

## 解析解

\[u(x, t) = 6*_C3^2*((60*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*\delta-72*\delta*\gamma^2+720*\delta^2*\alpha-120*\beta^2*\delta-(6*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*\gamma^2/\alpha)*JacobiND(_C2+_C3*x-(6*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*_C3^5*t/\alpha, \sqrt(2))^2/(\beta*(-120*\delta*\alpha+12*\gamma*\beta+12*\gamma^2+6*\beta^2+6*\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))\]

\[u(x, t) = -3*_C3^2*(-18*\delta*\gamma^2+180*\delta^2*\alpha+(15*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*\delta-30*\beta^2*\delta-(3/2)*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2))*\gamma^2/\alpha)*JacobiCN(_C2+_C3*x-(3/2)*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2))*_C3^5*t/\alpha, (1/2)*\sqrt(2))^2/(\beta*(-30*\delta*\alpha+3*\gamma*\beta+3*\gamma^2+(3/2)*\beta^2+(3/2)*\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))\]

\[u(x, t) = -6*_C3^2*((60*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*\delta-72*\delta*\gamma^2+720*\delta^2*\alpha-120*\beta^2*\delta-(6*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*\gamma^2/\alpha)*JacobiDN(_C2+_C3*x-(6*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*_C3^5*t/\alpha, \sqrt(2))^2/(\beta*(-120*\delta*\alpha+12*\gamma*\beta+12*\gamma^2+6*\beta^2+6*\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))\]

\[u(x, t) = 3*_C3^2*(-18*\delta*\gamma^2+180*\delta^2*\alpha+(15*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*\delta-30*\beta^2*\delta-(3/2)*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2))*\gamma^2/\alpha)*JacobiNC(_C2+_C3*x-(3/2)*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2))*_C3^5*t/\alpha, (1/2)*\sqrt(2))^2/(\beta*(-30*\delta*\alpha+3*\gamma*\beta+3*\gamma^2+(3/2)*\beta^2+(3/2)*\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))\]

\[u(x, t) = 6*_C3^2*((60*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*\delta-72*\delta*\gamma^2+720*\delta^2*\alpha-120*\beta^2*\delta-(6*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*\gamma^2/\alpha)*JacobiND(_C2+_C3*x-(6*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*_C3^5*t/\alpha, \sqrt(2))^2/(\beta*(-120*\delta*\alpha+12*\gamma*\beta+12*\gamma^2+6*\beta^2+6*\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))\]

\[u(x, t) = 6*_C3^2*(-(60*(-2*\gamma*\beta-\beta^2+12*\delta*\alpha+\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*\delta-72*\delta*\gamma^2+720*\delta^2*\alpha-120*\beta^2*\delta+(6*(-2*\gamma*\beta-\beta^2+12*\delta*\alpha+\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*\gamma^2/\alpha)*JacobiNS(_C2+_C3*x+(6*(-2*\gamma*\beta-\beta^2+12*\delta*\alpha+\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*_C3^5*t/\alpha, I)^2/(\beta*(-120*\delta*\alpha+12*\gamma*\beta+12*\gamma^2+6*\beta^2+6*\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))\]

\[u(x, t) = -6*_C3^2*(-(60*(-2*\gamma*\beta-\beta^2+12*\delta*\alpha+\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*\delta-72*\delta*\gamma^2+720*\delta^2*\alpha-120*\beta^2*\delta+(6*(-2*\gamma*\beta-\beta^2+12*\delta*\alpha+\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*\gamma^2/\alpha)*JacobiSN(_C2+_C3*x+(6*(-2*\gamma*\beta-\beta^2+12*\delta*\alpha+\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*_C3^5*t/\alpha, I)^2/(\beta*(-120*\delta*\alpha+12*\gamma*\beta+12*\gamma^2+6*\beta^2+6*\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))\]

\[u(x, t) = 2*_C2^2*(-(2*(2*\gamma*\beta+\beta^2-12*\delta*\alpha-\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2)))*\gamma/\alpha-24*\gamma*\delta+40*\beta*\delta)/(2*\beta^2+2*\sqrt(4*\gamma^2*\beta^2+4*\gamma*\beta^3+\beta^4-40*\delta*\alpha*\beta^2))\]

\[u(x,t)=(86625/591361)*sech(5*(x-(180000/591361)*t)/\sqrt(1538))^6\]

\[u(x,t)=(86625/591361)*csch(5*(x-(180000/591361)*t)/\sqrt(1538))^6\]

\[u(x,t)=(86625/591361)*sec(5*(x-(180000/591361)*t)/\sqrt(1538))^6\]

\[u(x,t)=(86625/591361)*csc(5*(x-(180000/591361)*t)/\sqrt(1538))^6\]

\[\]

\[\]

## 行波图

|                                                                                                                                                                                                                   |                                                                                                                                                                                                                   |                                                                                                                                                                                                                   |                                                                                                                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Seventh_order_KdV_equation_traveling_wave_plot_1.gif](https://zh.wikipedia.org/wiki/File:Seventh_order_KdV_equation_traveling_wave_plot_1.gif "fig:Seventh_order_KdV_equation_traveling_wave_plot_1.gif") | [Seventh_order_KdV_equation_traveling_wave_plot_2.gif](https://zh.wikipedia.org/wiki/File:Seventh_order_KdV_equation_traveling_wave_plot_2.gif "fig:Seventh_order_KdV_equation_traveling_wave_plot_2.gif") | [Seventh_order_KdV_equation_traveling_wave_plot_3.gif](https://zh.wikipedia.org/wiki/File:Seventh_order_KdV_equation_traveling_wave_plot_3.gif "fig:Seventh_order_KdV_equation_traveling_wave_plot_3.gif") | [Seventh_order_KdV_equation_traveling_wave_plot_4.gif](https://zh.wikipedia.org/wiki/File:Seventh_order_KdV_equation_traveling_wave_plot_4.gif "fig:Seventh_order_KdV_equation_traveling_wave_plot_4.gif") |

|                                                                                                                                                                                                                   |                                                                                                                                                                                                                   |                                                                                                                                                                                                                   |                                                                                                                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Seventh_order_KdV_equation_traveling_wave_plot_5.gif](https://zh.wikipedia.org/wiki/File:Seventh_order_KdV_equation_traveling_wave_plot_5.gif "fig:Seventh_order_KdV_equation_traveling_wave_plot_5.gif") | [Seventh_order_KdV_equation_traveling_wave_plot_6.gif](https://zh.wikipedia.org/wiki/File:Seventh_order_KdV_equation_traveling_wave_plot_6.gif "fig:Seventh_order_KdV_equation_traveling_wave_plot_6.gif") | [Seventh_order_KdV_equation_traveling_wave_plot_7.gif](https://zh.wikipedia.org/wiki/File:Seventh_order_KdV_equation_traveling_wave_plot_7.gif "fig:Seventh_order_KdV_equation_traveling_wave_plot_7.gif") | [Seventh_order_KdV_equation_traveling_wave_plot_8.gif](https://zh.wikipedia.org/wiki/File:Seventh_order_KdV_equation_traveling_wave_plot_8.gif "fig:Seventh_order_KdV_equation_traveling_wave_plot_8.gif") |

|                                                                                                                                                                                                                   |                                                                                                                                                                                                                      |                                                                                                                                                                                                                      |                                                                                                                                                                                                                      |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Seventh_order_KdV_equation_traveling_wave_plot_9.gif](https://zh.wikipedia.org/wiki/File:Seventh_order_KdV_equation_traveling_wave_plot_9.gif "fig:Seventh_order_KdV_equation_traveling_wave_plot_9.gif") | [Seventh_order_KdV_equation_traveling_wave_plot_10.gif](https://zh.wikipedia.org/wiki/File:Seventh_order_KdV_equation_traveling_wave_plot_10.gif "fig:Seventh_order_KdV_equation_traveling_wave_plot_10.gif") | [Seventh_order_KdV_equation_traveling_wave_plot_11.gif](https://zh.wikipedia.org/wiki/File:Seventh_order_KdV_equation_traveling_wave_plot_11.gif "fig:Seventh_order_KdV_equation_traveling_wave_plot_11.gif") | [Seventh_order_KdV_equation_traveling_wave_plot_12.gif](https://zh.wikipedia.org/wiki/File:Seventh_order_KdV_equation_traveling_wave_plot_12.gif "fig:Seventh_order_KdV_equation_traveling_wave_plot_12.gif") |

## 参考文献

<references/>

1.  \*谷超豪
    《[孤立子理论中的](https://zh.wikipedia.org/wiki/孤立子 "wikilink")[达布变换](../Page/达布变换.md "wikilink")及其几何应用》
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

1.  Andrei D. Polyanin,Valentin F. Zaitsev, HANDBOOK OF NONLINEAR
    PARTIAL DIFFERENTIAL EQUATIONS, SECOND EDITION p1040 CRC PRESS