> 本文内容由[UPnP](https://zh.wikipedia.org/wiki/UPnP)转换而来。


**通用即插即用**（，简称**UPnP**）是由“通用即插即用论坛”（UPnP™ Forum）推广的一套网络协议。该协议的目标是使家庭网络（数据共享、通信和娱乐）和公司网络中的各种设备能够相互无缝连接，并简化相关网络的实现。UPnP通过定义和发布基于开放、因特网通讯网协议标准的UPnP设备控制协议来实现这一目标。

UPnP这个概念是从[隨插即用](../Page/隨插即用.md "wikilink")（Plug-and-play）衍生而来的，隨插即用是一种热拔插技术。

## 概述

UPnP体系允许PC间的点对点连接、网际互连和无线设备。它是一种基于[TCP/IP](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")、[UDP和](https://zh.wikipedia.org/wiki/UDP "wikilink")[HTTP的分布式](https://zh.wikipedia.org/wiki/HTTP "wikilink")、开放体系。

UPnP使得任意两个设备能在[LAN控制设备的管理下相互通信](https://zh.wikipedia.org/wiki/LAN "wikilink")。其特性包括：

  - 传输介质和设备独立。UPnP技术可以应用在许多媒体上，包括[电话线](https://zh.wikipedia.org/wiki/电话线 "wikilink")、[电线](https://zh.wikipedia.org/wiki/电线 "wikilink")（[電力線通信](../Page/電力線通信.md "wikilink")PLC）、[以太网](../Page/以太网.md "wikilink")、[紅外通訊技術](https://zh.wikipedia.org/wiki/紅外通訊技術 "wikilink")（IrDA）、[無線電](https://zh.wikipedia.org/wiki/無線電 "wikilink")（[Wi-Fi](../Page/Wi-Fi.md "wikilink")，[蓝牙](https://zh.wikipedia.org/wiki/蓝牙 "wikilink")）和[Firewire](https://zh.wikipedia.org/wiki/Firewire "wikilink")（1394）。无需任务设备驱动；而是采用共同的协议。
  - [用户界面](../Page/用户界面.md "wikilink")（UI）控制。UPnP技术使得设备厂商可以通过网页浏览器来控制设备並进行交互。
  - 操作系统和程序语言独立。任何操作系统和程序语言均可以用于构建UPnP产品。UPnP并没有设定或限制运行于控制设备上的应用程序[API](https://zh.wikipedia.org/wiki/API "wikilink")；OS厂商可以建立满足他们客户需求的API。UPnP使得厂商可以像开发常规应用程序一样来控制设备UI和交互。
  - 基于因特网技术。UPnP构建于IP、TCP、UDP、HTTP，和[XML](../Page/XML.md "wikilink")等许多协议之上。
  - 编程控制。UPnP体系同时支持常规应用程序编程控制。
  - 扩展性。每个UPnP设备都可以有构建于基本体系之上、与具体设备相关的服务。

UPnP支持零配置，"看不见的网络"和自动检测；任何设备能自动加入一个网络，获取一个IP地址，广播自己的名字，根据请求检查自身功能以及检测出其它设备和它们的功能。[DHCP和](https://zh.wikipedia.org/wiki/DHCP "wikilink")[DNS服务是可选的](https://zh.wikipedia.org/wiki/DNS "wikilink")，并只有它们在网络上存在的时候才会使用。设备可以自动离开网络而不会遗留下任何不需要的状态信息。

UPnP的基础是IP地址解析。每一个设备都应当有一个DHCP客户端并在连入网络的时候自动搜索DHCP服务。如果没有找到DHCP服务，也就是说网络是缺乏管理状态，那么设备必须给自己设定一个地址。如果在和DHCP服务器交互的过程中，设备获得了一个域名（比如通过DNS服务器或者DNS传递），那么它应当在接下来的网络操作中使用这个域名；否则，设备应当使用它的IP地址。

## 协议

### 发现

给定一个IP地址，UPnP网络中的第一步是发现。当一个设备被加入到网络中，UPnP检测协议允许该设备向控制点广播自己的服务。类似地，当一个控制点加入到网络中的时候，它也能够搜索到网络中存在的、感兴趣的设备相关信息。这两种类型的基础交互是一种仅包含少量、重要相关设备信息或者它的某个服务。比如，类型、标识和指向更详细信息的链接。UPnP检测协议是基于简单服务发现协议（[SSDP](https://zh.wikipedia.org/wiki/SSDP "wikilink")）的。

### 描述

UPnP网络的下一步是描述。当一个控制点检测到一个设备时，它对该设备仍然知之甚少。为了使控制点了解更多关于该设备的信息或者和设备进行交互，控制点必须从设备发出的检测信息中包含的URL获取更多的信息。某个设备的UPnP描述是XML的方式，包括品牌、厂商相关信息，如型号名和编号、序列号、厂商名、品牌相关URL等。描述还包括一个嵌入式设备和服务列表，以及控制、事件传递和存在相关的URL。对于每种设备，描述还包括一个命令或动作列表，包括响应何种服务，针对各种动作的参数；这些变量描述出运行时设备的状态信息，并通过它们的数据类型、范围和事件来进行描述。

### 控制

UPnP网络的下一步是控制。当一个控制点获取到设备描述信息之后，它就可以向该设备发送指令了。为了实现此，控制点发送一个合适的控制消息至服务相关控制URL（包含在设备描述中）。控制消息也是通过简单对象访问协议（[SOAP](https://zh.wikipedia.org/wiki/SOAP "wikilink")）用XML来描述的。类似函数调用，服务通过返回动作相关的值来回应控制消息。动作的效果，如果有的话，会反应在用于刻画运行中服务的相关变量。

### 事件通知

下一步是事件通知。一个UPnP描述包括一组命令列表和刻画运行时状态信息的变量。服务在这些变量改变的时候进行更新，控制点可以进行订阅以获取相关改变。服务通过发送事件消息来发布更新。事件消息包括一个或多个状态信息变量以及它们的当前数值。这些消息也是采用XML的格式，用进行格式化。一个特殊的初始化消息会在控制点第一次订阅的时候发送，它包括服务相关的变量名及值。为了支持多个控制点并存的情形，事件通知被设计成对于所有的控制点都平行通知。因此，所有的订阅者同等地收到所有事件通知。

### 存在

最后一步是存在。如果设备带有存在URL，那么控制点可以通过它来获取设备存在信息，即在浏览器中加载URL，并允许用户来进行相关控制或查看操作。具体支持哪些操作则是由存在页面和设备完成的。

### NAT穿透

UPnP为NAT（[网络地址转换](../Page/网络地址转换.md "wikilink")）穿透带来了一个解决方案：[互联网网关设备协议](../Page/互联网网关设备协议.md "wikilink")（IGD）。[NAT穿透](../Page/NAT穿透.md "wikilink")允许UPnP数据包在没有用户交互的情况下，无障碍的通过[路由器](../Page/路由器.md "wikilink")或者[防火墙](../Page/防火墙.md "wikilink")（假如那个[路由器](../Page/路由器.md "wikilink")或者[防火墙](../Page/防火墙.md "wikilink")支持NAT）。

## 未来的发展

### UPnP影音媒体服务器

UPnP影音媒体服务器存储和共享数字媒体，比如：图片、电影或是音乐。

## 參考資料

  - [UPnP™ Forum Universal Plug and Play Device Standards](http://upnp.org/standardizeddcps/default.asp)
  - [Golden G. Richard](https://zh.wikipedia.org/wiki/Golden_G._Richard "wikilink")：<cite>Service and Device Discovery : Protocols and Programming</cite>, McGraw-Hill Professional, ISBN 0-07-137959-2
  - [Michael Jeronimo](https://zh.wikipedia.org/wiki/Michael_Jeronimo "wikilink")，[Jack Weast](https://zh.wikipedia.org/wiki/Jack_Weast "wikilink")：<cite>UPnP Design by Example: A Software Developer's Guide to Universal Plug and Play</cite>, Intel Press, ISBN 0-9717861-1-9

<references/>

## 外部連結

### 文件

  - [UPnP™ Forum](http://www.upnp.org)
  - [DLNA (Digital Living Network Alliance)](http://www.dlna.org)
  - [The Jini, Vision](https://web.archive.org/web/20031011210932/http://developer.java.sun.com/developer/technicalArticles/jini/JiniVision/jiniology.html)
  - [technique comparison](https://web.archive.org/web/20070311050352/http://cswl.com/whitepapers/upnp-devices.html)
  - [Microsoft WHDC UPnP webpage & links](https://web.archive.org/web/20071006001030/http://www.microsoft.com/whdc/device/netAttach/UPnP/default.mspx)
  - [Universal Plug and Play in Windows XP](https://web.archive.org/web/20070504044032/http://www.microsoft.com/technet/prodtechnol/winxppro/evaluate/upnpxp.mspx)

### 新聞

  - [Security firm predicts Microsoft Windows UPnP exploit by the end of the week](https://web.archive.org/web/20070716123550/http://www.theinquirer.net/default.aspx?article=38860) at The Inquirer (Wednesday, 11 April 2007)
      - [Microsoft security updates for April 2007](https://web.archive.org/web/20070515102455/http://www.microsoft.com/athome/security/update/bulletins/200704.mspx) to fix the above [Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink") UPnP security issue.

[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")