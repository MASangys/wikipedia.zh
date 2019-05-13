**MongoDB**是一種文件導向的[数据库管理系统](../Page/数据库管理系统.md "wikilink")，由[C++撰寫而成](../Page/C++.md "wikilink")，以此来解决应用程序开发社区中的大量现实问题。2007年10月，MongoDB由[10gen團隊所發展](https://zh.wikipedia.org/wiki/10gen "wikilink")。2009年2月首度推出。

## 部署

MongoDB可以從開放原始碼來建構與安裝，更常見的是安裝[二进制檔](https://zh.wikipedia.org/wiki/二进制 "wikilink")，目前有[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Linux](../Page/Linux.md "wikilink")、[OS
X和](https://zh.wikipedia.org/wiki/OS_X "wikilink")[Solaris版本](../Page/Solaris.md "wikilink")。許多Linux套件管理系統現在已包含了MongoDB的套件，包括[CentOS和](../Page/CentOS.md "wikilink")[Fedora](../Page/Fedora.md "wikilink"),\[1\]
[Debian和](../Page/Debian.md "wikilink")[Ubuntu](../Page/Ubuntu.md "wikilink"),\[2\]
[Gentoo](https://zh.wikipedia.org/wiki/Gentoo "wikilink")\[3\]以及[Arch
Linux](../Page/Arch_Linux.md "wikilink")。\[4\] 同樣可從官方網站取得。\[5\]

MongoDB使用[内存映射文件](https://zh.wikipedia.org/wiki/内存映射文件 "wikilink"),
32位元系統上限制大小為2GB的資料（64位元支持更大的資料）。\[6\]
MongoDB伺服器只能用在[小端序系統](https://zh.wikipedia.org/wiki/字节序#.E5.B0.8F.E7.AB.AF.E5.BA.8F "wikilink")，雖然大部分公司會同時準備小端序和大端序系統。

### 語言支援

MongoDB有官方的驅動如下：

  - [C](http://github.com/mongodb/mongo-c-driver)
  - [C++](http://github.com/mongodb/mongo)
  - [C\# /
    .NET](http://www.mongodb.org/display/DOCS/CSharp+Language+Center)
  - [Erlang](https://github.com/TonyGen/mongodb-erlang)
  - [Haskell](http://hackage.haskell.org/package/mongoDB)
  - [Java](http://github.com/mongodb/mongo-java-driver)
  - [JavaScript](http://www.mongodb.org/display/DOCS/Javascript+Language+Center)
  - [Lisp](https://github.com/fons/cl-mongo)
  - [fibjs](http://fibjs.org/docs/manual/object/ifs/mongodb.md.html)
  - [node.JS](http://github.com/mongodb/node-mongodb-native)
  - [Perl](http://github.com/mongodb/mongo-perl-driver)
  - [PHP](http://github.com/mongodb/mongo-php-driver)
  - [Python](http://github.com/mongodb/mongo-python-driver)
  - [Ruby](http://github.com/mongodb/mongo-ruby-driver)
  - [Scala](https://github.com/mongodb/casbah)
  - [Go](https://github.com/mongodb/mongo-go-driver)

目前還有許多非官方式的驅動，在ColdFusion,\[7\] Delphi,\[8\] Erlang,\[9\]\[10\]
Factor,\[11\] Fantom,\[12\] Go,\[13\] JVM languages (Clojure, Groovy
\[14\], Scala, etc.),\[15\] Lua,\[16\] HTTP REST,\[17\] Racket,\[18\]
and Smalltalk.\[19\]

### 複製

MongoDB的開發人員可以保證一個操作已被複製到至少\(N\)個伺服器上每個運行的基礎.

#### 主從式

由於操作都是在主机，從機將複製任何更改的數據。

例如：starting a master/slave pair locally:

`$ mkdir -p ~/dbs/master ~/dbs/slave`
`$ ./mongod --master --port 10000 --dbpath ~/dbs/master`
`$ ./mongod --slave --port 10001 --dbpath ~/dbs/slave --source localhost:10000`

#### 副本集

副本集類似於主從式架構，但他們結合的能力為副機，如果當前一直遲緩時，選出新的主機。

## 管理與圖形化介面

### 監視

支援MongoDB的監視插件：

  - \[20\]

  - [ganglia](https://zh.wikipedia.org/wiki/ganglia "wikilink")\[21\]

  - [scout](https://zh.wikipedia.org/wiki/scout "wikilink")\[22\]

  - [cacti](https://zh.wikipedia.org/wiki/cacti "wikilink")\[23\]

### GUIs

目前較受歡迎的UI有：

  - Robo 3T (原Robomongo)\[24\] –
    这是一个[C++及](../Page/C++.md "wikilink")[Qt写成的](../Page/Qt.md "wikilink")[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[桌面程序](https://zh.wikipedia.org/wiki/桌面程序 "wikilink")。
  - Fang of Mongo\[25\] –這是一個網頁式的界面，由Django和jQuery所構成.
  - Futon4Mongo\[26\] – a clone of the
    [CouchDB](https://zh.wikipedia.org/wiki/CouchDB "wikilink") Futon
    web interface for MongoDB.
  - Mongo3\[27\] – Ruby寫成的介面.
  - MongoHub\[28\] –一個OS X應用程式.
  - Opricot\[29\] – a browser-based MongoDB shell,由PHP撰寫而成.
  - Database Master [MongoDB Tool for
    Windows](http://www.nucleonsoftware.com)
  - RockMongo [Best PHP MongoDB
    Administrator](https://archive.is/20130427200303/http://rockmongo.com/downloads)轻量级，支持多国语言.
  - MongoVUE
    [Download](https://archive.is/20130808124814/http://www.mongovue.com/downloads/)
    CS，图形界面，封装较好。

## 著名用戶

  - [Wordnik](https://zh.wikipedia.org/wiki/Wordnik "wikilink")\[30\]
  - [diaspora](https://zh.wikipedia.org/wiki/Diaspora_\(software\) "wikilink")\[31\]
  - [Shutterfly](https://zh.wikipedia.org/wiki/Shutterfly "wikilink")\[32\]
  - [foursquare](../Page/foursquare.md "wikilink")\[33\]
  - [bit.ly](../Page/bit.ly.md "wikilink")\[34\]
  - [The New York
    Times](https://zh.wikipedia.org/wiki/The_New_York_Times "wikilink")\[35\]
  - [SourceForge](../Page/SourceForge.md "wikilink")<ref name="sourceforge">

</ref>

  - [Business
    Insider](https://zh.wikipedia.org/wiki/Business_Insider "wikilink")\[36\]
  - [Etsy](../Page/Etsy.md "wikilink")\[37\]
  - [LHC](https://zh.wikipedia.org/wiki/Large_Hadron_Collider "wikilink")\[38\]
  - [Thumbtack](https://zh.wikipedia.org/wiki/Thumbtack_\(website\) "wikilink")\[39\]
  - [趨勢科技](../Page/趨勢科技.md "wikilink")\[40\]

## 参考文献

## 外部連結

  - [Official MongoDB Project Website](http://www.mongodb.org/)

  - [mongoDB User Group](http://www.linkedin.com/groups?gid=3265391) on
    [LinkedIn](https://zh.wikipedia.org/wiki/LinkedIn "wikilink")

  - [MongoDB news and articles on
    myNoSQL](http://nosql.mypopescu.com/tagged/mongodb)

  - Eric Lai. (2009, July 1). [No to SQL? Anti-database movement gains
    steam](http://www.computerworld.com/s/article/9135086/No_to_SQL_Anti_database_movement_gains_steam_)

  - [MongoDB articles on
    NoSQLDatabases.com](https://web.archive.org/web/20110714200129/http://www.nosqldatabases.com/main/tag/mongodb)

  - [June 2009 San Francisco NOSQL Meetup
    Page](http://nosql.eventbrite.com/)

  - [Designing for the
    Cloud](http://www.technologyreview.com/video/?vid=356) at MIT
    Technology Review

  - [EuroPython Conference
    Presentation](http://www.slideshare.net/mdirolf/mongodb-europython-2009)

  -
  - [Interview with Mike Dirolf on The Changelog about MongoDB
    background and design
    decisions](https://web.archive.org/web/20110716225319/http://thechangelog.com/post/287597162/episode-0-0-7-mike-dirolf-from-10gen-and-mongodb)

  - [MongoMvc - A MongoDB Demo App with ASP.NET
    MVC](http://mongomvc.codeplex.com/)

  - [FAQs about
    MongoDB](https://web.archive.org/web/20110627200024/http://www.markus-gattol.name/ws/mongodb.html#faqs)

{{-}}

[Category:面向文档的数据库](https://zh.wikipedia.org/wiki/Category:面向文档的数据库 "wikilink")
[Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")

1.  [CentOS and
    Fedora](http://www.mongodb.org/display/DOCS/CentOS+and+Fedora+Packages)
2.  [Debian and
    Ubuntu](http://www.mongodb.org/display/DOCS/Ubuntu+and+Debian+packages),
3.  [Gentoo](http://packages.gentoo.org/package/dev-db/mongodb)
4.  [Arch Linux](https://aur.archlinux.org/packages/mongodb)
5.  [official website](http://www.mongodb.org/display/DOCS/Downloads)
6.  [1](http://blog.mongodb.org/post/137788967/32-bit-limitations)
7.  [ColdFusion driver](http://github.com/virtix/cfmongodb)
8.  [Delphi](http://code.google.com/p/pebongo/)
9.  [Emongo Erlang driver](http://bitbucket.org/rumataestor/emongo)
10. [Erlmongo Erlang driver](http://github.com/wpntv/erlmongo)
11. [Factor
    driver](http://github.com/slavapestov/factor/tree/master/extra/mongodb/)
12. [Fantom driver](http://bitbucket.org/liamstask/fantomongo/wiki/Home)
13. [gomongo Go driver](http://github.com/mikejs/gomongo)
14. [GMongo](http://blog.paulopoiati.com/2010/06/20/gmongo-0-5-released/)
15. [JVM language
    center](http://www.mongodb.org/display/DOCS/JVM+Languages)
16. [LuaMongo](http://code.google.com/p/luamongo/)
17. [REST interface](http://github.com/kchodorow/sleepy.mongoose)
18. [2](http://planet.racket-lang.org/display.ss?package=mongodb.plt&owner=jaymccarthy)
19. [Smalltalk driver](http://www.squeaksource.com/MongoTalk.html)
20. [Munin plugin](http://github.com/erh/mongo-munin)
21. [Ganglia plugin](http://github.com/quiiver/mongodb-ganglia)
22. [Scout slow-query
    plugin](http://scoutapp.com/plugin_urls/291-mongodb-slow-queries)
23. [Cacti plugin](http://tag1consulting.com/blog/mongodb-cacti-graphs)
24.
25. [Fang of Mongo](http://github.com/Fiedzia/Fang-of-Mongo)
26. [Futon4Mongo](http://github.com/sbellity/futon4mongo)
27. [Mongo3](http://mongo3.com/)
28. [MongoHub](http://www.apple.com/downloads/macosx/development_tools/mongohub.html)
29. [Opricot](http://www.icmfinland.fi/oss/opricot/)
30.
31.
32.
33.
34.
35.
36.
37.
38.
39.
40.