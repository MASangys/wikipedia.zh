**RocketMQ**\[1\]是一个分布式消息和流数据平台，具有低延迟、高性能、高可靠性、万亿级容量和灵活的可扩展性。RocketMQ是2012年[阿里巴巴开源的第三代分布式消息中间件](../Page/阿里巴巴集团.md "wikilink")，2016年11月21日，阿里巴巴向[Apache软件基金会捐赠了RocketMQ](../Page/Apache软件基金会.md "wikilink")；第二年2月20日，Apache软件基金会宣布Apache
RocketMQ成为顶级项目。

## 历史

RocketMQ的发展可分为三个阶段。\[2\]

第一代在数据传输中使用push模式，在数据存储中使用[关系型数据库](../Page/关系数据库.md "wikilink")。它展现了消息传递的低延迟，并且满足了具有分布式事务的典型电子商务平台\[3\]
的用途。

第二代在数据传输中使用pull模式，在数据存储中使用[文件系统](../Page/文件系统.md "wikilink")。它更注重稳定性和可靠性，并显示出与第一代响应时间和[Kafka日志收集相当的性能](https://zh.wikipedia.org/wiki/Apache_Kafka "wikilink")。

第三代将pull模式与一些push操作相结合。它继承了第一代和第二代的优点，并在并发性和大量数据场景中表现出高性能。

## 功能

各种消息传递解决方案之间已经进行了很多比较，众所周知，当主题数量急剧增加时，RocketMQ的吞吐量下降幅度远小于Kafka。\[4\]由于具有高性能、高可靠性和高实时性的特点，RocketMQ与其他协议组件在MQTT等各种消息场景中的结合也越来越多。\[5\]

| **<small>客户端SDK</small>**                 | **<small>协议和规范</small>**                      | **<small>有序消息</small>**           | **<small>计划消息</small>**  | **<small>批量消息</small>**                 | **<small>广播消息</small>** | **<small>消息过滤器</small>**          |
| ----------------------------------------- | --------------------------------------------- | --------------------------------- | ------------------------ | --------------------------------------- | ----------------------- | --------------------------------- |
| <small>Java，C++，Python，Go，Node.Js</small> | <small>Pull模式，支持TCP，JMS，OpenMessaging</small> | <small>确保严格的消息排序，并可以优雅地扩展</small> | <small>支持</small>        | <small>支持同步模式以避免的消息损失</small>           | <small>支持</small>       | <small>支持基于SQL92的属性过滤器表达式</small> |
| **<small>服务器触发的重传递</small>**              | **<small>消息储存</small>**                       | **<small>消息追溯</small>**           | **<small>消息优先权</small>** | **<small>高可用性和故障转移</small>**            | **<small>消息跟踪</small>** | **<small>配置</small>**             |
| <small>支持</small>                         | <small>高性能和低延迟的文件存储</small>                   | <small>支持时间戳和偏移量两种表示</small>      | <small>不支持</small>       | <small>支持Master-Slave模型，不需要其他组件</small> | <small>支持</small>       | <small>开箱即用，用户只需要注意几个配置</small>   |

## 架构

[<File:Rmq-structure.png>](https://zh.wikipedia.org/wiki/File:Rmq-structure.png "fig:File:Rmq-structure.png")

RocketMQ由四部分组成：命名服务器（Name
Server）、代理（Broker）、生产者（Producer）和消费者（Consumer），其中每一个都可以水平扩展而没有单点故障，如上图所示。

### 命名服务器集群

命名服务器集群是用于服务发现的轻量级组件，它们可用于读取和写入路由信息。每个命名服务器可以记录全局信息，并支持快速存储扩展。

### 代理集群

代理集群使用轻量级主题（topic）和[队列](../Page/队列.md "wikilink")（queue）机制来管理数据存储。为了实现容错，代理提供2份或3份数据。客户端可以在Push和Pull模型中获取消息。此外，还支持[灾难恢复和丰富的指标统计信息](https://zh.wikipedia.org/wiki/灾难恢复 "wikilink")。

### 生产者集群

生产者（Producer）可以分布式部署，从生产者到代理的消息可以通过多路径进行平衡。此外，还支持快速故障恢复和低延迟。

### 消费者集群

消费者也可以在Push和Pull模型中进行分布式部署，他们可以实时订阅消息，以集群为单位消费消息，同时还支持消息广播。

## 应用

Apache RocketMQ至少可以应用到以下五个方面：

  - 异构系统的集成；
  - 应用程序之间的分离；
  - 在事件驱动机制和复杂事件架构模型中的骨干；
  - 数据复制渠道；
  - 与流计算引擎集成。

## 社区维护

RocketMQ团队为活跃社区做了很多工作。聚会、研讨会、ApacheCon和Code
Marathon定期在北京、深圳、杭州等地举行，以吸引新的贡献者和提交者。OpenMessaging基准测试套件目前可用于RocketMQ，它使RocketMQ与分布式消息传递的全球标准保持同步。\[6\]对于版本管理，采用了一系列标准化的软件开发过程。最新版本是4.2.0，4.3.0即将推出。可在[此处](https://github.com/apache/rocketmq)获取更多信息。

## 获奖

[2016年度最受欢迎中国开源软件奖](https://www.oschina.net/question/2886655_2216338)

[2017年度最受欢迎中国开源软件奖](https://www.oschina.net/question/2896879_2271735)

[第12次中日韩(中国-日本-韩国)开源软件优秀技术奖](http://www.copu.org.cn/new/266)

[2018年度最受欢迎中国开源软件奖](https://www.oschina.net/question/2896879_2290300?sort=default&)

## 参见

## 参考文献

<references />

## 外部链接

  - [Apache RocketMQ网站](https://rocketmq.apache.org/)
  - [Apache RocketMQ
    Externals](https://github.com/apache/rocketmq-externals)
  - [基于RocketMQ的MQTT协议消息推送服务器](https://ieeexplore.ieee.org/document/8089955/)

[Category:Apache软件基金会项目](https://zh.wikipedia.org/wiki/Category:Apache软件基金会项目 "wikilink")
[Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.
2.
3.
4.
5.
6.