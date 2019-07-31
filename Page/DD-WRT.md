**DD-WRT**是一个基于[Linux](../Page/Linux.md "wikilink")的无线路由[固件](https://zh.wikipedia.org/wiki/固件 "wikilink")，以[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")（GPL）V2授權发布。

DD-WRT提供了许多一般[路由器](../Page/路由器.md "wikilink")固件所没有的功能，例如支持[XLink Kai游戏协议](https://zh.wikipedia.org/wiki/XLink_Kai "wikilink")、基于[守护进程](../Page/守护进程.md "wikilink")的服务、[IPv6](../Page/IPv6.md "wikilink")、[无线分布式系统](https://zh.wikipedia.org/wiki/无线分布式系统 "wikilink")（无线网桥和无线中继）、[RADIUS](https://zh.wikipedia.org/wiki/RADIUS "wikilink")、先进[服务质量控制](https://zh.wikipedia.org/wiki/QoS "wikilink")、无线输出[功率](../Page/功率.md "wikilink")控制、[超频能力](https://zh.wikipedia.org/wiki/超频 "wikilink")，以及[SD卡](../Page/SD卡.md "wikilink")的硬件配置提供软件支持。

DD-WRT固件由BrainSlayer维护，放在dd-wrt.com。从第一个版本直至V22版本都是基于Sveasoft Inc公司的Alchemy开发出来，而Alchemy又是基于以GPL發放之[Linksys](../Page/Linksys.md "wikilink")固件及许多其它开放源程序。由于后来人们需要向Sveasoft支付$20才能下载Alchemy固件，于是从V23开始的DD-WRT几乎完全重写，linux核心部分基于[OpenWrt](../Page/OpenWrt.md "wikilink")核心。

借助[Buffalo合作伙伴关系](https://zh.wikipedia.org/wiki/Buffalo "wikilink")，Buffalo将开始出售预装自定义版本DD-WRT的无线路由器。

## 起源

DD-WRT的系统源代码起源于[Linksys WRT54G的系统](https://zh.wikipedia.org/wiki/Linksys_WRT54G "wikilink")，由于在2002年有人发现Linksys WRT54G的系统是基于[Linux](../Page/Linux.md "wikilink")开发，而Linux又是使用[GPL授权](https://zh.wikipedia.org/wiki/GPL "wikilink")，所以要求[Linksys](../Page/Linksys.md "wikilink")依照GPL授权要求公开Linksys WRT54G的系统源代码，最终在2003年3月[思科迫于压力按照授权释放系统源代码](https://zh.wikipedia.org/wiki/思科 "wikilink")，然后该套代码被适用于基于Linksys WRT54G/GS/GL 或其他基于[Broadcom参考设计的](https://zh.wikipedia.org/wiki/Broadcom "wikilink")802.11g无线路由器，其中一个分支为[OpenWrt](../Page/OpenWrt.md "wikilink")，而OpenWrt又衍生出DD-WRT。

## 发布历史

主要版本包括：

'''DD-WRT v23 Service Pack 1 (SP1) '''于2006年5月16日发布。大部分的核心代码都经过仔细的检查和重写，同时在开发过程中加入了许多新的特性。

'''DD-WRT v23 Service Pack 2 (SP2) '''于2006年9月14日发布。界面经过了重新编写，并加入一些新特性。支持一些额外路由型号，同时更多列入计划。

**DD-WRT v24**於2008年5月18日發布。允許使用多達16個不同[SSID和加密協定的虛擬界面](https://zh.wikipedia.org/wiki/SSID "wikilink")。並支援一些基於[PowerPC](../Page/PowerPC.md "wikilink")、[IXP425路由基板和](../Page/XScale.md "wikilink")[Atheros](https://zh.wikipedia.org/wiki/Atheros "wikilink") WiSOC和[X86](../Page/X86.md "wikilink")系統的路由。並且對擁有較小容量[快閃記憶體的機型](https://zh.wikipedia.org/wiki/快閃記憶體 "wikilink")（例如：WRT54Gv8或WRT54GSv7）提供有限度的支援。

**DD-WRT v24 Service Pack 1（SP1）**於2008年7月26日發布。修正了[DNSMasq內緊要的](https://zh.wikipedia.org/wiki/DNSMasq "wikilink")[DNS安全性問題](https://zh.wikipedia.org/wiki/DNS "wikilink")，基地台選址的安全性問題。支援更長字元的密碼，更有彈性的[OpenVPN](../Page/OpenVPN.md "wikilink")設定。新機型支援，包括：WRT300 v1.1、WRT310N、WRT600N、DIR-300、DIR-600、1043ND, Tonze AP42X Pronghorn SBC、Ubiquiti LSX以及[Netgear](https://zh.wikipedia.org/wiki/Netgear "wikilink")、[Belkin](https://zh.wikipedia.org/wiki/Belkin "wikilink")、[Asus和](https://zh.wikipedia.org/wiki/Asus "wikilink")[USR機型](https://zh.wikipedia.org/wiki/USR "wikilink")。

## 支持特性

标准版的DD-WRT包含以下这些特性。而在Micro或者Mini的版本中将会缺少某些特定的功能以减小文件体积。

  - 13种语言
  - [802.1x](https://zh.wikipedia.org/wiki/802.1x "wikilink")（[EAP](../Page/扩展认证协议.md "wikilink")-局域网扩展认证协议封装）
  - 接入限制
  - [Adhoc模式](https://zh.wikipedia.org/wiki/Adhoc "wikilink")
  - Afterburner
  - 客户端隔离模式
  - 客户端模式（支持多种客户端连接）
  - 客户[WPA](../Page/WPA.md "wikilink")模式
  - [DHCP转接](https://zh.wikipedia.org/wiki/DHCP "wikilink") ([udhcp](https://zh.wikipedia.org/wiki/udhcp "wikilink")）
  - DHCP服务器（udhcp或Dnsmasq）
  - [DNS](https://zh.wikipedia.org/wiki/DNS "wikilink") forwarder（Dnsmasq）
  - [DMZ](../Page/DMZ.md "wikilink")
  - 动态DNS（DynDNS、TZO、ZoneEdit）
  - Hotspot Portal（Sputnik Agent、Chillispot）
  - [IPV6支持](https://zh.wikipedia.org/wiki/IPV6 "wikilink")
  - JFFS2
  - [MMC](https://zh.wikipedia.org/wiki/MMC "wikilink")/[SD卡](../Page/SD卡.md "wikilink")支持（要修改硬件）
  - 客户服务器模式[NTP客户端](https://zh.wikipedia.org/wiki/NTP "wikilink")
  - [Ntop远程统计](https://zh.wikipedia.org/wiki/Ntop "wikilink")
  - OpenVPN客户及服务端（仅限于[VPN固件](https://zh.wikipedia.org/wiki/VPN "wikilink")）
  - 端口触发
  - 端口转发（最大为.30）
  - [PPTP](https://zh.wikipedia.org/wiki/PPTP "wikilink") VPN客户及服务端
  - QoS [带宽](../Page/带宽.md "wikilink")设置（游戏、服务／网络掩码／MAC／以太网端口优先级优化）
  - QoS第七層過濾器 (l7-filter）
  - RFlow/MACupd
  - 路由：Static entries and Gateway、[BGP](https://zh.wikipedia.org/wiki/BGP "wikilink")、[OSPF](https://zh.wikipedia.org/wiki/OSPF "wikilink") & [RIP](https://zh.wikipedia.org/wiki/RIP "wikilink")2 via（BIRD）
  - [Samba](../Page/Samba.md "wikilink")檔案系統自動掛載
  - 远程服务器保存系统日志
  - Rx/Tx天线（可选或自动）
  - 显示无线客户端和[WDS系统的状态](https://zh.wikipedia.org/wiki/WDS "wikilink")
  - Site Survey
  - [SNMP](https://zh.wikipedia.org/wiki/SNMP "wikilink")
  - [SSH服务器及客户端](../Page/Secure_Shell.md "wikilink") （dropbear）
  - 支持启动脚本、防火墙脚本和关闭脚本（startup script）
  - 静态DHCP配置
  - Style（可變[圖形用戶介面](https://zh.wikipedia.org/wiki/圖形使用者介面 "wikilink"); v.23）
  - 支持新设备（WRT54G V3、V3.1、V4、V5及WRT54GS V2.1、V3、V4）
  - Telnet服务器客户端
  - 發射功率調節（0-251 mW、預設28 mW、100 mW為安全）
  - [UPnP](../Page/UPnP.md "wikilink")
  - [VLAN](https://zh.wikipedia.org/wiki/VLAN "wikilink")
  - 网络唤醒 ([WOL](https://zh.wikipedia.org/wiki/WOL "wikilink")）
  - WDS Connection Watchdog
  - WDS [中繼器模式](https://zh.wikipedia.org/wiki/中繼器 "wikilink")
  - 无线MAC地址克隆
  - 无线MAC地址过滤
  - [WMM](https://zh.wikipedia.org/wiki/WMM "wikilink")（Wi-Fi MultiMedia QoS）
  - WPA over WDS
  - WPA/TKIP with AES
  - [WPA2](https://zh.wikipedia.org/wiki/WPA2 "wikilink")
  - Xbox Kaid（Kai Engine）

## 参见

  - [客制路由器韌體清單](../Page/客制路由器韌體清單.md "wikilink")
  - [Tomato](https://zh.wikipedia.org/wiki/Tomato "wikilink")
  - [OpenWrt](../Page/OpenWrt.md "wikilink")

## 外部連結

  - [DD-WRT官方網站](https://web.archive.org/web/20131014182346/http://www.dd-wrt.com/site/index)

<!-- end list -->

  - [DD-WRT支持的無線路由列表](http://www.dd-wrt.com/wiki/index.php/Supported_Devices)

<!-- end list -->

  - [DD-WRT脱机离线下载](http://www.ytyzx.net/index.php?title=%E8%B7%AF%E7%94%B1%E5%99%A8%EF%BC%88DD-WRT%EF%BC%89%E5%A6%82%E4%BD%95%E8%84%B1%E6%9C%BA%E4%B8%8B%E8%BD%BDBT%E6%96%87%E4%BB%B6)

[Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink") [Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink") [Category:自由路由軟體](https://zh.wikipedia.org/wiki/Category:自由路由軟體 "wikilink") [Category:售后固件](https://zh.wikipedia.org/wiki/Category:售后固件 "wikilink") [Category:无线网络](https://zh.wikipedia.org/wiki/Category:无线网络 "wikilink") [Category:Wi-Fi](https://zh.wikipedia.org/wiki/Category:Wi-Fi "wikilink")