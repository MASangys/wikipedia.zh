**DSW 方程**(Drinfeld-Solokov-Wilson equation)是一组非线性偏微分方程\[1\]：

\(\frac{\partial u}{\partial t}+3*v*\frac{\partial v}{\partial x}=0\)

\(\frac{\partial v}{\partial t}-2*\frac{\partial^3 v}{\partial x^3}+\frac{\partial u}{\partial x}*v+2u*\frac{\partial v}{\partial x}\)

## 解析解

DSW方程有多种解析解\[2\]

### 对称消减法

[DSW_Equation_symmetry_reduction_method_animation.gif](https://zh.wikipedia.org/wiki/File:DSW_Equation_symmetry_reduction_method_animation.gif "fig:DSW_Equation_symmetry_reduction_method_animation.gif")
用减对称法可求DSW方程的解析解\[3\]

\(u(x,t) := -sqrt(2*m)*c2*tanh(c1+c2*(m*t-x))\)

参数：c2 = .5, c1 = 1.4, m = 2.3

\(u(x,t)=-.758*sqrt(2)*tanh(1.4+1.15*t-.5*x)\)

### 变分法

[DSW_Equation_variational_method_animation.gif](https://zh.wikipedia.org/wiki/File:DSW_Equation_variational_method_animation.gif "fig:DSW_Equation_variational_method_animation.gif")
\(u(x,t)=f := (3*c*(1/2))*sech(\sqrt{(1/2)*c}*(x-c*t))^2\)\[4\]。

### 达布变换法

利用[达布变换可求DSW方程的解析解](../Page/达布变换.md "wikilink")\[5\]

\(v := -(1/2)*k^2*(-1+\sqrt(3)*tanh(k^3*t+(1/2)*k*y)*cot((1/2)*\sqrt(3)*k*y))\)
[DSW_breather_with_Dabourx_transform.gif](https://zh.wikipedia.org/wiki/File:DSW_breather_with_Dabourx_transform.gif "fig:DSW_breather_with_Dabourx_transform.gif")

## 同伦法

[Drinfeld-Sokolov-Wilson_Equation_Homotopy_method_animation.gif](https://zh.wikipedia.org/wiki/File:Drinfeld-Sokolov-Wilson_Equation_Homotopy_method_animation.gif "fig:Drinfeld-Sokolov-Wilson_Equation_Homotopy_method_animation.gif")
利用[函数的同伦](https://zh.wikipedia.org/wiki/同伦#函数的同伦 "wikilink")，可求DSW方程的解析解\[6\]。

\(u(x,t)=-360*t^2*sec(x)^2*tan(x)^4-396*t^2*sec(x)^2*tan(x)\)
\(-60*t^2*sec(x)^2+360*t^2*sec(x)^4*tan(x)^2+72*t^2*sec(x)^4\)

## 行波分析法

## 参考文献

<references/>

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
[Category:孤立子](https://zh.wikipedia.org/wiki/Category:孤立子 "wikilink")

1.  Esmaeil Alibeiki and Ahmad Neyrameh Application of Homotopy
    Perturbation Method to Nonlinear Drinfeld-Sokolov-Wilson Equation
2.  Esmaeil Alibeiki and Ahmad Neyrameh Application of Homotopy
    Perturbation Method to Nonlinear Drinfeld-Sokolov-Wilson Equation
3.  B.Kauer, Symmetry Reduction Mothod for Exact Solution of some
    Nonlinear Systems p27
4.  Wei-Min Zhang Solitary Solutions and Singular Periodic Solutions of
    the Drinfeld-Sokolov-Wilson Equation by Variational Approach,Applied
    Mathematical Sciences, Vol. 5, 2011, no. 38, 1887 - 1894
5.  耿献国、吴丽华《Darboux Transformation and Explicit Solutions for
    Drinfeld–Sokolov–Wilson Equation
6.  Esmaeil Alibeiki and Ahmad Neyrameh,Application of Homotopy
    Perturbation Method to Nonlinear Drinfeld-Sokolov-Wilson Equation