> 本文内容由[GPRS漫游交换](https://zh.wikipedia.org/wiki/GPRS漫游交换)转换而来。


**GPRS漫游交换**（GPRS Roaming Exchange，简称：GRX）为来自[漫游用户的](https://zh.wikipedia.org/wiki/漫游 "wikilink") [GPRS](../Page/GPRS.md "wikilink") 连接扮演枢纽的角色（hub），这样就不再需要在各个 GPRS 服务提供商之间有专用链路（dedicated link）存在。它是为了给运营商之间的网间互联（interconnect networks）提供一个更为高效的方法而开发，并且在向 [3G](../Page/3G.md "wikilink") 的过渡中扮演了很大一部分角色。

## 开发

一开始，GPRS 漫游是基于各个独立运营商之间的复杂关系之上的，每个运营商都要求有一个面向各个不同的合作伙伴（partner）专用链路（dedicated link），因此就需要 \(\tfrac{N(N-1)}{2}\) 个专用链路（\(N\) 是全球所有的会要求有一个专用链路的运营商的数量）。这也就意味着，想要在漫游期间使用 GPRS 的移动签约用户，只能在他们的归属运营商与他们所漫游到的国家或地区的运营商之间，有一个直接的协议时，才能实现。 在 2000 年，[GSMA](https://zh.wikipedia.org/wiki/GSMA "wikilink")（[GSM](../Page/GSM.md "wikilink") 联盟）发展出 GRX 的想法，来处理[公共陆地移动网络](../Page/公共陆基移动网.md "wikilink")（PLMN）之间的所有漫游。\[1\]

## 技术实现

通常情况下，GRX 是基于一个私有或公共的 [IP](../Page/网际协议.md "wikilink") 骨干网络，并在[会话层](../Page/会话层.md "wikilink")（[OSI](../Page/OSI模型.md "wikilink") 第 5 层）上，在拜访 [PLMN](../Page/公共陆基移动网.md "wikilink") 和归属 [PLMN](../Page/公共陆基移动网.md "wikilink") 之间使用 [GPRS隧道协议](../Page/GPRS隧道协议.md "wikilink")。各个 GRX 运营商都将拥有这样一个网络，它由一系列路由器和连接到 GPRS 网络的链路组成。此外，GRX 网络还将拥有以点状模型（peer model）连接到其它 GRX 的链路。 GRX 运营商因此就可以扮演一个枢纽（hub）的角色，允许一个 GPRS 签约用户与许多其它的漫游合作伙伴进行互联互通，而不需要有专用链路。对于运营商来说，这对于允许漫游合作伙伴的更快实现，新运营商的快速投放市场和低[资本支出](https://zh.wikipedia.org/wiki/资本支出 "wikilink")（CAPital EXpenditure，简称：CAPEX），是很有好处的，因为这是一个根据带宽和 [QoS](https://zh.wikipedia.org/wiki/QoS "wikilink") 需求的不同而可伸缩的（scalable）解决方案。由于拜访 [PLMN](../Page/公共陆基移动网.md "wikilink") 和归属 [PLMN](../Page/公共陆基移动网.md "wikilink") 之间的互联是使用私有的 GRX 网络，因此不需要维持在公共互联网上的[安全网际协议](../Page/IPsec.md "wikilink")（Internet Protocol Security，简称：IPsec）隧道。

## 参见

[IP交换](../Page/IP交换.md "wikilink")（IPX）

## 参考资料

## 外部链接

[Category:GSM標準](https://zh.wikipedia.org/wiki/Category:GSM標準 "wikilink")

1.