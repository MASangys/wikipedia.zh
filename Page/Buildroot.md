**Buildroot**是一组[Makefile和](https://zh.wikipedia.org/wiki/Makefile "wikilink")[Patch文件](https://zh.wikipedia.org/wiki/Patch "wikilink")，用来简化和自动化为[嵌入式系统建造一个完整和可引导的](../Page/嵌入式系统.md "wikilink")[Linux环境的过程](../Page/Linux.md "wikilink")，特别是在使用[交叉编译来允许在单一的基于Linux的开发系统上为多个目标平台进行建造的时候](https://zh.wikipedia.org/wiki/交叉编译器 "wikilink")。Buildroot可以自动建造所需要的交叉编译[工具链](https://zh.wikipedia.org/wiki/工具链 "wikilink")，建立[根文件系统](https://zh.wikipedia.org/wiki/根文件系统 "wikilink")，编译一个[Linux内核映像](../Page/Linux内核.md "wikilink")，并为目标嵌入式系统生成[引导装载器](https://zh.wikipedia.org/wiki/引导程序 "wikilink")，它还可以进行这些独立步骤的任何组合。例如可以独立的使用已经安装好的交叉编译工具链，而只用Buildroot建立根文件系统\[1\]\[2\]\[3\]\[4\]。

## 介绍

Buildroot主要意图用于小型或嵌入式系统，它们基于各种[计算机体系结构和](https://zh.wikipedia.org/wiki/计算机体系结构 "wikilink")[指令集之上](https://zh.wikipedia.org/wiki/指令集 "wikilink")，包括[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")、[ARM](https://zh.wikipedia.org/wiki/ARM架构 "wikilink")、[MIPS和](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")[PowerPC](../Page/PowerPC.md "wikilink")\[5\]。不仅支持大量的架构及其变体，Buildroot还随带了针对一些现成的嵌入式开发板的缺省配置，比如[Cubieboard](http://cubieboard.org/)、[Raspberry
Pi等](https://zh.wikipedia.org/wiki/Raspberry_Pi "wikilink")\[6\]\[7\]。一些第三方项目和产品使用Buildroot作为其建造系统的基础，包括建立了[嵌入式操作系统的](https://zh.wikipedia.org/wiki/嵌入式操作系统 "wikilink")[OpenWrt计划](../Page/OpenWrt.md "wikilink")，和[Google
Fiber宽带服务所用的](https://zh.wikipedia.org/wiki/Google_Fiber "wikilink")[用户驻地设备的](https://zh.wikipedia.org/wiki/CPE "wikilink")[固件](https://zh.wikipedia.org/wiki/固件 "wikilink")\[8\]\[9\]。

支持多个[C标准库作为工具链的一部分](https://zh.wikipedia.org/wiki/C标准库 "wikilink")，包括[GNU
C函数库](https://zh.wikipedia.org/wiki/GNU_C函数库 "wikilink")、[uClibc和](https://zh.wikipedia.org/wiki/uClibc "wikilink")[musl](https://zh.wikipedia.org/wiki/musl "wikilink")，当然还有属于各种预配置的开发环境的C标准库，比如[Linaro所提供的库](../Page/Linaro.md "wikilink")。Buildroot的建造配置系统内部使用了，它提供了一些特征，比如菜单驱动界面，[依赖性处理](https://zh.wikipedia.org/wiki/依赖性_\(计算机科学\) "wikilink")，；Kconfig也被Linux内核用于自身的源代码层面配置。Buildroot围绕大量自动下载的[软件包而进行组织](../Page/软件包管理系统.md "wikilink")，这包含了各种[用户空间应用](https://zh.wikipedia.org/wiki/用户空间 "wikilink")、系统实用工具和[函数库的](https://zh.wikipedia.org/wiki/函数库 "wikilink")[源代码](../Page/源代码.md "wikilink")。作为最终结果的根文件系统映像，可以使用各种[文件系统建造](../Page/文件系统.md "wikilink")，包括[cramfs](https://zh.wikipedia.org/wiki/cramfs "wikilink")、[JFFS2](https://zh.wikipedia.org/wiki/JFFS2 "wikilink")、[romfs](https://zh.wikipedia.org/wiki/romfs "wikilink")、[SquashFS和](../Page/SquashFS.md "wikilink")[UBIFS](../Page/UBIFS.md "wikilink")\[10\]\[11\]\[12\]。

Buildroot是[自由及开放源代码软件](../Page/自由及开放源代码软件.md "wikilink")，由Peter
Korsgaard维护并在[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")（GPL）版本2及以后版本下发行\[13\]。这个项目开始于2001年，最初意图用作uClibc的测试台。每三个月提供新的发行\[14\]\[15\]。

## 参见

  - [BitBake](../Page/BitBake.md "wikilink")
  - [BusyBox](../Page/BusyBox.md "wikilink")
  - [OpenEmbedded](../Page/OpenEmbedded.md "wikilink")
  - [uClibc](https://zh.wikipedia.org/wiki/uClibc "wikilink")
  - [Yocto计划](https://zh.wikipedia.org/wiki/Yocto计划 "wikilink")

## 引用

## 外部链接

  -
  - [Buildroot: What's
    new?](http://elinux.org/images/1/1d/Petazzoni-buildroot-whats-new.pdf),
    Embedded Linux Conference 2014, by Thomas Petazzoni

  - [Buildroot: A deep dive into the
    core](http://events.linuxfoundation.org/sites/events/files/slides/petazzoni-dive-into-buildroot-core.pdf),
    Embedded Linux Conference Europe 2014, by Thomas Petazzoni

  - [Deciding between Buildroot and
    Yocto](https://lwn.net/Articles/682540/),
    [LWN.net](https://zh.wikipedia.org/wiki/LWN.net "wikilink"), April
    6, 2016, by Nathan Willis

[Category:自动化构建](https://zh.wikipedia.org/wiki/Category:自动化构建 "wikilink")
[Category:嵌入式Linux](https://zh.wikipedia.org/wiki/Category:嵌入式Linux "wikilink")
[Category:自由電腦程式設計工具](https://zh.wikipedia.org/wiki/Category:自由電腦程式設計工具 "wikilink")

1.

2.

3.

4.

5.
6.

7.

8.
9.

10.
11.
12.

13.
14.
15.