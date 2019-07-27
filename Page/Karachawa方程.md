**Karachawa方程**是一个模拟有表面张力的水波运动的非线性偏微分方程：\[1\]

\(u_{t}+\mu*u_{xxx}+2*\beta*u_{xxxxx}=0\)

## 解析解

\[u(x, t) = (1/676)*(-338*\sqrt(-13*\mu)*_C3-69*\mu^3)/\mu+(105/338)*\mu^2*tanh(_C1-(1/26)*\sqrt(-13*\mu)*x+_C3*t)^2-(105/676)*\mu^2*tanh(_C1-(1/26)*\sqrt(-13*\mu)*x+_C3*t)^4\]

\[u(x, t) = (1/676)*(338*\sqrt(-13*\mu)*_C3-69*\mu^3)/\mu+(105/338)*\mu^2*coth(_C1+(1/26)*\sqrt(-13*\mu)*x+_C3*t)^2-(105/676)*\mu^2*coth(_C1+(1/26)*\sqrt(-13*\mu)*x+_C3*t)^4\]

\[u(x, t) = (1/676)*(338*\sqrt(-13*\mu)*_C3-69*\mu^3)/\mu+(105/338)*\mu^2*tanh(_C1+(1/26)*\sqrt(-13*\mu)*x+_C3*t)^2-(105/676)*\mu^2*tanh(_C1+(1/26)*\sqrt(-13*\mu)*x+_C3*t)^4\]

\[u(x, t) = -(1/676)*(-338*\sqrt(13)*\sqrt(\mu)*_C3+69*\mu^3)/\mu-(105/338)*\mu^2*cot(_C1-(1/26)*\sqrt(13)*\sqrt(\mu)*x+_C3*t)^2-(105/676)*\mu^2*cot(_C1-(1/26)*\sqrt(13)*\sqrt(\mu)*x+_C3*t)^4\]

\[u(x, t) = -(1/676)*(-338*\sqrt(13)*\sqrt(\mu)*_C3+69*\mu^3)/\mu-(105/338)*\mu^2*tan(_C1-(1/26)*\sqrt(13)*\sqrt(\mu)*x+_C3*t)^2-(105/676)*\mu^2*tan(_C1-(1/26)*\sqrt(13)*\sqrt(\mu)*x+_C3*t)^4\]

\[u(x, t) = -(1/676)*(338*\sqrt(13)*\sqrt(\mu)*_C3+69*\mu^3)/\mu-(105/338)*\mu^2*tan(_C1+(1/26)*\sqrt(13)*\sqrt(\mu)*x+_C3*t)^2-(105/676)*\mu^2*tan(_C1+(1/26)*\sqrt(13)*\sqrt(\mu)*x+_C3*t)^4\]

\[u(x, t) = (1/209560)*(-(13/5)*(2015*\mu-(195*I)*\mu*\sqrt(31))^(3/2)*_C3-(4991/1300*(2015*\mu-(195*I)*\mu*\sqrt(31)))*\mu^3+10478*\sqrt(2015*\mu-(195*I)*\mu*\sqrt(31))*_C3*\mu+961*\mu^4)/\mu^2+(7/676)*\mu*((651/20)*\mu-(123/20*I)*\mu*\sqrt(31))*sech(_C1-(1/260)*\sqrt(2015*\mu-(195*I)*\mu*\sqrt(31))*x+_C3*t)^2-(651/1352)*\mu*((11/20)*\mu-(3/20*I)*\mu*\sqrt(31))*sech(_C1-(1/260)*\sqrt(2015*\mu-(195*I)*\mu*\sqrt(31))*x+_C3*t)^4\]

\[u(x, t) = -(1/523900)*(-(13/2)*(2015*\mu+(195*I)*\mu*\sqrt(31))^(3/2)*_C3+(23529/650*(2015*\mu+(195*I)*\mu*\sqrt(31)))*\mu^3-26195*\sqrt(2015*\mu+(195*I)*\mu*\sqrt(31))*_C3*\mu-175863*\mu^4)/(\mu*((21/10)*\mu+(3/10*I)*\mu*\sqrt(31)))+(-(217/338)*\mu^2+(7/16900)*\mu*(2015*\mu+(195*I)*\mu*\sqrt(31)))*coth(_C1-(1/260)*\sqrt(2015*\mu+(195*I)*\mu*\sqrt(31))*x+_C3*t)^2-(651/1352)*\mu*((11/20)*\mu+(3/20*I)*\mu*\sqrt(31))*coth(_C1-(1/260)*\sqrt(2015*\mu+(195*I)*\mu*\sqrt(31))*x+_C3*t)^4\]

