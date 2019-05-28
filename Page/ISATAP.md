**ISATAP**（Intra-Site Automatic Tunnel Addressing
Protocol）是一种[IPv6转换传送机制](../Page/IPv6.md "wikilink")，允许IPv6数据包通过[IPv4网络上双栈节点传输](../Page/IPv4.md "wikilink")。

不同于[6over4](../Page/6over4.md "wikilink")，ISATAP视IPv4网络为一个[非广播多路访问网络的](https://zh.wikipedia.org/wiki/非广播多路访问网络 "wikilink")[数据链路层](../Page/数据链路层.md "wikilink")，因此它不需要底层的IPv4网络基础设施来支持多播。

## 运行方法

ISATAP包含一种基于IPv4地址生成IPv6本地链路地址的方法，和基于IPv4网络的邻居发现机制。

### 地址产生

任何一个希望通过特定IPv4网络使用ISATAP的主机都可以建立虚拟的IPv6网络接口。将主机的IPv4地址比特串加上特定IPv6前缀作为接口的IPv6地址，对于全球单播地址使用`fe80::0200:5efe:`，对于[专用网络地址则使用](../Page/专用网络.md "wikilink")`fe80::0000:5efe:`。例如，一个主机IPv4地址为`192.0.2.143`，则其ISATAP接口的IPv6地址为`fe80::0200:5efe:192.0.2.143`，转为完整最短IPv6为`fe80::200:5efe:c000:28f`（`c000:28f`为其IPv4地址`192.0.2.143`的十六进制值）。\[1\]

### 邻居发现

由于ISATAP将IPv4基础网络视为一个非广播或多播多路访问网络的数据链路层，不同于[以太网](../Page/以太网.md "wikilink")，使其原有的[ICMPv6](https://zh.wikipedia.org/wiki/ICMPv6 "wikilink")[邻居发现不能如常操作](https://zh.wikipedia.org/wiki/邻居发现协议 "wikilink")，使ISATAP比6over4的运作有所困难。

对于IPv6数据包来说，IPv4网络是它的物理链路层，由于其IPv6地址已经包含了作为链路层的地址，即IPv4地址，所以其无需进行邻居发现。但是缺少多播功能导致其无法进行路由自动发现，所以ISATAP主机必须配置一个潜在路由器列表（potential
routers
list，PRL），这列表中的路由器通常不需要使用ICMPv6的路由发现来寻获和确定其是否已在线可运行，并且其只进行单播地址自动配置（通常可以借此为ISATAP的接口自动配置到其他IPv6前缀）。

实际上，PRL是通过DNS查询获得，例如如果本地网络域名为`example.com`，可通过查询`isatap.example.com`。本地网络域名通过IPv4网路上的DHCP或者本地静态配置获得。

## 实现

ISATAP已经在Microsoft [Windows
XP](../Page/Windows_XP.md "wikilink")、[Windows
Vista](../Page/Windows_Vista.md "wikilink")、[Windows
7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")、[Windows
8](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")、[Windows
10](../Page/Windows_10.md "wikilink")（但在1703更新中默认关闭，1803更新后会移除）\[2\]、[Windows
Server 2008](../Page/Windows_Server_2008.md "wikilink")、[Windows Server
2012](../Page/Windows_Server_2012.md "wikilink")、[Windows
Mobile](../Page/Windows_Mobile.md "wikilink")、[Linux和](../Page/Linux.md "wikilink")[Cisco
IOS](https://zh.wikipedia.org/wiki/思科IOS "wikilink")（自IOS 12.2(14)S、 IOS
XE Release 2.1）\[3\]中实现。

由于专利权利要求，早期在（\*BSD）和USAGI（Linux）的内核实现被移除过，然而，[IETF知识产权披露搜索引擎报道](https://zh.wikipedia.org/wiki/IETF "wikilink")，该侵权专利的持有者不需要实现者的许可。\[4\]Linux内核自2.6.35版本实现了内核支持，\[5\]并提供了一个用户空间配置工具`isatapd`。\[6\]对于之前的Linux内核，开源项目[Miredo提供了一个不完整的用户空间实现](../Page/Miredo.md "wikilink")，之后版本1.1.6中被移除。

## 批评

ISATAP通过查询DNS来构建PRL，因此，对应于[OSI模型](../Page/OSI模型.md "wikilink")，其依赖于一个高层协议来构建低层协议。其依赖于IPv4的DNS来避免循环，而不是IPv6路由的构建。然而，有些网络专家认为这这违反了他们认为普遍接受的设计原则，并进一步声称这些违规行为会导致协议不健全。\[7\]

ISATAP有着和6over4一样的安全风险，也就是IPv4虚拟链路需要在网络边缘被小心地分隔开，以便外部IPv4主机不能假装成为ISATAP链路的一部分。通常是通过将IP协议号为41的IP包（也就是[6in4等所使用的IP协议号](../Page/6in4.md "wikilink")）使用防火墙来拦截。

## 参考文献

## 外部链接

  - F. Templin, T. Gleeson, D. Thaler *Intra-Site Automatic Tunnel
    Addressing Protocol (ISATAP)* RFC 5214, March 2008.
  - <http://www.isatap.org/>

[Category:IPv6](https://zh.wikipedia.org/wiki/Category:IPv6 "wikilink")
[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")

1.
2.
3.
4.
5.
6.
7.