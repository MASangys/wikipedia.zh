[Qexp.gif](https://zh.wikipedia.org/wiki/File:Qexp.gif "fig:Qexp.gif") **Q指数**是指数函数的Q模拟，定义如下

\[e_q(z)=
\sum_{n=0}^\infty \frac{z^n (1-q)^n}{(q;q)_n} =
\sum_{n=0}^\infty z^n\frac{(1-q)^n}{(1-q^n)(1-q^{n-1}) \cdots (1-q)}\]

其中\((q;q)_n=(1-q^n)(1-q^{n-1})\cdots (1-q)\)

是 [Q阶乘幂](../Page/Q阶乘幂.md "wikilink")

\[\left(\frac{d}{dz}\right)_q e_q(z) = e_q(z)\]

\[\left(\frac{d}{dz}\right)_q z^n = z^{n-1} \frac{1-q^n}{1-q}
=[n]_q z^{n-1}.\]

## 关系式

当 \(q<1\)

\[e_q(z) = E_q(z(1-q)).\]

其中, \(E_q(t)\) 是[基本超几何函数](../Page/基本超几何函数.md "wikilink")的特例:

\[E_q(z) = \;_{1}\phi_0 (0;q,z) = \prod_{n=0}^\infty
\frac {1}{1-q^n z} ~.\]

## 参考文献

  - F. H. Jackson (1908), *On q-functions and a certain difference operator*, Trans. Roy. Soc. Edin., **46** 253-281.

<!-- end list -->

  - Exton, H. (1983), *q-Hypergeometric Functions and Applications*, New York: Halstead Press, Chichester: Ellis Horwood, 1983, ISBN 0853124914, ISBN 0470274530, ISBN 978-0470274538

<!-- end list -->

  - Gasper G., and Rahman, M. (2004), *Basic Hypergeometric Series*, Cambridge University Press, 2004, ISBN 0521833574

[Category:Q-模拟](https://zh.wikipedia.org/wiki/Category:Q-模拟 "wikilink")