> 本文内容由[Presto \(SQL查询引擎\)](https://zh.wikipedia.org/wiki/Presto_\(SQL查询引擎\))转换而来。


**Presto**是一种用于大数据的高性能分布式[SQL](../Page/SQL.md "wikilink")查询引擎。其架构允许用户查询各种数据源，如Hadoop、AWS S3、Alluxio、[MySQL](../Page/MySQL.md "wikilink")、[Cassandra](../Page/Cassandra.md "wikilink")、Kafka和MongoDB。甚至可以在单个查询中查询来自多个数据源的数据。Presto是[Apache许可证](../Page/Apache许可证.md "wikilink")下发布的社区驱动的开源软件。

## 历史

Presto最初是[Facebook](../Page/Facebook.md "wikilink")为数据分析师设计和开发的，用于在Apache Hadoop中的大型数据仓库上运行交互式查询。在Presto诞生之前，Facebook的数据分析师依靠Apache Hive在他们PB级的数据仓库上运行SQL分析。Hive不适合Facebook的规模，而Presto是为了填补快速查询这块的差距而发明的。最初的开发始于2012年，并于当年晚些时候部署在Facebook上。2013年11月，Facebook宣布将其开源。\[1\]\[2\] 2014年，Netflix透露他们使用Presto存储在Amazon Simple Storage Service （S3）中的10 [PB数据](https://zh.wikipedia.org/wiki/Petabyte "wikilink")。\[3\] 2019年1月，[Presto软件基金会](https://prestosql.io/foundation.html)宣布成立。该基金会是一个致力于推进Presto开源分布式SQL查询引擎的非营利组织\[4\]\[5\]。由Facebook主导的PrestoDB的开发与由Presto基金会主导的PrestoSQL的开发各自独立进行，有时会有一些代码交错。

## 架构

Presto的架构非常类似于使用集群计算（MPP）的传统[数据库管理系统](../Page/数据库管理系统.md "wikilink")。它可以视为一个协调器节点，与多个工作节点同步工作。客户端提交已解析和计划的SQL语句，然后将并行任务安排给工作机。工作机一同处理来自数据源的行并生成返回给客户端的结果。与在每个查询上使用Hadoop的[MapReduce](../Page/MapReduce.md "wikilink")机制的原始Apache Hive执行模型相比，Presto不会将中间结果写入磁盘，从而显着提高速度。Presto是用[Java](../Page/Java.md "wikilink")语言编写的。单个Presto查询可以组合来自多个源的数据。Presto提供数据源的连接器，包括Alluxio、Hadoop分布式文件系统、Amazon S3中的文件、[MySQL](../Page/MySQL.md "wikilink")、[PostgreSQL](../Page/PostgreSQL.md "wikilink")、[Microsoft SQL Server](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")、Amazon Redshift、Apache Kudu、Apache Phoenix、Apache Kafka、[Apache Cassandra](../Page/Cassandra.md "wikilink")、Apache Accumulo、MongoDB和Redis。与其他只支持Hadoop特定发行版的工具（如Cloudera Impala）不同，Presto可以使用任何风格的Hadoop，也可以不用Hadoop。Presto支持计算和存储的分离，可以在本地和[云中部署](../Page/雲端運算.md "wikilink")。

## 参考资料

## 外部链接

  - [Presto Software Foundation网站](https://prestosql.io/)
  - [Facebook Presto网站](https://prestodb.io/)

[Category:SQL](https://zh.wikipedia.org/wiki/Category:SQL "wikilink") [Category:自由系統軟體](https://zh.wikipedia.org/wiki/Category:自由系統軟體 "wikilink") [Category:Hadoop](https://zh.wikipedia.org/wiki/Category:Hadoop "wikilink") [Category:雲端平台](https://zh.wikipedia.org/wiki/Category:雲端平台 "wikilink")

1.
2.
3.
4.
5.