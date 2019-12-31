> 本文内容由[NewSQL](https://zh.wikipedia.org/wiki/NewSQL)转换而来。


**NewSQL**是一类[关系](../Page/关系数据库.md "wikilink")[数据库](../Page/数据库.md "wikilink")，它寻求为[線上交易處理](https://zh.wikipedia.org/wiki/線上交易處理 "wikilink")（OLTP）工作提供[NoSQL](../Page/NoSQL.md "wikilink")系统的可扩展性，同时维护传统数据库系统的[ACID](../Page/ACID.md "wikilink")保证。\[1\]\[2\]\[3\]\[4\]

许多处理重要数据的企业系统（例如，财务和订单处理系统）对于常规的关系数据库而言太大了，但是具有[事务性和一致性要求](../Page/数据库事务.md "wikilink")，这对于NoSQL系统是不切实际的。\[5\]\[6\] 这些组织以前可用的唯一选择是购买功能更强大的计算机，或开发可通过常规[DBMS分发请求的定制](../Page/数据库.md "wikilink")[中间件](../Page/中间件.md "wikilink")。这两种方法都具有高成本或高开发成本的特点。NewSQL系统试图解决这方面的冲突。

## 历史

451集团分析师Matthew Aslett在2011年的一篇研究论文中首次使用了这个词，论文讨论了新一代数据库管理系统的兴起。\[7\] [H-Store](https://zh.wikipedia.org/wiki/H-Store "wikilink")系统就是最早的NewSQL系统之一。\[8\]\[9\]

## 应用

典型应用的特点是[OLTP事务量大](https://zh.wikipedia.org/wiki/線上交易處理 "wikilink")。OLTP事务

  - 短期（即没有用户交互）
  - 每个事务都接触少量的数据
  - 使用索引查找（无表扫描）
  - 表单数量少（使用不同参数的少量查询）。<ref>

</ref>

不过，有些支持（HTAP）应用。这些系统通过省略重量级或[并发控制](../Page/并发控制.md "wikilink")来提高性能和可扩展性。\[10\]

## 功能

NewSQL数据库解决方案的两个共同特点是，它们支持NoSQL数据库的在线可扩展性和以[SQL](../Page/SQL.md "wikilink")为主要接口的[关系数据模型](../Page/关系模型.md "wikilink")（包括ACID一致性）。\[11\]

NewSQL系统可以大致分为三类：\[12\]\[13\]

### 新架构

NewSQL系统采用多种内部架构。一些系统采用节点的集群，其中每个节点管理数据的子集。它们包括一些组件，比如分布式查询并发控制、流控制和分布式查询处理。

### SQL引擎

第二类是针对[SQL](../Page/SQL.md "wikilink")优化的。这些系统提供了与SQL相同的编程接口，但比内置引擎更具可伸缩性。

### 透明切片

这些系统使用[Raft](../Page/Raft.md "wikilink")或[Paxos一致性算法在多个节点上自动分割数据库](../Page/Paxos算法.md "wikilink")。

## 参见

  -
  -
## 参考文献

{{-}}

[Category:NewSQL](https://zh.wikipedia.org/wiki/Category:NewSQL "wikilink") [Category:数据管理](https://zh.wikipedia.org/wiki/Category:数据管理 "wikilink") [Category:分布式数据存储](https://zh.wikipedia.org/wiki/Category:分布式数据存储 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.