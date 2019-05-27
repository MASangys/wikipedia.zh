[缩略图](https://zh.wikipedia.org/wiki/File:Koenigs-theorem-graph.svg "fig:缩略图")的最大[匹配](../Page/匹配_\(图论\).md "wikilink")（蓝）和最小覆盖（红）的基数都等于6.\]\]
在[图论中](../Page/图论.md "wikilink")，**柯尼希定理（英：Kőnig's Theorem）**，由提出：

> [二部图G中](https://zh.wikipedia.org/wiki/二部图 "wikilink")[最大匹配的基数等于最小](../Page/匹配_\(图论\).md "wikilink")[覆盖的基数](../Page/覆盖_\(图论\).md "wikilink")。\[1\]

柯尼希定理相当于[赫尔婚姻定理和Dilworth定理](../Page/赫尔婚姻定理.md "wikilink")。既然二分图匹配就是[最大流的特烈](../Page/最大流问题.md "wikilink")，这定理也是[最大流量分割理的特烈](https://zh.wikipedia.org/wiki/最大流最小割定理 "wikilink")。

## 证明

这是从Diestel《图论》中文版本来的：\[2\]

“设M是G中具有最大基数的[匹配](../Page/匹配_\(图论\).md "wikilink")。从M的每一条[边中选择一个端点组成集合U如下](../Page/图论术语.md "wikilink")：
如果存在一条交错路终止于这条边在B中的端点，则选择此端点；否则，选择这条边在A中
的端点。下面证明这|M|个顶点构成的集合U覆盖E。由于E的任何一个顶点覆盖必须覆盖M，因此不存在少于|M|个顶点的覆盖，所以定理成立。

“注意到，如果交错路P的一个端点是B中的一个顶点b，那么\(b \in U\)：因为M是最大
匹配，而P不是一个增广路，因此b被匹配到A中的某个顶点a，然而当构造U时，考虑到
边\(ab \in M\)，我们会把b放入U中。 为了证明U覆盖E，取定E中的任意边ab，如果\(a \in U\)，问题得证；因此我们可以假
定\(a \notin U\)。为了证明\(b \in U\)，只需论证存在某个交错路具有端点b。如果a不被任何顶点匹配，
则ab就是这样一个交错路；否则，对某个顶点\(b' \in U\)，我们有\(ab' \in M\)。由于\(a \notin U\)，因此存
在一条交错路P结束于b ′。根据b是否属于P，要么Pb要么Pb′ab是一条结束于b的交错路。”

## 注意

## 参考资料

  - 中。

  - 中。

  - 中。

  - 中。

  - 中。

  - 中。

  - 中。

  - 中。

  - 中。

  - 中。

  - 中。

[Category:包含证明的条目](https://zh.wikipedia.org/wiki/Category:包含证明的条目 "wikilink")
[Category:图论](https://zh.wikipedia.org/wiki/Category:图论 "wikilink")
[Category:匹配](https://zh.wikipedia.org/wiki/Category:匹配 "wikilink")
[Category:二部图](https://zh.wikipedia.org/wiki/Category:二部图 "wikilink")
[Category:二分图](https://zh.wikipedia.org/wiki/Category:二分图 "wikilink")
[Category:图论定理](https://zh.wikipedia.org/wiki/Category:图论定理 "wikilink")
[Category:完美图](https://zh.wikipedia.org/wiki/Category:完美图 "wikilink")

1.

2.