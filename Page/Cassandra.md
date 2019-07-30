**Apache Cassandra**（社区内一般简称为C\*）是一套开源分布式[NoSQL](../Page/NoSQL.md "wikilink")数据库系统。它最初由[Facebook](../Page/Facebook.md "wikilink")开发，用于储存收件箱等简单格式数据，集[Google](../Page/Google.md "wikilink") [BigTable的数据模型与](https://zh.wikipedia.org/wiki/BigTable "wikilink")[Amazon](https://zh.wikipedia.org/wiki/Amazon "wikilink") [Dynamo的完全分布式架构于一身](https://zh.wikipedia.org/wiki/Dynamo "wikilink")。Facebook于2008将 Cassandra 开源，此后，由于Cassandra良好的[可扩展性和性能](https://zh.wikipedia.org/wiki/可扩展性 "wikilink")，被 Apple\[1\], Comcast\[2\],Instagram\[3\], Spotify\[4\], eBay\[5\], Rackspace\[6\], Netflix\[7\]等知名网站所采用，成为了一种流行的分布式结构化数据存储方案。

在数据库排行榜“DB-Engines Ranking”中，Cassandra排在第七位，是非关系型数据库中排名第二高的（仅次于[MongoDB](../Page/MongoDB.md "wikilink")）\[8\]。

## 历史

Cassandra 的名称来源于[希腊神话](../Page/希腊神话.md "wikilink")，是[特洛伊](../Page/特洛伊.md "wikilink")的一位悲剧性的女先知的名字，因此项目的[Logo是一只放光的眼睛](https://zh.wikipedia.org/wiki/Logo "wikilink")。

这个项目由就职于[Facebook](../Page/Facebook.md "wikilink")的Avinash Lakshman（也是[Amazon](https://zh.wikipedia.org/wiki/Amazon "wikilink") 的作者之一）和Prashant Malik在为[Facebook](../Page/Facebook.md "wikilink")的Inbox编写。2008年，[Facebook](../Page/Facebook.md "wikilink")将项目开源，Cassandra在2009年成为了[Apache软件基金会](../Page/Apache软件基金会.md "wikilink")的Incubator项目，并在2010年2月走出孵化器，成为正式的基金会项目。目前这个项目主要由专门进行Cassandra商业化运作的[DataStax](http://www.datastax.com/)公司来开发，也有一些来自其他公司或独立的开发者\[9\]。

### 主要版本和主要改进\[10\]

  - 0.6，2010年4月发布，支持内置的缓存。
  - 0.7，2011年1月发布，支持按列建二级索引(secondary indexes)及在线修改表的结构定义
  - 0.8，2011年6月发布，支持CQL语言和零停机的在线升级
  - 1.0，2011年10月发布，支持数据压缩，level compaction和提高读取性能
  - 1.1，2012年4月发布，支持ssd和机械硬盘混合使用
  - 1.2，2013年1月发布，支持虚拟节点(一个机器在一致性哈希环中拥有多个节点)、原子性的批处理
  - 2.0，2013年9月发布，支持轻量级事务、触发器、改进compaction性能，强制使用[Java7](https://zh.wikipedia.org/wiki/Java7 "wikilink")
  - 2.1，2014年9月10日发布
  - 2.2 , 2015年7月20日发布
  - 3.0 , 2015年11月11日发布
  - 3.1 , 同样 3.10版本，使用类tick-tock发布模式，每月发布一次 , 偶数编号版本提供新功能和错误修正，而奇数编号版本只包括错误修正。
  - 3.11 ，2017年6月23日发布，作为稳定的3.11版本系列，修复了上一个tick-tock功能版本的错误。

## 数据模型

Cassandra使用了[Google](../Page/Google.md "wikilink") 设计的 [BigTable的数据模型](https://zh.wikipedia.org/wiki/BigTable "wikilink")，与面向行(row)的传统的[关系型数据库或](https://zh.wikipedia.org/wiki/关系型数据库 "wikilink")[键值存储的key](https://zh.wikipedia.org/wiki/键值存储 "wikilink")-value数据库不同，Cassandra使用的是[宽列存储模型](https://zh.wikipedia.org/wiki/宽列存储模型 "wikilink")(Wide Column Stores)\[11\]，每行数据由row key唯一标识之后，可以有最多20亿个列\[12\]，每个列有一个column key标识，每个column key下对应若干value。这种模型可以理解为是一个二维的key-value存储，即整个数据模型被定义成一个类似map\<key1, map\<key2,value\>\>的类型。

旧版的Cassandra与客户端交互的方法是通过[thrift](https://zh.wikipedia.org/wiki/thrift "wikilink")，而目前新版本的Cassandra采用与SQL语言类似的CQL语言\[13\]来实现数据模型的定义和数据的读写。其中BigTable中的列族(Column Family)在Cassandra中被称作类似关系型数据库中的称呼——表(table)，而Cassandra/BigTable中的row key和column key并称为主键(primary key)。\[14\]

Cassandra的row key决定了该行数据存储在哪些节点中，因此row key需要按哈希来存储，不能顺序的扫描或读取，而一个row内的column key是顺序存储的，可以进行有序的扫描或范围查找\[15\]。

## 存储模型

与BigTable和其模仿者[HBase不同](https://zh.wikipedia.org/wiki/HBase "wikilink")，Cassandra的数据并不存储在分布式文件系统如[GFS或](https://zh.wikipedia.org/wiki/GFS "wikilink")[HDFS中](https://zh.wikipedia.org/wiki/HDFS "wikilink")，而是直接存于本地。与BigTable一样，Cassandra也是日志型数据库，即把新写入的数据存储在内存的Memtable中并通过磁盘中的CommitLog来做持久化，内存填满后将数据按照key的顺序写进一个只读文件SSTable中，每次读取数据时将所有SSTable和内存中的数据进行查找和合并\[16\]\[17\]。这种系统的特点是写入比读取更快\[18\]，因为写入一条数据是顺序计入commit log中，不需要随机读取磁盘以及搜索。

## 分布式架构

Cassandra的系统架构与[Dynamo类似](https://zh.wikipedia.org/wiki/Dynamo "wikilink")，是基于[一致性哈希的完全](https://zh.wikipedia.org/wiki/一致性哈希 "wikilink")[P2P架构](https://zh.wikipedia.org/wiki/P2P "wikilink")，每行数据通过哈希来决定应该存在哪个或哪些节点中\[19\]。集群没有master的概念，所有节点都是同样的角色，彻底避免了整个系统的单点问题导致的不稳定性，集群间的状态同步通过[Gossip协议来进行P](https://zh.wikipedia.org/wiki/Gossip协议 "wikilink")2P的通信。每个节点都把数据存储在本地，每个节点都接受来自客户端的请求。每次客户端随机选择集群中的一个节点来请求数据，对应接受请求的节点将对应的key在一致性哈希的环上定位是哪些节点应该存储这个数据，将请求转发到对应的节点上，并将对应若干节点的查询反馈返回给客户端。

在一致性、可用性和分区耐受能力（[CAP](https://zh.wikipedia.org/wiki/CAP "wikilink")）的折衷问题上，Cassandra和Dynamo一样比较灵活。Cassandra的每个keyspace可配置一行数据会写入多少个节点(设这个数为N)，来保证数据不因为机器宕机或磁盘损坏而丢失数据，即保证了CAP中的P。用户在读写数据时可以指定要求成功写到多少个节点才算写入成功(设为W)，以及成功从多少个节点读取到了数据才算成功(设为R)。可推理得出，当W+R\>N时，读到的数据一定是上一次写入的，即维护了[强一致性](https://zh.wikipedia.org/wiki/强一致性 "wikilink")，确保了CAP中的C。当W+R\<=N时，数据是[最终一致性因为存在一段时间可能读到的并不是最新版的数据](https://zh.wikipedia.org/wiki/最终一致性 "wikilink")。当W=N或R=N时，意味着系统只要有一个节点无响应或宕机，就有一部分数据无法成功写或者读，即失去了CAP中的可用性A。因此，大多数系统中，都将N设为3，W和R设为QUORUM，即“过半数”——在N为3时QUORUM是2。

## 支持的操作

Cassandra支持对一列数据进行insert、update、或delete操作。其中insert和update虽然语法略有区别，但语义上等价，即可以针对已经存在的行进行update或insert一个不存在的行。

### 轻量级事务

从2.0版开始，Cassandra支持轻量级事务。这种事务被称为“compare-and-set”，简称CAS。通过[paxos算法实现在满足某条件后才修改数据否则不修改](https://zh.wikipedia.org/wiki/paxos算法 "wikilink")。目前支持"insert if not exist"、"update if col=value"、"delete if exist"等几种操作。

## 数据类型

Cassandra在CQL语言层面支持多种数据类型\[20\]。

| CQL类型     | 对应Java类型            | 描述                                                                                                                 |
| --------- | ------------------- | ------------------------------------------------------------------------------------------------------------------ |
| ascii     | String              | ascii字符串                                                                                                           |
| bigint    | long                | 64位整数                                                                                                              |
| blob      | ByteBuffer/byte\[\] | 二进制数组                                                                                                              |
| boolean   | boolean             | 布林                                                                                                                 |
| counter   | long                | 计数器，支持原子性的增减，不支持直接赋值                                                                                               |
| decimal   | BigDecimal          | 高精度小数                                                                                                              |
| double    | double              | 64位浮点数                                                                                                             |
| float     | float               | 32位浮点数                                                                                                             |
| inet      | InetAddress         | [ipv4或](https://zh.wikipedia.org/wiki/ipv4 "wikilink")[ipv6协议的ip地址](https://zh.wikipedia.org/wiki/ipv6 "wikilink") |
| int       | int                 | 32位整数                                                                                                              |
| list      | List                | 有序的列表                                                                                                              |
| map       | Map                 | 键值对                                                                                                                |
| set       | Set                 | 集合                                                                                                                 |
| text      | String              | [utf-8编码的字符串](https://zh.wikipedia.org/wiki/utf-8 "wikilink")                                                      |
| timestamp | Date                | 日期                                                                                                                 |
| uuid      | UUID                | [UUID类型](https://zh.wikipedia.org/wiki/UUID "wikilink")                                                            |
| timeuuid  | UUID                | 时间相关的UUID                                                                                                          |
| varchar   | string              | text的别名                                                                                                            |
| varint    | BigInteger          | 高精度整型                                                                                                              |

## 与类似开源系统的比较

### Apache HBase

[HBase是Apache](https://zh.wikipedia.org/wiki/HBase "wikilink") Hadoop项目的一个子项目，是[Google](../Page/Google.md "wikilink") BigTable的一个克隆，与Cassandra一样，它们都使用了BigTable的列族式的数据模型，但是：

  - Cassandra只有一种节点，而HBase有多种不同角色，除了处理读写请求的region server之外，其架构在一套完整的[HDFS分布式文件系统之上](https://zh.wikipedia.org/wiki/HDFS "wikilink")，并需要[ZooKeeper来同步集群状态](https://zh.wikipedia.org/wiki/ZooKeeper "wikilink")，部署上Cassandra更简单。
  - Cassandra的数据一致性策略是可配置的，可选择是强一致性还是性能更高的最终一致性；而HBase总是强一致性的。
  - Cassandra通过一致性哈希来决定一行数据存储在哪些节点，靠概率上的平均来实现负载均衡；而HBase每段数据(region)只有一个节点负责处理，由master来动态分配一个region是否大到需要拆分成两个，同时会将过热的节点上的一些region动态的分配给负载较低的节点，因此实现动态的负载均衡。
  - 因为每个region同时只能有一个节点处理，一旦这个节点无响应，在系统将这个节点的所有region转移到其他节点之前这些数据便无法读写，加上master也只有一个节点，备用master的恢复也需要时间，因此HBase在一定程度上有单点问题；而Cassandra无单点问题。
  - Cassandra的读写性能优于HBase\[21\]。

## 参考文献

## 相关阅读

[Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink") [Category:键-值数据库](https://zh.wikipedia.org/wiki/Category:键-值数据库 "wikilink")

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

14.

15.
16.

17.

18.

19.

20.

21.