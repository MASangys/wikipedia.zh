LAND攻击（局域网拒绝服务攻击，，[縮寫](../Page/縮寫.md "wikilink")：**LAND attack**），是**[阻斷服務攻擊](../Page/阻斷服務攻擊.md "wikilink")**（DoS攻击）的一种，通过发送精心构造的、具有相同源地址和目标地址的[欺骗](https://zh.wikipedia.org/wiki/Spoofing_attack "wikilink")[数据包](https://zh.wikipedia.org/wiki/網路封包 "wikilink")，致使缺乏相应防护机制的目标设备瘫痪。这种攻击方法最早在1997年被某人以“m3lt”的名称提出，并于多年之后的[Windows Server 2003](../Page/Windows_Server_2003.md "wikilink")、[Windows XP](../Page/Windows_XP.md "wikilink") SP2等[操作系统](../Page/操作系统.md "wikilink")中重现。

## 原理

这种攻击方式采用了特别构造的TCP SYN数据包（通常用于开启一个新的连接），使目标机器开启一个源地址与目标地址均为自身[IP地址](../Page/IP地址.md "wikilink")的空连接，持续地自我应答，消耗系统资源直至崩溃。这种攻击方法与[SYN洪泛攻击并不相同](../Page/SYN_flood.md "wikilink")。

其他类型的LAND攻击在类似[SNMP和Windows](https://zh.wikipedia.org/wiki/SNMP "wikilink") 88/tcp（[Kerberos 协议](https://zh.wikipedia.org/wiki/Kerberos_协议 "wikilink")）的服务中也有发现。类似的系统存在设计上的缺陷，允许设备接受并响应来自网络、却宣称来自于设备自身的数据包，导致循环应答。

## 受影响的系统

以下操作系统可能受到类似攻击的影响\[1\]：

  - [AIX](https://zh.wikipedia.org/wiki/AIX_operating_system "wikilink") 3.0
  - [AmigaOS](../Page/AmigaOS.md "wikilink") AmiTCP 4.2 (Kickstart 3.0)
  - [BeOS](../Page/BeOS.md "wikilink") Preview release 2 PowerMac
  - [BSDi](https://zh.wikipedia.org/wiki/BSD/OS "wikilink") 2.0 and 2.1
  - [Digital VMS](https://zh.wikipedia.org/wiki/OpenVMS "wikilink")
  - [FreeBSD](../Page/FreeBSD.md "wikilink") 2.2.5-RELEASE and 3.0 (Fixed after required updates)
  - [HP](https://zh.wikipedia.org/wiki/Hewlett-Packard "wikilink") External JetDirect Print Servers
  - [IBM](../Page/IBM.md "wikilink") AS/400 OS7400 3.7
  - [Irix](https://zh.wikipedia.org/wiki/Irix "wikilink") 5.2 and 5.3
  - [Mac OS](https://zh.wikipedia.org/wiki/Mac_OS "wikilink") MacTCP, 7.6.1 OpenTransport 1.1.2 and 8.0
  - [NetApp](../Page/NetApp.md "wikilink") NFS server 4.1d and 4.3
  - [NetBSD](../Page/NetBSD.md "wikilink") 1.1 to 1.3 (Fixed after required updates)
  - [NeXTSTEP](../Page/NeXTSTEP.md "wikilink") 3.0 and 3.1
  - [Novell](../Page/Novell.md "wikilink") 4.11
  - [OpenVMS](https://zh.wikipedia.org/wiki/OpenVMS "wikilink") 7.1 with UCX 4.1-7
  - [QNX](../Page/QNX.md "wikilink") 4.24
  - [Rhapsody](https://zh.wikipedia.org/wiki/Rhapsody_\(operating_system\) "wikilink") Developer Release
  - [SCO](../Page/SCO_Group.md "wikilink") OpenServer 5.0.2 SMP, 5.0.4
  - [SCO](../Page/SCO_Group.md "wikilink") Unixware 2.1.1 and 2.1.2
  - [SunOS](../Page/SunOS.md "wikilink") 4.1.3 and 4.1.4
  - [Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink") 95, NT and XP SP2

## 防范

大多数[防火墙](../Page/防火墙.md "wikilink")都能拦截类似的攻击包，以保护系统。部分操作系统通过发布安全补丁修复了这一漏洞。另外，路由器应同时配置[上行与](https://zh.wikipedia.org/wiki/Egress_filtering "wikilink")[下行筛选器](https://zh.wikipedia.org/wiki/Ingress_filtering "wikilink")，屏蔽所有源地址与目标地址相同的数据包。

## 参见

  - [Slowloris (computer security)](https://zh.wikipedia.org/wiki/Slowloris_\(computer_security\) "wikilink")
  - [High Orbit Ion Cannon](https://zh.wikipedia.org/wiki/High_Orbit_Ion_Cannon "wikilink")
  - [Low Orbit Ion Cannon](https://zh.wikipedia.org/wiki/Low_Orbit_Ion_Cannon "wikilink")
  - [ReDoS](https://zh.wikipedia.org/wiki/ReDoS "wikilink")
  - [阻斷服務攻擊](../Page/阻斷服務攻擊.md "wikilink")

## 参考文献

## 更多

  - [Insecure.Org's original post about the attack](http://insecure.org/sploits/land.ip.DOS.html)
  - [Article about XP's vulnerability](http://www.internetnews.com/security/article.php/3488171)

[Category:阻斷服務攻擊](https://zh.wikipedia.org/wiki/Category:阻斷服務攻擊 "wikilink")

1.  <http://insecure.org/sploits/land.ip.DOS.html>