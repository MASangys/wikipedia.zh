{{ infobox OS | name = OpenWrt | logo = | screenshot = [LuCI_0.10_software_zh_cn.png](https://zh.wikipedia.org/wiki/File:LuCI_0.10_software_zh_cn.png "fig:LuCI_0.10_software_zh_cn.png") | caption = LuCI 0.10 | developer = [OpenWrt Project](https://dev.openwrt.org/wiki/people) | family = [類Unix系統](https://zh.wikipedia.org/wiki/類Unix系統 "wikilink") | working_state = 支援中 | source_model = [自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink") 、[開源軟體](https://zh.wikipedia.org/wiki/開源軟體 "wikilink") | released =  | frequently_updated = yes | marketing_target = | language = 22種語言\[1\] | prog_language = | updatemodel = [opkg](https://zh.wikipedia.org/wiki/opkg "wikilink") | package_manager = [opkg](https://zh.wikipedia.org/wiki/opkg "wikilink") | supported_platforms = 使用以下架构的50种不同平台：[AVR32](https://zh.wikipedia.org/wiki/AVR32 "wikilink"), [ARM](https://zh.wikipedia.org/wiki/ARM_architecture "wikilink"), [CRIS](https://zh.wikipedia.org/wiki/ETRAX_CRIS "wikilink"), [m68k](https://zh.wikipedia.org/wiki/Motorola_68000_family "wikilink"), [MIPS](https://zh.wikipedia.org/wiki/MIPS_architecture "wikilink"), [PowerPC](../Page/PowerPC.md "wikilink"), [SPARC](../Page/SPARC.md "wikilink"), [SuperH](../Page/SuperH.md "wikilink"), [Ubicom](https://zh.wikipedia.org/wiki/Ubicom "wikilink")32, [x86](https://zh.wikipedia.org/wiki/x86 "wikilink"), [x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink")\[2\] | kernel_type = [宏内核](https://zh.wikipedia.org/wiki/宏内核 "wikilink")（[Linux](https://zh.wikipedia.org/wiki/Linux_kernel "wikilink")） | userland = [BusyBox](../Page/BusyBox.md "wikilink")、[GNU](https://zh.wikipedia.org/wiki/GNU_Core_Utilities "wikilink") | ui = [命令行界面](../Page/命令行界面.md "wikilink")、WebUI | license = [自由软件](../Page/自由软件.md "wikilink")（[GPL和其他许可证](https://zh.wikipedia.org/wiki/GPL "wikilink")） | website =  }} **OpenWrt**是适合于[嵌入式设备的一个](https://zh.wikipedia.org/wiki/嵌入式 "wikilink")[Linux](../Page/Linux.md "wikilink")发行版。

相对原厂固件而言，OpenWrt不是一个单一、静态的[固件](https://zh.wikipedia.org/wiki/固件 "wikilink")，而是提供了一个可添加软件包的可写的[文件系统](../Page/文件系统.md "wikilink")。这使使用者可以自由的选择应用程序和配置，而不必受设备提供商的限制，并且可以使用一些适合某方面应用的软件包来定制你的设备。对于开发者来说，OpenWrt是一个框架，開發者不必麻烦地构建整个固件就能得到想要的[应用程序](../Page/应用程序.md "wikilink")；对于使用者来说，这意味着完全定制的能力，與以往不同的方式使用设备，OPKG包含超过3500个软件。 默认使用LuCI作为web交互界面。

## 歷史

2002年底Linksys公司推出WRT-54G，一款基于MIPS架构的无线路由器，使用802.11g标准使得带宽在理论上能够达到54M，在當時是一次巨大的进步。WRT-54G作業系統以Linux取代vXworks，哥伦比亚大学法学院教授Eben Moglen向Linksys提出开源要求。2003年7月，Linksys迫于压力，开源了WRT54G的firmware，不久sveasoft公司开发了Alchemy。從此无线路由器进入了可以刷机的时代。2004年1月出現所謂的OpenWRT，第一个版本是基于Linksys源码及uclibc中的buildroot项目。2005年初，BrainSlayer发布了一个新的发行版：DD-WRT。接著又有HyperWRT。2005年初，OpenWRT开发小組释出第一个 “experimental” 版本，这版本跟Linksys的GPL源码已大相徑庭，使用Linux核心源码2.4.3x，還使用了更模組化的buildroot2。2005年以後有White Russian版本。2011年9月21日，juhosg接手OpenWrt，並释出了wr703n的官方源码。2013年4月，發佈OpenWrt 12.09，Linux核心版號為3.3版。

由於WRT54G價格低廉，OpenWrt又開源免費，成為学习嵌入式Linux最佳平台。OpenWrt本身未带任何UI，需要通过LuCI，webif等各种延伸界面，LuCI界面是使用率最高的Web管理界面。

### 釋出版本

<table>
<thead>
<tr class="header">
<th><p><a href="https://zh.wikipedia.org/wiki/修订标签" title="wikilink">Tagged</a></p></th>
<th><p>代號</p></th>
<th><p>版號</p></th>
<th><p>Release date</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Linux_kernel" title="wikilink">Linux kernel</a></p></th>
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
<td><p><a href="https://zh.wikipedia.org/wiki/uClibc" title="wikilink">uClibc</a></p></td>
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
<td><p>Supported platforms: <code>adm5120_mips</code>, <code>adm5120_mipsel</code>, <code>ar7</code>, <code>ar71xx</code>, <code>atheros</code>, <a href="https://zh.wikipedia.org/wiki/Alchemy_(microarchitecture)" title="wikilink"><code>au1000</code></a>, <code>avr32</code>, <code>brcm-2.4</code>, <code>brcm47xx</code>, <code>brcm63xx</code>, <code>cobalt</code>, <code>ep80579</code>, <code>ifxmips</code>, <code>ixp4xx</code>, <code>kirkwood</code>, <code>octeon</code>, <code>orion</code>, <code>ppc40x</code>, <code>ppc44x</code>, <code>rb532</code>, <code>rdc</code>, <code>x86</code> and <a href="https://zh.wikipedia.org/wiki/XBurst_(microarchitecture)" title="wikilink"><code>xburst</code></a>.</p></td>
</tr>
<tr class="odd">
<td><p>r29594</p></td>
<td></td>
<td><p>10.03.1</p></td>
<td><p>[5]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/eglibc" title="wikilink">eglibc</a><br />
<a href="https://zh.wikipedia.org/wiki/glibc" title="wikilink">glibc</a></p></td>
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
<td><p><a href="https://zh.wikipedia.org/wiki/CoDel" title="wikilink">CoDel</a> (<a href="https://zh.wikipedia.org/wiki/network_scheduler" title="wikilink">network scheduler</a>) backported from Linux 3.5 to 3.3. New platforms: <code>ramips</code>, <a href="https://zh.wikipedia.org/wiki/Raspberry_Pi" title="wikilink"><code>bcm2708</code> (Raspberry Pi)</a> and others.</p></td>
</tr>
<tr class="odd">
<td><p>r42625</p></td>
<td></td>
<td><p>14.07</p></td>
<td><p>[7]</p></td>
<td><p>3.10.49[8]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/musl" title="wikilink">musl</a><br />
eglibc</p></td>
<td></td>
<td></td>
<td><p>New platforms: <a href="https://zh.wikipedia.org/wiki/i.MX#i.MX23_family" title="wikilink"><code>i.MX23</code></a>, <a href="https://zh.wikipedia.org/wiki/i.MX#i.MX6x_series" title="wikilink"><code>i.MX6</code></a>[9] and <code>mvebu</code>.</p></td>
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
<td><p><a href="https://zh.wikipedia.org/wiki/nftables" title="wikilink">nftables</a> (available since Linux kernel 3.12); New platforms: TBA if any</p></td>
</tr>
<tr class="odd">
<td><p>r49022</p></td>
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
<td><p><a href="https://zh.wikipedia.org/wiki/musl" title="wikilink">musl</a>[16]</p></td>
<td><p>uClibc<br />
glibc</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>v18.06.0</p></td>
<td><p>OpenWrt 18.06.0</p></td>
<td><p>18.06.0</p></td>
<td><p>July 31, 2018[17]</p></td>
<td><p>4.9.111 / 4.14.52</p></td>
<td><p>uClibc-ng glibc</p>
<p>gcc</p>
<p>binutils</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>v18.06.1</p></td>
<td><p>OpenWrt 18.06.1</p></td>
<td><p>18.06.1</p></td>
<td><p>August 18, 2018[18]</p></td>
<td><p>4.9.120 / 4.14.63</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>v18.06.2</p></td>
<td><p>OpenWrt 18.06.2</p></td>
<td><p>18.06.2</p></td>
<td><p>January 31, 2019[19]</p></td>
<td><p>4.9.152 / 4.14.95</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>v18.06.3</p></td>
<td><p>OpenWrt 18.06.3</p></td>
<td><p>18.06.3</p></td>
<td><p>June 29, 2019[20]</p></td>
<td><p>4.9.182 / 4.14.128</p></td>
<td></td>
<td></td>
<td></td>
<td><p>The OpenWrt 18.06.3 release was skipped in favor to 18.06.4 due to a last minute 4.14 kernel update fixing TCP connectivity problems which were introduced with the first iteration of the Linux SACK vulnerability patches.[21]</p></td>
</tr>
<tr class="odd">
<td><p>v18.06.4</p></td>
<td></td>
<td><p>18.06.4</p></td>
<td><p>July 1, 2019[22]</p></td>
<td><p>4.9.184 / 4.14.131</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>v19.07.0</p></td>
<td></td>
<td><p>19.07.0</p></td>
<td><p>July 2019</p></td>
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

  - 可寫的[根目录](https://zh.wikipedia.org/wiki/根目录 "wikilink")，讓使用者自行新增，移除或修改任何檔案。SquashFS与JFFS2文件系统的整合形成的overlayfs机制\[23\]形成重疊\[24\]。squashfs是一种只读的压缩文件系统，压缩率和gzip差不多。jffs2是一种日志类型的文件系统，专为NorFlash设计。
  - 包管理員*opkg*，類似[dpkg](https://zh.wikipedia.org/wiki/dpkg "wikilink")，可讓使用者新增或移除軟體。软件仓库大約有3500個包。是一个可以从本地或遠端软件下载并安装OpenWrt包的轻量型实用工具。
  - UCI (unified configuration interface) 腳本支持\[25\]
  - 完整的硬體驅動程式支持。例如: 內建[網路交換器](../Page/網路交換器.md "wikilink")及其[VLAN](https://zh.wikipedia.org/wiki/VLAN "wikilink")-相容, s, [DSL modems](https://zh.wikipedia.org/wiki/DSL_modem "wikilink"), 等。
  - 各種[计算机網路設定如下](https://zh.wikipedia.org/wiki/计算机網路 "wikilink"):
      - [路由](../Page/路由.md "wikilink")可透過[iproute2](https://zh.wikipedia.org/wiki/iproute2 "wikilink"), , 等。
      - [網狀網路可經由](https://zh.wikipedia.org/wiki/網狀網路 "wikilink")[B.A.T.M.A.N.](../Page/隨建即連網路優化方案.md "wikilink"), 與[IEEE 802.11s](https://zh.wikipedia.org/wiki/IEEE_802.11s "wikilink")-相容的[WNIC drivers](../Page/开源无线驱动比较.md "wikilink")
      - 無線功能。如裝置實現[無線路由](https://zh.wikipedia.org/wiki/無線路由 "wikilink")、[無線接取器](https://zh.wikipedia.org/wiki/無線接取器 "wikilink")、[無線橋接](https://zh.wikipedia.org/wiki/無線橋接 "wikilink")、強制，或結合一些裝置如: [ChilliSpot](https://zh.wikipedia.org/wiki/ChilliSpot "wikilink")、[WiFiDog Captive Portal等](https://zh.wikipedia.org/wiki/WiFiDog_Captive_Portal "wikilink")。
      - 無線安全: [Packet injection](https://zh.wikipedia.org/wiki/Packet_injection "wikilink")，例如: [Airpwn](http://airpwn.sourceforge.net/Airpwn.html)、[lorcon等](https://zh.wikipedia.org/wiki/lorcon "wikilink")。
      - [狀態防火牆](https://zh.wikipedia.org/wiki/狀態防火牆 "wikilink")、[NAT和路由器端口扫描](../Page/网络地址转换.md "wikilink")([port forwarding](https://zh.wikipedia.org/wiki/端口映射 "wikilink"))經由[netfilter](https://zh.wikipedia.org/wiki/netfilter "wikilink")；其他還有[PeerGuardian已支持](https://zh.wikipedia.org/wiki/PeerGuardian "wikilink")。
      - [UPnP](../Page/UPnP.md "wikilink")與[NAT-PMP可透過](https://zh.wikipedia.org/wiki/NAT-PMP "wikilink") upnpd來設定。
      - [port knocking可透過knockd與knock達成](https://zh.wikipedia.org/wiki/port_knocking "wikilink")。
      - [TR-069](../Page/TR-069.md "wikilink")\[26\]
      - [IPS經由](../Page/入侵预防系统.md "wikilink")[Snort](../Page/Snort.md "wikilink")
      - 使用多個[互联网服务供应商](../Page/互联网服务供应商.md "wikilink")達到負載平衡。
      - IP穿透(tunneling)
      - [網路監視與統計數據等](https://zh.wikipedia.org/wiki/網路監視 "wikilink")。例如: [RRDtool](../Page/RRDtool.md "wikilink"), [Collectd](https://zh.wikipedia.org/wiki/Collectd "wikilink"), [Nagios](../Page/Nagios.md "wikilink"), , [Zabbix等](https://zh.wikipedia.org/wiki/Zabbix "wikilink")。
      - [域名系统](../Page/域名系统.md "wikilink") (DNS)和[DHCP經由](https://zh.wikipedia.org/wiki/DHCP "wikilink")[Dnsmasq](../Page/Dnsmasq.md "wikilink")、[MaraDNS等](https://zh.wikipedia.org/wiki/MaraDNS "wikilink")。
      - [动态DNS可負責修復](https://zh.wikipedia.org/wiki/动态DNS "wikilink")[互联网服务供应商](../Page/互联网服务供应商.md "wikilink")的DNS，但不提供靜態[IP地址](../Page/IP地址.md "wikilink")
      - [無線分散系統](../Page/無線分散系統.md "wikilink")(WDS) 包含WPA-PSK、WPA2-PSK、WPA-PSK/WPA2-PSK混合加密模式
  - OpenWrt支持各種Linux已支持的硬體，並透過[USB](../Page/USB.md "wikilink")連線
      - [打印機](https://zh.wikipedia.org/wiki/打印機 "wikilink")
      - [mobile broadband modem](https://zh.wikipedia.org/wiki/mobile_broadband_modem "wikilink")
      - [网络摄像头](https://zh.wikipedia.org/wiki/网络摄像头 "wikilink")
      - [音效卡](https://zh.wikipedia.org/wiki/音效卡 "wikilink")
  - 著名的軟件支持硬體 :
      - [文件分享經由](https://zh.wikipedia.org/wiki/文件分享 "wikilink")[Samba](../Page/Samba.md "wikilink")，(Windows相容)，[NFS和](https://zh.wikipedia.org/wiki/NFS "wikilink")[FTP](https://zh.wikipedia.org/wiki/FTP "wikilink")，經由[print server](https://zh.wikipedia.org/wiki/print_server "wikilink") [CUPS](../Page/CUPS.md "wikilink") (spooling) 或 [p910nd](https://zh.wikipedia.org/wiki/p910nd "wikilink") (non-spooling)分享列印功能。
      - [PulseAudio](../Page/PulseAudio.md "wikilink"), [Music Player Daemon](https://zh.wikipedia.org/wiki/Music_Player_Daemon "wikilink")，音效與影像流經由[DLNA](https://zh.wikipedia.org/wiki/DLNA "wikilink")/[UPnP AV standards](../Page/UPnP.md "wikilink")、[iTunes](https://zh.wikipedia.org/wiki/iTunes "wikilink") () 伺服器
      - [Asterisk](../Page/Asterisk.md "wikilink")
      - [MQ Telemetry Transport經由](https://zh.wikipedia.org/wiki/MQ_Telemetry_Transport "wikilink")[Mosquitto](https://zh.wikipedia.org/wiki/Mosquitto "wikilink")
  - 可延伸的[Ajax](https://zh.wikipedia.org/wiki/Ajax "wikilink")，由LuCI支持\[27\]
  - 系統更新，即便裝置已不再受原廠支持。

### Web 界面

在8.09版之前，OpenWrt提供最小GUI。OpenWrt推出8.09及日後新版中，有更多的Web界面可供選擇。\[28\]這個新界面基於LuCI，是一種架構，由[Lua](../Page/Lua.md "wikilink")語言撰寫。\[29\]

[X-Wrt是一個專為OpenWrt所設計的套件](https://zh.wikipedia.org/wiki/X-Wrt "wikilink")，是LuCI以外的另一種選擇，在包倉庫中名為webif²，由使用者自行下載安裝。

[File:Openwrt-luci-firewall.png|LuCI](File:Openwrt-luci-firewall.png%7CLuCI) [File:X-Wrt-logo.png|X-Wrt](File:X-Wrt-logo.png%7CX-Wrt) <File:Gargoyle> Router Firmware quotas.png|Gargoyle

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

OpenWrt運行許多不同的路由器，並在其網站上包括一個兼容硬件表。\[30\]在其買家指南中，比起博通，他们更建议购买高通Atheros芯片设备。\[31\]

## 正式採用

OpenWrt，特別是其Buildroot構建系統，已經採用了很多次：

  - [Freifunk及其他網狀網絡社區](https://zh.wikipedia.org/wiki/Freifunk "wikilink")
  - Bufferbloat.net (Cerowrt)
  - [IETF](https://zh.wikipedia.org/wiki/Internet_Engineering_Task_Force "wikilink") IPv6集成項目HIPnet和HomeNet是基於OpenWrt

## 衍生分支

  - [LEDE](../Page/LEDE.md "wikilink")作為OpenWrt項目的分支機構而成立，並擁有許多相同的目標。现在已决定与OpenWRT合并。
  - *CeroWrt* 目的是補充debloat測試kernel tree，並為緩衝區修復的現實世界測試提供一個平台\[32\]\[33\]
  - Coova chilli 基於OpenWrt的專注於無線熱點，一個chillifire的分支專注於無線熱點管理
  - [Gargoyle](https://zh.wikipedia.org/wiki/Gargoyle_\(router_firmware\) "wikilink") OpenWrt的一個Web界面，強調可用性，後來分支到一個單獨的分發
  - Flukso 使用Atheros AR2317芯片組的無線傳感器節點，運行修補的OpenWrt OS進行通信。GitHub上提供的源和硬件原理圖。
  - [Fon](https://zh.wikipedia.org/wiki/Fon_\(company\) "wikilink") 基於OpenWrt的無線路由器充當熱點。fonosfera.org上的源和工具鏈
  - Linino 基於OpenWrt的基於[MIPS架構的](https://zh.wikipedia.org/wiki/MIPS_architecture "wikilink")[Arduino](../Page/Arduino.md "wikilink")的分發：GitHub項目
  - Midge Linux 基於[英飞凌](https://zh.wikipedia.org/wiki/Infineon_Technologies "wikilink") ADM-5120 [SoCs的設備的基於OpenWrt的發行版](https://zh.wikipedia.org/wiki/System-on-a-chip "wikilink")，例如Edimax BR-6104K和BR-6104KP。
  - OpenSAN [iSCSI目標存儲區域網絡實現](https://zh.wikipedia.org/wiki/iSCSI "wikilink")。
  - PacketProtector 基於OpenWrt的安全分發，包括[IDS](https://zh.wikipedia.org/wiki/Intrusion-detection_system "wikilink")，，[VPN和Web防病毒功能](https://zh.wikipedia.org/wiki/Virtual_private_network "wikilink")。

<!-- end list -->

  -
    軟件包包括Snort，Snort-inline，FreeRADIUS，OpenVPN，DansGuardian和ClamAV。
    這些工具可以通過OpenWrt的舊Web GUI管理界面訪問，稱為X-Wrt或webif^2。項目於2012年6月7日結束。\[34\]

<!-- end list -->

  - 的Omnia路由器是使用OpenWrt的衍生運行

  - 無線社區網絡的多種草根項目，包括[Freifunk](https://zh.wikipedia.org/wiki/Freifunk "wikilink")，Libre-Mesh和qMp

  - [libreCMC](https://zh.wikipedia.org/wiki/libreCMC "wikilink") 基於OpenWrt的分發，沒有非自由軟件或二進制blob，由自由軟件基金會認可\[35\]

  - Asuswrt（asuswrt-merlin），載體為[Asus網通產品](https://zh.wikipedia.org/wiki/Asus "wikilink")。

## 路由器固件項目列表

  - [客制路由器韌體清單](../Page/客制路由器韌體清單.md "wikilink")
      - [LEDE](../Page/LEDE.md "wikilink") - OpenWRT的分支專案

## 注釋

## 外部链接

  - [OpenWrt主页](https://openwrt.org)
  - [OpenWrt支持的无线路由器列表](https://wiki.openwrt.org/toh/start)
  - [OpenWrt Wiki 中文](https://wiki.openwrt.org/zh-cn/start)
  - [OpenWrt中文站](https://web.archive.org/web/20100309161603/http://www.openwrt.org.cn/)
  - [OpenWrt脱机下载BT文件](http://www.ytyzx.net/index.php?title=%E8%B7%AF%E7%94%B1%E5%99%A8OpenWrt%E5%A6%82%E4%BD%95%E8%84%B1%E6%9C%BA\(%E7%A6%BB%E7%BA%BF\)%E4%B8%8B%E8%BD%BDBT%E6%96%87%E4%BB%B6)

[Category:Linux發行版](https://zh.wikipedia.org/wiki/Category:Linux發行版 "wikilink") [Category:自由路由軟體](https://zh.wikipedia.org/wiki/Category:自由路由軟體 "wikilink") [Category:售後韌體](https://zh.wikipedia.org/wiki/Category:售後韌體 "wikilink") [Category:Lua軟體](https://zh.wikipedia.org/wiki/Category:Lua軟體 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

9.  [Freescale i.MX support](http://wiki.openwrt.org/doc/hardware/soc/soc.freescale.imx)

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

21.

22.

23.

24.

25.

26. [freecwmp is a CWMP client for OpenWrt](http://events.ccc.de/congress/2012/Fahrplan/events/5112.en.html)

27.
28.

29.

30.

31.

32.

33.

34.

35.