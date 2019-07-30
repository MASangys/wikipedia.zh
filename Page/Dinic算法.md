**Dinic算法（又称Dinitz算法）**是一个在[网络流](../Page/网络流.md "wikilink")中计算[最大流的](https://zh.wikipedia.org/wiki/最大流 "wikilink")[强多项式复杂度的算法](../Page/时间复杂度.md "wikilink")，设想由[以色列](../Page/以色列.md "wikilink")（[前苏联](https://zh.wikipedia.org/wiki/前苏联 "wikilink")）的计算机科学家Yefim (Chaim) A. Dinitz在1970年提出。\[1\] 算法 \(O(V^2 E)\) 的时间复杂度类似于[Edmonds–Karp算法](../Page/Edmonds–Karp算法.md "wikilink")，其时间复杂度为 \(O(VE^2)\) ，Dinic算法与Edmonds–Karp算法的不同之处在于它每轮算法都选择最短的可行路径进行增广。Dinic算法中采用*高度标号（level graph）*以及*阻塞流（blocking flow）*实现其性能。

## 历史

[Yefim Dinitz在Adel](https://zh.wikipedia.org/wiki/Yefim_Dinitz "wikilink")'son-Vel'sky（[AVL树](../Page/AVL树.md "wikilink")的发明者之一）的算法课的课前活动上发明了这个算法。当时他不知道关于[Ford–Fulkerson算法](../Page/Ford–Fulkerson算法.md "wikilink")的基本事实。\[2\]

Dinitz在1969年一月向他人公布了他发明的算法，又在1970年将其发布在*Doklady Akademii nauk SSSR杂志*上。 在1974年，Shimon Even和(他之后的博士学生)Alon Itai在海法的以色列理工学院对Dinitz的算法以及Alexander Karzanov的阻塞流的想法很感兴趣。但是杂志上的文章每篇的篇幅被限制在四页以内，很多细节都被忽略，这导致他们很难根据文章还原出算法。但他们没有放弃，在后三天不断地努力，设法了解这两个文件中的分层网络的维护问题。 在接下来的几年，Even由于在讲学中将Dinitz念为Dinic，导致Dinic算法反而成为了它的名称。 Even和Itai也将算法与[BFS和](../Page/广度优先搜索.md "wikilink")[DFS结合起来](../Page/深度优先搜索.md "wikilink")，形成了当前版本的算法。\[3\]

在[Ford–Fulkerson算法](../Page/Ford–Fulkerson算法.md "wikilink")被发明之后的约十年之内，是否有算法能在多项式复杂度之内处理無理數邊權是未知的。这造成缺乏任何已知的多项式复杂度算法解决最大流问题。 Dinitz算法和[Edmonds–Karp算法](../Page/Edmonds–Karp算法.md "wikilink")在1972年发布，证明在[Ford–Fulkerson算法](../Page/Ford–Fulkerson算法.md "wikilink")中，如果每次总选择最短的一条增广路，路径长度将单调增加，且算法总能终止。

## 定义

设\(G = ((V,E),c,s,t)\)为一个每条边的容量为\(c(u,v)\)，流为\(f(u,v)\)的网络。

  -
    **残留容量**\(c_f\colon V\times V \to R^+\)的定义为：
    1.  如果\((u,v)\in E\),
          -
            \(c_f(u,v) = c(u,v) - f(u,v)\)
            \(c_f(v,u) = f(u,v)\)
    2.  否则\(c_f(u,v) = 0\)。

<!-- end list -->

  -
    则**残留网络**为\(G_f = ((V, E_f), c_f|_{E_f}, s, t)\)，其中
      -
        \(E_f = \{(u,v)\in V \times V : c_f(u,v) > 0\}\).

<!-- end list -->

  -
    **增广路**指通过残留网络\(G_f\)的从源点\(s\)到汇点\(t\)的一条有效路径。

<!-- end list -->

  -
    定义\(\operatorname{dist}(v)\)为\(G_f\)中从源点\(s\)到点\(v\)的最短距离。那么\(G_f\)的**高度标号**为\(G_L = (V, E_L, c_f|_{E_L}, s,t)\)，其中
      -
        \(E_L = \{(u,v)\in E_f : \operatorname{dist}(v) = \operatorname{dist}(u) + 1\}\).

<!-- end list -->

  -
    设图\(G' = (V,E_L', s, t)\)，其中\(E_L' = \{(u,v) : f(u,v) < c_f|_{E_L}(u,v)\}\)不包含从\(s\)到\(t\)的路径，则**阻塞流**为一条从\(s\)到\(t\)的流\(f\)。

## 算法

**Dinic算法**

  -
    *输入*:网络\(G = ((V, E), c, s, t)\)。
    *输出*\[s-t\]的流\(f\)的最大值。

<!-- end list -->

1.  对每条边\(e\in E\)，设\(f(e) = 0\)。
2.  在图\(G\)的残留网络\(G_f\)中计算\(G_L\)。如果\(\operatorname{dist}(t) = \infty\)停止程序并输出\(f\).
3.  在\(G_L\)找到一条阻塞流\(f\;'\)。
4.  将\(\ f\)增加\(f\;'\)并返回第二步。

## 分析

可以证明每轮算法中找到的阻塞流的边数至少增加1，因此整个网络中最多有\(n-1\)条阻塞流, \(n\)为网络中顶点的数量。高度标号\(G_L\)可以在\(O(E)\)的时间复杂度内用[BFS构建](../Page/广度优先搜索.md "wikilink")，一条阻塞流可以在\(O(VE)\)的复杂度内构建。因此，算法的时间复杂度为\(O(V^2 E)\).

使用一种叫做[动态树的数据结构](https://zh.wikipedia.org/wiki/动态树 "wikilink")，找到阻塞流的时间复杂度可以降到\(O(E \log V)\)，此时Dinic算法的复杂度可以降到\(O(VE \log V)\).

### 特殊情况

在具有单位容量的网络中，Dinic算法可以在更短的时间内输出结果。每条阻塞流可以在\(O(E)\)的时间内构建，并且阶段（phases）的数量不超过\(O(\sqrt{E})\)或\(O(V^{2/3})\)。此时算法的复杂度为\(O(\min\{V^{2/3}, E^{1/2}\}E)\)。\[4\]

在[二分图](../Page/二分图.md "wikilink")匹配问题的网络中，阶段的数量不超过\(O(\sqrt{V})\)，算法的时间复杂度不超过\(O(\sqrt{V} E)\)。这种算法又被叫做[Hopcroft-Karp算法](https://zh.wikipedia.org/wiki/Hopcroft-Karp算法 "wikilink")。更普遍的情况是，这种复杂度对*unit网络* — 网络中的顶点要么与源点相连，要么与汇点相连，要么是一个顶点的单一外向边，并且所有的容量限制都是整数。

## 参考文献

## 参见

[网络流](../Page/网络流.md "wikilink")

[Ford–Fulkerson算法](../Page/Ford–Fulkerson算法.md "wikilink")

[Category:图算法](https://zh.wikipedia.org/wiki/Category:图算法 "wikilink") [Category:網絡流](https://zh.wikipedia.org/wiki/Category:網絡流 "wikilink")

1.
2.
3.
4.