**StarForce** 是1998年 **Protection Technology（星之盾科技）**针对
[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
平台设计的一款软件[复制保护技术的商标](https://zh.wikipedia.org/wiki/复制保护 "wikilink")，它获得了微软合作伙伴等级认证\[1\]
并成为微软解决方案合作伙伴\[2\] 和英特尔软件合作伙伴\[3\]。

它的主要保护方案是使用[字节码封装](https://zh.wikipedia.org/wiki/字节码 "wikilink")[可执行文件和](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")[DLL](../Page/动态链接库.md "wikilink")，并通过其[虚拟机解释这些文件](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")。

尽管商标所有者 Protection Technology 声称 StarForce
很难被[逆向工程所](../Page/逆向工程.md "wikilink")[破解](https://zh.wikipedia.org/wiki/破解 "wikilink")，但是通常使用该保护方案的游戏最终都会遭到破解。制作破解的难度与
StarForce
的版本及游戏开发者在[可执行文件中应用的保护例程次数息息相关](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")。

此程式雖然遏阻了一些盜版，但是對於正版用戶也帶來極大困擾，差勁的優化及容易跟其他程式產生衝突反而讓綁著Starforce的正版軟體不能運行，因而臭名昭彰並且有「懲罰正版玩家」的戲謔詞。在全球玩家眼裡評價極差的一個軟體。

## 已知的保護策略

據認為，StarForce 是通過測量 [CD](../Page/CD-ROM.md "wikilink")
中第一個和最後一個寫入扇區之間的物理角度來工作的。這個硬件特徵在所有轉自[母盤的](https://zh.wikipedia.org/wiki/母盤 "wikilink")
CD
副本中都是唯一的，而以當前的技術，在[刻錄光盤時複製該特徵是很困難的](https://zh.wikipedia.org/wiki/刻錄 "wikilink")。一些程序可以通過截取
CD 驅動器與被保護程序之間的通訊來偽造這個角度，從而使保護措施形同虛設。

因為當前的大多數虛擬光驅軟件都是通過模擬
[SCSI](https://zh.wikipedia.org/wiki/小型計算機系統接口 "wikilink")
驅動器來運作，故而若系統中安裝了 [IDE](https://zh.wikipedia.org/wiki/集成設備電路 "wikilink")
驅動器，StarForce 4.0 之前的版本就會禁止使用 SCSI 光盤驅動器。但是，若系統中沒有安裝 IDE
光盤驅動器，StarForce 就會驗證 SCSI 光盤驅動器中的光盤；它的弱點就是，即使系統中安裝了 IDE
光盤驅動器，但若將其拔下或禁用，就可以通過一個虛擬的 CD 或
[DVD](https://zh.wikipedia.org/wiki/DVD-ROM "wikilink") 鏡像來運行被保護程序。

## StarForce 家族

[StarForce_Pal3.png](https://zh.wikipedia.org/wiki/File:StarForce_Pal3.png "fig:StarForce_Pal3.png")
目前已知的官方 StarForce 产品包括：

  - StarForce Pro 3
    在安装软件时需要输入一个“光盘序列号”。所有该游戏副本的序列号都是相同的，它用于将保护方案类型编码为母盘中所存在的类型；该光盘序列号与通常用于在线游戏的序列号不同，不要将两者相混淆。
  - StarForce Keyless\[4\]
    StarForce 3.x PRO 新增的附加功能。因光盘序列号存储于光盘中，故无需再次输入。
  - StarForce 3.5\[5\]
    增加了对 [64
    位](https://zh.wikipedia.org/wiki/64_位 "wikilink")[系统的支持](../Page/操作系统.md "wikilink")。被
    StarForce 所保护的软件可以通过软件安装文件夹中的一个 `.x64` 文件而被 64 位 Windows
    系统所识别。较早的版本会重新启动系统或直接拒绝在这类系统中运行被保护程序。
  - StarForce FrontLine 4.0\[6\]
    完全支持 [64 位应用程序](https://zh.wikipedia.org/wiki/64_位 "wikilink")。
    完全支持 Windows Vista 32/64 位版本。\[7\]
    第一个通过 [WHQL
    测试和](https://zh.wikipedia.org/wiki/Windows_硬件设备质量认证测试 "wikilink")“Microsoft
    Windows Vista 认证”的 StarForce 版本。
  - StarForce FrontLine 4.7\[8\]
    似乎它仅仅是 4.0 的更新版本。没有其它可用的信息。
  - StarForce Frontline 5.0 \[9\]
    提供了一个用于删除驱动的用户界面
    允许对在线授权的应用程序进行解除激活及重新激活
  - FrontLine ProActive \[10\]
    为网络分发之游戏和应用程序提供 DRM + 保护双重解决方案。光盘绑定被网络激活所代替。

Protection Technology
[提供了驱动更新工具](http://www.star-force.com/protection.phtml?c=91)，但是它并非兼容所有被
StarForce 所保护的游戏。例如，要在 StarForce 支持 [64
位前将](https://zh.wikipedia.org/wiki/64_位 "wikilink") 64
位支持添加到一个游戏构架中，开发者就需要专门为他们的产品开发一个[补丁](https://zh.wikipedia.org/wiki/补丁（计算机） "wikilink")。

### 保护级别

现确认，有2种 StarForce 保护级别：

  - [基本](http://www.star-force.com/solutions/products/fl_disc/)

<!-- end list -->

  - [专业](http://www.star-force.com/solutions/products/fl_disc/)

根据 Boycott StarForce Wiki
的资料显示，部分已知使用了“专业”级别保护的游戏有[赌命战士](https://zh.wikipedia.org/wiki/赌命战士 "wikilink")、[分裂细胞：混沌法则](https://zh.wikipedia.org/wiki/分裂细胞：混沌法则 "wikilink")、[极速房车赛](https://zh.wikipedia.org/wiki/极速房车赛 "wikilink")、[赛道狂飙：日出和](https://zh.wikipedia.org/wiki/赛道狂飙：日出 "wikilink")[超级战士等](https://zh.wikipedia.org/wiki/超级战士 "wikilink")。它也引用了一个传闻中的保护级别“精英”，目前尚不知有哪款已发布的游戏使用了该级别的技术。\[11\]

## StarForce 3.0 的名声

尽管被 StarForce 3.0
所保护的游戏通常最终都会被[破解](https://zh.wikipedia.org/wiki/软件破解 "wikilink")，而且还有其他方法可以绕过其保护，然而
StarForce 3.0
还是因为极端难以被反向工程而得到了声誉。有些破解会在游戏官方发布后几天内放出，但也有一些游戏在官方发布后几个月或几年才被破解：例如[分裂细胞：混沌法则](https://zh.wikipedia.org/wiki/分裂细胞：混沌法则 "wikilink")，在官方发布后过了422天才被破解。\[12\]
其他游戏需要手动对其破解，并且在完成这些步骤之后，还需要额外的破解来防止游戏崩溃，例如科林麦克雷 2005。\[13\]

分裂细胞：混沌法则的破解涉及了对 StarForce 3.0 的完全逆向工程，而且同破解一起发布的还有一组关于 StarForce 3.0
如何工作的文档。通过这些技术细节，StarForce
如何执行资源密集的过程（例如如何在模拟[虚拟机函数和](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")[操作码的同时实现对光盘等媒体的检测等](https://zh.wikipedia.org/wiki/操作码 "wikilink")）也渐渐为人所知。\[14\]

### 驱动程序安装

StarForce 3.0
会将其自身的[设备驱动程序在被保护产品第一次运行时安装或随被保护产品一起安装至系统](https://zh.wikipedia.org/wiki/设备驱动程序 "wikilink")，而该驱动程序通常并不会随软件一起被卸载（[金刚是个例外](https://zh.wikipedia.org/wiki/彼得·杰克逊的金刚（电视游戏） "wikilink")），这一点令其饱受批评。尽管
Protection Technology
[提供了删除工具](http://www.onlinesecurity-on.com/protect.phtml?c=55)，但其并未随被保护游戏告知或提供给用户。不过在安装*[科林麦克雷：尘埃](https://zh.wikipedia.org/wiki/科林麦克雷：尘埃 "wikilink")*时，安装程序既会询问用户是否安装该驱动程序，还会提供一份附有如何卸载驱动程序等信息的帮助文件。

除以上所列，很少有游戏在安装前或安装时会告知用户 StarForce 驱动程序的存在。

#### 精简/无驱动

StarForce 3.0
驱动通常与某些旧版本的[游戏演示版](https://zh.wikipedia.org/wiki/游戏演示 "wikilink")、[免费软件和像](https://zh.wikipedia.org/wiki/免费软件 "wikilink")[赛道狂飙：国家一样的下载版游戏一起安装](https://zh.wikipedia.org/wiki/赛道狂飙：国家 "wikilink")。安装驱动的目的是防止破解者用演示版可执行文件帮助爆破最终版可执行文件（因为这两个文件通常极其相似），它也可以阻止[网游作弊](https://zh.wikipedia.org/wiki/使用游戏外挂 "wikilink")。为回应人们对安装驱动程序之行为的批评，Protection
Technologies 发布了一种新的解决方案：StarForce 当前版本的*精简版*，它以游戏每3天要求插入源 CD
光盘代替了安装驱动程序。该精简版也用在了所有被 StarForce
所保护的演示版和下载版游戏中，以减少对光盘（或任何网络连接需求）的请求次数。

### 客户

[CDV](https://zh.wikipedia.org/wiki/CDV "wikilink")、[育碧软件](https://zh.wikipedia.org/wiki/育碧软件 "wikilink")、[Digital
Jesters](https://zh.wikipedia.org/wiki/Digital_Jesters "wikilink")（现改组为
defunct）、[JoWooD](https://zh.wikipedia.org/wiki/JoWooD "wikilink")、[Egosoft](https://zh.wikipedia.org/wiki/Egosoft "wikilink")、[Codemasters](../Page/Codemasters.md "wikilink")、[Eagle
Dynamics](https://zh.wikipedia.org/wiki/Eagle_Dynamics "wikilink")、[MIdway
Games以及](https://zh.wikipedia.org/wiki/MIdway_Games "wikilink")[Bohemia
Interactive
Studio](https://zh.wikipedia.org/wiki/Bohemia_Interactive_Studio "wikilink")
将 StarForce 3.0 用于他们的一些产品中。

不过，2006 年，育碧软件和 JoWooD 宣布，因为“StarForce
软件存在问题”，它们在[北美洲发行的游戏将不再使用](../Page/北美洲.md "wikilink")
StarForce。\[15\] CDV 也于 2006年 5月宣布在今后所有的游戏中抛弃使用 StarForce 而改用
[TAGES](https://zh.wikipedia.org/wiki/TAGES "wikilink")
复制保护系统，以回应用户的抱怨。\[16\]

### 社会反映

一些游戏者提议联合抵制使用 StarForce 的游戏或发行商。\[17\] 这些游戏者声称 StarForce
软件会引起系统的不稳定甚至崩溃，而 Protection Technology
拒绝对其软件所造成的破坏道歉。育碧软件决定调查 StarForce 联合抵制的程度并在其论坛中发起一个投票，以调查谁在反对使用
StarForce。 \[18\] 结果（在一场诉讼\[19\] 与网上的普遍不满\[20\]\[21\] 的同时），在*[魔法门之英雄无敌
V](https://zh.wikipedia.org/wiki/魔法门之英雄无敌_V "wikilink")*和
[GTR2](https://zh.wikipedia.org/wiki/GTR2 "wikilink") 中，StarForce 3.0 被
[SecuROM](../Page/SecuROM.md "wikilink") 所替代。\[22\]

## 删除 StarForce 驱动程序

卸载一个被 StarForce 所保护的游戏并不会从系统中删除 StarForce 驱动程序，该驱动程序会继续在系统后台运行。StarForce
SDK 为系统提供了卸载游戏时同时删除驱动程序的功能，然而它并不会被自动执行。当前已有一款可以从系统中删除 StarForce
驱动程序的官方工具。\[23\] 该程序存放在一个被 StarForce
官方网站中的链接所指向的第三方网站中。\[24\]
一些网友也提供了手动删除驱动程序的说明和方法。\[25\]

自 4.0 版本起，StarForce 开始包含一个删除服务。该服务会在被 StarForce 所保护的游戏被卸载之后自动卸载
StarForce 驱动程序。一旦卸载了驱动程序，该服务也会被自动删除。

### 软件

#### 驱动程序安全

StarForce 3.0（2006 年 8 月前）带来了一个安全问题，具体表现为：当 StarForce
安装于一个可以在公共网络中被发现的受限用户帐户中时，驱动程序的[访问控制列表会被设定为任何用户](https://zh.wikipedia.org/wiki/访问控制列表 "wikilink")（包括没有管理员权限的用户）都可以更改被驱动程序所运行的代码。这样入侵就很容易了：用户可以将该代码修改为指向任意可执行程序，它会在下次重新启动时以完全系统权限运行。可以用安全工具“sercheck2”来检测是否存在这样潜在的不安全驱动程序配置。

### 公司行为

#### Boing Boing

2006年1月30日，著名的[博客提供商](https://zh.wikipedia.org/wiki/博客 "wikilink")
[Boing Boing](https://zh.wikipedia.org/wiki/Boing_Boing "wikilink")
引用一些与保护系统有关的问题，包括[磁盘驱动器性能退化](https://zh.wikipedia.org/wiki/磁盘驱动器 "wikilink")、[操作系统安全性和稳定性的减弱](../Page/操作系统.md "wikilink")，声称
StarForce 是[恶意软件](../Page/恶意软件.md "wikilink")。\[26\]

在过了一天后的 2006年1月31日，Boing Boing 收到了 StarForce
的一封电子邮件，威胁采取法律行动，并称该文章“充满侮辱、谎言、错误的指控和传言”。\[27\][CNET](../Page/CNET.md "wikilink")
做了相似的事，并收到了相似的电子邮件。\[28\] 不过，Protection Technologies 并未证实这些文章是恶意撰写的。

在争论中，知名的 [Sysinternals](../Page/Sysinternals.md "wikilink") 程序员 [Mark
Russinovich](https://zh.wikipedia.org/wiki/Mark_Russinovich "wikilink")
分析了 StarForce 并发现其“没有什么明显的不稳定”：\[29\]

#### Stardock

2006年3月5日，Protection Technology 的一名雇员帖出了一个指向[银河文明
II](https://zh.wikipedia.org/wiki/银河文明_II：死亡领主 "wikilink") 的未授权下载源的链接，这是
由 [StarDock](https://zh.wikipedia.org/wiki/StarDock "wikilink")
开发的一款未使用强制复制保护措施的游戏，该雇员此举意为证明游戏若缺失强制保护将导致的后果。\[30\]
在互联网中引起大量关注之后，StarForce 随后为此举发表了道歉声明。\[31\]

## 请参见

  - [SecuROM](../Page/SecuROM.md "wikilink")
  - [SafeDisc](https://zh.wikipedia.org/wiki/SafeDisc "wikilink")
  - [扩展复制保护](https://zh.wikipedia.org/wiki/扩展复制保护 "wikilink") ("XCP")

## 引用

## 外部链接

  - [官方网站（英文）](http://www.star-force.com)
  - [官方网站（简体中文）](https://web.archive.org/web/20161220074136/http://www.star-force.com.cn/)
  - [StarForce
    驱动程序删除程序](http://www.onlinesecurity-on.com/protect.phtml?c=55)
  - [收集关于 StarForce 为什么以及如何不好之信息的网页](http://www.glop.org/starforce/)
  - [Boycott StarForce .net](http://www.boycottstarforce.net/) 包含一些地区被
    StarForce 保护的游戏之名单和检测方法，还有删除说明和其他信息。

[Category:數位版權管理](https://zh.wikipedia.org/wiki/Category:數位版權管理 "wikilink")

1.  [StarForce
    获得了微软合作伙伴等级认证](http://www.star-force.com/press_room/news/index.php?news=1802)

2.  [StarForce
    成为微软解决方案合作伙伴](http://www.star-force.com/press_room/news/index.php?news=1922)

3.  [StarForce
    成为英特尔软件合作伙伴](http://www.star-force.com/press_room/news/index.php?news=2069&phrase_id=28909)

4.  [StarForce Keyless
    Protection](http://www.star-force.com/images/Image/schems/fl_disc1.jpg)
5.  [StarForce 复制保护开始支持使用 64
    位平台之用户群](http://www.star-force.com/press_room/news/index.php?news=1997&phrase_id=28896)

6.  [StarForce FrontLine 驱动通过“Microsoft Windows Vista
    认证”测试。](http://www.star-force.com/press_room/news/index.php?news=1806&phrase_id=28895)

7.  [StarForce FrontLine 4.0 –
    在复制保护系统中引人注目的进步！](http://www.star-force.com/press_room/news/index.php?news=1950&phrase_id=28895)

8.  [StarForce FrontLine 4.7 – StarForce DRM
    系统的新版本。](http://www.star-force.com/press_room/news/index.php?news=1824&phrase_id=28900)

9.
10. [用于网络分发之应用程序的 StarForce Frontline
    ProActive](http://www.star-force.com/solutions/products/fl_proactive/)
11.
12. [1](http://www.nforce.nl/index.php?switchto=nfos&menu=quicknav&item=viewnfo&id=104992)
13.
14. <http://www.glop.org/files/rld-sfrt.rar>
15.
16. <http://www.gamasutra.com/php-bin/news_index.php?story=9446>
17.
18. <http://www.extremetech.com/article2/0,1697,1949621,00.asp>
19.
20.
21.
22. 台灣則是在《仙劍奇俠傳四》發行後因為StarForce產生的嚴重問題，最後常使用此防拷程式的[大宇和](https://zh.wikipedia.org/wiki/大宇 "wikilink")[宇峻奧汀也改用SecuROM](../Page/宇峻奧汀.md "wikilink")。
23.
24.
25.
26.
27.
28. <https://web.archive.org/web/20060203102714/http://news.com.com/5208-7349-0.html?forumID=1&threadID=11535&messageID=86618&start=-184>
29.
30. <http://www.galciv2.com/temp/starfo2.jpg>
31. <http://forums.galciv2.com/index.aspx?AID=107193>