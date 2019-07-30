**MongoDB**是一種[面向文档的](https://zh.wikipedia.org/wiki/面向文档的数据库 "wikilink")[数据库管理系统](../Page/数据库管理系统.md "wikilink")，用[C++](../Page/C++.md "wikilink")等语言撰寫而成，以此来解决应用程序开发社区中的大量现实问题。2007年10月，MongoDB由[10gen團隊所發展](https://zh.wikipedia.org/wiki/10gen "wikilink")。2009年2月首度推出。

## 部署

MongoDB社区版是免费的并可获得为[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Linux](../Page/Linux.md "wikilink")和[OS X二进制版本](https://zh.wikipedia.org/wiki/OS_X "wikilink")\[1\]。許多Linux套件管理系統曾经包含MongoDB的套件，由于许可证变更，MongoDB已经从[Debian](../Page/Debian.md "wikilink")、[Fedora](../Page/Fedora.md "wikilink")和[Red Hat Enterprise Linux发行中移除](../Page/Red_Hat_Enterprise_Linux.md "wikilink")。\[2\]\[3\]

MongoDB使用[内存映射文件](../Page/内存映射文件.md "wikilink"), 32位元系統上限制大小為2GB的資料，64位元支持更大的資料。\[4\] MongoDB的核心构件只能在[小端序系統上运行](../Page/字节序.md "wikilink")，客户端库可以在小端序和大端序的系統上运行\[5\]。

### 語言支援

MongoDB有官方的驅動如下： [C](http://github.com/mongodb/mongo-c-driver)，[C++](http://github.com/mongodb/mongo)，[C\# / .NET](http://www.mongodb.org/display/DOCS/CSharp+Language+Center)，[Erlang](https://github.com/TonyGen/mongodb-erlang)， [Haskell](http://hackage.haskell.org/package/mongoDB)，[Java](http://github.com/mongodb/mongo-java-driver)，[JavaScript](http://www.mongodb.org/display/DOCS/Javascript+Language+Center)，[Lisp](https://github.com/fons/cl-mongo)，[fibjs](http://fibjs.org/docs/manual/object/ifs/mongodb.md.html)，[node.JS](http://github.com/mongodb/node-mongodb-native)， [Perl](http://github.com/mongodb/mongo-perl-driver)，[PHP](http://github.com/mongodb/mongo-php-driver)，[Python](http://github.com/mongodb/mongo-python-driver)，[Ruby](http://github.com/mongodb/mongo-ruby-driver)，[Scala](https://github.com/mongodb/casbah)，[Go](https://github.com/mongodb/mongo-go-driver)。

目前還有許多非官方式的驅動，ColdFusion,\[6\] Delphi,\[7\] Erlang,\[8\]\[9\] Factor,\[10\] Fantom,\[11\] Go,\[12\] JVM languages (Clojure, Groovy \[13\], Scala, etc.),\[14\] Lua,\[15\] HTTP REST,\[16\] Racket,\[17\]和Smalltalk.\[18\]。

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

  - \[19\]

  - [ganglia](https://zh.wikipedia.org/wiki/ganglia "wikilink")\[20\]

  - [scout](https://zh.wikipedia.org/wiki/scout "wikilink")\[21\]

  - [cacti](https://zh.wikipedia.org/wiki/cacti "wikilink")\[22\]

### GUIs

目前較受歡迎的UI有：

  - Robo 3T (原Robomongo)\[23\] – 这是一个[C++](../Page/C++.md "wikilink")及[Qt](../Page/Qt.md "wikilink")写成的[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[桌面程序](https://zh.wikipedia.org/wiki/桌面程序 "wikilink")。
  - Fang of Mongo\[24\] –這是一個網頁式的界面，由Django和jQuery所構成.
  - Futon4Mongo\[25\] – a clone of the [CouchDB](https://zh.wikipedia.org/wiki/CouchDB "wikilink") Futon web interface for MongoDB.
  - Mongo3\[26\] – Ruby寫成的介面.
  - MongoHub\[27\] –一個OS X應用程式.
  - Opricot\[28\] – a browser-based MongoDB shell,由PHP撰寫而成.
  - Database Master [MongoDB Tool for Windows](http://www.nucleonsoftware.com)
  - RockMongo [Best PHP MongoDB Administrator](https://archive.is/20130427200303/http://rockmongo.com/downloads)轻量级，支持多国语言.
  - MongoVUE [Download](https://archive.is/20130808124814/http://www.mongovue.com/downloads/) CS，图形界面，封装较好。

## 著名用戶

  - [Wordnik](https://zh.wikipedia.org/wiki/Wordnik "wikilink")\[29\]
  - [diaspora](https://zh.wikipedia.org/wiki/Diaspora_\(software\) "wikilink")\[30\]
  - [Shutterfly](https://zh.wikipedia.org/wiki/Shutterfly "wikilink")\[31\]
  - [foursquare](https://zh.wikipedia.org/wiki/foursquare "wikilink")\[32\]
  - [bit.ly](https://zh.wikipedia.org/wiki/bit.ly "wikilink")\[33\]
  - [The New York Times](https://zh.wikipedia.org/wiki/The_New_York_Times "wikilink")\[34\]
  - [SourceForge](../Page/SourceForge.md "wikilink")<ref name="sourceforge">

</ref>

  - [Business Insider](https://zh.wikipedia.org/wiki/Business_Insider "wikilink")\[35\]
  - [Etsy](../Page/Etsy.md "wikilink")\[36\]
  - [LHC](https://zh.wikipedia.org/wiki/Large_Hadron_Collider "wikilink")\[37\]
  - [Thumbtack](https://zh.wikipedia.org/wiki/Thumbtack_\(website\) "wikilink")\[38\]
  - [趨勢科技](../Page/趨勢科技.md "wikilink")\[39\]

## 参考文献

## 外部連結

  - [Official MongoDB Project Website](http://www.mongodb.org/)

  - [mongoDB User Group](http://www.linkedin.com/groups?gid=3265391) on [LinkedIn](https://zh.wikipedia.org/wiki/LinkedIn "wikilink")

  - [MongoDB news and articles on myNoSQL](http://nosql.mypopescu.com/tagged/mongodb)

  - Eric Lai. (2009, July 1). [No to SQL? Anti-database movement gains steam](http://www.computerworld.com/s/article/9135086/No_to_SQL_Anti_database_movement_gains_steam_)

  - [MongoDB articles on NoSQLDatabases.com](https://web.archive.org/web/20110714200129/http://www.nosqldatabases.com/main/tag/mongodb)

  - [June 2009 San Francisco NOSQL Meetup Page](http://nosql.eventbrite.com/)

  - [Designing for the Cloud](http://www.technologyreview.com/video/?vid=356) at MIT Technology Review

  - [EuroPython Conference Presentation](http://www.slideshare.net/mdirolf/mongodb-europython-2009)

  -
  - [Interview with Mike Dirolf on The Changelog about MongoDB background and design decisions](https://web.archive.org/web/20110716225319/http://thechangelog.com/post/287597162/episode-0-0-7-mike-dirolf-from-10gen-and-mongodb)

  - [MongoMvc - A MongoDB Demo App with ASP.NET MVC](http://mongomvc.codeplex.com/)

  - [FAQs about MongoDB](https://web.archive.org/web/20110627200024/http://www.markus-gattol.name/ws/mongodb.html#faqs)

{{-}}

[Category:面向文档的数据库](https://zh.wikipedia.org/wiki/Category:面向文档的数据库 "wikilink") [Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink") [Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")

1.
2.
3.
4.  [1](http://blog.mongodb.org/post/137788967/32-bit-limitations)
5.  [Hardware Considerations](https://docs.mongodb.com/manual/administration/production-notes/#hardware-considerations)
6.  [ColdFusion driver](http://github.com/virtix/cfmongodb)
7.  [Delphi](http://code.google.com/p/pebongo/)
8.  [Emongo Erlang driver](http://bitbucket.org/rumataestor/emongo)
9.  [Erlmongo Erlang driver](http://github.com/wpntv/erlmongo)
10. [Factor driver](http://github.com/slavapestov/factor/tree/master/extra/mongodb/)
11. [Fantom driver](http://bitbucket.org/liamstask/fantomongo/wiki/Home)
12. [gomongo Go driver](http://github.com/mikejs/gomongo)
13. [GMongo](http://blog.paulopoiati.com/2010/06/20/gmongo-0-5-released/)
14. [JVM language center](http://www.mongodb.org/display/DOCS/JVM+Languages)
15. [LuaMongo](http://code.google.com/p/luamongo/)
16. [REST interface](http://github.com/kchodorow/sleepy.mongoose)
17. [2](http://planet.racket-lang.org/display.ss?package=mongodb.plt&owner=jaymccarthy)
18. [Smalltalk driver](http://www.squeaksource.com/MongoTalk.html)
19. [Munin plugin](http://github.com/erh/mongo-munin)
20. [Ganglia plugin](http://github.com/quiiver/mongodb-ganglia)
21. [Scout slow-query plugin](http://scoutapp.com/plugin_urls/291-mongodb-slow-queries)
22. [Cacti plugin](http://tag1consulting.com/blog/mongodb-cacti-graphs)
23.
24. [Fang of Mongo](http://github.com/Fiedzia/Fang-of-Mongo)
25. [Futon4Mongo](http://github.com/sbellity/futon4mongo)
26. [Mongo3](http://mongo3.com/)
27. [MongoHub](http://www.apple.com/downloads/macosx/development_tools/mongohub.html)
28. [Opricot](http://www.icmfinland.fi/oss/opricot/)
29.
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