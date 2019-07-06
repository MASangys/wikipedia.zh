**Meijer
G-函数**是荷兰数学家[梅耶尔引入的一种](../Page/科内利斯·西蒙·梅耶尔.md "wikilink")[特殊函数](https://zh.wikipedia.org/wiki/特殊函数 "wikilink")。它是[广义超几何函数的推广](../Page/广义超几何函数.md "wikilink")，绝大多数的特殊函数都可以用
Meijer -函数表示出来。

## 定义

广义超几何函数有下列一般的积分表达式（参见[相关小节](https://zh.wikipedia.org/wiki/广义超几何函数#积分表达式 "wikilink")）：

\[\left(\prod_{k=1}^p\Gamma(a_k)\right/\left.\prod_{k=1}^q\Gamma(b_k)\right)\,{}_pF_q\left[
\begin{matrix}a_1&a_2&\ldots&a_p\\b_1&b_2&\ldots&b_q\end{matrix};z\right]=\frac 1{2\pi i}\int_C
\left(\prod_{k=1}^p\Gamma(a_k+s)\right/\left.\prod_{k=1}^q\Gamma(b_k+s)\right)\Gamma(-s)(-z)^s\mathrm ds\]

其中积分路径  视参数 ,  的相对大小而定。上面的积分表达式具有 [Mellin
逆变换的形式](https://zh.wikipedia.org/wiki/Mellin_变换 "wikilink")。

Meijer- 函数是上面积分表达式的一个推广，它的定义为：

\[G^{m,n}_{p,q}\left[
\begin{matrix}a_1&a_2&\ldots&a_p\\b_1&b_2&\ldots&b_q\end{matrix};z\right]=\frac 1{2\pi i}\int_C
z^s\left.\left(\prod_{k=1}^n\Gamma(1-a_k+s)\right/\left.\prod_{k=m+1}^q\Gamma(1-b_k+s)\right)\right/
\left(\prod_{k=n+1}^p\Gamma(a_k-s)\right/\left.\prod_{k=1}^m\Gamma(b_k-s)\right)\mathrm ds\]

其中积分路径  视参数的相对大小而定\[1\]。但是，为了保证至少一条积分路径有定义，要求

\[a_k-b_l\notin \mathbb Z^+,\quad \forall k=1,2,\dots, n; l=1,2,\dots, m\]

在书写 Meijer- 函数时要注意，上标中的第一个参数和下标中的第二个参数对应的是
<sub></sub>，而上标中的第二个参数和下标中的第一个参数对应的是
<sub></sub>。

对比上述两式可以得到广义超几何函数和 Meijer- 函数的关系：

\[\begin{array}{cl}&\frac{\prod_{k=1}^p\Gamma(a_k)}{\prod_{k=1}^q\Gamma(b_k)}\,{}_pF_q\left[
\begin{matrix}a_1&a_2&\ldots&a_p\\b_1&b_2&\ldots&b_q\end{matrix};z\right]\\
=&G^{1,p}_{p,q+1}\left[
\begin{matrix}1-a_1&1-a_2&\ldots&1-a_p\\0&1-b_1&\ldots&1-b_q\end{matrix};-z\right]\\
=&G^{p,1}_{q+1,p}\left[
\begin{matrix}1&b_1&\ldots&b_q\\a_1&a_2&\ldots&a_p\end{matrix};-\frac 1z\right]\end{array}\]

## 基本性质

和广义超几何函数一样，如果上下两个向量组在合适的位置有相同的元素，则 Meijer- 函数可以降阶，此处不再赘述。

### 一般关系式

Meijer- 函数的[导函数具有下列性质](https://zh.wikipedia.org/wiki/导函数 "wikilink")：

\[z^h \frac{\mathrm d^h}{\mathrm dz^h} \; G_{p,q}^{\,m,n} \!\left( \left. \begin{matrix} \mathbf{a_p} \\ \mathbf{b_q} \end{matrix} \; \right| \, z \right) =
G_{p+1,\,q+1}^{\,m,\,n+1} \!\left( \left. \begin{matrix} 0, \mathbf{a_p} \\ \mathbf{b_q}, h \end{matrix} \; \right| \, z \right) =
(-1)^h \; G_{p+1,\,q+1}^{\,m+1,\,n} \!\left( \left. \begin{matrix} \mathbf{a_p}, 0 \\ h, \mathbf{b_q} \end{matrix} \; \right| \, z \right),\]

注意  可以取任意整数值，取负数时表示[不定积分](../Page/不定积分.md "wikilink")。

另一方面，

\[z^{\rho} \; G_{p,q}^{\,m,n} \!\left( \left. \begin{matrix} \mathbf{a_p} \\ \mathbf{b_q} \end{matrix} \; \right| \, z \right) =
G_{p,q}^{\,m,n} \!\left( \left. \begin{matrix} \mathbf{a_p} + \rho \\ \mathbf{b_q} + \rho \end{matrix} \; \right| \, z \right),\]

\[G_{p,q}^{\,m,n} \!\left( \left. \begin{matrix} \mathbf{a_p} \\ \mathbf{b_q} \end{matrix} \; \right| \, z \right) =
G_{q,p}^{\,n,m} \!\left( \left. \begin{matrix} 1-\mathbf{b_q} \\ 1-\mathbf{a_p} \end{matrix} \; \right| \, z^{-1} \right),\]

\[\left(z \frac{\mathrm d}{\mathrm dz}-a_1+1\right) \; G_{p,q}^{\,m,n} \!\left( \left. \begin{matrix} \mathbf{a_p} \\ \mathbf{b_q} \end{matrix} \; \right| \, z \right) =
G_{p,q}^{\,m,n} \!\left( \left. \begin{matrix} a_1 -1, a_2, \dots, a_p \\ \mathbf{b_q} \end{matrix} \; \right| \, z \right)\quad n \geq 1.\]

\[\left(a_p-z \frac{\mathrm d}{\mathrm dz}-1\right) \; G_{p,q}^{\,m,n} \!\left( \left. \begin{matrix} \mathbf{a_p} \\ \mathbf{b_q} \end{matrix} \; \right| \, z \right) =
G_{p,q}^{\,m,n} \!\left( \left. \begin{matrix} a_1 , a_2, \dots, a_p-1 \\ \mathbf{b_q} \end{matrix} \; \right| \, z \right)\quad n \leq p-1.\]

\[\left(z \frac{\mathrm d}{\mathrm dz}-b_q\right) \; G_{p,q}^{\,m,n} \!\left( \left. \begin{matrix} \mathbf{a_p} \\ \mathbf{b_q} \end{matrix} \; \right| \, z \right) =
G_{p,q}^{\,m,n} \!\left( \left. \begin{matrix} \mathbf{a_p} \\ b_1, b_2, \dots, b_q+1 \end{matrix} \; \right| \, z \right)\quad m \leq q-1.\]

\[\left(b_1-z \frac{\mathrm d}{\mathrm dz}\right) \; G_{p,q}^{\,m,n} \!\left( \left. \begin{matrix} \mathbf{a_p} \\ \mathbf{b_q} \end{matrix} \; \right| \, z \right) =
G_{p,q}^{\,m,n} \!\left( \left. \begin{matrix} \mathbf{a_p} \\ b_1+1, b_2, \dots, b_q \end{matrix} \; \right| \, z \right)\quad m\geq 1.\]
上面的式子都可以直接由定义得到。

### 向量组中两个元素相差整数时的关系式

由

\[\frac{\Gamma(1-u+s)}{\Gamma(1-v+s)}=(-1)^{u-v}\frac{\Gamma(v-s)}{\Gamma(u-s)},\quad u-v\in\mathbb Z\]

又有

\[G_{p+2,\,q}^{\,m,\,n+1} \!\left( \left. \begin{matrix} \alpha, \mathbf{a_p}, \alpha' \\ \mathbf{b_q} \end{matrix} \; \right| \, z  \right) =
(-1)^{\alpha'-\alpha} \; G_{p+2,\,q}^{\,m,\,n+1} \!\left( \left. \begin{matrix} \alpha', \mathbf{a_p}, \alpha \\ \mathbf{b_q} \end{matrix} \; \right| \, z \right), \quad n \leq p, \; \alpha'-\alpha \in \mathbb{Z},\]

\[G_{p,\,q+2}^{\,m+1,\,n} \!\left( \left. \begin{matrix} \mathbf{a_p} \\ \beta, \mathbf{b_q}, \beta' \end{matrix} \; \right| \, z \right) =
(-1)^{\beta'-\beta} \; G_{p,\,q+2}^{\,m+1,\,n} \!\left( \left. \begin{matrix} \mathbf{a_p} \\ \beta', \mathbf{b_q}, \beta \end{matrix} \; \right| \, z \right), \quad m \leq q, \; \beta'-\beta \in \mathbb{Z},\]

\[G_{p+1,\,q+1}^{\,m,\,n+1} \!\left( \left. \begin{matrix} \alpha, \mathbf{a_p} \\ \mathbf{b_q}, \beta \end{matrix} \; \right| \, z \right) =
(-1)^{\beta-\alpha} \; G_{p+1,\,q+1}^{\,m+1,\,n} \!\left( \left. \begin{matrix} \mathbf{a_p}, \alpha \\ \beta, \mathbf{b_q} \end{matrix} \; \right| \, z \right), \quad m \leq q, \; \beta-\alpha = 0,1,2,\dots,\]

## 微分方程

由上面[一般关系式一节的讨论知](https://zh.wikipedia.org/wiki/#一般关系式 "wikilink")
Meijer- 函数满足下列微分方程，它与广义超几何函数满足的微分方程形式上很类似。

\[\left[(-1)^{p-m-n}z\prod_{k=1}^{p}\left(z\frac{{\rm{d}}}{{\rm{d}}z} - a_k+1\right)
- \prod_{k=1}^{q}\left(z\frac{{\rm{d}}}{{\rm{d}}z} - b_k\right)\right]w=0,
\quad w(z)=G_{p,q}^{m,n}\left[ \begin{array}{c} a_1,\dots,a_p \\ b_1,\dots,b_q\end{array} ;z\right]\].

这是一个 max(,) 阶的线性微分方程，在 =0 附近的基本解组可以选取为

\[\begin{cases}
G_{p,q}^{\,1,p} \!\left( \left. \begin{matrix} a_1, \dots, a_p \\ b_h, b_1, \dots, b_{h-1}, b_{h+1}, \dots, b_q \end{matrix} \; \right| \, (-1)^{p-m-n+1} \;z \right), \quad h = 1,2,\dots,q,&\text{ if } p\leqslant q\\
G_{p,q}^{\,q,1} \!\left( \left. \begin{matrix} a_h, a_1, \dots, a_{h-1}, a_{h+1}, \dots, a_p \\ b_1, \dots, b_q \end{matrix} \; \right| \, (-1)^{q-m-n+1} \;z \right), \quad h = 1,2,\dots,p,&\text{ if } p\geqslant q\end{cases}\]

当 = 时两种取法都可以。

从 ,  的取值上就可以看到它们跟广义超几何函数有直接的联系。事实上的确如此，以第一种情况为例，

\[G_{p,q}^{\,1,p} \!\left( \left. \begin{matrix} a_1, \dots, a_p \\ b_h, b_1, \dots, b_{h-1}, b_{h+1}, \dots, b_q \end{matrix} \; \right| \, (-1)^{p-m-n+1} \;z \right)=z^{b_h} G_{p,q}^{\,1,p} \!\left( \left. \begin{matrix} a_1-b_h, \dots, a_p-b_h \\ 0, b_1-b_h, \dots, b_{h-1}-b_h, b_{h+1}-b_h, \dots, b_q \end{matrix} \; \right| \, (-1)^{p-m-n+1} \;z \right)\]

等号右边的 Meijer- 函数显然就是广义超几何函数。

## 特殊情形

因为广义超几何函数是 Meijer- 函数的特殊情形，故所有可以用广义超几何函数表示的特殊函数都可以用 Meijer-
函数表示，但是，在个别情况下，用 Meijer-
函数有更简单的表示式，例子如[诺依曼函数](https://zh.wikipedia.org/wiki/诺依曼函数 "wikilink")，它可以用超几何函数<sub>0</sub>F<sub>1</sub>表示，但表示式仅仅是将（第一类）贝塞尔函数的超几何函数表示式代入其定义式中，因此含有两个超几何函数。而用
Meijer- 函数就可以直接表示为：

\[Y_\nu (z) = G_{1,3}^{\,2,0} \!\left( \left. \begin{matrix} \frac{- \nu - 1}{2} \\ \frac{\nu}{2}, \frac{-\nu}{2}, \frac{- \nu - 1}{2} \end{matrix} \; \right| \, \frac{z^2}{4} \right), \qquad \frac{-\pi}{2} < \arg z \leq \frac{\pi}{2}\]

另外一个例子是不完全伽玛函数对参变量的偏导数，它无法用广义超几何函数表出，但可以用 Meijer- 函数表出：

\[\frac{\partial \Gamma (a,z) }{\partial a} = \Gamma (a,z)\ln z + \,G_{2,\,3}^{\,3,\,0} \!\left( \left. \begin{matrix} 1, 1 \\ a, 0, 0 \end{matrix} \; \right| \, z \right)\]

事实上，不完全伽玛函数对参变量的高阶偏导数也可以用 Meijer-
函数表出，详见[不完全Γ函数一文](https://zh.wikipedia.org/wiki/不完全Γ函数 "wikilink")。

## 注

<references group=注 />

## 参考文献

  -
  -
  - (see Chapter V, "The Generalized Hypergeometric Function and the
    G-Function", p. 136)

  -
## 外部链接

  -
[Category:超几何函数](https://zh.wikipedia.org/wiki/Category:超几何函数 "wikilink")

1.  具体可参见[DLMF上的图](http://dlmf.nist.gov/16.17)