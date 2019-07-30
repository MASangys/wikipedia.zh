**WS-ReliableMessaging**描述了一种协议，在出现软件组件，系统或网络故障时，使得[SOAP消息能够在分布式应用间能够可靠传送](https://zh.wikipedia.org/wiki/SOAP "wikilink")。

2003年3月，[BEA Systems](https://zh.wikipedia.org/wiki/BEA_Systems "wikilink"), [微软](../Page/微软.md "wikilink"), [IBM](../Page/IBM.md "wikilink"), [TIBCO软件公司](../Page/TIBCO软件公司.md "wikilink")共同撰写了最初的规范，在随后的两年里进行改进。2005年6月，2005年3月的版本于被提交到[OASIS的Web服务可靠交换](../Page/結構化資訊標準促進組織.md "wikilink")(WS-RX)技术委员会，2007年6月14日，被批准成为[OASIS标准](../Page/結構化資訊標準促進組織.md "wikilink")，2009年2月2日，1.2版本被批准。

在WS-ReliableMessaging之前，OASIS曾提出过一个竞争的规范([WS-Reliability](https://zh.wikipedia.org/wiki/WS-Reliability "wikilink"))，该规范为[富士通](../Page/富士通.md "wikilink")，[日立](https://zh.wikipedia.org/wiki/日立 "wikilink")，[NEC](../Page/日本電氣.md "wikilink")，[甲骨文公司](../Page/甲骨文公司.md "wikilink")，[Progress Software和](https://zh.wikipedia.org/wiki/Progress_Software "wikilink")[昇陽電腦](../Page/昇陽電腦.md "wikilink")所支持。这些支持者中的大多数现在也支持WS-ReliableMessaging规范。

## 可靠消息模型

[thrumb](https://zh.wikipedia.org/wiki/File:WS-ReliableMessage-zh.svg "fig:thrumb") 源应用想在一个不可靠的基础设施上可靠地发送消息给目标应用。想要实现这一点，应用需要使用可靠消息源和可靠消息目标。源应用发消息给可靠的消息源。可靠的消息源使用WS-ReliableMessaging (WS-RM)协议来传送消息到可靠的消息目标。可靠的消息目标再将消息递交给目的应用。如果可靠的消息源因为某种原因无法传送消息到可靠的消息目标，它必须抛出一个异常或者其他方法标识该消息没有被传送出去。源应用和可靠的消息源可能实现在同一进程中或是不同的组件。类似的，目标应用和可靠的消息目标可能在一个进程中或不同的组件。

需要注意的是，WS-RM规范仅处理消息在线上传输的内容和行为。消息如何从源应用发送到可靠消息源，消息如何从可靠消息目标递送到目标服务，消息是在内存中存储，还是持久化在硬盘上，等等，这些考虑都不在WS-RM规范的范围内。

WS-RM协议定义和支持了集中递送保障，包括：

  - 至少一次（AtLeastOnce） - 每一条消息将被递送到目标应用至少一次。如果一条消息无法被递送，可靠消息源或可靠消息目标至少有一个应当报错。例如，目标应用可能得到重复的信息。
  - 至多一次（AtMostOnce） - 每一条消息将被递送到目标应用不超过一次。消息可以没有被递送到目标应用，但目标应用决不能收到重复的消息。
  - 正好一次（ExactlyOnce） - 每一条消息将被递送到应用一次且仅一次。如果消息无法被递送，可靠消息源或可靠消息目标至少有一个应当报错。目标应用将不会受到重复的消息。
  - 按序（InOrder） - 消息将按照从源应用发送到可靠消息源的顺序，从可靠消息目标被递送到目标应用。这一保障包括了以上所有保障。

## 可组合的架构

WS-ReliableMessaging使用[SOAP和](https://zh.wikipedia.org/wiki/SOAP "wikilink")[WSDL](../Page/WSDL.md "wikilink")的可扩展性模型。WS-ReliableMessaging并没有定义一个完整的消息解决方案的所有特性。WS-ReliableMessaging是一块积木，与其他Web服务规范和应用特定的恶协议一同使用来构建完整的消息解决方案。

## 批评

这篇[文章](http://www.infoq.com/articles/no-reliable-messaging)解释为什么可靠性不需要消息层提供，而是需要业务层提供。

## WS-ReliableMessaging的实现

  - [Apache Sandesha](https://web.archive.org/web/20100715225039/http://ws.apache.org/sandesha/)
  - [WebLogic Server](../Page/WebLogic.md "wikilink")
  - [IBM WebSphere](https://zh.wikipedia.org/wiki/IBM_WebSphere "wikilink")
  - [GlassFish](https://zh.wikipedia.org/wiki/GlassFish "wikilink")
  - [SAP NetWeaver](https://zh.wikipedia.org/wiki/SAP_NetWeaver "wikilink")
  - 微软[Windows Communication Foundation](https://zh.wikipedia.org/wiki/Windows_Communication_Foundation "wikilink")

## 参见

  - [Web服务](../Page/Web服务.md "wikilink")
  - [WS-Reliability](https://zh.wikipedia.org/wiki/WS-Reliability "wikilink")

## 外部链接

  - [WS-ReliableMessaging 1.1 OASIS规范](http://docs.oasis-open.org/ws-rx/wsrm/200702/wsrm-1.1-spec-os-01.pdf)
  - [WS-ReliableMessaging 200502版本](http://specs.xmlsoap.org/ws/2005/02/rm/ws-reliablemessaging.pdf)
  - [关于WS-ReliableMessaging的一些真相](http://dev2dev.weblogicfans.net/bbsdoc/20060609273.html)
  - [Web服务可靠消息传输简介](http://www.infoq.com/cn/articles/fremantle-wsrm-introduction)

[Category:Web_service_specifications](https://zh.wikipedia.org/wiki/Category:Web_service_specifications "wikilink")