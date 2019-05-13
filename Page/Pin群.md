[数学中](../Page/数学.md "wikilink")，**Pin
群**是一个[二次型空间相伴的](../Page/二次型.md "wikilink")[克利福德代数的一个子群](../Page/克利福德代数.md "wikilink")。它有一个到[正交群的](../Page/正交群.md "wikilink")
2 对 1 映射，就像 [Spin 群映到特殊正交群一样](../Page/Spin_群.md "wikilink")。

从 Pin
群到正交群的映射**不是**满的也不是[万有覆叠空间](../Page/万有覆叠空间.md "wikilink")，但对定二次型，两者都正确。

## 一般定义

## 确定形式

[Spin-Pin-SO-O-definite.svg](https://zh.wikipedia.org/wiki/File:Spin-Pin-SO-O-definite.svg "fig:Spin-Pin-SO-O-definite.svg")

确定形式的 Pin 群是到正交群的满射，每个分支都是单连通的：它是正交群的二重覆叠。正定二次型 \(Q\) 和它的负形式 \(-Q\)
不是同构的，但是正交群是同构的 。

就标准形式而言，\(O(n,0) = O(0,n)\)，但是
\(\mbox{Pin}(n,0) \not\cong \mbox{Pin}(0,n)\)。使用 Clifford 代数（这里
\(v^2=Q(v) \in C\ell(V,Q)\)）中通用的“±”号记法，我们可以写成

\[\mbox{Pin}_+(n) := \mbox{Pin}(n,0) \qquad \mbox{Pin}_-(n) := \mbox{Pin}(0,n)\]
它们都是到 \(O(n) = O(n,0) = O(0,n)\) 的满射。

与之对比，我们有同构 \(\mbox{Spin}(n,0) \cong \mbox{Spin}(0,n)\)
且他们都是[特殊正交群](../Page/特殊正交群.md "wikilink") SO(*n*)
惟一的[万有覆叠](../Page/万有覆叠.md "wikilink")。

## 不定形式

## 作为拓扑空间

任何[连通](../Page/连通空间.md "wikilink")[拓扑群在拓扑意义上有惟一的万有覆叠空间](../Page/拓扑群.md "wikilink")，这个空间有惟一的群结构作为[基本群的](../Page/基本群.md "wikilink")[中心扩张](../Page/中心扩张.md "wikilink")。对一个不连通拓扑空间，含单位元的分支有一个惟一的万有覆叠，然后在其他分支作为拓扑空间可取同一个覆叠（这是单位分支的[主齐性空间](../Page/主齐性空间.md "wikilink")），但是其它分支的群结构一般不是惟一的。

Pin 和 Spin 群是和正交群和特殊正交群关联的独特的拓扑空间，由 Clifford
代数中得出：存在其他类似的群，对于于其他分支的其他二重覆叠或者其他群结构，但是他们不叫做
Pin 或 Spin 群，研究得也少。

## 结构

两个 Pin 群对应于中心扩张

\[1 \to \{\pm 1\} \to \mbox{Pin}_\pm(V) \to O(V) \to 1\]
\(\mbox{Spin}(V)\)（行列式为 1 的分支）上的群结构已经定义好了；其余分支的群结构由中心确定，从而有一个 \(\pm 1\)
分歧。

两个扩张由一个反射的原像的平方是 \(\pm 1\in \ker \left(\mbox{Spin}(V) \to SO(V)\right)\)
区分，这两个 Pin 群即是这样命名的。明确地说，一个反射在 \(O(V)\) 中的指数为
2，\(r^2=1\)，所以反射的原像的平方（具有行列式 1）一定在
\(\mbox{Spin}_\pm(V) \to SO(V)\) 的核中，所以
\(\tilde r^2 = \pm 1\)，两种选择都确定了一个 Pin
群（因为所有反射共轭于联通群 \(SO(V)\)
的中一个元素，所有反射的平方一定具有相同值）。

具体地，在 \(\mbox{Pin}_+\) 中，\(\tilde r\) 的指数为 2，子群 \(\{1,r\}\) 的原像是
\(C_2 \times C_2\)：如果我们重复同一个[反射](../Page/反射_\(数学\).md "wikilink")，得到恒同。

在 \(\mbox{Pin}_-\) 中，\(\tilde r\) 的指数为 4：
如果重复同一个反射两次，我们得到了一个“[旋转](../Page/旋转.md "wikilink")
2π”——\(\mbox{Spin}(V) \to SO(V)\)
中的非平凡元可以理解为“[旋转](../Page/旋转.md "wikilink")
2π”（每一个轴得出相同的元素）。

### 低维数

在 2 维，\(\mbox{Pin}_+\) 与 \(\mbox{Pin}_-\) 的区别反映了一个正 2*n*
边形的[二面体群和](../Page/二面体群.md "wikilink")[循环群](../Page/循环群.md "wikilink")
\(C_{2n}\) 的区别。

在 \(\mbox{Pin}_+\) 中，一个正 2*n*
边形的[二面体群的原像](../Page/二面体群.md "wikilink")，视为子群
\(\mbox{Dih}_n < O(2)\)，是 2*n* 边形的二面体群
\(\mbox{Dih}_{2n} < \mbox{Pin}_+(2)\)；然而在 \(\mbox{Pin}_-\) 中二面体群的原像是循环群
\(\mbox{Dic}_n < \mbox{Pin}_-(2)\)

在 1维，Pin 群共轭于第一个二面体群和循环群：

\[\begin{align}
\mbox{Pin}_+(1) &\cong C_2 \times C_2 = \mbox{Dih}_1\\
\mbox{Pin}_-(1) &\cong C_4 = \mbox{Dic}_1
\end{align}\]

## 中心

## 不定 Pin 群

[Spin(p,q)](../Page/广义正交群.md "wikilink") 有八种不同的二重覆叠，对
\(p,q\neq 0\)，这对应于用 \(C_2\) 中心扩张（中心不是 \(C_2 \times C_2\) 就是
\(C_4\)）。只有其中两个称为 Pin 群，他们可以将 [Clifford
代数作为一个表示](../Page/Clifford_代数.md "wikilink")。他们分别称为
*Pin*(*p*,*q*) 和 *Pin*(*q*,*p*)。

## 命名

这个群的名称在
[迈克尔·阿蒂亚](../Page/迈克尔·阿蒂亚.md "wikilink")、[拉乌尔·博特](../Page/拉乌尔·博特.md "wikilink")、A.
Shapiro： *Clifford modules*（Topology 3, suppl. 1 (1964), pp. 3-38, on
page 3, line 17）一文中引入，他们说“这个笑话归于 [J-P.
Serre](../Page/让-皮埃尔·塞尔.md "wikilink")”。这是“Spin”的[逆构词法](../Page/逆构词法.md "wikilink")：Pin
之于 Spin 就像 O(*n*) 之于
SO(*n*)，从而从“Spin”中去掉“S”得到“Pin”。进一步，词“Pin”的法语发音和一个粗痞话相同，这暗示了这个名称的起源于（或被归于）塞尔。

## 注释

## 参考文献

[Category:李群](https://zh.wikipedia.org/wiki/Category:李群 "wikilink")