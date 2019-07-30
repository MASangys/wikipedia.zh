**Amazon SimpleDB**是一個分散式資料庫，以[Erlang](../Page/Erlang.md "wikilink")撰寫。同與[Amazon EC2和亞馬遜的S](../Page/Amazon_EC2.md "wikilink")3一样作为一项Web 服务，属于亞馬遜網絡服務的一部分。 [AWS_Simple_Icons_Database_Amazon_SimpleDB_Item.svg](https://zh.wikipedia.org/wiki/File:AWS_Simple_Icons_Database_Amazon_SimpleDB_Item.svg "fig:AWS_Simple_Icons_Database_Amazon_SimpleDB_Item.svg")

正如EC2和S3，SimpleDB的按照存儲量，在互聯網上的傳輸量和吞吐量收取費用。 在2008年12月1日，亞馬遜推出了新的定價策略，提供了免费1 GB的數據和25機器小時的自由層(Free Tire)\[1\]。 将其中的数据轉移到其他亞馬遜網絡服務是免費的。\[2\]

## 限制

發行限制\[3\]:

### 儲存限制

| 屬性      | 最大值                     |
| ------- | ----------------------- |
| 域       | 每個帳號有250個活動域. 可以填表取得更多. |
| 每个域的大小  | 10GB                    |
| 每个域的屬性量 | 1,000,000,000           |
| 每条目的屬性  | 256 attributes          |
| 每个属性的大小 | 1024 bytes              |

### 查詢限制

| 屬性                           | 最大值               |
| ---------------------------- | ----------------- |
| 每次查詢的条目（item）數               | 2500 個項目          |
| 查詢的运行时间                      | 5 秒               |
| 每個查詢謂詞（query predicate）的屬性名稱 | 1 屬性名稱            |
| 比較每個謂詞                       | 20 操作子（operators） |
| 每次查詢謂詞表達                     | 5 謂詞（predicates）  |

## 注釋

## 外部連結

  - [Amazon SimpleDB official home page](http://aws.amazon.com/simpledb/)
  - [NSimpleDB - Open source C\# implementation of the SimpleDB data model for the desktop; can also be used as a proxy for SimpleDB](http://code.google.com/p/nsimpledb/)
  - [M/DB - a Free Open Source API-compatible alternative to SimpleDB that can be used as a local or cloud database](http://www.mgateway.com/mdb.html)
  - [Simple Savant - Open-source .NET object-persistence framework for Amazon SimpleDB written in C\#.](http://simplesavant.codeplex.com/)
  - [typica - A Java client for SimpleDB and other Amazon Web Services](http://code.google.com/p/typica/)
  - [SimpleJPA - a Java Persistence API (JPA) implementation for Amazon's SimpleDB.](http://code.google.com/p/simplejpa/)
  - [**SDB Explorer** - Tool to explore Amazon SimpleDB service.](https://web.archive.org/web/20110826010707/http://www.sdbexplorer.com/)

[de:Amazon Web Services\#Amazon SimpleDB](https://zh.wikipedia.org/wiki/de:Amazon_Web_Services#Amazon_SimpleDB "wikilink")

[Category:Amazon_Web_Services](https://zh.wikipedia.org/wiki/Category:Amazon_Web_Services "wikilink") [Category:面向文档的数据库](https://zh.wikipedia.org/wiki/Category:面向文档的数据库 "wikilink")

1.  [SimpleDB - Free Tier - A shift in AWS pricing](http://blog.sdbexplorer.com/2008/12/simpledb-2000000-free-requests-for-next-six-months/)
2.  [Amazon SimpleDB official home page](http://www.amazon.com/b?node=342335011)
3.  \[<http://docs.amazonwebservices.com/AmazonSimpleDB/latest/DeveloperGuide/index.html?SDBLimits.html>*Amazon SimpleDB Limits*, Amazon SimpleDB Developer Guide (API Latest version)\]