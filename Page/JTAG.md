**JTAG**是**联合测试工作组（Joint Test Action
Group）**的简称，是在名为**标准测试访问端口和边界扫描结构**的[IEEE的标准](https://zh.wikipedia.org/wiki/电气电子工程师协会 "wikilink")1149.1的常用名称。此标准用于驗證設計與測試生產出的印刷電路板功能。

1990年JTAG正式由IEEE的1149.1-1990号文档标准化，在1994年，加入了补充文档对[边界扫描描述语言](https://zh.wikipedia.org/wiki/边界扫描描述语言 "wikilink")（BSDL）进行了说明。从那时开始，这个标准被全球的电子企业广泛采用。边界扫描几乎成为了JTAG的同义词。

在設計印刷電路版時，目前最主要用在測試[積體電路的副區塊](https://zh.wikipedia.org/wiki/積體電路 "wikilink")，而且也提供一個在[嵌入式系統很有用的偵錯機制](https://zh.wikipedia.org/wiki/嵌入式系統 "wikilink")，提供一個在系統中方便的"後門"。當使用一些偵錯工具像[電路內模擬器用JTAG當做訊號傳輸的機制](../Page/在线仿真器.md "wikilink")，使得程式設計師可以經由JTAG去讀取整合在CPU上的偵錯模組。偵錯模組可以讓程式設計師偵錯[嵌入式系統中的軟體](https://zh.wikipedia.org/wiki/嵌入式系統 "wikilink")。

## 電氣特性

JTAG的介面是一種特殊的4/5個接腳介面連到晶片上 ，所以在電路版上的很多晶片可以將他們的JTAG接腳通过[Daisy
Chain的方式連在一起](https://zh.wikipedia.org/wiki/Daisy_Chain "wikilink")，并且[Probe只需连接到一个](https://zh.wikipedia.org/wiki/Probe "wikilink")“JTAG端口”就可以访问一块[印刷電路板上的所有IC](https://zh.wikipedia.org/wiki/印刷電路板 "wikilink")。这些连接引脚是：

1.  TDI（测试数据输入）
2.  TDO（测试数据输出）
3.  TCK（测试时钟）
4.  TMS（测试模式选择）
5.  TRST（测试复位）可选。

[Jtag_chain.svg](https://zh.wikipedia.org/wiki/File:Jtag_chain.svg "fig:Jtag_chain.svg")

因为只有一条数据线，通信协议有必要像其他[串行设备接口](https://zh.wikipedia.org/wiki/Category:串行总线 "wikilink")，如[SPI一样为串列傳輸](../Page/序列周邊介面.md "wikilink")。时钟由TCK引脚输入。配置是通过TMS引脚采用[状态机的形式一次操作一位来实现的](https://zh.wikipedia.org/wiki/状态机 "wikilink")。每一位数据在每个TCK时钟脉冲下分别由TDI和TDO引脚传入或传出。可以通过加载不同的命令模式来读取芯片的标识，对输入引脚采样，驱动（或悬空）输出引脚，操控芯片功能，或者旁路（将TDI与TDO连通以在逻辑上短接多个芯片的链路）。TCK的工作频率依芯片的不同而不同，但其通常工作在10-100MHz（每位10-100ns）。

当在集成电路中进行边界扫描时，被处理的信号是在同一块IC的不同功能模块间的，而不是不同IC之间的。

TRST引脚是一个可选的相对待测逻辑低电平有效的复位开关——通常是异步的，但有时也是同步的，依芯片而定。如果该引脚没有定义，则待测逻辑可由同步时钟输入复位指令而复位。

尽管如此，极少消费类产品提供外部的JTAG端口接口，但作为开发[样品的残留](https://zh.wikipedia.org/wiki/样品 "wikilink")，这些接口在[印刷电路板上十分常见](../Page/印刷电路板.md "wikilink")。在研发后，这些接口常常为[反向工程提供了非常良好的途径](https://zh.wikipedia.org/wiki/反向工程 "wikilink")。
[Jtag_statechart.png](https://zh.wikipedia.org/wiki/File:Jtag_statechart.png "fig:Jtag_statechart.png")

## 常用的扩展

关于制造商的扩展：[英飞凌](https://zh.wikipedia.org/wiki/英飞凌 "wikilink")，MIPS
[EJTAG](https://web.archive.org/web/20060519130244/http://www.mips.com/content/Documentation/MIPSDocumentation/EJTAG/doclibrary)，[飞思卡尔COP](../Page/飞思卡尔.md "wikilink"),
[ARM](https://zh.wikipedia.org/wiki/ARM架构 "wikilink") ETM (Extended
Trace Macrocell), OnCE etc.

## 广泛的应用

  - 几乎所有的[嵌入式系统都具有JTAG端口](../Page/嵌入式系统.md "wikilink")。
  - [PCI总线接口包含JTAG引脚](https://zh.wikipedia.org/wiki/PCI "wikilink")。一种特殊的JTAG卡可以用来刷新被破坏了的[BIOS](../Page/BIOS.md "wikilink")。

## 客户端软件

可以通过使用一些支持JTAG的应用程序来访问JTAG接口。

### 免费软件

  - [Very cheap
    interface](https://web.archive.org/web/20080915192653/http://ar7.wikispaces.com/JTAG)
    working with the
    [CICLaMaB](https://web.archive.org/web/20060717105035/http://ciclamab.altervista.org/index_en.htm)
    program
  - [OpenCores JTAG
    module](https://web.archive.org/web/20050825005844/http://www.opencores.org/projects.cgi/web/jtag/overview)是一个[IP核](https://zh.wikipedia.org/wiki/IP核 "wikilink")，它可为你的设计提供JTAG。它是[OpenCores工程的一部分](https://zh.wikipedia.org/wiki/OpenCores "wikilink")。
  - [UrJTAG](http://urjtag.org/)，born out of the
    [openwince](http://openwince.sourceforge.net/) project's [JTAG
    Tools](http://openwince.sourceforge.net/jtag/)，supports a large set
    of inexpensive [IEEE
    1284](https://zh.wikipedia.org/wiki/IEEE_1284 "wikilink") parallel
    printer port and USB JTAG cables
  - [JTAG-ARM9](http://jtag-arm9.sourceforge.net/) provides a JTAG
    access program for the
    [ARM9](https://zh.wikipedia.org/wiki/ARM_architecture "wikilink")
    processor.
  - [JTAG for the
    LART](https://web.archive.org/web/20060207141803/http://www.lart.tudelft.nl/projects/jtag/)
    aimed at the LART processor
  - [JTAG base layer](http://recycle.lbl.gov/~ldoolitt/jtag.html) is an
    attempt at creating a JTAG library
  - The [uCLinux](https://zh.wikipedia.org/wiki/uCLinux "wikilink") for
    [Blackfin](https://zh.wikipedia.org/wiki/Blackfin "wikilink")
    project have a
    [JTAG](https://web.archive.org/web/20060716115520/http://blackfin.uclinux.org/projects/jtag/)-backend
    for the [GNU
    Debugger](https://zh.wikipedia.org/wiki/GNU除錯器 "wikilink") and
    a [JTAG
    Tools](https://web.archive.org/web/20060829140904/http://blackfin.uclinux.org/projects/jtagtools/)
    version specifically for Blackfin based on the openwince work
  - [JTAG toolkit](http://www.jtag.tk/) is a free software JTAG tool
    suite, including API library and several examples
  - [OpenOCD](https://web.archive.org/web/20060721094549/http://openocd.berlios.de/web/)
    is an GPL Open Source
    [GDB](https://zh.wikipedia.org/wiki/GNU除錯器 "wikilink") Server
    that currently supports ARM7 and some ARM9 Targets

### 私有软件

  - [JTAG ScanWorks](http://www.asset-intertech.com/) JTAG development
    systems.
  - [JTAG DFT
    Analysis](http://www.asset-intertech.com/jtag_scanworks_dft_analyzer.html)
    JTAG Design for Test software.
  - [JTAG Technologies](http://www.jtag.com/) Test and programming
    development systems.
  - [TopJTAG Probe](http://www.topjtag.com/probe/) Interactive
    JTAG/boundary-scan software for circuit debugging and visualization.
  - [Green Hills Software](http://www.ghs.com/) *MULTI Debugger and
    Green Hills Probe*, Software and hardware supports JTAG and BDM
    based development on ARM, XScale, PowerPC, MIPS, ColdFire, Blackfin,
    ARC, TI C6000, v800, StarCore, SH, M32R, and LSI ZSP.
  - [Ronetix](http://www.ronetix.at/) *PEEDI*, JTAG Emulator and Flash
    Programmer for ARM7/9, XScale
  - [SEGGER Microcontroller Systeme
    GmbH](https://zh.wikipedia.org/wiki/Segger_Microcontroller_Systems "wikilink")
    *j-link*, USB to JTAG interface for ARM cores（J-Flash, J-Mem, RDI
    Pro Bundle）
  - [SEGGER Microcontroller Systems LLC](http://www.segger-us.com/)
    *j-trace*, a USB to Trace Mictor and JTAG interface for ARM cores
  - [Lauterbach Datentechnik
    GmbH](https://zh.wikipedia.org/wiki/Lauterbach_Datentechnik_GmbH "wikilink")
    produce JTAG-based in-circuit emulators the most popular being
    *TRACE 32*
  - [Macraigor Systems LLC](http://www.macraigor.com/) JTAG Commander
    and OCD Commander
  - [Abatron
    AG's](https://web.archive.org/web/20060719221057/http://www.abatron.ch/)
    BDI-2000 acts as a GDB server on your LAN, giving you source-level
    debugging via JTAG.
  - [JTAG Emulator Embedded Toolsmiths](http://www.etoolsmiths.com/)
    Guardian-SE JTAG Emulator connects a GDB server on your LAN to the
    JTAG interface on PowerPC, MIPS, XScale and Arm Processors. This
    allows: JTAG FLASH Programming, JTAG Emulation and JTAG source-level
    debugging via JTAG for PowerPC, MIPS, XScale and ARM Processors.
  - [XJTAG](http://www.xjtag.com/) Development System
  - [Göpel electronic](http://www.goepel.com/) SCANFLEX
  - [Corelis](http://www.corelis.com/) ScanExpress
  - [yaJFP](http://zykeji.taobao.com/) Zheyuan Technlogies

## 外部链接

  - [什么是JTAG那么，我怎么样才能利用它呢？](https://www.xjtag.com/zh-hans/about-jtag/what-is-jtag/)
  - [JTAG
    Tutorial](http://www.asset-intertech.com/Products/Boundary-Scan-Test/BST-Software#BSTResources)关于JTAG或边界扫描的简介。
  - [JTAG/Boundary-scan
    explained](http://www.boundary-scan.co.uk/)知识库以及工业连接。
  - [JTAG FAQ](http://hri.sourceforge.net/tools/jtag_faq_org.html)
  - [OpenJTAG
    Wiki](https://web.archive.org/web/20060718050546/http://www.openjtag.net/wiki/)
  - [JTAG边界扫描接口的一个简明介绍](https://archive.is/20060513033454/http://www.inaccessnetworks.com/ian/projects/ianjtag/jtag-intro/jtag-intro.html)
  - [JTAG Scan Educator - Ver. 2 (Rev.
    A)](http://focus.ti.com/docs/apps/catalog/resources/appnoteabstract.jhtml?abstractName=satb002a)
    - 一个[DOS下的教学软件](../Page/MS-DOS.md "wikilink")，JTAG Scan
    Educator，介绍了IEEE 1149.1边界扫描标准的基本情况，包括框架协议，以及所需的指令集。

<!-- end list -->

  - [K9JTAG](https://web.archive.org/web/20060720065507/http://www.k9spud.com/jtag/)
    - 一个便宜的为ARM微控制器的JTAG调试器而自制的并行端口。
  - [Boundary-Scan Testing/JTAG](http://www.siliconfareast.com/jtag.htm)
    - www.SiliconFarEast.com
  - [Segger J-Link](http://www.segger.com/jlink.html)（JTAG仿真器）
  - [Segger-US
    J-Link](https://web.archive.org/web/20060514194125/https://www.segger-us.com/jlink.html)（JTAG仿真器）
  - [Circuit Cellar Article (*SOFTWARE BREAKPOINTS IN FLASH MEMORY FOR
    ARM
    MCUs*)](https://web.archive.org/web/20070311133130/http://www.circuitcellar.com/library/newproducts/180/segger.htm)

[Category:IEEE标准](https://zh.wikipedia.org/wiki/Category:IEEE标准 "wikilink")
[Category:电子制造](https://zh.wikipedia.org/wiki/Category:电子制造 "wikilink")
[Category:嵌入式系统](https://zh.wikipedia.org/wiki/Category:嵌入式系统 "wikilink")