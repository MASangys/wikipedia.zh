> 本文内容由[Apache Spark](https://zh.wikipedia.org/wiki/Apache Spark)转换而来。


**Apache Spark**是一個[開源叢集運算框架](https://zh.wikipedia.org/wiki/開源 "wikilink")，最初是由加州大學柏克萊分校AMPLab所開發。相對於[Hadoop的](../Page/Apache_Hadoop.md "wikilink")[MapReduce](../Page/MapReduce.md "wikilink")會在執行完工作後將中介資料存放到磁碟中，Spark使用了記憶體內運算技術，能在資料尚未寫入硬碟時即在記憶體內分析運算。Spark在記憶體內執行程式的運算速度能做到比Hadoop MapReduce的運算速度快上100倍，即便是執行程式於硬碟時，Spark也能快上10倍速度。\[1\]Spark允許用戶將資料加載至叢集記憶體，並多次對其進行查詢，非常適合用於[機器學習演算法](https://zh.wikipedia.org/wiki/機器學習 "wikilink")。\[2\]

使用Spark需要搭配叢集管理員和分散式儲存系統。Spark支援獨立模式（本地Spark叢集）、[Hadoop YARN或](../Page/Apache_Hadoop.md "wikilink")[Apache Mesos的叢集管理](https://zh.wikipedia.org/wiki/Apache_Mesos "wikilink")。\[3\] 在分散式儲存方面，Spark可以和 [Alluxio](../Page/Alluxio.md "wikilink"), [HDFS](../Page/Apache_Hadoop.md "wikilink")\[4\]、 [Cassandra](https://zh.wikipedia.org/wiki/Apache_Cassandra "wikilink")\[5\] 、[OpenStack Swift和](https://zh.wikipedia.org/wiki/OpenStack#Object_Storage_\(Swift\) "wikilink")[Amazon S3等介面搭載](../Page/Amazon_S3.md "wikilink")。 Spark也支援偽分散式（pseudo-distributed）本地模式，不過通常只用於開發或測試時以本機檔案系統取代分散式儲存系統。在這樣的情況下，Spark僅在一台機器上使用每個CPU核心執行程序。

在2014年有超過465位貢獻家投入Spark開發\[6\]，讓其成為[Apache軟體基金會以及](https://zh.wikipedia.org/wiki/Apache軟體基金會 "wikilink")[巨量資料眾多開源專案中最為活躍的專案](https://zh.wikipedia.org/wiki/巨量資料 "wikilink")。

## 歷史

Spark在2009年由在[加州大學柏克萊分校AMPLab開創](https://zh.wikipedia.org/wiki/加州大學柏克萊分校 "wikilink")，2010年透過[BSD授權條款開源釋出](https://zh.wikipedia.org/wiki/BSD授權條款 "wikilink")。2013年，該專案被捐贈給[Apache軟體基金會並切換授權條款至Apache](https://zh.wikipedia.org/wiki/Apache軟體基金會 "wikilink")2.0。\[7\]。2014年2月，Spark成為Apache的頂級專案。2014年11月，Databricks團隊使用Spark 刷新資料排序世界記錄。\[8\]

## 專案構成要素

Spark專案包含下列幾項:

### Spark核心和彈性分散式資料集（RDDs）

Spark核心是整個專案的基礎，提供了分散式任務調度，排程和基本的I／O功能。而其基礎的程序抽象則稱為彈性分散式資料集（RDDs），是一個可以并行操作、有容錯機制的資料集合。 RDDs可以透過引用外部存儲系統的資料集建立（例如：共享文件系統、HDFS、HBase或其他 Hadoop 資料格式的資料來源）。或者是通過在現有RDDs的轉換而創建（比如：map、filter、reduce、join等等）。

RDD抽象化是經由一個以[Scala](../Page/Scala.md "wikilink"), [Java](../Page/Java.md "wikilink"), [Python](../Page/Python.md "wikilink")的語言集成API所呈現，簡化了編程複雜性，應用程序操縱RDDs的方法類似於操縱本地端的資料集合。

### Spark SQL

Spark SQL在Spark核心上帶出一種名為SchemaRDD的資料抽象化概念，提供結構化和半結構化資料相關的支援。Spark SQL提供了領域特定語言，可使用Scala、Java或Python來操縱SchemaRDDs。它還支援使用使用命令行界面和ODBC／JDBC伺服器操作SQL語言。在Spark 1.3版本，SchemaRDD被重新命名為DataFrame。

### Spark Streaming

Spark Streaming充分利用Spark核心的快速排程能力來執行串流分析。它擷取小批量的資料並對之執行RDD轉換。這種設計使串流分析可在同一個引擎內使用同一組為批次分析編寫而撰寫的應用程序代碼。

### MLlib

MLlib是Spark上分散式機器學習框架。Spark分散式記憶體式的架構比Hadoop磁碟式的[Apache Mahout快上](https://zh.wikipedia.org/wiki/Apache_Mahout "wikilink")10倍，擴充性甚至比要好。\[9\] MLlib可使用許多常見的機器學習和統計演算法，簡化大規模機器學習時間，其中包括：

  - 匯總統計、相關性、分層抽樣、假設檢定、隨機數據生成
  - 分類與回歸：[支持向量機](https://zh.wikipedia.org/wiki/支持向量機 "wikilink")、[回歸](https://zh.wikipedia.org/wiki/回歸 "wikilink")、[線性回歸](../Page/線性回歸.md "wikilink")、[邏輯回歸](https://zh.wikipedia.org/wiki/邏輯回歸 "wikilink")、[決策樹](https://zh.wikipedia.org/wiki/決策樹 "wikilink")、[樸素貝葉斯](https://zh.wikipedia.org/wiki/樸素貝葉斯分類器 "wikilink")
  - [協同過濾](../Page/協同過濾.md "wikilink")：ALS
  - 分群：[k-平均演算法](../Page/K-平均算法.md "wikilink")
  - 維度约减：[奇異值分解](https://zh.wikipedia.org/wiki/奇異值分解 "wikilink")（SVD），[主成分分析](../Page/主成分分析.md "wikilink")（PCA）
  - 特徵提取和轉換：TF-IDF、Word2Vec、StandardScaler
  - 最优化：隨機梯度下降法（SGD）、L-BFGS

### GraphX

GraphX是Spark上的分散式圖形處理框架。它提供了一組API，可用於表達圖表計算並可以模擬Pregel抽象化。GraphX還對這種抽象化提供了優化運行。

GraphX最初為[加州大學柏克萊分校AMPLab和Databricks的研究專案](https://zh.wikipedia.org/wiki/加州大學柏克萊分校 "wikilink")，後來捐贈給Spark專案。\[10\]

## 特色

  - Java、Scala、Python和R APIs。
  - 可擴展至超過8000個結點。\[11\]
  - 能夠在記憶體內緩存資料集以進行交互式資料分析。
  - Scala或Python中的互動式命令列介面可降低橫向擴展資料探索的反應時間。
  - Spark Streaming對即時資料串流的處理具有可擴充性、高吞吐量、可容錯性等特點。
  - Spark SQL支援結構化和關聯式查詢處理（SQL）。
  - MLlib機器學習演算法和Graphx圖形處理演算法的高階函式庫。

## 參考資料

## 外部連結

  -
  - [Spark SQL](https://spark.apache.org/sql/)

  - [Spark Streaming](https://spark.apache.org/streaming/)

  - [MLlib機器學習](https://spark.apache.org/mllib/)

  - [GraphX 圖形處理](https://spark.apache.org/graphx/)

[Category:叢集計算](https://zh.wikipedia.org/wiki/Category:叢集計算 "wikilink") [Category:Hadoop](https://zh.wikipedia.org/wiki/Category:Hadoop "wikilink") [Category:加州大學柏克萊分校](https://zh.wikipedia.org/wiki/Category:加州大學柏克萊分校 "wikilink") [Category:Apache軟體基金會](https://zh.wikipedia.org/wiki/Category:Apache軟體基金會 "wikilink") [Category:Scala平台軟體](https://zh.wikipedia.org/wiki/Category:Scala平台軟體 "wikilink") [Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink") [Category:使用Apache許可證的軟體](https://zh.wikipedia.org/wiki/Category:使用Apache許可證的軟體 "wikilink")

1.
2.
3.
4.  [Figure showing Spark in relation to other open-source Software projects including Hadoop](https://amplab.cs.berkeley.edu/software/)
5.
6.  [Open HUB Spark development activity](https://www.openhub.net/p/apache-spark)
7.
8.  [Spark officially sets a new record in large-scale sorting](http://databricks.com/blog/2014/11/05/spark-officially-sets-a-new-record-in-large-scale-sorting.html)
9.
10.
11.