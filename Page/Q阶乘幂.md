> 本文内容由[Q阶乘幂](https://zh.wikipedia.org/wiki/Q阶乘幂)转换而来。


**q阶乘幂**是[阶乘幂的](https://zh.wikipedia.org/wiki/阶乘幂 "wikilink")[Q-模拟](../Page/Q-模拟.md "wikilink")\[1\]。与阶乘幂在[广义超几何函数](../Page/广义超几何函数.md "wikilink")中的作用类似，q阶乘幂也是定义[基本超几何函数](../Page/基本超几何函数.md "wikilink")的基础。

## 定义

### *n*为正整数时

  -
    当*n*为正整数时,q阶乘幂定义为

\[(a;q)_n = \prod_{k=0}^{n-1} (1-aq^k)=(1-a)(1-aq)(1-aq^2)\cdots(1-aq^{n-1}),\]

### *n*为0时

  -
    当*n*为0时,q阶乘幂定义为

\[(a;q)_0 = 1.\]

### *n*为无穷大时

  -
    与一般的阶乘幂不同的是，q阶乘幂可以扩展成一个[无穷乘积](https://zh.wikipedia.org/wiki/无穷乘积 "wikilink")

\[(a;q)_\infty = \prod_{k=0}^{\infty} (1-aq^k),\]

  -
    这时它是一个关于q在[单位圆盘](../Page/单位圆盘.md "wikilink")内的[解析函数](../Page/解析函数.md "wikilink")，也可以考虑为一个关于q的[形式幂级数](../Page/形式幂级数.md "wikilink")。其中一个特殊情况

\[\phi(q) = (q;q)_\infty=\prod_{k=1}^\infty (1-q^k)\]

  -
    被称为[欧拉函数](../Page/歐拉函數_\(複變函數\).md "wikilink")。

### *n*为负数时

  -
    有限q阶乘幂可以用无穷q阶乘幂表示

\[(a;q)_n = \frac{(a;q)_\infty} {(aq^n;q)_\infty},\]

  -
    这样就能把q阶乘幂扩展到*n*为负整数的情况：对于非负整数*n*，有

\[(a;q)_{-n} = \frac{1}{(aq^{-n};q)_n}=\prod_{k=1}^n \frac{1}{(1-a/q^k)}\]

  -
    以及

\[(a;q)_{-n} = \frac{(-q/a)^n q^{n(n-1)/2}} {(q/a;q)_n}.\]

## 多变量的写法

因为很多关于q阶乘幂的等式都含有多个q阶乘幂相乘，因此在标准写法中用一个含有多个变量的q阶乘幂来表示这个乘积：

\[(a_1,a_2,\ldots,a_m;q)_n = (a_1;q)_n (a_2;q)_n \ldots (a_m;q)_n.\]

## 图集

<File:Qpochammer2.png>|\[(a;b)_2\] <File:Qpochammer3.png>|\[(a;b)_3\] <File:Qpochammer4.png>|\[(a;b)_4\] <File:Qpochammer5.png>|\[(a;b)_5\]

## 参考文献

<references/>

[Category:数论](https://zh.wikipedia.org/wiki/Category:数论 "wikilink")

1.  Exton, H. (1983), *q-Hypergeometric Functions and Applications*, New York: Halstead Press, Chichester: Ellis Horwood, 1983, ISBN 0853124914, ISBN 0470274530, ISBN 978-0470274538