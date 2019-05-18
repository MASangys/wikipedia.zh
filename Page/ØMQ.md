**ØMQ**
（也拼写作**ZeroMQ**，**0MQ**或**ZMQ**)是一个为可伸缩的[分布式或并发应用程序设计的高性能异步消息库](../Page/分布式计算.md "wikilink")。它提供一个[消息队列](../Page/消息队列.md "wikilink"),
但是与[面向消息的中间件不同](https://zh.wikipedia.org/wiki/面向消息的中间件 "wikilink")，ZeroMQ的运行不需要专门的[消息代理](https://zh.wikipedia.org/wiki/消息代理 "wikilink")（）。该库设计成常见的[套接字风格的](../Page/Berkeley套接字.md "wikilink")[API](../Page/应用程序接口.md "wikilink")。

ZeroMQ是由iMatix公司和大量贡献者组成的社群共同开发的。ZeroQ通过许多第三方软件支持大部分流行的编程语言，从[Java和](../Page/Java.md "wikilink")[Python到](../Page/Python.md "wikilink")[Erlang和](../Page/Erlang.md "wikilink")[Haskell](../Page/Haskell.md "wikilink")。

## 技术

类库提供一些套接字（对传统[Berkeley套接字和](../Page/Berkeley套接字.md "wikilink")[Unix
domain
socket的泛化](https://zh.wikipedia.org/wiki/Unix_domain_socket "wikilink")），每一个套接字可以代表一个[端口之间的](https://zh.wikipedia.org/wiki/通讯端口 "wikilink")连接。以消息的粒度进行操作，套接字需要使用一种[消息模式](https://zh.wikipedia.org/wiki/消息模式 "wikilink")（）,然后专门为那种模式进行了优化。

基本的ZeroMQ模式有:

  - **[请求响应](https://zh.wikipedia.org/wiki/请求响应 "wikilink")**模式
    将一组客户端连接到一组服务器。这是一种[远程过程调用和任务分发模式](https://zh.wikipedia.org/wiki/远程过程调用 "wikilink")。
  - **[发布/订阅](https://zh.wikipedia.org/wiki/发布/订阅 "wikilink")**模式
    将一组发布者连接到一组订阅者。这是一种数据分发模式。
  - **管道**模式
    以扇出/扇入模式连接节点，可以有多个步骤，可以有循环。这是一种[并行的任务分发和收集模式](../Page/并行计算.md "wikilink")。
  - **排他对**模式
    在一个排他对中连接两个套接字。 （这是一种高级的为某种用例而设计的低级别模式）

任何通过套接字的消息被看作不透明的数据[块](https://zh.wikipedia.org/wiki/二進位大型物件 "wikilink")。发送给订阅者的消息可以自动地通过块最开始的字符串进行过滤。ZeroMQ提供多种消息传输协议，包括[TCP](../Page/传输控制协议.md "wikilink")，[PGM](https://zh.wikipedia.org/wiki/实际通用多播 "wikilink")（可靠的多播），[进程间通信](https://zh.wikipedia.org/wiki/进程间通信 "wikilink")（IPC）
以及线程间通讯（ITC）。

由于内部线程模型，ZeroMQ的性能非常好，通过利用一种自动消息批处理技术，它甚至在吞吐量上超过了TCP的性能。\[1\]\[2\]

ZeroMQ实现了ZMTP, ZeroMQ消息传输协议。\[3\]
ZMTP定义了向后兼容性的规则，可扩展的安全机制，命令和消息分帧，连接元数据，以及其他传输层功能。不使用完整的ZeroMQ实现，而是直接实现ZMTP协议的项目不断增加。\[4\]

## 历史

2010年3月30日，[AMQP的最初设计者iMatix公司的首席执行官](https://zh.wikipedia.org/wiki/Advanced_Message_Queuing_Protocol "wikilink")[Pieter
Hintjens宣布iMatix将退出AMQP工作组](https://zh.wikipedia.org/wiki/Pieter_Hintjens "wikilink")，而且为了简单得多，快的多的ZeroMQ，将不支持
可能发布的AMQP/1.0\[5\]\[6\]

2011年，[欧洲核子研究组织](https://zh.wikipedia.org/wiki/欧洲核子研究组织 "wikilink")
（CERN）调查了统一用于操作CERN加速器的中间件解决方案的方式，欧洲核子研究组织的研究比较了[CORBA](../Page/CORBA.md "wikilink")，[Ice](https://zh.wikipedia.org/wiki/Internet_Communications_Engine "wikilink")，[Thrift](https://zh.wikipedia.org/wiki/Apache_Thrift "wikilink")，ZeroMQ,
YAMI4，[RTI和](https://zh.wikipedia.org/wiki/Run-Time_Infrastructure_\(simulation\) "wikilink")
[Qpid](../Page/Apache_Qpid.md "wikilink") (AMQP) ，ZeroMQ得到了最高的分数。\[7\]

2012年3月，由于在项目控制权上的分歧，一些ZeroMQ的最初开发者建立了ZeroMQ的[分支](https://zh.wikipedia.org/wiki/复刻 "wikilink")，Crossroads
I/O. Crossroads
I/O\[8\]计划使用更常见的“[仁慈独裁者](https://zh.wikipedia.org/wiki/仁慈独裁者 "wikilink")”模式，Martin
Sustrik将充当仁慈独裁者。\[9\]

2012年8月，Dongmin Yu宣布了他的纯Java的ZeroMQ实现，JeroMQ.\[10\]
这激发了更多的ZeroMQ全本地化的移植，例如C\#的NetMQ。\[11\]

2013年3月, Pieter Hintjens宣布了ZMTP线级协议的新的草案，为ZeroMQ提供了安全机制的可扩展性。\[12\]

## 参见

## 参考文献

## 外部链接

  -
  - [ØMQ(ZeroMQ)简介](http://www.infoq.com/cn/news/2010/09/introduction-zero-mq).
    InfoQ。

  - [0MQ: A new approach to messaging](http://lwn.net/Articles/370307/).
    Linux Weekly News.

  - [ZeroMQ is the Answer](http://vimeo.com/20605470) (a talk at PHP UK
    conference 2012)

  - [ZeroMQ an
    introduction](https://web.archive.org/web/20100708013634/http://nichol.as/zeromq-an-introduction)

  - [Selecting a Message Queue – AMQP or
    ZeroMQ](https://web.archive.org/web/20100820232306/http://bhavin.directi.com/selecting-a-message-queue-amqp-or-zeromq/)

  - [Why ZeroMQ?](http://www.youtube.com/watch?v=_JCBphyciAs)
    (introductory video)

  - [ZeroMQ: Modern & Fast Networking
    Stack](http://www.igvita.com/2010/09/03/zeromq-modern-fast-networking-stack/)
    (overview with Ruby examples)

  - [ØMQ: The Theoretical Foundation](http://www.250bpm.com/concepts)

[Category:自由系統軟體](https://zh.wikipedia.org/wiki/Category:自由系統軟體 "wikilink")
[Category:进程间通信](https://zh.wikipedia.org/wiki/Category:进程间通信 "wikilink")
[Category:面向消息的中间件](https://zh.wikipedia.org/wiki/Category:面向消息的中间件 "wikilink")

1.

2.

3.

4.

5.

6.

7.
8.

9.

10.

11.

12.