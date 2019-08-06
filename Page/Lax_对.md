**Lax 对**定义。一个非线性偏微分方程

\(F(x,t,u,\dots)=0\)

的Lax 对 是一对线性微分[算子](../Page/算子.md "wikilink")\[1\]

\(L=L(u,\lambda)\)

\(M=M(u,\lambda)\)

\([L,M] =LM-ML\) 是交换子。

如果 \(F(x,t,u,\dots)=0\)可以表示为 Lax 方程：

L_t+\[L,M\]=0,且 \(L \phi=\lambda(t) \phi\),则 \(\lambda_t=0\),并且 \(\phi\) 满足

\(\phi_t=M\phi\)

## 高维Lax对

1972年V.E.Zakharov,A.B.Shabat,将Lax对推广到高维\[2\]

对于两个 线性方程 \(\phi_x=A\phi,\phi_t=B\phi\)

其中A、B是 n x n 维矩阵; 或者更一般地，A和B可以是李代数g的元素; g可以是无限维的，参见 例如 \[3\]及其中的参考文献 。

定义 \(A_t-B_x+[A,B]=0\) 为两个 线性方程 \(\phi_x=A\phi,\phi_t=B\phi\)的**相容条件**。

## 实例

  - KdV 方程 的Lax对为

\(L=\frac{\partial^2}{\partial x^2}+u\)

\(M=-4\frac{\partial^3}{\partial x^3}+6 u \frac{\partial}{\partial x}+3\frac{\partial u}{\partial x}\)

  - 非线性薛定谔方程

\(\mathbf{A} =i\lambda \begin{bmatrix}1 & 0 \\0 & -1 \end{bmatrix}\)+\(i \begin{bmatrix}0 & q \\r & 0 \end{bmatrix}\)

\(\mathbf{B} =2i\lambda^2 \begin{bmatrix}1 & 0 \\0 & -1 \end{bmatrix}\)+\(2i\lambda \begin{bmatrix}0 & Q \\R & 0 \end{bmatrix}\)+ \(\begin{bmatrix}0 & q_x\\-r_x & 0 \end{bmatrix}\)-\(i \begin{bmatrix}rq & 0 \\0 & -rq \end{bmatrix}\)

  - sine-Gordon方程

\(\mathbf{A} =i\lambda \begin{bmatrix}1 & 0 \\0 & -1 \end{bmatrix}\)+\(i \begin{bmatrix}0 & q \\r & 0 \end{bmatrix}\)

\(\mathbf{B} =\frac{1}{4i\lambda} \begin{bmatrix}\cos u & -i\sin u \\i\sin u & -\cos u \end{bmatrix}\)

  - Sinh-Gordon方程

\(\mathbf{A} =i\lambda \begin{bmatrix}1 & 0 \\0 & -1 \end{bmatrix}\)+\(i \begin{bmatrix}0 & q \\r & 0 \end{bmatrix}\)

\(\mathbf{B} =\frac{1}{4i\lambda} \begin{bmatrix}coshu & -isinhu \\-isinhu & -coshu \end{bmatrix}\)

  - KdV 方程

\(\mathbf{A} = \begin{bmatrix}i \lambda & 1 \\u & -i \lambda \end{bmatrix}\)

\(\mathbf{B} = \begin{bmatrix}4 i \lambda^3+2i\lambda u-u_x & 4 \lambda^2+2u \\4 \lambda^2   u+2i\lambda u_x+2u^2-u_{xx}+2 u^3 & 4 i \lambda^3+2i \lambda u^2 \end{bmatrix}\)

  - mKdV方程

\(\mathbf{A} =\begin{bmatrix}-i \lambda & u \\u & i \lambda \end{bmatrix}\)

\(\mathbf{B} = \begin{bmatrix}-4i \lambda^3-2i \lambda u^2 & 4 \lambda^2 u+2i \lambda  u_x-u_{xx}+2u^3 \\4\lambda^2u-2i \lambda u_x-u_{xx}+2u^2 & 4i \lambda^3+2i\lambda  u^2 \end{bmatrix}\)

  - 切触Lax对\[4\]

## 参考文献

<references/>

  - Inna Shingareva, Carlos Lizarraga-Celaya, Solving Nonlinear Partial Differential Equations with Maple and Mathematica, Springer Wien New York

[Category:非线性偏微分方程](https://zh.wikipedia.org/wiki/Category:非线性偏微分方程 "wikilink")

1.  Inna p217

2.  Inna p218

3.  Sergyeyev A. "New integrable (3+1)-dimensional systems and contact geometry", Lett. Math. Phys. 108 (2018), no. 2, 359-376,

4.