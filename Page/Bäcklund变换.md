> 本文内容由[Bäcklund变换](https://zh.wikipedia.org/wiki/Bäcklund变换)转换而来。


**Bäcklund变换**是两个非线性偏微分方程之间的一对变换关系\[1\]

偏微分方程1：\(F_1(u,x,t,u_x,u_t,u_xx,u_tt,u_xt,u_tt)=0\)

偏微分方程2：\(F_2(w,xi,eta,w_xi,w_eta,w_xi,xi,w_eta,eta)=0\)

\(phi[1](u,x,t,u_x,u_t,w,xi,eta,w_xi,w_eta)=0\)

\(phi[2](u,x,t,u_x,u_t,w,xi,eta,w_xi,w_eta)=0\)

是'''Bäcklund变换是求[非线性偏微分方程精确解的一种重要的变换](https://zh.wikipedia.org/wiki/非线性偏微分方程 "wikilink")。

1876年瑞典数学家[巴克隆德发现](https://zh.wikipedia.org/wiki/阿尔伯特·维克多·巴克隆德 "wikilink")[Sine-Gordon方程](../Page/Sine-Gordon方程.md "wikilink")的不同解u、v

\[u_{xt} = \sin u.\,\]

\[v_{xt} = \sin v.\,\]

之间有如下关系：\[2\]

\[\begin{align}
v_x & = u_x - 2\beta \sin \Bigl( \frac{u+v}{2} \Bigr) \\
v_t & = -u_t + \frac{2}{\beta} \sin \Bigl( \frac{v-u}{2} \Bigr)
\end{align} \,\!\]

这就是Sine-Gordon方程的Bäcklund自变换。

将Bäcklund自变换第一式对t取微商，二式对x微商：

\(bt1 :=(1/2)*u_{xt}-(1/2)*v_{xt} = \beta*cos((1/2)*u+(1/2)*v)*((1/2)*u_t+(1/2)*v_t)\)

\(bt2 :=(1/2)*u_{xt}+(1/2)*v_{xt} = cos((1/2)*u-(1/2)*v)*((1/2)*u_x+(1/2)*v_x)/\beta\)

消除v即得\(u_{xt} = \sin u.\,\)；

消除u项即得

\[v_{xt} = \sin v.\,\]

Bäcklund变换常用于求[Sine-Gordon方程](../Page/Sine-Gordon方程.md "wikilink")、[高维广义Burger I型方程](https://zh.wikipedia.org/wiki/高维广义Burger_I型方程 "wikilink")、[高维广义Burger II型方程的精确解](https://zh.wikipedia.org/wiki/高维广义Burger_II型方程 "wikilink")：\[3\]

## 解Sine-Gordon方程

[Sine-gordon_kink2d.gif](https://zh.wikipedia.org/wiki/File:Sine-gordon_kink2d.gif "fig:Sine-gordon_kink2d.gif") [Sine-gordon_3D_animation1.gif](https://zh.wikipedia.org/wiki/File:Sine-gordon_3D_animation1.gif "fig:Sine-gordon_3D_animation1.gif") [Sine-gordon_3D_animation2.gif](https://zh.wikipedia.org/wiki/File:Sine-gordon_3D_animation2.gif "fig:Sine-gordon_3D_animation2.gif")

利用[Sine-Gordon方程](../Page/Sine-Gordon方程.md "wikilink")的自Bäcklund变换解Sine-Gordon方程：

由Bäcklund自变换\(v_x = u_x - 2\beta \sin( \frac{u+v}{2} )\)令v=0，得

\(u_x = 2\beta \sin \Bigl( \frac{u}{2} \Bigr)\)，显然

\(2*\beta = u[x]/sin((1/2)*u)\)，两边对x积分，得：

\(2*\beta*x = 2*ln(csc((1/2)*u)-cot((1/2)*u))\)

对Bäcklund自变换第二式作同样运算得：

\(2*t/\beta = 2*ln(csc((1/2)*u)-cot((1/2)*u))\) 经过三角函数运算，二式简化为

\(2\beta*x = 2*ln(tan(u/4))\)

\(2t/\beta = 2*ln(tan(u/4))\)

二式相加得：

\(2*beta*x+2*t/beta = 4*ln(tan((1/4)*u))\)，

分离u得[Sine-Gordon方程](../Page/Sine-Gordon方程.md "wikilink")的一个解析解：

\(u(x,t)=4*arctan(e^{\frac{\beta^2*x+t}{2\beta}})\)

又从\(2*t/\beta = 2*ln(csc((1/2)*u)-cot((1/2)*u))\) 直接接求u得另外两个解析解：

\(u(x,t)=2*arctan(2*exp((1/2)*(\beta^2*x+t)/\beta)/(1+(exp((1/2)*(\beta^2*x+t)/\beta))^2))\)

\(u(x,t)=-2*arctan(((exp((1/2)*(\beta^2*x+t)/\beta))^2-1)/(1+(exp((1/2)*(\beta^2*x+t)/\beta))^2))\)

## 参考文献

<references/>

[Category:非线性偏微分方程](https://zh.wikipedia.org/wiki/Category:非线性偏微分方程 "wikilink")

1.  Inna Shignareve and Carlos Lizarraga-Celaya, Solving Nonlinear Partial Differential Equations with Maple and Methematica, p46, Springer
2.  阎振亚著《复杂非线性波的构造性理论及其应用》6页科学出版社2007年
3.  阎振亚著《复杂非线性波的构造性理论及其应用》106-111页科学出版社2007年