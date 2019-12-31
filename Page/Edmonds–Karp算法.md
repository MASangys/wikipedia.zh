> 本文内容由[Edmonds–Karp算法](https://zh.wikipedia.org/wiki/Edmonds–Karp算法)转换而来。


[计算机科学](../Page/计算机科学.md "wikilink")中, Edmonds–Karp算法通过实现[Ford–Fulkerson算法](../Page/Ford–Fulkerson算法.md "wikilink")来计算网络中的最大流，其时间复杂度为\(O(VE^2)\)。该算法由Yefim (Chaim) Dinic 在1970年最先提出并由Jack Edmonds和[理察·卡普在](https://zh.wikipedia.org/wiki/理察·卡普 "wikilink")1972年独立发表。\[1\]

## C++實作

以下是关于 Edmonds-Karp 算法的 C++ 语言描述：

``` c++
struct Main {
    struct Edge {
        int u, v, Capacity, Flow;

        Edge (int u, int v, int Capacity, int Flow) :
            u(u), v(v), Capacity(Capacity), Flow(Flow) {}
    };

    struct Edmonds_Karp {
        vector<Edge> Edges;
        vector<int> Graph[MAXN]; // 保存下标
        int n,
            Augment[MAXN], Previous[MAXN];
            // 当起点到 Augment[i] 的可改进量；

        void Initialise(int n)
        {
            for (int i = 0; i < n; ++i)
                G[i].clear();

            Edges.clear();
        }

        void Add(int u, int v, int Capacity)
        {
            Edges.push_back(Edge(u, v, Capacity, 0));
            Edges.push_back(Edge(v, u, 0, 0));

            int m = Edges.size() - 1;

            Graph[u].push_back(m - 1);
            Graph[v].push_back(m);
        }
    };

    int MaxFlow(int s, int t)
    {
        int FlowSum = 0;
        while (1) {
            memset(Augment, 0, sizeof Augment);

            queue<int> Travel;
            Travel.push(s);
            Augment[s] = INT_MAX;

            while (!Travel.empty()) {
                int From = Travel.front();
                Travel.pop();

                for (int i = 0; i < Graph[From].size(); ++i) {
                    Edge &Temp = Edges[Graph[From][i]];

                    if (!Augment[Temp.v] && Temp.Capacity > Temp.Flow) {
                        Previous[Temp.v] = Graph[From][i];
                        Augment[Temp.v] = min(Augment[From], Temp.Capacity - Temp.Flow);

                        Travel.push(Temp.v);
                    }
                }

                if (Augment[t]) break;
            }

            if (!Augment[t]) break;

            for (int i = t; i != s; i = Edges[Previous[i]].From) {
                Edges[Previous[i]].Flow += Augment[t];
                Edges[Previous[i] ^ 1].Flow -= Augment[t];
            }

            FlowSum += Augment[t];
        }

        return flow;
    }


    Main(void) {}
};
```

## 参考资料

## 参见

[Ford–Fulkerson算法](../Page/Ford–Fulkerson算法.md "wikilink")

[Dinic算法](../Page/Dinic算法.md "wikilink")

[网络流](../Page/网络流.md "wikilink")

[Category:网络流](https://zh.wikipedia.org/wiki/Category:网络流 "wikilink") [Category:图算法](https://zh.wikipedia.org/wiki/Category:图算法 "wikilink")

1.