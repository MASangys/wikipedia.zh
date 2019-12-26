在[理論計算機科學](../Page/理論計算機科學.md "wikilink")中，**CAP定理**（CAP theorem），又被稱作**布魯爾定理**（Brewer's theorem），它指出對於一個[分布式计算](../Page/分布式计算.md "wikilink")系統來說，不可能同時滿足以下三點：\[1\]\[2\]

  - 一致性（**C**onsistency） （等同于所有节点访问同一份最新的数据副本）

  - [可用性](https://zh.wikipedia.org/wiki/可用性 "wikilink")（**A**vailability）（每次请求都能获取到非错的响应——但是不保证获取的数据为最新数据）

  - （**P**artition tolerance）（以实际效果而言，分区相当于对通信的时限要求。系统如果不能在时限内达成数据一致性，就意味着发生了分区的情况，必须就当前操作在C和A之间做出选择\[3\]。）

根據定理，分佈式系統只能滿足三項中的兩項而不可能滿足全部三項\[4\]。理解CAP理论的最简单方式是想象两个节点分处分区两侧。允许至少一个节点更新状态会导致数据不一致，即丧失了C性质。如果为了保证数据一致性，将分区一侧的节点设置为不可用，那么又丧失了A性质。除非两个节点可以互相通信，才能既保证C又保证A，这又会导致丧失P性质。

## 歷史

這個定理起源於[加州大學柏克萊分校](https://zh.wikipedia.org/wiki/加州大學柏克萊分校 "wikilink")（University of California, Berkeley）的計算機科學家[埃里克·布鲁尔](../Page/埃里克·布鲁尔.md "wikilink")在2000年的（PODC）上提出的一個[猜想](../Page/猜想.md "wikilink")。\[5\] 在2002年，[麻省理工学院](../Page/麻省理工学院.md "wikilink")（[MIT](../Page/麻省理工学院.md "wikilink")）的和發表了布魯爾猜想的證明，使之成爲一個[定理](../Page/定理.md "wikilink")。\[6\]

吉尔伯特和林奇证明的CAP定理比布鲁尔设想的某种程度上更加狭义。定理讨论了在两个互相矛盾的请求到达彼此连接不通的两个不同的分布式节点的时候的处理方案。

## 参考文献

## 外部連結

  - ["Problems with CAP, and Yahoo's little known NoSQL system"](http://dbmsmusings.blogspot.com/2010/04/problems-with-cap-and-yahoos-little.html) by [Daniel Abadi](http://www.cs.yale.edu/homes/dna/)
  - ["CAP equivalent for analytics"](http://bigdatacraft.com/archives/135)
  - ["Consistency Models in Non-Relational Databases"](https://web.archive.org/web/20121105175653/http://dbpedias.com/wiki/NoSQL%3AConsistency_Models_in_Non-Relational_Databases) by Guy Harrison : A good explanation of CAP Theorem, [Eventual consistency](https://zh.wikipedia.org/wiki/Eventual_consistency "wikilink") and how consistency problems can be handled in distributed environments.
  - ["A Simple introduction to CAP theorem"](http://ksat.me/a-plain-english-introduction-to-cap-theorem/)

## 參見

  -
{{-}}

[Category:分布式计算](https://zh.wikipedia.org/wiki/Category:分布式计算 "wikilink")

1.  Nancy Lynch and Seth Gilbert, [“Brewer's conjecture and the feasibility of consistent, available, partition-tolerant web services”](http://lpd.epfl.ch/sgilbert/pubs/BrewersConjecture-SigAct.pdf) , *ACM SIGACT News*, Volume 33 Issue 2 (2002), pg. 51-59.
2.  ["Brewer's CAP Theorem"](http://www.julianbrowne.com/article/viewer/brewers-cap-theorem), julianbrowne.com, Retrieved 02-Mar-2010
3.
4.  ["Brewers CAP theorem on distributed systems"](http://www.royans.net/arch/brewers-cap-theorem-on-distributed-systems/) , royans.net
5.  Eric Brewer, ["Towards Robust Distributed Systems"](http://www.cs.berkeley.edu/~brewer/cs262b-2004/PODC-keynote.pdf)
6.