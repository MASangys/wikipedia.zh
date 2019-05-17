**NAT端口映射协议**（，缩写**NAT-PMP**）是一个能自动建立[网络地址转换](../Page/网络地址转换.md "wikilink")（NAT）设置和[端口映射配置而无需用户介入的](https://zh.wikipedia.org/wiki/端口映射 "wikilink")[网络协议](https://zh.wikipedia.org/wiki/网络协议 "wikilink")。该协议能自动测定NAT网关的外部[IPv4地址](../Page/IPv4.md "wikilink")，并为应用程序提供与对等端交流通信的方法。NAT-PMP于2005年由[蘋果公司推出](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")，为更常见的[ISO标准](https://zh.wikipedia.org/wiki/ISO标准 "wikilink")[互联网网关设备协议](../Page/互联网网关设备协议.md "wikilink")（被许多NAT[路由器实现](../Page/路由器.md "wikilink")）的一个替代品\[1\]。该协议由[互联网工程任务组](../Page/互联网工程任务组.md "wikilink")（IETF）在[RFC](../Page/RFC.md "wikilink")
6886中发布。

NAT-PMP使用[用户数据报协议](../Page/用户数据报协议.md "wikilink")（UDP），在5351[端口运行](../Page/通訊埠.md "wikilink")。该协议没有内置的[身份验证机制](https://zh.wikipedia.org/wiki/身份验证 "wikilink")，因为转发一个端口通常不允许任何活动，也不能用[STUN方法实现](../Page/STUN.md "wikilink")。NAT-PMP相比STUN的好处是它不需要STUN服务器，并且NAT-PMP映射有一个已知的过期时间，应用可以避免低效地发送保活数据包。

NAT-PMP是（PCP）的前身。

## 安全隐患

2014年10月，Rapid7安全研究员Jon
Hart公布，因厂商对NAT-PMP协议设计不当，估计公网上有1200万台网络设备受到NAT-PMP漏洞的影响。NAT-PMP协议的规范中特别指明，NAT网关不能接受来自外网的地址映射请求，但一些厂商的设计并未遵守此规定。黑客可能对这些设备进行恶意的端口映射，进行流量反弹、代理等攻击。\[2\]

## 参见

  -
  - [Bonjour](../Page/Bonjour.md "wikilink")

  - [NAT穿透](../Page/NAT穿透.md "wikilink")

  - [端口映射](https://zh.wikipedia.org/wiki/端口映射 "wikilink")

  - [STUN](../Page/STUN.md "wikilink")

  - [UPnP](../Page/UPnP.md "wikilink")

  -
## 参考资料

## 外部链接

  - [Bonjour协议规范](https://developer.apple.com/networking/bonjour/specs.html)
  - [another NAT-PMP explanation](http://miniupnp.free.fr/nat-pmp.html)
  - [MiniUPnP](http://miniupnp.free.fr/) ANSI
    C，BSD许可证的函式库，支持UPnP和NAT-PMP遍历（客户端和服务器）

[Category:苹果公司](https://zh.wikipedia.org/wiki/Category:苹果公司 "wikilink")
[Category:网络地址转换](https://zh.wikipedia.org/wiki/Category:网络地址转换 "wikilink")
[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")

1.
2.