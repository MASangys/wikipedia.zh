**Painlevé分析**原是Panlevé在1895年关于非线性常微分方程可积性的理论，后经数学家推广到分析非线性偏微分方程中，并发展出几种程序，常见的有Ablowitz-Ramani-Segur(ARS)程序、Weiss-Tabor-Carnevale(WTC)程序和Kruskal简化法等。Panlevé分析的过程复杂，需借助[Maple](../Page/Maple.md "wikilink")、[Mathematica等计算机代数系统进行运算](https://zh.wikipedia.org/wiki/Mathematica "wikilink")\[1\]

## Kruskal 简化法原理

对于给定的 偏微分方程

`   `\(F(u_{x},u_{t},u_{xx},\cdot\cdot\cdot)=0;\)

假设其解可展开为Laurent级数形式：

\(u(x,t) = \sum_{k=0}^{\infty}(u[j](t)*phi^j, j = 0 .. N))/phi^\rho\)

设定方程解的首项目可以表示为

\(u\)≈\(\psi^{-\rho}*u_0\)

代人原式，平衡φ的幂次，得到一个含共振点的递推关系，如果对于任意的u(j)、φ，此递推关系是自相容的，则原来的方程是可积的。

## 实例

[伯格斯方程](../Page/伯格斯方程.md "wikilink")的Painlevé分析

\(sys :=\frac{\partial u(x, t)}{\partial t}+a u(x, t) \frac{\partial (u(x, t)}{\partial x}+b \frac{\partial^2 (u(x, t)}{\partial  x^2} = 0\)

作Laurent级数展开

\(u(x,t) = \sum_{k=0}^{\infty}(u[j](t)\phi^j, j = 0 .. N))/\phi^\rho\)

其中\(\phi=x-\psi(t)\) 和 \(u_{j}=u_{j}(t)\) 是非特征奇异点流型\(x-\psi(t)=0\) 和
u\[0\]≠0附近的解析函数。

设定方程解的首项可以表示为

\(u\)≈\(\psi^{-\rho} u_0\)

代人原式，得到

\(\rho\phi u[0]\psi[t]\)\(-\phi^{-\rho+1} u[0]^2\rho a-\rho(-b-b\rho) u[0]+\phi^2 u[0, t]=0\)

平衡最高阶微商与非线性项，得到：

ρ=1，u\[0\] = 2 b/a；

将 \(u(x, t) = 2*b/(a*(x-\psi))+u[j]*(x-\psi)^(j-1)\) 代人偏微分方程，

φ的最低次项为

\(\phi^{j-3}*b*(j+1)*(j-2)=0\)

代入伯格斯方程，

因此 j=-1,2

取 \(u(x,t)= \sum_{k=0}^{2}\frac{ u[j](t) \phi^j)}{\phi}\) 再带入原方程得：

\(a*phi^4*u[2]^2-(-u[1]*a+psi[t])*phi^3*u[2]+phi^4*u[2, t]+phi^3*u[1, t]+phi^2*u[0, t]+(-u[1]*a+psi[t])*u[0]*phi-u[0]^2*a+2*b*u[0]\)

整理后，令其φ 的2次、1次，及常数项为零 得到一组多项式方程组：

\(u[0, t] = 0, -(u[1]*a-psi[t])*u[0] = 0, -u[0]*(-2*b+a*u[0])\)

伯格斯方程通过Painlevé测试的条件是 在截短短展开式中，φ、u\[2\] 是任意函数。

经过一系列运算可知 u\[2\],φ为任意函数，伯格斯方程乃Panlevé可积，其解有如下形式：

\(u(x, t) =\frac{ 2*b}{a*(x-\psi)}+\frac{\psi[t]}{a}+(x-\psi)*u[2]\)

## 参考文献

<references/>

[Category:非线性偏微分方程](https://zh.wikipedia.org/wiki/Category:非线性偏微分方程 "wikilink")

1.  Inna Shingareva, Carlos Lizarrraga-Celyaya Solving Nonlinear Partial
    Differential Equations with Maple and Mathematica,
    SpringerWienNewYork