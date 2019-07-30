**大q-勒让德多项式**是一个以[基本超几何函数](../Page/基本超几何函数.md "wikilink")定义的正交多项式\[1\]： [BIG_Q-LEGENDER_2D_PLOT.gif](https://zh.wikipedia.org/wiki/File:BIG_Q-LEGENDER_2D_PLOT.gif "fig:BIG_Q-LEGENDER_2D_PLOT.gif")

\[\displaystyle   P_n(x;c;q)={}_3\phi_2(q^{-n},q^{n+1},x;q,cq;q,q)\]

## 正交性

大q-勒让德多项式满足下列正交关系

\(\int_{cq}^{q}P_m(x;c;q)P_n(x;c;q)d_{q}x=q(1-c)\frac{1-q}{1-q^{2n+1}}\frac{(c^{-1}q;q)_n}{(cq;q)_n}(-cq^2)^{n}q^{n \choose 2}\delta_{mn}\)

## 极限关系

  - 大Q勒让德多项式→[勒让德多项式](../Page/勒让德多项式.md "wikilink")

\[\displaystyle\lim_{q \to 1} P_n(x;0;q)=P_n(2x-1)\]

令大q勒让德项式中的\(c=0\),并且q→1 即得勒让德多项式

  - 验证

将c=0代人7阶(n=7)大q勒让德多项式得：

\(qL=P_n(x;0;q)=1+{\frac {q}{ \left( 1-q \right) ^{2}}}-{\frac {qx}{ \left( 1-q
 \right) ^{2}}}-{\frac {{q}^{9}}{ \left( 1-q \right) ^{2}}}+{\frac {x{
q}^{9}}{ \left( 1-q \right) ^{2}}}-{\frac {1}{{q}^{6} \left( 1-q
 \right) ^{2}}}+{\frac {x}{{q}^{6} \left( 1-q \right) ^{2}}}+{\frac {{
q}^{2}}{ \left( 1-q \right) ^{2}}}-{\frac {x{q}^{2}}{ \left( 1-q
 \right) ^{2}}}+ \left( 1-{q}^{-7} \right)  \left( 1-{q}^{-6} \right)
 \left( 1-{q}^{8} \right)  \left( 1-{q}^{9} \right)  \left( 1-x
 \right)  \left( 1-qx \right) {q}^{2} \left( 1-q \right) ^{-2} \left(
1-{q}^{2} \right) ^{-2}+ \left( 1-{q}^{-7} \right)  \left( 1-{q}^{-6}
 \right)  \left( 1-{q}^{-5} \right)  \left( 1-{q}^{8} \right)  \left(
1-{q}^{9} \right)  \left( 1-{q}^{10} \right)  \left( 1-x \right)
 \left( 1-qx \right)  \left( 1-x{q}^{2} \right) {q}^{3} \left( 1-q
 \right) ^{-2} \left( 1-{q}^{2} \right) ^{-2} \left( 1-{q}^{3}
 \right) ^{-2}+ \left( 1-{q}^{-7} \right)  \left( 1-{q}^{-6} \right)
 \left( 1-{q}^{-5} \right)  \left( 1-{q}^{-4} \right)  \left( 1-{q}^{8
} \right)  \left( 1-{q}^{9} \right)  \left( 1-{q}^{10} \right)
 \left( 1-{q}^{11} \right)  \left( 1-x \right)  \left( 1-qx \right)
 \left( 1-x{q}^{2} \right)  \left( 1-x{q}^{3} \right) {q}^{4} \left( 1
-q \right) ^{-2} \left( 1-{q}^{2} \right) ^{-2} \left( 1-{q}^{3}
 \right) ^{-2} \left( 1-{q}^{4} \right) ^{-2}+ \left( 1-{q}^{-7}
 \right)  \left( 1-{q}^{-6} \right)  \left( 1-{q}^{-5} \right)
 \left( 1-{q}^{-4} \right)  \left( 1-{q}^{-3} \right)  \left( 1-{q}^{8
} \right)  \left( 1-{q}^{9} \right)  \left( 1-{q}^{10} \right)
 \left( 1-{q}^{11} \right)  \left( 1-{q}^{12} \right)  \left( 1-x
 \right)  \left( 1-qx \right)  \left( 1-x{q}^{2} \right)  \left( 1-x{q
}^{3} \right)  \left( 1-x{q}^{4} \right) {q}^{5} \left( 1-q \right) ^{
-2} \left( 1-{q}^{2} \right) ^{-2} \left( 1-{q}^{3} \right) ^{-2}
 \left( 1-{q}^{4} \right) ^{-2} \left( 1-{q}^{5} \right) ^{-2}+
 \left( 1-{q}^{-7} \right)  \left( 1-{q}^{-6} \right)  \left( 1-{q}^{-
5} \right)  \left( 1-{q}^{-4} \right)  \left( 1-{q}^{-3} \right)
 \left( 1-{q}^{-2} \right)  \left( 1-{q}^{8} \right)  \left( 1-{q}^{9}
 \right)  \left( 1-{q}^{10} \right)  \left( 1-{q}^{11} \right)
 \left( 1-{q}^{12} \right)  \left( 1-{q}^{13} \right)  \left( 1-x
 \right)  \left( 1-qx \right)  \left( 1-x{q}^{2} \right)  \left( 1-x{q
}^{3} \right)  \left( 1-x{q}^{4} \right)  \left( 1-x{q}^{5} \right) {q
}^{6} \left( 1-q \right) ^{-2} \left( 1-{q}^{2} \right) ^{-2} \left( 1
-{q}^{3} \right) ^{-2} \left( 1-{q}^{4} \right) ^{-2} \left( 1-{q}^{5}
 \right) ^{-2} \left( 1-{q}^{6} \right) ^{-2}+ \left( 1-{q}^{-7}
 \right)  \left( 1-{q}^{-6} \right)  \left( 1-{q}^{-5} \right)
 \left( 1-{q}^{-4} \right)  \left( 1-{q}^{-3} \right)  \left( 1-{q}^{-
2} \right)  \left( 1-{q}^{-1} \right)  \left( 1-{q}^{8} \right)
 \left( 1-{q}^{9} \right)  \left( 1-{q}^{10} \right)  \left( 1-{q}^{11
} \right)  \left( 1-{q}^{12} \right)  \left( 1-{q}^{13} \right)
 \left( 1-{q}^{14} \right)  \left( 1-x \right)  \left( 1-qx \right)
 \left( 1-x{q}^{2} \right)  \left( 1-x{q}^{3} \right)  \left( 1-x{q}^{
4} \right)  \left( 1-x{q}^{5} \right)  \left( 1-x{q}^{6} \right) {q}^{
7} \left( 1-q \right) ^{-2} \left( 1-{q}^{2} \right) ^{-2} \left( 1-{q
}^{3} \right) ^{-2} \left( 1-{q}^{4} \right) ^{-2} \left( 1-{q}^{5}
 \right) ^{-2} \left( 1-{q}^{6} \right) ^{-2} \left( 1-{q}^{7}
 \right) ^{-2}\)

  - <math>qL2=\\lim_{q \\to 1}qL=-1+56\\,x+3432\\,{x}^{7}-12012\\,{x}^{6}+16632\\,{x}^{5}-11550\\,{x}^{4}+

4200\\,{x}^{3}-756\\,{x}^{2}</math>

另7阶勒让德多项式：

  - <math>P_7(2x-1)=-1+56\\,x+3432\\,{x}^{7}-12012\\,{x}^{6}+16632\\,{x}^{5}-11550\\,{x}^{4}+

4200\\,{x}^{3}-756\\,{x}^{2}</math>

显然qL2=P_7(2x-1) QED.

## 图集

下列复数域三阶大q勒让德多项式\[\displaystyle   P_n3(x+iy;-1.5;q)\]的

一组三个虚数部、实数部与绝对值的复数三维动画图，以q为可变参数

一组三个虚数部、实数部与绝对值的复数密度动画图

|                                                                                                                                                                                          |                                                                                                                                                                                       |                                                                                                                                                                                       |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [BIG_Q-LEGENDER_ABS_COMPLEX_3D_MAPLE_PLOT.gif](https://zh.wikipedia.org/wiki/File:BIG_Q-LEGENDER_ABS_COMPLEX_3D_MAPLE_PLOT.gif "fig:BIG_Q-LEGENDER_ABS_COMPLEX_3D_MAPLE_PLOT.gif") | [BIG_Q-LEGENDER_IM_COMPLEX_3D_MAPLE_PLOT.gif](https://zh.wikipedia.org/wiki/File:BIG_Q-LEGENDER_IM_COMPLEX_3D_MAPLE_PLOT.gif "fig:BIG_Q-LEGENDER_IM_COMPLEX_3D_MAPLE_PLOT.gif") | [BIG_Q-LEGENDER_RE_COMPLEX_3D_MAPLE_PLOT.gif](https://zh.wikipedia.org/wiki/File:BIG_Q-LEGENDER_RE_COMPLEX_3D_MAPLE_PLOT.gif "fig:BIG_Q-LEGENDER_RE_COMPLEX_3D_MAPLE_PLOT.gif") |

|                                                                                                                                                                                |                                                                                                                                                                             |                                                                                                                                                                             |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [BIG_Q-LEGENDER_ABS_DENSITY_MAPLE_PLOT.gif](https://zh.wikipedia.org/wiki/File:BIG_Q-LEGENDER_ABS_DENSITY_MAPLE_PLOT.gif "fig:BIG_Q-LEGENDER_ABS_DENSITY_MAPLE_PLOT.gif") | [BIG_Q-LEGENDER_IM_DENSITY_MAPLE_PLOT.gif](https://zh.wikipedia.org/wiki/File:BIG_Q-LEGENDER_IM_DENSITY_MAPLE_PLOT.gif "fig:BIG_Q-LEGENDER_IM_DENSITY_MAPLE_PLOT.gif") | [BIG_Q-LEGENDER_RE_DENSITY_MAPLE_PLOT.gif](https://zh.wikipedia.org/wiki/File:BIG_Q-LEGENDER_RE_DENSITY_MAPLE_PLOT.gif "fig:BIG_Q-LEGENDER_RE_DENSITY_MAPLE_PLOT.gif") |

## 参考文献

  -
  -
  -
  -
<!-- end list -->

1.  Roelof p443