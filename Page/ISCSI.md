**iSCSI**（Internet Small Computer System Interface，），Internet小型计算机系统接口，又稱為IP-[SAN](https://zh.wikipedia.org/wiki/SAN "wikilink")，是一种基于[因特网及](https://zh.wikipedia.org/wiki/因特网 "wikilink")[SCSI-3协议下的存储技术](https://zh.wikipedia.org/wiki/SCSI-3 "wikilink")，由[IETF提出](https://zh.wikipedia.org/wiki/IETF "wikilink")，並於2003年2月11日成為正式的標準。与传统的[SCSI技术比较起来](https://zh.wikipedia.org/wiki/SCSI "wikilink")，iSCSI技术有以下三个革命性的变化：

1.  把原來只用於本機的SCSI協議透過[TCP/IP网络傳送](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")，使连接距离可作无限的地域延伸；
2.  连接的[服务器](../Page/服务器.md "wikilink")数量无限（原來的SCSI-3的上限是15）；
3.  由于是服务器架构，因此也可以实现在线扩容以至动态部署。

## 功能

iSCSI利用了TCP/IP的port 860 和 3260 作为沟通的渠道。透过两部计算机之间利用iSCSI的协议来交换[SCSI命令](https://zh.wikipedia.org/wiki/SCSI "wikilink")，让计算机可以透过高速的局域网集线来把SAN模拟成为本地的储存装置。

iSCSI使用 TCP/IP 协议（一般使用TCP端口860和3260）。 本质上，iSCSI 让两个主机通过 IP 网络相互协商然后交换 [SCSI](https://zh.wikipedia.org/wiki/SCSI "wikilink") 命令。这样一来，iSCSI 就是用广域网仿真了一个常用的高性能本地存储总线，从而创建了一个存储局域网（SAN）。不像某些 SAN 协议，iSCSI 不需要专用的电缆；它可以在已有的交换和 IP 基础架构上运行。然而，如果不使用专用的网络或者子网（ LAN 或者 VLAN ），iSCSI SAN 的部署性能可能会严重下降。于是，iSCSI 常常被认为是光纤通道（Fiber Channel）的一个低成本替代方法，而光纤通道是需要专用的基础架构的。但是，基于以太网的光纤通道（[FCoE](https://zh.wikipedia.org/wiki/FCoE "wikilink")）则不需要专用的基础架构。

虽然 iSCSI 可以与任意类型的 SCSI 设备进行通信，系统管理员几乎总是使用它来连接服务器计算机 （例如，数据库服务器） 和磁盘卷上存储阵列。 使用iSCSI SAN 的目的通常有以下两个：

**存储整合** 公司希望将不同的存储资源从分散在网络上的服务器移动到统一的位置（常常是数据中心）； 这可以让存储的分配变得更为有效。 SAN 环境中的服务器无需任何更改硬件或电缆连接就可以得到新分配的磁盘卷。

**灾难恢复** 公司希望把存储资源从一个数据中心镜像到另一个远程的数据中心上，后者在出现长时间停电的情况下可以用作热备份。 特别是，iSCSI SAN 使我们只需要用最小的配置更改就可以在 WAN 上面迁移整个磁盘阵列，实质上就是，把存储变成了“可路由的”，就像普通的网络通信一样。

## 网络引导/启动

从数据存储的角度，对于一个已经处于运行状态的计算机，任意类型的通用网络接口都可用于访问 iSCSI 设备。 然而，通用消费级网络接口却不能够从远程的 iSCSI 数据源引导无盘计算机。 相反，对于服务器而言，通常情况是，它是从一个小的本地 RAID 镜像或闪存驱动器引导设备来加载操作系统，并从本地设备启动完毕后，然后使用 iSCSI 来进行对数据存储的访问。

对于配有支持网络引导的网络接口设备（网卡）的计算机，可以另外配置一台 DHCP 服务器来协助“iSCSI 启动”。 这种情况下，网卡会寻找一个提供 [PXE](https://zh.wikipedia.org/wiki/PXE "wikilink") 或 [BOOTP](https://zh.wikipedia.org/wiki/BOOTP "wikilink") 引导映像的 DHCP 服务器。该 DHCP 服务器会根据启动网卡的 [MAC地址](../Page/MAC地址.md "wikilink") 提供对应的 iSCSI 启动目标设备/卷信息，然后计算机便可以开始从 iSCSI 远程启动的进程了。

定制的 iSCSI 接口卡提供内置的 BIOS 功能，可以为该接口事先指定一个 iSCSI 目标设备，然后就可以直接从一个启动服务器进行启动，（而不需要另设一个DHCP 服务器）， 从而减少网络配置的复杂度。

## 參看

  - [存储区域网络](../Page/存储区域网络.md "wikilink") (SAN)
  - [SCSI](https://zh.wikipedia.org/wiki/SCSI "wikilink")
  - [FCIP](https://zh.wikipedia.org/wiki/FCIP "wikilink")
  - [FCoE](https://zh.wikipedia.org/wiki/FCoE "wikilink")
  - [iFCP](https://zh.wikipedia.org/wiki/iFCP "wikilink")
  - [iSNS](https://zh.wikipedia.org/wiki/iSNS "wikilink")
  - [SLP](https://zh.wikipedia.org/wiki/SLP "wikilink")
  - [ATA over Ethernet](../Page/ATA_over_Ethernet.md "wikilink")

## 外部連結

### RFCs

  - RFC 3720 - Internet Small Computer Systems Interface (iSCSI)
  - RFC 3721 - Internet Small Computer Systems Interface (iSCSI) Naming and Discovery
  - RFC 3722 - String Profile for Internet Small Computer Systems Interface (iSCSI) Names
  - RFC 3723 - Securing Block Storage Protocols over IP
  - RFC 3347 - Small Computer Systems Interface protocol over the Internet (iSCSI) Requirements and Design Considerations
  - RFC 3783 - Small Computer Systems Interface (SCSI) Command Ordering Considerations with iSCSI
  - RFC 3980 - T11 Network Address Authority (NAA) Naming Format for iSCSI Node Names
  - RFC 4018 - Finding Internet Small Computer Systems Interface (iSCSI) Targets and Name Servers by Using Service Location Protocol version 2 (SLPv2)
  - RFC 4173 - Bootstrapping Clients using the Internet Small Computer System Interface (iSCSI) Protocol
  - RFC 4544 - Definitions of Managed Objects for Internet Small Computer System Interface (iSCSI)
  - RFC 4850 - Declarative Public Extension Key for Internet Small Computer Systems Interface (iSCSI) Node Architecture
  - RFC 4939 - Definitions of Managed Objects for iSNS (Internet Storage Name Service)
  - RFC 5048 - Internet Small Computer System Interface (iSCSI) Corrections and Clarifications
  - RFC 5047 - DA: Datamover Architecture for the Internet Small Computer System Interface (iSCSI)
  - RFC 5046 - Internet Small Computer System Interface (iSCSI) Extensions for Remote Direct Memory Access (RDMA)

### 其他連結

  - [iSCSI存储技术全攻略](http://www.sansky.net/article/2007-12-03-iscsi-storage.html)
  - [A List of iSCSI Software Targets](http://www.joeynovak.com/wiki/index.php/A_List_of_iSCSI_Targets)
  - [An open discussion on iSCSI as the potential future of storage](http://www.thefutureofstorage.com)
  - [An introduction to the Solaris iSCSI stack](http://prefetch.net/articles/solarisiscsi.html)
  - [Linux iSCSI](http://linux-iscsi.org/index.php/Main_Page)
  - [Picquelle Report (iSCSI Standards & 10GbE Ratified)](http://picquelle.blogspot.com)
  - ["iSCSI: Insecure SCSI". A talk on iSCSI security given at the BlackHat Security Conference](https://web.archive.org/web/20070927170827/http://www.isecpartners.com/files/iSEC-iSCSI-Security.BlackHat.pdf)
  - [NetBSD iSCSI Target HOWTO](ftp://ftp.netbsd.org/pub/NetBSD/misc/agc/HOWTO-iSCSI-target.txt)
  - [NetBSD iSCSI Initiator WindowsXP HOWTO](ftp://ftp.netbsd.org/pub/NetBSD/misc/agc/HOWTO-iSCSI-initiator.pdf)
  - [用Ubuntu 6.06LTS Server來設立iSCSI伺服器](http://www.nge.com.au/index.php?next_page=res/tech_articles/iscsi_enterprise_target_ubuntu_6.06_LTS.php)

[Category:SCSI](https://zh.wikipedia.org/wiki/Category:SCSI "wikilink") [Category:電腦儲存技術](https://zh.wikipedia.org/wiki/Category:電腦儲存技術 "wikilink") [Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink") [Category:乙太網路](https://zh.wikipedia.org/wiki/Category:乙太網路 "wikilink") [Category:已被淘汰的電腦硬體](https://zh.wikipedia.org/wiki/Category:已被淘汰的電腦硬體 "wikilink")