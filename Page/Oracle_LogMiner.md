> 本文内容由[Oracle LogMiner](https://zh.wikipedia.org/wiki/Oracle_LogMiner)转换而来。


**Oracle LogMiner**是[甲骨文公司](../Page/甲骨文公司.md "wikilink")作为[Oracle数据库](../Page/Oracle数据库.md "wikilink")一部分提供的工具，提供查询Oracle[数据库](../Page/数据库.md "wikilink")记录日志的变化的方法，主要通过[SQL](../Page/SQL.md "wikilink")命令查询Oracle[重做日志中的数据](https://zh.wikipedia.org/wiki/事务日志 "wikilink")。[Oracle Enterprise Manager产品提供了同样功能的](https://zh.wikipedia.org/wiki/Oracle_Enterprise_Manager "wikilink")[GUI接口](../Page/图形用户界面.md "wikilink")。

LogMiner turns the concept and practices of [数据挖掘](../Page/数据挖掘.md "wikilink")on the internal processes of the database itself.

使用LogMiner，[数据库管理员可以进行](https://zh.wikipedia.org/wiki/数据库管理员 "wikilink")：

  - 识别数据库事件的时间
  - isolate [数据库事务](../Page/数据库事务.md "wikilink")s carried out in error by users
  - 对于疏忽造成的数据变化，决定[数据恢复](https://zh.wikipedia.org/wiki/数据恢复 "wikilink")（[data recovery](https://zh.wikipedia.org/wiki/:en:data_recovery "wikilink")）所需的步骤。
  - 为[性能调优](https://zh.wikipedia.org/wiki/性能调优 "wikilink")（[performance tuning](https://zh.wikipedia.org/wiki/:en:performance_tuning "wikilink")）和[容量规划](https://zh.wikipedia.org/wiki/容量规划 "wikilink")（[capacity planning](https://zh.wikipedia.org/wiki/:en:capacity_planning "wikilink")）收集实际使用的量。
  - [审计任何在数据库上运行的命令所进行的操作](../Page/審計.md "wikilink")

Note that LogMiner uses Oracle logs to reconstruct exactly how data changed, whereas the complementary utility [Oracle Flashback](https://zh.wikipedia.org/wiki/Oracle_Flashback "wikilink") addresses, reconstructs and presents the finished results of such changes, giving a view of the database at some point in time.

## 参见

  - [:Category:甲骨文公司軟體](https://zh.wikipedia.org/wiki/Category:甲骨文公司軟體 "wikilink")

## 外部参考文献

  - [Supporting Oracle](http://www.izzysoft.de/?topic=oracle)（German）Documents on how to use LogMiner, Auditing and more

[Category:甲骨文公司軟體](https://zh.wikipedia.org/wiki/Category:甲骨文公司軟體 "wikilink")