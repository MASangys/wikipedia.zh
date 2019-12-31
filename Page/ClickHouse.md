> 本文内容由[ClickHouse](https://zh.wikipedia.org/wiki/ClickHouse)转换而来。


**ClickHouse**是一个用于[線上分析處理](../Page/線上分析處理.md "wikilink")（OLAP）的开源[列式数据库](../Page/列式数据库.md "wikilink")。

ClickHouse是由俄罗斯IT公司[Yandex](../Page/Yandex.md "wikilink")为Yandex.Metrica网络分析服务开发的。\[1\]\[2\]\[3\]\[4\] ClickHouse允许分析实时更新的数据。该系统以高性能为目标。\[5\]

这个项目是在2016年6月发布的[Apache许可证](../Page/Apache许可证.md "wikilink")下的[开源软件](../Page/开源软件.md "wikilink")。\[6\]

Yandex.Tank负载测试工具使用ClickHouse。\[7\] Yandex.Market使用ClickHouse来监控网站的可访问性和KPI。\[8\] ClickHouse还在[CERN的](../Page/歐洲核子研究組織.md "wikilink")[LHCb](../Page/LHCb.md "wikilink")实验\[9\]中实现了对100亿个事件的[元数据](../Page/元数据.md "wikilink")进行存储和处理，每个事件有超过1000个属性，Tinkoff Bank使用ClickHouse作为项目的数据存储。\[10\]

## 历史

Yandex.Metrica以前使用一种经典的方法，即以聚合形式存储原始数据。\[11\] 这种方法可以帮助减少存储的数据量。然而，它有几个局限性和缺点：

  - 可用报表的列表必须是预先确定的，而且无法生成自定义报表。
  - 聚合之后，数据量可能会增加。当数据由大量键进行聚合或使用具有高[基数的键](../Page/势_\(数学\).md "wikilink")（如[URL](../Page/统一资源定位符.md "wikilink")）时，就会发生这种情况。
  - 对于具有不同聚合的报表，很难支持逻辑一致性。

另一种方法是存储未聚合的数据。处理原始数据需要高性能的系统，因为所有计算都是实时进行的。为了解决这个问题，需要一个能够处理整个[互联网](../Page/互联网.md "wikilink")规模的分析数据的列式数据库。Yandex开始开发自己的列式数据库。 ClickHouse的第一个原型在2009年出现。2014年底，Yandex.Metrica 2.0版发布。新版本有一个用于创建自定义报告的接口，并使用ClickHouse存储和处理数据。

## 功能

Clickhouse DBMS 的主要功能是：\[12\]

  - *真正的列式数据库。* 没有任何内容与值一起存储。例如，支持常量长度值，以避免将它们的长度“ number”存储在值的旁边。
  - *线性可扩展性。* 可以通过添加服务器来扩展集群。
  - *容错性。* 系统是一个分片集群，其中每个分片都是一组副本。ClickHouse使用异步多主复制。数据写入任何可用的副本，然后分发给所有剩余的副本。Zookeeper用于协调进程，但不涉及查询处理和执行。
  - *能够存储和处理数PB的数据。*
  - *[SQL](../Page/SQL.md "wikilink")支持。* Clickhouse支持类似[SQL](../Page/SQL.md "wikilink")的扩展语言，包括数组和嵌套数据结构、近似函数和[URI函数](../Page/统一资源标志符.md "wikilink")，以及连接外部键值存储的可用性。
  - *高性能。*\[13\]
      - 使用向量计算。数据不仅由列存储，而且由向量处理（一部分列）。这种方法可以实现高[CPU性能](../Page/中央处理器.md "wikilink")。
      - 支持采样和近似计算。
      - 可以进行并行和分布式查询处理（包括[JOIN](../Page/连接.md "wikilink")）。
  - *数据压缩。*
  - *[HDD优化](../Page/硬盘.md "wikilink")。* 该系统可以处理不适合[内存的数据](../Page/随机存取存储器.md "wikilink")。
  - *用于[数据库](../Page/数据库.md "wikilink")（DB）连接的客户端。* 数据库连接方式包括控制台客户端、[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink") [API](https://zh.wikipedia.org/wiki/API "wikilink")，或者各种编程语言的[wrapper](https://zh.wikipedia.org/wiki/包装库 "wikilink")（可以用的有[Python](../Page/Python.md "wikilink")、[PHP](../Page/PHP.md "wikilink")\[14\]、[NodeJS](../Page/Node.js.md "wikilink")\[15\]、[Perl](../Page/Perl.md "wikilink")\[16\]、[Ruby](../Page/Ruby.md "wikilink")\[17\]与[R](../Page/R语言.md "wikilink")\[18\]语言）。ClickHouse也可以使用JDBC驱动。\[19\]
  - [*详细的文档。*](https://clickhouse.yandex/docs/en/)

## 限制

Clickhouse有一些可以被视为缺点的功能：

  - 不支持[事务](../Page/数据库事务.md "wikilink")。
  - 默认情况下，在执行聚合时，查询中间状态必须适合单个服务器上的RAM。但是，在这种情况下，可以将ClickHouse配置为溢出到磁盘上。
  - 缺乏完整的UPDATE/DELETE实现。

## 使用场景

Clickhouse是为[OLAP查询而设计的](../Page/線上分析處理.md "wikilink")。\[20\]

  - 它可以处理少量包含大量字段的表。
  - 查询可以使用从数据库中提取的大量行，但只用一小部分字段。
  - 查询相对较少(通常每台服务器大约100个RPS)。
  - 对于简单的查询，允许大约50毫秒的延迟。
  - 列值相当小，通常由数字和短字符串组成（例如每个[URL](https://zh.wikipedia.org/wiki/URL "wikilink")，60[字节](../Page/字节.md "wikilink")）。
  - 处理单个查询时需要高吞吐量（每台服务器每秒数十亿行）。
  - 查询结果主要是过滤或聚合的。
  - 数据更新使用简单的场景（通常只是批量处理，没有复杂的事务）。

ClickHouse的一个常见情况是服务器日志分析。在将常规数据上传到ClickHouse之后（建议将数据每次1000条以上批量插入），就可以通过即时查询分析事件或监视服务的指标，如错误率、响应时间等。

ClickHouse还可以用作内部分析师的内部数据仓库。ClickHouse可以存储来自不同系统的数据（比如[Hadoop或某些日志](../Page/Apache_Hadoop.md "wikilink")），分析人员可以使用这些数据构建内部指示板，或者为了业务目的执行实时分析。

## 基准测试结果

根据开发人员进行的[基准测试](https://zh.wikipedia.org/wiki/基准测试 "wikilink")，\[21\] 对于[OLAP查询](../Page/線上分析處理.md "wikilink")，ClickHouse的速度比[Hive](https://zh.wikipedia.org/wiki/Apache_Hive "wikilink")（基于Hadoop技术栈的DBMS）或[MySQL](../Page/MySQL.md "wikilink")（通用[RDBMS](../Page/关系数据库.md "wikilink")）快100倍以上。

## 参考文献

## 外部链接

  - [ClickHouse官网](https://clickhouse.yandex/)

[Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink")

1.
2.   Competitor Analysis {{\!}} Google Analytics, Google Universal Analytics, Yandex Metrica|last=Datanyze|website=Datanyze|language=en-US|access-date=2016-11-10|archive-url=[https://web.archive.org/web/20161021001156/https://www.datanyze.com/market-share/Analytics/|archive-date=2016-10-21|dead-url=yes](https://web.archive.org/web/20161021001156/https://www.datanyze.com/market-share/Analytics/%7Carchive-date=2016-10-21%7Cdead-url=yes)}}
3.
4.
5.   Percona Live Amsterdam - Open Source Database Conference 2016|website=www.percona.com|access-date=2016-11-10}}
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