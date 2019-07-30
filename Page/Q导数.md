**Q导数**也称为杰克逊导数，乃是一般[导数](../Page/导数.md "wikilink")的[Q模拟](https://zh.wikipedia.org/wiki/Q模拟 "wikilink")，由[英国](https://zh.wikipedia.org/wiki/英国 "wikilink")[数学家](../Page/数学家.md "wikilink")创立。

## 定义

函数*f*(*x*)的q-导数定义如下：

\[\left(\frac{d}{dx}\right)_q f(x)=\frac{f(qx)-f(x)}{qx-x}.\]

或书写为 \(D_qf(x)\).

\[D_q= \frac{1}{x} ~ \frac{q^{d~~~ \over d (\ln x)}  -1}{q-1} ~,\] 当as *q* → 1时，化为寻常的导数, → <sup>*d*</sup>⁄<sub>*dx*</sub>,

## 关系式

q-导数算符是一个线性算子：

\[\displaystyle D_q (f(x)+g(x)) = D_q f(x) + D_q g(x)~.\]

\[\displaystyle D_q (f(x)g(x)) = g(x)D_q f(x) + f(qx)D_q g(x) = g(qx)D_q f(x) + f(x)D_q g(x).\]

\[\displaystyle D_q (f(x)/g(x)) = \frac{g(x)D_q f(x) - f(x)D_q g(x)}{g(qx)g(x)},\quad g(x)g(qx)\neq 0.\]

若 \(g(x) = c x^k\). 则

\[\displaystyle D_q f(g(x)) = D_{q^k}(f)(g(x))D_q(g)(x).\]

*q*-导数 的[本征值是](https://zh.wikipedia.org/wiki/本征值 "wikilink")[q-指数](https://zh.wikipedia.org/wiki/q-指数 "wikilink") *e<sub>q</sub>*(*x*).

## 与导数的关系

\[\left(\frac{d}{dz}\right)_q z^n = \frac{1-q^n}{1-q} z^{n-1} =
[n]_q z^{n-1}\]

其中 \([n]_q\) 是n的 [q括号](https://zh.wikipedia.org/wiki/q括号 "wikilink")

并且 \(\lim_{q\to 1}[n]_q = n\) .

一个函数的n阶导数为：

\[(D^n_q f)(0)=
\frac{f^{(n)}(0)}{n!} \frac{(q;q)_n}{(1-q)^n}=
\frac{f^{(n)}(0)}{n!} [n]_q!\]

\[f(z)=\sum_{n=0}^\infty f^{(n)}(0)\,\frac{z^n}{n!} = \sum_{n=0}^\infty (D^n_q f)(0)\,\frac{z^n}{[n]_q!}\]

## 例子

\(D_{q}sin(x)={\frac {\sin \left( qx \right) -\sin \left( x \right) }{ \left( q-1
 \right) x}}\)

|                                                                           |                                                                           |                                                                           |                                                                           |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| [Dsin1.gif](https://zh.wikipedia.org/wiki/File:Dsin1.gif "fig:Dsin1.gif") | [Dsin2.gif](https://zh.wikipedia.org/wiki/File:Dsin2.gif "fig:Dsin2.gif") | [Dsin5.gif](https://zh.wikipedia.org/wiki/File:Dsin5.gif "fig:Dsin5.gif") | [Dsin3.JPG](https://zh.wikipedia.org/wiki/File:Dsin3.JPG "fig:Dsin3.JPG") |

\(D_{q}tanh(x)={\frac {\tanh \left( qx \right) -\tanh \left( x \right) }{ \left( q-1
 \right) x}}\)

|                                                                              |                                                                           |                                                                              |                                                                              |
| ---------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| [Dtanh2.gif](https://zh.wikipedia.org/wiki/File:Dtanh2.gif "fig:Dtanh2.gif") | [Dtanh.png](https://zh.wikipedia.org/wiki/File:Dtanh.png "fig:Dtanh.png") | [Dtanh3.gif](https://zh.wikipedia.org/wiki/File:Dtanh3.gif "fig:Dtanh3.gif") | [Dtanh4.gif](https://zh.wikipedia.org/wiki/File:Dtanh4.gif "fig:Dtanh4.gif") |

## 参见

  -
  -
  - [Q指数](../Page/Q指数.md "wikilink")

  -
  -
  -
## 参考文献

  - F. H. Jackson (1908), *On q-functions and a certain difference operator*, Trans. Roy. Soc. Edin., **46** 253-281.

<!-- end list -->

  - Exton, H. (1983), *q-Hypergeometric Functions and Applications*, New York: Halstead Press, Chichester: Ellis Horwood, 1983, ISBN 0853124914, ISBN 0470274530, ISBN 978-0470274538

<!-- end list -->

  - Victor Kac, Pokman Cheung, *Quantum Calculus*, Universitext, Springer-Verlag, 2002. ISBN 0-387-95341-8

## 延伸阅读

  - J. Koekoek, R. Koekoek, *[A note on the q-derivative operator](http://arxiv.org/abs/math/9908140)*, (1999) ArXiv math/9908140
  - Thomas Ernst, *[The History of q-Calculus and a new method](https://web.archive.org/web/20150824041046/http://www2.math.uu.se/research/pub/Ernst4.pdf)*,(2001),

[Category:微分学](https://zh.wikipedia.org/wiki/Category:微分学 "wikilink") [Category:Q-模拟](https://zh.wikipedia.org/wiki/Category:Q-模拟 "wikilink")