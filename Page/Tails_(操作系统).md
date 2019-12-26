**Tails**（）是一个侧重安全，基于[Debian](../Page/Debian.md "wikilink")专注于[个人隐私和](https://zh.wikipedia.org/wiki/个人隐私 "wikilink")[匿名性](https://zh.wikipedia.org/wiki/匿名性 "wikilink")，并将非匿名通信进行封锁的操作系统。\[1\] 这个系统所有的外部通信均强制通过[Tor](../Page/Tor.md "wikilink")进行传送，\[2\] 此系统设计为使用[Live DVD或者](../Page/Live_CD.md "wikilink")[Live USB进行引导](https://zh.wikipedia.org/wiki/Live_USB "wikilink")，且不让计算机在非显式行为下留下。另外，[Tor Project对于此项开发提供经济支持](../Page/Tor.md "wikilink")。\[3\]

## 历史

Tails最早发布于2009年6月23日。其被作为（一个基于[Gentoo的Linux发行版](https://zh.wikipedia.org/wiki/Gentoo "wikilink")\[4\]）的迭代开发品。Tor则开始对开发提供经济支持。\[5\] 除此之外，Tails也受到了[Debian](../Page/Debian.md "wikilink")，[Mozilla](../Page/Mozilla.md "wikilink")和的资金支持。\[6\]

，[格伦·格林沃尔德和](https://zh.wikipedia.org/wiki/格伦·格林沃尔德 "wikilink")指出在他们和[美国国家安全局](../Page/美国国家安全局.md "wikilink")告密者[爱德华·斯诺登](../Page/爱德华·斯诺登.md "wikilink")的合作工作之中，Tails是个很重要的工具。\[7\]\[8\]\[9\]

2014年7月3日，德国公共电视频道[第一频道报导指出](../Page/德国电视一台.md "wikilink")[NSA的](https://zh.wikipedia.org/wiki/NSA "wikilink")[XKeyscore系统的监控目标包含使用Tails搜索或使用Tails站点的使用者](https://zh.wikipedia.org/wiki/XKeyscore "wikilink")。XKeyscore的一个源代码注释将Tails标注为“一个被极端主义者和极端主义论坛拥护的[通信安全机制](https://zh.wikipedia.org/wiki/通信安全 "wikilink")”。\[10\]\[11\]

2014年12月28日，[明镜](../Page/明镜.md "wikilink")周刊发布了一个2012年6月在[NSA内部放映的幻灯片](https://zh.wikipedia.org/wiki/NSA "wikilink")，其中NSA认为Tails本身对于他们的任务是一个“主要威胁”，而对于一连串的其他隐私工具例如[Off-the-Record Messaging](https://zh.wikipedia.org/wiki/Off-the-Record_Messaging "wikilink")、Cspace、[RedPhone以及](https://zh.wikipedia.org/wiki/RedPhone "wikilink")[TrueCrypt](../Page/TrueCrypt.md "wikilink")都被列为是“灾难性的”，使得他们“近乎完全丧失/丢失目标通信及存在的信号……的”。

## 内建软件

  - [GNOME](../Page/GNOME.md "wikilink")桌面

### 网络连接

  - [Tor](../Page/Tor.md "wikilink") 包括： Stream isolation，regular，obfs2，obfs3，obfs4和ScrambleSuit bridges support，[Vidalia图形前端](https://zh.wikipedia.org/wiki/Vidalia "wikilink")

  - [NetworkManager](../Page/NetworkManager.md "wikilink") 用来进行简单的网络配置

  - [Tor Browser](../Page/Tor.md "wikilink") 是一个基于[火狐进行改造以保护匿名性的Web浏览器](https://zh.wikipedia.org/wiki/火狐 "wikilink")，其含有的Torbutton用来保持匿名和对抗[JavaScript](../Page/JavaScript.md "wikilink")，默认使所有的cookies被欺骗为临时cookies；[HTTPS Everywhere](../Page/HTTPS_Everywhere.md "wikilink") 用来启用针对于大部分网站的[Transport Layer Security](https://zh.wikipedia.org/wiki/Transport_Layer_Security "wikilink")，并通过[NoScript](../Page/NoScript.md "wikilink")来限制JavaScript，[Adblock Plus用来移除广告](../Page/Adblock_Plus.md "wikilink")

  - [Pidgin](../Page/Pidgin.md "wikilink") 使用[OTR协议进行端对端加密](https://zh.wikipedia.org/wiki/Off-the-Record_Messaging "wikilink")[即时通讯](https://zh.wikipedia.org/wiki/即时通讯 "wikilink")

  - [Claws Mail](../Page/Claws_Mail.md "wikilink") 带有[GnuPG](../Page/GnuPG.md "wikilink")支持的电子邮件客户端

  - Icedove ([Thunderbird](../Page/Mozilla_Thunderbird.md "wikilink")) 带有基于[OpenPGP支持的](https://zh.wikipedia.org/wiki/OpenPGP "wikilink")[Enigmail](../Page/Enigmail.md "wikilink")的电子邮件客户端

  - [Liferea](https://zh.wikipedia.org/wiki/Liferea "wikilink") [聚合器](../Page/聚合器.md "wikilink")

  - 用来进行文本[协同写作](https://zh.wikipedia.org/wiki/协同写作 "wikilink")

  - [Aircrack-NG](../Page/Aircrack-NG.md "wikilink") 用来对[Wi-Fi](../Page/Wi-Fi.md "wikilink")网络进行

  - [I2P](../Page/I2P.md "wikilink") 匿名网络

  - Electrum 易于使用的[bitcoin客户端](https://zh.wikipedia.org/wiki/bitcoin "wikilink")

### 加密和隐私

  - 和 用来安装和使用加密存储设备，比如[閃存盤等](https://zh.wikipedia.org/wiki/閃存盤 "wikilink")

  - [GnuPG](../Page/GnuPG.md "wikilink") 用来对电子邮电和数据进行加密和签名的[OpenPGP的GNU分发版](https://zh.wikipedia.org/wiki/OpenPGP "wikilink")

  - Monkeysign 用来对OpenPGP密钥进行签名和交换

  - PWGen 一个强

  - 使用gfshare和ssss

  - Florence[虚拟键盘](https://zh.wikipedia.org/wiki/虚拟键盘 "wikilink") 用来针对[键盘监听的一种对策](https://zh.wikipedia.org/wiki/键盘监听 "wikilink")

  - MAT 用来匿名化文件的元数据

  - 密码管理器

  - GtkHash 用来计算校验和

  - Keyringer 用来通过[Git](../Page/Git.md "wikilink")进行秘密共享加密的命令行工具

  - Paperkey 用来将OpenPGP的安全密钥记录在纸上的命令行工具

## 注释

## 外部链接

  -
  - [Tails](https://www.torproject.org/projects/projects.html.en) at Tor project website

  - [Tails - Known issues](https://tails.boum.org/support/known_issues/index.en.html)

  -
[Category:匿名網路](https://zh.wikipedia.org/wiki/Category:匿名網路 "wikilink") [Category:基于Debian的发行版](https://zh.wikipedia.org/wiki/Category:基于Debian的发行版 "wikilink") [Category:自由安全软件](https://zh.wikipedia.org/wiki/Category:自由安全软件 "wikilink") [Category:I2P](https://zh.wikipedia.org/wiki/Category:I2P "wikilink") [Category:可从只读媒体启动的操作系统发行版](https://zh.wikipedia.org/wiki/Category:可从只读媒体启动的操作系统发行版 "wikilink") [Category:隱私軟件](https://zh.wikipedia.org/wiki/Category:隱私軟件 "wikilink") [Category:Tor_(匿名網絡)](https://zh.wikipedia.org/wiki/Category:Tor_\(匿名網絡\) "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.