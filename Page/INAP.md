> 本文内容由[INAP](https://zh.wikipedia.org/wiki/INAP)转换而来。


**INAP**可以代表**智能网应用协议（Intelligent Network Application Protocol）**或**智能网应用部分（Intelligent Network Application Part）**。它是[智能网](../Page/智能网.md "wikilink")中所使用的信令协议\[1\]，属于[七号信令系统](../Page/七号信令系统.md "wikilink")（SS7）协议系列的一部分，通常位于“事务能力应用部分”（Transaction Capabilities Application Part，简称TCAP）层之上。该术语也可以被视为用于控制那些从传统交换点（switch point）迁移到基于计算机的业务独立的平台上的电信业务的逻辑。

## 应用

[国际电信联盟](../Page/国际电信联盟.md "wikilink")（ITU）为本协议定义了若干个“能力水平”，从“能力集1”（Capability Set 1，简称CS-1）开始\[2\]。智能网的一个典型应用就是号码翻译（Number Translation）业务。 例如，在英国，0800开头的号码是免费电话，使用IN平台，它们被翻译成地理区域分段的号码。电话交换机将0800号码解码到一个IN触发器，并将连接交换到IN。

电话交换机使用[事务能力应用部分](https://zh.wikipedia.org/wiki/事务能力应用部分 "wikilink")（Transaction Capabilities Application Part，简称TCAP）、[信令连接和控制部分](https://zh.wikipedia.org/wiki/信令连接和控制部分 "wikilink")（Signaling Connection and Control Part，简称SCCP）以及INAP。在IN术语中，这样的交换机被称为“[业务交换点](../Page/业务交换点.md "wikilink")”（Service Switching Point，简称SSP）。SSP会向[SCP发送一个INAP中的](https://zh.wikipedia.org/wiki/业务控制点 "wikilink")“[初始检测点](https://zh.wikipedia.org/wiki/初始检测点 "wikilink")”（Initial Detection Point，简称IDP）消息。SCP返回一个INAP连接消息，这个消息中包含了需要将该呼叫前传到的地理区域号码。

INAP消息是使用[ASN.1](../Page/ASN.1.md "wikilink")编码进行定义的。 SCCP被用于路由。 INAP的扩展形式是[移动网络增强逻辑的定制化应用](../Page/移动网络增强逻辑的定制化应用.md "wikilink")（CAMEL）。TCAP被用于将事务拆分成一个个小的单元。

## 参考文献

[Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink") [Category:七号信令](https://zh.wikipedia.org/wiki/Category:七号信令 "wikilink") [Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.
2.