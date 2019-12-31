> 本文内容由[CW复形](https://zh.wikipedia.org/wiki/CW复形)转换而来。


**CW复形**，又称**胞腔复形**，在[拓扑学](../Page/拓扑学.md "wikilink")上屬於[拓扑空间](../Page/拓扑空间.md "wikilink")之一類，由[J.H.C.怀特海德引入](https://zh.wikipedia.org/wiki/J.H.C.怀特海德 "wikilink")，用于[同伦理论](https://zh.wikipedia.org/wiki/同伦理论 "wikilink")。其思想是构造一类空间，比[单纯复形](../Page/单纯复形.md "wikilink")更为广泛（我们现在可以说，有更好的[范畴论](../Page/范畴论.md "wikilink")属性）；但还要保留组合的本质，因此计算方面的考虑没有被忽略。

## 形式表述

粗略地说，CW复形由称作**胞腔**的基本元件组成。其精确定义规定胞腔如何在拓扑意义上“粘合”。CW复形名称中的“C”代表“闭有限”（），而“W”则代表“弱拓扑”（）。

单个 \(n\) 维闭胞腔是指 \(n\) 维[闭球在](../Page/球_\(数学\).md "wikilink")[贴映射下的像](https://zh.wikipedia.org/wiki/贴映射 "wikilink")。例如，每个[单纯形](../Page/单纯形.md "wikilink")都是一个闭胞腔，或更一般地，每个[凸多面体都是一个闭胞腔](https://zh.wikipedia.org/wiki/凸多面体 "wikilink")。单个 \(n\) 维开胞腔则是一个[同胚](../Page/同胚.md "wikilink")于 \(n\) 维[开球的拓扑空间](../Page/球_\(数学\).md "wikilink")。零维的开（或闭）胞腔是指一个[单元素空间](https://zh.wikipedia.org/wiki/单元素集合 "wikilink")。而“闭有限”条件要求每个闭胞腔都可由有限个开胞腔所[覆盖](../Page/覆盖_\(拓扑学\).md "wikilink")。

**CW复形**是一个[豪斯多夫空间](../Page/豪斯多夫空间.md "wikilink") \(X\)，连同一个将 \(X\) 划为开胞腔（维度不必统一）的[划分](../Page/集合划分.md "wikilink")，并满足以下性质：

  - 对 \(X\) 的划分中的任意一个 \(n\) 维开胞腔 \(C\)，存在一个从 \(n\) 维闭球到 \(X\) 的[连续映射](../Page/連續函數_\(拓撲學\).md "wikilink") \(f\)，使得：
      - \(f\) 限制在闭球的内部上是到胞腔 \(C\) 的同胚，且
      - 闭球的边界在 \(f\) 下的像包含于 \(X\) 的划分中的有限个维度小于 \(n\) 的元素的并集内。
  - \(X\) 的闭子集即是与每一个开胞腔交于闭集（相对于开胞腔本身的拓扑）的集合（\(X\) 的拓扑为所有开胞腔的并的弱拓扑）。

### 相对CW复形

笼统地说，*相对CW复形*与CW复形的区别在于它容许一个额外的、不须带有任何胞腔结构的组件。遵照上文的定义，这个组件被视作负一维胞腔。\[1\]\[2\]\[3\]

## CW复形的归纳法定义

如果一个CW复形中胞腔的维度最大为 \(n\)，那么我们称这个CW复形是 \(n\) 维的。若胞腔的维度没有上限，那么我们说这个CW复形是无穷维的。CW复形的 \(n\) 维骨架是指所有维度不超过 \(n\) 的胞腔的并。如果这个并集是闭集，那么它本身就是一个CW复形，称为原复形的**子复形**。因此，CW复形的 \(n\) 维骨架是维度不超过 \(n\) 的最大子复形。

CW复形常常由其各个维度上的骨架通过归纳来定义。首先定义0维骨架为[离散空间](../Page/离散空间.md "wikilink")。紧接着将1维胞腔黏着到0维骨架上。这一步先将每个1维胞腔先视作1维闭球，然后通过某个从这个闭球的[边界](../Page/边界_\(拓扑学\).md "wikilink")——即0维球面 \(S^0\) ——到0维骨架的连续影射贴合。\(S^0\) 上的每一点都与其在该映射下的像与0维骨架上的某一点等同；这构成一个等价关系。如此，1维骨架就定义成0维骨架和所有1维胞腔的并、再模去此等价关系后的[商空间](../Page/商空间.md "wikilink")。

概括而言，给定 \((n-1)\) 维骨架，\(n\) 维骨架是由在此基础上黏着 \(n\) 维胞腔得到。每个 \(n\) 维胞腔同样先视作 \(n\) 维闭球，然后通过某个从这个闭球的[边界](../Page/边界_\(拓扑学\).md "wikilink")——即 \((n-1)\) 维球面 \(S^{n-1}\) ——到 \((n-1)\) 维骨架的连续影射贴合。\(S^{n-1}\) 上的每一点都与其在该映射下的像与 \((n-1)\) 维骨架上的某一点等同；这同样构成一个等价关系。这样，\(n\) 维骨架就定义成 \((n-1)\) 维骨架和所有 \(n\) 维胞腔的并、再模去此等价关系后的[商空间](../Page/商空间.md "wikilink")。

在同构意义上，每个 \(n\) 维CW复形都可依此由其 \((n-1)\) 维骨架构造而成，因此每个有限维CW复形都能按以上方法构造。甚至对于无穷维CW复形也成立，只要借助拓扑空间的[归纳极限来描述以上无穷过程的结果](../Page/极限_\(范畴论\).md "wikilink")，这个结论也是对的：在极限的集合 \(X\) 中，子集是闭集当且仅当它与每一个*骨架*都交于闭集（相对于骨架本身的拓扑）。

## 例子

  - 实数集 \(\mathbb R\) 上的*标准CW结构*中的0维骨架为整数集 \(\mathbb Z\)，而1维胞腔则是区间 \(\{ [n,n+1] : n \in \mathbb Z\}\) 。相似地，在 \(\mathbb R^n\) 上的标准CW结构中的胞腔是 \(\mathbb R\) 的0维和1维胞腔的积。

  - [多面体](../Page/多面体.md "wikilink")带有自然的CW复形结构。

  - [图是一维CW复形](../Page/图_\(数学\).md "wikilink")。

  - 无穷维[希尔伯特空间](../Page/希尔伯特空间.md "wikilink")不是CW复形：它是一个[贝尔空间](https://zh.wikipedia.org/wiki/贝尔空间 "wikilink")（见[贝尔纲定理](../Page/贝尔纲定理.md "wikilink")），因此不能写成其 \(n\) 维骨架的并，因每个骨架都是闭集且内部为空。这个论证也可引申到许多无穷维空间。

  - \(n\) 维[球面](../Page/球面.md "wikilink")容许一个只有两个胞腔的CW结构：一个0为胞腔和一个 \(n\) 维胞腔，依靠从 \(S^{n-1}\) 到0维胞腔的常映射黏着。另外一个替代的胞腔分解也很受欢迎，因赤道包含映射 \(S^{n-1} \to S^n\) 的补恰好是两个球：上半球和下半球。由归纳法可得 \(S^n\) 的一个CW分解，每个维度 \(0 \leq k \leq n\) 上恰好有两个 \(k\) 维胞腔。

  - \(n\) 维[实射影空间](../Page/实射影空间.md "wikilink")容许一个CW结构，每个维度 \(0 \leq k \leq n\) 上恰好有一个 \(k\) 维胞腔。

  - [格拉斯曼流形](../Page/格拉斯曼流形.md "wikilink")容许一个CW结构，其胞腔称作**[舒伯特胞腔](../Page/格拉斯曼流形.md "wikilink")**.

  - 微分流形、代数和射影[簇都同伦于CW复形](../Page/代数簇.md "wikilink")。

  - 空间 \(\{re^{2\pi i \theta} : 0 \leq r \leq 1, \theta \in \mathbb Q\} \subset \mathbb C\) 同伦于CW复形（甚至是可收缩的），但不容许任何CW结构，因其不是局部可收缩的。

  - 是不同伦于CW的拓扑空间的一例。

## CW复形的同调与上同调

CW复形的[奇异同调](https://zh.wikipedia.org/wiki/奇异同调 "wikilink")（或上同调）可以通过[胞腔同调计算](https://zh.wikipedia.org/wiki/胞腔同调 "wikilink")。此外，在CW复形和胞腔映射的范畴内，胞腔同调可以解读成一种[同调论](../Page/同调论.md "wikilink")。如要计算CW复形的广义（上）同调，[谱序列是胞腔同调的一个类比](../Page/譜序列.md "wikilink")。

以下是一些计算的实例：

:\* 对于球面 \(S^n\)，取只带有一个0维胞腔和一个 \(n\) 维胞腔的分解。胞腔[链复形](../Page/链复形.md "wikilink") \(C_*\) 与同调皆为

\[H_k = C_k = \left\{
\begin{array}{lr}
\mathbb Z & k \in \{0,n\} \\
0 & k \notin \{0,n\}
\end{array}
\right.\] 因为所有微分算子皆为零（实际上，上链复形与上同调亦然）。或者，如果我们取赤道分解，使得每个维度上各有两个胞腔，那么

\[C_k = \left\{
\begin{array}{lr}
\mathbb Z^2 & 0 \leq k \leq n \\
0 & \text{otherwise}
\end{array}
\right.\] 而微分算子是形为 \(\begin{pmatrix} 1 & -1 \\ 1 & -1\end{pmatrix}\) 的矩阵。这个复形给出的同调与以上计算一致，因为复形在除 \(C_0\) 与 \(C_n\) 项外都是正合的。

:\* 对于复射影空间 \(\mathbb{P}^n\mathbb{C}\)，可以相似地算得

\[H^k(\mathbb{P}^n\mathbb{C}) = \begin{cases}
  \mathbb{Z} \quad\text{for } 0\le k\le 2n,\text{even}\\
  0  \quad\text{otherwise}.
\end{cases}\]

之所以这两例中计算都尤其简单，是因为同调完全由胞腔数目确定——换言之，胞腔的黏着映射在计算中没有扮演任何角色。这个现象只是特例，在一般情况下并不成立。

## 同伦范畴

在某些专家眼中，CW复形的[同倫範疇](../Page/同倫範疇.md "wikilink")即使不是唯一的同伦范畴（基于技术原因，实际使用的版本是带基点的空间），也是同伦范畴的最佳候选。\[4\]因此，可能会得出非CW复形的空间的辅助构造需尽量避免。在这方面的基本结论是[布朗可表性定理](https://zh.wikipedia.org/wiki/布朗可表性定理 "wikilink")：同伦范畴上的[可表函子](../Page/可表函子.md "wikilink")可以借助CW复形来相当精简地刻画。

## 性质

  - CW复形是局部可收缩的。
  - CW复形满足[懷特黑德定理](../Page/懷特黑德定理.md "wikilink")：CW复形之间的映射是同伦等价当且仅当在所有同伦群上都诱导出同构。
  - 两个CW复形的积可以*转化*成一个CW复形。具体而言，设 \(X\) 和 \(Y\) 为CW复形，那么 \(X\times Y\) 上容许一个CW复形的结构，其胞腔即 \(X\) 中的胞腔与 \(Y\) 中胞腔的积，并配备弱拓扑。不出所料，这个新的CW复形的底集合就是 \(X\times Y\) 本身。此外，多数情况下弱拓扑与 \(X\times Y\) 上的[积拓扑一致](../Page/积空间.md "wikilink")，例如当 \(X\) 或 \(Y\) 之一是有限CW复形（或更一般地，当它们之一是**局部有限**的，也即在每个维度它有有限个胞腔）。然而，如果 \(X\) 和 \(Y\) 皆非[局部紧](https://zh.wikipedia.org/wiki/局部紧空间 "wikilink")，弱拓扑可能比积拓扑更[精细](../Page/拓撲比較.md "wikilink")。在这种不利的情形下，两个复形的积（作为拓扑空间） \(X\times Y\) *不是*一个CW复形。另一方面，\(X\) 和 \(Y\) 在[紧生成空间](../Page/紧生成空间.md "wikilink")范畴中的积的拓扑与弱拓扑一致，因此确实定义出一个CW复形。
  - 设 \(X\) 和 \(Y\) 为CW复形。[函数空间](../Page/函数空间.md "wikilink") \(\operatorname{Hom}(X,Y)\) （带[紧致开拓扑](../Page/紧致开拓扑.md "wikilink")）一般*不是*CW复形。若 \(X\) 是有限CW复形，那么 \(\operatorname{Hom}(X,Y)\) [同伦等价于一个CW复形](https://zh.wikipedia.org/wiki/同倫等價 "wikilink")；这是由于[约翰·米尔诺](../Page/约翰·米尔诺.md "wikilink")的一个定理 (1959)。\[5\] 注意到 \(X\) 和 \(Y\) 都是紧生成豪斯多夫空间，因此 \(\operatorname{Hom}(X,Y)\) 常常取其紧生成的变种；以上结论对于这个变种仍然成立。\[6\]
  - CW复形的[覆疊空間](../Page/覆疊空間.md "wikilink")也是CW复形。
  - CW复形是[仿紧空间](../Page/仿紧空间.md "wikilink")，而有限CW复形是[紧空间](../Page/紧空间.md "wikilink")。CW复形的紧子空间必定包含于一有限子复形内。\[7\]\[8\]

## 參考文獻

### 注释

### 综合参考

  - (open access)

  - (open access)

  - 该教材在第一章定义了CW复形，且对它们的使用贯穿全书；书末有一节关于CW复形的拓扑的附录。免费电子版本可见[作者的网站](http://www.math.cornell.edu/~hatcher/)。

  -
  - 更多细节请见[第一作者的网站](http://groupoids.org.uk/nonab-a-t.html)

[Category:代数拓扑](https://zh.wikipedia.org/wiki/Category:代数拓扑 "wikilink") [Category:同伦论](https://zh.wikipedia.org/wiki/Category:同伦论 "wikilink") [Category:拓扑空间](https://zh.wikipedia.org/wiki/Category:拓扑空间 "wikilink")

1.
2.  <https://ncatlab.org/nlab/show/CW+complex>
3.  <https://www.encyclopediaofmath.org/index.php/CW-complex>
4.  例如，声称"The class of CW complexes (or the class of spaces of the same homotopy type as a CW complex) is the most suitable class of topological spaces in relation to homotopy theory"
5.  [Milnor, John](https://zh.wikipedia.org/wiki/John_Milnor "wikilink"), "[On spaces having the homotopy type of a CW-complex](http://www.jstor.org/stable/1993204)" *Trans. Amer. Math. Soc.* **90** (1959), 272–280.
6.
7.  [Hatcher, Allen](https://zh.wikipedia.org/wiki/Allen_Hatcher "wikilink"), *Algebraic topology*, Cambridge University Press (2002). ISBN 0-521-79540-0. 免费电子版本可见[作者的网站](http://www.math.cornell.edu/~hatcher/)。
8.  [Hatcher, Allen](https://zh.wikipedia.org/wiki/Allen_Hatcher "wikilink"), *Vector bundles and K-theory*, 初步版本可见于[作者的网站](http://www.math.cornell.edu/~hatcher/)