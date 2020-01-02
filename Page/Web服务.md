> 本文内容由[Web服务](https://zh.wikipedia.org/wiki/Web服务)转换而来。


[webservices.png](https://zh.wikipedia.org/wiki/File:webservices.png "fig:webservices.png")**Web服务**是一种[服務導向架構的技术](https://zh.wikipedia.org/wiki/服務導向架構 "wikilink")，通过标准的[Web协议提供服务](../Page/网络传输协议.md "wikilink")，目的是保证不同平台的应用服务可以互操作。

根据[W3C的定义](https://zh.wikipedia.org/wiki/W3C "wikilink")，**Web服务**（Web service）应当是一个[软件](../Page/软件.md "wikilink")系统，用以支持[网络间不同机器的互动操作](https://zh.wikipedia.org/wiki/网络 "wikilink")。网络服务通常是许多[应用程序接口](../Page/应用程序接口.md "wikilink")（[API](https://zh.wikipedia.org/wiki/API "wikilink")）所组成的，它们透过网络，例如国际互联网（[Internet](https://zh.wikipedia.org/wiki/Internet "wikilink")）的远程[服务器](../Page/服务器.md "wikilink")端，执行客户所提交服务的请求。

尽管W3C的定义涵盖诸多相异且无法介分的系统，不过通常我们指有关於[主从式架构](https://zh.wikipedia.org/wiki/主从式架构 "wikilink")（Client-server）之间根据[SOAP协议进行传递](https://zh.wikipedia.org/wiki/SOAP "wikilink")[XML](../Page/XML.md "wikilink")格式消息。无论定义还是实现，WEB服務過程中會由伺服機提供一個機器可讀的描述（通常基于[WSDL](../Page/WSDL.md "wikilink")）以辨識伺服機所提供的WEB服務。另外，虽然WSDL不是SOAP服务端点的必要条件，但目前基于[Java](../Page/Java.md "wikilink")的主流WEB服务开发框架往往需要WSDL实现客户端的源代码生成。一些工业[标准化](../Page/标准化.md "wikilink")组织，比如[WS-I](https://zh.wikipedia.org/wiki/WS-I "wikilink")，就在WEB服务定义中强制包含SOAP和WSDL。

## 定义

### 核心定义

考虑到并没某个独立文档包含一切相关内容，可采用模块化的方式给出对WEB服务的描述，但不能给出一个“绝对全面和准确”的定义。受外部环境和实现技术影响，各方给出的核心定义可能稍有出入，但通常包括：

  - [SOAP](https://zh.wikipedia.org/wiki/SOAP "wikilink"):一个基于XML的可扩展消息信封格式，需同时绑定一个[网络传输协议](../Page/网络传输协议.md "wikilink")。这个协议通常是HTTP或[HTTPS](https://zh.wikipedia.org/wiki/HTTPS "wikilink")，但也可能是[SMTP或](https://zh.wikipedia.org/wiki/SMTP "wikilink")[XMPP](https://zh.wikipedia.org/wiki/XMPP "wikilink")。

<!-- end list -->

  - [WSDL](../Page/WSDL.md "wikilink"):一个XML格式文档，用以描述服务端口访问方式和使用协议的细节。通常用来辅助生成服务器和客户端代码及配置信息。

<!-- end list -->

  - [UDDI](https://zh.wikipedia.org/wiki/UDDI "wikilink"):一个用来发布和搜索WEB服务的协议，应用程序可藉由此协议在设计或运行时找到目标WEB服务。

这些标准由这些组织制订：W3C负责XML、SOAP及WSDL；[OASIS负责UDDI](../Page/結構化資訊標準促進組織.md "wikilink")。

### 协议集

为提高WEB服务间的互操作能力，WS-I还特别发布了WEB服务协议集（Profile）。协议集包含了一系列特定版本的核心定义（诸如SOAP和WSDL），以及对其使用上的限制与约束。WS-I还发布了用于部署协议集兼容WEB服务的测试工具及相关用例。

### WS-系列追加定义

为扩展WEB服务能力，一些新的标准已经或正在被开发。这些标准通常被冠以WS字头（Web Service的简称），以下是一个WS系列追加标准的不完全列表：

  - WS安全（WS-Security）:定义了如何在SOAP中使用XML加密或XML签名来保护消息传递。可作为HTTPS保护的一种替代或扩充。
    WS信赖性（WS-Reliability）:一个来自OASIS的标准协议，用来提供可信赖的WEB服务间消息传递。
    WS可信赖消息（WS-ReliableMessaging）:同样是一个提供信赖消息的协议，由Microsoft, BEA 和IBM发布。目前OASIS正对其实施标准化工作。
    WS寻址（WS-Addressing）:定义了在SOAP消息内描述发送／接收方地址的方式。
    WS事务（WS-Transaction）:定义事务处理方式。

一直以来，W3C负责制定了不少WS追加定义，但近来此举开始受到怀疑。一些人呼吁W3C作为网络和语义网构建者应当把精力放在核心网络本身，而不是为WEB服务改换版本。特别是2007年2月的企业级WEB服务论坛上，对W3C不再充当WEB服务定义者的诉求开始表面化。 此外，OASIS对WEB服务扩展实施了许多标准化工作。包括WEB服务资源框架以及[WSDM](https://zh.wikipedia.org/wiki/WSDM "wikilink")。

## 使用WEB服务的方式

WEB服务实际上是一组工具，并有多种不同的方法调用之。三種最普遍的手段是：[远程过程调用](https://zh.wikipedia.org/wiki/远程过程调用 "wikilink")（RPC），[服務導向架构](https://zh.wikipedia.org/wiki/服務導向架构 "wikilink")（SOA）以及表述性状态转移（[REST](https://zh.wikipedia.org/wiki/REST "wikilink")）。

### 远程过程调用

WEB服务提供一个分布式[函数](../Page/函数.md "wikilink")或[方法接口供用户调用](https://zh.wikipedia.org/wiki/方法 "wikilink")，这是一种比较传统的方式。通常，在WSDL中对RPC接口进行定义（类似于早期的XML-RPC）。

尽管最初的WEB服务广泛采用RPC方式部署，但针对其过于紧密之耦合性的批评声也随之不断。这是因为RPC式WEB服务实质上是利用一个简单的映射，以把用户请求直接转化成为一个特定语言编写的函数或方法。如今，多数服务提供商认定此种方式在未来将难有作为，在他们的推动下，WS-I基本协议集（WS-I Basic Profile）已不再支持远程过程调用。

### 服務導向架構

现在，业界比较关注的是遵从服務導向架构（Service-oriented architecture，SOA）概念来构筑WEB服务。在服務導向架构中，通讯由消息驱动，而不再是某个动作（方法调用）。这种WEB服务也被称作面向消息的服务。

SOA式WEB服务得到了大部分主要软件供应商以及业界专家的支持和肯定。作为与RPC方式的最大差别，SOA方式更加关注如何去连接服务而不是去特定某个实现的细节。WSDL定义了联络服务的必要内容。

### 表述性状态转移

表述性状态转移式（Representational state transfer，REST）WEB服务类似于HTTP或其他类似协议，它们把接口限定在一组广为人知的标准动作中（比如HTTP的GET、PUT、DELETE）以供调用。此类WEB服务关注与那些稳定的资源的互动，而不是消息或动作。

此种服务可以通过WSDL来描述SOAP消息内容，通过HTTP限定动作接口；或者完全在SOAP中对动作进行抽象。

## 批评

一些人抱怨，WEB服务（具象化状态转移式除外）过于复杂，认为它太过于偏重那些大型软件开发商，而不利于[开源项目](https://zh.wikipedia.org/wiki/开源 "wikilink")。但是至今不少開發工具已經具備自動化產生具象物件，已經減少web服務的调用難度。例如Microsoft visual studio、eclipse 等等IDE工具。使用者只需要專注於调用與實行。

WEB服务的性能也时常是人们关注的一个问题。由于使用XML作为消息格式，并以SOAP封装，由HTTP传输，WEB服务始终处于较高的开销状态。不过目前一些新兴技术正在试图解决此一问题，诸如新的XML处理模型致力于解决XML这一部分的性能。

## 类似方式

无论是在WEB服务出现以前，还是现在，一直不断有各种同类技术问世。比如，[RMI作为这样一种中间件系统就得到了广泛部署](https://zh.wikipedia.org/wiki/Java_RMI "wikilink")。[CORBA](../Page/CORBA.md "wikilink")和[DCOM则更加雄心壮志](https://zh.wikipedia.org/wiki/DCOM "wikilink")，两者都尝试将作用域波及到分布式对象，这一点也为WEB服务所模仿。

这些类似方式往往借助于XML-RPC和HTTP本身，而不依靠SOAP封装参数。

## 参考文献

## 外部連結

  - [W3C Web Services Activity home page](http://www.w3.org/2002/ws/)
  - [Web Services Architecture](http://www.w3.org/TR/ws-arch/) (W3C Working Group Note)
  - [Secure, Reliable, Transacted Web Services](http://www-128.ibm.com/developerworks/webservices/library/ws-securtrans/)（IBM/Microsoft白皮书）
  - [XMethods - Collection of public Web Services](https://archive.is/20130503144605/http://xmethods.org/)你好

## 参见

  - [SOAP](https://zh.wikipedia.org/wiki/SOAP "wikilink")
  - [WSDL](../Page/WSDL.md "wikilink")
  - [UDDI](https://zh.wikipedia.org/wiki/UDDI "wikilink")
  - [WSCI](https://zh.wikipedia.org/wiki/WSCI "wikilink")
  - [BPEL4WS](https://zh.wikipedia.org/wiki/BPEL4WS "wikilink")
  - [XML](../Page/XML.md "wikilink")
  - [WCF](https://zh.wikipedia.org/wiki/WCF "wikilink")

[Category:Web服务](https://zh.wikipedia.org/wiki/Category:Web服务 "wikilink")