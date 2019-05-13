**BigTable**是一種[壓縮的](../Page/数据压缩.md "wikilink")、高效能的、高可擴展性的，基于[Google檔案系統](../Page/Google檔案系統.md "wikilink")（Google
File
System，GFS）的数据存储系统，用於儲存大规模結構化数据，適用於[雲端計算](https://zh.wikipedia.org/wiki/雲端計算 "wikilink")。

BigTable發展於2004年\[1\]，現今已成為Google的應用程式。像是[MapReduce就常透過BigTable來儲存或更改資料](../Page/MapReduce.md "wikilink")，\[2\]其他還有[Google
Reader](https://zh.wikipedia.org/wiki/Google_Reader "wikilink")\[3\]、[Google
Maps](https://zh.wikipedia.org/wiki/Google_Maps "wikilink")\[4\]、[Google
Book
Search](https://zh.wikipedia.org/wiki/Google_Book_Search "wikilink")、"My
Search History"、[Google
Earth](https://zh.wikipedia.org/wiki/Google_Earth "wikilink")、[Blogger.com](https://zh.wikipedia.org/wiki/Blogger.com "wikilink")、[Google
Code](https://zh.wikipedia.org/wiki/Google_Code "wikilink")
hosting、[Orkut](../Page/Orkut.md "wikilink")\[5\]、[YouTube](../Page/YouTube.md "wikilink")\[6\]以及[Gmail](../Page/Gmail.md "wikilink")\[7\]等。Google自行發展出特別的巨型資料庫的原因，自然是效能的問題\[8\]。

BigTable不是传统的[关系型数据库](https://zh.wikipedia.org/wiki/关系型数据库 "wikilink")，不支援JOIN这样的[SQL語法](../Page/SQL.md "wikilink")，BigTable更像今日的[NoSQL的Table](../Page/NoSQL.md "wikilink")-oriented，优势在于扩展性和性能。BigTable的Table資料結構包括row
key、col key和timestamp，其中row
key用於儲存倒轉的[URL](https://zh.wikipedia.org/wiki/URL "wikilink")，例如www.google.com必須改成com.google.www。BigTable使用大量的Table，在Table之下還有Tablet。每一個Tablets大概有100-200MB，每台机器有100個左右的Tablets。所謂的Table是屬於immutable的SSTables，也就是存储方式不可修改。另外Table還必須進行壓縮，其壓縮又分成table的壓縮或系統的壓縮。客户端有一指向META0的Tablets的指標，META0
tablets保儲所有的META1的tablets的資料記錄。

## 相關條目

  - [LevelDB](../Page/LevelDB.md "wikilink") - Google的鍵／值對（Key/Value
    Pair）嵌入式數據庫管理系統編程庫，[BSD特許條款開源](https://zh.wikipedia.org/wiki/BSD特許條款 "wikilink")

## 注釋

## 外部連結

  - [Bigtable: A Distributed Storage System for Structured
    Data](http://research.google.com/archive/bigtable.html) -（official
    paper;
    [PDF](http://research.google.com/archive/bigtable-osdi06.pdf)）
  - [BigTable: A Distributed Structured Storage
    System](http://www.cs.washington.edu/htbin-post/mvis/mvis?ID=437)（[video](http://video.google.com/videoplay?docid=7278544055668715642)）
      - [more
        video](https://web.archive.org/web/20060615164406/http://www.uwtv.org/programs/displayevent.asp?rid=2787)
      - [Google's
        BigTable](https://web.archive.org/web/20060616203323/http://andrewhitchcock.org/?post=214)
        -（notes on the official presentation）
  - ["How Google
    Works"](http://www.baselinemag.com/article2/0,1540,1985047,00.asp)
  - [Is the Relational Database Doomed
    ?](https://web.archive.org/web/20090504062325/http://www.readwriteweb.com/archives/is_the_relational_database_doomed.php)

[Category:数据库](https://zh.wikipedia.org/wiki/Category:数据库 "wikilink")

[Category:Google](https://zh.wikipedia.org/wiki/Category:Google "wikilink")
[Category:NoSQL](https://zh.wikipedia.org/wiki/Category:NoSQL "wikilink")

1.  "First an overview. BigTable has been in development since early
    2004 and has been in active use for about eight months (about
    February 2005)." [Google's
    BigTable](http://andrewhitchcock.org/?post=214)

2.  "Bigtable can be used with MapReduce, a framework for running
    large-scale parallel computations developed at Google. We have
    written a set of wrappers that allow a Bigtable to be used both as
    an input source and as an output target for MapReduce jobs". pg 3 of
    "Bigtable: A Distributed Storage System for Structured Data", 2006

3.  "Reader is using Google's BigTable in order to create a haven for
    what is likely to be a massive trove of items." [Official Google
    Reader](http://googlereader.blogspot.com/2005/10/google-reader-two-weeks.html)
    blog.

4.  "There are currently around 100 cells for services such as Print,
    Search History, Maps, and Orkut." [Google's
    BigTable](http://andrewhitchcock.org/?post=214)

5.
6.  "Their new solution for thumbnails is to use Google’s BigTable,
    which provides high performance for a large number of rows, fault
    tolerance, caching, etc. This is a nice (and rare?) example of
    actual synergy in an acquisition." [YouTube Scalability
    Talk](http://kylecordes.com/2007/07/12/youtube-scalability/)

7.  ["How Entities and Indexes are Stored - Google App Engine - Google
    Code"](http://code.google.com/intl/pl/appengine/articles/storage_breakdown.html#anc-background)


8.  "We have described Bigtable, a distributed system for storing
    structured data at Google....Our users like the performance and high
    availability provided by the Bigtable implementation, and that they
    can scale the capacity of their clusters by simply adding more
    machines to the system as their resource demands change over
    time...Finally, we have found that there are significant advantages
    to building our own storage solution at Google. We have gotten a
    substantial amount of flexibility from designing our own data model
    for Bigtable." from the Conclusion of "Bigtable: A Distributed
    Storage System for Structured Data", 2006