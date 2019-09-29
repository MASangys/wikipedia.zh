**網際網路安全協定**（，縮寫：**IPsec**）是一個[协议套件](https://zh.wikipedia.org/wiki/协议套件 "wikilink")，透过对[IP协议的](https://zh.wikipedia.org/wiki/IP协议 "wikilink")[分组进行](https://zh.wikipedia.org/wiki/分组 "wikilink")[加密](../Page/加密.md "wikilink")和[认证来保护IP协议的](https://zh.wikipedia.org/wiki/认证 "wikilink")[网络传输协议](../Page/网络传输协议.md "wikilink")族（一些相互关联的协议的集合）。

IPsec主要由以下[协议组成](../Page/网络传输协议.md "wikilink")\[1\]\[2\]：一、[认证头（AH）](https://zh.wikipedia.org/wiki/#认证头（AH） "wikilink")，为IP[数据报提供无连接](https://zh.wikipedia.org/wiki/数据报 "wikilink")[数据完整性](https://zh.wikipedia.org/wiki/数据完整性 "wikilink")、以及防[重放攻击保护](https://zh.wikipedia.org/wiki/重放攻击 "wikilink")\[3\]\[4\]；二、[封装安全载荷（ESP）](https://zh.wikipedia.org/wiki/#封装安全载荷（ESP） "wikilink")，提供机密性、数据源认证、无连接完整性、防重放和有限的传输流（traffic-flow）机密性\[5\]；三、[安全關-{}-聯（SA）](https://zh.wikipedia.org/wiki/安全關聯 "wikilink")，提供算法和数据包，提供AH、ESP操作所需的参数\[6\]。

## 标准现状

[IPv6](../Page/IPv6.md "wikilink")是[IETF为](https://zh.wikipedia.org/wiki/IETF "wikilink")[IP协议分组通信制定的新的因特网标准](https://zh.wikipedia.org/wiki/IP协议 "wikilink")，IPsec在 RFC 6434 以前是其中必选的内容\[7\]，但在[IPv4](../Page/IPv4.md "wikilink")中的使用则一直只是可选的。这样做的目的，是为了随着IPv6的进一步流行，IPsec可以得到更为广泛的使用。第一版IPsec协议在[RFCs](https://zh.wikipedia.org/wiki/Request_for_Comments "wikilink") 2401-2409中定义。在2005年第二版标准文档发布，新的文档定义在 RFC 4301 和 RFC 4309 中\[8\]\[9\]。

## 设计意图

IPsec被设计用来提供（1）入口对入口[通信安全](https://zh.wikipedia.org/wiki/通信安全 "wikilink")，在此机制下，分组通信的安全性由单个节点提供给多台机器（甚至可以是整个[局域网](../Page/局域网.md "wikilink")）；（2）端到端分组通信安全，由作为端点的计算机完成安全操作。上述的任意一种模式都可以用来构建[虚拟专用网](https://zh.wikipedia.org/wiki/虚拟专用网 "wikilink")（VPN），而这也是IPsec最主要的用途之一。应该注意的是，上述两种操作模式在安全的实现方面有着很大差别。

，其中部分原因，是因为其不够普遍或者说不被普遍信任。[公钥基础设施能够得以形成](https://zh.wikipedia.org/wiki/公钥基础设施 "wikilink")（[DNSSEC最初就是为此产生的](https://zh.wikipedia.org/wiki/DNSSEC "wikilink")），一部分是因为许多用户不能充分地认清他们的需求及可用的选项，导致其作为内含物强加到卖主的产品中（这也必将得到广泛采用）；另一部分可能归因于[网络响应的退化](https://zh.wikipedia.org/wiki/滞后 "wikilink")（或说预期退化），就像[兜售信息的充斥而带来的带宽损失一样](https://zh.wikipedia.org/wiki/兜售信息 "wikilink")。

## IPsec与其它互联网安全协议的对比

IPsec协议工作在[OSI模型](../Page/OSI模型.md "wikilink")的第三层，使其在单独使用时适于保护基于[TCP或](../Page/传输控制协议.md "wikilink")[UDP的协议](../Page/用户数据报协议.md "wikilink")（如[安全套接子层](https://zh.wikipedia.org/wiki/安全套接子层 "wikilink")（[SSL](https://zh.wikipedia.org/wiki/SSL "wikilink")）就不能保护UDP层的通信流）。这就意味着，与传输层或更高层的协议相比，IPsec协议必须处理可靠性和分片的问题，这同时也增加了它的复杂性和处理开销。相对而言，[SSL](https://zh.wikipedia.org/wiki/SSL "wikilink")/[TLS依靠更高层的](https://zh.wikipedia.org/wiki/TLS "wikilink")[TCP](../Page/传输控制协议.md "wikilink")（OSI的第四层）来管理可靠性和分片。

## 技术细节

### 认证头（AH）

**认证头**（Authentication Header，**AH**）被用来保证被传输分组的完整性和可靠性。此外，它还保护不受[重放攻击](https://zh.wikipedia.org/wiki/重放攻击 "wikilink")。认证头试图保护IP数据报的所有字段，那些在传输IP分组的过程中要发生变化的字段就只能被排除在外。当认证头使用非对称数字签名算法（如RSA）时，可以提供不可否认性（RFC 1826）\[10\]。

认证头分组图示：

| 位偏移 | 字节              | 0               | 1               | 2               | 3 |
| --- | --------------- | --------------- | --------------- | --------------- | - |
| 位   | 0 1 2 3 4 5 6 7 | 0 1 2 3 4 5 6 7 | 0 1 2 3 4 5 6 7 | 0 1 2 3 4 5 6 7 |   |
| 0   | 下一个头            | 载荷长度            | 保留              |                 |   |
| 32  | 安全参数索引（SPI）     |                 |                 |                 |   |
| 64  | 序列号             |                 |                 |                 |   |
| 96+ | 认证数据（可变长度）      |                 |                 |                 |   |

字段含义：

  - 下一个头：标识被传送数据所属的协议。
    载荷长度：认证头包的大小。
    保留：为将来的应用保留（目前都置为0）。
    安全参数索引：与IP地址一同用来标识安全参数。
    序列号：单调递增的数值，用来防止重放攻击。
    认证数据：包含了认证当前包所必须的数据。

### 封装安全载荷（ESP）

**封装安全载荷**（Encapsulating Security Payload，**ESP**）协议对分组提供了源可靠性、完整性和保密性的支持。与AH头不同的是，IP分组头部不被包括在内。

ESP分组图示：

| 位偏移        | 字节          | 0    | 1    | 2 | 3 |
| ---------- | ----------- | ---- | ---- | - | - |
| 位          | 0           | 1    | 2    | 3 | 4 |
| 0          | 安全参数序列（SPI） |      |      |   |   |
| 32         | 序列号         |      |      |   |   |
| 64+        | 载荷\*（可变长度）  |      |      |   |   |
|            | 填充（0-255字节） |      |      |   |   |
|            |             | 填充长度 | 下一个头 |   |   |
| 认证数据（可变长度） |             |      |      |   |   |

字段含义：

  - 安全参数索引：与IP地址一同用来标识安全参数
    序列号：单调递增的数值，用来防止重放攻击。
    载荷数据：实际要传输的数据。
    填充：某些块加密算法用此将数据填充至块的长度。
    填充长度：以位为单位的填充数据的长度。
    下一个头：标识被传送数据所属的协议。
    认证数据：包含了认证当前包所必须的数据。

## 实现

[FreeS/WAN项目已经开发了一个](https://zh.wikipedia.org/wiki/FreeS/WAN "wikilink")[开源的](https://zh.wikipedia.org/wiki/开源 "wikilink")[GNU/Linux环境下的IPsec实现](../Page/Linux.md "wikilink")。且一个基于KAME项目的IPsec实现已经包含在[NetBSD](../Page/NetBSD.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")以及2.6 [Linux内核](../Page/Linux内核.md "wikilink")中。从某种程度上说，也是因为这个原因，Free S/WAN项目的开发在2004年3月时被中止。[Openswan](../Page/Openswan.md "wikilink")和[strongSwan是Free](https://zh.wikipedia.org/wiki/strongSwan "wikilink") S/WAN延续。

至今已有许多IPsec协议和[ISAKMP](https://zh.wikipedia.org/wiki/ISAKMP "wikilink")／[IKE协议的实现](https://zh.wikipedia.org/wiki/IKE "wikilink")。它们包括：

  - [NRL IPsec](https://zh.wikipedia.org/wiki/NRL_IPsec "wikilink")，属于原型的一种
  - [OpenBSD](../Page/OpenBSD.md "wikilink")，代码源于[NRL IPsec](https://zh.wikipedia.org/wiki/NRL_IPsec "wikilink")
  - [Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，包含了[Kame IPsec的代码](https://zh.wikipedia.org/wiki/Kame_IPsec "wikilink")
  - [Cisco IOS](https://zh.wikipedia.org/wiki/思科IOS "wikilink")
  - [Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
  - [SSH Sentinel](https://zh.wikipedia.org/wiki/SSH_Sentinel "wikilink")（现作为[SafeNet的一部分](https://zh.wikipedia.org/wiki/SafeNet "wikilink")）提供了工具包
  - [Solaris](../Page/Solaris.md "wikilink")

## 參見

  - [信息安全](../Page/信息安全.md "wikilink")

## 参考文献

## 外部链接

  - [计算机系统安全](https://web.archive.org/web/20140826133357/http://pg.zhku.edu.cn/inforwork/kejian/index/x_course_margin.htm)
  - [IPsec簡介](http://structedtext.appspot.com/net/7.html)
  - [IETF的IPsec工作组](https://web.archive.org/web/20050428083002/http://www.ietf.org/html.charters/ipsec-charter.html)。
  - [Free S/WAN项目主页](http://www.freeswan.org/)。
  - [Openswan项目主页](http://www.openswan.org/)。
  - [strongSwan项目主页](http://www.strongswan.org/)。
  - [VPN社团](http://www.vpnc.org/)。
  - [A long thread on the ipsec@lists.tislabs.com](http://www.netsys.com/ipsec/2000/msg00777.html)关于是否要将字母S大写，RFC文档写的很清楚，应该是IPsec。

### IPsec相关RFC文档

  - RFC 2401: IP协议的安全架构
    RFC 2402:认证头
    RFC 2406:封装安全载荷
    RFC 2407: ISAKMP的IPsec解释域（IPsec DoI）
    RFC 2408: [網路安全關聯與金鑰管理協定](../Page/網路安全關聯與金鑰管理協定.md "wikilink")（ISAKMP）
    RFC 2409: [因特网密钥交换](https://zh.wikipedia.org/wiki/因特网密钥交换 "wikilink")（IKE）

{{-}}

[Category:网络层协议](https://zh.wikipedia.org/wiki/Category:网络层协议 "wikilink") [Category:穿隧協議](https://zh.wikipedia.org/wiki/Category:穿隧協議 "wikilink") [Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink")

1.
2.
3.
4.
5.
6.  The [Internet Key Exchange](https://zh.wikipedia.org/wiki/Internet_Key_Exchange "wikilink") (IKE), RFC 2409, §1 Abstract
7.  RFC 6434, "IPv6 Node Requirements", E. Jankiewicz, J. Loughney, T. Narten (December 2011)
8.  RFC 4301
9.  RFC 4309
10. RFC 1826