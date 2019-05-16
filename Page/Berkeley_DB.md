**Berkeley
DB**（BDB）是一个高效的嵌入式[数据库编程库](../Page/数据库.md "wikilink")，[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[C++](../Page/C++.md "wikilink")、[Java](../Page/Java.md "wikilink")、[Perl](../Page/Perl.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Tcl以及其他很多语言都有其对应的API](../Page/Tcl.md "wikilink")。Berkeley
DB可以保存任意类型的键/值对（Key/Value Pair），而且可以为一个键保存多个数据。Berkeley
DB支持让数千的并发线程同时操作数据库，支持最大256TB的数据，广泛用于各种操作系统，其中包括大多数[类Unix操作系统](https://zh.wikipedia.org/wiki/Unix-like "wikilink")、[Windows操作系统以及](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[实时操作系统](../Page/实时操作系统.md "wikilink")。

## 源起

Berkeley
DB的前身是[伯克利加州大学為了移除受](https://zh.wikipedia.org/wiki/柏克萊加州大學 "wikilink")[AT\&T限制的程式碼](../Page/AT&T.md "wikilink")，從BSD
4.3到4.4時所改寫的軟體。1996年，[網景公司请求Berkeley](../Page/網景.md "wikilink")
DB的作者群改善函式庫，以便在網景公司的[LDAP伺服器和](https://zh.wikipedia.org/wiki/LDAP "wikilink")[網景瀏覽器中使用](../Page/網景_\(瀏覽器\).md "wikilink")，Sleepycat
Software公司便应运而生（2006年2月，[甲骨文公司收購了Sleepycat](../Page/甲骨文公司.md "wikilink")
Software）。

Berkeley DB以Sleepycat Public
License發行（該授權條款為OSI及FSF所認可的條款），發行時包括了完整的程式碼、編譯工具、測試套件，并附带了說明文件。由於程式碼以及工具程式品質良好，Berkeley
DB常被其他[開放原始碼軟體所使用](https://zh.wikipedia.org/wiki/開放原始碼軟體 "wikilink")。對於不想使用Sleepycat
Public License的開發團體，甲骨文公司也提供了其他付費的授權方式。

Berkeley
DB包含有与某些经典Unix数据库编程库兼容的接口，包括[dbm](https://zh.wikipedia.org/wiki/dbm "wikilink")、[ndbm和](https://zh.wikipedia.org/wiki/ndbm "wikilink")[hsearch](https://zh.wikipedia.org/wiki/hsearch "wikilink")。

## 主要版本

  - **Berkeley
    DB**：支援常見的操作系统，如大多数的类UNIX操作系统、Windows系统以及实时操作系统。对于一些对一些老的UNIX数据库（例如dbm与ndbm
    und hsearch），Berkeley DB还有对应的兼容接口。

<!-- end list -->

  - **Berkeley DB
    XML**：是一个接口，通过它可以实现对XML数据存贮的支持。访问XML数据时，会使用相应的查询语句，如Xquery与Xpath。

<!-- end list -->

  - **Berkeley DB Java Edition**：在Java平台上，Oracle提供一個純Java程式編寫的Berkeley
    DB，只需要操作系統支援Java虛擬機便可執行。

## 体系结构

Berkeley DB以拥有比[Microsoft SQL
Server和](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")[Oracle數據庫等更简单的体系结构而著称](https://zh.wikipedia.org/wiki/Oracle數據庫 "wikilink")。例如，它不支持网络访问—程序通过进程内的[API访问数据库](https://zh.wikipedia.org/wiki/API "wikilink")。

Berkeley DB不支持[SQL或者其他的数据库查询语言](../Page/SQL.md "wikilink")，不支持表结构和数据列。

访问数据库的程序自主决定数据如何储存在记录里，Berkeley DB不对记录里的数据进行任何包装。记录和它的键都可以达到4G字节的长度。

尽管架构很简单，Berkeley DB却支持很多高级的数据库特性，比如[ACID](../Page/ACID.md "wikilink")
[数据库事务处理](https://zh.wikipedia.org/wiki/数据库事务处理 "wikilink")，细粒度[锁](https://zh.wikipedia.org/wiki/锁_\(计算机科学\) "wikilink")，[XA接口](https://zh.wikipedia.org/wiki/X/Open_XA "wikilink")，热[备份以及](../Page/备份.md "wikilink")[同步复制](https://zh.wikipedia.org/wiki/同步复制 "wikilink")。

## Berkeley DB與SQLite的整合

Berkeley DB 11g
R2加入[SQLite程式組件並開始支援](../Page/SQLite.md "wikilink")[SQL語言](../Page/SQL.md "wikilink")。\[1\]

## 授权方式

2.0或以上版本的Berkeley
DB使用双重授权；而2.0版本以下的则使用[BSD特許條款](https://zh.wikipedia.org/wiki/BSD特許條款 "wikilink")，可自由作商业用途。\[2\]\[3\]

## 使用Berkeley DB的程式

Berkeley
DB是一些[轻量级目录访问协议服务器](https://zh.wikipedia.org/wiki/轻量级目录访问协议 "wikilink")、数据库系统以及其他很多商业和开源应用的底层存储系统。下面是使用了Berkeley
DB的知名软件的名单。

  - [Subversion](../Page/Subversion.md "wikilink") -
    一种设计用来代替[CVS的](https://zh.wikipedia.org/wiki/协作版本系统 "wikilink")[版本控制系统](../Page/版本控制.md "wikilink")。
  - [KDevelop](../Page/KDevelop.md "wikilink") -
    一个自由软件，[Linux和其他](../Page/Linux.md "wikilink")[Unix类操作系统下的](https://zh.wikipedia.org/wiki/Unix-like "wikilink")[C](../Page/C.md "wikilink")/[C++](../Page/C++.md "wikilink")[集成开发环境](../Page/集成开发环境.md "wikilink")。
  - [Sun Grid
    Engine](https://zh.wikipedia.org/wiki/Sun_Grid_Engine "wikilink") -
    一个开源cluster软件。
  - [Movable Type](../Page/Movable_Type.md "wikilink") -
    [California编写的一个基于](https://zh.wikipedia.org/wiki/California "wikilink")[Six
    Apart的](https://zh.wikipedia.org/wiki/Six_Apart "wikilink")[Blog系统](https://zh.wikipedia.org/wiki/weblog "wikilink")。
  - [Caravel CMS](https://zh.wikipedia.org/wiki/Caravel_CMS "wikilink")
    - 一个开源的[内容管理系统](../Page/内容管理系统.md "wikilink")，原为超过2000家的[Mennonite
    Church组织设计](https://zh.wikipedia.org/wiki/Mennonite_Church "wikilink")。
  - [OpenLDAP](../Page/OpenLDAP.md "wikilink") - 一个免费的，开源的轻量级目录访问协议的实现。
  - [KLibido](https://zh.wikipedia.org/wiki/KLibido "wikilink") -
    一个免费的，开源的[新闻组阅读器](../Page/新闻组.md "wikilink")，为二进制格式下载优化。
  - [Citadel](https://zh.wikipedia.org/wiki/Citadel/UX "wikilink") -
    一个开源的群件平台，全部数据存储，包括信息库，都保存在Berkeley DB内。
  - [Bogofilter](https://zh.wikipedia.org/wiki/Bogofilter "wikilink") -
    一个开源spam过滤器，其单词表使用Berkeley DB保存。

## 參見

  - [LevelDB](../Page/LevelDB.md "wikilink") -
    由[Google所研發的鍵](../Page/Google.md "wikilink")/值對數據庫編程庫
  - [Apache Derby](../Page/Apache_Derby.md "wikilink") -
    由[Apache軟件基金會所研發的純Java嵌入式數據庫](https://zh.wikipedia.org/wiki/Apache軟件基金會 "wikilink")

## 參考資料

<references />

## 外部連結

  - [Berkeley
    DB官方網頁](http://www.oracle.com/us/products/database/berkeley-db/index.html)

  - [Berkeley DB中國研發團隊官方網頁](http://www.bdbchina.com)

  - [Berkeley DB內部結構](http://www.aosabook.org/en/bdb.html)（The
    Architecture of Open Source Applications, Volume II - ISBN
    9781105571817）

[Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")

1.  [Oracle Berkeley DB SQL API vs.SQLite API – Integration, Benefits
    and
    Differences](http://www.oracle.com/technetwork/database/berkeleydb/bdb-sqlite-comparison-wp-176431.pdf)
2.  [Oracle Berkeley DB Licensing
    Information](http://www.oracle.com/technetwork/database/berkeleydb/downloads/licensing-098979.html)
3.  [Db 1.85—the Original, BSD license Berkeley
    DB](http://members.shaw.ca/akochoi/articles/Db-1.85-the-original-BSD-license-Berkeley-DB/index.html)