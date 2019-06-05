[LAMP_software_bundle.svg](https://zh.wikipedia.org/wiki/File:LAMP_software_bundle.svg "fig:LAMP_software_bundle.svg")
software bundle (here additionally with
[Squid](../Page/Squid_\(软件\).md "wikilink")).\]\] **MySQL**（官方發音為“My
S-Q-L”\[1\]，但也经常读作“My
Sequel”）原本是一個[開放源碼的](https://zh.wikipedia.org/wiki/開放源碼 "wikilink")[關聯式資料庫管理系統](https://zh.wikipedia.org/wiki/關聯式資料庫管理系統 "wikilink")，原開發者為[瑞典的](../Page/瑞典.md "wikilink")[MySQL
AB公司](../Page/MySQL_AB.md "wikilink")，该公司于2008年被[昇陽微系統](https://zh.wikipedia.org/wiki/昇陽微系統 "wikilink")（Sun
Microsystems）收购。2009年，[甲骨文公司](../Page/甲骨文公司.md "wikilink")（Oracle）收购昇陽微系統公司，MySQL成为Oracle旗下产品。

MySQL在過去由于性能高、成本低、可靠性好，已经成为最流行的开源数据库，因此被廣泛地應用在[Internet上的中小型](https://zh.wikipedia.org/wiki/Internet "wikilink")[網站中](../Page/網站.md "wikilink")。随着MySQL的不断成熟，它也逐渐用于更多大规模[网站和应用](https://zh.wikipedia.org/wiki/网站 "wikilink")，比如[维基百科](../Page/维基百科.md "wikilink")、[Google和](../Page/Google.md "wikilink")[Facebook等网站](../Page/Facebook.md "wikilink")。非常流行的开源软件组合[LAMP中的](../Page/LAMP.md "wikilink")“M”指的就是MySQL。

但被甲骨文公司收購後，Oracle大幅調漲MySQL商業版的售價，且甲骨文公司不再支持另一個自由軟體專案[OpenSolaris的發展](../Page/OpenSolaris.md "wikilink")，因此導致自由軟體社群們對於Oracle是否還會持續支援MySQL社群版（MySQL之中唯一的免費版本）有所隱憂，MySQL的創始人麥克爾·維德紐斯以MySQL為基礎，成立分支計劃[MariaDB](../Page/MariaDB.md "wikilink")。而原先一些使用MySQL的開源軟體逐漸轉向MariaDB或其它的資料庫。例如维基百科已于2013年正式宣布将从MySQL迁移到[MariaDB数据库](../Page/MariaDB.md "wikilink")\[2\]。

## 歷史

  - 2008年1月16日，[Sun](https://zh.wikipedia.org/wiki/Sun "wikilink")（昇陽電腦）正式收購MySQL。\[3\]
  - 2009年4月20日，[甲骨文公司宣布以每股](../Page/甲骨文公司.md "wikilink")9.50美元，74億美元的總額收購Sun電腦公司。\[4\]
  - 2013年6月18日，甲骨文公司修改MySQL授权协议，移除了[GPL](https://zh.wikipedia.org/wiki/GPL "wikilink")。\[5\]但随后有消息称这是一个bug。\[6\]

## 特性

  - 使用[C和](https://zh.wikipedia.org/wiki/C語言 "wikilink")[C++編寫](../Page/C++.md "wikilink")，並使用了多種[編譯器進行測試](../Page/編譯器.md "wikilink")，保證原始碼的可移植性。
  - 支持[AIX](https://zh.wikipedia.org/wiki/AIX "wikilink")、[BSDi](https://zh.wikipedia.org/wiki/BSDi "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[HP-UX](../Page/HP-UX.md "wikilink")、[Linux](../Page/Linux.md "wikilink")、[Mac
    OS](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")、[Novell
    NetWare](../Page/Novell_NetWare.md "wikilink")、[NetBSD](../Page/NetBSD.md "wikilink")、[OpenBSD](../Page/OpenBSD.md "wikilink")、[OS/2
    Wrap](https://zh.wikipedia.org/wiki/OS/2 "wikilink")、[Solaris](../Page/Solaris.md "wikilink")、[Windows等多種](https://zh.wikipedia.org/wiki/Windows "wikilink")[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。
  - 為多種-{zh-hans:编程;
    zh-tw:程式}-語言提供了[API](https://zh.wikipedia.org/wiki/API "wikilink")。這些-{zh-hans:編程;
    zh-tw:程式}-語言包括[C](https://zh.wikipedia.org/wiki/C語言 "wikilink")、[C++](../Page/C++.md "wikilink")、[C\#](../Page/C♯.md "wikilink")、[VB.NET](https://zh.wikipedia.org/wiki/VB.NET "wikilink")、[Delphi](../Page/Delphi.md "wikilink")、[Eiffel](../Page/Eiffel.md "wikilink")、[Java](../Page/Java.md "wikilink")、[Perl](../Page/Perl.md "wikilink")、[PHP](../Page/PHP.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Ruby和](../Page/Ruby.md "wikilink")[Tcl等](../Page/Tcl.md "wikilink")。
  - 支持-{zh-hans:[多线程](../Page/多线程.md "wikilink");
    zh-tw:[多執行緒](https://zh.wikipedia.org/wiki/多執行緒 "wikilink")}-，充分利用[CPU資源](https://zh.wikipedia.org/wiki/CPU "wikilink")，支持多用戶。
  - \-{zh-hans:优化;
    zh-tw:最佳化}-的[SQL查詢算法](../Page/SQL.md "wikilink")，有效地提高查詢速度。
  - 既能夠作為一個單獨的應用程式在客戶端伺服器網絡環境中執行，也能夠作為一個程式庫而嵌入到其他的軟件中。
  - 提供多語言-{zh-hans:支持; zh-tw:支援}-，常見的編碼如中文的[GB
    2312](../Page/GB_2312.md "wikilink")、[BIG5](../Page/大五碼.md "wikilink")，日文的[Shift
    JIS等都可以用作](../Page/Shift_JIS.md "wikilink")-{zh-hans:数据表;
    zh-tw:資料表}-名和-{zh-hans:数据列; zh-tw:資料列}-名。
  - 提供[TCP/IP](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")、[ODBC和](../Page/ODBC.md "wikilink")[JDBC等多種數據庫連接途徑](https://zh.wikipedia.org/wiki/JDBC "wikilink")。
  - 提供用於管理、檢查、-{zh-hans:優化; zh-tw:最佳化}-數據庫操作的管理工具。
  - 可以處理擁有上千萬條記錄的大型數據庫。

## 應用

與其他的大型數據庫例如[Oracle](../Page/Oracle数据库.md "wikilink")、[IBM
DB2](../Page/IBM_DB2.md "wikilink")、[MS
SQL等相比](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")，MySQL自有它的不足之處，如規模小、功能有限等，但是這絲毫也沒有減少它受歡迎的程度。對於一般的個人使用者和中小型企業來說，MySQL提供的功能已經綽綽有餘，而且由於MySQL是開放源碼軟件，因此可以大大降低總體擁有成本。

2010年以前Internet上流行的網站構架方式是[LAMP](../Page/LAMP.md "wikilink")（[Linux](../Page/Linux.md "wikilink")
[Apache](https://zh.wikipedia.org/wiki/Apache "wikilink") MySQL
[PHP](../Page/PHP.md "wikilink")），即是用Linux作為[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，Apache作為[-{zh-hans:Web服务器;
zh-tw:網頁伺服器}-](../Page/網頁伺服器.md "wikilink")，MySQL作為數據庫，[PHP](../Page/PHP.md "wikilink")（部分網站也使用[Perl或](../Page/Perl.md "wikilink")[Python](../Page/Python.md "wikilink")）作為-{zh-hans:服务器;
zh-tw:伺服器}-端腳本解釋器。由於這四個軟件都是[開放源碼軟件](https://zh.wikipedia.org/wiki/開放源碼軟件 "wikilink")，因此使用這種方式可以以較低的成本建立起一個穩定、免費的網站系統。MySQL加PHP的配對在互聯網上的應用相比LAMP來說更為常見，並獲得了「動態配對」（）的雅號，大部分[Blog網站基於的](https://zh.wikipedia.org/wiki/博客 "wikilink")[WordPress系統主要運用MySQL加PHP的配對](../Page/WordPress.md "wikilink")。除了LAMP之外，用於Solaris、Windows和Mac上的網站構架也分別被稱為[SAMP](https://zh.wikipedia.org/wiki/SAMP "wikilink")、[WAMP和](https://zh.wikipedia.org/wiki/WAMP "wikilink")[MAMP](https://zh.wikipedia.org/wiki/MAMP "wikilink")。

[維基百科所使用的](https://zh.wikipedia.org/wiki/維基百科 "wikilink")[Mediawiki維基引擎採用PHP語言寫成](https://zh.wikipedia.org/wiki/Mediawiki "wikilink")，並以MySQL作為其支援的其中一種數據庫管理系統。

## MySQL管理

  - 可以使用命令行工具管理MySQL數據庫（命令mysql和mysqladmin），也可以從MySQL的網站下載圖形管理工具MySQL
    Workbench\[7\]。前者是用來取代舊有的MySQL Administrator和MySQL Query
    Browser\[8\]。
  - [Navicat導航貓for
    MySQL是一套專為MySQL設計的強大資料庫管理及開發工具](../Page/Navicat.md "wikilink")。它可以用於任何版本的MySQL資料庫，並支援大部份MySQL的功能，包括觸發器、索引、檢視等。
  - [phpMyAdmin是由](https://zh.wikipedia.org/wiki/phpMyAdmin "wikilink")[PHP寫成的MySQL資料庫系統管理程式](../Page/PHP.md "wikilink")，讓管理者可用Web介面管理MySQL資料庫。藉由此Web介面可以成為一個簡易方式輸入繁雜SQL語法的較佳途徑，尤其要處理大量資料的匯入及匯出更為方便。其中一個更大的優勢在於由於phpMyAdmin跟其他PHP程式一樣在網頁伺服器上執行，但是您可以在任何地方使用這些程式產生的HTML頁面，也就是於遠端管理你的MySQL資料庫。使用phpMyAdmin您就可以方便的建立、修改、刪除資料庫及資料表。
  - phpMyBackupPro\[9\]也是由PHP寫成的，可以透過Web介面創建和管理數據庫。它可以創建偽cronjobs，可以用來自動在某個時間或週期備份MySQL數據庫。

## 連接方式

  - 應用程式可透過[ODBC或](../Page/ODBC.md "wikilink")[ADO方式](../Page/ADO.md "wikilink")，經由使用[MyODBC](http://www.mysql.com/products/connector/odbc/)與MySQL資料庫連接。
  - MS .Net
    Framework下的程式（例如：C\#、VB.NET）可透過[ADO.NET的方式](../Page/ADO.NET.md "wikilink")，經由使用[MySQL.Net](http://www.mysql.com/products/connector/net/)與MySQL資料庫連接。
  - [C](https://zh.wikipedia.org/wiki/C语言 "wikilink")/[C++可使用](../Page/C++.md "wikilink")[MySQL++](http://tangentsoft.net/mysql)或是直接使用[MySQL內建API](https://web.archive.org/web/20070717062814/http://dev.mysql.com/doc/refman/5.0/en/c.html)與MySQL資料庫連接。
  - [PHP可透過PHP的](../Page/PHP.md "wikilink")[MySQLi與MySQL資料庫連接](https://zh.wikipedia.org/wiki/MySQLi "wikilink")，具備比[MySQL模組](http://www.php.net/mysql)更好的效能。另外PHP6可使用mysqlnd與MySQL資料庫連接。[1](http://dev.mysql.com/downloads/connector/php-mysqlnd/)
  - JAVA程序可通过JDBC方式与MySQL进行连接，MySQL官方提供了JDBC驱动程序。
  - 可通过MySQL客户端软件与MySQL进行连接，如mysqlfront、mysqlyog、mysqlbrowser等。
  - javascript可以通过使用[fibjs的内置mysql模块](https://zh.wikipedia.org/wiki/fibjs "wikilink")\[[http://fibjs.org/docs/manual/object/ifs/mysql.md.html\]与MySQL数据库连接](http://fibjs.org/docs/manual/object/ifs/mysql.md.html%5D与MySQL数据库连接)

## 衍生版本

衍生版本有[Drizzle](https://zh.wikipedia.org/wiki/Drizzle "wikilink")、[MariaDB](../Page/MariaDB.md "wikilink")、[Percona
Server及](https://zh.wikipedia.org/wiki/Percona_Server "wikilink")[OurDelta等](https://zh.wikipedia.org/wiki/OurDelta "wikilink")。

## 参考文献

## 外部連結

  -
  - [MySQL開發者主頁](http://dev.mysql.com/)

  - [MySQL Weblogs](http://www.planetmysql.org)

  - [MySQL社區](https://web.archive.org/web/20080206224929/http://www.mysqlpub.com/)

  - [中国MySQL社區](http://www.innomysql.com/)

  - [CentOS7下安装MySQL](https://www.ytyzx.org/index.php/%E5%A6%82%E4%BD%95%E5%9C%A8CentOS7%E4%B8%AD%E5%AE%89%E8%A3%85MySQL)

{{-}}

[Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink")
[Category:LAMP](https://zh.wikipedia.org/wiki/Category:LAMP "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:甲骨文公司软体](https://zh.wikipedia.org/wiki/Category:甲骨文公司软体 "wikilink")

1.
2.  <http://blog.wikimedia.org/2013/04/22/wikipedia-adopts-mariadb/>
3.
4.  <http://www.oracle.com/global/cn/pressroom/p090421.html>
    甲骨文收购[Sun](https://zh.wikipedia.org/wiki/Sun "wikilink")（昇陽電腦）
5.
6.
7.  [MySQL Workbench](http://dev.mysql.com/downloads/workbench/)
8.  Sun的公告請參考["EOL of MySQL Query Browser, MySQL Administrator, MySQL
    Migration Toolkit"](http://www.mysql.com/support/eol-notice.html)。
9.  [phpMyBackupPro](http://sourceforge.net/projects/phpmybackup)