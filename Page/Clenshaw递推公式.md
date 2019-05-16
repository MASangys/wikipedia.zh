在[数值分析中](https://zh.wikipedia.org/wiki/数值分析 "wikilink")，**Clenshaw递推公式**
(由[Charles William
Clenshaw发现](https://zh.wikipedia.org/wiki/Charles_William_Clenshaw "wikilink"))是一个求[切比雪夫多项式的值的](../Page/切比雪夫多项式.md "wikilink")[递归方法](../Page/递归.md "wikilink")。

## 切比雪夫多项式

*N*次切比雪夫多项式，是下面形式的多项式*p*(*x*)

\[p(x) = \sum_{n=0}^{N} a_n T_n(x)\]

其中*T*<sub>*n*</sub>是*n*阶切比雪夫多项式.

## Clenshaw递推公式

Clenshaw递推公式可以用来计算切比雪夫多项式的值。给定

\[p(x) = \sum_{n=0}^{N} a_n T_n(x)\] 我们定义

  -
    {|

| \(b_{N} \,\!\) | \(:= a_{N} \,\) |- | \(b_{N-1} \,\!\) |
\(:= 2 x b_{N} + a_{N-1} \,\) |- | \(b_{N-n} \,\!\) |
\(:= 2 x b_{N-n+1} + a_{N-n} - b_{N-n+2} \,,\; n=2,\ldots,N-1 \,\) |- |
\(b_{0} \,\!\) | \(:= x b_{1} + a_{0} - b_{2} \,\) |}

于是

\[p(x) = \sum_{n=0}^{N} a_n T_n(x) = b_{0}.\]

(注)上面的公式在 \(N = 0, 1\)的情况下无意义。 此时我们可以用下面的公式：

  -
    {|

| \(b_{N+2} :=0\,\) |- | \(b_{N+1} :=0\,\) |- |
\(b_{j} := 2 x b_{j+1} - b_{j+2} + a_{j} \,,\; j=N,\ldots,1\) (downward,
omit if N=0) |- | \(p(x) := x b_{1} - b_{2} + a_{0} \,\) |- |
\(q(x) := 2 x b_{1} - b_{2} + a_{0} \,\) |}

这里

  -
    \(p(x) = \sum_{n=0}^{N} a_n T_n(x)\)

或者

  -
    \(q(x) = \sum_{n=0}^{N} a_n U_n(x)\)

其中\(U_n(x)\)是第二类切比雪夫多项式。

[Category:数值分析](https://zh.wikipedia.org/wiki/Category:数值分析 "wikilink")