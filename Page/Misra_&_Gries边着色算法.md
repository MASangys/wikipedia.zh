> 本文内容由[Misra \& Gries边着色算法](https://zh.wikipedia.org/wiki/Misra_\&_Gries边着色算法)转换而来。


**Misra & Gries边着色算法**是[图论](../Page/图论.md "wikilink")算法的一种，能够在[多项式时间内找到任意图的一种](https://zh.wikipedia.org/wiki/多项式时间 "wikilink")[边着色方案](https://zh.wikipedia.org/wiki/边着色 "wikilink")。这种着色算法最多使用\(\Delta+1\)种颜色，\(\Delta\)是该图节点的最大[度数](../Page/图论.md "wikilink")。这对于一些图而言是最优的，根据[Vizing定理](../Page/Vizing定理.md "wikilink")，最坏情况下，这种算法给出的结果比最优值多使用一种颜色。

该算法由Jayadev Misra和David Gries在1992年首次提出\[1\]，是对Béla Bollobás提出的一种算法的简化。\[2\]

对于边着色问题，该算法是已知最快的“几乎最优”算法。时间复杂度为\(O(|E||V|)\)。更小的时间复杂度\(O(|E|\sqrt{|V|\log|V|})\)在1985年Gabow等的一篇科技报告中提出，但从未被发表。\[3\]

总体上来说，最优边着色问题是[NP完全](../Page/NP完全.md "wikilink")的，所以很可能并不存在多项式时间内的算法。同时也有指数级的算法给出了该问题的最优解。

## 扇

[Fan,_Misra_and_Gries_edge_coloring_algorithm.png](https://zh.wikipedia.org/wiki/File:Fan,_Misra_and_Gries_edge_coloring_algorithm.png "fig:Fan,_Misra_and_Gries_edge_coloring_algorithm.png")v的一个扇 F=\[x_1,x_2,x_3\]（虚线边代表未着色），(v,x_1),(v,x_2),(v,x_3)是扇的边. F'=\[x_1,x_2\] 也是v的一个扇, 但不是最大的。\]\] 对于一种颜色x，如果*c(u,z)* ≠ *x* 对于所有的 (u,z) \(\in\) E(G) : *z≠v*均成立，则称这种颜色x对于边(u, v)未被使用。

[顶点u的一个](../Page/顶点_\(图论\).md "wikilink")**扇**(Fan)是一个顶点序列，记为F\[1:k\]，该序列满足以下条件：

1.  F\[1:k\]是一个包含u的部分或全部邻居节点的非空序列
2.  (F\[1\],u) \(\in\) E(G) 未被着色
3.  F\[i+1\] 与u 的连边的颜色对于 F\[i\] 未被使用，1 ≤ i \< k

[Bicolored_path,_Misra_and_Gries_edge_coloring_algorithm.png](https://zh.wikipedia.org/wiki/File:Bicolored_path,_Misra_and_Gries_edge_coloring_algorithm.png "fig:Bicolored_path,_Misra_and_Gries_edge_coloring_algorithm.png") 给定一个扇F，任意边(F\[i\], X)，1 ≤ i ≤ k 是**扇的一条边**(Fan edge)。令 c 和 d 是两种颜色，一个 cd<sub>X</sub> 路径是一个经过节点X的，由只包含颜色 c 和 d 的边组成的路径，而且是最大的（即，不能添加任何边到这个路径中，否则就会包含颜色不为 c 或 d 的边）。注意到对于任意节点 X ，只会存在一条这样的边，因为每种颜色最多只有一条边与给定的节点邻接。

### 扇的旋转

[Rotating_a_fan,_Misra_and_Gries_edge_coloring_algorithm.png](https://zh.wikipedia.org/wiki/File:Rotating_a_fan,_Misra_and_Gries_edge_coloring_algorithm.png "fig:Rotating_a_fan,_Misra_and_Gries_edge_coloring_algorithm.png") 给定对于节点X的一个扇 F\[1:k\] ，旋转操作进行以下操作：

1.  c(F\[i\],X) = c(F\[i+1\],X)
2.  除去 F\[k\] 到 u 的边的颜色

这种旋转进行后着色仍然有效，因为对于任意 i ，*c*(*F*\[*i* + 1\], *X*)对(*F*\[*i*\], *X*)未被使用。

### 路径的翻转

[Inverting_a_bicolored_path,_Misra_and_edge_coloring_algorithm.png](https://zh.wikipedia.org/wiki/File:Inverting_a_bicolored_path,_Misra_and_edge_coloring_algorithm.png "fig:Inverting_a_bicolored_path,_Misra_and_edge_coloring_algorithm.png")

操作“翻转 cd<sub>X</sub> 路径”将该路径上的每个颜色为 c 的边改变为 d ，每个颜色为 d 的边改变颜色为 c 。如果X处于路径的末端，则翻转操作能够释放节点X上的一种颜色：如果 X 与 c 而非 d 相邻，现在会变成与 d 而非 c 相邻，把颜色 c 释放出来，可以给其他与 X 邻接的边。这一翻转操作不会改变着色的有效性，因为对于路径末端的节点，只会有 c 或 d 中的一种颜色，而对于边上的其他节点，翻转操作只是交换了边的颜色，并未增加新颜色。

## 算法

**输入:** 图 G.

**输出:** 对于图 G 的边的一个合适染色方案

令 U := E(G)

**while** U ≠ ∅ **do**

1.  令 (u,v) 是 U 的任意一条边。
2.  令 F\[1:k\] 是 u 的一个最大扇，且 F\[1\]=v.
3.  令 c 是对于 u 未被使用的一种颜色，d 是对于 F\[k\] 未被使用的一种颜色.
4.  翻转 cd<sub>u</sub> 路径
5.  令 w ∈ V(G) 使得 w ∈ F, F'=\[F\[1\]...w\] 是一个扇，且颜色 d 对于 w 未被使用。
6.  旋转扇 F' 并设置 c(u,w)=d.
7.  U := U - {(u,v)}

**end while**

## 参考文献

[Category:图算法](https://zh.wikipedia.org/wiki/Category:图算法 "wikilink")

1.
2.
3.