**Kosaraju算法**（也被称为**Kosaraju–Sharir算法**）是一个在[线性时间内寻找一个](../Page/线性时间.md "wikilink")[有向图中的](../Page/图_\(数学\).md "wikilink")[强连通分量的算法](../Page/强连通分量.md "wikilink")。[阿尔佛雷德·艾侯](../Page/阿尔佛雷德·艾侯.md "wikilink")，[约翰·霍普克洛夫特和](../Page/约翰·霍普克洛夫特.md "wikilink")相信该算法来自于1978年撰写的一篇未发表论文之中\[1\]。也独立发现了该算法并于1981年将其发表\[2\]。该算法巧妙地利用了一个定理：「一个图的反向图和原图具有一样的强连通分量」。

## 简介

该算法主要用于枚举图中每一个强连通分量内的所有顶点。该算法可由以下四部分组成\[3\]：

1.  对有向图\(G\)取逆，得到\(G\)的反向图\(G^R\)
2.  利用[深度优先搜索求出](../Page/深度优先搜索.md "wikilink")\(G^R\)的逆后排序
3.  对\(G\)按照上述逆后排序的序列进行深度优先搜索
4.  同一个深度优先搜索[递归子程序中访问的所有顶点都在同一个强连通分量内](../Page/递归_\(计算机科学\).md "wikilink")

### Java代码实现

``` java
public class KosarajuAlgorithm {
    private boolean[] marked;
    private int[] id;
    private int count=-1;
    private Stack<Integer> reversePostOrder;
    public KosarajuAlgorithm(Digraph G){
        //G.V()返回有向图G的边数
        marked=new boolean[G.V()];
        id=new int[G.V()];
        //G.reverse()返回的为G的反向图
        Digraph G_reverse=G.reverse();
        //本遍循环是将G的反向图的逆后序排列存储在reversePostOrder中
        for(int i=0;i<G_reverse.V();i++){
            if(!marked[i]){
                dfs(G_reverse,i);
            }
        }
        count=0;
        //按照G的反向图的逆后排序进行深度优先搜索
        for(int i:reversePostOrder){
            if(!marked[i]){
                dfs(G,i);
                count++;
            }
        }
    }
    //深度优先搜索
    public void dfs(Digraph G,int v){
        marked[v]=true;
        id[v]=count;
        for(int i:G.adj(v)){
            if(!marked[i]){
                dfs(G,i);
            }
        }
        reversePostOrder.push(v);
    }
}
```

## 复杂度

当图是使用[邻接表形式组建的](../Page/邻接表.md "wikilink")，Kosaraju算法需要对整张图进行了两次的完整的访问，每次访问与顶点数\(V\)和边数\(E\)之和\(V+E\)成正比，所以可以在线性时间\(O(V+E)\)内访问完成。该算法在实际操作中要比[Tarjan算法和](../Page/Tarjan算法.md "wikilink")要慢，这两种算法都只需要对图进行一次完整的访问。

当图是使用[邻接矩阵形式组建的](../Page/邻接矩阵.md "wikilink")，算法的时间复杂度为\(O(V^2)\)。

## 参考

## 文献及链接

  - [Micha Sharir.A strong connectivity algorithm and its applications
    to data flow analysis. *Computers and Mathematics with Applications*
    7(1):67–72,
    1981](http://www.sciencedirect.com/science/article/pii/0898122181900080)\]
  - [Kosaraju's的简要介绍与证明](http://lcm.csa.iisc.ernet.in/dsa/node171.html)

[Category:图算法](https://zh.wikipedia.org/wiki/Category:图算法 "wikilink")

1.  ,p222--p230
2.
3.  ，p379--p380