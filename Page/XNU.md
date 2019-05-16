**XNU**是一个由[苹果电脑发展的用于](https://zh.wikipedia.org/wiki/苹果电脑 "wikilink")[macOS操作系统的](https://zh.wikipedia.org/wiki/macOS "wikilink")[操作系统](../Page/操作系统.md "wikilink")[内核](../Page/内核.md "wikilink")。它是[Darwin操作系统的一部分](../Page/Darwin_\(操作系统\).md "wikilink")，跟随着Darwin一同作为[自由及开放源代码软件被发布](../Page/自由及开放源代码软件.md "wikilink")。它还是[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")、[tvOS和](https://zh.wikipedia.org/wiki/tvOS "wikilink")[watchOS操作系统的内核](https://zh.wikipedia.org/wiki/watchOS "wikilink")。XNU是**X
is Not Unix**的缩写\[1\] 。

XNU最早是[NeXT公司为了](../Page/NeXT.md "wikilink")[NeXTSTEP操作系统而发展的](../Page/NeXTSTEP.md "wikilink")。它是一种[混合式核心](https://zh.wikipedia.org/wiki/混合式核心 "wikilink")（Hybrid
kernel），结合了由[卡内基美隆大学发展的](https://zh.wikipedia.org/wiki/卡内基美隆大学 "wikilink")[Mach](../Page/Mach.md "wikilink")
2.5版，[4.3BSD](../Page/BSD.md "wikilink")，与称为Driver
Kit的[面向对象程序设计](../Page/面向对象程序设计.md "wikilink")[应用程序界面](../Page/应用程序接口.md "wikilink")。

在苹果电脑收购NeXT公司之后，XNU的Mach微内核被升级到Mach
3.0，BSD的部分升级至[FreeBSD](../Page/FreeBSD.md "wikilink")，Driver
Kit则改成[I/O
Kit](https://zh.wikipedia.org/wiki/I/O_Kit "wikilink")，一套以[C++撰写的应用程序界面](../Page/C++.md "wikilink")。

## 内核设计

XNU是一个[混合内核](https://zh.wikipedia.org/wiki/混合核心 "wikilink")，将[宏内核与](https://zh.wikipedia.org/wiki/宏内核 "wikilink")[微内核两者的特性兼收并蓄](https://zh.wikipedia.org/wiki/微内核 "wikilink")，以期同时拥有两种内核的优点————比如在微内核中提高操作系统模块化程度以及让操作系统更多的部分接受[内存保护的](https://zh.wikipedia.org/wiki/内存保护 "wikilink")[消息传递机制](https://zh.wikipedia.org/wiki/訊息傳遞_\(軟體\) "wikilink")，和宏内核在高负荷下表现的高性能。

到2007年为止，XNU支持单核和具有[对称多处理的](https://zh.wikipedia.org/wiki/对称多处理 "wikilink")[ARM](https://zh.wikipedia.org/wiki/ARM "wikilink")\[2\]，[IA-32和](https://zh.wikipedia.org/wiki/IA-32 "wikilink")[x86-64处理器](https://zh.wikipedia.org/wiki/x86-64 "wikilink")。在第10版（即[Mac
OS X
10.6](../Page/Mac_OS_X_Snow_Leopard.md "wikilink")）之后，不再支持[PowerPC](../Page/PowerPC.md "wikilink")。

### Mach

XNU内核以一个被深度定制的[Mach](../Page/Mach.md "wikilink")3.0内核作为基础。如此这般，它便可以把操作系统的核心部分作为独立的进程运行，由此带来极大的灵活性（Mach核心之上可平行运行多个操作系统）。但是因为内核态/用户态的上下文切换会额外消耗时间，同时内核与服务进程之间的消息传递也会降低运行效率，所以这种设计通常会降低性能。为了提高效率，在
Mac OS X
中BSD部分与Mach一起内建于核心部分。深度定制的「混合」Mach3.0内核与传统BSD内核融合一体的产物就是一个「混合」内核，同时具有两者的优点与缺点。

### BSD

内核的[伯克利软件套件](../Page/BSD.md "wikilink")（BSD）部分提供了[POSIX应用程序接口](https://zh.wikipedia.org/wiki/POSIX "wikilink")（BSD系统称为API）：基于Mach的[任务之上的](../Page/作業_\(電腦\).md "wikilink")[Unix进程模型](https://zh.wikipedia.org/wiki/Unix "wikilink")，基本安全策略，用户和用户组，权限，[网络协议栈](../Page/协议栈.md "wikilink")，[虚拟文件系统](https://zh.wikipedia.org/wiki/虚拟文件系统 "wikilink")（包括一个文件系统无关的[日志层](https://zh.wikipedia.org/wiki/日志 "wikilink")），几个本地文件系统（例如[HFS](https://zh.wikipedia.org/wiki/HFS "wikilink")/[HFS+](../Page/HFS+.md "wikilink")），[网络文件系统](../Page/网络文件系统.md "wikilink")（NFS）客户端与服务器，加密框架，[UNIX
System
V](../Page/UNIX_System_V.md "wikilink")[进程间通信](https://zh.wikipedia.org/wiki/进程间通信 "wikilink")（IPC），审计机制，[强制访问控制](https://zh.wikipedia.org/wiki/强制访问控制 "wikilink")，和一些锁原语\[3\]。XNU中的BSD代码来自[FreeBSD内核](../Page/FreeBSD.md "wikilink")。尽管其中相当一部分代码都被深度修改过，苹果和FreeBSD项目之间依然会交换代码\[4\]。

### K32/K64

XNU在[Mac OS X 10.6 Snow
Leopard](../Page/Mac_OS_X_Snow_Leopard.md "wikilink")（[Darwin版本号](https://zh.wikipedia.org/wiki/Darwin "wikilink")10）及之后演化为两个分支，称为K32的[32位版和称为K](https://zh.wikipedia.org/wiki/32位 "wikilink")64的[64位版](https://zh.wikipedia.org/wiki/64位 "wikilink")\[5\]。K32可以在用户态运行64位应用。Mac
OS X 10.6
的新特性是在64位[用户空间运行XNU](https://zh.wikipedia.org/wiki/使用者空間 "wikilink")。在除2008年及之后的[Mac
Pro和](../Page/Mac_Pro.md "wikilink")[Xserve外的所有设备上](../Page/Xserve.md "wikilink")，K32是10.6
Server系统的默认内核，并且可以运行64位应用\[6\]。K64相比K32有如下几点优势\[7\]：

  - 可以管理超过32GB的内存，内存地址空间相比32位内核有巨大增长。
  - 缓存容量可以超过32位内核空间的限制，潜在提升I/O性能。
  - 当使用高性能网络设备或多个[GPU时性能会提升](https://zh.wikipedia.org/wiki/GPU "wikilink")，因为即使在[直接存储器访问DMA缓存很大的情况下内核也可以把所有设备映射在](https://zh.wikipedia.org/wiki/直接存储器访问 "wikilink")64位地址空间中。

在支持64位内核的机器启动时按下6和4按键会使机器使用K64启动。K64可以运行32位应用，但不会运行32位的内核模块，所以这些内核模块需要移植到K64才能被加载。

### I/O Kit

I/O Kit 是一个[设备驱动框架](../Page/驱动程序.md "wikilink")，用基于[Embedded
C++的](../Page/Embedded_C++.md "wikilink")[C++子集编写](../Page/C++.md "wikilink")\[8\]。借助它的[面向对象设计](../Page/面向对象程序设计.md "wikilink")，框架提供每种设备驱动需要的常见特性，以使驱动程序可以用更少的时间和代码完成。I/O
Kit
具有多线程设计，[对称多处理安全](https://zh.wikipedia.org/wiki/对称多处理 "wikilink")，支持热拔插设备和自动动态配置设备等特性。
很多设备驱动可以编写运行于[用户态](https://zh.wikipedia.org/wiki/用户态 "wikilink")，进一步提升了系统的稳定性。如果用户态的驱动崩溃，内核不会因此崩溃。但是，内核态的驱动崩溃会导致内核崩溃。磁盘适配器和网络适配器驱动、显卡驱动、[USB驱动和](../Page/USB.md "wikilink")[火线控制器驱动以及](../Page/IEEE_1394.md "wikilink")[虚拟机软件如](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")[VirtualBox](../Page/VirtualBox.md "wikilink")，Parallels
Desktop for Mac和[VMware
Fusion等的驱动都是典型的内核态驱动](../Page/VMware.md "wikilink")。

## 共享资源保护

为了在多核设备上安全运行，对共享资源（文件、数据结构等）
的访问必须被序列化，这样线程和进程就无法在同一时间修改同一资源。原子操作、自旋锁、[临界区块](../Page/臨界區段.md "wikilink")、[互斥锁](../Page/互斥锁.md "wikilink")（"mutexes"）和序列化标记（serializing
tokens）都可以实现防止访问冲突发生。从Mac OS X
10.4与Darwin8.0开始，XNU如较新版本的Linux与FreeBSD一样使用一种折中的互斥模型来获得在[多处理器系统上的高性能表现](../Page/多核心處理器.md "wikilink")。

## 参见

  - [内核](../Page/内核.md "wikilink")
  - [A/UX](https://zh.wikipedia.org/wiki/A/UX "wikilink")
  - [mkLinux](https://zh.wikipedia.org/wiki/mkLinux "wikilink")
  - [Darwin（操作系统）](../Page/Darwin_\(操作系统\).md "wikilink")苹果公司以XNU为内核发布的开源操作系统
  - [macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")苹果公司以XNU为内核发布的操作系统

## 参考资料

## 外部链接

  - [Apple Open Source Browser
    XNU](http://opensource.apple.com/source/xnu/)
  - [Unofficial mirror of XNU at
    GitHub](https://github.com/opensource-apple/xnu)
  - [XNU: The
    Kernel](http://osxbook.com/book/bonus/ancient/whatismacosx/arch_xnu.html)
    Amit Singh 于 2003年12月写的对XNU结构组成的概述
  - [Inside the Mac OS X
    Kernel](http://www.derchris.eu/ccc/24C3/mp4/24c3-2303-en-inside_the_macosx_kernel-COMPATIBLE.mp4)
    "This talk intends to clear up the confusion by presenting details
    of the Mac OS X kernel（这次演讲旨在通过深入介绍Mac OS X 内核来澄清误解）"

[Category:Mach](https://zh.wikipedia.org/wiki/Category:Mach "wikilink")
[Category:宏内核](https://zh.wikipedia.org/wiki/Category:宏内核 "wikilink")
[Category:macOS](https://zh.wikipedia.org/wiki/Category:macOS "wikilink")

1.
2.  [iPhone processor found: 620MHz ARM
    CPU](http://www.engadget.com/2007/07/01/iphone-processor-found-620mhz-arm/)
    (July 1, 2007) Retrieved January 6, 2008
3.
4.
5.  [Mac OS X 10.6 Snow Leopard: the Ars Technica review,
    page 5](http://arstechnica.com/apple/reviews/2009/08/mac-os-x-10-6.ars/5)
6.  [Mac OS X Server v10.6: Macs that use the 64-bit
    kernel](http://support.apple.com/kb/HT3770)
7.  [What's New in Mac OS X: Mac OS X
    v10.6](http://developer.apple.com/mac/library/releasenotes/MacOSX/WhatsNewInOSX/Articles/MacOSX10_6.html)
8.  [I/O Kit uses a restricted subset of
    C++](http://osxbook.com/book/bonus/ancient/whatismacosx/arch_xnu.html)