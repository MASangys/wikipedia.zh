{{ infobox OS | name = OpenWrt | logo = | screenshot =
[LuCI_0.10_software_zh_cn.png](https://zh.wikipedia.org/wiki/File:LuCI_0.10_software_zh_cn.png "fig:LuCI_0.10_software_zh_cn.png")
| caption = LuCI 0.10 | developer = [OpenWrt
Project](https://dev.openwrt.org/wiki/people) | family =
[類Unix系統](../Page/類Unix系統.md "wikilink") | working_state = 支援中 |
source_model = [自由軟體](../Page/自由軟體.md "wikilink")
、[開源軟體](../Page/開源軟體.md "wikilink") | released =  |
frequently_updated = yes | marketing_target = | language = 22種語言\[1\]
| prog_language = | updatemodel = [opkg](../Page/opkg.md "wikilink") |
package_manager = [opkg](../Page/opkg.md "wikilink") |
supported_platforms =
使用以下架构的50种不同平台：[AVR32](../Page/AVR32.md "wikilink"),
[ARM](../Page/ARM_architecture.md "wikilink"),
[CRIS](../Page/ETRAX_CRIS.md "wikilink"),
[m68k](../Page/Motorola_68000_family.md "wikilink"),
[MIPS](../Page/MIPS_architecture.md "wikilink"),
[PowerPC](../Page/PowerPC.md "wikilink"),
[SPARC](../Page/SPARC.md "wikilink"),
[SuperH](../Page/SuperH.md "wikilink"),
[Ubicom](../Page/Ubicom.md "wikilink")32,
[x86](../Page/x86.md "wikilink"),
[x86-64](../Page/x86-64.md "wikilink")\[2\] | kernel_type =
[宏内核](../Page/宏内核.md "wikilink")（[Linux](../Page/Linux_kernel.md "wikilink")）
| userland =
[BusyBox](../Page/BusyBox.md "wikilink")、[GNU](../Page/GNU_Core_Utilities.md "wikilink")
| ui = [命令行界面](../Page/命令行界面.md "wikilink")、WebUI | license =
[自由软件](../Page/自由软件.md "wikilink")（[GPL和其他许可证](../Page/GPL.md "wikilink")）
| website =  }}
**OpenWrt**是适合于[嵌入式设备的一个](../Page/嵌入式.md "wikilink")[Linux发行版](../Page/Linux.md "wikilink")。

相对原厂固件而言，OpenWrt不是一个单一、静态的[固件](../Page/固件.md "wikilink")，而是提供了一个可添加软件包的可写的[文件系统](../Page/文件系统.md "wikilink")。这使使用者可以自由的选择应用程序和配置，而不必受设备提供商的限制，并且可以使用一些适合某方面应用的软件包来定制你的设备。对于开发者来说，OpenWrt是一个框架，開發者不必麻烦地构建整个固件就能得到想要的[应用程序](../Page/应用程序.md "wikilink")；对于使用者来说，这意味着完全定制的能力，與以往不同的方式使用设备，OPKG包含超过3500个软件。
默认使用LuCI作为web交互界面。

## 歷史

2002年底Linksys公司推出WRT-54G，一款基于MIPS架构的无线路由器，使用802.11g标准使得带宽在理论上能够达到54M，在當時是一次巨大的进步。WRT-54G作業系統以Linux取代vXworks，哥伦比亚大学法学院教授Eben
Moglen向Linksys提出开源要求。2003年7月，Linksys迫于压力，开源了WRT54G的firmware，不久sveasoft公司开发了Alchemy。從此无线路由器进入了可以刷机的时代。2004年1月出現所謂的OpenWRT，第一个版本是基于Linksys源码及uclibc中的buildroot项目。2005年初，BrainSlayer发布了一个新的发行版：DD-WRT。接著又有HyperWRT。2005年初，OpenWRT开发小組释出第一个
“experimental”
版本，这版本跟Linksys的GPL源码已大相徑庭，使用Linux核心源码2.4.3x，還使用了更模組化的buildroot2。2005年以後有White
Russian版本。2011年9月21日，juhosg接手OpenWrt，並释出了wr703n的官方源码。2013年4月，發佈OpenWrt
12.09，Linux核心版號為3.3版。

由於WRT54G價格低廉，OpenWrt又開源免費，成為学习嵌入式Linux最佳平台。OpenWrt本身未带任何UI，需要通过LuCI，webif等各种延伸界面，LuCI界面是使用率最高的Web管理界面。

### 釋出版本

<table>
<thead>
<tr class="header">
<th><p><a href="../Page/修订标签.md" title="wikilink">Tagged</a></p></th>
<th><p>代號</p></th>
<th><p>版號</p></th>
<th><p>Release date</p></th>
<th><p><a href="../Page/Linux_kernel.md" title="wikilink">Linux kernel</a></p></th>
<th><p><a href="../Page/C標準函式庫.md" title="wikilink">C標準庫</a></p></th>
<th><p><a href="../Page/软件包管理系统.md" title="wikilink">二位元包</a></p></th>
<th><p>源碼包</p></th>
<th><p>注解</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>(default)</p></td>
<td><p>(available)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>0.x</p></td>
<td></td>
<td></td>
<td><p><a href="../Page/uClibc.md" title="wikilink">uClibc</a></p></td>
<td></td>
<td><p>474</p></td>
<td><p>≈ 310</p></td>
</tr>
<tr class="odd">
<td><p>r6268</p></td>
<td></td>
<td><p>0.9</p></td>
<td><p>January 2006</p></td>
<td><p>2.4.30</p></td>
<td></td>
<td><p>≈ 360</p></td>
<td><p>≈ 140</p></td>
<td><p>NVRAM-based, <code>nas</code>, <code>wl</code>. Supported platform: <code>brcm-2.4</code>.</p></td>
</tr>
<tr class="even">
<td><p>r7428</p></td>
<td></td>
<td><p>7.06</p></td>
<td><p>June 2007</p></td>
<td><p>2.6.19</p></td>
<td></td>
<td><p>≈ 750</p></td>
<td><p>≈ 450</p></td>
<td><p>Using <code>opkg</code>. Supported platforms: <code>atheros-2.6</code>, <code>au1000-2.6</code>, <code>brcm-2.4</code>, <code>brcm47xx-2.6</code>, <code>ixp4xx-2.6</code>, <code>imagicbox-2.6</code>, <code>rb532-2.6</code> and <code>x86-2.6</code>.</p></td>
</tr>
<tr class="odd">
<td><p>r7832</p></td>
<td></td>
<td><p>7.07</p></td>
<td><p>July 2007</p></td>
<td><p>2.6.21</p></td>
<td></td>
<td><p>≈ 790</p></td>
<td><p>≈ 475</p></td>
<td><p>New platform: <code>amcc-2.6</code>.</p></td>
</tr>
<tr class="even">
<td><p>r8679</p></td>
<td></td>
<td><p>7.09</p></td>
<td><p>September 2007</p></td>
<td></td>
<td><p>≈ 630</p></td>
<td><p>≈ 500</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>r14547</p></td>
<td></td>
<td><p>8.09</p></td>
<td><p>September 2008</p></td>
<td><p>2.6.26</p></td>
<td></td>
<td><p>≈ 1,400</p></td>
<td><p>≈ 875</p></td>
<td><p>New platform: <code>ar71xx</code>.</p></td>
</tr>
<tr class="even">
<td><p>r16279</p></td>
<td></td>
<td><p>8.09.1</p></td>
<td><p>June 2009</p></td>
<td></td>
<td><p>≈ 1,400</p></td>
<td><p>≈ 875</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>r18961</p></td>
<td></td>
<td><p>8.09.2</p></td>
<td><p>[3]</p></td>
<td></td>
<td><p>≈ 1,400</p></td>
<td><p>≈ 875</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>r20742</p></td>
<td></td>
<td><p>10.03</p></td>
<td><p>[4]</p></td>
<td><p>2.6.32</p></td>
<td></td>
<td><p>≈ 2,350</p></td>
<td><p>≈ 1,050</p></td>
<td><p>Supported platforms: <code>adm5120_mips</code>, <code>adm5120_mipsel</code>, <code>ar7</code>, <code>ar71xx</code>, <code>atheros</code>, <a href="../Page/Alchemy_(microarchitecture).md" title="wikilink"><code>au1000</code></a>, <code>avr32</code>, <code>brcm-2.4</code>, <code>brcm47xx</code>, <code>brcm63xx</code>, <code>cobalt</code>, <code>ep80579</code>, <code>ifxmips</code>, <code>ixp4xx</code>, <code>kirkwood</code>, <code>octeon</code>, <code>orion</code>, <code>ppc40x</code>, <code>ppc44x</code>, <code>rb532</code>, <code>rdc</code>, <code>x86</code> and <a href="../Page/XBurst_(microarchitecture).md" title="wikilink"><code>xburst</code></a>.</p></td>
</tr>
<tr class="odd">
<td><p>r29594</p></td>
<td></td>
<td><p>10.03.1</p></td>
<td><p>[5]</p></td>
<td><p><a href="../Page/eglibc.md" title="wikilink">eglibc</a><br />
<a href="../Page/glibc.md" title="wikilink">glibc</a></p></td>
<td><p>≈ 2,950</p></td>
<td><p>≈ 1,175</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>r36088</p></td>
<td></td>
<td><p>12.09</p></td>
<td><p>[6]</p></td>
<td><p>3.3</p></td>
<td><p>eglibc</p></td>
<td><p>≈ 3,450</p></td>
<td><p>≈ 1,150</p></td>
<td><p><a href="../Page/CoDel.md" title="wikilink">CoDel</a> (<a href="../Page/network_scheduler.md" title="wikilink">network scheduler</a>) backported from Linux 3.5 to 3.3. New platforms: <code>ramips</code>, <a href="../Page/Raspberry_Pi.md" title="wikilink"><code>bcm2708</code> (Raspberry Pi)</a> and others.</p></td>
</tr>
<tr class="odd">
<td><p>r42625</p></td>
<td></td>
<td><p>14.07</p></td>
<td><p>[7]</p></td>
<td><p>3.10.49[8]</p></td>
<td><p><a href="../Page/musl.md" title="wikilink">musl</a><br />
eglibc</p></td>
<td></td>
<td></td>
<td><p>New platforms: <a href="../Page/i.MX#i.MX23_family.md" title="wikilink"><code>i.MX23</code></a>, <a href="../Page/i.MX#i.MX6x_series.md" title="wikilink"><code>i.MX6</code></a>[9] and <code>mvebu</code>.</p></td>
</tr>
<tr class="even">
<td><p>r46767</p></td>
<td></td>
<td><p>15.05</p></td>
<td><p>[10]</p></td>
<td><p>3.18.20[11]</p></td>
<td><p>musl<br />
glibc[12]</p></td>
<td></td>
<td></td>
<td><p><a href="../Page/nftables.md" title="wikilink">nftables</a> (available since Linux kernel 3.12); New platforms: TBA if any</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p>15.05.1</p></td>
<td><p>[13]</p></td>
<td><p>3.18.23[14]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>trunk</p></td>
<td></td>
<td><p><em>development</em>[15]</p></td>
<td></td>
<td><p>≥4.1</p></td>
<td><p><a href="../Page/musl.md" title="wikilink">musl</a>[16]</p></td>
<td><p>uClibc<br />
glibc</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>r7188-b0b5c64c22</p></td>
<td></td>
<td><p>18.06.0</p></td>
<td><p>July 31th，2018[17]</p></td>
<td><p>4.9.111或4.14.52，基于架构</p></td>
<td><p>musl libc</p></td>
<td><p>uClibc-ng glibc</p>
<p>gcc</p>
<p>binutils</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>r7258-5eb055306f</p></td>
<td></td>
<td><p>18.06.2</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 特色

OpenWrt遵循著[市集](../Page/大教堂和市集.md "wikilink")-哲學而且已知有著豐富的選項。功能如下：

  - 可寫的[根目录](../Page/根目录.md "wikilink")，讓使用者自行新增，移除或修改任何檔案。SquashFS与JFFS2文件系统的整合形成的overlayfs机制\[18\]形成重疊\[19\]。squashfs是一种只读的压缩文件系统，压缩率和gzip差不多。jffs2是一种日志类型的文件系统，专为NorFlash设计。
  - 包管理員*opkg*，類似[dpkg](../Page/dpkg.md "wikilink")，可讓使用者新增或移除軟體。软件仓库大約有3500個包。是一个可以从本地或遠端软件下载并安装OpenWrt包的轻量型实用工具。
  - UCI (unified configuration interface) 腳本支持\[20\]
  - 完整的硬體驅動程式支持。例如:
    內建[網路交換器及其](../Page/網路交換器.md "wikilink")[VLAN](../Page/VLAN.md "wikilink")-相容,
    s, [DSL modems](../Page/DSL_modem.md "wikilink"), 等。
  - 各種[计算机網路設定如下](../Page/计算机網路.md "wikilink"):
      - [路由可透過](../Page/路由.md "wikilink")[iproute2](../Page/iproute2.md "wikilink"),
        , 等。
      - [網狀網路可經由](../Page/網狀網路.md "wikilink")[B.A.T.M.A.N.](../Page/隨建即連網路優化方案.md "wikilink"),
        與[IEEE 802.11s](../Page/IEEE_802.11s.md "wikilink")-相容的[WNIC
        drivers](../Page/开源无线驱动比较.md "wikilink")
      - 無線功能。如裝置實現[無線路由](../Page/無線路由.md "wikilink")、[無線接取器](../Page/無線接取器.md "wikilink")、[無線橋接](../Page/無線橋接.md "wikilink")、強制，或結合一些裝置如:
        [ChilliSpot](../Page/ChilliSpot.md "wikilink")、[WiFiDog Captive
        Portal等](../Page/WiFiDog_Captive_Portal.md "wikilink")。
      - 無線安全: [Packet
        injection](../Page/Packet_injection.md "wikilink")，例如:
        [Airpwn](http://airpwn.sourceforge.net/Airpwn.html)、[lorcon等](../Page/lorcon.md "wikilink")。
      - [狀態防火牆](../Page/狀態防火牆.md "wikilink")、[NAT和路由器端口扫描](../Page/网络地址转换.md "wikilink")([port
        forwarding](../Page/端口映射.md "wikilink"))經由[netfilter](../Page/netfilter.md "wikilink")；其他還有[PeerGuardian已支持](../Page/PeerGuardian.md "wikilink")。
      - [UPnP與](../Page/UPnP.md "wikilink")[NAT-PMP可透過](../Page/NAT-PMP.md "wikilink")
        upnpd來設定。
      - [port
        knocking可透過knockd與knock達成](../Page/port_knocking.md "wikilink")。
      - [TR-069](../Page/TR-069.md "wikilink")\[21\]
      - [IPS經由](../Page/入侵预防系统.md "wikilink")[Snort](../Page/Snort.md "wikilink")
      - 使用多個[互联网服务供应商達到負載平衡](../Page/互联网服务供应商.md "wikilink")。
      - IP穿透(tunneling)
      - [網路監視與統計數據等](../Page/網路監視.md "wikilink")。例如:
        [RRDtool](../Page/RRDtool.md "wikilink"),
        [Collectd](../Page/Collectd.md "wikilink"),
        [Nagios](../Page/Nagios.md "wikilink"), ,
        [Zabbix等](../Page/Zabbix.md "wikilink")。
      - [域名系统](../Page/域名系统.md "wikilink")
        (DNS)和[DHCP經由](../Page/DHCP.md "wikilink")[Dnsmasq](../Page/Dnsmasq.md "wikilink")、[MaraDNS等](../Page/MaraDNS.md "wikilink")。
      - [动态DNS可負責修復](../Page/动态DNS.md "wikilink")[互联网服务供应商的DNS](../Page/互联网服务供应商.md "wikilink")，但不提供靜態[IP地址](../Page/IP地址.md "wikilink")
      - [無線分散系統](../Page/無線分散系統.md "wikilink")(WDS)
        包含WPA-PSK、WPA2-PSK、WPA-PSK/WPA2-PSK混合加密模式
  - OpenWrt支持各種Linux已支持的硬體，並透過[USB連線](../Page/USB.md "wikilink")
      - [打印機](../Page/打印機.md "wikilink")
      - [mobile broadband
        modem](../Page/mobile_broadband_modem.md "wikilink")
      - [网络摄像头](../Page/网络摄像头.md "wikilink")
      - [音效卡](../Page/音效卡.md "wikilink")
  - 著名的軟件支持硬體 :
      - [文件分享經由](../Page/文件分享.md "wikilink")[Samba](../Page/Samba.md "wikilink")，(Windows相容)，[NFS和](../Page/NFS.md "wikilink")[FTP](../Page/FTP.md "wikilink")，經由[print
        server](../Page/print_server.md "wikilink")
        [CUPS](../Page/CUPS.md "wikilink") (spooling) 或
        [p910nd](../Page/p910nd.md "wikilink") (non-spooling)分享列印功能。
      - [PulseAudio](../Page/PulseAudio.md "wikilink"), [Music Player
        Daemon](../Page/Music_Player_Daemon.md "wikilink")，音效與影像流經由[DLNA](../Page/DLNA.md "wikilink")/[UPnP
        AV
        standards](../Page/UPnP.md "wikilink")、[iTunes](../Page/iTunes.md "wikilink")
        () 伺服器
      - [Asterisk](../Page/Asterisk.md "wikilink")
      - [MQ Telemetry
        Transport經由](../Page/MQ_Telemetry_Transport.md "wikilink")[Mosquitto](../Page/Mosquitto.md "wikilink")
  - 可延伸的[Ajax](../Page/Ajax.md "wikilink")，由LuCI支持\[22\]
  - 系統更新，即便裝置已不再受原廠支持。

### Web 界面

在8.09版之前，OpenWrt提供最小GUI。OpenWrt推出8.09及日後新版中，有更多的Web界面可供選擇。\[23\]這個新界面基於LuCI，是一種架構，由[Lua語言撰寫](../Page/Lua.md "wikilink")。\[24\]

[X-Wrt是一個專為OpenWrt所設計的套件](../Page/X-Wrt.md "wikilink")，是LuCI以外的另一種選擇，在包倉庫中名為webif²，由使用者自行下載安裝。

[File:Openwrt-luci-firewall.png|LuCI](File:Openwrt-luci-firewall.png%7CLuCI)
[File:X-Wrt-logo.png|X-Wrt](File:X-Wrt-logo.png%7CX-Wrt) <File:Gargoyle>
Router Firmware quotas.png|Gargoyle

## 应用

  - 用于脱机离线下载。
  - VPN服务器。
  - SSH服务器。
  - Shadowsocks配合Pdnsd、Chinadns、Dnscrypt软件智能[突破网络审查](../Page/突破网络审查.md "wikilink")。
  - 动态DDNS。
  - 单线多拨及带宽叠加。
  - 多线路拨号宽带叠加。
  - QOS智能限速。
  - 远程视频监控。
  - 去除广告，屏蔽恶意域名。
  - 网络打印机。
  - 软路由。
  - 比特幣礦機

## 硬件兼容性

OpenWrt運行許多不同的路由器，並在其網站上包括一個兼容硬件表。\[25\]在其買家指南中，它建議高通 [Qualcomm
Atheros](../Page/Qualcomm_Atheros.md "wikilink") 芯片超過
[Broadcom](../Page/Broadcom.md "wikilink") 芯片。\[26\]

## 正式採用

OpenWrt，特別是其Buildroot構建系統，已經採用了很多次：

  - [Freifunk及其他網狀網絡社區](../Page/Freifunk.md "wikilink")
  - Bufferbloat.net (Cerowrt)
  - [IETF](../Page/Internet_Engineering_Task_Force.md "wikilink")
    IPv6集成項目HIPnet和HomeNet是基於OpenWrt

## 衍生分支

  - [LEDE作為OpenWrt項目的分支機構而成立](../Page/LEDE.md "wikilink")，並擁有許多相同的目標。现在已决定与OpenWRT合并。
  - *CeroWrt* 目的是補充debloat測試kernel tree，並為緩衝區修復的現實世界測試提供一個平台\[27\]\[28\]
  - Coova chilli 基於OpenWrt的專注於無線熱點，一個chillifire的分支專注於無線熱點管理
  - [Gargoyle](../Page/Gargoyle_\(router_firmware\).md "wikilink")
    OpenWrt的一個Web界面，強調可用性，後來分支到一個單獨的分發
  - Flukso 使用Atheros AR2317芯片組的無線傳感器節點，運行修補的OpenWrt
    OS進行通信。GitHub上提供的源和硬件原理圖。
  - [Fon](../Page/Fon_\(company\).md "wikilink")
    基於OpenWrt的無線路由器充當熱點。fonosfera.org上的源和工具鏈
  - Linino
    基於OpenWrt的基於[MIPS架構的](../Page/MIPS_architecture.md "wikilink")[Arduino的分發](../Page/Arduino.md "wikilink")：GitHub項目
  - Midge Linux 基於[英飞凌](../Page/Infineon_Technologies.md "wikilink")
    ADM-5120
    [SoCs的設備的基於OpenWrt的發行版](../Page/System-on-a-chip.md "wikilink")，例如Edimax
    BR-6104K和BR-6104KP。
  - OpenSAN [iSCSI目標存儲區域網絡實現](../Page/iSCSI.md "wikilink")。
  - PacketProtector
    基於OpenWrt的安全分發，包括[IDS](../Page/Intrusion-detection_system.md "wikilink")，，[VPN和Web防病毒功能](../Page/Virtual_private_network.md "wikilink")。

<!-- end list -->

  -
    軟件包包括Snort，Snort-inline，FreeRADIUS，OpenVPN，DansGuardian和ClamAV。
    這些工具可以通過OpenWrt的舊Web GUI管理界面訪問，稱為X-Wrt或webif^2。項目於2012年6月7日結束。\[29\]

<!-- end list -->

  - 的Omnia路由器是使用OpenWrt的衍生運行

  - 無線社區網絡的多種草根項目，包括[Freifunk](../Page/Freifunk.md "wikilink")，Libre-Mesh和qMp

  - [libreCMC](../Page/libreCMC.md "wikilink")
    基於OpenWrt的分發，沒有非自由軟件或二進制blob，由自由軟件基金會認可\[30\]

  - Asuswrt（asuswrt-merlin），載體為[Asus網通產品](../Page/Asus.md "wikilink")。

## 路由器固件項目列表

  - [客制路由器韌體清單](../Page/客制路由器韌體清單.md "wikilink")
      - [LEDE](../Page/LEDE.md "wikilink") - OpenWRT的分支專案

## 注釋

## 外部链接

  - [OpenWrt主页](https://openwrt.org)
  - [OpenWrt支持的无线路由器列表](https://wiki.openwrt.org/toh/start)
  - [OpenWrt Wiki 中文](https://wiki.openwrt.org/zh-cn/start)
  - [OpenWrt中文站](https://web.archive.org/web/20100309161603/http://www.openwrt.org.cn/)
  - [OpenWrt脱机离线下载](http://www.ytyzx.net/index.php?title=%E8%B7%AF%E7%94%B1%E5%99%A8OpenWrt%E5%A6%82%E4%BD%95%E8%84%B1%E6%9C%BA\(%E7%A6%BB%E7%BA%BF\)%E4%B8%8B%E8%BD%BDBT%E6%96%87%E4%BB%B6)

|}

[Category:Linux發行版](https://zh.wikipedia.org/wiki/Category:Linux發行版 "wikilink")
[Category:自由路由軟體](https://zh.wikipedia.org/wiki/Category:自由路由軟體 "wikilink")
[Category:售後韌體](https://zh.wikipedia.org/wiki/Category:售後韌體 "wikilink")
[Category:Lua軟體](https://zh.wikipedia.org/wiki/Category:Lua軟體 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

9.  [Freescale i.MX
    support](http://wiki.openwrt.org/doc/hardware/soc/soc.freescale.imx)

10.

11.

12.

13.

14.

15.

16.

17.

18.

19.

20.

21. [freecwmp is a CWMP client for
    OpenWrt](http://events.ccc.de/congress/2012/Fahrplan/events/5112.en.html)

22.
23.

24.

25.

26.

27.

28.

29.

30.