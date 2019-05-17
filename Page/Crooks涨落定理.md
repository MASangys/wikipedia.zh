**Crooks涨落定理**（或称Crooks方程）\[1\]是一个[统计力学中的关系](../Page/统计力学.md "wikilink")，讲的是在一个非平衡过程中（保持系统体积不变并与[热库接触](https://zh.wikipedia.org/wiki/热库 "wikilink")），初态末态[自由能之差与在此过程中对系统做功的关系](https://zh.wikipedia.org/wiki/自由能 "wikilink")，由化学家[Gavin
E.
Crooks](https://zh.wikipedia.org/wiki/:en:Gavin_E._Crooks "wikilink")（当时在加州大学）于1998年提出。

具体而言，涨落定理讲的是，考虑态空间中一条轨迹\(x(t)\)，其时间反演轨迹记为\(\tilde{x}(t)\)，那么，如果这个系统的演化满足[微观可逆性](https://zh.wikipedia.org/wiki/微观可逆性 "wikilink")（[microscopic
reversibility](https://zh.wikipedia.org/wiki/:en:microscopic_reversibility "wikilink")），则正向轨迹与反演轨迹出现的几率为：

\[\frac{P[x(t)]}{\tilde{P}[\tilde{x}(t)]} = e^{\sigma[x(t)]}\].

\(\sigma[x(t)]\)是熵产生。

考虑非平衡系统中的一个演化过程，以参数\(\lambda\)来标记，\(\lambda = 0\) 和
\(\lambda = 1\)分别对应于初态和末态（分别是两个由微观态构成的统计综），从\(\lambda = 0\)到\(\lambda = 1\)的演化过程被称作“正向”演化，其时间反演路径被称作“逆向”演化。Crooks方程讨论的是以下几个物理量之间的关系：

  - \(P(A \rightarrow B)\)：指的是初态（即\(\lambda = 0\)）系统处于微观态\(A\)，且通过“正向”演化在末态（\(\lambda = 1\)）到达微观态\(B\)的联合几率
  - \(P(A \leftarrow B)\)：指的是系统在末态（\(\lambda = 1\)）处于微观态\(B\)，且通过“逆向”演化在初态（\(\lambda = 0\)）到达微观态\(A\)的联合几率
  - <math>\\beta = (k_B

T)^{-1}</math>，这里\(k_B\)是[Boltzmann常数](https://zh.wikipedia.org/wiki/玻尔兹曼常数 "wikilink")，\(T\)是热库的温度

  - \(W_{AB}\)，指的是在正向演化过程中(从\(A\)到\(B\))对系统做的功
  - \(\Delta F = F(B) - F(A)\)，指的是微观态\(A\)和\(B\)的[Helmholtz自由能之差](https://zh.wikipedia.org/wiki/亥姆霍兹自由能 "wikilink")。

这样Crooks涨落定理就写为：

\[\frac{P(A \rightarrow B)}
{P( A \leftarrow B)} = \exp [ \beta ( W_{A \rightarrow B} - \Delta F
)].\]

在上面的方程中，\(W_{A \rightarrow B} - \Delta F\)表示在正向演化中的耗散功\(W_d\)。若演化过程无穷缓慢，则正反向的几率\(P(A \rightarrow B)\)与\(P(A \leftarrow B)\)相等，这也就回归到平衡热力学的变换，这时\(W_{A \rightarrow B} = \Delta F\)，而耗散功为零\(W_d\)
= 0。

在时间反演变换下，我们总有\(W_{A \rightarrow B} = -W_{A \leftarrow B}\)，于是我们可以把所有能给出相同大小的功的路径加和在一起，上面的关系就可以写为做功大小的几率分布：

\[P_{A \rightarrow B} (W) = P_{A
\leftarrow B}(- W) ~ \exp[\beta (W - \Delta F)].\]

注意到逆向演化的过程中的做功带着一个负号。于是正向和反向做功的分布函数会在\(W=\Delta F\)处相交，这种现象已经在用[光镊折叠](https://zh.wikipedia.org/wiki/光镊 "wikilink")[RNA的实验中得到验证](https://zh.wikipedia.org/wiki/RNA "wikilink")\[2\]。

Crooks涨落关系还可以推导出[Jarzynski恒等式](https://zh.wikipedia.org/wiki/Jarzynski恒等式 "wikilink").

## 參考資料

[Category:非平衡態熱力學](https://zh.wikipedia.org/wiki/Category:非平衡態熱力學 "wikilink")

1.  G. Crooks, "Entropy production fluctuation theorem and the
    nonequilibrium work relation for free energy differences", *Physical
    Review E*, 60, 2721 (1999)
2.