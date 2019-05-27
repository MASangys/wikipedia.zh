**HBase**是一个[开源的](https://zh.wikipedia.org/wiki/开源 "wikilink")[非关系型](https://zh.wikipedia.org/wiki/非关系型数据库 "wikilink")[分布式数据库](https://zh.wikipedia.org/wiki/分布式数据库 "wikilink")（NoSQL），它参考了[谷歌的](https://zh.wikipedia.org/wiki/谷歌 "wikilink")[BigTable建模](https://zh.wikipedia.org/wiki/BigTable "wikilink")，实现的编程语言为
[Java](../Page/Java.md "wikilink")。它是[Apache软件基金会的](../Page/Apache软件基金会.md "wikilink")[Hadoop项目的一部分](https://zh.wikipedia.org/wiki/Hadoop "wikilink")，运行于[HDFS文件系统之上](https://zh.wikipedia.org/wiki/HDFS "wikilink")，为
[Hadoop](https://zh.wikipedia.org/wiki/Hadoop "wikilink") 提供类似于BigTable
规模的服务。因此，它可以對[稀疏文件提供極高的](../Page/稀疏文件.md "wikilink")[容錯率](../Page/故障容許度.md "wikilink")。

HBase在列上实现了BigTable论文提到的压缩算法、内存操作和[布隆过滤器](../Page/布隆过滤器.md "wikilink")。HBase的表能够作为[MapReduce任务的输入和输出](../Page/MapReduce.md "wikilink")，可以通过[Java
API](http://hbase.apache.org/apidocs/index.html)来存取数据，也可以通过[REST](https://zh.wikipedia.org/wiki/REST "wikilink")、Avro或者Thrift的API来访问。

虽然最近性能有了显著的提升，HBase
还不能直接取代[SQL](../Page/SQL.md "wikilink")[数据库](../Page/数据库.md "wikilink")。如今，它已经应用于多个数据驱动型网站\[1\]\[2\]，包括
[Facebook的消息平台](../Page/Facebook.md "wikilink")\[3\]\[4\]。

在 Eric
Brewer的[CAP理论中](https://zh.wikipedia.org/wiki/CAP "wikilink")，HBase属于CP类型的系统。

## 历史

Apache
HBase最初是[Powerset公司为了处理自然语言搜索产生的海量数据而开展的项目](../Page/Powerset.md "wikilink")。不过现在它已经是Apache基金会的顶级项目，并且引起了广泛的关注\[5\]。

Facebook在2010年11月选用了HBase来实现它新的消息平台\[6\]。

## 参考资料

## 参考书目

  -
  -
  -
## 外部链接

  - [HBase官方主页](http://hbase.apache.org)
  - [Hadoop官方主页](http://hadoop.apache.org)
  - [了解HBase和BigTable](https://web.archive.org/web/20090220000026/http://jimbojw.com/wiki/index.php?title=Understanding_HBase_and_BigTable)
  - [HBase News and Articles on
    myNoSQL](http://nosql.mypopescu.com/tagged/hbase)
  - [对比各种非关系型数据库：Cassandra, HBase, MongoDB,
    Riak](https://web.archive.org/web/20140528110238/http://www.networkworld.com/news/tech/2012/102212-nosql-263595.html)
    (来自网络)

[Category:Hadoop](https://zh.wikipedia.org/wiki/Category:Hadoop "wikilink")
[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink")

1.  [Powered By HBase](http://wiki.apache.org/hadoop/Hbase/PoweredBy)

2.  [StumbleUpon HBase
    Presentation](http://www.docstoc.com/docs/9912857/HBase-nosql-presentation)

3.  [The Underlying Technology of
    Messages](http://www.facebook.com/notes/facebook-engineering/the-underlying-technology-of-messages/454991608919)

4.  [Facebook: Why our 'next-gen' comms ditched
    MySQL](http://www.theregister.co.uk/2010/12/17/facebook_messages_tech/)
    Retrieved: 17 December 2010

5.  [Powerset
    Blog](http://www.bing.com/community/site_blogs/b/powerset/default.aspx)


6.