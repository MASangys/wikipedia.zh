> 本文内容由[Apache Avro](https://zh.wikipedia.org/wiki/Apache_Avro)转换而来。


{{ Infobox software | name = Apache Avro | logo = | screenshot = | caption = | collapsible = | developer = [Apache软件基金会](../Page/Apache软件基金会.md "wikilink") | status = 活跃 | latest release version = 1.8.2 | latest release date =  | latest preview version = | latest preview date = | operating_system = | programming language = | genre = [远程过程调用框架](https://zh.wikipedia.org/wiki/远程过程调用 "wikilink") | license = [Apache许可证](../Page/Apache许可证.md "wikilink") 2.0 | website = <http://avro.apache.org/> }}

**Avro**是一种[远程过程调用和数据](https://zh.wikipedia.org/wiki/远程过程调用 "wikilink")[序列化](../Page/序列化.md "wikilink")框架，是在[Apache的](https://zh.wikipedia.org/wiki/Apache "wikilink")[Hadoop项目之内开发的](https://zh.wikipedia.org/wiki/Hadoop "wikilink")。它使用[JSON](../Page/JSON.md "wikilink")来定义数据类型和[通讯协议](https://zh.wikipedia.org/wiki/通讯协议 "wikilink")，使用压缩二进制格式来序列化数据。它主要用于[Hadoop](https://zh.wikipedia.org/wiki/Hadoop "wikilink")，它可以为持久化数据提供一种序列化格式，并为Hadoop节点间及从客户端程序到Hadoop服务的通讯提供一种电报格式。

它类似于[Thrift](../Page/Thrift.md "wikilink")，但当{{ link-en | 数据库模式 | Database schema }}改变时，它不要求运行代码生成程序，除非是对[静态类型的语言](https://zh.wikipedia.org/wiki/静态类型 "wikilink")。

## 已有API的语言

虽然理论上任何语言都可以使用Avro，但是以下语言有专门为其编写的API：\[1\]\[2\]

  - [C](https://zh.wikipedia.org/wiki/C语言 "wikilink")
  - [C++](../Page/C++.md "wikilink")
  - [C\#](../Page/C♯.md "wikilink")\[3\]\[4\]\[5\]
  - [Go](../Page/Go.md "wikilink")
  - [Java](../Page/Java.md "wikilink")
  - [Perl](../Page/Perl.md "wikilink")
  - [PHP](../Page/PHP.md "wikilink")
  - [Python](../Page/Python.md "wikilink")
  - [Ruby](../Page/Ruby.md "wikilink")
  - [Scala](../Page/Scala.md "wikilink")

## Avro IDL

为进一步支持JSON在类型及协议定义中使用，Avro包含了一种试验性的\[6\]替代性支持，它针对一种[接口描述语言](../Page/接口描述语言.md "wikilink")（IDL）语法，被称作Avro IDL。它以前被称为GenAvro，它设计了一种语法类似于C/C++、[Protocol Buffers等的格式](../Page/Protocol_Buffers.md "wikilink")，以吸引那些熟悉传统IDL和编程语言的用户。

## 参见

{{ Portal | Free software }}

  - {{ link-en | 数据序列化格式比较 | Comparison of data serialization formats }}
  - [Apache Thrift](https://zh.wikipedia.org/wiki/Apache_Thrift "wikilink")
  - [Google](../Page/Google.md "wikilink")的Protocol Buffers
  - [Cisco的](https://zh.wikipedia.org/wiki/Cisco "wikilink"){{ link-en | Etch | Etch (protocol) }}
  - {{ link-en | ZeroC | ZeroC }}的[ICE](../Page/ICE_\(中间件\).md "wikilink")
  - {{ link-en | MessagePack | MessagePack }}

## 参考文献

{{ reflist | refs= \[7\] \[8\] \[9\] \[10\] \[11\] }}

## 扩展阅读

  - {{ cite book | title=Hadoop：最终指南 | isbn=978-1-4493-8973-4 | date=2010年11月 | first = Tom | last = White }}

{{ DEFAULTSORT:Avro }}

[Category:进程间通信](https://zh.wikipedia.org/wiki/Category:进程间通信 "wikilink") [Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink") [Category:远端程序呼叫](https://zh.wikipedia.org/wiki/Category:远端程序呼叫 "wikilink") [Category:数据序列化格式](https://zh.wikipedia.org/wiki/Category:数据序列化格式 "wikilink")

1.
2.
3.
4.
5.
6.
7.  {{ cite web | url=<https://github.com/phunt/avro-rpc-quickstart> | title=GitHub - phunt/avro-rpc-quickstart: Apache Avro RPC Quick Start. | author=phunt | work=GitHub | accessdate=2016年4月13日 }}
8.  {{ cite web | url=<https://cwiki.apache.org/confluence/display/AVRO/Supported+Languages> | title=支持的语言 - Apache Avro - Apache软件基金会 | | accessdate=2016年4月21日 }}
9.  {{ cite web | url=<https://issues.apache.org/jira/browse/AVRO/fixforversion/12316197> | title=Avro: 1.5.1 - ASF JIRA | accessdate=2016年4月13日 }}
10. {{ cite web | url=<https://issues.apache.org/jira/browse/AVRO-533> | title=\[AVRO-533\] Avro的.NET实现 - ASF JIRA | accessdate=2016年4月13日 }}
11. {{ cite web | url=<http://avro.apache.org/docs/current/idl.html> | title=Apache Avro 1.8.0 IDL | accessdate=2016年4月13日 }}