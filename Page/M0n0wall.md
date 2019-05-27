m0n0wall 是基于 [FreeBSD](../Page/FreeBSD.md "wikilink")
的嵌入式[防火墙发行版](../Page/防火墙.md "wikilink")，是
[BSD](../Page/BSD.md "wikilink")
[操作系统的后代之一](../Page/操作系统.md "wikilink")。它提供了一个小镜像，可以放在小型[闪存卡上](../Page/闪存.md "wikilink")，也可以放在
[CD-ROM](../Page/CD-ROM.md "wikilink")
和[硬盘上](../Page/硬盘.md "wikilink")。它可以在许多嵌入式平台和通用 PC
上运行。PC 版本可以只使用一张 [Live CD](../Page/Live_CD.md "wikilink")
和一张[软盘来存储配置数据](../Page/软盘.md "wikilink")，也可以在一张小型闪存卡上运行（附带
IDE 适配器）。这就消除了对硬盘驱动器的需求，从而降低了噪音和热量水平。

2015 年 2 月 15 日，Manuel Kasper 宣布“m0n0wall
项目正式结束”。不会再做任何开发，也不会有更新的版本，“鼓励”所有当前的
m0n0wall 用户切换到 [OPNsense](../Page/OPNsense.md "wikilink")
并尽其所能做出贡献。\[1\]\[2\][PfSense](../Page/PfSense.md "wikilink")
于 2004 年从 m0n0wall 项目中分叉出来，而OPNsense 于2015 年从 PfSense 分叉出来。

## 特性

m0n0wall 提供了基于 [web](https://zh.wikipedia.org/wiki/web "wikilink")
的配置，并使用 [PHP](../Page/PHP.md "wikilink") 专用于
[GUI](https://zh.wikipedia.org/wiki/GUI "wikilink")
和[引导配置](https://zh.wikipedia.org/wiki/引导 "wikilink")。此外，配置参数采用单个
[XML](../Page/XML.md "wikilink") 文件。

m0n0wall 的一些功能有：

  - 状态包过滤[防火墙](../Page/防火墙.md "wikilink")
  - [IPsec](../Page/IPsec.md "wikilink") 和
    [PPTP](https://zh.wikipedia.org/wiki/PPTP "wikilink")
    [VPN](https://zh.wikipedia.org/wiki/VPN "wikilink")
  - 入站和出站[网络地址转换](../Page/网络地址转换.md "wikilink")
  - Captive portal
  - Traffic shaper
  - 入站和出站端口过滤
  - 支持 802.1q 兼容的VLAN
  - 局域网和广域网端口上的多个IP地址
  - IPS

## 硬件

m0n0wall 安装在一些公司设计制造的嵌入式硬件上。

## 衍生品

  - 类似的硬件需求

<!-- end list -->

  - [t1n1wall](http://t1n1wall.com/)：m0n0wall 停止后于 2015 年分叉出来的。
  - [SmallWall](http://smallwall.org/)：另一个 2015 年 m0n0wall 的分支，在它的生命结束后。
  - [m0n0wall
    mod](https://code.google.com/archive/p/m0n0wall-mod/)：原始的带有附加功能的
    m0n0wall（DHCP+PPTP, DHCP+PPPoE, static+PPPoE, L2TP, WAN eth接口），自
    2013 年后不再开发。

<!-- end list -->

  - 扩展的硬件需求

<!-- end list -->

  - [OPNsense](../Page/OPNsense.md "wikilink")：m0n0wall 的继承者，于 2015 年从
    pfSense 分出来。\[3\]\[4\]
  - [pfSense](https://zh.wikipedia.org/wiki/pfSense "wikilink")：2004 年从
    m0n0wall 项目中分离出来，2006 年首次发布。\[5\]

<!-- end list -->

  - 其他用途(非防火墙)

<!-- end list -->

  - AskoziaPBX：嵌入式电话系统。
  - XigmaNAS：基于 FreeBSD 的 NAS
    [网络附加存储发行版](https://zh.wikipedia.org/wiki/网络附加存储 "wikilink")，使用了
    m0n0wall web [GUI](https://zh.wikipedia.org/wiki/GUI "wikilink")
    的部分内容。以前是NAS4Free。

## 另请参阅

  - Comparison of firewalls
  - List of router or firewall distributions

## 参考文献

<references group="" responsive="">

</references>

## 外部链接

  - [官方网站](https://m0n0.ch/wall/index.php)
  - [SourceForge.net上的](https://zh.wikipedia.org/wiki/SourceForge.net "wikilink")[M0n0wall中央管理接口项目](https://zh.wikipedia.org/wiki/sourceforge:projects/m0n0wall-cmi/ "wikilink")

[Category:路由器](https://zh.wikipedia.org/wiki/Category:路由器 "wikilink")
[Category:2003年面世的產品](https://zh.wikipedia.org/wiki/Category:2003年面世的產品 "wikilink")
[Category:FreeBSD](https://zh.wikipedia.org/wiki/Category:FreeBSD "wikilink")
[Category:自由路由軟體](https://zh.wikipedia.org/wiki/Category:自由路由軟體 "wikilink")
[Category:防火墙软件](https://zh.wikipedia.org/wiki/Category:防火墙软件 "wikilink")
[Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink")
[Category:BSD软件](https://zh.wikipedia.org/wiki/Category:BSD软件 "wikilink")
[Category:2003年软件](https://zh.wikipedia.org/wiki/Category:2003年软件 "wikilink")
[Category:使用过时图像语法的页面](https://zh.wikipedia.org/wiki/Category:使用过时图像语法的页面 "wikilink")
[Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.
2.
3.
4.
5.