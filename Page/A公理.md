> 本文内容由[A公理](https://zh.wikipedia.org/wiki/A公理)转换而来。


在数学中，**斯梅尔A公理**（Smale's axiom A）确定了一类相对容易理解的[动力系统](../Page/动力系统.md "wikilink")。一个著名的例子是[斯梅尔马蹄铁映射](../Page/马蹄映射.md "wikilink")。术语“A公理”是[斯蒂芬·斯梅尔起的](../Page/斯蒂芬·斯梅爾.md "wikilink")。

## 定义

设M是[光滑流形](../Page/微分流形.md "wikilink")，\(f:M\to M\)是M到自身的[微分同胚](../Page/微分同胚.md "wikilink")。以下两个条件合在一起称为A公理：

1.  \(f\)的[非游荡集](../Page/遊蕩集.md "wikilink")\(\Omega(f)\)是[双曲的](https://zh.wikipedia.org/wiki/双曲集 "wikilink")[紧集](../Page/紧空间.md "wikilink")。
2.  \(f\)的[周期点](../Page/周期点.md "wikilink")在\(\Omega(f)\)中[稠密](../Page/稠密集.md "wikilink")。

满足A公理的微分同胚称为**A公理微分同胚**。若M是二维曲面，则非游荡集的双曲性蕴含了周期点的稠密性，但对三维以上的流形则不成立。尽管如此，A公理微分同胚有时仍被称作**双曲微分同胚**，因为M上发生有趣的动力学的部分，即\(\Omega(f)\)，表现出双曲的行为。

A公理微分同胚是[莫尔斯-斯梅尔系统的推广](https://zh.wikipedia.org/wiki/莫尔斯-斯梅尔系统 "wikilink")，后者有更多的限制（有限的周期点，稳定、不稳定子流形的横截性）。[斯梅尔马蹄铁映射是具有无限周期点和正的](../Page/马蹄映射.md "wikilink")[拓扑熵的A公理微分同胚](../Page/拓撲熵.md "wikilink")。

## 性质

所有[阿诺索夫微分同胚](../Page/阿诺索夫微分同胚.md "wikilink")都满足A公理。对于这种情况，整个流形M就是双曲的（尽管还不知道非游荡集\(\Omega(f)\)是否构成了整个M）。

Rufus Bowen证明了A公理微分同胚的非游荡集\(\Omega(f)\)都有[马尔可夫划分](https://zh.wikipedia.org/wiki/马尔可夫划分 "wikilink")。

非游荡集中的周期点的稠密性蕴含了局部极大性：存在\(\Omega(f)\)的开邻域U使得

\(\bigcap_{n\in\mathbb{Z}}{f^n(U)}=\Omega(f)\)

## ω稳定性

A公理系统有一个重要的性质：对微小扰动的结构稳定性。就是说，对系统施加一个微小的扰动，扰动后的系统与未扰动的系统之间有一对一的拓扑对应，把扰动后系统的轨道变成未扰动系统的轨道。这个性质的重要性在于，它表明了A公理系统不是特例，在某种意义上是“普遍的”。

更精确地说，对\(f\)的连续可微的[扰动](../Page/摄动理论.md "wikilink")\(f_\varepsilon\)，非游荡集由两个紧致的\(f_\varepsilon\)-不变子集\(\Omega_1,\Omega_2\)组成。第一个子集同胚于\(\Omega(f)\)，同胚映射h满足：

\(f_\varepsilon\circ h(x)=h\circ f(x),\quad\forall x\in\Omega(f)\)

若\(\Omega_2\)是空集，则h是到\(\Omega(f_\varepsilon)\)上的满射。若对任意扰动\(f_\varepsilon\)都是这种情况则称f是**ω稳定**的。微分同胚\(f\)是ω稳定的当且仅当\(f\)满足A公理与**无环条件**（轨道一旦离开某个不变子集就不再返回这个子集）。

## 参考资料

  - Abraham and Marsden, *Foundations of Mechanics* (1978) Benjamin/Cummings Publishing, *see Section 7.5*
  - Ruelle, David (1978). *Thermodynamic formalism. The mathematical structures of classical equilibrium*. Encyclopedia of Mathematics and its Applications. **5**. Reading, Massachusetts: Addison-Wesley. ISBN 0-201-13504-3. Zbl 0401.28016.
  - Ruelle, David (1989). *Chaotic evolution and strange attractors. The statistical analysis of time series for deterministic nonlinear systems*. Lezioni Lincee. Notes prepared by Stefano Isola. Cambridge University Press. ISBN 0-521-36830-8. Zbl 0683.58001.

[Category:遍历理论](https://zh.wikipedia.org/wiki/Category:遍历理论 "wikilink") [Category:微分同胚](https://zh.wikipedia.org/wiki/Category:微分同胚 "wikilink") [Category:微分拓扑学](https://zh.wikipedia.org/wiki/Category:微分拓扑学 "wikilink") [Category:同胚](https://zh.wikipedia.org/wiki/Category:同胚 "wikilink")