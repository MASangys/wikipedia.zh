**Firebird**，是一个跨平台的[关系数据库系统](../Page/关系数据库.md "wikilink")，目前能够运行在[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[linux和各种](https://zh.wikipedia.org/wiki/linux "wikilink")[Unix操作系统上](https://zh.wikipedia.org/wiki/Unix "wikilink")，源于[Borland公司的](../Page/Borland.md "wikilink")[InterBase](https://zh.wikipedia.org/wiki/InterBase "wikilink")
6.0，是一个完全非商业化的产品，但源代码经过大规模重写，使用C++开发。

## 特色

支援多版本並發控制（Multiversion Concurrency Control，MVCC）、Stored
Procedure、Trigger、自定義方法（User-defined
function，UDF）等商用資料庫行為程序。同時因為與interbase的血緣關係，大部分interbase的GUI工具可以直接應用到Firebird開發中。

## 版本區分

Firebird提供三個伺服器環境版本，分別是超級伺服器版本（**SuperServer**）、標準伺服器版本（**ClassicServer**）與嵌入式版本（**Embedded**），依商用情境概略說明：

  - 超級伺服器版本（SuperServer）
    支援多執行緒（Multithreading）模式，可以以背景Service模式執行。
  - 標準伺服器版本（ClassicServer）
    支援每個執行緒可以個別管理自己的資料庫，允許資料庫與伺服器不是儲存在同一台情境，適合用於多處理器環境。
  - 嵌入式版本（Embedded）
    針對嵌入式系統要求獨占程序設計版本，允許資料庫與伺服器在同一台運行情境。

## 歷史

### Firebird 1.0

2002年3月11日公開，初期支援Linux、Windows、Mac OS
X版本，兩個月後公開Solaris、FreeBSD、HP-UX移植版本，以C語言為中心開發。

### Firebird 1.5

2004年2月23日公開，自此版本開始變更為C++為中心開發。SQL陳述句支援SQL92標準函式、SQL1999的SAVEPOINT函式與明確鎖定（explicit
locking）\[1\]。

### Firebird 2.0

2006年11月12日公開，SQL陳述句支援SQL2003的MERGE函式。更新版本2.1開始支援64位元\[2\]\[3\]。

### Firebird 2.5

2010年10月4日公開。支援正則表達式（Regular Expression，RE）\[4\]。

### Firebird 3.0

2016年4月19日公開。

## GUI工具

[Turbobird_screenshot.png](https://zh.wikipedia.org/wiki/File:Turbobird_screenshot.png "fig:Turbobird_screenshot.png")

  - [FlameRobin](http://www.flamerobin.org/)
  - [Database Master](http://www.nucleonsoftware.com)
  - [ibWebAdmin](http://sourceforge.net/projects/ibwebadmin/)

## 参考文献

## 外部链接

  - [Firebird - Relational Database for the New
    Millenium](http://firebird.sourceforge.net)

[Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")

1.   Firebird 1.5.5 General Notes for rewriting it from C to C++
    language
2.  [*Releases
    Firebird-win64*.](http://sourceforge.net/projects/firebird/files/firebird-win64/)
    Sourceforge.net; abgerufen am 3. Mai 2011.
3.  [*Releases
    Firebird-linux-amd64*.](http://sourceforge.net/projects/firebird/files/firebird-linux-amd64/)
    Sourceforge.net; 3. May 2011.
4.