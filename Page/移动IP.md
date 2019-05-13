**移-{}-动IP**（，IP
mobility），又譯為**行-{}-動IP**，由[網際網路工程任務組](../Page/網際網路工程任務組.md "wikilink")（IETF）制定的一種[網路傳輸協定標準](../Page/網路傳輸協定.md "wikilink")。它設計的目的，是為了讓行動裝置用戶，能夠從一個網路系統中，移動到另一個網路系統，但是裝置的[IP位址保持不變](../Page/IP位址.md "wikilink")。這能夠使移动节点在移动中保持其连接性，實現跨越不同網段的漫遊功能。在[IPv4系統中的行動IP](../Page/IPv4.md "wikilink")，在IETF
RFC 5944中定義，RFC
4721中提供了擴充定義。為[IPv6設計的行動IP](../Page/IPv6.md "wikilink")，又稱**Mobile
IPv6**，在RFC 6275中定義了它的功能。

## 設計目的

随着移动终端设备的广泛使用，移动[计算机和移动](../Page/计算机.md "wikilink")[终端等设备也开始需要接入](../Page/终端.md "wikilink")[网路](../Page/网路.md "wikilink")（Internet），但传统的[IP设计并未考虑到移动节点会在连接中变化互联网接入点之问题](../Page/IP.md "wikilink")。传统的IP地址包括两方面的意义：一方面是用来标识唯一的主机，另一方面它还作为主机的地址在数据的路由中起重要作用。但对于移动节点，由于互联网接入点会不断发生变化，所以其IP地址在两方面发生分离，一是移动节点需要一种机制来唯一标识自己，另一是需要这种标识不会被用来[路由](../Page/路由.md "wikilink")。移動IP便是为了能让移动节点能够分离IP地址这两方面功能，而又不彻底改变现有互联网的结构而设计。

## 移動IPv6和移動IPv4的比较

1.  移動IPv6不需要外地代理的支持
2.  移動IPv6支持路由优化
3.  移動IPv6路由优化不需要预先指定的安全机制
4.  移動IPv6允许路由优化使得路由器兼顾效率和“入口过滤”
5.  移動IPv6在移动节点不在本地网络时通过IPv6路由头部而不是隧道来路由
6.  移動IPv6不需要使用ARP，这也增加了其健壮性
7.  移動IPv6不需要维持隧道软状态
8.  移動IPv6的动态本地代理地址发现机制返回单独一个回应。而移動IPv4中采用广播的方法，这时本地网络中的所有本地代理都会分别返回回应。

## 外部連結

  - RFC 6275 -Mobility support for IPv6
  - RFC 5944 - IP Mobility Support for IPv4, Revised
  - RFC 4721 - Mobile IPv4 Challenge/Response Extensions
  - RFC 3024 - Reverse Tunneling for Mobile IP

[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")
[Category:网络层协议](https://zh.wikipedia.org/wiki/Category:网络层协议 "wikilink")
[Category:網路定址](https://zh.wikipedia.org/wiki/Category:網路定址 "wikilink")