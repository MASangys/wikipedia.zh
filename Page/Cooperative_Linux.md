**Cooperative Linux** 简称
**coLinux**，这个软件可以让[Windows内核与](https://zh.wikipedia.org/wiki/Windows内核 "wikilink")[Linux内核](../Page/Linux内核.md "wikilink")同时运行在一台机器上。\[1\]
coLinux
指协作式[虚拟机](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")（CVM）。与传统的虚拟机相反，
协作式虚拟机共享宿主机器已有的资源。传统的虚拟机技术，宿主机资源需先被虚拟化，然后再给虚拟系统使用。不同于传统虚拟技术，coLinux的客体机对宿主机资源具有完全的控制权。在传统的虚拟技术里，客体机对实体机的访问一直处于某种未授权状态。

## 概览

[Ubuntu_on_Windows_-_running_Synaptic_and_nautilus.png](https://zh.wikipedia.org/wiki/File:Ubuntu_on_Windows_-_running_Synaptic_and_nautilus.png "fig:Ubuntu_on_Windows_-_running_Synaptic_and_nautilus.png")
and
[nautilus](https://zh.wikipedia.org/wiki/Nautilus_\(file_manager\) "wikilink")
running on Windows\]\]

这里“协作”的意思是两者可以并发的工作。实际上，coLinux是将两个不同的操作系统内核变成了两个大[协程](../Page/协程.md "wikilink")。每个内核都会有其自己的CPU环境以及内存空间，并且自己决定什么时候将控制权交给另一内核。
虽然，理论上，两个内核理论上都能够完全访问硬件资源，但是,
让两个不同的操作系统内核同时访问相同硬件，这并不是现代计算机硬件的计目标。因此，需由宿主机的内核来主控真实硬件，而客体机内核通过特别的驱动与宿主机相通信，并为客体机提供各种重要的设备的接口。任何一种允许coLinux的便捷驱动运行在CPLO模式（特权级别
[ring 0](https://zh.wikipedia.org/wiki/ring_0 "wikilink"))
并且允许其分配内存的操作系统都可以作为coLinux的宿主机。\[2\]

## 历史

[Dan
Aloni早期的开发基于一个叫User](https://zh.wikipedia.org/wiki/Dan_Aloni "wikilink")-mode
Linux的类似系统。他于2004年6月25日开始coLinux的正式开发。\[3\]在2004年7月， 他向Linux Symposium
递交相关论文\[4\]，源码在[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")下释出。然后开发者们开始贡献各种补丁及添加代码。

## 比较

coLinux与x86平台上的完全虚拟化有明显的不同，一般意义上的虚拟化程序并没有像宿主机内核类似的特权。与传统技术不同，
coLinux通过运行一个修改过的Linux内核来与宿主机的NT内核协作式地共享资源，防止两者陷入[竞争危害](https://zh.wikipedia.org/wiki/竞争危害 "wikilink")。

## 发行版本

现在，大多数的变更补丁都是针对[i386平台这一分支的](https://zh.wikipedia.org/wiki/i386 "wikilink")，这也是目前coLinux唯一支持的架构。其它的变更主要在虚拟驱动程序上，比如cobd（块设备），conet（网络）以及cocon（控制台）。在i386分支上的这些变更代码大部分与初始化及设置有关。与正式的i386
Linux内核尽量保持一致,
这是coLinux内核设计的一个目标，因此，所有的变更必需尽可能地保持本地化与最小化。coLinux软件在[Windows
2000或](../Page/Windows_2000.md "wikilink")[Windows
XP的机器内安装运行了一个](../Page/Windows_XP.md "wikilink")[Linux内核](../Page/Linux内核.md "wikilink")以及一个虚拟网络设备，并不像VMware一样使用一个虚拟的机器。[Debian](../Page/Debian.md "wikilink")，[Ubuntu](../Page/Ubuntu.md "wikilink")，[Fedora](../Page/Fedora.md "wikilink")及[Gentoo这些都是非常受coLinux用户欢迎的Linux发行版本](https://zh.wikipedia.org/wiki/Gentoo "wikilink")。由于虚拟硬件不同寻常的结构，在coLinux下安装一个Linux发行版本似乎有点困难。因此用户通常使用一个已经安装好Linux系统的分区，或者使用官方预先准备的[系统镜像文件](https://zh.wikipedia.org/wiki/系统镜像 "wikilink")。这些镜像有多种生成方法。像是从正常的操作系统提取，或是，
想方设法安装在特殊的硬件上，
又或者，通过包管理器手动的构建安装包，也可以是简单的利用[yum](https://zh.wikipedia.org/wiki/yum "wikilink")，[apt这个的工具来升级已有镜像系统](https://zh.wikipedia.org/wiki/apt "wikilink")。还有一个简单的方法也可以得到一个最新的系统镜像，首先，利用[QEMU](../Page/QEMU.md "wikilink")来安装所需Linux系统，
然后，通过去掉原镜像的头63512字节块的数据达成“转换”镜像的目的。
这个方法在coLinux的wiki而面有论述。coLinux并不需要访问本地的显示设备，当然，这也使得[X
Window系统](https://zh.wikipedia.org/wiki/X_Window系统 "wikilink") 或者 [X.Org
Server无法在coLinux下直接运行](../Page/X.Org_Server.md "wikilink")，但是你还是可以在Windows下装个[Cygwin/X或者](https://zh.wikipedia.org/wiki/Cygwin/X "wikilink")[Xming一类的工具](https://zh.wikipedia.org/wiki/Xming "wikilink")，使你可使用coLinux的[KDE](../Page/KDE.md "wikilink")（或[GNOME](../Page/GNOME.md "wikilink")）及其它几乎任何的Linux的程序。这些的图形界面的问题在coLinux的洐生版[andLinux及](https://zh.wikipedia.org/wiki/andLinux "wikilink")[TopologiLinux里都得到的解决](https://zh.wikipedia.org/wiki/TopologiLinux "wikilink")。andLinux基于[Ubuntu](../Page/Ubuntu.md "wikilink")，
TopologiLinux基于[Slackware](../Page/Slackware.md "wikilink")。

## 硬件仿真

基于[TAP](https://zh.wikipedia.org/wiki/TAP "wikilink")，[PCAP](https://zh.wikipedia.org/wiki/PCAP "wikilink")，[NDIS及](https://zh.wikipedia.org/wiki/NDIS "wikilink")[SLiRP的以太网](https://zh.wikipedia.org/wiki/SLiRP "wikilink")。

## 局限

  - 不支持64位Windows或Linux（这样就无法使用超过4GB的内存）， 但社区已经在开发相关版本。\[5\]
  - 不支持多处理器（[对称多处理](https://zh.wikipedia.org/wiki/对称多处理 "wikilink")），Linux
    程序和底层内核都只能使用一个 CPU。\[6\]

## 参见

  - [Topologilinux](https://zh.wikipedia.org/wiki/Topologilinux "wikilink"),
    一个基于[Slackware](../Page/Slackware.md "wikilink")的coLinux发布版本
  - [andLinux](https://zh.wikipedia.org/wiki/andLinux "wikilink"),
    一个基于[Ubuntu](../Page/Ubuntu.md "wikilink")的coLinux的发布版本
  - [虚拟机](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")
  - [虚拟化平台的比较](https://zh.wikipedia.org/wiki/虚拟化平台的比较 "wikilink")
  - [Cygwin](../Page/Cygwin.md "wikilink")
  - [MSYS](https://zh.wikipedia.org/wiki/MSYS "wikilink")
  - [Wubi](../Page/Wubi.md "wikilink")
  - [双重引导](https://zh.wikipedia.org/wiki/双重引导 "wikilink")

## 参考

## 外部链接

  - [coLinux Home page](http://www.colinux.org/)
  - [coLinux Sourceforge page](http://sourceforge.net/projects/colinux/)
  - [coLinux Wiki](http://colinux.wikia.com/)
  - [Virtualization with
    coLinux](https://web.archive.org/web/20080203041828/http://www.ibm.com/developerworks/library/l-virtualization-colinux/)
    a developerWorks by M. Tim Jones
  - [speedLinux](http://sourceforge.net/projects/freetzlinux/)
  - [Portable Ubuntu
    Remix](http://sourceforge.net/projects/portableubuntu/), another
    Ubuntu-based coLinux distribution

[Category:免费虚拟化软件](https://zh.wikipedia.org/wiki/Category:免费虚拟化软件 "wikilink")
[Category:虛擬化軟體](https://zh.wikipedia.org/wiki/Category:虛擬化軟體 "wikilink")
[Category:仅运行在Windows的免费软件](https://zh.wikipedia.org/wiki/Category:仅运行在Windows的免费软件 "wikilink")

1.  [coLinux main website](http://www.colinux.org/)
2.  <http://colinux.org/> coLinux main page
3.  [Dan Aloni announces Cooperative
    Linux](http://lkml.org/lkml/2004/1/25/96)
4.  [Dan Aloni paper presented July 2004 at Linux
    Symposium](http://www.colinux.org/publications/Reprint-Aloni-OLS2004.pdf)
5.  [64 bit development information and
    resources](http://colinux.wikia.com/wiki/Dashboard_for_developing_a_64_bit_coLinux)
6.  [1](http://colinux.wikia.com/wiki/FAQ)