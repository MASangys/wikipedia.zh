> 本文内容由[Miranda IM](https://zh.wikipedia.org/wiki/Miranda_IM)转换而来。


**Miranda IM**是一个多协议的[即时通讯客户端软件](https://zh.wikipedia.org/wiki/即时通讯 "wikilink")。它运行时仅占用极少的内存，并且不需要安装，解压后即可运行。这使得用户可以从可移动的存储设备上运行他们的即时通讯客户端程序。如果仅使用少量的插件，它甚至可以被放到一张软盘里。

强大的插件使得Miranda IM拥有极好的可扩展性。只有基本的功能是内置的，其余的功能需要通过插件来实现。现在有多于350个插件可以被下载，用来扩展Miranda IM的功能。通过安装这些插件，Miranda IM可以支持[ICQ](../Page/ICQ.md "wikilink")，[AIM](https://zh.wikipedia.org/wiki/AIM "wikilink")，[MSN](../Page/MSN.md "wikilink")，[Jabber](https://zh.wikipedia.org/wiki/Jabber "wikilink")，[Yahoo](https://zh.wikipedia.org/wiki/Yahoo "wikilink")，[QQ和](https://zh.wikipedia.org/wiki/QQ "wikilink")[Google Talk等协议](../Page/Google_Talk.md "wikilink")。

## 支持协议

部分可通过插件支持的协议：

  - [AIM](https://zh.wikipedia.org/wiki/AIM "wikilink")
  - [Bonjour](../Page/Bonjour.md "wikilink")
  - [Battle.Net](https://zh.wikipedia.org/wiki/Battle.Net "wikilink")
  - [飞信](https://zh.wikipedia.org/wiki/飞信 "wikilink")
  - [Gadu-Gadu](https://zh.wikipedia.org/wiki/Gadu-Gadu "wikilink")
  - [Inter-Asterisk eXchange](https://zh.wikipedia.org/wiki/Inter-Asterisk_eXchange "wikilink")
  - [ICQ](../Page/ICQ.md "wikilink")
  - [IRC](../Page/IRC.md "wikilink")
  - [Jabber](https://zh.wikipedia.org/wiki/Jabber "wikilink")（& [Google Talk](../Page/Google_Talk.md "wikilink")）
  - [Lotus Sametime](../Page/Lotus_Sametime.md "wikilink")
  - Mail.ru Agent
  - [MeBeam](https://zh.wikipedia.org/wiki/MeBeam "wikilink")
  - [NetSend](https://zh.wikipedia.org/wiki/NetSend "wikilink")
  - [MySpace](https://zh.wikipedia.org/wiki/MySpace "wikilink")
  - [.NET Messenger Service](https://zh.wikipedia.org/wiki/.NET_Messenger_Service "wikilink")（又称[MSN Messenger](https://zh.wikipedia.org/wiki/MSN_Messenger "wikilink")，[Windows Live Messenger](../Page/Windows_Live_Messenger.md "wikilink")）
  - [腾讯QQ](../Page/腾讯QQ.md "wikilink")
  - [SIP](https://zh.wikipedia.org/wiki/SIP "wikilink")
  - [Skype](../Page/Skype.md "wikilink")
  - [Tlen.pl](https://zh.wikipedia.org/wiki/Tlen.pl "wikilink")
  - [Xfire](https://zh.wikipedia.org/wiki/Xfire "wikilink")
  - [Yahoo\! Messenger](../Page/Yahoo!_Messenger.md "wikilink")

## 开发历史

### 开始

Miranda IM最初叫Miranda ICQ，只拥有ICQ的基本功能。由Roland Rabien在2000年2月开始开发。第一个公开测试版0.0.1版于2000年2月6日被发布。这个版本使用了LibICQ，不支持历史纪录、数据库和插件，软件大小不到100KB。

在0.0.4版中，一个新的主要功能被添加，那就是MegaHAL聊天机器人。在0.0.6版中，增加了对插件的支持。Logger插件成为了和官方发布软件捆绑的第一个插件。AutoAway, Status Notify和Talk插件成为了最初可以单独下载的3个插件。

### 0.1.x版

在2000年12月26日发布0.0.6.1版后，原来的开发队伍离开了，Richard Hughes接管了这个项目。他的第一个发行版本，0.1.0.0版，于2001年4月8日发布，这个版本和以前的版本相比有了巨大的变化，大部分的代码都被重写了。和这个发行版本捆绑的信息对话框成为了第一个信息模块插件。MSN协议插件在0.1.1.0版发布前后出现了。这是第一个被Miranda ICQ支持的其他协议。0.1.1.0版是官方发布的第一个支持语言包的版本。这是Miranda ICQ成为今天的多协议、多语言即时通讯软件的第一步。

从0.1.0.0版起，Miranda ICQ迅速地成长。到了2002年2月28日，0.1.2.1版发布的时候，已经有了大约50个插件。那时出现了一个叫做Lizard的插件。这个插件十分像现在的clist插件，但是它支持换肤功能。然而，由于这个插件造成程序不稳定，其开发者不久就停止了开发。很多Lizard的皮肤现在仍然可以在文件列表中找到。

### 0.2.x版

在Richard Hughes在2002年6月莫名的消失后，现在的开发者Martin Öberg, Robert Rainwater, Sam K和Lyon Lim接管了这个项目。MSN协议插件被开发了第一个版本的Yahoo协议插件的Rako Shizuka接管。然而，因为这个插件的源代码是不公开的，随后它被新的开发者Gennady Feldman重写。MSN协议插件也成为了第一个可以通过重命名dll文件实现多帐户使用的插件。最初的非IM协议插件，包括RSS News和Weather，同样在这个时期被发布。这些协议插件通过添加特殊的联系人到联系人列表来显示信息供用户阅读。由于这些插件的支持使功能大大加强，在2002年12月17日，这个项目的官方名称改为Miranda IM。

0.2版于2003年2月1日发布，此时这个项目已经进行了大约3年。在两个星期后，一个错误修复版本被发布。这时，已经有了大约150个插件。在0.2版发布后，关于程序的重命名和从核心中移除ICQ的讨论浮出水面。

### 0.3.x版

0.3版于2003年6月23日发布，主要的变化是ICQ从核心中移除，成为了像MSN和Yahoo一样的协议插件。大约在同一时间，这个项目移动到了一个新的站点 <http://www.miranda-im.org>，提供新的论坛和文件列表。

被捆绑在0.3版中的协议插件包括ICQ, MSN, AIM和Jabber。由于Yahoo协议插件封闭源代码的，没有被捆绑。不久IRC支持被添加到官方于2003年8月8日发布的0.3.1版中。

另一个主要的变化是从核心移除了信息模块，将其也转化成插件。这减小了可执行文件的大小，也促进了信息模块的迅速开发。在此期间，出现了许多不同的信息模块（包括SRMM, SRAMM和SRMM_mod等），每个模块都提供不同的新功能和对原版的改进。Miranda IM的插件数量继续迅速增长。当2004年4月19日，0.3.3版发布的时候，已经有了大约250个插件。

### 0.4.x版

[Miranda_4_Message_Window_2.png](https://zh.wikipedia.org/wiki/File:Miranda_4_Message_Window_2.png "fig:Miranda_4_Message_Window_2.png")

0.4版于2005年4月7日发布。这是第一个将Yahoo协议插件捆绑在官方发行版中的版本。其他主要的改变包括从核心中移除了联系人列表和数据库模块，将其作为插件。结果，出现了3个联系人列表模块：原版的（clist_classic）、多窗口联系人列表（clist_mw）和可自定义用户界面的联系人列表（clist_nicer）。在此期间发布的其他流行的插件包括分页信息窗口（tabsrmm和scriver）、以HTML为基础的信息日志支持（IEView）、mbot插件（mbot）以及中继联系人插件（MetaContacts）。当0.4版发布时，插件总数已超过400。

### 0.5.x版

0.5版於2006年7月28日發布。這是Miranda IM首次在官方網頁裡提供[Unicode版本與用戶下載](https://zh.wikipedia.org/wiki/Unicode "wikilink")，使[Windows NT](../Page/Windows_NT.md "wikilink")、[Windows 2000及](../Page/Windows_2000.md "wikilink")[Windows XP的用戶不再因為內碼不同而使溝通出現困難](../Page/Windows_XP.md "wikilink")。在過去，Unicode支援是需要透過第三方提供下載，而且版本往往都較舊。

0.5版另一個新功能是對[AIM](https://zh.wikipedia.org/wiki/AIM "wikilink") [Oscar支援](https://zh.wikipedia.org/wiki/OSCAR協定 "wikilink")，使用戶可以接收檔案，並存取其他用戶的離線信息。

### 0.6.x版

0.6版于2006年12月29日发布。该版本对UPnP支援来改善文件运输和通过路由器直接连接的稳定性。其他的改变包括改进对 UTF-8 字符串的支援、改进选项卡的支援，并修复了一些小错误。

### 0.7.x版

0.7版於2007年10月1日发布，主要的变化是主程序整合了字体和图标服务，重写的菜单引擎，以及发布了事件通知插件。另一重要的变化是单一插件和界面识别方式的改变，有可能会导致未来的兼容性降低。

### 0.8.x版

0.8版於2009年6月17日发布。Miranda IM加入可支持单协议插件dll多账户的账户管理功能，核心通知架构，更佳的Vista兼容性，新的插件载入机制，恢复控制台功能以及提升用户界面友好度。

### 0.9.x版

0.9版於2010年8月24日发布。具有很多新特性，着重於Unicode支持度的提升和整体协议改善。\[1\]

## 参看

  - [即时通讯软件列表](https://zh.wikipedia.org/wiki/即时通讯软件列表 "wikilink")
  - [即时通讯软件比较](../Page/即时通讯软件比较.md "wikilink")
  - [开源软件列表](https://zh.wikipedia.org/wiki/开源软件列表 "wikilink")

## 参考文献

## 外部链接

  - [Miranda IM](http://www.miranda-im.org)
  - [Miranda IM免安裝版主頁](http://portableapps.com/apps/internet/miranda_portable)
  - [Miranda IM Wizard](https://web.archive.org/web/20131204004722/http://miranda-wizard.com/)

[Category:綠色軟件](https://zh.wikipedia.org/wiki/Category:綠色軟件 "wikilink") [Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink") [Category:自由的即时通讯软件](https://zh.wikipedia.org/wiki/Category:自由的即时通讯软件 "wikilink")

1.