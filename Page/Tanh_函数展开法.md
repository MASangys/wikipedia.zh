**Tanh 函数展开法**是目前求解非线性偏微分方程行波解的最强劲的和行之有效的方法。1992年数学家 Malfliet 首先应用 tanh
展开法\[1\]
运用这个方法要进行的大量繁杂的运算，必须借助[Maple](../Page/Maple.md "wikilink")、[Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")、[Matlab等计算机代数系统](https://zh.wikipedia.org/wiki/Matlab "wikilink")。

设一个非线性偏微分方程可以用下列表述：

\(\psi(u,u_{t},u_{x},u_{tt},u_{xx},u_{tx})=0\)

作变数代换：

\(u(x,t)\)→ \(U(\xi)\)

\(\xi=k*(x-c*t)\)

得到常微分方程

\(\psi(U(\psi),-kc*\frac{d U}{d \psi},k*\frac{d U}{d \psi},\)\(k^2*c^2*\frac{d^2 U}{d \psi^2}\)\(,k^2*\frac{d^2 U}{d \psi^2},-k^3*c^3*\frac{d^3 U}{d \psi^3},k^3*\frac{d^3 U}{d \psi^3})=0\)

作Malfliet 的 tanh 函数代换，引入新函数：

\(Y=tanh(\xi)\)

由此：

\(\frac{d Y}{d \xi}=1-tanh^2(\xi)=1-Y^2\)

\(\frac{d F(Y)}{d \xi}=\frac{d F(Y)}{d Y}*\frac{d Y}{d \xi}=\frac{d F(Y)}{d Y}*(1-Y^2)\)

显然

\(\frac{d}{d \xi}=L=(1-Y^2)*\frac{d}{d Y}\)

\(\frac{d^2}{d \xi^2}=L^2=-2*(1-Y^2)*Y*\frac{d}{dY}+(1-Y^2)^2*\frac{d^2}{dY^2}\)

依此类推。 设 F(Y)=Σ(a_{i}\*Y^i)

代入 常微分方程
\(\psi(U(\psi),-kc*\frac{d U}{d \psi},k*\frac{d U}{d \psi},\)\(k^2*c^2*\frac{d^2 U}{d \psi^2}\)\(,k^2*\frac{d^2 U}{d \psi^2},-k^3*c^3*\frac{d^3 U}{d \psi^3},k^3*\frac{d^3 U}{d \psi^3})=0\)

得到Y的多项式。用机械代数法或[吴文俊消元法解多项式](https://zh.wikipedia.org/wiki/吴文俊消元法 "wikilink")，反代入原式，即得偏微分方程的行波解。

## 实例

用tanh函数展开法求[KdV方程](../Page/KdV方程.md "wikilink")的行波解\[2\]。

\[\partial_t\phi+6\phi\partial_x\phi+\partial^3_x\phi=0\]

作行波代换

\(tr1 := {t = tau, u = U(\xi), x = \xi/k+c*tau}\) 得常微分方程：

\(-ck\frac{d U(\xi)}{d \xi}+6kU(\xi)\frac{d U(\xi)}{d \xi}+k^3\frac{d^3U(\xi)}{d \xi^3} = 0\)

对ξ积分，得：

\(-ckU(\xi)+3kU(\xi)^2+k^3\frac{d (U(\xi)}{d^2 \xi^2} = 0\) 令
\(U(\xi)=F(Y)\)得：

\(-ckF(Y)+3kF(Y)^2+k^3(1-Y^2)(-2Y\frac{d(F(Y)}{dY}+(1-Y^2)\frac{d^2(F(Y)}{d^2Y}) = 0\)

令
\(U(\xi)=F(Y)= a[0]+a[1]Y+a[2]Y^2+a[3]Y^3+a[4]Y^4+a[5]Y^5+\cdot\cdot\cdot\cdot\cdot+a[M]Y^M+\)……
得：
\(-ck(a[0]+a[1]Y+a[2]Y^2+a[3]Y^3+a[4]Y^4+a[5]Y^5+\cdot\cdot\cdot\cdot\cdot+a[M]Y^M)+3k(a[0]+a[1]Y+a[2]Y^2+a[3]Y^3+a[4]Y^4+a[5]Y^5+\cdot\cdot\cdot\cdot\cdot+a[M]Y^M)^2+k^3(1-Y^2)(-2Y(a[1]+2a[2]Y+3a[3]Y^2+4a[4]Y^3+5a[5]Y^4+\cdot\cdot\cdot\cdot\cdot+Ma[M]Y^{M-1})+(1-Y^2)(2a[2]+6a[3]Y+12a[4]Y^2+20a[5]Y^3+30a[6]Y^4))\)

由此得 M=2;而且：

\((3ka[2]^2+6k^3a[2])Y^4+(2k^3a[1]+6ka[1]a[2])Y^3+\)\((-cka[2]+3ka[1]^2+6ka[0]a[2]-8k^3a[2])Y^2+\)\((-cka[1]+6ka[0]a[1]-2k^3a[1])Y-cka[0]+3ka[0]^2+2k^3a[2]=0\)

令系数为0，得下列关于 a\[0\],a\[1\],a\[2\],c,k 的五元多项式方程组：

\(-cka[0]+3ka[0]^2+2k^3a[2]=0\)

\(-cka[1]+6ka[0]a[1]-2k^3a[1] =0\)

\(>-cka[2]+3ka[1]^2+6ka[0]a[2]-8k^3a[2]=0\)

\(2k^3a[1]+6ka[1]a[2]=0\)

\(3ka[2]^2+6k^3a[2]=0\)

利用[Maple](../Page/Maple.md "wikilink"),[Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink"),[Matlab等计算机代数系统](https://zh.wikipedia.org/wiki/Matlab "wikilink")，解多项式方程组，得两组非平凡解：

a\[0\]=2k^2,a\[1\]=0,a\[2\]=-2k^2,c=4k^2;

a\[0\]=(2/3)k^2,a\[1\]=0,a\[2\]=-2k^2,c=-4k^2;

于是KdV 方程的行波解为：

\(u(x,t)=2k^2(1-tanh^2(k(x-4k^2t))=2k^2sech^2(k(x-4k^2t))\)

\(u(x,t)=\frac{2}{3}k^2(1-3tanh^2(k(+4k^2t)))\)

## 推广

Malfliet 的tanh 函数展开法被后人推广到 三角函数、雅可比橢圓函數、魏爾斯特拉斯橢圓函數。

JacobiCN, JacobiDN, JacobiNC, JacobiND, JacobiNS, JacobiSN,
WeierstrassP, arcsinh, cos, cosh, cot, coth, csc, csch, exp, ln, sec,
sech, sin, sinh, tan, tanh 等。

## 软件包

[Maple](../Page/Maple.md "wikilink")商业计算机代数系统内包括一个求解偏微分方程的软件包，可用于多种非线性性偏微分方程，求得显式解析解。这个软件包称为为**TWSolutions**,功能丰富，可求多数非线性偏微分方程的行波解，但仍非万能，对有些非线性偏微分方程无解或只有平凡解\[3\]

  - 基本用法

tws:={TWSolutions(pdes,functions = \[arcsinh, cos, cosh, cot, coth, csc,
csch, exp, identity, ln, sec, sech, sin, sinh, tan, tanh, JacobiCN,
JacobiDN, JacobiNC, JacobiND, JacobiNS, JacobiSN\])};

其中 pdes 代表 非线性偏微分方程，或非线性偏微分方程组；若function=
列出所有可用的函数集合，常可一下子给出十几个到几十个解如果不写"function="，则只作tanh展开\[4\]。用包括所有可用函数的Tanh
函数展开法在[Intel Core
i7](https://zh.wikipedia.org/wiki/Intel_Core_i7 "wikilink")[笔记本电脑计算](https://zh.wikipedia.org/wiki/笔记本电脑 "wikilink")，一道非线性偏微分方程往往需时几十分以至十几小时。

中国数学家李志斌写了一个名为RATH 的Maple学术软件包，用双曲函数展开法和吴文俊消元解非线性偏微分方程
\[5\]软件包RATH可以下载\[6\]。

## 参考文献

<references/>

[Category:非线性偏微分方程](https://zh.wikipedia.org/wiki/Category:非线性偏微分方程 "wikilink")

1.  W. Malfliet, Solitary Wave Solution of Nonlinear wave equation, Am
    J.of Physics 60(7) 1992,650-654
2.  Graham W Griffiths, William E.Schiesser, Traveling Wave Analysis of
    Partial Differential Equations p393-396 Academic Press 2012
3.  Graham Griffiths, p436-437 *Maple Built-in Procedure TWSolutions*
4.  Graham Griffiths, p436-437 *Maple Built-in Procedure TWSolutions*
5.  李志斌 《非线性数学物理方程的行波解》第119-130
6.  [RATH 下载](http://cpc.cs.qub.ac.uk/summaries/ADQK)