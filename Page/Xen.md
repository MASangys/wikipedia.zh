> 本文内容由[Xen](https://zh.wikipedia.org/wiki/Xen)转换而来。


**Xen**是[开放源代码](../Page/开放源代码.md "wikilink")[虚拟机监视器](https://zh.wikipedia.org/wiki/虚拟机监视器 "wikilink")，由XenProject开发，能夠在单个计算机运行多达128个有完全功能的[操作系统](../Page/操作系统.md "wikilink")。

在舊（無虛擬硬件）的處理器上執行Xen，操作系统必须进行显式地修改（“移植”）以在Xen上运行（但是提供对用户应用的兼容性）。这使得Xen无需特殊硬件支持，就能达到高性能的虚拟化。

2013年4月，[Linux基金会宣布Xen成为Linux基金会合作项目](https://zh.wikipedia.org/wiki/Linux基金会 "wikilink")。\[1\]

## 使用

[IBM](../Page/IBM.md "wikilink")经常在其主机和服务器上使用虚拟机来尽可能发挥其性能，并类似[chroot监禁那样将程序置于隔离的虚拟OS中以增强安全性](https://zh.wikipedia.org/wiki/chroot "wikilink")。除此之外，它还能使不同和不兼容的OS运行在同一台计算机上。Xen支持在运行时进行迁移，保证正常运行并且避免宕机

## Xen的半虚拟化

Xen通过一种叫做的技术获得高效能的表现（较少的效能损失，典型的情况下大约损失2%，在最糟的情况下会有8%的效能耗损；与其它使用完全的虚拟化却造成最高到20%损耗的其他解决方案形成一个明显的对比），甚至在某些与传统虚拟技术不友好的架构上（如x86），Xen也有极佳的表现。但是这要求虚拟机使用经过修改的客户端操作系统。与那些传统透过软件模拟实现硬件的虚拟机不同，在3.0版本及在Intel VT-X支援前的Xen需要让客户端操作系统（guest operating systems）与Xen API进行连接。到目前为止，这样连结已经可以运用在[NetBSD](../Page/NetBSD.md "wikilink")、[GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")和[贝尔实验室](../Page/贝尔实验室.md "wikilink")的[Plan 9系统上](../Page/貝爾實驗室九號計畫.md "wikilink")。在[Brainshare 2005](http://www.novell.com/brainshare/)会议上，[Novell](../Page/Novell.md "wikilink")展示了[NetWare与Xen的连通](https://zh.wikipedia.org/wiki/NetWare "wikilink")。与[Windows XP连通的技术曾在Xen开发初期进行](../Page/Windows_XP.md "wikilink")，但微软的协议未能允许它发布。[Sun微系统公司也正积极研究](https://zh.wikipedia.org/wiki/Sun微系统公司 "wikilink")[Solaris](../Page/Solaris.md "wikilink")与Xen的连结，使其能在Xen平台上运作。

## Xen的完全虚拟化

[Intel为Xen贡献了补丁以支持其](https://zh.wikipedia.org/wiki/Intel "wikilink")[VT-X架构扩展](https://zh.wikipedia.org/wiki/VT-X "wikilink")，而[AMD则进行修改以支持其](https://zh.wikipedia.org/wiki/AMD "wikilink")[AMD-V架构扩展](https://zh.wikipedia.org/wiki/AMD-V "wikilink")。如果系统处理器支持虛拟硬件扩展（Intel和AMD对本地支持虚拟化的扩展），这项技术将允许未经修改的操作系统运行在Xen虚拟机中。事实上，这意味着性能的提升，用户也可以在不违背任何修改限制协议的情况下对Windows进行虚拟。也就是说，Xen的完全虚拟化模式允许Xen虚拟机运行未经修改的Windows等操作系统。但是在x86平台上，只有支持[x86虚拟化的电脑才支持Xen的全虚拟化模式](https://zh.wikipedia.org/wiki/x86虚拟化 "wikilink")。Xen的完全虚拟化依赖于[QEMU](../Page/QEMU.md "wikilink")。

## 虚拟机的迁移

Xen虚拟机可以在不停止的情况下在多个物理主机之间即时迁移（live migration）。在操作过程中，虚拟机在没有停止工作的情况下内存被反复的复制到目标机器。虚拟机在最终目的地开始执行之前，会有一次60-300毫秒的非常短暂的暂停以执行最终的同步化，给人无缝迁移的感觉。类似的技术被用来暂停一台正在运行的虚拟机到磁盘，并切换到另外一台，第一台虚拟机在以后可以恢复。

## 系統平台支援

Xen目前可以运行在[x86及](https://zh.wikipedia.org/wiki/x86 "wikilink")[x86-64系统上](https://zh.wikipedia.org/wiki/x86-64 "wikilink")，并正在向[IA64](https://zh.wikipedia.org/wiki/IA64 "wikilink")、[PPC移植](https://zh.wikipedia.org/wiki/PPC "wikilink")。移植到其他平台从技术上是可行的，未来有可能会实现。

## 類Unix系统的Xen

  - [Novell](../Page/Novell.md "wikilink")於2005年4月15日发布的[SUSE](../Page/SUSE.md "wikilink") Linux Professional 9.3已内含Xen 2.0.5c版本。
  - [RedHat的](https://zh.wikipedia.org/wiki/RedHat "wikilink")[Fedora Project於](https://zh.wikipedia.org/wiki/Fedora_Project "wikilink")2005年6月13日发布的[Fedora Core](https://zh.wikipedia.org/wiki/Fedora_Core "wikilink") 4亦已内含Xen。
  - [RedHat的](https://zh.wikipedia.org/wiki/RedHat "wikilink")[RHEL及其衍生版本](https://zh.wikipedia.org/wiki/RHEL "wikilink")（如[CentOS](../Page/CentOS.md "wikilink")）从[RHEL](https://zh.wikipedia.org/wiki/RHEL "wikilink")6开始，已使用[KVM作为默认的虚拟化技术](https://zh.wikipedia.org/wiki/KVM "wikilink")。
  - [Xenophilia是一个基于Xen的Linux发行版](https://zh.wikipedia.org/wiki/Xenophilia "wikilink")。
  - [Xen demo CD是一个运行Debian](https://zh.wikipedia.org/wiki/Xen_demo_CD "wikilink") Linux的[liveCD](https://zh.wikipedia.org/wiki/liveCD "wikilink")，使你在系统上试用Xen，不用安装到硬盘。
  - [Debian](../Page/Debian.md "wikilink")亦可安装Xen。
  - [NetBSD](../Page/NetBSD.md "wikilink") 2.0包括对Xen 1.2的支持，即将发布的3.0包括对Xen 2.0的支持。
  - [Oracle Linux支持Xen](../Page/Oracle_Linux.md "wikilink")；还有[Oracle VM的Xen管理软件](https://zh.wikipedia.org/wiki/Oracle_VM "wikilink")。

## 参见

  - [基于内核的虚拟机](../Page/基于内核的虚拟机.md "wikilink")(KVM)
  - [虚拟机比较](https://zh.wikipedia.org/wiki/虚拟机比较 "wikilink")

## 引用

## 外部链接

  -
  - [Xen on WardsWiki](http://c2.com/cgi/wiki?XenVmm)

  - [Press announcement of Xen's inclusion within Suse](http://www.zdnet.com.au/news/software/0,2000061733,39184207,00.htm)

  - [Announcement of Xen's inclusion in Fedora](http://news.zdnet.co.uk/0,39020330,39187943,00.htm)

[Category:2003年软件](https://zh.wikipedia.org/wiki/Category:2003年软件 "wikilink") [Category:虛擬化軟體](https://zh.wikipedia.org/wiki/Category:虛擬化軟體 "wikilink") [Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink") [Category:自由虚拟化软件](https://zh.wikipedia.org/wiki/Category:自由虚拟化软件 "wikilink") [Category:Linux基金会项目](https://zh.wikipedia.org/wiki/Category:Linux基金会项目 "wikilink")

1.  [Xen to Become Linux Foundation Collaborative Project](http://www.linuxfoundation.org/news-media/announcements/2013/04/xen-become-linux-foundation-collaborative-project)