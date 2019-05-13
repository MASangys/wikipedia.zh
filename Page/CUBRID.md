**CUBRID**
是一个全面开源，且完全免费的[关系数据库管理系统](../Page/关系数据库管理系统.md "wikilink")。CUBRID为高效执行**Web应用**进行了高度优化，特别是需要处理大数据量和高并发请求的复杂商务服务。通过提供独特的最优化特性，CUBRID可以支持更多的并发请求，更少的响应时间。\[1\]

在CUBRID中，数据库的数量，表的数量，以及表中行数量，均没有限制。表中行最多可以包含6400列，且列名称的最大长度是254个字符。用户还可以在数据库的表中，插入任意大小的BLOB
/ CLOB类型的数据。

## 产品许可信息

CUBRID
2008针对DBMS引擎和应用程序编程接口(API)，使用了不同类型的许可。DBMS引擎使用GNU通用公共许可协议第二版或更高版本(GPL
v2.0 or
later)，允许用户发布，修改和获取源码。应用程序编程接口(API)使用伯克利软件分发(BSD)许可协议，商业用户可以自由开发和分发基于CUBRID的应用程序，而不必被迫开源自己的衍生产品。CUBRID之所以采用两种不同类型的许可，是为了减少带给独立软件开发商(ISV开发和发布各种基于CUBRID应用的限制。

[CUBRID license
policy](https://web.archive.org/web/20130116120151/http://www.cubrid.org/license)的许可政策，同其他数据库系统不同。如果要发布或销售基于MySQL的应用，需要开放应用源码或购买商业许可。而CUBRID由于针对引擎和API使用了不同的许可政策，从而降低了对传统开源数据库管理系统的使用限制，有效的为商业公司减轻了开支。\[2\]

## CUBRID名称的起源

CUBRID这个名称，实际上是两个单词的组合:"Cube"(立方体)和"Bride"(桥梁)。对CUBRID而言，"Bride"代表"data
bridge"(数据桥)，而"Cube"代表密封盒子，可以为放在其中的数据提供安全。因此，CUBRID代表可以为机密信息提供安全保障。

## 支持平台和编程接口

CUBRID的服务器和官方程序库是使用C/C++开发的，而GUI数据库管理工具CUBRID
Manager，以及其他的CUBRID管理工具，则是使用Java开发的。所有这些管理工具都在\[Sourceforge.net
[http://sourceforge.net/projects/cubridtools/\]上开发](http://sourceforge.net/projects/cubridtools/%5D上开发)。

CUBRID支持Linux和Windows操作系统，并且提供了包括JDBC、PHP、ODBC、C、Ruby和Python等在内的特定编程语言的API。这些API在\[Sourceforge.net
[http://sourceforge.net/projects/cubridinterface/\]上开发](http://sourceforge.net/projects/cubridinterface/%5D上开发)。

另外，CUBRID提供了一个称为**CSQL**\[3\]的命令行管理工具，以及一个Web前端管理工具CUBRID WebQuery\[4\]。

## 最新特性

CUBRID的最新版本，是2010年12月发布的CUBRID 2008 R3.1 stable, 其包含如下特征\[5\]:

  - 遵循SQL 92标准
  - 支持[ACID事务](../Page/ACID.md "wikilink")
  - 跨平台支持
  - 多粒度锁(Multiple granularity locking)
  - 分区(Partition)
  - Replication
  - 高可用性(High Availability)：shared-nothing clustering,
    自动fail-over和fail-back。
  - 热备份
  - Sub-SELECTs(例如nested SELECTs)
  - 层次查询(Hierarchical Queries)
  - Query plan caching
  - 触发器
  - 计数器(Click Counter)\[6\]
  - 可更新视图
  - Java存储过程
  - VARCHAR的真正支持
  - 游标
  - BLOB和CLOB类型（可任意大小）
  - HA监控工具

**`注：`**`只有CUBRID和Oracle支持任意大小BLOB / CLOB`

## 产品开发历史

  - 2010年12月31日 - CUBRID 3.1 Stable版发布\[7\]。
  - 2010年11月12日 - CUBRID 3.1 Beta版发布\[8\]。
  - 2010年10月4日 - CUBRID 2008 R3.0 Stable版发布\[9\]。
  - 2010年7月20日 - CUBRID 2008 R3.0 Beta版发布\[10\]。
  - 2010年5月 - CUBRID 2008 R2.2 Stable版发布\[11\]。
  - 2010年2月 - CUBRID Cluster Alpha版发布。
  - 2009年11月 - CUBRID 2008 R2.1 Stable版发布。
  - 2009年10月 - CUBRID 项目主页在Sourceforge.net产生，其官方的开源社区网站www.cubrid.org上线。
  - 2009年9月 - CUBRID Cluster 项目启动。
  - 2009年8月 - CUBRID 2008 R2.0 Stable版发布。
  - 2009年3月 - CUBRID 2008 R1.4 Stable版发布。
  - 2009年2月 - CUBRID 2008 R1.3 Stable版发布。
  - 2009年1月 - CUBRID 2008 R1.2 Stable版发布。
  - 2008年11月 - CUBRID成为开源项目. CUBRID 2008 R1.1 Stable版发布。
  - 2008年10月 - 第一个内部发布版 CUBRID 2008 R1.0 Stable版发布。
  - 2006年 - CUBRID DBMS项目开发启动.

## 参考

## 相关链接

  - [CUBRID社区网站](http://www.cubrid.org)
  - [CUBRID文档](https://web.archive.org/web/20100119054728/http://www.cubrid.org/manual/)
  - [CUBRID在Sourceforge.net的项目主页](http://sourceforge.net/projects/cubrid)
  - [CUBRID在NAVER开发者中心的主页](http://dev.naver.com/projects/cubrid)

[Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink")

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