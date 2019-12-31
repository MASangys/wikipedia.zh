> 本文内容由[NAT64](https://zh.wikipedia.org/wiki/NAT64)转换而来。


**NAT64**是一种通过[网络地址转换](../Page/网络地址转换.md "wikilink")（NAT）形式促成[IPv6](../Page/IPv6.md "wikilink")与[IPv4](../Page/IPv4.md "wikilink")主机间通信的[IPv6转换机制](../Page/IPv6转换机制.md "wikilink")。NAT64网关需要至少一个IPv4地址和一个包含32位地址空间的IPv6网段来完成IPv4与IPv6协议间的翻译\[1\]。

IPv6客户端将希望与之通信的IPv4地址嵌入在IPv6网络段的主机部分，构成一个嵌入在IPv6地址中的IPv4数据包，并发往生成的地址。NAT64网关则创建IPv6与IPv4地址间的映射，这可以为手动配置，也可以自动确定。\[2\]

## 操作原理

[右](https://zh.wikipedia.org/wiki/File:NAT64_1.svg "fig:右") 简单的NAT64设置可能是一个设备的两个接口分别连接到IPv4网络与IPv6网络的网关。IPv6网络的流量经由网关路由，其对两个网络之间传送的分组进行所有必要的翻译。但是，这种翻译并不是对称的，\[3\]因为[IPv6地址空间比](https://zh.wikipedia.org/wiki/IP地址#IPv6位址 "wikilink")[IPv4](../Page/IPv4.md "wikilink")地址空间大得多，因此就不可能进行一对一的地址映射。网关维护IPv6到IPv4的地址映射，而该映射可以在来自IPv6网络的第一个分组到达NAT64网关时手动建立（无状态映射），也可自动建立（有状态映射）。

如果NAT64翻译器是用于使仅有IPv4的服务器能被远端仅有IPv6的客户端访问，则比较适合使用无状态转换。有状态转换适合在客户端或服务提供商部署，使仅有IPv6的客户端主机能联系远端的仅有IPv4的节点。

通常来说，NAT64被设计为在IPv6主机发起通信时使用。但也存在一些机制允许反向场景，例如静态地址映射。

不是每种类型的资源都能用NAT64访问。嵌入IPv4字面地址的协议（例如[SIP和](../Page/会话发起协议.md "wikilink")[SDP](https://zh.wikipedia.org/wiki/会话描述协议 "wikilink")、[FTP](../Page/文件传输协议.md "wikilink")、[WebSocket](../Page/WebSocket.md "wikilink")、[Skype](../Page/Skype.md "wikilink")、MSN等）都不能得到支持，但双栈[网页代理允许仅IPv](../Page/代理服务器.md "wikilink")6客户端访问使用IPv4字面地址的URL。不过，使用NAT64的[464XLAT](../Page/IPv6转换机制.md "wikilink")（描述于RFC 6877）允许此类协议通过仅IPv6连接。对于SIP和FTP来说，使用[應用層閘道](https://zh.wikipedia.org/wiki/應用層閘道 "wikilink")（ALG）技术可以解决问题，或者使用RFC 7225中PREFIX64扩展指定的。

## 实现

  - [Ecdysis](http://ecdysis.viagenie.ca/)，NAT64网关，包含DNS64

  - [TAYGA](http://www.litech.org/tayga)，无状态NAT64实现，面向Linux

  - [Jool](https://www.jool.mx/)，有状态NAT64实现，面向Linux，与[蒙特雷科技大学](../Page/蒙特雷科技大学.md "wikilink")开发

  - [OpenBSD](../Page/OpenBSD.md "wikilink") 5.1带来一个NAT64能力的\[4\]

  - ，一个实现DNS64和NAT64的反向代理和VPN解决方案

  - [无状态网络地址转换64](http://www.cisco.com/en/US/docs/ios/ios_xe/ipaddr/configuration/guide/iad_stateless_nat64_xe.html)于Cisco ASR 1000

  - [Stateful NAT64 feature](http://kb.juniper.net/InfoCenter/index?page=content&id=TN123)在Juniper MX系列3D通用边缘路由器

  - [Cisco](http://www.cisco.com/) ASA版本9.0带来了NAT64和DNS64 \[5\]

  - [Dual stack architecture that recognizes both IPv4 and IPv6 traffic](http://www.fortinet.com/press_releases/110308.html)在Fortinet FortiGate®多威胁安全设备

## 参考资料

[Category:IPv6过渡技术](https://zh.wikipedia.org/wiki/Category:IPv6过渡技术 "wikilink") [Category:路由软件](https://zh.wikipedia.org/wiki/Category:路由软件 "wikilink")

1.  RFC 6052, *IPv6 Addressing of IPv4/IPv6 Translators*, IETF Standards Track, C.Bao et al.
2.  RFC 6146 Stateful NAT64: Network Address and Protocol Translation from IPv6 Clients to IPv4 Servers
3.
4.
5.