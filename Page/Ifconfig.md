**ifconfig**（interface
configuration的缩写）是在[类Unix作业系统中于](https://zh.wikipedia.org/wiki/类Unix "wikilink")[命令行界面](../Page/命令行界面.md "wikilink")（CLI）下或系统配置脚本中用于配置、控制及查询[TCP/IP](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")[网络接口的系统管理工具](../Page/网卡.md "wikilink")。ifconfig最初于4.2BSD中作为[BSD](../Page/BSD.md "wikilink")
TCP/IP协议族的一部分出现。

## 用法

ifconfig的常见用途包括设置接口的[IP地址和](../Page/IP地址.md "wikilink")[子网掩码](https://zh.wikipedia.org/wiki/子网掩码 "wikilink")，以及禁用与启用接口。\[1\]在启动时，许多类Unix作业系统通过调用ifconfig的shell脚本初始化网络接口。作为交互工具，系统管理员经常使用其来显示并分析网络接口参数。下面的样例输出展示了一Linux主机（接口[eth](../Page/以太网.md "wikilink")0）和[OpenBSD主机上的](../Page/OpenBSD.md "wikilink")[ural0活跃接口状态](https://zh.wikipedia.org/wiki/Ralink "wikilink")：

```
 eth0      Link encap:Ethernet  HWaddr 00:0F:20:CF:8B:42
           inet addr:217.149.127.10  Bcast:217.149.127.63  Mask:255.255.255.192
           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
           RX packets:2472694671 errors:1 dropped:0 overruns:0 frame:0
           TX packets:44641779 errors:0 dropped:0 overruns:0 carrier:0
           collisions:0 txqueuelen:1000
           RX bytes:1761467179 (1679.7 Mb)  TX bytes:2870928587 (2737.9 Mb)
           Interrupt:28
```

```
 ural0: flags=8843<UP,BROADCAST,RUNNING,SIMPLEX,MULTICAST> mtu 1500
         lladdr 00:0d:0b:ed:84:fb
         media: IEEE802.11 DS2 mode 11b hostap (autoselect mode 11b hostap)
         status: active
         ieee80211: nwid ARK chan 11 bssid 00:0d:0b:ed:84:fb  100dBm
         inet 172.30.50.1 netmask 0xffffff00 broadcast 172.30.50.255
         inet6 fe80::20d:bff:feed:84fb%ural0 prefixlen 64 scopeid 0xa
```

## 当前状态

开放的[伯克利软件套件](https://zh.wikipedia.org/wiki/伯克利软件套件 "wikilink")[UNIX作业系统](../Page/UNIX.md "wikilink")（如[NetBSD](../Page/NetBSD.md "wikilink")、[OpenBSD和](../Page/OpenBSD.md "wikilink")[FreeBSD](../Page/FreeBSD.md "wikilink")）仍在活跃地开发ifconfig，并将其功能扩展到包含[无线网络接口设置](../Page/无线网络.md "wikilink")、[VLAN中继](https://zh.wikipedia.org/wiki/VLAN "wikilink")、操控硬件功能（如[TSO或硬件检验和计算](https://zh.wikipedia.org/wiki/TSO "wikilink")）及设置桥接与隧道接口等。[Solaris曾经使用ifconfig来进行所有网络相关的配置](../Page/Solaris.md "wikilink")，但自Solaris
10引入dladm来进行链路层（OSI模型第二层）配置后，ifconfig就仅被用于进行IP配置。

在旧的[Linux发行版中](../Page/Linux发行版.md "wikilink")，ifconfig与[route命令一同工作](https://zh.wikipedia.org/wiki/route "wikilink")，用于连接计算机到网络及定义不同网络间的路由。Linux上的ifconfig是net-tools软件包的一部分，虽然该软件包仍被维护，但最新版1.60是在2001年4月15日发布的。\[2\]

现代Linux发行版正逐步淘汰ifconfig与route，并用自1999年4月17日发布的Linux
2.2.4起存在\[3\]的[iproute2取代它们](https://zh.wikipedia.org/wiki/iproute2 "wikilink")，\[4\]然而仍有许多发行版还未完全替换。\[5\]iproute2包含了ifconfig(8)、route(8)、arp(8)和netstat(1)的所有常用功能，以及多播配置、隧道和虚拟链路管理、流量控制（如[带宽整形](https://zh.wikipedia.org/wiki/带宽整形 "wikilink")）及（底层的）IPsec配置等。

## 相关工具

[Microsoft
Windows从](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Windows
95到](../Page/Windows_95.md "wikilink")[Windows
Me都提供](../Page/Windows_Me.md "wikilink")[winipcfg给出当前IP信息的图形化显示](https://zh.wikipedia.org/wiki/winipcfg "wikilink")。基于[Windows
NT](../Page/Windows_NT.md "wikilink")[内核的](../Page/内核.md "wikilink")[微软](../Page/微软.md "wikilink")[作业系统均有提供](https://zh.wikipedia.org/wiki/作业系统 "wikilink")[ipconfig](https://zh.wikipedia.org/wiki/ipconfig "wikilink")，一个与ifconfig类似的命令。[ipconfig也可控制Windows](https://zh.wikipedia.org/wiki/ipconfig "wikilink")[DHCP](https://zh.wikipedia.org/wiki/DHCP "wikilink")[客户端](https://zh.wikipedia.org/wiki/客户端 "wikilink")。

在[Mac OS
X中](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，ifconfig是IPConfiguration的[封装](https://zh.wikipedia.org/wiki/封装 "wikilink")，可于命令行控制[BootP和DHCP客户端](https://zh.wikipedia.org/wiki/BootP "wikilink")。由于ifconfig工作在协助管理网络设置的系统框架之下，不推荐使用ifconfig更改OS
X的网络设置。要在命令行中更动Mac OS
X的网络设置，应使用/usr/sbin/ipconfig或/usr/sbin/networksetup。

[iwconfig](https://zh.wikipedia.org/wiki/iwconfig "wikilink")，[Wireless
tools for
Linux的一部分](https://zh.wikipedia.org/wiki/Wireless_tools_for_Linux "wikilink")，名字即来源于ifconfig，用于管理在Linux的ifconfig最初范围外的[无线网络接口](../Page/无线网络.md "wikilink")。iwconfig可修改如无线网络的[SSID和](https://zh.wikipedia.org/wiki/SSID "wikilink")[WEP密钥的无线网络专有设置](https://zh.wikipedia.org/wiki/WEP "wikilink")，并与iwlist协同工作。Linux也包含*[iwspy](https://zh.wikipedia.org/wiki/iwspy "wikilink")*以读取无线连接的信号、噪音与质量。

其它配置以太网适配器的相关工具包括[ethtool](https://zh.wikipedia.org/wiki/ethtool "wikilink")、[mii-tool与用于Linux的](https://zh.wikipedia.org/wiki/mii-tool "wikilink")[mii-diag和用于Solaris的](https://zh.wikipedia.org/wiki/mii-diag "wikilink")[show-link](https://zh.wikipedia.org/wiki/show-link "wikilink")。

## 参考资料

## 外部链接

  - [ifconfig(8)](http://linux.die.net/man/8/ifconfig),
    [manpage](https://zh.wikipedia.org/wiki/manpage "wikilink") for
    Linux net-tools ifconfig
  - [ifconfig(8)](http://www.freebsd.org/cgi/man.cgi?query=ifconfig),
    manpage for the FreeBSD ifconfig
  - [ifconfig(8)](http://www.openbsd.org/cgi-bin/man.cgi?query=ifconfig),
    manpage for the OpenBSD ifconfig
  - [ifconfig(8)](https://docs.oracle.com/cd/E19253-01/816-5166/ifconfig-1m/index.html),
    manpage for the Solaris ifconfig
  - [networksetup(8)](http://developer.apple.com/documentation/Darwin/Reference/ManPages/man8/networksetup.8.html),
    manpage for the Mac OS X networksetup
  - [ifconfig](https://web.archive.org/web/20071215033750/http://www.leastprivilege.com/UPDATEDIfconfigForWindows21.aspx)
    for
    [Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
  - \[<http://technet.microsoft.com/en-us/library/dd197434(WS.10>).aspx
    ipconfig\] for
    [Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
    on a [technet.microsoft.com](http://technet.microsoft.com)
  - [ip](http://linux.die.net/man/8/ip), manpage for the Linux command
    ip
  - [Debian net-tools](http://packages.qa.debian.org/n/net-tools.html)
    page, which includes sources of the Linux version of ifconfig
  - [net-tools
    future](http://lists.debian.org/debian-devel/2009/03/msg00780.html)
    thread, from current maintainers
  - [ifconfig examples](http://www.examplenow.com/ifconfig)

[Category:路由](https://zh.wikipedia.org/wiki/Category:路由 "wikilink")
[Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink")
[Category:Unix网络相关软件](https://zh.wikipedia.org/wiki/Category:Unix网络相关软件 "wikilink")

1.  *Linux Network Administrators Guide* [Section 5.7. Interface
    Configuration for
    IP](http://www.faqs.org/docs/linux_network/x-087-2-iface.interface.html)
2.  Upstream URL <http://net-tools.sourceforge.net/>
3.  Based upon the availability of tarballs in iproute2's project space.
    (The GIT history does not reach as far back.) Furthermore, iproute2
    release versions follow the kernel version.
4.
5.  <https://fedorahosted.org/releases/i/n/initscripts/> release 9.24
    still showing traces of invocations of ifconfig