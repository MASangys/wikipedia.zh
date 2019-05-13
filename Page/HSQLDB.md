*'HSQLDB **(**Hyper SQL
Database*')是一个用Java编写的关系数据库管理系统。它有一个JDBC驱动程序并且支持一个SQL-92和SQL:2008标准的较大子集。\[1\]它提供了一个快速轻量级(版本2.2大约为1300字节)数据库引擎\[2\]，该数据库引擎提供基于磁盘和内存的表。有两种模式：嵌入式和服务器模式可供购买。
此外,它包括一些工具,如轻量级web服务器、命令行、GUI管理工具(可以作为应用程序单独运行)和一些演示实例。可以运行在1.1版本以上的JRE上运行,包括免费JRE，如Kaffe。
HSQLDB 遵循BSD协议。它在许多开源软件项目中被用作数据库和持久引擎,如OpenOffice Base、LibreOffice
Base、the Standalone Roller Demo,\[3\] Jitsi网络电话和视频会议客户端(从2.6版开始)
\[4\]，还有一些商业产品,如Mathematica和InstallAnywhere(从8.0版开始)\[5\]。

## 事务支持

HSQLDB
的2.0版本有三个事务控制模式。它支持读取未提交内容和可串行化隔离级别，支持表级锁或多版本并发控制(MVCC)，或者锁和MVCC结合。版本1.8.1只支持0级别事务隔离
(未提交读)\[6\]。

## 数据存储

HSQLDB有两个主要的表类型，用于持久读写数据的存储(即如果事务已成功提交,它能够保证出现系统故障时数据不丢失,并保持其完整性)。

默认的内存类型以SQL脚本的形式将所有的数据更改存储到磁盘中。在数据库引擎启动时，这些命令将被执行同时数据将重构到内存中。虽然这种行为不适用于非常大的表,但它提供了很高的性能优势,并且很容易被调试。

另一种表类型是缓存型(CACHED),它允许以降低性能为代价，存储千兆字节的数据。HSQLDB引擎只加载部分数据，在事务提交时将数据同步到磁盘。然而,在更新内存数据时，引擎总是会加载所有受影响的行。因此，如果不将其分成很多小任务就不可能实现大的更新\[7\]。

其它表类型允许读写csv文件访问（例如,这些表可以参与在查询中使用JOINs、简化电子表格处理)和读写非持久内存数据存储。

## 发行版本

自2001年以来，HSQLDB已经发布了几个版本。早期的版本是基于中断的HypersonicSQL数据库引擎。在2010年发行的2.0版本,几乎所有的都是新代码,是按照标准SQL和JDBC
4的规范编写的。\[8\]

2.3.2版本完全是多线程的，并且支持高性能2PL和MVCC(多版本并发控制)事务控制模型。参见2.3.2版本中的新特性列表。

## 相关連結

  - [关系型数据库管理系统比较](../Page/关系型数据库管理系统比较.md "wikilink")
  - [内容管理系统列表](../Page/内容管理系统列表.md "wikilink")
  - [数据库管理系统](../Page/数据库管理系统.md "wikilink")
  - [Apache Derby](../Page/Apache_Derby.md "wikilink")

## 參考資料

## 外部連結

  -
  -
  - [使用HSQLDB的软件](http://hsqldb.org/web/hsqlUsing.html)

  - [关于HSQLDB的图书 (Google
    Books)](http://books.google.com/books?q=hsqldb&btnG=Search+Books)

  - [5年酝酿新版本——HyperSQL 2.0](http://www.infoq.com/news/2010/06/hsqldb2)

  - [更多HSQLDB工具](http://www.javavillage.in/hsql-dbtool.php)

[Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink")
[Category:Java平台軟體](https://zh.wikipedia.org/wiki/Category:Java平台軟體 "wikilink")
[Category:SQL](https://zh.wikipedia.org/wiki/Category:SQL "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.