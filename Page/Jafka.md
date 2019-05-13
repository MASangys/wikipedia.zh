**Jafka**
是一个[开源的](https://zh.wikipedia.org/wiki/开源 "wikilink")、高性能的、跨语言分布式，使用[GitHub托管](../Page/GitHub.md "wikilink")\[1\]。

Jafka
最早是由[Apache孵化的](https://zh.wikipedia.org/wiki/Apache "wikilink")[Kafka](https://zh.wikipedia.org/wiki/Kafka "wikilink")（由[LinkedIn捐助给Apache](https://zh.wikipedia.org/wiki/LinkedIn "wikilink")）克隆而来。

## 特色

  - 消息持久化非常快，服务端存储消息的开销为O(1)，并且基于文件系统，能够持久化TB级的消息而不损失性能。
  - 吞吐量取决于网络带宽。\[2\]
  - 完全的分布式系统，broker、producer、consumer都原生自动支持分布式。自动实现复杂均衡。
  - 内核非常小，整个系统（包括服务端和客户端）只有一个272KB的jar包，内部机制也不复杂，适合进行内嵌或者二次开发
    。整个服务端加上依赖组件共3.5MB。
  - 消息格式以及通信机制非常简单，适合进行跨语言开发。目前自带的[Python](../Page/Python.md "wikilink")
    3.x的客户端支持发送消息和接收消息。

## 跨语言

由于是一个开放式的数据传输协议，因此除了[Java开发语言受到支持](../Page/Java.md "wikilink")，[Python](../Page/Python.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")、[C](../Page/C.md "wikilink")、[C++等其他语言也能够很好的得到支持](../Page/C++.md "wikilink")。

## 其它

Jafka
遵循[Apache许可证](../Page/Apache许可证.md "wikilink")，同时发布的版本提交到[MAVEN中央仓库](../Page/MAVEN.md "wikilink")\[3\]。

## 参考

  - [Java](../Page/Java.md "wikilink")

  - [Apache ActiveMQ](../Page/Apache_ActiveMQ.md "wikilink")

  -
  - [Apache Qpid](https://zh.wikipedia.org/wiki/Apache_Qpid "wikilink")

  -
  - [Java消息服务](../Page/Java消息服务.md "wikilink")

## 注释

<references/>

## 外部资源

  - [jafka文档地址](https://github.com/adyliu/jafka/wiki)
  - [jafka演讲幻灯片](http://www.slideshare.net/xylz/jafka-guide-pubilc)

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:并发计算](https://zh.wikipedia.org/wiki/Category:并发计算 "wikilink")
[Category:分散式計算架構](https://zh.wikipedia.org/wiki/Category:分散式計算架構 "wikilink")

1.  [Jafka发布地址](http://www.oschina.net/p/jafka)
2.  [性能测试](https://github.com/adyliu/jafka/blob/master/clients/python/jafka-performance-auto.py)
3.  [查找Jafka](http://search.maven.org/#search%7Cga%7C1%7Cjafka)