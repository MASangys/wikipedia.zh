**Web服务寻址**（**WS-Addressing**）是一个[W3C推荐标准](../Page/W3C推荐标准.md "wikilink")，为[Web服务提供一种与传输层无关的](../Page/Web服务.md "wikilink")，传送寻址信息的机制。规范主要由两部分组成：传送Web服务端点的引用的数据结构，以及一套能够在特定的消息上关联寻址信息的消息寻址属性。

## 规范内容

WS-Addressing是将消息路由数据包含在[SOAP头中的一种标准方法](../Page/SOAP.md "wikilink")。利用WS-Addressing的消息可以在标准化的SOAP头中包含自己的包含发送元数据，而不是依赖于网络层传输来传送路由信息。网络级传输只负责将消息发送到能够读取WS-Addressing元数据的分配器那里。一旦消息抵达了URI所制定的分配器，网络层传输的工作就完成了。

通过在标准的SOAP头中(wsa:ReplyTo)指定应答消息应该发送到哪里的端点引用，WS-Addressing可以支持异步交互方式。
服务提供者使用另一个连接，将应答消息发送给wsa:ReplyTo所指定的端点。这就将SOAP请求/应答消息的交互与HTTP请求/应答协议分离，这样，跨越任意时间的长时间运行的交互成为可能。

### 端点引用

端点引用（Endpoint
Reference，速写EPR）是一个[XML结构](../Page/XML.md "wikilink")，封装了对访问Web服务的消息寻址有用的信息。这包括了消息的目的地地址，任何其他路由消息到目的地所需的参数（称作引用参数），以及有关服务的任选的元数据（例如[WSDL或](../Page/WSDL.md "wikilink")[WS-Policy](../Page/WS-Policy.md "wikilink")）。

### 消息寻址属性

消息寻址属性表明与将消息传送到Web服务有关的寻址信息，包括：

  - 目的地 -- 该消息的目的地的[URI](../Page/统一资源标志符.md "wikilink")。
  - 源端点 -- 发出该消息的服务端点（EPR）
  - 应答端点 -- 应答消息接收者的端点（EPR）
  - 故障端点 -- 故障消息接收者的端点（EPR）
  - 动作-- 指示该消息的语义（可能有助于该消息的寻址）的[URI](../Page/统一资源标志符.md "wikilink")
  - 消息ID -- 唯一消息标识符[URI](../Page/统一资源标志符.md "wikilink")
  - 关系 -- 与之前消息的关系(一对[URI](../Page/统一资源标志符.md "wikilink"))

## 历史

WS-Addressing最初由[微软](../Page/微软.md "wikilink"),
[IBM](../Page/IBM.md "wikilink"),
[BEA](../Page/BEA_Systems.md "wikilink"),
[Sun和](../Page/太阳微系统.md "wikilink")[SAP所发起](../Page/SAP公司.md "wikilink")，并[提交](http://www.w3.org/Submission/2004/SUBM-ws-addressing-20040810/)到[W3C进行标准化](../Page/W3C.md "wikilink")。W3C
[WS-Addressing工作组](http://www.w3.org/2002/ws/addr/)在标准化的过程中对规范进行了改善和补充。

目前，WS-Addressing分成三部分说明：

  - [核心](http://www.w3.org/TR/ws-addr-core)--主要包括端点引用和消息寻址属性的规范。
  - [SOAP绑定](http://www.w3.org/TR/ws-addr-soap)--将这些属性绑定到[SOAP协议上](../Page/SOAP.md "wikilink")。
  - [元数据](http://www.w3.org/TR/2007/REC-ws-addr-metadata-20070904/)规范--说明了在[核心](http://www.w3.org/TR/ws-addr-core)中定义的抽象的属性将如何使用[WSDL来描述](../Page/WSDL.md "wikilink")，如何在端点引用中包含WSDL元数据，以及如何使用[WS-Policy标明一个Web服务是否支持WS](../Page/WS-Policy.md "wikilink")-Addressing。

[WS-PAEPR（端点引用的Web服务策略附件）](http://www.w3.org/Submission/WS-PAEPR/)阐述了将[WS-Policy表达式包含在端点引用中的机制和方法](../Page/WS-Policy.md "wikilink")。WS-PAEPR是W3C的成员提案。

## 参见

  - [Web服务](../Page/Web服务.md "wikilink")
  - [SOAP](../Page/SOAP.md "wikilink")

## 外部链接

  - [WS-Addressing工作组](http://www.w3.org/2002/ws/addr/)
  - [WS-Addressing规范（IBM）](http://www-128.ibm.com/developerworks/library/specification/ws-add/)
  - [WS-Addressing，提交给W3C的请求](http://www.w3.org/Submission/2004/05/)
  - [Web 服务寻址（WS-Addressing）对 SOAP
    的隐式影响](http://www.ibm.com/developerworks/cn/webservices/ws-address.html)
  - [Web 服务寻址
    (WS-Addressing)](http://msdn.microsoft.com/zh-cn/library/ms951233.aspx)

[分类:Web服务规范](../Page/分类:Web服务规范.md "wikilink")
[分类:基于XML的标准](../Page/分类:基于XML的标准.md "wikilink")