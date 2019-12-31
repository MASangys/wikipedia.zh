> 本文内容由[AOE网](https://zh.wikipedia.org/wiki/AOE网)转换而来。


**AOE网**（Activity On Edge）即边表示[活动的网](https://zh.wikipedia.org/wiki/活动 "wikilink")，是一个带权的[有向无环图](https://zh.wikipedia.org/wiki/有向无环图 "wikilink")，其中[顶点表示](../Page/顶点_\(图论\).md "wikilink")[事件](https://zh.wikipedia.org/wiki/事件 "wikilink")（Event），每个事件表示在它之前的活动已经完成，在它之后的活动可以开始，[弧](../Page/弧.md "wikilink")表示活动，[权表示活动持续的时间](https://zh.wikipedia.org/wiki/权 "wikilink")。AOE网可用来估算[工程的完成时间](https://zh.wikipedia.org/wiki/工程 "wikilink")。由于整个工程只有一个开始点和一个完成点，故在正常的情况（无环）下，网中只有一个[入度为零的点](https://zh.wikipedia.org/wiki/入度 "wikilink")（[源点](https://zh.wikipedia.org/wiki/源点 "wikilink")）和一个[出度为零的点](https://zh.wikipedia.org/wiki/出度 "wikilink")（[汇点](https://zh.wikipedia.org/wiki/汇点 "wikilink")）。

## AOE网有待研究的问题

1.  完成整项工程至少需要多少时间？
2.  哪些活动是影响工程进度的关键？

由于在AOE网中有些活动可以[并行地进行](https://zh.wikipedia.org/wiki/并行 "wikilink")，所以完成工程的最短时间是从开始点到完成点的最长路径的长度（[路径上各活动持续时间之和](https://zh.wikipedia.org/wiki/路径 "wikilink")）。路径长度最长的路径叫做[关键路径](../Page/关键路径.md "wikilink")。假设开始点是\(v_1\)，从\(v_1\)到\(v_i\)的最长路径长度叫做事件\(v_i\)的**最早发生时间**，这个时间决定了所有以\(v_i\)为尾的[弧](../Page/弧.md "wikilink")所表示的活动的**最早开始时间**。用e(i)表示活动\(a_i\)的最早开始时间，l(i)为一个活动的**最迟开始时间**，这是在不推迟整个工程完成的前提下，活动\(a_i\)最迟必须开始进行的时间。两者之差l(i)-e(i)意味着完成活动\(a_i\)的**时间余量**。l(i)=e(i)的活动叫做**关键活动**。关键路径上的所有活动都是**关键活动**，提前完成**非关键活动**（不在关键路径的活动）并不能加快工程的进度。为了求得AOE网中活动的e(i)和l(i)，首先应求得事件的最早发生时间ve(j)和最迟发生时间vl(j)。如果活动\(a_i\)由弧\<j, k\>表示，其持续时间记为dut(\<j, k\>)，则有：e(i) = ve(j), l(i) = vl(k) - dut(\<j, k\>)。求ve(j)和vl(j)需分两步进行：

1.  从ve(0)=0开始向前递推，其中T是所有以第j个顶点为头的弧的集合。

\(ve(j) = Max \left \{ ve(i) + dut(<i,j>) \right \} \quad <i,j> \in T, j=1,2,...n\)

1.  从vl(n-1)=ve(n-1)起向后递推，其中S是所有以第i个顶点为尾的弧的集合。

\(vl(i) = Min \left \{ vl(j) - dut(<i,j>) \right \} \quad <i,j> \in S, i=n-2,n-3,...0\)

活动\(a_i\)的**最早开始时间**e\[i\]

  - 若活动\(a_i\)是由弧\<\(v_i\),\(v_j\)\>表示，根据AOE网的性质，只有事件\(v_i\)发生了，活动\(a_i\)才能开始。也就是说，活动\(a_i\)的最早开始时间应等于事件\(v_i\)的最早发生时间。因此，有：e\[i\]=ve\[i\]

活动\(a_i\)的**最晚开始时间**l\[i\]

  - 活动\(a_i\)的最晚开始时间指，在不推迟整个工程完成日期的前提下，必须开始的最晚时间。若 由弧\< \(v_i\),\(v_j\)\>\>表示，则\(a_i\)的最晚开始时间要保证事件\(v_j\)的最迟发生时间不拖后。因此，应该有：l\[i\]=vl\[j\]-dut(\<\(v_i\),\(v_j\)\>)

由此得到求**关键路径**的算法：

1.  输入e条[弧](../Page/弧.md "wikilink")\<j, k\>，建立AOE网的存储结构；
2.  从[源点出发](https://zh.wikipedia.org/wiki/源点 "wikilink")，令ve\[0\]=0，按[拓扑顺序求其余各](https://zh.wikipedia.org/wiki/拓扑顺序 "wikilink")[顶点的最早发生时间ve](../Page/顶点_\(图论\).md "wikilink")\[i\]（\(1 \leq i \leq n-1\)）。如果得到的拓扑有序序列中顶点个数小于网中顶点数n，则说明网中存在环，不能求关键路径，算法终止，否则转到步骤（3）；
3.  从[汇点vn出发](https://zh.wikipedia.org/wiki/汇点 "wikilink")，令vl\[n-1\]=ve\[n-1\]，按[逆拓扑顺序求其余各顶点的最迟发生时间vl](https://zh.wikipedia.org/wiki/逆拓扑顺序 "wikilink")\[i\]（\(n-2 \geq i \geq 2\)）；
4.  根据各[顶点的ve和vl值](../Page/顶点_\(图论\).md "wikilink")，求每条弧s的最早开始时间e(s)和最迟开始时间l(s)。若某[弧](../Page/弧.md "wikilink")满足条件e(s)=l(s)，则为关键活动。

[Category:数据结构](https://zh.wikipedia.org/wiki/Category:数据结构 "wikilink")