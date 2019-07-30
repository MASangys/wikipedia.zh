**Apache Flink**是由[Apache软件基金会](../Page/Apache软件基金会.md "wikilink")开发的[开源流处理](https://zh.wikipedia.org/wiki/开源 "wikilink")[框架](https://zh.wikipedia.org/wiki/软件框架 "wikilink")，其核心是用[Java](../Page/Java.md "wikilink")和[Scala](../Page/Scala.md "wikilink")编写的分布式流数据流引擎。\[1\]\[2\]Flink以[数据并行和](https://zh.wikipedia.org/wiki/数据并行 "wikilink")[流水线方式执行任意流数据程序](../Page/流水线_\(计算机\).md "wikilink")\[3\]，Flink的流水线运行时系统可以执行[批处理和流处理程序](https://zh.wikipedia.org/wiki/批处理任务 "wikilink")。\[4\]\[5\]此外，Flink的运行时本身也支持[迭代算法的执行](https://zh.wikipedia.org/wiki/迭代法 "wikilink")。\[6\]

Flink提供高吞吐量、低延迟的流数据引擎\[7\]以及对事件-时间处理和状态管理的支持。Flink应用程序在发生机器故障时具有容错能力，并且支持exactly-once语义。\[8\]程序可以用Java、Scala\[9\]、[Python](../Page/Python.md "wikilink")\[10\]和[SQL](../Page/SQL.md "wikilink")\[11\]等语言编写，并自动编译和优化\[12\]到在集群或云环境中运行的数据流程序。\[13\]

Flink并不提供自己的数据存储系统，但为Amazon Kinesis、[Apache Kafka](https://zh.wikipedia.org/wiki/Apache_Kafka "wikilink")、[HDFS](https://zh.wikipedia.org/wiki/HDFS "wikilink")、[Apache Cassandra和ElasticSearch等系统提供了数据源和接收器](https://zh.wikipedia.org/wiki/Apache_Cassandra "wikilink")。\[14\]

## 开发

Apache Flink是由Apache软件基金会内的Apache Flink社区基于[Apache许可证](../Page/Apache许可证.md "wikilink")2.0\[15\]开发的，该项目已有超过100位代码提交者和超过[460贡献者。](https://github.com/apache/flink)

[data Artisans](http://www.data-artisans.com/)是由Apache Flink的创始人创建的公司。\[16\]目前，该公司已聘用了12个Apache Flink的代码提交者。\[17\]

## 概述

Apache Flink的数据流编程模型在有限和无限数据集上提供单次事件（event-at-a-time）处理。在基础层面，Flink程序由流和转换组成。 “从概念上讲，流是一种（可能永无止境的）数据流记录，转换是一种将一个或多个流作为输入并因此产生一个或多个输出流的操作”。\[18\]

Apache Flink包括两个核心API：用于有界或无界数据流的数据流API和用于有界数据集的数据集API。Flink还提供了一个表API，它是一种类似SQL的表达式语言，用于关系流和批处理，可以很容易地嵌入到Flink的数据流和数据集API中。Flink支持的最高级语言是SQL，它在语义上类似于表API，并将程序表示为SQL查询表达式。

### 编程模型和分布式运行时

Flink程序在执行后被映射到流数据流，\[19\]每个Flink数据流以一个或多个源（数据输入，例如消息队列或文件系统）开始，并以一个或多个接收器（数据输出，如消息队列、文件系统或数据库等）结束。Flink可以对流执行任意数量的变换，这些流可以被编排为有向无环数据流图，允许应用程序分支和合并数据流。

Flink提供现成的源和接收连接器，包括[Apache Kafka](../Page/Kafka.md "wikilink")、Amazon Kinesis、[HDFS和](https://zh.wikipedia.org/wiki/HDFS "wikilink")[Apache Cassandra等](https://zh.wikipedia.org/wiki/Apache_Cassandra "wikilink")。\[20\]

Flink程序可以作为集群内的分布式系统运行，也可以以独立模式或在YARN、Mesos、基于Docker的环境和其他资源管理框架下进行部署。\[21\]

### 状态：检查点、保存点和容错

Apache Flink具有一种基于分布式检查点的轻量级容错机制。\[22\] 检查点是应用程序状态和源流中位置的自动异步快照。在发生故障的情况下，启用了检查点的Flink程序将在恢复时从上一个完成的检查点恢复处理，确保Flink在应用程序中保持一次性（exactly-once）状态语义。检查点机制暴露应用程序代码的接口，以便将外部系统包括在检查点机制中（如打开和提交数据库系统的事务）。

Flink还包括一种名为保存点的机制，它是一种手动触发的检查点。\[23\]用户可以生成保存点，停止正在运行的Flink程序，然后从流中的相同应用程序状态和位置恢复程序。 保存点可以在不丢失应用程序状态的情况下对Flink程序或Flink群集进行更新。从Flink 1.2开始，保存点还允许以不同的并行性重新启动应用程序，这使得用户可以适应不断变化的工作负载。

### 数据流API

Flink的[数据流API](https://ci.apache.org/projects/flink/flink-docs-release-1.2/dev/datastream_api.html)支持有界或无界数据流上的转换（如过滤器、聚合和窗口函数），包含了20多种不同类型的转换，可以在Java和Scala中使用。\[24\]

有状态流处理程序的一个简单Scala示例是从连续输入流发出字数并在5秒窗口中对数据进行分组的应用：

``` scala
import org.apache.flink.streaming.api.scala._
import org.apache.flink.streaming.api.windowing.time.Time

case class WordCount(word: String, count: Int)

object WindowWordCount {
  def main(args: Array[String]) {

    val env = StreamExecutionEnvironment.getExecutionEnvironment
    val text = env.socketTextStream("localhost", 9999)

    val counts = text.flatMap { _.toLowerCase.split("\\W+") filter { _.nonEmpty } }
      .map { WordCount(_, 1) }
      .keyBy("word")
      .timeWindow(Time.seconds(5))
      .sum("count")

    counts.print

    env.execute("Window Stream WordCount")
  }
}
```

#### Apache Beam - Flink Runner

Apache Beam“提供了一种高级统一编程模型，允许（开发人员）实现可在在任何执行引擎上运行批处理和流数据处理作业”。\[25\]Apache Flink-on-Beam运行器是功能最丰富的、由Beam社区维护的能力矩阵。\[26\]

data Artisans与Apache Flink社区一起，与Beam社区密切合作，开发了一个强大的Flink runner。\[27\]

### 数据集API

Flink的[数据集API](https://ci.apache.org/projects/flink/flink-docs-release-1.2/dev/batch/index.html)支持对有界数据集进行转换（如过滤、映射、连接和分组），包含了20多种不同类型的转换。\[28\] 该API可用于Java、Scala和实验性的Python API。Flink的数据集API在概念上与数据流API类似。

### 表API和SQL

Flink的[表API](https://ci.apache.org/projects/flink/flink-docs-release-1.2/dev/table_api.html)是一种类似SQL的表达式语言，用于关系流和批处理，可以嵌入Flink的Java和Scala数据集和数据流API中。表API和SQL接口在关系表抽象上运行，可以从外部数据源或现有数据流和数据集创建表。表API支持关系运算符，如表上的选择、聚合和连接等。

也可以使用常规SQL查询表。表API提供了和SQL相同的功能，可以在同一程序中混合使用。将表转换回数据集或数据流时，由关系运算符和SQL查询定义的逻辑计划将使用Apache Calcite进行优化，并转换为数据集或数据流程序。

## Flink Forward

[Flink Forward](http://flink-forward.org/)是一个关于Apache Flink的年度会议。第一届Flink Forward于2015年在柏林举行。为期两天的会议有来自16个国家的250多名与会者。 会议分为两个部分，Flink开发人员提供30多个技术演示，另外还有一个Flink培训实践。

2016年，350名与会者参加了会议，40多位发言人在3个平行轨道上进行了技术讲座。第三天，与会者被邀请参加实践培训课程。

2017年，该活动也将扩展到旧金山。 会议致力于Flink如何在企业中使用、Flink系统内部、与Flink的生态系统集成以及平台的未来进行技术会谈。它包含主题演讲Flink用户在工业和学术界的讲座以及关于Apache Flink的实践培训课程。

来自以下组织的发言人在Flink Forward会议上发表了演讲：[阿里巴巴集团](../Page/阿里巴巴集团.md "wikilink")、、、[第一资本](https://zh.wikipedia.org/wiki/第一资本 "wikilink")、[Cloudera](../Page/Cloudera.md "wikilink")、data Artisans、[EMC](../Page/Dell_EMC.md "wikilink")、[爱立信](https://zh.wikipedia.org/wiki/爱立信 "wikilink")、[Hortonworks](../Page/Hortonworks.md "wikilink")、[华为](../Page/华为.md "wikilink")、[IBM](../Page/IBM.md "wikilink")、[Google](../Page/Google.md "wikilink")、[MapR](../Page/MapR.md "wikilink")、[MongoDB](../Page/MongoDB.md "wikilink")、[Netflix](../Page/Netflix.md "wikilink")、、，[Red Hat](https://zh.wikipedia.org/wiki/Red_Hat "wikilink")、[ResearchGate](../Page/ResearchGate.md "wikilink")、[Uber和](https://zh.wikipedia.org/wiki/Uber "wikilink")[Zalando](../Page/Zalando.md "wikilink")。\[29\]\[30\]

## 历史

2010年，研究项目“Stratosphere：云上的信息管理”\[31\]（由德国研究基金会（DFG）资助\[32\]）由[柏林工业大学](../Page/柏林工业大学.md "wikilink")、[柏林洪堡大学和](../Page/柏林洪堡大學.md "wikilink")[Hasso-Plattner-Institut合作启动](https://zh.wikipedia.org/wiki/:en:Hasso_Plattner_Institute "wikilink")。Flink从Stratosphere的分布式执行引擎的一个分支开始，于2014年3月成为[Apache孵化器项目](https://zh.wikipedia.org/wiki/Apache孵化 "wikilink")。\[33\]2014年12月，Flink称为Apache顶级项目。\[34\]\[35\]\[36\]<ref>

<div>

[(德语)](http://www.heise.de/developer/meldung/Big-Data-Apache-Flink-wird-Top-Level-Projekt-2516177.html)

</div>

</ref>

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>原始发布的日期</p></th>
<th><p>最新版本</p></th>
<th><p>发布日期</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>2015-06-24</p></td>
<td><p>0.9.1</p></td>
<td><p>2015-09-01</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2015-11-16</p></td>
<td><p>0.10.2</p></td>
<td><p>2016-02-11</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2016-03-08</p></td>
<td><p>1.0.3版</p></td>
<td><p>2016-05-11</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2016-08-08</p></td>
<td><p>1.1.5</p></td>
<td><p>2017-03-22</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2017-02-06</p></td>
<td><p>1.2.1</p></td>
<td><p>2017-04-26</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2017-06-01</p></td>
<td><p>1.3.3</p></td>
<td><p>2018-03-15</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2017-12-12</p></td>
<td><p>1.4.2</p></td>
<td><p>2018-03-08</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2018-05-25</p></td>
<td><p>1.5.5</p></td>
<td><p>2018-10-29</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2018-08-08</p></td>
<td><p>1.6.2</p></td>
<td><p>2018-10-29</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2018-11-30</p></td>
<td><p>1.7.2</p></td>
<td><p>2019-02-15</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

*发布日期*

  - 08/2018: [Apache Flink1.6](https://flink.apache.org/news/2018/08/09/release-1.6.0.html) (09/2018: [1.6.1](https://flink.apache.org/news/2018/09/20/release-1.6.1.html);10/2018: [1.6.2](https://flink.apache.org/news/2018/10/29/release-1.6.2.html))
  - 05/2018: [Apache Flink1.5](https://flink.apache.org/news/2018/05/25/release-1.5.0.html) (07/2018: [1.5.1](https://flink.apache.org/news/2018/07/12/release-1.5.1.html);07/2018: [1.5.2](https://flink.apache.org/news/2018/07/31/release-1.5.2.html);08/2018: [1.5.3](https://flink.apache.org/news/2018/08/21/release-1.5.3.html);09/2018: [1.5.4](https://flink.apache.org/news/2018/09/20/release-1.5.4.html);10/2018: [1.5.5](https://flink.apache.org/news/2018/10/29/release-1.5.5.html))
  - 12/2017年: [Apache Flink1.4](https://flink.apache.org/news/2017/12/12/release-1.4.0.html) (02/2018: [1.4.1](https://flink.apache.org/news/2018/02/15/release-1.4.1.html);03/2018: [1.4.2](https://flink.apache.org/news/2018/03/08/release-1.4.2.html))
  - 06/2017: [Apache Flink1.3](https://flink.apache.org/news/2017/06/01/release-1.3.0.html) (06/2017: [1.3.1](https://flink.apache.org/news/2017/06/23/release-1.3.1.html);08/2017: [1.3.2](https://flink.apache.org/news/2017/08/05/release-1.3.2.html);03/2018: [1.3.3](https://flink.apache.org/news/2018/03/15/release-1.3.3.html))
  - 02/2017: [Apache Flink1.2](https://flink.apache.org/news/2017/02/06/release-1.2.0.html) (04/2017: [1.2.1](https://flink.apache.org/news/2017/04/26/release-1.2.1.html))
  - 08/2016: [Apache Flink1.1](http://flink.apache.org/news/2016/08/08/release-1.1.0.html) (08/2016: [1.1.1](https://flink.apache.org/news/2016/08/11/release-1.1.1.html);09/2016 [v1。1.2](https://flink.apache.org/news/2016/09/05/release-1.1.2.html);10/2016 [v1。1.3](https://flink.apache.org/news/2016/10/12/release-1.1.3.html);12/2016 [v1。1.4](https://flink.apache.org/news/2016/12/21/release-1.1.4.html);03/2017 [v1。1.5](https://flink.apache.org/news/2017/03/23/release-1.1.5.html))
  - 03/2016: [Apache Flink1.0](https://flink.apache.org/news/2016/03/08/release-1.0.0.html) (04/2016: [1.0.1](https://flink.apache.org/news/2016/04/06/release-1.0.1.html);04/2016: [1.0.2](https://flink.apache.org/news/2016/04/22/release-1.0.2.html);05/2016 [v1。0.3](http://flink.apache.org/news/2016/05/11/release-1.0.3.html))
  - 11/2015: [Apache Flink0.10](https://flink.apache.org/news/2015/11/16/release-0.10.0.html) (11/2015: [0.10.1](https://flink.apache.org/news/2015/11/27/release-0.10.1.html);02/2016: [0.10.2](https://flink.apache.org/news/2016/02/11/release-0.10.2.html))
  - 06/2015: [Apache Flink0.9](https://flink.apache.org/news/2015/06/24/announcing-apache-flink-0.9.0-release.html) (09/2015: [0.9.1](https://flink.apache.org/news/2015/09/01/release-0.9.1.html))
      - 04/2015: [Apache Flink0.9-里程碑-1](https://flink.apache.org/news/2015/04/13/release-0.9.0-milestone1.html)

*Apache孵化器发布日期*

  - 01/2015: [Apache Flink0.8-孵化](https://flink.apache.org/news/2015/01/21/release-0.8.html)
  - 11/2014: [Apache Flink0.7-孵化](https://flink.apache.org/news/2014/11/04/release-0.7.0.html)
  - 08/2014: [Apache Flink0.6-孵化](https://flink.apache.org/news/2014/08/26/release-0.6.html) (09/2014: [0.6.1-孵化](https://flink.apache.org/news/2014/09/26/release-0.6.1.html))
  - 05/2014: Stratosphere 0.5(06/2014:0.5.1;07/2014:0.5.2)

*Pre-Apache Stratosphere 发布日期*

  - 01/2014: Stratosphere 0.4（0.3版本被跳过）
  - 08/2012: Stratosphere 0.2
  - 05/2011: Stratosphere 0.1（08/2011:0.1.1）

## 参见

  - [Apache软件基金会项目列表](https://zh.wikipedia.org/wiki/:en:List_of_Apache_Software_Foundation_projects "wikilink")
  - 其他类似的数据处理引擎，如Storm和Spark。\[37\]
  - [Apache Beam](../Page/Apache_Beam.md "wikilink")，一种共享编程模型，Flink是其创始后端。

## 参考文献

<references group="">

</references>

## 外部链接

  -
  -
  -
  - (德语)

  -
  - ["Going with the stream: Unbounded data processing with Apache Flink"](http://www.zdnet.com/article/going-with-the-stream-unbounded-data-processing-with-apache-flink/)

  - ["Apache Flink 1.2 Released with Dynamic Rescaling, Security and Queryable State"](https://www.infoq.com/news/2017/02/apache-flink-1.2)

  - ["The Dataflow Model: A Practical Approach to Balancing Correctness, Latency, and Cost in Massive-Scale, Unbounded, Out-of-Order Data Processing"](https://research.google.com/pubs/pub43864.html)

[Category:自由系統軟體](https://zh.wikipedia.org/wiki/Category:自由系統軟體 "wikilink") [Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink") [Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink") [Category:用Java編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Java編程的自由軟體 "wikilink") [Category:Apache软件基金会项目](https://zh.wikipedia.org/wiki/Category:Apache软件基金会项目 "wikilink") [Category:使用过时图像语法的页面](https://zh.wikipedia.org/wiki/Category:使用过时图像语法的页面 "wikilink") [Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink") [Category:串流處理](https://zh.wikipedia.org/wiki/Category:串流處理 "wikilink")

1.

2.

3.  Alexander Alexandrov, Rico Bergmann, Stephan Ewen, Johann-Christoph Freytag, Fabian Hueske, Arvid Heise, Odej Kao, Marcus Leich, Ulf Leser, Volker Markl, Felix Naumann, Mathias Peters, Astrid Rheinländer, Matthias J. Sax, Sebastian Schelter, Mareike Höger, Kostas Tzoumas, and Daniel Warneke. 2014. *The Stratosphere platform for big data analytics*. The VLDB Journal 23, 6 (December 2014), 939-964. [DOI](https://dx.doi.org/10.1007/s00778-014-0357-y)

4.

5.

6.  Stephan Ewen, Kostas Tzoumas, Moritz Kaufmann, and Volker Markl. 2012. *Spinning fast iterative data flows*. Proc. VLDB Endow. 5, 11 (July 2012), 1268-1279. [DOI](https://dx.doi.org/10.14778/2350229.2350245)

7.

8.

9.

10.

11.

12. Fabian Hueske, Mathias Peters, Matthias J. Sax, Astrid Rheinländer, Rico Bergmann, Aljoscha Krettek, and Kostas Tzoumas. 2012. *Opening the black boxes in data flow optimization*. Proc. VLDB Endow. 5, 11 (July 2012), 1256-1267. [DOI](https://dx.doi.org/10.14778/2350229.2350244)

13. Daniel Warneke and Odej Kao. 2009. *Nephele: efficient parallel data processing in the cloud*. In Proceedings of the 2nd Workshop on Many-Task Computing on Grids and Supercomputers (MTAGS '09). ACM, New York, NY, USA, Article 8, 10 pages. [DOI](http://doi.acm.org/10.1145/1646468.1646476)

14.

15.

16.

17.

18.

19.

20.

21.

22.
23.

24.

25.

26.

27.  Google Cloud Big Data and Machine Learning Blog {{\!}} Google Cloud Platform|accessdate=2017-02-24|work=Google Cloud Platform|language=en}}

28.

29.  FlinkForward {{\!}} 12-14 Sep 2016 {{\!}} Berlin|website=2016.flink-forward.org|language=en-US|access-date=2017-02-24}}

30.

31.

32.

33.

34.

35.

36.

37.