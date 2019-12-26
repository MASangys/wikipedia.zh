**A\*搜索算法**（A\* search algorithm）是一種在圖形平面上，有多個[節點的](https://zh.wikipedia.org/wiki/節點 "wikilink")[路徑](https://zh.wikipedia.org/wiki/路径 "wikilink")，求出最低通過[成本](../Page/成本.md "wikilink")的[演算法](../Page/算法.md "wikilink")。常用於遊戲中的NPC的移動計算，或[网络游戏](../Page/网络游戏.md "wikilink")的BOT的移動計算上。

该算法综合了和[Dijkstra算法的优点](https://zh.wikipedia.org/wiki/Dijkstra算法 "wikilink")：在进行启发式搜索提高算法效率的同时，可以保证找到一条最优路径（基于评估函数）。

在此算法中，如果以\(g(n)\)表示从起点到任意顶点\(n\)的实际距离，\(h(n)\)表示任意顶点\(n\)到目标顶点的估算距离（根据所采用的评估函数的不同而变化），那么A\*算法的估算函数为：

\[f(n) = g(n) + h(n)\]

这个公式遵循以下特性：

  - 如果\(g(n)\)为0，即只计算任意顶点\(n\)到目标的评估函数\(h(n)\)，而不计算起点到顶点\(n\)的距离，则算法转化为使用贪心策略的，速度最快，但可能得不出最优解；
  - 如果\(h(n)\)不大于顶点\(n\)到目標[頂點的實際距離](../Page/顶点_\(图论\).md "wikilink")，则一定可以求出最优解，而且\(h(n)\)越小，需要计算的节点越多，算法效率越低，常见的评估函数有——[欧几里得距离](https://zh.wikipedia.org/wiki/欧几里得距离 "wikilink")、[曼哈顿距离](https://zh.wikipedia.org/wiki/曼哈顿距离 "wikilink")、[切比雪夫距离](../Page/切比雪夫距离.md "wikilink")；
  - 如果\(h(n)\)为0，即只需求出起点到任意顶点\(n\)的最短路径\(g(n)\)，而不计算任何评估函数\(h(n)\)，则转化为[单源最短路径问题](https://zh.wikipedia.org/wiki/单源最短路径 "wikilink")，即[Dijkstra算法](https://zh.wikipedia.org/wiki/Dijkstra算法 "wikilink")，此时需要计算最多的顶点；

## 虛擬碼

``` matlab
//Matlab語言
 function A*(start,goal)
     closedset := the empty set                 //已经被估算的節點集合
     openset := set containing the initial node //將要被估算的節點集合，初始只包含start
     came_from := empty map
     g_score[start] := 0                        //g(n)
     h_score[start] := heuristic_estimate_of_distance(start, goal)    //通過估計函數 估計h(start)
     f_score[start] := h_score[start]            //f(n)=h(n)+g(n)，由於g(n)=0，所以省略
     while openset is not empty                 //當將被估算的節點存在時，執行循環
         x := the node in openset having the lowest f_score[] value   //在將被估計的集合中找到f(x)最小的節點
         if x = goal            //若x為終點，執行
             return reconstruct_path(came_from,goal)   //返回到x的最佳路徑
         remove x from openset      //將x節點從將被估算的節點中刪除
         add x to closedset      //將x節點插入已經被估算的節點
         for each y in neighbor_nodes(x)  //循環遍歷與x相鄰節點
             if y in closedset           //若y已被估值，跳過
                 continue
             tentative_g_score := g_score[x] + dist_between(x,y)    //從起點到節點y的距離

             if y not in openset          //若y不是將被估算的節點
                 tentative_is_better := true     //暫時判斷為更好
             elseif tentative_g_score < g_score[y]         //如果起點到y的距離小於y的實際距離
                 tentative_is_better := true         //暫時判斷為更好
             else
                 tentative_is_better := false           //否則判斷為更差
             if tentative_is_better = true            //如果判斷為更好
                 came_from[y] := x                  //將y設為x的子節點
                 g_score[y] := tentative_g_score    //更新y到原點的距離
                 h_score[y] := heuristic_estimate_of_distance(y, goal) //估計y到終點的距離
                 f_score[y] := g_score[y] + h_score[y]
                 add y to openset         //將y插入將被估算的節點中
     return failure

 function reconstruct_path(came_from,current_node)
     if came_from[current_node] is set
         p = reconstruct_path(came_from,came_from[current_node])
         return (p + current_node)
     else
         return current_node
```

## 相關連結

  - [寻路](https://zh.wikipedia.org/wiki/寻路 "wikilink")
  - [广度优先搜索](../Page/广度优先搜索.md "wikilink")
  - [深度优先搜索](../Page/深度优先搜索.md "wikilink")

## 外部連結

  - [A\* 演算法簡介 (A\* Algorithm Brief)](http://blog.minstrel.idv.tw/2004/12/star-algorithm.html)

[Category:图算法](https://zh.wikipedia.org/wiki/Category:图算法 "wikilink") [Category:路由算法](https://zh.wikipedia.org/wiki/Category:路由算法 "wikilink") [Category:搜尋演算法](https://zh.wikipedia.org/wiki/Category:搜尋演算法 "wikilink") [Category:组合优化](https://zh.wikipedia.org/wiki/Category:组合优化 "wikilink") [Category:游戏人工智能](https://zh.wikipedia.org/wiki/Category:游戏人工智能 "wikilink")