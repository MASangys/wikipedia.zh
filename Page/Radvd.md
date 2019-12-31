> 本文内容由[Radvd](https://zh.wikipedia.org/wiki/Radvd)转换而来。


**路由广播守护**（**The Router Advertisement Daemon**，简称：radvd）是一个符-{}-合使用[邻居发现协议用于实现](https://zh.wikipedia.org/wiki/邻居发现协议 "wikilink")[IPv6地址本地链接广播和IPv](https://zh.wikipedia.org/wiki/IPv6地址 "wikilink")6路由前缀的开源软件。\[1\]该软件是给系统管理员用于实现在IPv6下对主机进行无状态自动配置地址。

当主机配置其网络接口时，会向网络多播一个路由请求来发现可用的路由，radvd会响应一个路由广播（router advertisement。RA）的消息。此外，radvd会定期在网络多播RA包给连接其的链接来更新主机信息。RA包包含了该链接的路由前缀，[最大传输单元](../Page/最大传输单元.md "wikilink")（MTU），默认响应的路由器地址等信息。

radvd也支持发布符-{}-合要求的可选信息，有递归DNS地址、DNS搜索列表等。\[2\]

## 参见

  - [DHCP](https://zh.wikipedia.org/wiki/DHCP "wikilink")
  - [DNS](https://zh.wikipedia.org/wiki/DNS "wikilink")

## 参考文献

[Category:IPv6](https://zh.wikipedia.org/wiki/Category:IPv6 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink") [Category:自由網路軟體](https://zh.wikipedia.org/wiki/Category:自由網路軟體 "wikilink")

1.  RFC 2461, *Neighbor Discovery for IP Version 6 (IPv6)*, T. Narten, E. Nordmark, W. Simpson (December 1998)
2.  RFC 6106, *IPv6 Router Advertisement Options for DNS Configuration*, J. Jeong (Ed.), S. Park, L. Beloeil, S. Madanapalli (November 2010)