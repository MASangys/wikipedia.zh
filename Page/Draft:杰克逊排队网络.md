在[排队论中](https://zh.wikipedia.org/wiki/排队论 "wikilink")（[运筹学的一支](https://zh.wikipedia.org/wiki/运筹学 "wikilink")），**杰克逊排队网络**（，亦作\[1\]）是一类排队网络模型，其均衡分布计算形式简单且网络具有积形式解。该模型已被推广，其定理的思想也被运用于寻找其他网络中类似的积形式解。\[2\][互联网发展中的一些思想亦源于该排队网络](../Page/互联网.md "wikilink")。\[3\]这一网络模型首先由提出。\[4\]\[5\]2004年，杰克逊的文章重载于《》，该刊将其誉为“[管理科学头](https://zh.wikipedia.org/wiki/管理科学 "wikilink")50年中最具影响力的十篇论文”之一。\[6\]

杰克逊受到了和赖克（）工作的启发。\[7\]但吉恩·华尔兰德（）指出“积形式解的结果……从柏克定理推过去不是很直接，并没有杰克逊本人在他那篇奠基性文章中所认为的那么直接”。\[8\]

在串联排队（有限数量的队列，顾客按先后顺序去每个队列等候）和环形排队网络（串联成环的若干队列，顾客按先后顺序去每个队列等候）中，更早就发现了一个积形式解。\[9\]

杰克逊网络包括一定数量的节点，每个节点表示一个队列，队列的服务率既可以是状态无关的（不同的节点有不同的服务率），也可以是状态相关的（服务率的变化与队长相关）。任务（）按照一个固定的路由矩阵（）在节点间转移。每个节点处的任务都属于单一的“类”（），任务都服从相同都服务时间分布和路由机制。因此，并没有引入任务服务的优先级：每个节点处的所有工作都以先到先得（）方式进行。

有限任务、闭合网络都杰克逊网络也有积形式解，该结论由Gordon–Newell定理阐明。\[10\]

## 杰克逊排队网络的必要条件

\(m\)个相连队列组成的网络被称作杰克逊网络，若它满足下述条件：\[11\]\[12\]

1.  若网络是开放的，任意往节点\(i\)的外部到达都是一个[泊松过程](../Page/泊松过程.md "wikilink")，
2.  服务时间呈指数分布，排队规则为先到先得（），
3.  队列\(i\)处的顾客服务结束后，以概率\(P_{ij}\)转移到新的队列\(j\)或以概率\(1-\sum_{j=1}^{m}P_{ij}\)离开队列；对于开放网络来说，离开概率对所有队列的某个子集是非零的，
4.  所有队列的利用率都小于1。

## 定理

\(m\)为[M/M/1模型的开放杰克逊网络](https://zh.wikipedia.org/wiki/M/M/1 "wikilink")，其中利用率（）\(\rho_i\)对每个队列都小于1，平衡状态概率分布存在，且对状态\(\scriptstyle{(k_1,k_2,\ldots,k_m)}\)，平衡状态（）概率分布由每个队列的平衡分布之积给出：

\[\pi (k_1,k_2,\ldots,k_m) = \prod_{i=1}^{m} \pi_i(k_i) = \prod_{i=1}^{m} [\rho_i^{k_i} (1-\rho_i)].\]

结果\(\pi (k_1,k_2,\ldots,k_m) = \prod_{i=1}^{m} \pi_i(k_i)\)对[M/M/c服务站](https://zh.wikipedia.org/wiki/M/M/c "wikilink")（）也成立，其中第\(i\)个节点的服务台（）数为\(c_i\)，利用率满足\(\rho_i < c_i\)。

## 定义

在一个开放网络中，顾客自系统外部以泊松流方式到达，到达率为\(\alpha>0\)。每个往节点*j*的到达是相互独立的，有概率
\(p_{0j}\ge0\)且满足\(\sum_{j=1}^J p_{0j}=1\)。当节点*i* 处的服务完成时，顾客会以概率\(p_{ij}\)进入另一节点或者以\(p_{i0}=1-\sum_{j=1}^J p_{ij}\)的概率离开网络。

Hence we have the overall arrival rate to node i,  \(\), including both
external arrivals and internal transitions:

  -
    \(\)

\(\) in the above.)

定义 \(\)\(\)是可解的。

All jobs leave each node also following Poisson process, and define
\(\) \(\) jobs at node i.

Let \(\)\(\)\(\), \(\)is determined by the following system of balance
equations:

  -
    \(\)

其中 \(\) 表示 \(\)。

### 定理

设独立随机向量 \(\) ，每个\(\)

  -
    \(\)

其中 \(\)。当 \(\) 即 \(\) 有很好的定义时，开放杰克逊网络的平衡分布有如下的积形式：

  -
    \(\)

对所有的\(\)

This theorem extends the one shown above by allowing state-dependent
service rate of each node. It relates the distribution of  \(\) \(\)

### 例

[缩略图](https://zh.wikipedia.org/wiki/File:Open_jackson_network_\(final\).png "fig:缩略图")
设图中有一三节点的杰克逊网络，系数分别是：

\[\alpha=5, \quad
p_{01}=p_{02}=0.5, \quad p_{03}=0,\quad\]

\[P=\begin{bmatrix}
0 & 0.5 & 0.5\\
0 & 0 & 0 \\
0 & 0 & 0\end{bmatrix},
\quad
\mu=\begin{bmatrix}
\mu_1(x_1)\\
\mu_2(x_2)\\
\mu_3(x_3)\end{bmatrix}
=\begin{bmatrix}
15\\
12\\
10\end{bmatrix}
\text{ for all }x_i>0\]

通过定理，可以计算：

  -
    <math>\\lambda=(I-P^T)^{-1}a=\\begin{bmatrix}

1 & 0 & 0\\\\ -0.5 & 1 & 0 \\\\ -0.5 & 0 &
1\\end{bmatrix}^{-1}\\begin{bmatrix} 0.5\\times5\\\\ 0.5\\times5\\\\ 0
\\end{bmatrix}=\\begin{bmatrix} 1&0&0\\\\ 0.5&1&0\\\\
0.5&0&1\\end{bmatrix}\\begin{bmatrix} 2.5\\\\ 2.5\\\\
0\\end{bmatrix}=\\begin{bmatrix} 2.5\\\\ 3.75\\\\ 1.25\\end{bmatrix}
</math>

根据\(\)我们有：

\[P(Y_1=0)=\left(\sum_{n=0}^\infty \left(\frac{2.5}{15}\right)^n\right)^{-1}=\frac{5}{6}\]

\[P(Y_2=0)=\left(\sum_{n=0}^\infty \left(\frac{3.75}{12}\right)^n\right)^{-1}=\frac{11}{16}\]

\[P(Y_3=0)=\left(\sum_{n=0}^\infty \left(\frac{1.25}{10}\right)^n\right)^{-1}=\frac{7}{8}\]

因此，每个节点处有一个服务的概率是：

\[\pi(1,1,1)=\frac{5}{6}\cdot\frac{2.5}{15}\cdot\frac{11}{16}\cdot\frac{3.75}{12}\cdot\frac{7}{8}\cdot\frac{1.25}{10}\approx 0.00326\]

由于这里的服务率是状态无关的，\(Y_i\)各项服从简单的[几何分布](../Page/幾何分佈.md "wikilink")。

## 杰克逊网络的推广

A generalized Jackson network allows renewal arrival processes that need
not be Poisson processes, and independent, identically distributed
non-exponential service times. In general, this network does not have a
product-form stationary distribution, so approximations are sought.
\[13\]

### 布朗近似

在一些平和的条件下，开放的推广杰克逊网络的队长过程\(\)Q(t)\(\)可以用近似，定义为\(RBM_{Q(0)}(\theta,\Gamma;R)\)，其中\(\theta\)是过程的漂移（），\(\Gamma\)是协方差矩阵，\(R\)是反射矩阵。这一二阶近似是从均质流体（）的推广杰克逊网络和反射布朗运动间的关系得到的。

反射布朗过程的参数如下所述：

\[\theta= \alpha -(I-P^T)\mu\]

\[\Gamma=(\Gamma_{kl})\]有\(\Gamma_{kl}=\sum_{j=1}^J (\lambda_j \wedge \mu_j)[p_{jk}(\delta_{kl}-p_{jl})+c_j^2(p_{jk}-\delta_{jk})(p_{jl}-\delta_{jl})]+\alpha_k c_{0,k}^2 \delta_{kl}\)

\[R=I-P^T\]

其中符号的定义：

| 符号                            | 含义                                                                                                                                                                                                                                     |
| ----------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| \(\alpha=(\alpha_j)_{j=1}^J\) | J维向量，每个节点的到达率                                                                                                                                                                                                                          |
| \(\mu=(\mu)_{j=1}^J\)         | J维向量，每个节点的服务率                                                                                                                                                                                                                          |
| \(P\)                         | 转移矩阵                                                                                                                                                                                                                                   |
| \(\lambda_j\)                 | 第j个节点的有效到达                                                                                                                                                                                                                             |
| \(c_j\)                       | 第j个节点服务时间的变异系数                                                                                                                                                                                                                         |
| \(c_{0,j}\)                   | 第j个节点服务台间转移到达时间的变异系数                                                                                                                                                                                                                   |
| \(\delta_{ij}\)               | 反映节点间关系的系数 它们是这样定义的：令\(A(t)\)为系统的到达过程，则在分布中有\(A(t)-\alpha t {}\approx \hat{A}(t)\)，其中\(\hat{A}(t)\)是一个无漂移（）的布朗过程，其协方差矩阵为\(\Gamma^0=(\Gamma^0_{ij})\)，满足对所有的\(i,j\in \{1,\dots,J\}\)都有\(\Gamma^0_{ij}=\alpha_i c_{0,i}^2 \delta_{ij}\)。 |

近似公式中符号的定义

## 参见

  - Gordon–Newell网络
  - BCMP网络
  - G-网络
  - [Little法则](https://zh.wikipedia.org/wiki/利特爾法則 "wikilink")

## 参考文献

[Category:等候理論](https://zh.wikipedia.org/wiki/Category:等候理論 "wikilink")

1.
2.
3.
4.   A version from January 1963 is available at
    <http://www.dtic.mil/dtic/tr/fulltext/u2/296776.pdf>
5.
6.
7.
8.
9.
10.
11.
12.
13.