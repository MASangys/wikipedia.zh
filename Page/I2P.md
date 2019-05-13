**I2P**（Invisible Internet
Project即“隐形网计划”），是一项混合授权的[匿名網路项目](../Page/匿名.md "wikilink")。

I2P網路是由I2P路由器以[大蒜路由方式组成的表层網路](../Page/大蒜路由.md "wikilink")，建立于其上的应用程序可以安全匿名的相互通訊。它可以同时使用[UDP及](../Page/UDP.md "wikilink")[TCP协议](../Page/TCP.md "wikilink")，支援[UPnP映射](../Page/UPnP.md "wikilink")。其应用包括匿名上網、聊天、撰寫部落格和檔案傳輸。

## 系统简介

I2P是可伸缩性强，具有自我组织与恢复能力的包切换匿名网络。其上运行有多种不同的匿名安全程序，各程序可以自行决定匿名性、延迟、流量平衡而不用考虑混淆式路由网络的具体实现。它们的数据活动可以与现有的I2P用户的匿名数据相混合。目前可用的程序包括全部典型的Internet应用
-
匿名网页浏览（Eepproxy），匿名网站（Eepsite），匿名博客与内容聚合（[Syndie](http://syndie.i2p2.de/download.html)），匿名聊天（通过[IRC](../Page/IRC.md "wikilink")、[Jabber](../Page/Jabber.md "wikilink")、I2P-QTMessanger），匿名文件传输（I2PSnark，Robert），匿名文件分享（I2Phex,
iMule），匿名电子邮件（I2PMail+susiMail），匿名新闻组，及其他开发中的程序。与[自由网或](../Page/自由网.md "wikilink")[GNUnet上内容发布网络不同](../Page/GNUnet.md "wikilink")，**I2P**所提供的服务具有更强的交互性
- 从常规的Web搜索引擎，到论坛，博客，数据站点再到无需安装[Tor](../Page/Tor.md "wikilink") /
[自由网即可访问其中内容的网关](../Page/自由网.md "wikilink")。

**I2P**做为消息机制为基础的中间件与这些匿名性程序协同工作 -
程序要求发送数据给某一加密标识（目标），I2P来处理并保证数据安全匿名的到达[\#目标](../Page/#目标.md "wikilink")。I2P还带有易用的流封装库，可将I2P匿名消息转换为可靠有序的数据流传输，提供基于[TCP协议的拥堵控制算法解决网络程序的宽带延迟问题](../Page/TCP.md "wikilink")。I2P同时有简易的[SOCKS代理接口可以将现有的网络程序绑定于](../Page/SOCKS.md "wikilink")**I2P**网络中。这样做的意义并不大，因为几乎所有普通应用程序都会向网络暴露有碍匿名性的敏感数据，除非对程序进行全面审计。为了方便使用，I2P为各种语言提供了一系列API，从而充分利用I2P的资源。\[1\]

## I2P应用程序

I2P被设计为其他程序可以使用的匿名网络层。这些运行于I2P上的程序有的被捆绑在I2P的安装包中，有的需要自行下载。I2P控制台是一个Web界面，可以通过浏览器管理I2P路由器的运行，类似于现在大多数家用路由器的管理方式。

### I2PTunnel

I2PTunnel是I2P的内置程序，它可以通过[\#隧道将远程计算机上的端口映射为本地主机端口](../Page/#隧道.md "wikilink")，从而允许任意TCP/IP程序通过I2P进行通信。

### SAM

SAM协议允许任意语言编写的程序通过Socket接口使用I2P路由器。\[2\]

### BOB

BOB比SAM更简单的TCP类型的桥协议。\[3\]

### BitTorrent

I2P网络中有多个客户端支持[BitTorrent功能](../Page/BitTorrent_\(协议\).md "wikilink")，每种客户端都支持Web界面的远程控制。这些客户端不允许下载含I2P外部Tracker的种子或连接I2P以外的用户，也不允许I2P外部的用户连接进来。由于匿名性的原因，目前I2P内部还没有Tracker站点开放对公网IP的支持。\[4\]

*I2PSnark*，包含于I2P安装包中，是BitTorrent客户端Snark的移植版。\[5\]

*I2PRufus*是Rufus BitTorrent客户端的I2P移植版，已经被基于BOB的Robert取代。\[6\]

*Robert*是基于BOB的BT客户端

*TransmissionI2P*是[Transmission在Linux上尚未完成的I](../Page/Transmission.md "wikilink")2P移植版。\[7\]

### eDonkey iMule

[iMule](https://zh.wikipedia.org/wiki/File:IMule.png "fig:iMule")

[iMule](../Page/iMule.md "wikilink")（*隐身骡*）\[8\]是全平台客户端[aMule的I](../Page/aMule.md "wikilink")2P移植版。

与[eDonkey不同](../Page/eDonkey_network.md "wikilink")，iMule只使用[Kademlia连接因此没有服务器](../Page/Kademlia.md "wikilink")。iMule自1.2.3版起携带内置的GCJ编译的I2P路由器，由于I2P的GCJ编译版效率低下版本滞后，内置路由器被I2P开发者叫停\[9\]

### Gnutella I2Phex

[I2Phex是](../Page/I2Phex.md "wikilink")[Gnutella客户端](../Page/Gnutella.md "wikilink")[Phex的I](../Page/Phex.md "wikilink")2P移植版。

### I2P-Messanger

通过I2P进行匿名通信的无服务器即时聊天程序。\[10\]\[11\]

### Susimail

I2P免费的假名Email服务，由'Postman'维护。邮件传输服务器为*pop.mail.i2p*（[POP3](../Page/Post_Office_Protocol.md "wikilink")）及*smtp.mail.i2p*（[SMTP](../Page/Simple_Mail_Transfer_Protocol.md "wikilink")）。可以通过I2PTunnel利用普通的Email客户端访问。

*Susimail*被编写来处理隐私问题，普通的Email客户端可能在与SMTP服务器的通信中发送用户的主机名。Susimail是Web界面的Email客户端，最初被设计来与配合Postman的邮件服务，设计中考虑到匿名性与安全性，是I2P默认安装包的一部分。可以通过I2P路由控制台访问。（注意SusiMail仅仅被设计来进行邮件的读写，邮件账户的管理需要访问*www.mail.i2p*。）

### Syndie

[Syndie是I](../Page/Syndie.md "wikilink")2P的[博客程序可以同时使用](../Page/博客.md "wikilink")[Tor网络](../Page/Tor.md "wikilink")，目前开发停滞仍处于Alpa阶段。\[12\]

## I2P术语

I2P用户在I2P的网站及路由界面中会遇到如下术语：

### I2P匿名站点

I2P匿名站点（Eepsite）是I2P网络内的[网站](../Page/网站.md "wikilink")。I2P站点的名称以*.i2p*结尾，例如ugha.i2p或forum.i2p.
I2P代理（EepProxy）可以通过I2P文件夹下hosts.txt中的加密识别密钥找到这些站点。通常，必须通过I2P才能访问这些站点。对于使用加密[赁集的I](../Page/赁集.md "wikilink")2P匿名网站/出口代理-{只}-有持有该站点密钥的路由器才能访问。

### I2P代理

I2P代理（EepProxy）程序处理浏览器与[\#I2P匿名站点间的所有通信](../Page/#I2P匿名站点.md "wikilink")。它以[HTTP](../Page/HTTP.md "wikilink")[代理服务器的形式工作](../Page/代理服务器.md "wikilink")，适于绝大多数[浏览器](../Page/浏览器.md "wikilink")。\[13\]

**.i2p**是一个虚拟的[顶级域名只在I](../Page/顶级域名.md "wikilink")2P表层网络内有效。`.i2p`域名由浏览器提交给EepProxy进行解析，EepProxy查询到I2P用户密钥后处理数据的传输，从而使浏览器可以透明浏览I2P网络。\[14\]

### 用户/节点

用户/节点（Peer），I2P网络中的其他计算机。I2P网络中的每台计算机都会共享带宽对拆分后加密的数据包进行路由及中转。

### 隧道

每10分钟，用户的I2P路由就会与新的节点建立连接，将本机数据包与其他I2P节点中转的数据包一并通过这些隧道中转传递，令数据包最终到达最终的[\#目标](../Page/#目标.md "wikilink")。

### 目标

I2P中将可到达的匿名端点（EndPoint）称为目标（Destination）在I2PTunnel中体现为主机+端口，每个I2P程序都可以创建自己的目标与其他目标间进行通信。

## 另见

  - [匿名P2P](../Page/匿名P2P.md "wikilink")
  - [大蒜路由](../Page/大蒜路由.md "wikilink")
  - [密码学无政府主义](../Page/密码学无政府主义.md "wikilink")
  - [Tor](../Page/Tor.md "wikilink") –相似的匿名通信系统；Internet代理网络；
  - [OneSwarm](../Page/OneSwarm.md "wikilink")

## 参考

## 參考文獻

  -
## 外部链接

  - [I2P官方主页](https://geti2p.net/)（[I2P网内官网](http://i2p-projekt.i2p/)）
  - [I2P常见问题列表](https://geti2p.net/zh/faq)
  - [I2P下载](https://geti2p.net/zh/download)

[Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink")
[Category:破网软件](https://zh.wikipedia.org/wiki/Category:破网软件 "wikilink")
[Category:匿名網路](https://zh.wikipedia.org/wiki/Category:匿名網路 "wikilink")
[Category:檔案分享程式](https://zh.wikipedia.org/wiki/Category:檔案分享程式 "wikilink")
[Category:P2P](https://zh.wikipedia.org/wiki/Category:P2P "wikilink")
[Category:自由路由軟體](https://zh.wikipedia.org/wiki/Category:自由路由軟體 "wikilink")

1.  [Tech Intro](http://www.i2p2.i2p/techintro.html)
2.  [SAM - I2P](http://www.i2p2.de/sam)
3.  [I2P BOB API](http://www.bob.i2p/)
4.  [I2P Bittorrent FAQ](http://forum.i2p2.de/viewtopic.php?t=2068)
5.  [The Hunting of the Snark Project - BitTorrent Application
    Suite](http://www.klomp.org/snark/)
6.  [Rufus - BitTorrent Client : Home](http://rufus.sourceforge.net/)
7.  [TransmissionI2P](http://forum.i2p2.de/viewtopic.php?t=3985)
8.  [iMule download](http://aceini.no-ip.info/imule)
9.  [Do not use internal
    router\!](http://forum.i2p2.de/viewtopic.php?t=3466)
10. [I2P-Messenger First Beta
    released](http://forum.i2p2.de/viewtopic.php?t=2474&start=15)
11. [qt messenger in I2P, active dev](http://echelon.i2p/qti2pmessenger)
12. [Syndie主页](http://syndie.i2p2.de/)
13. [Web Browser Configuration -
    I2P](http://www.i2p2.de/htproxyports.html)
14. [i2p homepage](http://www.i2p2.de/)