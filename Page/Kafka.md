**Kafka**是由[Apache软件基金会](../Page/Apache软件基金会.md "wikilink")开发的一个[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")[流处理平台](https://zh.wikipedia.org/wiki/流处理 "wikilink")，由[Scala](../Page/Scala.md "wikilink")和[Java](../Page/Java.md "wikilink")编写。该项目的目标是为处理实时数据提供一个统一、高吞吐、低延迟的平台。其持久化层本质上是一个“按照分布式事务日志架构的大规模发布/订阅消息队列”，\[1\]这使它作为企业级基础设施来处理流式数据非常有价值。此外，Kafka可以通过Kafka Connect连接到外部系统（用于数据输入/输出），并提供了Kafka Streams——一个[Java](../Page/Java.md "wikilink")流式处理[库](https://zh.wikipedia.org/wiki/库_\(计算机\) "wikilink")。

该设计受的影响较大。\[2\]

## Kafka的历史

Kafka最初是由[领英开发](https://zh.wikipedia.org/wiki/领英 "wikilink")，并随后于2011年初开源，并于2012年10月23日由[Apache Incubator孵化出站](https://zh.wikipedia.org/wiki/Apache_Incubator "wikilink")。2014年11月，几个曾在领英为Kafka工作的工程师，创建了名为Confluent的新公司，\[3\]，并着眼于Kafka。根据2014年Quora的帖子，Jay Kreps似乎已经将它以作家[弗朗茨·卡夫卡](../Page/弗朗茨·卡夫卡.md "wikilink")命名。Kreps选择将该系统以一个作家命名是因为，它是“一个用于优化写作的系统”，而且他很喜欢卡夫卡的作品。\[4\]

## Kafka的架构

[Overview_of_Apache_Kafka.svg](https://zh.wikipedia.org/wiki/File:Overview_of_Apache_Kafka.svg "fig:Overview_of_Apache_Kafka.svg")

Kafka存储的消息来自任意多被称为“生产者”（Producer）的进程。数据从而可以被分配到不同的“分区”（Partition）、不同的“Topic”下。在一个分区内，这些消息被索引并连同时间戳存储在一起。其它被称为“消费者”（Consumer）的进程可以从分区查询消息。Kafka运行在一个由一台或多台服务器组成的集群上，并且分区可以跨集群结点分布。

Kafka高效地处理实时流式数据，可以实现与Storm、HBase和Spark的集成。作为群集部署到多台服务器上，Kafka处理它所有的发布和订阅消息系统使用了四个API，即生产者API、消费者API、Stream API和Connector API。它能够传递大规模流式消息，自带容错功能，已经取代了一些传统消息系统，如JMS、AMQP等。

Kafka架构的主要术语包括Topic、Record和Broker。Topic由Record组成，Record持有不同的信息，而Broker则负责复制消息。Kafka有四个主要API：

  - **生产者API**：支持应用程序发布Record流。
  - **消费者API**：支持应用程序订阅Topic和处理Record流。
  - **Stream API**：将输入流转换为输出流，并产生结果。
  - **Connector API**：执行可重用的生产者和消费者API，可将Topic链接到现有应用程序。

## 相关术语

  - Topic 用来对消息进行分类，每个进入到Kafka的信息都会被放到一个Topic下
  - Broker 用来实现数据存储的主机服务器
  - Partition 每个Topic中的消息会被分为若干个Partition，以提高消息的处理效率
  - Producer 消息的生产者
  - Consumer 消息的消费者
  - Consumer Group 消息的消费群组

## 设计目标

## Kafka的性能

由于其广泛集成到企业级基础设施中，监测Kafka在规模运行中的性能成为一个日益重要的问题。监测端到端性能，要求跟踪所有指标，包括Broker、消费者和生产者。除此之外还要监测[ZooKeeper](https://zh.wikipedia.org/wiki/ZooKeeper "wikilink")，Kafka用它来协调各个消费者。\[5\]\[6\]目前有一些监测平台可以追蹤 Kafka 的性能，有开源的，如[领英的Burrow](https://zh.wikipedia.org/wiki/领英 "wikilink")；也有付费的，如。除了这些平台之外，收集Kafka的数据也可以使用工具来进行，这些工具一般需要Java，包括JConsole。\[7\]

## Consumer Group

## Kafka文件格式

00000000000000000000.index 00000000000000000000.log 00000000000000000000.timeindex 00000000000000782248.snapshot leader-epoch-checkpoint

## 使用Kafka的企业

下面的列表是曾经或正在使用Kafka的知名企业：

## 参见

## 参考资料

## 外部链接

  - [Apache Kafka网站](http://kafka.apache.org/)
  - [项目设计讨论](http://kafka.apache.org/documentation.html#design)
  - [Github镜像](https://github.com/apache/kafka)
  - [Morten Kjetland对Apache Kafka的介绍](http://vimeo.com/62298867)
  - [Quora上与RabbitMQ的对比](http://www.quora.com/RabbitMQ/RabbitMQ-vs-Kafka-which-one-for-durable-messaging-with-good-query-features?share=1)
  - [Kafka开发者邮件列表中与RabbitMQ的对比](http://mail-archives.apache.org/mod_mbox/kafka-users/201306.mbox/%3CCACOPnvdd0_Xr3oOy8Dc8pu0z-_u813xnCOb80ZWpjVeUudhK9A@mail.gmail.com%3E)
  - [Stackoverflow上与RabbitMQ和ZeroMQ的对比](http://stackoverflow.com/questions/731233/activemq-or-rabbitmq-or-zeromq-or)
  - [Apache Kafka中的集群内部响应](http://engineering.linkedin.com/kafka/intra-cluster-replication-apache-kafka)
  - [Kafka用户邮件列表讨论](https://web.archive.org/web/20140202124338/http://qnalist.com/q/incubator-kafka-users)

[Category:2011年软件](https://zh.wikipedia.org/wiki/Category:2011年软件 "wikilink") [Category:面向消息的中间件](https://zh.wikipedia.org/wiki/Category:面向消息的中间件 "wikilink") [Category:面向服务架构的相关产品](https://zh.wikipedia.org/wiki/Category:面向服务架构的相关产品 "wikilink") [Category:企业应用集成](https://zh.wikipedia.org/wiki/Category:企业应用集成 "wikilink") [Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:Scala平台軟體](https://zh.wikipedia.org/wiki/Category:Scala平台軟體 "wikilink") [Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink")

1.
2.
3.
4.
5.
6.
7.