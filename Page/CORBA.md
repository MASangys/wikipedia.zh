**CORBA**（Common Object Request Broker
Architecture）通用物件請求代理架構是軟體構建的一个標準。

CORBA標準由[物件管理組織](../Page/Object_Management_Group.md "wikilink")（OMG）設立並進行控制，CORBA定義了一系列[API](../Page/API.md "wikilink")，通信協議，和物件／服務[信息模型用於使得異質](../Page/信息模型.md "wikilink")[應用程序能夠互相操作](../Page/應用程序.md "wikilink")，這些應用程序用不同的程式語言編寫，運行在不同的平台上。CORBA因此為定義明確的物件提供了平臺和位置的透明性，這些物件是[分布式計算平臺的基礎](../Page/分布式計算.md "wikilink")。

通常來說，CORBA把用其他語言開發的程序代码和關於該程序代码能力和如何調用該程序代码的信息包到一個开发包（package）中，开发包中的物件則可以在網络上被其他[程序](../Page/電腦程序.md "wikilink")（或CORBA[物件](../Page/物件.md "wikilink")）調用。在這個意義上來講，CORBA可以被看作是一個[機器可讀的文件檔格式](../Page/機器可讀.md "wikilink")，類似於头文件（header），但是具有相當多的信息。

CORBA使用一種[接口描述语言](../Page/接口描述语言.md "wikilink")（[Interface description
language](../Page/IDL.md "wikilink")）用於刻畫物件將呈現出來的介面。CORBA又規定了從[IDL到特定程式語言](../Page/IDL.md "wikilink")，如[C++或](../Page/C++.md "wikilink")[Java](../Page/Java.md "wikilink")，實現的映射。這個映射精確的描述了CORBA[資料類型是如何被用戶端和伺服器端實現的](../Page/資料類型.md "wikilink")。標準映射的有[Ada](../Page/Ada.md "wikilink")、[C](../Page/C語言.md "wikilink")、[C++](../Page/C++.md "wikilink")、[Smalltalk](../Page/Smalltalk.md "wikilink")、[Java](../Page/Java.md "wikilink")、以及[Python](../Page/Python.md "wikilink")。還有一些非標準的映射，為[Perl和](../Page/Perl.md "wikilink")[Tcl的映射由這些語言寫的](../Page/Tcl.md "wikilink")[ORB實現](../Page/ORB.md "wikilink")。

CORBA的IDL只是IDL的一個例子。

在提供用戶語言和平臺中性的[遠端程序呼叫規範的同時](../Page/遠端程序呼叫.md "wikilink")，CORBA也定義了通常需要的服務，例如事務和安全。

## CORBA的主题

### 对象按引用传递

对象的引用可以通过以下几种方式获得：通过URI直接指定对象位置、通过类似于DNS的名称服务查找、调用时通过参数传递。

对象引用是指向真实对象（本地或远程）的轻量级方式。调用对象引用（通常就是指针）的方法，实际上是通过ORB调用了实际对象的方法，调用会阻塞当前线程直到远端返回结果。参数和返回结果以及抛出的异常都会被ORB集中传递。

### 数据按值传递

CORBA的数据（整数、浮点数、结构、枚举等）是通过值传递。

### 通用ORB间协议（GIOP）

GIOP是用于ORB间数据传输的抽象协议，通用ORB间协议（GIOP）用来为这个由不同计算机及其各种体系结构组成的世界中传送消息定义结构和格式。如果使用GIOP的结构和格式，并将它们应用于TCP/IP，那么就得到IIOP。GIOP有两个版本：1.0和1.1。相关协议标准由[Object
Management Group](../Page/Object_Management_Group.md "wikilink")（OMG）管理.
GIOP架构提供了如下具体协议：

1.  因特网ORB间协议（IIOP）—定义了基于因特网的GIOP实现，提供了TCP/IP到GIOP的映射。
2.  加密ORB间协议（SSLIOP）—SSLIOP是基于SSL加密层的IIOP，提供了[加密和](../Page/加密.md "wikilink")[认证](../Page/认证.md "wikilink")。
3.  超文本ORB间协议（HTIOP）—HTIOP是基于[HTTP的IIOP](../Page/HTTP.md "wikilink")，提供了透明代理穿越。
4.  还有很多……

### Corba对象位置（CorbaLoc）

Corba对象位置（CorbaLoc）是指一个由字符串构成的对象引用，看起来就像一个[URL](../Page/URL.md "wikilink")。

CORBA产品需要支持两种OMG定义的URL："`corbaloc:`"和"`corbaname:`"。Corba对象位置的目的是提供一个便于人阅读和修改的方式指定何处可以获得某个可互操作对象（IOR）。

