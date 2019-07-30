**ACID**，是指[数据库管理系统](../Page/数据库管理系统.md "wikilink")（[DBMS](https://zh.wikipedia.org/wiki/DBMS "wikilink")）在寫入或更新資料的過程中，為保證[事务](../Page/数据库事务.md "wikilink")（）是正確可靠的，所必須具備的四个特性：（atomicity，或稱不可分割性）、（consistency）、[隔离性](https://zh.wikipedia.org/wiki/隔离性 "wikilink")（isolation，又称独立性）、（durability）。

在数据库系统中，一个事务是指：由一系列数据库操作组成的一个完整的逻辑过程。例如银行转帐，从原账户扣除金额，以及向目标账户添加金额，这两个数据库操作的总和，构成一个完整的逻辑过程，不可拆分。这个过程被称为一个事务，具有ACID特性。ACID的概念在[ISO](https://zh.wikipedia.org/wiki/ISO "wikilink")/IEC 10026-1:1992文件的第四段內有所說明。

## 四大特性

  - Atomicity（原子性）：一個事务（transaction）中的所有操作，或者全部完成，或者全部不完成，不会结束在中间某个环节。事务在执行过程中发生错误，会被[回滚](../Page/回滚_\(数据管理\).md "wikilink")（Rollback）到事务开始前的状态，就像这个事务从来没有执行过一样。即，事务不可分割、不可约简。
  - Consistency（一致性）：在事务开始之前和事务结束以后，数据库的完整性没有被破坏。这表示写入的资料必须完全符合所有的预设[约束](https://zh.wikipedia.org/wiki/数据完整性 "wikilink")、[触发器](https://zh.wikipedia.org/wiki/触发器_\(数据库\) "wikilink")、等。
  - Isolation（隔离性）：数据库允许多个并发事务同时对其数据进行读写和修改的能力，隔离性可以防止多个事务并发执行时由于交叉执行而导致数据的不一致。事务隔离分为不同级别，包括未提交读（Read uncommitted）、提交读（read committed）、可重复读（repeatable read）和串行化（Serializable）。
  - Durability（持久性）：事务处理结束后，对数据的修改就是永久的，即便系统故障也不会丢失。

## 参考文献

## 外部連結

  - [1](https://web.archive.org/web/20100608002853/http://structedtext.appspot.com/db/concurrent_control.html) 交易並行控制
  - [ISO/IEC 10026-1:1992](http://www.iso.org/iso/en/CatalogueDetailPage.CatalogueDetail?CSNUMBER=27121&COMMID=&scopelist=)（ISO文件，需訂購）

## 参见

  - [关系型数据库](https://zh.wikipedia.org/wiki/关系型数据库 "wikilink")
  - [InnoDB](https://zh.wikipedia.org/wiki/InnoDB "wikilink")
  - [PostgreSQL](../Page/PostgreSQL.md "wikilink")

{{-}}

[Category:数据库](https://zh.wikipedia.org/wiki/Category:数据库 "wikilink")