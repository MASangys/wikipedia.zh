**Riccati方程**是形式如\(y' = q_0(x) + q_1(x) y + q_2(x) y^2\)
的[常微分方程](../Page/常微分方程.md "wikilink")。

## 解法

先同乘\(q_2(x)\)，使得\(q_2y' = q_0q_2 + q_1q_2 y + q_2^2 y^2\)

再以\(v = y q_2\)代入：

  -
    \(v' = v^2 + P(x)v + Q(x)\)；其中令
    \(Q(x) = q_0q_2;P(x)=q_1+\frac{q_2'}{q_2}\) 。

再以\(v = -\frac{u'}{u}\)代入上式。

:\#
\(v'=-\left(\frac{u'}{u}\right)'=-\frac{u''}{u} +\left(\frac{u'}{u}\right)^2=-\frac{u''}{u}+v^2\!\)
则

\[\frac{u''}{u}= v^2 -v'=-Q -Pv= -Q+P\frac{u'}{u}\] 因此

\[u'' -Pu' +Qu=u'' -(q_1+\frac{q_2'}{q_2})u' +q_0q_2u=0\] 最终
\(y=-\frac{u'}{q_2u}\).

## Schwarzian方程上的應用

  -
    \(S(w) \equiv \left(\frac{w''}{w'}\right)' - \frac{\left(\frac{w''}{w'}\right)^2}{2} = f\)

顯然可設\(y = \frac{w''}{w'}\)：

  -
    \(y' - \frac{y^2}{2} = f\)

再代入 \(-\frac{2u'}{u} = y\) ，得線性微分方程：

  -
    \(u'' - \frac{1}{2} fu = 0\)

因為 \(\frac{w''}{w'} = -\frac{2u'}{u}\)
，積分得\(w' =\frac{C}{u^2}\)。另一方面，若線性微分方程有其他線性獨立解U，則有：

  -
    \(w' = \frac{U'u-Uu'}{u^2}\)
    \(w = \frac{U}{u}\)

## 已知某一特定解

已知 \(y = y_1\)
是一特定解，可設通解\(y = y_1 + \frac{1}{z}\)，代入整理得[一階線性常微分方程](../Page/一階線性常微分方程.md "wikilink")：

  -
    \(z' + (q_1 + 2 q_2 y_1) z = - q_2\)

## 参见

  - [LQR控制器](../Page/LQR控制器.md "wikilink")
  - [伯努利微分方程](../Page/伯努利微分方程.md "wikilink")
  - [柯西-欧拉方程](../Page/柯西-欧拉方程.md "wikilink")
  - [克莱罗方程](../Page/克莱罗方程.md "wikilink")
  - [全微分方程](../Page/全微分方程.md "wikilink")
  - [线性微分方程](../Page/线性微分方程.md "wikilink")

[Category:微分方程](https://zh.wikipedia.org/wiki/Category:微分方程 "wikilink")