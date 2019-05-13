**Alpha-beta剪枝**是一种搜索[算法](../Page/算法.md "wikilink")，用以减少[极小化极大算法（Minimax算法）搜索树的节点数](../Page/极小化极大算法.md "wikilink")。这是一种对抗性搜索算法，主要应用于机器游玩的二人游戏（如[井字棋](../Page/井字棋.md "wikilink")、[象棋](../Page/象棋.md "wikilink")、[围棋](../Page/围棋.md "wikilink")）。当算法评估出某策略的后续走法比之前策略的还差时，就会停止计算该策略的后续发展。该算法和极小化极大算法所得结论相同，但剪去了不影响最终决定的分枝\[1\]。

## 历史

Allen Newell和Herbert A. Simon在1958年，使用了[John
McCarthy所谓的](../Page/约翰·麦卡锡.md "wikilink")“近似”alpha-beta算法\[2\]，此算法当时“应已重新改造过多次”\[3\]。Arthur
Samuel有一个早期版本，同时Richards、Hart、Levine和/或Edwards在美国分别独立发现了alpha-beta\[4\]。McCarthy在1956年达特默思会议上提出了相似理念，并在1961年建议给他的一群学生，其中包括MIT的Alan
Kotok\[5\]。Alexander Brudno独立发现了alpha-beta算法，并在1963年发布成果\[6\]。[Donald
Knuth和Ronald](../Page/高德纳.md "wikilink") W.
Moore在1975年优化了算法\[7\]\[8\]，Judea
Pearl在1982年证明了其最优性\[9\]。

## 对原版极小化极大算法的改进

Alpha-beta的优点是减少搜索树的分枝，将搜索时间用在“更有希望”的子树上，继而提升搜索深度。该算法和极小化极大算法一样，都是分支限界类算法。若节点搜索顺序达到最优化或近似最优化（将最佳选择排在各节点首位），则同样时间内搜索深度可达极小化极大算法的两倍多。

在（平均或恒定）分枝因子为*b*，搜索深度为*d*层的情况下，要评估的最大（即招法排序最差时）叶节点数目为[*O*](../Page/大O符号.md "wikilink")(*b*\**b*\*...\**b*)
=
*O*(*b*<sup>*d*</sup>)——即和简单极小化极大搜索一样。若招法排序最优（即始终优先搜索最佳招法），则需要评估的最大叶节点数目按层数奇偶性，分别约为*O*(*b*\*1\**b*\*1\*...\**b*)和*O*(*b*\*1\**b*\*1\*...\*1)（或*O*(*b*<sup>*d*/2</sup>)
=
*O*(√*b*<sup>*d*</sup>)）。其中层数为偶数时，搜索因子相当于减少了其[平方根](../Page/平方根.md "wikilink")，等于能以同深度搜索两次\[10\]。*b*\*1\**b*\*1\*...意义为，对第一名玩家必须搜索全部招法找到最佳招式，但对于它们，只用将第二名玩家的最佳招法截断——alpha-beta确保无需考虑第二名玩家的其他招法。但因节点生成顺序随机，实际需要评估的节点平均约为*O*(*b*<sup>3*d*/4</sup>)\[11\]。

一般在alpha-beta中，子树会由先手方优势或后手方优势暂时占据主导。若招式排序错误，这一优势会多次切换，每次让效率下降。随着层数深入，局面数量会呈指数性增长，因此排序早期招式价值很大。尽管改善任意深度的排序，都以能指数性减少总搜索局面，但排序临近根节点深度的全部局面相对经济。在实践中，招法排序常由早期、小型搜索决定，如通过[迭代加深](../Page/迭代加深深度优先搜索.md "wikilink")。

算法使用两个值alpha和beta，分别代表大分玩家放心的最高分，以及小分玩家放心的最低分。alpha和beta的初始值分别为正负无穷大，即双玩家都以可能的最低分开始游戏。在选择某节点的特定分枝后，可能发生小分玩家放心的最小分小于大分玩家放心的最大分（beta
\<= alpha）。这种情况下，父节点不应选择这个节点，否则父节点分数会降低，因此该分枝的其他节点没有必要继续探索。