corbaloc的例子：

  -
    `corbaloc::160.45.110.41:38693/StandardNS/NameServer-POA/_root`

## 使用Corba的好处

  - 与具体编程语言无关
    Java and C++, C-only, SmallTalk, Perl, Ada, Ruby, and
    Python等语言都有CORBA的实现，并且可以跨语言互操作。

<!-- end list -->

  - 操作系统无关
    Linux/Unix, Windows, Sun, Mac等系统都有CORBA的实现，并且可以互操作。

<!-- end list -->

  - 从技术细节中解脱

<!-- end list -->

  - 强数据类型

<!-- end list -->

  - 从繁琐的数据传递中解脱

<!-- end list -->

  - 压缩
    CORBA的底层数据通讯机制灵活，ZIOP扩展可以将数据压缩后进行传送，而应用程序开发人员可以不懂具体压缩技术，并且不用改动绝大部分代码。

## 参见

  - [远程过程调用](../Page/远程过程调用.md "wikilink")
  - [RFC](../Page/Request_for_Comments.md "wikilink")
  - [RMI](../Page/RMI.md "wikilink")
  - [DCOM](../Page/DCOM.md "wikilink")
  - [SOAP](../Page/SOAP.md "wikilink")
  - [微软.NET](../Page/.NET.md "wikilink")
  - [Web服务](../Page/Web服务.md "wikilink")
  - [分布式计算](../Page/分布式计算.md "wikilink")
  - [servant](https://github.com/haskell-servant/servant)
  - [IDL](../Page/IDL.md "wikilink")
  - [NDDS](../Page/NDDS.md "wikilink")

## 参考文献

## 外部链接

  - [Object Management Group](http://www.omg.org/)
  - [Information Board](http://www.corba.org/)
  - [Catalog of OMG
    Specifications](http://www.omg.org/technology/documents/spec_catalog.htm)
      - [IDL / Language
        Mapping](https://web.archive.org/web/20041011115310/http://www.omg.org/technology/documents/idl2x_spec_catalog.htm)
      - [CORBA Component Model
        (CCM)](https://web.archive.org/web/20041009181008/http://www.omg.org/technology/documents/corba_spec_catalog.htm#ccm)
      - [IIOP](https://web.archive.org/web/20041009181008/http://www.omg.org/technology/documents/corba_spec_catalog.htm)
      - [Services](https://web.archive.org/web/20041009212628/http://www.omg.org/technology/documents/corbaservices_spec_catalog.htm)
      - [Facilities](https://web.archive.org/web/20041102092037/http://www.omg.org/technology/documents/corbafacilities_spec_catalog.htm)
      - [Domain](https://web.archive.org/web/20041102092516/http://www.omg.org/technology/documents/domain_spec_catalog.htm)
      - [Embedded
        Intelligence](https://web.archive.org/web/20041009213444/http://www.omg.org/technology/documents/embed_intel_spec_catalog.htm)
      - [Security](https://web.archive.org/web/20041015083452/http://www.omg.org/technology/documents/formal/omg_security.htm)
      - [UML, MOF, XMI,
        CWM](https://web.archive.org/web/20110807045309/http://www.omg.org/technology/documents/modeling_spec_catalog.htm)
  - [An overview of available CORBA
    implementations](https://web.archive.org/web/20080509060156/http://www.puder.org/corba/matrix/)
  - [Combat: a Tcl ORB, and a Tcl layer for C++
    ORBs](http://www.fpx.de/Combat/)
  - [Python ORB](http://www.fnorb.org/)
  - [Perl ORB](http://sf.net/projects/perlorb/)
  - [JacORB](https://web.archive.org/web/20041212070949/http://jacorb.inf.fu-berlin.de/)
  - [TAO The ACE ORB](http://www.cs.wustl.edu/~schmidt/TAO.html)
  - [e\*ORB](https://web.archive.org/web/20040825200943/http://www.prismtechnologies.com/section-item.asp?sid4=&sid3=&sid2=9&sid=18&id=174)
  - [omniORB](http://omniorb.sourceforge.net/)
  - [MICO](http://www.mico.org/)
  - [PocoCapsule for
    CORBA组件容器](http://www.pocomatic.com/docs/whitepapers/corba)支持CORBA服务器应用，OMG事件／通知服务应用，OMG-DDS应用，OMG-RTC应用，以及JTRS-SCA基于组件的[软件无线电](../Page/软件无线电.md "wikilink")（SDR）应用。

[Category:面向对象的程序设计](https://zh.wikipedia.org/wiki/Category:面向对象的程序设计 "wikilink")
[Category:进程间通信](https://zh.wikipedia.org/wiki/Category:进程间通信 "wikilink")
[Category:基于组件的软件工程](https://zh.wikipedia.org/wiki/Category:基于组件的软件工程 "wikilink")