\[p[46] := 8.0741721983973002048*10^5+11257.587038449976187*I+(1813.0402209066405653-19.865040422291120617*I)*JacobiNS(1.5250+1.7351587051052163701*x^1.25+1.9035752853902350521*t^1.25, 0.21767841032926169436e-1-0.16688086862630055943e-1*I)^1.5-1199.5620*JacobiNS(1.5250+1.7351587051052163701*x^1.25+1.9035752853902350521*t^1.25, 0.21767841032926169436e-1-0.16688086862630055943e-1*I)^4\]

\[p[47] := 8.0741721983973002048*10^5+11257.587038449976187*I+(15.667532401561428902-15.998034611025966429*I)*JacobiSN(1.5250+1.7351587051052163701*x^1.25+1.9035752853902350521*t^1.25, 0.21767841032926169436e-1-0.16688086862630055943e-1*I)^1.5+(0.48758338627653809364e-2+0.84722715715396426655e-2*I)*JacobiSN(1.5250+1.7351587051052163701*x^1.25+1.9035752853902350521*t^1.25, 0.21767841032926169436e-1-0.16688086862630055943e-1*I)^4\]

## 行波图

|                                                                                                                                                                                         |                                                                                                                                                                                         |                                                                                                                                                                                         |                                                                                                                                                                                         |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Karachawa_equation_traveling_wave_plot_1.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_1.gif "fig:Karachawa_equation_traveling_wave_plot_1.gif") | [Karachawa_equation_traveling_wave_plot_2.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_2.gif "fig:Karachawa_equation_traveling_wave_plot_2.gif") | [Karachawa_equation_traveling_wave_plot_3.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_3.gif "fig:Karachawa_equation_traveling_wave_plot_3.gif") | [Karachawa_equation_traveling_wave_plot_4.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_4.gif "fig:Karachawa_equation_traveling_wave_plot_4.gif") |

|                                                                                                                                                                                         |                                                                                                                                                                                         |                                                                                                                                                                                         |                                                                                                                                                                                         |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Karachawa_equation_traveling_wave_plot_5.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_5.gif "fig:Karachawa_equation_traveling_wave_plot_5.gif") | [Karachawa_equation_traveling_wave_plot_6.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_6.gif "fig:Karachawa_equation_traveling_wave_plot_6.gif") | [Karachawa_equation_traveling_wave_plot_7.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_7.gif "fig:Karachawa_equation_traveling_wave_plot_7.gif") | [Karachawa_equation_traveling_wave_plot_8.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_8.gif "fig:Karachawa_equation_traveling_wave_plot_8.gif") |

|                                                                                                                                                                                         |                                                                                                                                                                                            |                                                                                                                                                                                            |                                                                                                                                                                                            |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [Karachawa_equation_traveling_wave_plot_9.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_9.gif "fig:Karachawa_equation_traveling_wave_plot_9.gif") | [Karachawa_equation_traveling_wave_plot_10.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_10.gif "fig:Karachawa_equation_traveling_wave_plot_10.gif") | [Karachawa_equation_traveling_wave_plot_11.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_11.gif "fig:Karachawa_equation_traveling_wave_plot_11.gif") | [Karachawa_equation_traveling_wave_plot_12.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_12.gif "fig:Karachawa_equation_traveling_wave_plot_12.gif") |

|                                                                                                                                                                                            |                                                                                                                                                                                            |                                                                                                                                                                                            |                                                                                                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [Karachawa_equation_traveling_wave_plot_13.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_13.gif "fig:Karachawa_equation_traveling_wave_plot_13.gif") | [Karachawa_equation_traveling_wave_plot_14.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_14.gif "fig:Karachawa_equation_traveling_wave_plot_14.gif") | [Karachawa_equation_traveling_wave_plot_15.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_15.gif "fig:Karachawa_equation_traveling_wave_plot_15.gif") | [Karachawa_equation_traveling_wave_plot_16.gif](https://zh.wikipedia.org/wiki/File:Karachawa_equation_traveling_wave_plot_16.gif "fig:Karachawa_equation_traveling_wave_plot_16.gif") |

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

1.  李志斌编著 《非线性数学物理方程的行波解》 127页 科学出版社 2008