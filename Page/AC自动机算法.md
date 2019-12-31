> 本文内容由[AC自动机算法](https://zh.wikipedia.org/wiki/AC自动机算法)转换而来。


在[计算机科学](../Page/计算机科学.md "wikilink")中，**Aho–Corasick算法**是由[Alfred V. Aho和Margaret](../Page/阿尔佛雷德·艾侯.md "wikilink") J.Corasick 发明的字符串搜索算法，\[1\]用于在输入的一串字符串中匹配有限组“字典”中的子串。它与普通字符串匹配的不同点在于同时与所有字典串进行匹配。算法均摊情况下具有近似于线性的[时间复杂度](../Page/时间复杂度.md "wikilink")，约为字符串的长度加所有匹配的数量。然而由于需要找到所有匹配数，如果每个子串互相匹配（如字典为a，aa，aaa，aaaa，输入的字符串为aaaa），算法的时间复杂度会近似于匹配的二次函数。

该算法主要依靠构造一个[有限状态机](../Page/有限状态机.md "wikilink")（类似于在一个[trie树中添加失配指针](../Page/Trie.md "wikilink")）来实现。这些额外的失配指针允许在查找字符串失败时进行回退（例如设Trie树的单词cat匹配失败，但是在Trie树中存在另一个单词cart，失配指针就会指向前缀ca），转向某前缀的其他分支，免于重复匹配前缀，提高算法效率。

当一个字典串集合是已知的(例如一个[计算机病毒](../Page/计算机病毒.md "wikilink")库), 就可以以离线方式先将自动机求出并储存以供日后使用，在这种情况下，算法的时间复杂度为输入字符串长度和匹配数量之和。

[UNIX](../Page/UNIX.md "wikilink")系统中的一个命令[fgrep就是以AC自动机算法作为基础实现的](../Page/Unix实用程序列表.md "wikilink")。

## 样例

设一个字典中有如下单词：{a,ab,bab,bc,bca,c,caa}.

下方的图是用AC自动机算法由该词典构造而成的一棵Trie树，其中每个节点都有一条从根节点到它的唯一路径，代表一个单词。

在这种数据结构中，字符串的每一个前缀都有一个节点来表示（详见[Trie](../Page/Trie.md "wikilink")）。所以如果（bca）在字典中，则会存在（bca），（bc），（b）和（）对应的节点。如果该节点表示的字符串在字典中存在，则该节点为一个蓝色节点，否则为一个灰色节点。

树中的黑色[有向边代表起点是终点的](https://zh.wikipedia.org/wiki/有向边 "wikilink")“父亲”（即起点对应字符串增加一个字符可得终点对应字符串），例如从（bc）有一条指向（bca）的黑色有向边。

树中的蓝色[有向边](https://zh.wikipedia.org/wiki/有向边 "wikilink")（后缀节点）代表终点对应字符串是起点对应字符串的最大严格后缀。例如对于一个节点（caa），它的严格后缀为（aa），（a）和（），其中在图中且最长的为（a），所以（caa）有一条指向（a）的蓝色有向边。一个节点的蓝色有向边可以在线性时间内通过重复遍历节点父亲节点的蓝色有向边直到横移节点（the traversing node）有一个属于目标节点前缀的孩子。

树中的绿色[有向边](https://zh.wikipedia.org/wiki/有向边 "wikilink")（字典后缀节点）代表终点是起点经过蓝色有向边到达的第一个蓝色节点（即字典中存在终点对应字符串）。例如（bca）有一条绿色边连向（a），因为（a）是（bca）通过蓝色有向边到达的第一个蓝色节点，路径为（bca）→（ca）→（a）。绿色有向边也可以在线性时间内通过遍历蓝色有向边直到找到一个蓝色节点，并用[记忆化的方法计算](https://zh.wikipedia.org/wiki/记忆化 "wikilink")。

[Ahocorasick.svg](https://zh.wikipedia.org/wiki/File:Ahocorasick.svg "fig:Ahocorasick.svg")

| 节点    | 是否在字典中 | 后缀节点（蓝色[有向边](https://zh.wikipedia.org/wiki/有向边 "wikilink")） | 字典后缀节点（绿色有向边） |
| ----- | ------ | ----------------------------------------------------------- | ------------- |
| ()    | –      |                                                             |               |
| (a)   | \+     | ()                                                          |               |
| (ab)  | \+     | (b)                                                         |               |
| (b)   | –      | ()                                                          |               |
| (ba)  | –      | (a)                                                         | (a)           |
| (bab) | \+     | (ab)                                                        | (ab)          |
| (bc)  | \+     | (c)                                                         | (c)           |
| (bca) | \+     | (ca)                                                        | (a)           |
| (c)   | \+     | ()                                                          |               |
| (ca)  | –      | (a)                                                         | (a)           |
| (caa) | \+     | (a)                                                         | (a)           |

字典 {a, ab, bab, bc, bca, c, caa}

在每一步中，算法先查找当前节点的“孩子节点”，如果没有找到匹配，查找它的後缀节点(suffix)的孩子，如果仍然没有，接着查找後缀节点的後缀节点的孩子, 如此循環, 直到根結點，如果到达根节点仍没有找到匹配则结束。

当算法查找到一个节点，则输出所有结束在当前位置的字典项。输出步骤为首先找到该节点的字典后缀，然后用递归的方式一直执行到节点没有字典前缀为止。同时，如果该节点为一个字典节点，则输出该节点本身。

输入后算法的执行步骤如下：

| 节点   | 剩余字符串  | 输出：结束位置   | 过渡                         | 输出        |
| ---- | ------ | --------- | -------------------------- | --------- |
| ()   | abccab |           | 从根开始                       |           |
| (a)  | bccab  | a:1       | ()→子节点(a)                  | 当前节点      |
| (ab) | ccab   | ab:2      | (a)→子节点(ab)                | 当前节点      |
| (bc) | cab    | bc:3, c:3 | (ab)→后缀节点(b)→子节点(bc)       | 当前节点，字典后缀 |
| (c)  | ab     | c:4       | (bc)→后缀节点(c)→后缀节点()→子节点(c) | 当前节点      |
| (ca) | b      | a:5       | (c)→(ca)                   | 字典后缀      |
| (ab) |        | ab:6      | (ca)→后缀节点(a)→子节点(ab)       | 当前节点      |

输入字符串的分析

## 参考来源

## 外部链接

  - [Set Matching and Aho–Corasick Algorithm](https://web.archive.org/web/20060413140215/http://www.cs.uku.fi/~kilpelai/BSA05/lectures/slides04.pdf), lecture slides by Pekka Kilpeläinen
  - [Aho–Corasick entry](http://www.nist.gov/dads/HTML/ahoCorasick.html) in NIST's [Dictionary of Algorithms and Data Structures](https://zh.wikipedia.org/wiki/Dictionary_of_Algorithms_and_Data_Structures "wikilink")
  - [Aho-Corasick implementation in C++](https://github.com/bigdatadev/aho_corasick)
  - [Aho-Corasick implementation in Go](https://github.com/iohub/Ahocorasick)

[Category:树结构](https://zh.wikipedia.org/wiki/Category:树结构 "wikilink") [Category:字符串匹配算法](https://zh.wikipedia.org/wiki/Category:字符串匹配算法 "wikilink")

1.