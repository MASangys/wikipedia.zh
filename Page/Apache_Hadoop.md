**Apache
Hadoop**是一款支持數據密集型[分佈式應用程序并以Apache](https://zh.wikipedia.org/wiki/分佈式 "wikilink")
2.0許可協議發佈的[開源](https://zh.wikipedia.org/wiki/開源 "wikilink")[軟體框架](https://zh.wikipedia.org/wiki/軟體框架 "wikilink")。它支持在商品硬件構建的大型集群上運行的應用程序。Hadoop是根據[谷歌公司發表的](https://zh.wikipedia.org/wiki/谷歌公司 "wikilink")[MapReduce](../Page/MapReduce.md "wikilink")和[Google檔案系統](../Page/Google檔案系統.md "wikilink")的論文自行實作而成。所有的Hadoop模块都有一个基本假设，即硬件故障是常见情况，应该由框架自动处理。

Hadoop框架透明地為應用提供可靠性和數據移動。它實現了名為MapReduce的[編程範式](https://zh.wikipedia.org/wiki/編程範式 "wikilink")：應用程序被分割成許多小部分，而每個部分都能在集群中的任意節點上執行或重新執行。此外，Hadoop還提供了分佈式文件系統，用以存儲所有計算節點的數據，這為整個集群帶來了非常高的帶寬。MapReduce和分佈式文件系統的設計，使得整個框架能夠自動處理節點故障。它使應用程序與成千上萬的獨立計算的電腦和PB級的數據连接起来。現在普遍認為整個Apache
Hadoop“平台”包括Hadoop內核、MapReduce、Hadoop分佈式文件系統（HDFS）以及一些相關項目，有Apache
Hive和Apache HBase等等。

## 主要子项目

[Cubieboard_HADOOP_cluster.JPG](https://zh.wikipedia.org/wiki/File:Cubieboard_HADOOP_cluster.JPG "fig:Cubieboard_HADOOP_cluster.JPG")用Cubieboard电脑。\]\]

  - Hadoop
    Common：在0.20及以前的版本中，包含HDFS、[MapReduce](../Page/MapReduce.md "wikilink")和其他项目公共内容，从0.21开始HDFS和MapReduce被分离为独立的子项目，其余内容为Hadoop
    Common
  - HDFS：Hadoop分佈式文件系統（Distributed File System）－HDFS（Hadoop Distributed
    File System）
  - MapReduce：并行计算框架，0.20前使用org.apache.hadoop.mapred旧接口，0.20版本开始引入org.apache.hadoop.mapreduce的新API

## 相關项目

  - [Apache
    HBase](../Page/Apache_HBase.md "wikilink")：分布式[NoSQL](../Page/NoSQL.md "wikilink")列[数据库](../Page/数据库.md "wikilink")，类似[谷歌公司](https://zh.wikipedia.org/wiki/谷歌 "wikilink")[BigTable](https://zh.wikipedia.org/wiki/BigTable "wikilink")。
  - [Apache
    Hive](https://zh.wikipedia.org/wiki/Apache_Hive "wikilink")：构建于hadoop之上的[数据仓库](https://zh.wikipedia.org/wiki/数据仓库 "wikilink")，通过一种类[SQL](../Page/SQL.md "wikilink")语言HiveQL为用户提供数据的归纳、查询和分析等功能。Hive最初由[Facebook](../Page/Facebook.md "wikilink")贡献。
  - [Apache
    Mahout](https://zh.wikipedia.org/wiki/Apache_Mahout "wikilink")：[机器学习](../Page/机器学习.md "wikilink")算法软件包。
  - [Apache
    Sqoop](https://zh.wikipedia.org/wiki/Apache_Sqoop "wikilink")：[结构化数据](https://zh.wikipedia.org/wiki/结构化数据 "wikilink")（如[关系数据库](../Page/关系数据库.md "wikilink")）与Apache
    Hadoop之间的数据转换工具。
  - [Apache
    ZooKeeper](../Page/Apache_ZooKeeper.md "wikilink")：分布式锁设施，提供类似[Google](../Page/Google.md "wikilink")
    [Chubby的功能](https://zh.wikipedia.org/wiki/Chubby "wikilink")，由[Facebook](../Page/Facebook.md "wikilink")贡献。
  - [Apache
    Avro](../Page/Apache_Avro.md "wikilink")：新的数据[序列化](../Page/序列化.md "wikilink")格式与传输工具，将逐步取代Hadoop原有的IPC机制。

## 知名用戶

### Hadoop在Yahoo\!的應用

2008年2月19日，[雅虎](../Page/雅虎.md "wikilink")使用10,000個[微處理器核心的](https://zh.wikipedia.org/wiki/微處理器 "wikilink")[Linux](../Page/Linux.md "wikilink")[计算机集群](../Page/计算机集群.md "wikilink")運行一個Hadoop應用程式。\[1\]

### 其他用戶

其他知名用戶包括\[2\]：

<div style="-moz-column-count:3; column-count:3;">

  - A9.com
  - [Facebook](../Page/Facebook.md "wikilink")
  - Fox Interactive Media
  - [华为](../Page/华为.md "wikilink")
  - [IBM](../Page/IBM.md "wikilink")
  - ImageShack
  - [資訊科學研究院](../Page/資訊科學研究院.md "wikilink")
  - [Joost](../Page/Joost.md "wikilink")
  - [Last.fm](../Page/Last.fm.md "wikilink")
  - Powerset
  - [紐約時報](https://zh.wikipedia.org/wiki/紐約時報 "wikilink")
  - Rackspace
  - Veoh
  - [中華電信](https://zh.wikipedia.org/wiki/中華電信 "wikilink")
  - [中国移动](https://zh.wikipedia.org/wiki/中国移动 "wikilink")

</div>

## Hadoop與Sun Grid Engine

[昇陽電腦的](https://zh.wikipedia.org/wiki/昇陽 "wikilink")[Sun Grid
Engine可以用来调度Hadoop](https://zh.wikipedia.org/wiki/Sun_Grid_Engine "wikilink")
Job。\[3\]\[4\]

## Hadoop與Condor

[威斯康辛大學麥迪遜分校的Condor](https://zh.wikipedia.org/wiki/威斯康辛大學麥迪遜分校 "wikilink")[計算機集群軟件也可以用作Hadoop](https://zh.wikipedia.org/wiki/計算機集群 "wikilink")
Job的排程。\[5\]

## 參見

  - [雲端運算](../Page/雲端運算.md "wikilink")
  - [高性能計算集群](../Page/高性能計算集群.md "wikilink")
  - [OpenStack](../Page/OpenStack.md "wikilink")－以[Apache許可證授權的雲端運算軟件](https://zh.wikipedia.org/wiki/Apache許可證 "wikilink")。
  - [Apache Spark](../Page/Apache_Spark.md "wikilink")

## 参考文献

## 外部連結

  - [Hadoop官方網站](http://hadoop.apache.org/)

{{-}}

[Category:Hadoop](https://zh.wikipedia.org/wiki/Category:Hadoop "wikilink")
[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink")
[Category:文件系统](https://zh.wikipedia.org/wiki/Category:文件系统 "wikilink")
[Category:分散式檔案系統](https://zh.wikipedia.org/wiki/Category:分散式檔案系統 "wikilink")

1.  [Yahoo\! Launches World's Largest Hadoop Production Application
    (Hadoop and Distributed Computing at
    Yahoo\!)](http://developer.yahoo.com/blogs/hadoop/2008/02/yahoo-worlds-largest-production-hadoop.html)

2.  [PoweredBy](http://wiki.apache.org/hadoop/PoweredBy)
3.
4.
5.