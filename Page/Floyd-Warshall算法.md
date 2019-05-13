**算法**（），中文亦称**弗洛伊德算法**，是解决任意两点间的[最短路径的一种](../Page/最短路径.md "wikilink")[算法](../Page/算法.md "wikilink")\[1\]，可以正確處理[有向圖或负权](../Page/有向圖.md "wikilink")（但不可存在负权回路）的最短路径問題，同时也被用于计算有向图的传递闭包\[2\]。

算法的[时间复杂度為](../Page/时间复杂度.md "wikilink")\(O(N^3)\)\[3\]，[空间复杂度为](../Page/空间复杂度.md "wikilink")\(O(N^2)\)。

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
`5    dist[`*`u`*`][`*`v`*`] ← w(`*`u`*`,`*`v`*`)  `*`//``   ``the``
 ``weight``   ``of``   ``the``   ``edge``   ``(`*`u`*`,`*`v'')`
`6 `**`for`**` `*`k`*` `**`from`**` 1 `**`to`**` |V|`
`7    `**`for`**` `*`i`*` `**`from`**` 1 `**`to`**` |V|`
`8       `**`for`**` `*`j`*` `**`from`**` 1 `**`to`**` |V|`
`9          `**`if`**` dist[`*`i`*`][`*`j`*`] > dist[`*`i`*`][`*`k`*`] + dist[`*`k`*`][`*`j`*`] `
`10             dist[`*`i`*`][`*`j`*`] ← dist[`*`i`*`][`*`k`*`] + dist[`*`k`*`][`*`j`*`]`
`11         `**`end``   ``if`**

其中表示由點\(i\)到點\(j\)的代價，當其為 ∞ 表示兩點之間沒有任何連接。

## 参考来源

## 参见

  - [图论最短路](../Page/图论最短路.md "wikilink")
  - [Dijkstra算法](../Page/Dijkstra算法.md "wikilink")
  - [Bellman-Ford算法](../Page/Bellman-Ford算法.md "wikilink")

[Category:图算法](https://zh.wikipedia.org/wiki/Category:图算法 "wikilink")
[Category:多项式时间问题](https://zh.wikipedia.org/wiki/Category:多项式时间问题 "wikilink")

1.
2.
3.
4.