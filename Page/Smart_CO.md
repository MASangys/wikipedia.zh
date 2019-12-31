> 本文内容由[Smart CO](https://zh.wikipedia.org/wiki/Smart CO)转换而来。


**Smart CO**（）网络传统CO机房多种接入和汇聚设备并存（[交换机](https://zh.wikipedia.org/wiki/交换机 "wikilink")、[路由器](../Page/路由器.md "wikilink")、[传输等等](https://zh.wikipedia.org/wiki/传输 "wikilink")），随着业务的多样性，设备种类更加繁多，管理维护复杂困难。**Smart CO**是指CO机房智能化，通过一个[路由器](../Page/路由器.md "wikilink")设备汇聚所有业务及接口类型，同时，该路由器还具有BNG、虚拟化、增值业务等能力，适用于城域网瘦身，网络简化，综合承载（FMC）等多种业务场景，真正实现了CO站点的带宽汇聚、用户汇聚、业务汇聚，成为最佳体验承载网的起点\[1\]。

## 应用场景

[IPTV](../Page/IPTV.md "wikilink")、[OTT](https://zh.wikipedia.org/wiki/OTT "wikilink")、[4K](https://zh.wikipedia.org/wiki/4K "wikilink")\[2\]。等业务的快速发展，视频已成为人们生活中不可或缺的一部分。视频业务的快速发展对承载网络提出了越来越高的要求，主要体现在大带宽、低时延等方面。传统城域网一般采用BNG（Broadband Network Gateway）集中部署方式，BNG放置在Service-POP点、靠近IP Core位置，所有用户认证、IPTV组播业务复制等都需要穿过城域网，在BNG集中式处理。这种组网方式会大大消耗城域网带宽，随着用户数增加，整个城域网设备都需要频繁扩容，大大提升建网成本。另外集中式部署方案也会对单台BNG性能要求较高，可靠性也存在风险。 [传统BNG.png](https://zh.wikipedia.org/wiki/File:传统BNG.png "fig:传统BNG.png")传统BNG部署方案\]\]

  - 城域网瘦身场景(Mini BNG)

Smart CO的Mini-BNG解决方案，将BNG下沉到城域网边缘分布式部署。该方案将用户认证、IPTV组播业务复制点等下移到城域边缘，可以减轻集中式部署BNG的性能压力,同时能够将城域网流量从原有“用户数量级”降低到“Mini-BNG站点数量级”，为城域网流量大大“瘦身”，减轻带宽扩容压力。 [smart_CO.png](https://zh.wikipedia.org/wiki/File:smart_CO.png "fig:smart_CO.png")Smart CO Mini-BNG解决方案\]\]

  - 网络简化场景(NV虚拟化)

Smart CO的NV虚拟化解决方案，将CO设备（AP设备）[虚拟为城域BNG](https://zh.wikipedia.org/wiki/虚拟 "wikilink")(Master设备)的一个板卡，简化现网配置、提升运维效率。具体来说：一、接入环通道（控制通道、业务通道）自动生成，全自动部署。二、通过Master集中配置管理，提升配置效率。三、通过Master进行统一日志、告警、MIB、软件升级、补丁等管理，简化运维，提升运维效率。

  - [FMC](https://zh.wikipedia.org/wiki/FMC "wikilink")\[3\]场景（MPLS-TP、[增值业务等](https://zh.wikipedia.org/wiki/增值业务 "wikilink")）

在3G、LTE、三网融合、FMC等新形势下，固定通信、增值业务、高清视频及移动互联网等融合业务的规模发展对电信运营商的承载网络提出了全新挑战。当前全球运营商已经开始构建融合、高效、可靠的承载网络基础架构，综合承载成为共识。 Smart CO可以完善地支持全部MPLS特性，并已具备MPLS-TP能力，使传输网络与IP承载网络快速融合。大容量、高密度、小体积、BNG、增值业务等能力，真正实现了CO站点的带宽汇聚、用户汇聚、业务汇聚，成为最佳体验承载网的起点。

## 产品分类

Smart CO是接入、汇聚位置的一系列路由器设备，按照交换力可以分为80G、120G、240G、480G等多个平台。按照设备高度可分为2U、3U、5U、8U等多种类型，适用不同的机房及室外柜要求。

## 参见

  - [路由协议](../Page/路由协议.md "wikilink")
  - [4K分辨率](https://zh.wikipedia.org/wiki/4K分辨率 "wikilink")
  - [路由器](../Page/路由器.md "wikilink")
  - [OTT服务](../Page/OTT服务.md "wikilink")
  - [网络传输协议](../Page/网络传输协议.md "wikilink")

## 參考文獻

[Category:電信设备](https://zh.wikipedia.org/wiki/Category:電信设备 "wikilink")

1.
2.
3.