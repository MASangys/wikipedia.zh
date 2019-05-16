**NoSQL**是對不同於傳統的[關聯式資料庫的](https://zh.wikipedia.org/wiki/關聯式資料庫 "wikilink")[数据库管理系统的統稱](../Page/数据库管理系统.md "wikilink")。

兩者存在許多顯著的不同點，其中最重要的是NoSQL不使用SQL作為查詢語言。其數據存儲可以不需要固定的表格模式，也經常會避免使用SQL的[JOIN操作](https://zh.wikipedia.org/wiki/连接_\(SQL\) "wikilink")，一般有[水平可扩展性的特征](https://zh.wikipedia.org/wiki/水平可扩展性 "wikilink")。

## 发展历史

NoSQL一词最早出现于1998年，是Carlo Strozzi开发的一个轻量、开源、不提供SQL功能的关系数据库\[1\]。

2009年，Last.fm的Johan Oskarsson发起了一次关于分布式开源数据库的讨论\[2\]，来自Rackspace的Eric
Evans再次提出了NoSQL的概念，这时的NoSQL主要指非关系型、分布式、不提供[ACID的数据库设计模式](../Page/ACID.md "wikilink")。

2009年在亚特兰大举行的"no:sql(east)"讨论会是一个里程碑，其口号是"select fun, profit from
real_world where relational=false;"。因此，对NoSQL最普遍的解释是“非关聯型的”，强调Key-Value
Stores和文档数据库的优点，而不是单纯的反对RDBMS。

基于2014年的收入，NoSQL市场领先企业是[MarkLogic](https://zh.wikipedia.org/wiki/MarkLogic "wikilink")，[MongoDB和](../Page/MongoDB.md "wikilink")[Datastax](https://zh.wikipedia.org/wiki/Datastax "wikilink")\[3\]。基于2015年的人气排名，最受欢迎的NoSQL数据库是[MongoDB](../Page/MongoDB.md "wikilink")，[Apache
Cassandra和](https://zh.wikipedia.org/wiki/Apache_Cassandra "wikilink")[Redis](../Page/Redis.md "wikilink")\[4\]。

## 特点

当代典型的[關聯式資料庫在一些数据敏感的应用中表现了糟糕的性能](https://zh.wikipedia.org/wiki/關聯式資料庫 "wikilink")，例如为巨量文档建立索引、高流量网站的[网页服务](https://zh.wikipedia.org/wiki/网页服务 "wikilink")，以及发送[流式媒体](https://zh.wikipedia.org/wiki/流式媒体 "wikilink")\[5\]。关系型数据库的典型实现主要被调整用于执行规模小而读写频繁，或者大批量极少写访问的事务。

NoSQL的結構通常提供弱一致性的保證，如最終一致性，或交易僅限於單個的數據項。不過，有些系統，提供完整的[ACID保證在某些情況](../Page/ACID.md "wikilink")​​下，增加了補充中間件層（例如：[CloudTPS](https://zh.wikipedia.org/wiki/CloudTPS "wikilink")）\[6\]。有兩個成熟的系統有提供快照隔離的列存儲：像是Google基於過濾器系統的[BigTable](https://zh.wikipedia.org/wiki/BigTable "wikilink")\[7\]，和滑鐵盧大學开发的[HBase](https://zh.wikipedia.org/wiki/HBase "wikilink")\[8\]。這些系統，自主開發，使用類似的概念來實現多行（multi-row）分散式ACID交易的快照隔離（snapshot
isolation）保證為基礎列儲存，無需額外的資料管理開銷，中間件系統部署或維護，減少了中間件層。

少数NoSQL系统部署了分布式结构，通常使用[分散式雜湊表](../Page/分散式雜湊表.md "wikilink")（DHT）将数据以冗余方式保存在多台服务器上。依此，扩充系统时候添加服务器更容易，并且扩大了对服务器失效的承受能程度。\[9\]

## 分类

### 文档存储

| 名稱                                                                            | 語言                                                                                                      |
| ----------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| [BaseX](https://zh.wikipedia.org/wiki/BaseX "wikilink")                       | [XQuery](https://zh.wikipedia.org/wiki/XQuery "wikilink")，[Java](../Page/Java.md "wikilink")            |
| [CouchDB](https://zh.wikipedia.org/wiki/CouchDB "wikilink")                   | [Erlang](../Page/Erlang.md "wikilink")                                                                  |
| [eXist](https://zh.wikipedia.org/wiki/eXist "wikilink")                       | [XQuery](https://zh.wikipedia.org/wiki/XQuery "wikilink")                                               |
| [iBoxDB](https://zh.wikipedia.org/wiki/iBoxDB "wikilink")                     | [Java](../Page/Java.md "wikilink")，[C\#](https://zh.wikipedia.org/wiki/CSharp "wikilink")               |
| [Jackrabbit](https://zh.wikipedia.org/wiki/Jackrabbit "wikilink")             | [Java](../Page/Java.md "wikilink")                                                                      |
| [Lotus Notes](https://zh.wikipedia.org/wiki/Lotus_Notes "wikilink")           | [LotusScript](https://zh.wikipedia.org/wiki/LotusScript "wikilink")，[Java等](../Page/Java.md "wikilink") |
| [MarkLogic Server](https://zh.wikipedia.org/wiki/MarkLogic_Server "wikilink") | [XQuery](https://zh.wikipedia.org/wiki/XQuery "wikilink")                                               |
| [MongoDB](../Page/MongoDB.md "wikilink")                                      | [C++](../Page/C++.md "wikilink")                                                                        |
| RethinkDB                                                                     | [C++](../Page/C++.md "wikilink")                                                                        |
| [OrientDB](https://zh.wikipedia.org/wiki/OrientDB "wikilink")                 | [Java](../Page/Java.md "wikilink")                                                                      |
| [SimpleDB](https://zh.wikipedia.org/wiki/SimpleDB "wikilink")                 | [Erlang](../Page/Erlang.md "wikilink")                                                                  |
| [Terrastore](https://zh.wikipedia.org/wiki/Terrastore "wikilink")             | [Java](../Page/Java.md "wikilink")                                                                      |
| [ElasticSearch](https://zh.wikipedia.org/wiki/ElasticSearch "wikilink")       | [Java](../Page/Java.md "wikilink")                                                                      |
| [No2DB](https://zh.wikipedia.org/wiki/No2DB "wikilink")                       | [C\#](../Page/C♯.md "wikilink")                                                                         |

### 图数据库

| 名稱                                                                               | 語言                                                                   |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------- |
| [AllegroGraph](https://zh.wikipedia.org/wiki/AllegroGraph "wikilink")            | [SPARQL](../Page/SPARQL.md "wikilink")                               |
| [Sparksee](https://zh.wikipedia.org/wiki/Sparksee_\(graph_database\) "wikilink") | [Java](../Page/Java.md "wikilink") ， [C\#](../Page/C♯.md "wikilink") |
| [Neo4j](https://zh.wikipedia.org/wiki/Neo4j "wikilink")                          | [Java](../Page/Java.md "wikilink")                                   |
| [FlockDB](https://zh.wikipedia.org/wiki/FlockDB "wikilink")                      | [Scala](../Page/Scala.md "wikilink")                                 |
| [JanusGraph](https://zh.wikipedia.org/wiki/JanusGraph "wikilink")                | Java                                                                 |

### 鍵-值（key‐value）儲存

#### 最終一致性的鍵-值儲存

  - [Cassandra](../Page/Cassandra.md "wikilink")

  -
  -
  -
  - \[10\]

#### 架構性鍵-值储存

  -
  - InterSystem Globals\[11\]

### 主機式服務

#### Key/value硬盘存储

  - [BigTable](https://zh.wikipedia.org/wiki/BigTable "wikilink")

  -
  - [LevelDB](../Page/LevelDB.md "wikilink")

<!-- end list -->

  -
  -
  -
#### Key/value RAM存储

  -
  - [memcached](https://zh.wikipedia.org/wiki/memcached "wikilink")

  - [Citrusleaf
    database](https://zh.wikipedia.org/wiki/Citrusleaf_database "wikilink")

  -
  - [Redis](../Page/Redis.md "wikilink")

  -
#### Key-value基于Paxos算法的存储

  -
### 多数据库

  - [OpenQM](https://zh.wikipedia.org/wiki/OpenQM "wikilink")
  - [Rocket U2](https://zh.wikipedia.org/wiki/Rocket_U2 "wikilink")
  - Revelation Software's
    [OpenInsight](https://zh.wikipedia.org/wiki/OpenInsight "wikilink")
  - [Extensible Storage
    Engine](https://zh.wikipedia.org/wiki/Extensible_Storage_Engine "wikilink")（ESE/NT）

### 时序型数据库

| 名稱                                                                                  | 語言                                                |
| ----------------------------------------------------------------------------------- | ------------------------------------------------- |
| [Graphite](../Page/Graphite.md "wikilink")                                          | [Python](../Page/Python.md "wikilink")            |
| [InfluxDB](https://zh.wikipedia.org/wiki/InfluxDB "wikilink")                       | [Go](../Page/Go.md "wikilink")                    |
| [Informix TimeSeries](https://zh.wikipedia.org/wiki/Informix_TimeSeries "wikilink") | [Erlang](../Page/Erlang.md "wikilink")            |
| [OpenTSDB](https://zh.wikipedia.org/wiki/OpenTSDB "wikilink")                       | [Java](../Page/Java.md "wikilink")                |
| [RRDtool](https://zh.wikipedia.org/wiki/RRDtool "wikilink")                         | [C](https://zh.wikipedia.org/wiki/C语言 "wikilink") |

### 对象数据库

  - [Versant Object
    Database](https://zh.wikipedia.org/wiki/Versant_Object_Database "wikilink")
  - [db4o](https://zh.wikipedia.org/wiki/db4o "wikilink")
  - [GemStone/S](https://zh.wikipedia.org/wiki/Gemstone_\(database\) "wikilink")
  - [InterSystems
    Caché](https://zh.wikipedia.org/wiki/InterSystems_Caché "wikilink")
  - [JADE](https://zh.wikipedia.org/wiki/JADE_\(programming_language\) "wikilink")
  - [Objectivity/DB](https://zh.wikipedia.org/wiki/Objectivity/DB "wikilink")
  - [ZODB](https://zh.wikipedia.org/wiki/ZODB "wikilink")
  - [ObjectStore](https://zh.wikipedia.org/wiki/ObjectStore "wikilink")

### [列存储](https://zh.wikipedia.org/wiki/列存储 "wikilink")

  - [Cassandra](../Page/Cassandra.md "wikilink")
  - [HBase](https://zh.wikipedia.org/wiki/HBase "wikilink")
  - [Hypertable](https://zh.wikipedia.org/wiki/Hypertable "wikilink")

## 参考文献

## 外部链接

  - [NoSQL非关系数据库简介](http://www.sigma.me/2011/06/11/intro-to-nosql.html)
  - [Amazon数据库论文](http://s3.amazonaws.com/AllThingsDistributed/sosp/amazon-dynamo-sosp2007.pdf)
  - [在互联网上拥有NoSQL相关链接最多的网站。](http://nosql-databases.org)
  - [NoSQL数据库笔谈](https://web.archive.org/web/20110227190046/http://sebug.net/paper/databases/nosql/Nosql.html)
  - [Cassandra vs MongoDB vs CouchDB vs Redis vs Riak vs HBase vs
    Membase vs Neo4j
    comparison](http://kkovacs.eu/cassandra-vs-mongodb-vs-couchdb-vs-redis)

## 参见

  - （BASE——基本可用、弱状态、最终一致性——的其中一个组成要求，与关系数据库的[Acid相对](../Page/ACID.md "wikilink")）

  - [CAP](https://zh.wikipedia.org/wiki/CAP "wikilink")

{{-}}

[Category:NoSQL](https://zh.wikipedia.org/wiki/Category:NoSQL "wikilink")

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
11. <http://nosql.mypopescu.com/post/5633789299/intersystems-globals-and-gt-m-compared>