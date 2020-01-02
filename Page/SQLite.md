> 本文内容由[SQLite](https://zh.wikipedia.org/wiki/SQLite)转换而来。


**SQLite**（\[1\]或\[2\]）是遵守[ACID](../Page/ACID.md "wikilink")的[关系数据库管理系统](https://zh.wikipedia.org/wiki/關聯式資料庫 "wikilink")，它包含在一个相对小的[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")[程式庫中](https://zh.wikipedia.org/wiki/程式庫 "wikilink")。与许多其它数据库管理系统不同，SQLite不是一个[客户端/服务器结构的数据库引擎](https://zh.wikipedia.org/wiki/客户端/服务器结构 "wikilink")，而是被集成在用户程序中。

SQLite遵守[ACID](../Page/ACID.md "wikilink")，实现了大多数[SQL](../Page/SQL.md "wikilink")标准。它使用动态的、弱[类型的SQL语法](../Page/資料類型.md "wikilink")。\[3\]它作为嵌入式数据库，是[应用程序](../Page/应用程序.md "wikilink")，如[网页浏览器](../Page/网页浏览器.md "wikilink")，在本地/客户端存储数据的常见选择。它可能是最广泛部署的数据库引擎，因为它正在被一些流行的浏览器、[操作系统](../Page/操作系统.md "wikilink")、[嵌入式系统](../Page/嵌入式系统.md "wikilink")所使用\[4\]。同时，它有许多程序设计语言的[语言绑定](https://zh.wikipedia.org/wiki/语言绑定 "wikilink")。

SQLite是建立的[公有领域](../Page/公有领域.md "wikilink")项目。\[5\]

## 设计

不像常见的[客户端/服务器结构数据库管理系统](https://zh.wikipedia.org/wiki/客户端/服务器结构 "wikilink")，SQLite引擎不是一个应用程序与之通信的独立进程。SQLite库链接到程序中，并成为它的一个组成部分。这个库也可被动态链接。应用程序经由编程语言内的直接[API调用来使用SQlite的功能](https://zh.wikipedia.org/wiki/应用程序编程接口 "wikilink")，这在减少数据库访问延迟上有积极作用，因为在一个单一进程中的函数调用比跨进程通信更有效率。SQLite将整个数据库，包括定义、表、索引以及数据本身，作为一个单独的、可跨平台使用的文件存储在主机中。它采用了在写入数据时将整个数据库文件加锁的简单设计。尽管写操作只能串行进行，但SQLite的读操作可以多任务同时进行。

SQLite将[PostgreSQL](../Page/PostgreSQL.md "wikilink")作为参考平台。项目将“PostgreSQL可能做些什么”作为SQL标准实现的开发参考。\[6\]\[7\]然而与这个目标最重要的偏差在于，除了主键以外，SQLite不强制进行类型检查。一个值的类型是动态的，不被schema所强制限制（虽然如此，但如果可以进行可恢复的类型转换时，schema会在存储数据时触发一个自动转换）。

## 特征

程式庫实现了多数的[SQL](../Page/SQL.md "wikilink")-92标准，包括[事务](../Page/数据库事务.md "wikilink")，以及实现[原子性](https://zh.wikipedia.org/wiki/原子性 "wikilink")、[一致性](https://zh.wikipedia.org/wiki/一致性 "wikilink")、[隔離性和](https://zh.wikipedia.org/wiki/隔離性 "wikilink")[持久性](https://zh.wikipedia.org/wiki/持久性 "wikilink")（即[ACID](../Page/ACID.md "wikilink")），但它缺失了某些特性。例如，它仅部分支持[触发器](https://zh.wikipedia.org/wiki/触发器_\(数据库\) "wikilink")。尽管它支持大多数的复杂查询，但它的`ALTER TABLE`功能有所限制，不能修改或删除列，只能通过重新建立表的方式迂回进行。

SQLite不进行[类型检查](https://zh.wikipedia.org/wiki/类型检查 "wikilink")。你可以把[字符串](../Page/字符串.md "wikilink")插入到[整数](../Page/整数.md "wikilink")列中。某些用户发现这是使数据库更加有用的创新，特别是与无类型的脚本语言一起使用的时候；然而其他用户认为这是主要的缺点。

多个[进程或](https://zh.wikipedia.org/wiki/进程 "wikilink")[线程](../Page/线程.md "wikilink")可以同時存取同一个数据而没有问题。可以同時平行讀取同一個資料庫。但同一時間只能有一個进程或线程進行資料寫入；否则會寫入失敗並得到一個錯誤訊息（或者會自動重試一段時間；自动重试的逻辑以及重試時間的長短是可以設定的）。

程式設計者還提供了一個叫做`sqlite3`的独立程序用来查询和管理SQLite数据库文件。SQLite的使用者可以把這個程式當作如何寫SQLite應用程式的範例。

## 语言绑定

目前有大量的编程语言提供使用SQLite的绑定，包括：

  - C/C++\[8\]
  - [Tcl](../Page/Tcl.md "wikilink")\[9\]
  - 在[CPAN的](https://zh.wikipedia.org/wiki/CPAN "wikilink")*DBD::SQLite*上有一个[Perl](../Page/Perl.md "wikilink")的[DBI/DBD模块](https://zh.wikipedia.org/wiki/DBI/DBD "wikilink")，它不是到SQLite的接口，而是包括整个SQLite数据库引擎在其中并不需要任何额外的软件。
  - [Python](../Page/Python.md "wikilink")自2.5之后将[pysqlite](https://github.com/ghaering/pysqlite)内置，模块名为sqlite3。\[10\]
  - [PHP](../Page/PHP.md "wikilink")从PHP 5.0开始已經包含SQLite，但是自5.1版之後，SQLite開始成為一個延伸函式庫。SQLite能与PHP4一起工作，但不包含在PHP4里面。
  - [Rails](https://zh.wikipedia.org/wiki/Rails "wikilink")2.0.3将缺省的数据库配置改为了SQLite 3。
  - [Haskell](../Page/Haskell.md "wikilink")\[11\]
  - [Java](../Page/Java.md "wikilink")\[12\]
  - [Delphi](../Page/Delphi.md "wikilink"): DISQLite3作为Delphi的一个第三方控件，不是SQLite的API，也不是接口，而是把SQLite数据库引擎重新封装编译到Delphi的目标程序中。

## SQLite管理客户端

SQLite亦可以作为桌面数据库使用，以下为第三方SQLite的[GUI软件](https://zh.wikipedia.org/wiki/GUI "wikilink")。例如，

  - [Navicat for SQLite是一套專為SQLite設計的強大資料庫管理及開發工具](https://zh.wikipedia.org/wiki/navicat "wikilink")。它可以用於任何版本2或3的SQLite資料庫，並支援大部份SQLite的功能，包括觸發器、索引、檢視等。。
  - [SQLiteMan](https://zh.wikipedia.org/wiki/SQLiteMan "wikilink")，使用[Qt](../Page/Qt.md "wikilink")开发的一个SQLite客户端，支持多语言、跨平台。
  - [Firefox](../Page/Firefox.md "wikilink")，可以通过添加部分扩展获得SQLite客户端，包括[SQLite Manager](https://zh.wikipedia.org/wiki/SQLite_Manager "wikilink")、[SQLite Reader](https://addons.mozilla.org/firefox/addon/sql-reader/)、[SQLite Manager](https://addons.mozilla.org/en-US/firefox/addon/sqlite-manager-webext/)（另一个同名的WebExtensions扩展）。
  - [SQLite Database Browser](https://zh.wikipedia.org/wiki/SQLite_Database_Browser "wikilink")，一款连接SQLite数据库的图形客户端。
  - [SQLite Expert Personal](https://zh.wikipedia.org/wiki/SQLite_Expert_Personal "wikilink")，Windows上的一款连接SQLite数据库的免费客户端。

## 参考文献

## 外部链接

  - [SQLite主页](https://www.sqlite.org/)
  - [pysqlite](http://www.pysqlite.org/)
  - \[<https://web.archive.org/web/20171111002929/http://search.cpan.org/search%3fmodule=DBD>::SQLite DBD::SQLite\] - CPAN上的Perl模块。
  - [Sqlite-ruby](https://web.archive.org/web/20050901193850/http://rubyforge.org/projects/sqlite-ruby/) - Ruby语言接口。
  - [SQLiteManager](http://sqlitemanager.sourceforge.net/) - 管理SQLite数据库的多语言的PHP4写的web工具。
  - [SQLite Developer](http://www.sqlitedeveloper.com/) - SQLite可视化数据库管理器。
  - [SQLiteBrowser](http://sqlitebrowser.sourceforge.net/) - 視窗介面SQLite資料庫瀏覽器
  - [SQLite ODBC驱动程序](http://www.ch-werner.de/sqliteodbc/)
  - [SQLite Administrator](http://sqliteadmin.orbmu2k.de/)
  - [SQLite.NET 2.0](https://web.archive.org/web/20060408172958/http://sqlite.phxsoftware.com/) - An ADO.NET 2.0 provider for SQLite
  - [Using SQLite Database with OpenOffice.org](http://documentation.openoffice.org/HOW_TO/data_source/SQLite.pdf)（via ODBC or \*[sqlite-sdbc-driver](http://dba.openoffice.org/drivers/sqlite/index.html)）
  - [Interview with Richard Hipp](https://web.archive.org/web/20061001143646/http://www.linuxformat.co.uk/modules.php?op=modload&name=Sections&file=index&req=viewarticle&artid=19)
  - [SQLite with Python tutorial](https://web.archive.org/web/20150202002316/http://talkera.org/python/python-database-programming-sqlite-tutorial/)

## 參見

  - [关系数据库](../Page/关系数据库.md "wikilink")
      - [关系型数据库管理系统对比](https://zh.wikipedia.org/wiki/关系型数据库管理系统对比 "wikilink")

{{-}}

[Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink") [Category:C软件](https://zh.wikipedia.org/wiki/Category:C软件 "wikilink") [Category:公有领域软件](https://zh.wikipedia.org/wiki/Category:公有领域软件 "wikilink")

1.
2.
3.
4.
5.
6.  <https://lwn.net/Articles/601144/>
7.  <https://www.pgcon.org/2014/schedule/events/736.en.html>
8.
9.
10.
11.
12.