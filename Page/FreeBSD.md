**FreeBSD**是一个[类Unix的](../Page/类Unix系统.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")，也是FreeBSD项目的发展成果。\[1\]FreeBSD是第一个[开放源代码的系统](https://zh.wikipedia.org/wiki/开源 "wikilink")，他是由基于[BSD
Unix的源代码衍生而来的](../Page/BSD.md "wikilink")。BSD
Unix是[加州大学伯克利分校在](https://zh.wikipedia.org/wiki/加州大学伯克利分校 "wikilink")1975年至1993年开发的操作系统。FreeBSD被开发为自由软件，这意味着其源代码开放，人人都可以使用FreeBSD。任何人都可以获得并使用它来满足各种需求，也可以修改它，然后再重发布它。此功能专为个人和公司量身定制，可用于创建各种基于FreeBSD的商业和非商业产品。尽管FreeBSD直接从BSD衍生，但是从法律的角度来看，FreeBSD并不是“UNIX”。因为现在“UNIX”商标是属于[国际开放标准组织的](https://zh.wikipedia.org/wiki/国际开放标准组织 "wikilink")。\[2\]FreeBSD的第一个版本于1993年发布。

FreeBSD是一个支持许多硬件和体系架构的企业级系统。和其他BSD家族的操作系统一样，
FreeBSD其[核心](../Page/内核.md "wikilink")、[驱动程序以及所有的用户层](../Page/驱动程序.md "wikilink")（Userland）应用程序（如Unix
shell和cat和ps等命令）都存储在源代码库中。\[3\]FreeBSD也可以运行其他二进制软件，比如Linux的。借助ports和FreeBSD软件包管理器，你可以在其上安装各种应用程序。根据2005年的调查，77％的BSD用户使用FreeBSD，因此FreeBSD拥有BSD系列中最大的用户社区。\[4\]

在今天，个人和企业都将FreeBSD用于多种用途，包括Yahoo\! \[5\]，苹果\[6\]，Juniper网络公司，诺基亚，IBM，
Yandex的，Apache软件基金会，Hotmail，索尼和许多其他用途。

## 使用情况

一些被企业广泛应用的功能：

[电子邮件](../Page/电子邮件.md "wikilink")、 [服务器](../Page/網頁伺服器.md "wikilink")、
[防火墙](../Page/防火墙.md "wikilink")、
[smartftp](../Page/文件传输协议.md "wikilink")、
[DNS](../Page/域名系统.md "wikilink") 和
[路由器](../Page/路由器.md "wikilink")。

多种 [X Window](../Page/X_Window系統.md "wikilink") 桌面，如
[GNOME](../Page/GNOME.md "wikilink") 和
[KDE](../Page/KDE.md "wikilink")。还有一些定制桌面的项目，你会喜欢
[TrueOS](../Page/TrueOS.md "wikilink")
，其试图提供一个定制版本的桌面系统。默认情况下，他有一个图形的环境，便于用户之间使用。

Freebsd
有一个易于使用的软件许可证，这为用户和企业提供了许多自由便利，并让他们可以在自己的[专有软件产品中自由使用FreeBSD的源代码](../Page/专有软件.md "wikilink")。

除了支持一些流行的平台(如 [x86](https://zh.wikipedia.org/wiki/x86 "wikilink")
、[x86-64等等](https://zh.wikipedia.org/wiki/x86-64 "wikilink")。
FreeBSD还支持
[ARM](https://zh.wikipedia.org/wiki/ARM架构 "wikilink")、[MIPS](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")
以及 [PowerPC](../Page/PowerPC.md "wikilink")， 并且亦可用于
[嵌入式系统](../Page/嵌入式系统.md "wikilink") 。

### 诉讼

386BSD和FreeBSD均被源自1992年的BSD发行版。1992年1月， BSDi发布BSD/386，后更名为BSD /
OS，是基于BSD在1992年的发行版的，和FreeBSD相似的操作系统。AT＆T声称BSDi违反了AT\&T的源代码许可协议，并对其提起诉讼。该场诉讼达成庭外和解，相关细节未被披露。公众所知的只有BSDi将转换4.4BSD-Lite为新的源码基础。虽然没有参与诉讼，有人建议FreeBSD他们也应该将源码基础转到4.4BSD-精简版。1994年11月，FreeBSD
2.0发布，这是FreeBSD的首个不含任何AT\&T代码的版本。

## 特点

### 网络

FreeBSD的TCP/IP栈区是基于BSD
4.2来实现的，因为它卓越的协议表现，从而被普遍的接受。FreeBSD还支持[IPv6](../Page/IPv6.md "wikilink")，SCTP，IPSec和无线网络（Wi-Fi）。其IPv6和IPSec栈区是由KAME
Project得到的。同样的，FreeBSD支持IPX和AppleTalk协议，但是它们被认为是陈旧的，因此被计划在未来的FreeBSD
11.0上停止支持。

从FreeBSD 5.4开始，共享地址冗余协定（CARP）就从OpenBSD
Project中被接受。CARP允许多节点共享IP地址群。所以如果一个节点出现瘫痪，其他的节点仍然能接收请求。

### 存储

FreeBSD的存储方式，有多种独特的特性。例如可以在系统崩溃的时候用来保护[Unix文件系统](../Page/Unix文件系统.md "wikilink")（一种通用于BSD的文件系统）的一致性。而文件系统快照，则可以允许有效率的制作[Unix文件系统的瞬时快照](../Page/Unix文件系统.md "wikilink")。另外通过这个模块性基础体系，就可以对[RAID提供支持](../Page/RAID.md "wikilink")（仅限于RAID
0和1，RAID
3目前支持）。除此之外还可以支持、[日志文件系统](../Page/日志文件系统.md "wikilink")、串联机制、高速缓存存储器、以及访问基于网络的系统。也允许建立复杂的结合（“链接”）机制的存储解决方案。

FreeBSD支持两种数据加密基础体系：和。两者操作均在磁盘层级上。是由所编写的，并在遵守[双BSD许可证](https://zh.wikipedia.org/wiki/双BSD许可证 "wikilink")（即“简化BSD许可证”和“FreeBSD许可证”二者）的情况下发布的。而则是的替代品，它第一次在FreeBSD
6.0上出现，由帕·雅·戴夫（Pawel Jakub Dawidek）编写。

FreeBSD支持[UFS](https://zh.wikipedia.org/wiki/UFS "wikilink")、[ZFS等多种文件系统](../Page/ZFS.md "wikilink")。

### 安全

### 移植

### 第三方软件

### 兼容Linux

GNU/Linux上的软件的源代码经过编译，大多数也可以在FreeBSD上运行。

## 开发

### 管理架构

### 分支

### 基金会

## 许可协议

FreeBSD在[BSD許可證下发布](https://zh.wikipedia.org/wiki/BSD許可證 "wikilink")\[7\]，允许任何人在保留版权和许可协议信息的前提下随意使用和发行。BSD许可协议并不限制将FreeBSD的[源代码在另一个协议下发行](../Page/源代码.md "wikilink")，因此任何团体都可以自由地将FreeBSD代码融入它们的产品之中去。

## 發展團隊

FreeBSD发展采用Core Team的方式。Core
Team的成员决定整个FreeBSD计划的大方向，对于开发者问的问题有最后的决定权，其他的开发者也可以送出建设或是他们修改过的[源代码](../Page/源代码.md "wikilink")，但是Core
Team保留最终的决定权，决定是否将这功能放进FreeBSD。这种方式与[Linux发展大相径庭](../Page/Linux.md "wikilink")。

### Contributor

也可以說是Submitter，无FreeBSD的[CVS的存取權限](https://zh.wikipedia.org/wiki/CVS "wikilink")，但是可以透過其它的方式，例如提交Problem
Reports或是在Mailing list上面參與討論，來對FreeBSD做出貢獻。 \[8\]

### Committer

有对FreeBSD的[Subversion存取的权限](../Page/Subversion.md "wikilink")，可以将他的[源代码或是](../Page/源代码.md "wikilink")[文件送到版本库里面](https://zh.wikipedia.org/wiki/文件 "wikilink")。一个committer必须要在过去的12个月中有commit的动作。而一个活跃的committer指在每个月至少都有一次以上的commit动作。

虽然说没有必要限制一个有commit权限的人只能在[源代码树中可以存取的地方](../Page/源代码.md "wikilink")，但是如果一个committer要在他／她没有做出贡献或是不熟悉的地方，他／她必须要读那个地方的历史记录，还有MAINTAINER档案，确认这个部份的维护者对于更改这边的[源代码有没有什么特殊的要求](../Page/源代码.md "wikilink")。\[9\]

### Core Team

Core
Team成员由committer互相推选出来，是整个FreeBSD计划的领导人，他们提升活跃的contributor成为committer，还有可以指派「Hat」（指在计划中负责一些特定工作或领域的人），也是对于决定整个计划的大方向的最后仲裁者。在2004年7月1日，core
team有9位成员，而core team选举每两年举行一次。

## 平台

FreeBSD所支持的平台依照支持程度分成四个等级。\[10\] 第一线平台（Tier
1，完整支持平台）目前包括[i386](../Page/X86.md "wikilink")、[AMD64](https://zh.wikipedia.org/wiki/AMD64 "wikilink")。第二线平台（Tier
2，发展平台）包括[ARM](https://zh.wikipedia.org/wiki/ARM "wikilink")、[IA-64](https://zh.wikipedia.org/wiki/IA-64 "wikilink")、[PC98](https://zh.wikipedia.org/wiki/PC98 "wikilink")、[PowerPC](../Page/PowerPC.md "wikilink")、。对于第一线与第二线平台，FreeBSD会维持维护及稳定性，同时大多数的新功能也都会被要求在这些平台上能够正常运作。

第三线平台（Tier
3，实验平台）目前包括了[MIPS及](https://zh.wikipedia.org/wiki/MIPS "wikilink")，这个等级的平台不被FreeBSD正式支持。

其他的平台都被歸類到第四線平台。

<table>
<thead>
<tr class="header">
<th><p>平台</p></th>
<th><p>支持等級</p></th>
<th><p>注意</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/x86" title="wikilink">IA-32</a></p></td>
<td><p>Tier 1</p></td>
<td><p>參見"i386"</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/x86-64" title="wikilink">x86-64</a></p></td>
<td><p>Tier 1</p></td>
<td><p>參見"amd64"</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/ARM_architecture" title="wikilink">ARM</a></p></td>
<td><p>Tier 2</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Itanium" title="wikilink">Itanium (IA-64)</a></p></td>
<td><p>Tier 2</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/NEC_PC-9801" title="wikilink">NEC PC-9801</a></p></td>
<td><p>Tier 2</p></td>
<td><p>參見"pc98"</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/PowerPC.md" title="wikilink">PowerPC</a></p></td>
<td><p>Tier 2</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Sun_Microsystems" title="wikilink">Sun</a> <a href="../Page/SPARC.md" title="wikilink">SPARC</a></p></td>
<td><p>Tier 2</p></td>
<td><p>只支援64-bit (V9)平台</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/MIPS_architecture" title="wikilink">MIPS</a></p></td>
<td><p>Tier 3</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Tier 3</p></td>
<td></td>
</tr>
</tbody>
</table>

## 版本與歷史

### FreeBSD初期歷史

FreeBSD的发展始于1993年，起源于。\[11\]然而，因为386BSD原始码的合理性受到质疑以及[Novell](../Page/Novell.md "wikilink")（当时[UNIX的版权拥有者](../Page/UNIX.md "wikilink")）与[柏克莱接连而来的诉讼](https://zh.wikipedia.org/wiki/柏克莱 "wikilink")，FreeBSD在1995年1月发布的2.0-RELEASE中以[柏克莱加州大学的](https://zh.wikipedia.org/wiki/柏克莱加州大学 "wikilink")4.4BSD-Lite
Release全面改写。[FreeBSD
Handbook](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/)中有更多FreeBSD的发展历史。

FreeBSD
2.0最值得注意的部份也许是对[卡内基美隆大学的Mach](https://zh.wikipedia.org/wiki/卡内基美隆大学 "wikilink")
Virtual Memory系统翻修以及FreeBSD Ports
system的发明。前者对于高负荷的系统优化，后者则是建立了一套简单且强大的机制维护第三方软件。有不少大型站台都使用FreeBSD，像是cdrom.com（一个巨大的软件收集站台），[Hotmail以及](https://zh.wikipedia.org/wiki/Hotmail "wikilink")[Yahoo](https://zh.wikipedia.org/wiki/Yahoo "wikilink")。

FreeBSD 3.0则引入了ELF
binary格式，并开始支持多CPU系统（[SMP](https://zh.wikipedia.org/wiki/對稱多處理機 "wikilink")，Symmetric
multiprocessing）以及64位[Alpha平台](https://zh.wikipedia.org/wiki/Alpha "wikilink")。3.x对于系统做了非常多的改革，这些措施在当时并没有带来好处，但却是4.X成功的基石。

### FreeBSD 4

4.0-RELEASE于2000年3月发行，最后一个版本4.11-RELEASE于2005年1月发行，并支持到2007年1月\[12\]。FreeBSD
4也是FreeBSD最长寿的主版本。在FreeBSD
4所发展出来的[kqueue也被移植到各种不同BSD平台](https://zh.wikipedia.org/wiki/kqueue "wikilink")。

### FreeBSD 5

Free BSD 5的最後一個版本FreeBSD5.5於2006年五月發行。

在FreeBSD 4的SMP架构下，在同一时间内只允许一个CPU进入核心（即Giant Lock），FreeBSD
5最大的改变在于改善底层核心Locking机制，审视并改写核心程序代码，使得不同的CPU可以同时进入系统核心，藉以增加效率。

另外一个重大的改变在于自5.3开始支持m:n[线程的](../Page/线程.md "wikilink")[KSE](https://zh.wikipedia.org/wiki/KSE "wikilink")（Kernel
Scheduled Entities），表示m个使用者线程共享n个核心线程的模式。

这个版本的许多贡献是由于商业化版本的BSD OS团队的支持。

### FreeBSD 6

FreeBSD 6为一个-STABLE发展版本，FreeBSD
6.3在2008年1月18日发行\[13\]，这个版本主要针对软件的更新，并加入lagg（可以对多张网卡操作）的支持，并引入重新改写的unionfs。FreeBSD
6.4在2008年11月28日发行\[14\]。

### FreeBSD 7

FreeBSD
7為目前第二個-STABLE發展版本，在2007年6月19日進入發行程序\[15\]，2008年2月27日7.0-RELEASE正式发布。2010年3月23日FreeBSD
7.3-RELEASE正式发布\[16\]。新增的功能包括了：

  - [SCTP](https://zh.wikipedia.org/wiki/SCTP "wikilink")（實做完成）\[17\]
  - [日志式](https://zh.wikipedia.org/wiki/日志式 "wikilink")[UFS](https://zh.wikipedia.org/wiki/UFS "wikilink")[文件系统](../Page/文件系统.md "wikilink")：gjournal（实做完成）\[18\]
  - 移植[升阳所发展的](https://zh.wikipedia.org/wiki/升阳 "wikilink")[DTrace](https://zh.wikipedia.org/wiki/DTrace "wikilink")（实做完成，但还未交付至[CVS](https://zh.wikipedia.org/wiki/CVS "wikilink")）
  - 移植升阳所发展的[ZFS文件系统](../Page/ZFS.md "wikilink")（实做完成）\[19\]
  - 使用[GCC](../Page/GCC.md "wikilink")4（移植完成，目前為4.2.1）\[20\]
  - 對[ARM與](https://zh.wikipedia.org/wiki/ARM "wikilink")[MIPS平台的支援](https://zh.wikipedia.org/wiki/MIPS "wikilink")
  - 重寫過的[USB](../Page/USB.md "wikilink")
    stack（實做完成，但還未交付至[CVS](https://zh.wikipedia.org/wiki/CVS "wikilink")）
  - Scalable concurrent malloc實做（已經可以使用）\[21\] \[22\]
  - [ULE](https://zh.wikipedia.org/wiki/ULE "wikilink")[排程表](https://zh.wikipedia.org/wiki/排程表 "wikilink")2.0（SCHED_ULE，實做完成）\[23\]，並修改加強為SCHED_SMP（實做完成），在交付至CVS時的正式名稱為ULE
    3.0\[24\]，這個版本在8核心的機器上以sysbench
    [MySQL測試的結果](../Page/MySQL.md "wikilink")，速度上比[Linux](../Page/Linux.md "wikilink")
    2.6快大約10%（無論是使用[Google的](../Page/Google.md "wikilink")[tcmalloc或是](https://zh.wikipedia.org/wiki/tcmalloc "wikilink")[glibc](https://zh.wikipedia.org/wiki/glibc "wikilink")+cfs）\[25\]
  - [Linux](../Page/Linux.md "wikilink") 2.6模擬層（已經可以使用）
  - [Camellia Block Cipher](../Page/Camellia.md "wikilink")（實做完成）\[26\]
    \[27\]
  - ZFS的运行

### FreeBSD 8

  - FreeBSD 8.0\[28\]
    FreeBSD 8.1\[29\]

2010年7月24日发布FreeBSD 8.1-RELEASE, \[30\] 增加如下新特性：\[31\]

  - 虚拟化方面：Xen DOM-U、VirtualBox guest及host支持、层次式jail。
  - NFS：对NFSv3 GSSAPI的支持，以及试验性的NFSv4客户端和服务器。
  - 802.11s D3.03 wireless mesh网络，以及虚拟Access Point支持。
  - [ZFS不再是试验性的了](../Page/ZFS.md "wikilink")。
  - 基于[Juniper
    Networks提供](https://zh.wikipedia.org/wiki/Juniper_Networks "wikilink")[MIPS处理器的实验性支持](https://zh.wikipedia.org/wiki/MIPS "wikilink")。
  - [SMP扩展性的增强](https://zh.wikipedia.org/wiki/對稱多處理機 "wikilink")，显着改善在16核心处理器系统中的性能。
  - [VFS加锁的重新实现](https://zh.wikipedia.org/wiki/VFS "wikilink")，显着改善文件系统的可扩展性。
  - 显着缓解缓冲区溢出和内核空指针问题。
  - 可扩展的内核安全框架（MAC Framework）现已正式可用。
  - 完全更新的USB堆栈改善了性能和设备兼容性，增加了USB target模式。

<!-- end list -->

  - FreeBSD 8.2\[32\]
    FreeBSD 8.3\[33\]
    FreeBSD 8.4\[34\]

### FreeBSD 9

  - FreeBSD 9.0\[35\]

FreeBSD 9.0于2012年1月发布，该版本是第一个9.x的FreeBSD稳定分支。该版本具有以下特性：

  - 采用了新的安装程序bsdinstall
  - [ZFS和](../Page/ZFS.md "wikilink")[NFS文件系统得到改进](https://zh.wikipedia.org/wiki/NFS "wikilink")
  - 升级了ATA/SATA驱动并支持AHCI
  - 采用[LLVM](../Page/LLVM.md "wikilink")/[Clang代替GCC](../Page/Clang.md "wikilink")
  - 高效的[SSH](https://zh.wikipedia.org/wiki/SSH "wikilink")（HPN-SSH）
  - [PowerPC版支持索尼的PS](../Page/PowerPC.md "wikilink")3

<!-- end list -->

  - FreeBSD 9.1\[36\]

FreeBSD 9.1於2012年11月發布

  - FreeBSD 9.2\[37\]

FreeBSD 9.2於2013年10月發布

  - FreeBSD 9.3\[38\]

FreeBSD 9.3於2014年7月發布

### FreeBSD 10

  - FreeBSD 10.0\[39\]

FreeBSD 10.0於2014年1月發布，这一版本包含的重要改进包括：

  - 在支持的平台上， [clang](https://zh.wikipedia.org/wiki/clang "wikilink")(1)
    取代 [GCC](../Page/GCC.md "wikilink")
    成为了默认的系统[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")。
  - 系統中引入了 Unbound 作为本地的緩存
    [DNS](https://zh.wikipedia.org/wiki/DNS "wikilink") 服務器。
  - 基本系统中删除了 BIND。
  - 使用来自 [NetBSD](../Page/NetBSD.md "wikilink") 的 bmake(1) 取代了原有的
    [make](https://zh.wikipedia.org/wiki/make "wikilink")(1)。
  - 使用了新的 pkg(7) 作为包管理工具。
  - 删去了舊式的包管理工具 pkg_add(1)、 pkg_delete(1)， 及其相關工具。
  - 對虛擬化支持進行了大幅强化，新增了 (8) 虛擬机，以及 virtio(4) 和對微軟  的原生半虛擬化支持。
  - 為 [ZFS](../Page/ZFS.md "wikilink") 添加了用於
    [SSD](https://zh.wikipedia.org/wiki/SSD "wikilink") 的 TRIM 支持。
  - 為 [ZFS](../Page/ZFS.md "wikilink") 添加了高性能的
    [LZ4](../Page/LZ4.md "wikilink") 壓縮算法支持。

<!-- end list -->

  - FreeBSD 10.1\[40\]

FreeBSD 10.1於2014年11月6日正式發布

  - FreeBSD 10.2\[41\]

FreeBSD 10.2於2015年8月13日正式發布。主要改進包括\[42\]：

  - [resolvconf](https://zh.wikipedia.org/wiki/resolvconf "wikilink")(8)
    更新至
    3.7.0，改进了[DNS隐私保护](https://zh.wikipedia.org/wiki/DNS "wikilink")。
  - [ntp](https://zh.wikipedia.org/wiki/ntp "wikilink") 更新至
    4.2.8p3，修正了大量先前版本的问题。
  - 新增了用于支持[虚拟化环境的](https://zh.wikipedia.org/wiki/虚拟化 "wikilink") rc(8)
    脚本
    [growfs](https://zh.wikipedia.org/wiki/growfs "wikilink")，用于在系统首次引导时扩大根文件系统。
  - 对 [Linux](../Page/Linux.md "wikilink")(R)
    ABI兼容支持进行了更新，以支持[Centos](https://zh.wikipedia.org/wiki/Centos "wikilink")(TM)
    6 ports.
  - 将 [drm](https://zh.wikipedia.org/wiki/drm "wikilink") 更新至
    [Linux](../Page/Linux.md "wikilink")(R) 3.8.13，支持同时运行多个 [X
    server](https://zh.wikipedia.org/wiki/X_server "wikilink")。
  - 针对 FreeBSD/arm 平台的大量更新及改进。
  - 多个 [ZFS](../Page/ZFS.md "wikilink") 相关性能及可靠性改进，增加了大块（1MB）支持。
  - [GNOME](../Page/GNOME.md "wikilink") 版本更新到了 3.14.2.
  - [KDE](../Page/KDE.md "wikilink") 版本更新到了 4.14.3.

<!-- end list -->

  - FreeBSD 10.3\[43\]

FreeBSD 10.3於2016年3月25日正式發布

### FreeBSD 11

  - FreeBSD 11.0\[44\]

FreeBSD 11.0於2016年9月22日正式發布

### 時間線

[<File:FreeBSD-TimeLine.png>](https://zh.wikipedia.org/wiki/File:FreeBSD-TimeLine.png "fig:File:FreeBSD-TimeLine.png")

## 命名规则

  - **A-CURRENT**

<!-- end list -->

  -
    在 -CURRENT分支所使用的[CVS](https://zh.wikipedia.org/wiki/CVS "wikilink")
    Tag为`.`，固定被称为A-CURRENT，如目前的
    -CURRENT分支为12-CURRENT，这个版本只建议开发者使用，通常在[邮件论坛上测试过觉得没有什么大问题的功能会先被加到这个分支里](https://zh.wikipedia.org/wiki/邮件论坛 "wikilink")。

<!-- end list -->

  - **A.B-STABLE**

<!-- end list -->

  -
    在 -STABLE分支里所使用的[CVS](https://zh.wikipedia.org/wiki/CVS "wikilink")
    Tag为`RELENG_A`，如目前的 -STABLE分支为`RELENG_10`与`RELENG_9`。许多新的功能在
    -CURRENT分支测试一段期间觉得没有问题后就会将该项功能逆向移植（MFC，Merge from
    current）回`RELENG_10`。

<!-- end list -->

  - **A.B-BETA**、**A.B-RC**

<!-- end list -->

  -
    這是當開發團隊認為 -STABLE分支有足夠的新功能或其他理由認為足以釋出新版的FreeBSD時，會先將 -STABLE分支的名稱改為
    -BETA，表示要進入Release Cycle。

<!-- end list -->

  - **A.B-RELEASE**

<!-- end list -->

  -
    在 -RELEASE分支里所使用的[CVS](https://zh.wikipedia.org/wiki/CVS "wikilink")
    Tag为`RELENG_A_B`或`RELENG_A_B_C`，这些CVS分支不会有功能的增加，只做安全性的维护。这些分支是在开发团队认为
    -STABLE内的功能累积到一定程度后，可以整理出来出新的版本。譬如6.2-RELEASE、5.4-RELEASE。

<!-- end list -->

  - **A.B.C-BETA**、**A.B.C-RC**、**A.B.C-RELEASE**

<!-- end list -->

  -
    當離上次釋出版本的時間太短時，FreeBSD團隊會考慮只在後面加上一個次要版號。

## 許可證

FreeBSD包含了[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")、[GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink")、[ISC许可证](https://zh.wikipedia.org/wiki/ISC许可证 "wikilink")、[通用开发与散布许可证和](../Page/通用开发与散布许可证.md "wikilink")[啤酒软件许可证的程序代码](https://zh.wikipedia.org/wiki/啤酒软件 "wikilink")，也有使用三条款和四条款的BSD许可证的程序代码。另外有些驱动程序也包涵了[二进制大型物件](https://zh.wikipedia.org/wiki/二进制大型物件 "wikilink")，像是[Atheros公司的](https://zh.wikipedia.org/wiki/Atheros "wikilink")[硬件抽象层](https://zh.wikipedia.org/wiki/硬件抽象层 "wikilink")。这使得所有人都可以自由地使用还有再散布FreeBSD。

不过，FreeBSD的核心和新开发的程序代码大多都使用两条款的[BSD许可证释出](../Page/BSD许可证.md "wikilink")，许多使用GPL的程序代码都必须经过[净室工程](https://zh.wikipedia.org/wiki/净室#作为软件工程的术语 "wikilink")，以其他授权方式重写，这主要是避免整个核心受到GPL影响。

## 已知問題

  - 在安装上，一般来说，FreeBSD所支持的硬件较[Linux为少](../Page/Linux.md "wikilink")。安装前请参考FreeBSD网站上Release
    Information \[45\]里要安装版本的Hardware Notes。
  - 壓縮/解壓縮工具
    /usr/bin/tar遺失的問題，大多數的第三方套件的安裝都是用tar去解壓縮的，有些第三方套件會覆蓋這個tar，如果新的tar無法正常產生，可能導致之後其它的第三方套件都無法安裝了。
  - 有些第三方套件在安裝時並不提供預設的組態檔，因此在安裝完後可能無法正常起動它們，需要另外手動去建立它們執行所需的組態檔。
  - 其他已知問題\[46\]

## 相关书籍

  - *Absolute BSD, The Ultimate Guide to FreeBSD*. Michael Lucas. No
    Starch Press, July 2002. ISBN 1-886411-74-3.
  - *BSD Hacks, 100 Industrial-Strength tips for BSD users and
    administrators*. Dru Lavigne. O'Reilly, May 2004. ISBN
    0-596-00679-9.
  - *The Complete FreeBSD, 4th Edition, Documentation from the Source*.
    Greg Lehey. O'Reilly, April 2003 ISBN 0-596-00516-4.
  - *The Design and Implementation of the FreeBSD Operating System*.
    [Marshall Kirk
    McKusick](https://zh.wikipedia.org/wiki/Marshall_Kirk_McKusick "wikilink")
    and George V. Neville-Neil. Pearson Education. ISBN 0-201-70245-2.
    Expected availability August 2004.
  - *The FreeBSD Corporate Networkers Guide*. Ted Mittelstaedt.
    Addison-Wesley, December 2000. Paperback, book & CD edition, 401
    pages. ISBN 0-201-70481-1.
  - *Designing BSD Rootkits: A Introduction to Kernel Hacking*. Joseph
    Kong, No Starch Press, US, March 29 2007. Paperback, 144 pages, ISBN
    1-59327-142-5.

## [IRC](../Page/IRC.md "wikilink")

正体中文：

  - [Freenode上的](../Page/Freenode.md "wikilink")\#bsdchat

其他channel可以參考[FreeBSD官方wiki](http://wiki.FreeBSD.org)的[IrcChannels](http://wiki.freebsd.org/IrcChannels)頁面。

## 参见

  - [BSD](../Page/BSD.md "wikilink")
  - [386BSD](https://zh.wikipedia.org/wiki/386BSD "wikilink")
  - [DragonFly BSD](../Page/DragonFly_BSD.md "wikilink")
  - [NetBSD](../Page/NetBSD.md "wikilink")
  - [OpenBSD](../Page/OpenBSD.md "wikilink")
  - [BSD小惡魔](../Page/BSD小惡魔.md "wikilink")
  - [FreeSBIE](https://zh.wikipedia.org/wiki/FreeSBIE "wikilink")

## 参考文献

## 外部链接

  - [FreeBSD官方站点](http://www.FreeBSD.org/)
  - [FreeBSD官方維基](http://wiki.FreeBSD.org/)
  - [FreeBSD中文网站](http://www.freebsd.org/zh_CN/)
  - [FreeBSD中国社区站点](http://www.freebsdchina.org/)
  - [www.freebsdsoftware.org](http://www.freebsdsoftware.org/)
  - [ChinaUnix UNIX技术站点](http://www.chinaunix.net/)
  - [FreeBSD使用手册](http://www.freebsd.org/doc/zh_CN/books/handbook/)
  - [FreeBSD使用手冊](http://www.freebsd.org/doc/zh_TW/books/handbook/)

{{-}}

[Category:BSD](https://zh.wikipedia.org/wiki/Category:BSD "wikilink")
[Category:自由操作系统](https://zh.wikipedia.org/wiki/Category:自由操作系统 "wikilink")
[Category:计算平台](https://zh.wikipedia.org/wiki/Category:计算平台 "wikilink")

1.
2.
3.
4.
5.
6.
7.  [The FreeBSD
    Copyright](http://www.freebsd.org/copyright/freebsd-license.html)
8.  [Additional FreeBSD
    Contributors](http://www.freebsd.org/doc/en/articles/contributors/contrib-additional.html)
9.  [The FreeBSD
    Developers](http://www.freebsd.org/doc/en/articles/contributors/staff-committers.html)
10. [Support for Multiple
    Architectures](http://www.freebsd.org/doc/en/articles/committers-guide/archs.html)
11. [About the FreeBSD
    Project](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/history.html)
12. [FreeBSD 4.x
    EoL](http://lists.freebsd.org/pipermail/freebsd-security/2006-October/004111.html)
13. <http://www.freebsd.org/releases/6.3R/announce.html>
14. <http://www.freebsd.org/releases/6.4R/announce.html>
15. <http://lists.freebsd.org/pipermail/cvs-src/2007-June/080102.html>
16. <http://www.freebsd.org/releases/7.3R/relnotes.html>
17. <http://lists.freebsd.org/pipermail/freebsd-current/2006-November/067218.html>
18. <http://lists.freebsd.org/pipermail/freebsd-current/2006-August/064932.html>
19. <http://lists.freebsd.org/pipermail/cvs-src/2007-April/076644.html>
20. <http://lists.freebsd.org/pipermail/cvs-src/2007-May/078451.html>
21. <http://lists.freebsd.org/pipermail/cvs-src/2006-January/058009.html>
22. <http://lists.freebsd.org/pipermail/freebsd-current/2007-March/070303.html>
23.
24. <http://lists.freebsd.org/pipermail/cvs-src/2007-July/080748.html>
25. <http://people.freebsd.org/~jeff/sysbench.png>
26. <http://lists.freebsd.org/pipermail/cvs-src/2007-May/078078.html>
27.
28.
29.
30. <http://www.freebsd.org/releases/8.1R/relnotes.html>
31. <http://www.freebsd.org/releases/8.0R/pressrelease.html>
32.
33.
34.
35.
36.
37.
38.
39.
40.
41.
42. <https://www.freebsdchina.org/document_28_70771.html>
43.
44.
45. <http://www.freebsd.org/releases/>
46.