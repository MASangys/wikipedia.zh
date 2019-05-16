SequoiaDB是一款文档型（Document-oriented）的[NoSQL](../Page/NoSQL.md "wikilink")[数据库](../Page/数据库.md "wikilink")，于2013年发布第一版本。最新版本为V1.12.4版本。SequoiaDB于2014年12月宣布开源\<ref
name:"CSDN"\>[1](http://news.csdn.net/article_preview.html?preview=1&reload=1&arcid=2823212),SequoiaDB宣布正式开源</ref>。

## 1.软件协议

SequoiaDB的数据库引擎使用[GNU
AGPL协议](https://zh.wikipedia.org/wiki/GNU_AGPL "wikilink")，客户端使用的是Apache
2.0协议 \[1\]。

## 2.功能特性

**数据模型**\[2\] SequoiaDB 中的文档为 [JSON](../Page/JSON.md "wikilink")
格式，一般又被称为记录。在数据库内部使用 BSON，即二进制的方式存放 JSON 数据。

**系统架构**\[3\] SequoiaDB 使用分布式架构。在客户机端（或应用程序端），本地或/和远程应用程序都与 SequoiaDB
客户机库链接。本地与远程客户机使用
[TCP/IP协议与协调节点进行通讯](https://zh.wikipedia.org/wiki/TCP/IP协议 "wikilink")。协调节点不保存任何用户数据，仅作为请求分发节点将用户请求分发至相应的数据节点。编目节点保存系统的元数据信息，协调节点通过与编目节点通讯从而了解数据在数据节点中的实际分布。一个或多个编目节点可组成复制组集群。数据节点保存用户的数据信息。
[SequoiaDBArch.png](https://zh.wikipedia.org/wiki/File:SequoiaDBArch.png "fig:SequoiaDBArch.png")

**复制组**\[4\]
一个或多个数据节点可以构成一个复制组（又称分区组）。复制组中每个数据节点都存储该复制组的一份完整数据，又称为复制组实例（或分区组实例）；复制组中的数据节点之间采用[最终一致性同步数据](https://zh.wikipedia.org/wiki/最终一致性 "wikilink")，不同的复制组中保存的数据无重复。每个复制组中可以包含一个或多个数据节点。当存在多个数据节点时，节点间数据进行异步复制。复制组中可以存在最多一个主节点与若干从节点。其中主节点可以进行读写操作，从节点进行只读操作。
[SequoiaDBReplica.jpg](https://zh.wikipedia.org/wiki/File:SequoiaDBReplica.jpg "fig:SequoiaDBReplica.jpg")

**事务**\[5\] 事务作为一个完整的工作单元执行，事务中的操作要么全部执行成功要么全部执行失败。SequoiaDB
事务中的操作只能是插入数据、修改数据以及删除数据，在事务过程中执行的其它操作不会纳入事务范畴，也就是说事务回滚时非事务操作不会被执行回滚。如果一个表或表空间中有数据涉及事务操作，则该表或表空间不允许被删除。

## 3.支持开发语言

SequoiaDB支持多种开发语言，包括：[C](../Page/C.md "wikilink")，[C++](../Page/C++.md "wikilink")，[C\#](../Page/C♯.md "wikilink")，[Java](../Page/Java.md "wikilink")，[PHP](../Page/PHP.md "wikilink")，[Python](../Page/Python.md "wikilink")
\[6\]

## 参考资料

[Category:2013年软件](https://zh.wikipedia.org/wiki/Category:2013年软件 "wikilink")
[Category:NoSQL](https://zh.wikipedia.org/wiki/Category:NoSQL "wikilink")

1.  [2](https://github.com/SequoiaDB/SequoiaDB#license),GitHub SequoiaDB
    license
2.  [3](http://www.sequoiadb.com/document/1.10/introduction/topics/datamodel.html),SequoiaDB数据模型
3.  [4](http://www.sequoiadb.com/document/1.10/introduction/topics/infrastructure.html),SequoiaDB系统架构
4.  [5](http://www.sequoiadb.com/document/1.10/administration/concepts/cluster/topics/replset.html),SequoiaDB复制组
5.  [6](http://www.sequoiadb.com/document/1.10/administration/concepts/database/topics/transaction.html),SequoiaDB事务
6.  [7](https://github.com/SequoiaDB/SequoiaDB#drivers),GitHub SequoiaDB
    Driver