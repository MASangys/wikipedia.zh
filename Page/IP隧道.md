**IP隧道**是指一種可在两网络间用[网际协议进行通信的通道](../Page/网际协议.md "wikilink")。在该通道里，會先[封装其他网络协议的](../Page/封裝_\(網路\).md "wikilink")[数据包](../Page/分組.md "wikilink")，之後再传输資訊。

IP隧道经常用於连接两個不是用[路由直接連結的IP网络](../Page/路由.md "wikilink")，IP隧道會通过底层路由协议来架构中间传输网络。若IP隧道与两個或多个[IPSec一起使用时](../Page/IPSec.md "wikilink")，可以创建[虚拟专用网](../Page/虚拟专用网.md "wikilink")（Virtual
Private
Network，VPN），讓二個或多個被公開網路（如[因特网](../Page/因特网.md "wikilink")）隔開的私有网络彼此访问，另一个主要应用也是目前常用的，讓各[IPv6網路隔著](../Page/IPv6.md "wikilink")[IPv4网络上通訊](../Page/IPv4.md "wikilink")。

[IPTunnelDiagram_01-12-07.jpg](https://zh.wikipedia.org/wiki/File:IPTunnelDiagram_01-12-07.jpg "fig:IPTunnelDiagram_01-12-07.jpg")

在IP隧道中，每个IP包、來源/目的地址信息都被封装在一个数据包中，该数据包用于实际物理网络传递。

在源网络与传输网络的边界，以及传输网络和目的网络的边界，會用[网关來建立跨网络的隧道端点](../Page/网关.md "wikilink")（endpoint）。因此，IP隧道端点可以變成本地IP路由器，在源网络与目的网络间建立标准路由。端点會截取通過端点封包的[隧道协议报头及报尾](../Page/隧道协议.md "wikilink")，再转换为标准IP格式，与其他来源的数据包一样注入到隧道端点的IP栈（IP
stack）上。在这一层上，像IPSec或[TLS等封装用协议都被移除了](../Page/傳輸層安全協議.md "wikilink")。

[IP in IP](../Page/IP_in_IP.md "wikilink")， 又被称为
*ipencap*，是将IP协议封装入传输用的IP协议的一个例子，RFC
2003描述此协议。类似的变体有IPv6-in-IPv4隧道
（[6in4](../Page/6in4.md "wikilink")） 和 IPv4-in-IPv6 隧道（）。

因為[防火墙的本质及原始数据报文被隐藏了](../Page/防火墙.md "wikilink")，IP隧道经常用于绕过简单的防火墙规则，通常需要通过[内容控制软件才能对IP隧道进行筛查](../Page/内容控制软件.md "wikilink")。

移动IPv4主要有三种隧道技术，它们分别是：IP in
IP、最小封装以及[通用路由封装](../Page/通用路由封装.md "wikilink")。

## 另请参见

  - [隧道协议](../Page/隧道协议.md "wikilink")

<!-- end list -->

  - [隧道代理](../Page/隧道代理.md "wikilink")
  - [通用路由封装](../Page/通用路由封装.md "wikilink")

## 应用

  - RFC 1853
  - RFC 2003
  - RFC 2473
  - RFC 4213

[分類:網路標準](../Page/分類:網路標準.md "wikilink")

[Category:穿隧協議](https://zh.wikipedia.org/wiki/Category:穿隧協議 "wikilink")