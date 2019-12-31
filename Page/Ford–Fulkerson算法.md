> 本文内容由[Ford–Fulkerson算法](https://zh.wikipedia.org/wiki/Ford–Fulkerson算法)转换而来。


**Ford–Fulkerson方法（Ford-Fulkerson method）**或 **Ford–Fulkerson算法（FFA）**是一类计算[网络流](../Page/网络流.md "wikilink")的[最大流的](../Page/最大流问题.md "wikilink")[贪心算法](../Page/贪心算法.md "wikilink")。 之所以称之为“方法”而不是“算法”，是因为它寻找增广路径的方式并不是完全确定的，而是有几种不同[时间复杂度](../Page/时间复杂度.md "wikilink")的实现方式\[1\]\[2\]它在1956年由[L.R. Ford, Jr.](https://zh.wikipedia.org/wiki/L.R._Ford,_Jr. "wikilink") 及 [D.R. Fulkerson](https://zh.wikipedia.org/wiki/D.R._Fulkerson "wikilink")\[3\]发表。“Ford–Fulkerson”这个名词通常也用于[Edmonds–Karp算法](../Page/Edmonds–Karp算法.md "wikilink")，这是一个特殊的Ford–Fulkerson算法实现。

算法的思想如下：只要有一条从源点（开始节点）到汇点（结束节点）的路径，在所有的边上都有可用容量，就沿着这条路径发送一个流。 然后再找到另一条路径，一直到网络中不存在这种路径为止。 一条有可用容量的路径被称为一个增广路径。

## 算法

设\(G(V,E)\)为一个图，并且为每条从\(u\)到\(v\)的边\((u,v)\)设置一个最大流量\(c(u,v)\)，并且初始化当前流量\(f(u,v)=0\)。下面是该算法每一步的实现：

  -
    {|

| **容量限制**: || \(\forall (u, v) \in E, f(u,v) \le c(u,v)\) || 每条边上的流都不能超出边的最大流量。 |- | **反向对称**: || \(\forall (u, v) \in E, f(u,v) = - f(v,u)\) || 从\(u\)到\(v\)的流量一定是从\(v\)到\(u\)的流量的相反数（见样例）。 |- | **流量守恒**: || \(\forall u \in V: u \neq s, u \neq t \Rightarrow \sum_{w \in V} f(u,w) = 0\) || 除非\(u\)是源点\(s\)或汇点\(t\)，一个节点的净流量为零。 |- | **f的值**: || \(\sum_{(s,u) \in E} f(s, u) = \sum_{(v,t) \in E} f(v, t)\) || 从源点\(s\)流出的流量一定等于汇点\(t\)接收的流量。 |- |}

这意味着每轮计算之后通过网络的都是一个流。我们定义**残留网络** \(G_f(V,E_f)\)是一个网络的未用流量\(c_f(u,v) = c(u,v) - f(u,v)\)。注意这种网络在从\(v\)到\(u\)的网络中同样有效，即使在原先的网络中不允许这种情况产生：如果\(f(u,v)>0\)且 \(c(v,u)=0\)，那么\(c_f(v,u)=c(v,u)-f(v,u)=f(u,v)>0\)。

**算法** Ford–Fulkerson

  -
    **输入** 给出一张边的容量为\(c\)的图\(G = (V,E)\), 源点\(s\)以及汇点\(t\)。
    **输出** 输出在网络\(f\)中从\(s\)到\(t\)的最大流。
    1.  对于图的每一条边\((u,v)\)，在开始时流量\(f(u,v) \leftarrow 0\)。
    2.  当在\(G_f\)中存在一条从\(s\)到\(t\)的路径\(p\)使对于每一条边\((u,v) \in p\)都有\(c_f(u,v) > 0\),：
        1.  找出\(c_f(p) = \min\{c_f(u,v) : (u,v) \in p\}\)
        2.  对于每一条边\((u,v) \in p\)
            1.  \(f(u,v) \leftarrow f(u,v) + c_f(p)\) (*在路径中“发送”流*)
            2.  \(f(v,u) \leftarrow f(v,u) - c_f(p)\) (*这个流有可能在之后被“发送”回来*)

步骤2中的路径可以用[广度优先搜索](../Page/广度优先搜索.md "wikilink")或[深度优先搜索](../Page/深度优先搜索.md "wikilink")在\(G_f(V,E_f)\)中找到。如果使用了[广度优先搜索](../Page/广度优先搜索.md "wikilink")，这个算法就可以被称为[Edmonds–Karp算法](../Page/Edmonds–Karp算法.md "wikilink")。

当步骤2中找不到可行路径时，\(s\)就无法在残留网络中到达\(t\)。设\(S\)是在残留网络\(s\)中可以到达的节点的集合，然后从\(S\)到\(V\)的其余部分的网络一方面等于我们找到的从\(s\)到\(t\)的所有流的总流量，另一方面所有这样的流量组成了一个上限。这说明我们找到的流是最大的。参见[最大流最小割定理](https://zh.wikipedia.org/wiki/最大流最小割定理 "wikilink")。

如果图\(G(V,E)\)有多个源点和汇点，可以按如下方法处理： 设\(T=\{t|t \text{为 目 标 点 }\}\)，\(S=\{s|s \text{为 源 点 }\}\)。 添加一个新源点\(s^*\)与所有源点有一条边\((s^*,s)\)相连，容量\(c(s^*,s)=d_s\;(d_s=\sum_{(s,u)\in E}c(s,u))\)。添加一个新汇点\(t^*\)与所有汇点\((t, t^*)\) 有一条边相连，容量\(c(t, t^*)=d_t\;(d_t=\sum_{(v,t)\in E}c(v,t))\)。然后执行Ford–Fulkerson算法。

同样的，如果节点\(u\)有通过限制\(d_u\)，可将这个节点用两个节点\(u_{in},u_{out}\)替换，用一条边\((u_{in},u_{out})\)相连，容量为\(c(u_{in},u_{out})=d_u\)。然后执行Ford–Fulkerson算法。

## 复杂度

算法通过添加找到的增广路径的流量增加总流量，当无法找到增广路径时，总流量就达到了最大。当流量是整数时，Ford–Fulkerson算法的运行时间为\(O(E f)\)（参见[大O符号](../Page/大O符号.md "wikilink")）, \(E\)图中的边数，\(f\)为最大流。 这是因为一条增广路径可以在\(O(E)\)的时间复杂度内找到，每轮算法执行后流量的增长至少为\(1\)。但是在极端情况下，算法有可能永远不会停止。

Ford–Fulkerson算法的一个特例是[Edmonds–Karp算法](../Page/Edmonds–Karp算法.md "wikilink")，时间复杂度为\(O(VE^2)\)。

## 样例

下面的样例演示了Ford-Fulkerson在一张有4个节点，源点为\(A\)，汇点为\(D\)的图中的第一轮计算。 这个例子显示了算法在最坏情况下的行为。在每一轮算法中，只有\(1\)的流量被发送至网络中。如果算法改用宽度优先搜索，那么只需要两轮计算。

| 路径          | 容量                                                                                                                                                                    | 网络                                                                                                                                   |
| ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| 原流          | [Ford-Fulkerson_example_0.svg](https://zh.wikipedia.org/wiki/File:Ford-Fulkerson_example_0.svg "fig:Ford-Fulkerson_example_0.svg")                                  |                                                                                                                                      |
| \(A,B,C,D\) | \(\begin{align}
  & \min(c_f(A,B), c_f(B,C), c_f(C,D)) \\
= & \min(c(A,B)-f(A,B) ,c(B,C)-f(B,C), c(C,D)-f(C,D)) \\
= & \min(1000-0, 1-0, 1000-0) = 1
\end{align}\)    | [Ford-Fulkerson_example_1.svg](https://zh.wikipedia.org/wiki/File:Ford-Fulkerson_example_1.svg "fig:Ford-Fulkerson_example_1.svg") |
| \(A,C,B,D\) | \(\begin{align}
  & \min(c_f(A,C), c_f(C,B), c_f(B,D)) \\
= & \min(c(A,C)-f(A,C), c(C,B)-f(C,B), c(B,D)-f(B,D)) \\
= & \min(1000-0, 0-(-1), 1000-0) = 1
\end{align}\) | [Ford-Fulkerson_example_2.svg](https://zh.wikipedia.org/wiki/File:Ford-Fulkerson_example_2.svg "fig:Ford-Fulkerson_example_2.svg") |
| 1998轮之后…    |                                                                                                                                                                       |                                                                                                                                      |
| 最终流         | [Ford-Fulkerson_example_final.svg](https://zh.wikipedia.org/wiki/File:Ford-Fulkerson_example_final.svg "fig:Ford-Fulkerson_example_final.svg")                      |                                                                                                                                      |

注意当找到路径\(A,C,B,D\)时，流是如何从\(C\)发送至\(B\)的。

## 无法终止算法的样例

[Ford-Fulkerson_forever.svg](https://zh.wikipedia.org/wiki/File:Ford-Fulkerson_forever.svg "fig:Ford-Fulkerson_forever.svg") 右图所示的网络中源点为\(s\)，汇点为\(t\)边\(e_1\)、\(e_2\)、\(e_3\)的容量为\(1\), \(r=(\sqrt{5}-1)/2\)和\(1\)，使\(r^2 = 1 - r\)。其它所有边的容量\(M \ge 2\)。 使用Ford-Fulkerson算法可找到三条增广路径，分别为\(p_1 = \{ s, v_4, v_3, v_2, v_1, t \}\)、\(p_2 = \{ s, v_2, v_3, v_4, t \}\)、\(p_3 = \{ s, v_1, v_2, v_3, t \}\).

| 步骤      | 增广路径                     | 发送流     | 剩余容量      |
| ------- | ------------------------ | ------- | --------- |
| \(e_1\) | \(e_2\)                  | \(e_3\) |           |
| 0       |                          |         | \(r^0=1\) |
| 1       | \(\{ s, v_2, v_3, t \}\) | \(1\)   | \(r^0\)   |
| 2       | \(p_1\)                  | \(r^1\) | \(r^2\)   |
| 3       | \(p_2\)                  | \(r^1\) | \(r^2\)   |
| 4       | \(p_1\)                  | \(r^2\) | \(0\)     |
| 5       | \(p_3\)                  | \(r^2\) | \(r^2\)   |

注意在步骤1和步骤5之后,边\(e_1\)、\(e_2\)、\(e_3\)的残留容量都可以表示为\(r^n\)、\(r^{n+1}\)或\(0\)，同时，对于一些特殊的\(n \in \mathbb{N}\)这意味着算法可以通过\(p_1\)、\(p_2\)、\(p_1\)与 \(p_3\)无限增广，并且残留容量总处于一个循环。在步骤5之后网络的流为\(1 + 2(r^1 + r^2)\)，如果继续用以上的算法增广，总的流将向\(\textstyle 1 + 2\sum_{i=1}^\infty r^i = 3 + 2r\)趋近，但最大流为\(2M + 1\)。在这个样例中，算法将永远不会停止，且结果也不会向实际的最大流趋近。\[4\]

## Python源码

``` python
class Edge(object):
    def __init__(self, u, v, w):
        self.source = u
        self.sink = v
        self.capacity = w
    def __repr__(self):
        return "%s->%s:%s" % (self.source, self.sink, self.capacity)

class FlowNetwork(object):
    def __init__(self):
        self.adj = {}
        self.flow = {}

    def add_vertex(self, vertex):
        self.adj[vertex] = []

    def get_edges(self, v):
        return self.adj[v]

    def add_edge(self, u, v, w=0):
        if u == v:
            raise ValueError("u == v")
        edge = Edge(u,v,w)
        redge = Edge(v,u,0)
        edge.redge = redge
        redge.redge = edge
        self.adj[u].append(edge)
        self.adj[v].append(redge)
        self.flow[edge] = 0
        self.flow[redge] = 0

    def find_path(self, source, sink, path):
        if source == sink:
            return path
        for edge in self.get_edges(source):
            residual = edge.capacity - self.flow[edge]
            if residual > 0 and edge not in path:
                result = self.find_path( edge.sink, sink, path + [edge])
                if result != None:
                    return result

    def max_flow(self, source, sink):
        path = self.find_path(source, sink, [])
        while path != None:
            residuals = [edge.capacity - self.flow[edge] for edge in path]
            flow = min(residuals)
            for edge in path:
                self.flow[edge] += flow
                self.flow[edge.redge] -= flow
            path = self.find_path(source, sink, [])
        return sum(self.flow[edge] for edge in self.get_edges(source))
```

### 使用样例

``` python
>>> g = FlowNetwork()
>>> [g.add_vertex(v) for v in "sopqrt"]
[None, None, None, None, None, None]
>>>
>>> g.add_edge('s','o',3)
>>> g.add_edge('s','p',3)
>>> g.add_edge('o','p',2)
>>> g.add_edge('o','q',3)
>>> g.add_edge('p','r',2)
>>> g.add_edge('r','t',3)
>>> g.add_edge('q','r',4)
>>> g.add_edge('q','t',2)
>>> print (g.max_flow('s','t'))
5
```

## 应用

二分图的最大匹配

最大不相交路径

## 参考文献

  -
  -
  -
[Category:图算法](https://zh.wikipedia.org/wiki/Category:图算法 "wikilink") [Category:網絡流](https://zh.wikipedia.org/wiki/Category:網絡流 "wikilink")

1.
2.
3.
4.