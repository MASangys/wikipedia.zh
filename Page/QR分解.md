**QR分解法**是三種将[矩阵分解的方式之一](https://zh.wikipedia.org/wiki/矩阵分解 "wikilink")。這種方式，把[矩阵](../Page/矩阵.md "wikilink")分解成一个[正交矩阵](../Page/正交矩阵.md "wikilink")与一个[上三角矩阵的积](https://zh.wikipedia.org/wiki/上三角矩阵 "wikilink")。QR分解经常用来解[线性最小二乘法问题](https://zh.wikipedia.org/wiki/线性最小二乘法 "wikilink")。QR分解也是特定[特征值算法即](https://zh.wikipedia.org/wiki/特征值算法 "wikilink")[QR算法的基础](https://zh.wikipedia.org/wiki/QR算法 "wikilink")。

## 定义

实数矩阵*A*的**QR分解**是把*A*分解为

  -
    \(A = QR, \,\)

这里的*Q*是[正交矩阵](../Page/正交矩阵.md "wikilink")（意味着*Q*<sup>T</sup>*Q* = *I*）而*R*是上[三角矩阵](../Page/三角矩阵.md "wikilink")。类似的，我们可以定义A的QL, RQ和LQ分解。

更一般的说，我们可以因数分解复数\(m\)×\(n\)矩阵（有着*m* ≥ *n*）为\(m\)×\(m\) [幺正矩阵](https://zh.wikipedia.org/wiki/幺正矩阵 "wikilink")（在*Q*<sup>∗</sup>*Q* = *I*的意义上）和\(m\)×\(n\)上三角矩阵的乘积。

如果*A*是[非奇异的](https://zh.wikipedia.org/wiki/可逆矩阵 "wikilink")，且限定*R* 的对角线元素为正，则这个因数分解是唯一的。

## QR分解的求法

QR分解的实际计算有很多方法，例如[Givens旋转](https://zh.wikipedia.org/wiki/Givens旋转 "wikilink")、[Householder变换](https://zh.wikipedia.org/wiki/Householder变换 "wikilink")，以及[Gram-Schmidt正交化等等](https://zh.wikipedia.org/wiki/Gram-Schmidt正交化 "wikilink")。每一种方法都有其优点和不足。

### 使用Householder变换

[Householder变换将一个向量关于某个](https://zh.wikipedia.org/wiki/Householder变换 "wikilink")[平面](../Page/平面.md "wikilink")或者[超平面进行反射](https://zh.wikipedia.org/wiki/超平面 "wikilink")。我们可以利用这个操作对\(m \times n ( m \geqq n)\)的矩阵\(A\)进行QR分解。

矩阵\(Q\)可以被用于对一个向量以一种特定的方式进行反射变换，使得它除了一个维度以外的其他所有分量都化为0。

令\(\mathbf{x}\)为矩阵\(A\)的任一*m*维实列向量，且有\(\|\mathbf{x}\| = |\alpha|\)（其中\(\alpha\)为标量）。若该算法是通过[浮点数](../Page/浮点数.md "wikilink")实现的，则\(\alpha\)应当取和\(\mathbf{x}\)的第\(k\)维相反的符号（其中\(x_k\)是要保留不为0的项），这样做可以避免精度缺失。对于复数的情况，令

\[\alpha = - \mathrm{e}^{\mathrm{i} \arg x_k} \|\mathbf{x}\|\] ，并且在接下来矩阵\(Q\)的构造中要将矩阵转置替换为共轭转置。

接下来，设\(\mathbf{e}_1\)为单位向量\((1, 0, \cdots, 0)^T\)，||·||为[欧几里的范数](https://zh.wikipedia.org/wiki/范数#.E6.AC.A7.E5.87.A0.E9.87.8C.E5.BE.B7.E8.8C.83.E6.95.B0 "wikilink")，\(I\)为\(m \times m\)单位矩阵，令

  -
    \(\mathbf{u} = \mathbf{x} - \alpha\mathbf{e}_1,\)
    \(\mathbf{v} = {\mathbf{u}\over\|\mathbf{u}\|},\)
    \(Q = I - 2 \mathbf{v}\mathbf{v}^T.\)

或者，若\(A\)为复矩阵，则

  -
    \(Q = I - (1+w)\mathbf{v}\mathbf{v}^H\)，其中\(w = \mathbf{x}^H\mathbf{v}\mathbf{/}\mathbf{v}^H\mathbf{x}\)
    式中\(\mathbf{x}^H\)是\(x\)的[共轭转置](../Page/共轭转置.md "wikilink")（亦称**埃尔米特共轭**或**埃尔米特转置**）。

则\(Q\)为一个\(m \times m\)的Householder矩阵，它满足

  -
    \(Q\mathbf{x} = (\alpha, 0, \cdots, 0)^T.\,\)

利用Householder矩阵，可以将一个\(m \times n\)的矩阵\(A'\)变换为上三角矩阵。 首先，我们将A左乘通过选取矩阵的第一行得到行向量\(x\)的Householder矩阵\(Q_1\)。这样，我们得到的矩阵\(Q_1 A\)的第一列将全部为0（第一行除外）：

\[Q_1A = \begin{bmatrix}
                   \alpha_1&\star&\dots&\star\\
                      0    &     &    &    \\
                   \vdots  &     &  A' &    \\
                      0    &     &     & \end{bmatrix}\]

这个过程对于矩阵\(A'\)（即\(Q_1 A\)排除第一行和第一列之后剩下的方阵）还可以继续做下去，从而得到另一个Householder矩阵\(Q_2\)。注意到\(Q_2\)其实比\(Q_1\)要小，因为它是在\(Q_1 A\)而非\(A\)的基础上得到的。因此，我们需要在\(Q_2\)的左上角补上1，或者，更一般地来说：

\[Q_k = \begin{pmatrix}
                  I_{k-1} & 0\\
                   0  & Q_k'\end{pmatrix}.\]

将这个迭代过程进行\(t\)次之后（\(t = \min(m-1, n)\)）,将有

\[R = Q_t \cdots Q_2Q_1A\] 其中R为一个上三角矩阵。因此，令

\[Q = Q_1^T Q_2^T \cdots Q_t^T,\] 则\(A = QR\)为矩阵\(A\)的一个QR分解。

相比与Gram-Schmidt正交化，使用Householder变换具有更好的[数值稳定性](../Page/数值稳定性.md "wikilink")。

## Matlab

MATLAB以qr函数来执行QR分解法，其语法为

  -
    \[Q,R\]=qr(A)

<!-- end list -->

  -
    其中Q代表正规正交矩阵，
    而R代表上三角形矩阵。

此外，原矩阵A不必为正方矩阵； 如果矩阵A大小为m\*n，则矩阵Q大小为m\*m，矩阵R大小为m\*n。

[Category:矩阵分解](https://zh.wikipedia.org/wiki/Category:矩阵分解 "wikilink")