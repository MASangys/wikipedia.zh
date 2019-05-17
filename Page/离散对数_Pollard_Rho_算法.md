**离散对数 Pollard Rho 算法** 是 [John
Pollard](https://zh.wikipedia.org/wiki/John_Pollard_\(mathematician\) "wikilink")
在1978年发明的解决 [离散对数](../Page/离散对数.md "wikilink") 问题的算法, 区别于解决
[整数分解](../Page/整数分解.md "wikilink") 问题的同名算法。

算法的目标是求 \(\gamma\) 使得 \(\alpha ^ \gamma = \beta\)，其中 \(\beta\) 属于一个由
\(\alpha\) 生成的 [循环群](https://zh.wikipedia.org/wiki/循环群 "wikilink")
\(G\)。该算法寻找 \(a\), \(b\), \(A\), \(B\) 使得
\(\alpha^a \beta^b = \alpha^A \beta^B\)。若他们基于的群是一个 \(n\) 阶的循环群，则
\(\gamma\) 是方程 \((B-b)\gamma = (a-A) \pmod{n}\) 的其中一个解。

为求得 \(a\), \(b\), \(A\), \(B\)， 该算法使用
[Floyd判圈算法](../Page/Floyd判圈算法.md "wikilink") 在数列
\(x_i = \alpha^{a_i} \beta^{b_i}\) 中寻找一个环。 假设映射
\(f: x_i \mapsto x_{i+1}\) 是近似于随机的，则有可能在约 \(\sqrt{\frac{\pi n}{2}}\)
步后发现一个环。可使用一下规则来生成一个此类映射：将 \(G\) 分割为三个不相交的子集 \(S_0\)，\(S_1\)
，\(S_2\) ，且其所含元素数量大致相等，如果 \(x_i \in S_0\) 则将 \(a\) 和 \(b\) 加倍； 如果
\(x_i \in S_1\) 则将 \(a\) 自增； 如果 \(x_i \in S_2\) 则将 \(b\) 自增。

## 算法

使  是一个  阶的 [循环群](https://zh.wikipedia.org/wiki/循环群 "wikilink"), 且有
\(\alpha, \beta\in G\), 以及一个分割 \(G = S_0\cup S_1\cup S_2\), 定义映射
\(f:G\to G\)

\[f(x) = \begin{cases}
\beta x & x\in S_0\\
x^2 & x\in S_1\\
\alpha x & x\in S_2
\end{cases}\]

并据以下方式定义映射 \(g:G\times\mathbb{Z}\to\mathbb{Z}\) 和
\(h:G\times\mathbb{Z}\to\mathbb{Z}\)

\[\begin{align}
g(x,n) &= \begin{cases}
n & x\in S_0\\
2n \pmod p & x\in S_1\\
n+1 \pmod p & x\in S_2
\end{cases}
\\
h(x,n) &= \begin{cases}
n+1 \pmod p & x\in S_0\\
2n \pmod p & x\in S_1\\
n & x\in S_2
\end{cases}
\end{align}\]

` `**`输入`**` `*`a`*`: a 是 `*`G`*` 的生成元, `*`b`*`: `*`G`*` 的一个元素`
` `**`输出`**` 整数 `*`x`*` 使得 `*`a`<sup>`x`</sup>*` = `*`b`*`, 或者失败`

` 初始化 `*`a`*<sub>`0`</sub>` ← 0, `*`b`*<sub>`0`</sub>` ← 0, `*`x`*<sub>`0`</sub>` ← 1 ∈ `*`G`*`, `

` `*`i`*` ← 1`
` `**`loop`**
`     `*`x`<sub>`i`</sub>*` ← `*`f`*`(`*`x`*<sub>*`i`*`-1`</sub>`), `
`     `*`a`<sub>`i`</sub>*` ← `*`g`*`(`*`x`*<sub>*`i`*`-1`</sub>`, `*`a`*<sub>*`i`*`-1`</sub>`), `
`     `*`b`<sub>`i`</sub>*` ← `*`h`*`(`*`x`*<sub>*`i`*`-1`</sub>`, `*`b`*<sub>*`i`*`-1`</sub>`)`

`     `*`x`*<sub>`2`*`i`*</sub>` ← `*`f`*`(`*`f`*`(`*`x`*<sub>`2`*`i`*`-2`</sub>`)), `
`     `*`a`*<sub>`2`*`i`*</sub>` ← `*`g`*`(`*`f`*`(`*`x`*<sub>`2`*`i`*`-2`</sub>`), `*`g`*`(`*`x`*<sub>`2`*`i`*`-2`</sub>`, `*`a`*<sub>`2`*`i`*`-2`</sub>`)), `
`     `*`b`*<sub>`2`*`i`*</sub>` ← `*`h`*`(`*`f`*`(`*`x`*<sub>`2`*`i`*`-2`</sub>`), `*`h`*`(`*`x`*<sub>`2`*`i`*`-2`</sub>`, `*`b`*<sub>`2`*`i`*`-2`</sub>`))`

`     `**`if`**` `*`x`<sub>`i`</sub>*` = `*`x`*<sub>`2`*`i`*</sub>` `**`then`**
`         `*`r`*` ← `*`b`<sub>`i`</sub>*` - `*`b`*<sub>`2`*`i`*</sub>
`         `**`if`**` r = 0 `**`return``   ``failure`**
`         `*`x`*` ← `*`r`*<sup>`−1`</sup>`(`*`a`*<sub>`2`*`i`*</sub>` - `*`a`<sub>`i`</sub>*`) mod `*`p`*
`         `**`return`**` `*`x`*
`     `**`else`**` `<u>`# `*`x`<sub>`i`</sub>*` ≠ `*`x`*<sub>`2`*`i`*</sub></u>
`         `*`i`*` ← `*`i`*`+1, `
`         `**`break``   ``loop`**
`     `**`end``   ``if`**
`  `**`end``   ``loop`**

## 举例

考虑，举例来说，一个由 2 模 \(N=1019\)
生成的群(群的阶是\(n=1018\)，2是生成元，生成群的元素模1019同余)。这个算法可由以下
[C++](../Page/C++.md "wikilink") 程序实现。

``` cpp
 #include <stdio.h>

 const int n = 1018, N = n + 1;  /* N = 1019 -- 素数       */
 const int alpha = 2;            /* 生成元                 */
 const int beta = 5;             /* 2^{10} = 1024 = 5 (N) */

 void new_xab( int& x, int& a, int& b ) {
   switch( x%3 ) {
   case 0: x = x*x     % N;  a =  a*2  % n;  b =  b*2  % n;  break;
   case 1: x = x*alpha % N;  a = (a+1) % n;                  break;
   case 2: x = x*beta  % N;                  b = (b+1) % n;  break;
   }
 }

 int main(void) {
   int x=1, a=0, b=0;
   int X=x, A=a, B=b;
   for(int i = 1; i < n; ++i ) {
     new_xab( x, a, b );
     new_xab( X, A, B );
     new_xab( X, A, B );
     printf( "%3d  %4d %3d %3d  %4d %3d %3d\n", i, x, a, b, X, A, B );
     if( x == X ) break;
   }
   return 0;
 }
```

结果如下 (已截断):

` i     x   a   b     X   A   B`
`------------------------------`
` 1     2   1   0    10   1   1`
` 2    10   1   1   100   2   2`
` 3    20   2   1  1000   3   3`
` 4   100   2   2   425   8   6`
` 5   200   3   2   436  16  14`
` 6  1000   3   3   284  17  15`
` 7   981   4   3   986  17  17`
` 8   425   8   6   194  17  19`
`..............................`
`48   224 680 376    86 299 412`
`49   101 680 377   860 300 413`
`50   505 680 378   101 300 415`
`51  1010 681 378  1010 301 416`

可见 \(2^{681} 5^{378} = 1010 = 2^{301} 5^{416} \pmod{1019}\) 以及
\((416-378)\gamma = 681-301 \pmod{1018}\)。 正如预期，其中 \(\gamma_1=10\)
是一个解。由于 \(n=1018\) 不是素数，因此存在另一个解 \(\gamma_2=519\)，使得
\(2^{519} = 1014 = -5\pmod{1019}\) 成立。

## 复杂度

时间复杂度近似于 \(\mathcal{O}(\sqrt{n})\)。如果配合使用算法 [Pohlig-Hellman
algorithm](https://zh.wikipedia.org/wiki/Pohlig–Hellman_algorithm "wikilink")，则整体时间复杂度近似于
\(\mathcal{O}(\sqrt{p})\)， 其中 \(p\) 是 \(n\) 的最大质因数。

## 参考文献

  -
  -
[Category:Logarithms](https://zh.wikipedia.org/wiki/Category:Logarithms "wikilink")
[Category:Number_theoretic_algorithms](https://zh.wikipedia.org/wiki/Category:Number_theoretic_algorithms "wikilink")