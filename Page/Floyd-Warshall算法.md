**算法**（），中文亦称**弗洛伊德算法**，是解决任意两点间的[最短路径的一种](https://zh.wikipedia.org/wiki/最短路径 "wikilink")[算法](../Page/算法.md "wikilink")\[1\]，可以正確處理[有向圖或负权](https://zh.wikipedia.org/wiki/有向圖 "wikilink")（但不可存在负权回路）的最短路径問題，同时也被用于计算有向图的传递闭包\[2\]。

算法的[时间复杂度](../Page/时间复杂度.md "wikilink")為\(O(N^3)\)\[3\]，[空间复杂度为](https://zh.wikipedia.org/wiki/空间复杂度 "wikilink")\(O(N^2)\)。

## 原理

算法的原理是[动态规划](../Page/动态规划.md "wikilink")\[4\]。

设\(D_{i,j,k}\)为从\(i\)到\(j\)的只以\((1..k)\)集合中的节点为中间節点的最短路径的长度。

1.  若最短路径经过点k，则\(D_{i,j,k}=D_{i,k,k-1}+D_{k,j,k-1}\)；
2.  若最短路径不经过点k，则\(D_{i,j,k}=D_{i,j,k-1}\)。

因此，\(D_{i,j,k}=\mbox{min}(D_{i,j,k-1},D_{i,k,k-1}+D_{k,j,k-1})\)。

在实际算法中，为了节约空间，可以直接在原来空间上进行迭代，这样空间可降至二维。

## 算法描述

算法的描述如下：

`1 `**`let`**` dist be a |V| × |V| array of minimum distances initialized to ∞ (infinity)`
`2 `**`for``   ``each`**` vertex `*`v`*
`3    dist[`*`v`*`][`*`v`*`] ← 0`
`4 `**`for``   ``each`**` edge (`*`u`*`,`*`v`*`)`
`5    dist[`*`u`*`][`*`v`*`] ← w(`*`u`*`,`*`v`*`)  `*`//``   ``the``   ``weight``   ``of``   ``the``   ``edge``   ``(`*`u`*`,`*`v'')`
`6 `**`for`**` `*`k`*` `**`from`**` 1 `**`to`**` |V|`
`7    `**`for`**` `*`i`*` `**`from`**` 1 `**`to`**` |V|`
`8       `**`for`**` `*`j`*` `**`from`**` 1 `**`to`**` |V|`
`9          `**`if`**` dist[`*`i`*`][`*`j`*`] > dist[`*`i`*`][`*`k`*`] + dist[`*`k`*`][`*`j`*`] `
`10             dist[`*`i`*`][`*`j`*`] ← dist[`*`i`*`][`*`k`*`] + dist[`*`k`*`][`*`j`*`]`
`11         `**`end``   ``if`**

其中表示由點\(i\)到點\(j\)的代價，當其為 ∞ 表示兩點之間沒有任何連接。

## 使用动态规划的算法

  - [最长公共子序列](../Page/最长公共子序列.md "wikilink")
  - [Viterbi算法](../Page/维特比算法.md "wikilink")

## 参考来源

## 参见

  - [图论最短路](https://zh.wikipedia.org/wiki/图论最短路 "wikilink")
  - [Dijkstra算法](https://zh.wikipedia.org/wiki/Dijkstra算法 "wikilink")
  - [Bellman-Ford算法](https://zh.wikipedia.org/wiki/Bellman-Ford算法 "wikilink")
  - [抽象機器](https://zh.wikipedia.org/wiki/抽象機器 "wikilink")
  - [垃圾进，垃圾出](../Page/垃圾进，垃圾出.md "wikilink")
  - [算法导论](../Page/算法导论.md "wikilink")
  - [计算理论](../Page/计算理论.md "wikilink")
      - [可计算性理论](../Page/可计算性理论.md "wikilink")
      - [計算複雜性理論](../Page/計算複雜性理論.md "wikilink")
  - [高级综合](../Page/高级综合.md "wikilink")

[Category:图算法](https://zh.wikipedia.org/wiki/Category:图算法 "wikilink") [Category:多项式时间问题](https://zh.wikipedia.org/wiki/Category:多项式时间问题 "wikilink")

1.
2.
3.
4.