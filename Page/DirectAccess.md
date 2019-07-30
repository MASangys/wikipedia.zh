**DirectAccess**，也称**统一远程访问**（Unified Remote Access），是一种类VPN技术，它可以为已连接互联网的客户端计算机提供[内部网连通性](https://zh.wikipedia.org/wiki/内部网 "wikilink")。不同于许多传统的必须由用户明确启动与终止的[虛擬私人網路](../Page/虛擬私人網路.md "wikilink")（VPN）连接，DirectAccess连接被设计成在计算机连接到互联网后就尽快自动连接。DirectAccess在[Windows Server 2008 R2中引入](../Page/Windows_Server_2008_R2.md "wikilink")，为[Windows 7和](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")[Windows 8企业版客户端提供此服务](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")。2010年，（UAG）发布，这简化了DirectAccess在Windows 2008 R2上的部署\[1\]，包含额外组件使其更容易集成而无需在网络上部署[IPv6](../Page/IPv6.md "wikilink")，并有专用的用户界面用于配置和监控。虽然DirectAccess基于微软技术，但也有第三方解决方案使用DirectAccess来访问内部的[UNIX](../Page/UNIX.md "wikilink")和[Linux](../Page/Linux.md "wikilink")服务器。在[Windows Server 2012中](../Page/Windows_Server_2012.md "wikilink")，DirectAccess被完全集成到操作系统，提供有用户界面用于配置，并有原生的IPv6和IPv4支持。\[2\]

## 技术

DirectAccess在客户端与DirectAccess服务器之间建立[IPsec](../Page/IPsec.md "wikilink")隧道，并使用[IPv6](../Page/IPv6.md "wikilink")联系内部网或其他DirectAccess客户端。这些技术将IPv6流量封装在[IPv4](../Page/IPv4.md "wikilink")封包内以通过互联网传输到内部网，因此仍主要依赖于IPv4流量。所有传输到内部网的流量都使用[IPsec](../Page/IPsec.md "wikilink")加密并封装在IPv4封包内，因此大多数情况下不需要配置[防火墙](../Page/防火墙.md "wikilink")或[代理服务器](../Page/代理服务器.md "wikilink")。\[3\]DirectAccess客户端可以使用数种隧道技术之一，这取决于客户端的网络连接配置。只要服务器配置正确从而能使用，客户端可以使用[6to4](../Page/6to4.md "wikilink")、[Teredo隧道](../Page/Teredo隧道.md "wikilink")或[IP-HTTPS](../Page/IP-HTTPS.md "wikilink")。例如，直接连接到互联网的客户端可使用6to4，而在[NAT网络内的客户端将使用Teredo](../Page/网络地址转换.md "wikilink")。此外，Windows Server 2012提供两种向后兼容服务：[DNS64和](../Page/IPv6转换机制.md "wikilink")[NAT64](../Page/NAT64.md "wikilink")，这允许DirectAccess客户端与企业网络中的服务器通信，即使这些服务器只有IPv4网络连接。由于IPv6的全局可路由性，公司网络上的计算机也可以启动与DirectAccess客户端的连接，从而可以随时远程管理这些客户端。\[4\]

## 优势

DirectAccess可以为多个站点部署。它允许通过组策略控制，维护一个安全加密的VPN网络。

## 必要条件

Windows Server 2008 R2中的DirectAccess或UAG需要：

  - 一个或多个有两个[网络适配器的运行](../Page/网卡.md "wikilink")[Windows Server 2008 R2的DirectAccess服务器](../Page/Windows_Server_2008_R2.md "wikilink")：一个直接连接互联网，另一个连接到内部网。
  - 在DirectAccess服务器上，连接到互联网的网络适配器已被分配至少两个连续的公网IPv4地址。
  - DirectAccess客户端运行[Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink") Ultimate版或企业版，或[Windows 8企业版](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")。
  - 至少一个[網域控制器和](https://zh.wikipedia.org/wiki/網域控制器 "wikilink")[域名系统](../Page/域名系统.md "wikilink")（DNS）服务器，运行Windows Server 2008 SP2或Windows Server 2008 R2。
  - [公開金鑰基礎建設](../Page/公開金鑰基礎建設.md "wikilink")（PKI）来颁发计算机证书。

Windows Server 2012中的DirectAccess需要：

  - 一个或多个有一个或两个网络适配器的运行[Windows Server 2012的DirectAccess服务器](../Page/Windows_Server_2012.md "wikilink")
  - 至少一个[網域控制器和](https://zh.wikipedia.org/wiki/網域控制器 "wikilink")[域名系统](../Page/域名系统.md "wikilink")（DNS）服务器，运行Windows Server 2008 SP2或Windows Server 2008 R2。
  - DirectAccess客户端运行[Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink") Ultimate版或企业版，或[Windows 8企业版](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")。
  - 公钥基础设施对Windows 8客户端不是必要条件。\[5\]

智能卡证书和用于[網路存取保護技術的健康证书可以配合PKI使用](https://zh.wikipedia.org/wiki/網路存取保護技術 "wikilink")。

## 参考资料

## 外部链接

  - [Microsoft's DirectAccess in Windows Server 2012](http://technet.microsoft.com/en-us/library/dn636118.aspx)
  - [Microsoft's DirectAccess in Windows Server 2008 R2](http://technet.microsoft.com/en-us/library/dd758757.aspx)
  - [MS-IPHTTPS on MSDN](http://msdn.microsoft.com/en-us/library/dd358571%28PROT.13%29.aspx)：PDF中包含规范。
  - [Blogger's posting on DirectAccess](http://refraction.co.uk/blog/2009/07/23/directaccess-ipv6-and-ipv4-networks/)
  - [Richard Hicks' DirectAccess Blog](http://directaccess.richardhicks.com/)
  - \[<http://technet.microsoft.com/en-us/library/ff978824(v=WS.10>).aspx Differences between UAG and native 2008 R2 DirectAccess\]

[Category:IPv6](https://zh.wikipedia.org/wiki/Category:IPv6 "wikilink") [Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink") [Category:虛擬私人網路](https://zh.wikipedia.org/wiki/Category:虛擬私人網路 "wikilink")

1.
2.
3.
4.   PACKT Books|accessdate=2017-03-23|language=en}}
5.