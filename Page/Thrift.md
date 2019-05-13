**Thrift**是一种[接口描述语言和二进制通讯协议](../Page/接口描述语言.md "wikilink")，\[1\]它被用来定义和创建跨语言的服务。\[2\]它被当作一个[远程过程调用](../Page/远程过程调用.md "wikilink")（RPC）框架来使用，是由[Facebook为](../Page/Facebook.md "wikilink")“大规模跨语言服务开发”而开发的。它通过一个代码生成引擎联合了一个软件栈，来创建不同程度的、无缝的[跨平台高效服务](../Page/跨平台.md "wikilink")，可以使用[C\#](../Page/C♯.md "wikilink")、[C++](../Page/C++.md "wikilink")（基于[POSIX兼容系统](../Page/POSIX.md "wikilink")\[3\]）、Cappuccino、\[4\][Cocoa](../Page/Cocoa.md "wikilink")、[Delphi](../Page/Delphi.md "wikilink")、[Erlang](../Page/Erlang.md "wikilink")、[Go](../Page/Go.md "wikilink")、[Haskell](../Page/Haskell.md "wikilink")、[Java](../Page/Java.md "wikilink")、[Node.js](../Page/Node.js.md "wikilink")、[OCaml](../Page/OCaml.md "wikilink")、[Perl](../Page/Perl.md "wikilink")、[PHP](../Page/PHP.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Ruby和](../Page/Ruby.md "wikilink")[Smalltalk](../Page/Smalltalk.md "wikilink")。\[5\]虽然它以前是由Facebook开发的，但它现在是[Apache软件基金会的](../Page/Apache软件基金会.md "wikilink")[开源项目了](../Page/开源.md "wikilink")。该实现被描述在2007年4月的一篇由Facebook发表的技术论文中，该论文现由Apache掌管。\[6\]

## 架构

[Apache_Thrift_architecture.png](https://zh.wikipedia.org/wiki/File:Apache_Thrift_architecture.png "fig:Apache_Thrift_architecture.png")

Thrift包含一套完整的栈来创建客户端和服务端程序。\[7\]顶层部分是由Thrift定义生成的代码。而服务则由这个文件客户端和处理器代码生成。在生成的代码里会创建不同于内建类型的数据结构，并将其作为结果发送。协议和[传输层是](../Page/传输层.md "wikilink")[运行时库的一部分](../Page/运行时库.md "wikilink")。有了Thrift，就可以定义一个服务或改变通讯和传输协议，而无需重新编译代码。除了客户端部分之外，Thrift还包括服务器基础设施来集成协议和传输，如阻塞、非阻塞及多线程服务器。栈中作为I/O基础的部分对于不同的语言则有不同的实现。

Thrift支持众多通讯协议：\[8\]

  - TBinaryProtocol –
    一种简单的二进制格式，简单，但没有为空间效率而优化。比文本协议处理起来更快，但更难于[调试](../Page/调试.md "wikilink")。
  - TCompactProtocol – 更紧凑的二进制格式，处理起来通常同样高效。
  - TDebugProtocol – 一种人类可读的文本格式，用来协助调试。
  - TDenseProtocol – 与TCompactProtocol类似，将传输数据的元信息剥离。
  - TJSONProtocol – 使用[JSON对数据编码](../Page/JSON.md "wikilink")。
  - TSimpleJSONProtocol –
    一种只写协议，它不能被Thrift解析，因为它使用JSON时丢弃了元数据。适合用脚本语言来解析。\[9\]

支持的*传输协议*有：

  - TFileTransport – 该传输协议会写文件。
  - TFramedTransport – 当使用一个非阻塞服务器时，要求使用这个传输协议。它按帧来发送数据，其中每一帧的开头是长度信息。
  - TMemoryTransport –
    使用[存储器映射输入输出](../Page/存储器映射输入输出.md "wikilink")。（Java的实现使用了一个简单的。）
  - TSocket – 使用阻塞的套接字I/O来传输。
  - TZlibTransport –
    用[zlib执行压缩](../Page/zlib.md "wikilink")。用于连接另一个传输协议。

Thrift还提供众多的服务器，包括：

  - TNonblockingServer –
    一个多线程服务器，它使用非阻塞I/O（Java的实现使用了[NIO通道](../Page/Java_NIO.md "wikilink")）。TFramedTransport必须跟这个服务器配套使用。
  - TSimpleServer – 一个单线程服务器，它使用标准的阻塞I/O。测试时很有用。
  - TThreadPoolServer – 一个多线程服务器，它使用标准的阻塞I/O。

## 优点

Thrift一些已经明确的优点包括：

  - 跟一些替代选择，比如[SOAP相比](../Page/SOAP.md "wikilink")，跨语言序列化的代价更低，因为它使用二进制格式。
  - 它有一个又瘦又干净的库，没有编码框架，没有[XML配置文件](../Page/XML.md "wikilink")。
  - [绑定感觉很自然](../Page/绑定.md "wikilink")。例如，[Java使用](../Page/Java.md "wikilink")`java.util.ArrayList`<String>；[C++使用](../Page/C++.md "wikilink")`std::vector`<std::string>。
  - 应用层通讯格式与序列化层通讯格式是完全分离的。它们都可以独立修改。
  - 预定义的序列化格式包括：二进制格式、对HTTP友好的格式，以及紧凑的二进制格式。
  - 兼作跨语言文件[序列化](../Page/序列化.md "wikilink")。
  - 协议使用软版本号机制。Thrift不要求一个中心化的和显式的版本号机制，例如[主版本号/次版本号](../Page/软件版本号.md "wikilink")。松耦合的团队可以轻松地控制RPC调用的演进。
  - 没有构建依赖也不含非标准化的软件。不存在不兼容的软件许可证混用的情况。

## 创建一个Thrift服务

Thrift由C++编写，但可以为众多语言创建代码。要创建一个Thrift服务，必须写一些Thrift文件来描述它，为目标语言生成代码，并且写一些代码来启动服务器及从客户端调用它。下面就是一个这样的描述文件的代码示例：

``` Cpp
enum PhoneType {
 HOME,
 WORK,
 MOBILE,
 OTHER
}

struct Phone {
 1: i32 id,
 2: string number,
 3: PhoneType type
}
```

Thrift将由这个描述信息生成独立的代码。例如，在Java里，`PhoneType`将是`Phone`类中一个简单的`enum`。

## 参见

{{ Portal | Free software }}

  - {{ link-en | 数据序列化格式比较 | Comparison of data serialization formats }}
  - [Apache Avro](../Page/Apache_Avro.md "wikilink")
  - [ASN.1](../Page/ASN.1.md "wikilink")（抽象语法标记一）
  - Caucho的{{ link-en | Hessian | Hessian (Web service protocol) }}
  - [Google的](../Page/Google.md "wikilink")[Protocol
    Buffers](../Page/Protocol_Buffers.md "wikilink")
  - [外部数据表示法](../Page/外部数据表示法.md "wikilink")
  - {{ link-en | ZeroC | ZeroC
    }}的[ICE](../Page/ICE_\(中间件\).md "wikilink")
  - {{ link-en | SDXF | SDXF }}（结构化数据交换格式）

## 参考文献

{{ Reflist }}

## 外部链接

  -
  - [Thrift：缺失的指南](http://diwakergupta.github.com/thrift-missing-guide/)

  - [Thrift蚂蚁任务](http://code.google.com/p/thriftc-task/)

  - [Thrift指导](http://www.thrift.pl/)

[Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink")
[Category:数据序列化格式](https://zh.wikipedia.org/wiki/Category:数据序列化格式 "wikilink")
[Category:进程间通信](https://zh.wikipedia.org/wiki/Category:进程间通信 "wikilink")
[Category:远端程序呼叫](https://zh.wikipedia.org/wiki/Category:远端程序呼叫 "wikilink")
[Category:Facebook软件](https://zh.wikipedia.org/wiki/Category:Facebook软件 "wikilink")

1.

2.

3.  [Thrift的要求](http://wiki.apache.org/thrift/ThriftRequirements)，要支持Windows参见[这里](https://issues.apache.org/jira/browse/THRIFT-1123)

4.  Fred Potter，[使用Thrift +
    Cappuccino](http://blog.parallel48.com/using-thrift-with-cappuccino)
    ，parallel48的甜美的邮件博客，2010年6月10日。

5.

6.  Mark Slee、Aditya Agarwal、Marc
    Kwiatkowski，[Thrift：大规模跨语言服务的实现](http://thrift.apache.org/static/files/thrift-20070401.pdf)

7.

8.
9.