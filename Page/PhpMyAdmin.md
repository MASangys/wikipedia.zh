**phpMyAdmin** 是一個以[PHP](../Page/PHP.md "wikilink")為基礎，以Web-Base方式架構在網站主機上的[MySQL](../Page/MySQL.md "wikilink")的資料庫管理工具，讓管理者可用Web介面管理MySQL資料庫。藉由此Web介面可以成為一個簡易方式輸入繁雜[SQL](../Page/SQL.md "wikilink")語法的較佳途徑，尤其要處理大量資料的匯入及匯出更為方便。其中一個更大的優勢在於由於phpMyAdmin跟其他PHP程式一樣在[網頁伺服器](../Page/網頁伺服器.md "wikilink")上執行，但是您可以在任何地方使用這些程式產生的[HTML](../Page/HTML.md "wikilink")頁面，也就是於遠端管理MySQL資料庫，方便的建立、修改、刪除資料庫及資料表。也可借由phpMyAdmin建立常用的php語法，方便編寫網頁時所需要的sql語法正確性。

2.11.0是phpMyAdmin最後一系列支援PHP4的版本，並增加了建立與檢視View的功能，能夠從查詢的結果中建立，並能夠管理procedures。這個版本開始，也支援[MySQL](../Page/MySQL.md "wikilink")資料庫 5.0.37版本之後的查詢檔案化功能，並因應上面有數千個資料庫與資料表的伺服器，提供更好的管理介面。

## 功能

  - 建立、修改、刪除資料庫及資料表（可透過介面操作，或是執行SQL語法）
  - 多國語系使用者介面，可自由切換（支援超過65種不同語言的介面，含繁體中文與簡體中文）
  - 在資料表維護方面，基本的功能具有：

:\# 檢查資料表

:\# 分析資料表

:\# 修復資料表

:\# 最佳化資料表

:\# 強迫更新資料表 ("FLUSH")

:\# 2.11.0以後增加了建立與檢視View的功能。

  - 可將資料表內的資料匯入(導入)或匯出（導出）成多種格式的檔案。

<table style="width:64%;">
<colgroup>
<col style="width: 32%" />
<col style="width: 32%" />
</colgroup>
<thead>
<tr class="header">
<th><p>可匯出（導出）的格式</p></th>
<th><p>可匯入(導入)的格式</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>CSV 資料</li>
<li>MS Excel 的 CSV 格式</li>
<li>Microsoft Excel 2000</li>
<li>Microsoft Word 2000</li>
<li>LaTeX</li>
<li>Open Document Spreadsheet</li>
<li>Open Document Text</li>
<li>PDF</li>
<li>SQL</li>
<li>XML</li>
</ol></td>
<td><ol>
<li>CSV</li>
<li>CSV 使用 LOAD DATA</li>
<li>SQL</li>
</ol></td>
</tr>
<tr class="even">
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 類似軟體

[phpPgAdmin是由phpMyAdmin所分支發展的軟體](https://zh.wikipedia.org/wiki/phpPgAdmin "wikilink")，為[PostgreSQL](../Page/PostgreSQL.md "wikilink")提供相近的功能，不過程式碼已改寫過不再使用phpMyAdmin的程式碼。

[phpMSAdmin則專用於管理](https://zh.wikipedia.org/wiki/phpMSAdmin "wikilink")[微軟的](https://zh.wikipedia.org/wiki/微軟 "wikilink")[SQL Server伺服器](https://zh.wikipedia.org/wiki/SQL_Server "wikilink")。

相較於phpMyAdmin的龐大架構，[Adminer](https://zh.wikipedia.org/wiki/En:Adminer "wikilink") (又稱 phpMinAdmin) 以輕量化設計，用一個160KB的php檔，提供了前者大部份的功能

## 参考文献

## 外部連結

  - [phpMyAdmin官網](https://www.phpmyadmin.net)
  - [The phpMyAdmin Project](https://zh.wikipedia.org/wiki/sourceforge:projects/phpmyadmin/ "wikilink")
  - [Learning SQL Using phpMyAdmin](http://www.php-editors.com/articles/sql_phpmyadmin.php)
  - [Documentation and FAQ](https://github.com/phpmyadmin/phpmyadmin/wiki) (official Wiki)
  - [PhpMyAdmin Tutorials](https://web.archive.org/web/20080119183202/http://www.webhosting.uk.com/phpmyadmin-tutorials.php) - Learn how to use this database management system to manage the DBs.
  - [phpMyAdmin WEB DEMO線上展示](https://www.phpmyadmin.net/try/)

{{-}}

[Category:免費軟件](https://zh.wikipedia.org/wiki/Category:免費軟件 "wikilink") [Category:SourceForge專案](https://zh.wikipedia.org/wiki/Category:SourceForge專案 "wikilink") [Category:PHP](https://zh.wikipedia.org/wiki/Category:PHP "wikilink") [Category:MySQL](https://zh.wikipedia.org/wiki/Category:MySQL "wikilink") [Category:MariaDB](https://zh.wikipedia.org/wiki/Category:MariaDB "wikilink")