## 伪代码

下面为一有限可靠性版本的Alpha-beta剪枝的伪代码\[12\]：

`01 `**`function`**` alphabeta(node, depth, α, β, maximizingPlayer) `*`//``
 ``node``   ``=``   ``节点，depth``   ``=``   ``深度，maximizingPlayer``
 ``=``   ``大分玩家`*
`02      `**`if`**` depth = 0 `**`or`**` node是终端节点`
`03          `**`return`**` 节点的启发值`
`04      `**`if`**` maximizingPlayer`
`05          v := -∞`
`06          `**`for`**` 每个子节点`
`07              v := max(v, alphabeta(child, depth - 1, α, β, FALSE)) `*`//``
 ``child``   ``=``   ``子节点`*
`08              α := max(α, v)`
`09              `**`if`**` β ≤ α`
`10                  `**`break`**` `*`//``   ``β裁剪`*
`11          `**`return`**` v`
`12      `**`else`**
`13          v := ∞`
`14          `**`for`**` 每个子节点`
`15              v := min(v, alphabeta(child, depth - 1, α, β, TRUE))`
`16              β := min(β, v)`
`17              `**`if`**` β ≤ α`
`18                  `**`break`**` `*`//``   ``α裁剪`*
`19          `**`return`**` v`

***`(*``   ``初始调用``   ``*)`***
`alphabeta(origin, depth, -`[`∞`](../Page/Infinity.md "wikilink")`, +`[`∞`](../Page/Infinity.md "wikilink")`, TRUE) `*`//``
 ``origin``   ``=``   ``初始节点`*

在这个有限可靠性的alpha-beta中，当v超出调用参数α和β构成的集合时（v \< α或v \>
β），alphabeta函数返回值v。而与此相对，强化的有限可靠性alpha-beta限制函数返回在α与β包括范围中的值。

## 参考文献

  -
  - [Judea Pearl](../Page/Judea_Pearl.md "wikilink"), *Heuristics*,
    Addison-Wesley, 1984

  -

<references/>

## 外部链接

  - <http://www.emunix.emich.edu/~evett/AI/AlphaBeta_movie/sld001.htm>
  - <http://sern.ucalgary.ca/courses/CPSC/533/W99/presentations/L1_5B_McCullough_Melnyk/>
  - <http://sern.ucalgary.ca/courses/CPSC/533/W99/presentations/L2_5B_Lima_Neitz/search.html>
  - <https://web.archive.org/web/20021223103359/http://www.maths.nott.ac.uk/personal/anw/G13GAM/alphabet.html>
  - <https://web.archive.org/web/20041123061044/http://chess.verhelst.org/search.html>
  - <http://www.frayn.net/beowulf/index.html>
  - <http://hal.inria.fr/docs/00/12/15/16/PDF/RR-6062.pdf>
  - [Minimax (with or without alpha–beta pruning) algorithm
    visualization - game tree solving (Java Applet), for balance or
    off-balance trees](http://ksquared.de/gamevisual/launch.php?agent=2)
  - [Demonstration/animation of minimax game search algorithm with
    alpha–beta pruning (using html5, canvas, javascript,
    css)](http://homepage.ufp.pt/jtorres/ensino/ia/alfabeta.html)
  - [Java implementation used in a Checkers
    Game](https://github.com/ykaragol/checkersmaster/blob/master/CheckersMaster/src/checkers/algorithm/AlphaBetaAlgorithm.java)

[Category:搜尋演算法](https://zh.wikipedia.org/wiki/Category:搜尋演算法 "wikilink")
[Category:图算法](https://zh.wikipedia.org/wiki/Category:图算法 "wikilink")

1.

2.

3.

4.

5.

6.

7.  \*  Reprinted as Chapter 9 in

8.

9.

10.

11.
12.