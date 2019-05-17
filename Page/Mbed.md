**Mbed**是一个平台和[操作系统](../Page/操作系统.md "wikilink")，用于基于32-bit [ARM
Cortex-M微控制器的连接互联网的设备](https://zh.wikipedia.org/wiki/ARM_Cortex-M "wikilink")，这些设备也叫做[物联网设备](../Page/物联网.md "wikilink")。这个项目由[ARM和它的技术伙伴协作开发](https://zh.wikipedia.org/wiki/ARM_Holdings "wikilink")。

## 软件开发

### 应用

针对mbed平台的应用可以使用mbed在线[IDE来开发](../Page/集成开发环境.md "wikilink")，它是免费的在线代码编辑器和[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")。你只需要在本地PC上安装一个[网页浏览器](../Page/网页浏览器.md "wikilink")，因为你的项目是在[云端编译的](https://zh.wikipedia.org/wiki/云计算 "wikilink")，就是说是在远程服务器上使用ARMCC
C/C++编译器。mbed IDE
提供私有工作空间，有能力通过分布式[Mercurial](../Page/Mercurial.md "wikilink")[版本控制导入](../Page/版本控制.md "wikilink")、导出和分享代码，并且它还可以用于代码文档生成。应用还可以使用其他开发环境来开发，比如[Keil](https://zh.wikipedia.org/wiki/Keil_\(公司\) "wikilink")
µVision、[IAR](https://zh.wikipedia.org/wiki/IAR系统 "wikilink") Embedded
Workbench、和
[Eclipse加上](../Page/Eclipse.md "wikilink")[GCC](../Page/GCC.md "wikilink")
ARM嵌入式工具。

### SDK

mbed软件开发工具包（[SDK](https://zh.wikipedia.org/wiki/SDK "wikilink")）提供mbed
C/C++软件平台和工具用来建立微控制器[固件而运行在智能设备上](https://zh.wikipedia.org/wiki/固件 "wikilink")。它由提供微控制器外设驱动器和联网的核心库、[RTOS和运行时间环境](https://zh.wikipedia.org/wiki/RTOS "wikilink")、建造工具和测试及调式脚本构成。

构件数据库提供针对构件的驱动库和可以连接到微控制器而建造最终产品的服务。

## 硬件开发

### 演示开发板

[Mbed_RapidPrototypingBoard_with_NXP_LPC1768(ARM_Cortex-M3)_MCU.jpg](https://zh.wikipedia.org/wiki/File:Mbed_RapidPrototypingBoard_with_NXP_LPC1768\(ARM_Cortex-M3\)_MCU.jpg "fig:Mbed_RapidPrototypingBoard_with_NXP_LPC1768(ARM_Cortex-M3)_MCU.jpg")

现有各种针对mbed平台的硬件演示板，其首为最初的mbed Microcontroller board。mbed微控制器开发板（以“mbed
NXP
LPC1768”销售）是基于[NXP微控制器的演示板](https://zh.wikipedia.org/wiki/NXP_Semiconductors "wikilink")，它有一个[ARM
Cortex
M3核心](https://zh.wikipedia.org/wiki/ARM_Cortex-M#Cortex-M3 "wikilink")，运行于96 MHz，带有512 KB
[flash](../Page/闪存.md "wikilink")，64 KB
RAM，还有一些接口包括[以太网](../Page/以太网.md "wikilink")、[USB设备](../Page/USB.md "wikilink")、[CAN](https://zh.wikipedia.org/wiki/Controller_area_network "wikilink")、[SPI](https://zh.wikipedia.org/wiki/Serial_Peripheral_Interface_Bus "wikilink")、[I²C和其他](../Page/I²C.md "wikilink")[I/O](https://zh.wikipedia.org/wiki/I/O "wikilink")\[1\]\[2\]。mbed微控制器在2010年收到了第一个奖项，年度[EDN软件](https://zh.wikipedia.org/wiki/EDN_\(杂志\) "wikilink")/嵌入式工具类创新奖\[3\]。

这个开发板还发行了各种版本，包括[NXP](https://zh.wikipedia.org/wiki/NXP "wikilink")
[LPC2368](https://zh.wikipedia.org/wiki/NXP_LPC "wikilink")（[ARM7TDMI-S](https://zh.wikipedia.org/wiki/ARM7 "wikilink")）、NXP
[LPC1768](https://zh.wikipedia.org/wiki/NXP_LPC "wikilink")（[Cortex-M3](https://zh.wikipedia.org/wiki/ARM_Cortex-M#Cortex-M3 "wikilink")）、NXP
[LPC11U24](https://zh.wikipedia.org/wiki/NXP_LPC "wikilink")（[Cortex-M0](https://zh.wikipedia.org/wiki/ARM_Cortex-M#Cortex-M0 "wikilink")）微控制器\[4\]。

### HDK

mbed硬件开发工具包（HDK）为[OEM设计](https://zh.wikipedia.org/wiki/OEM "wikilink")，提供信息来建造定制硬件以支持mbed
SDK。它由接口固件和用来容易的建立开发板的schematics、OEM模块和适用于生产的re-programmable产品构成。

## 项目开发

这个项目由ARM联合其他主要技术公司和mbed开发者社区开发。开发和贡献出现在不同层次上：

  - 核心平台 –
    核心软件平台由核心贡献者和伙伴公司开发，由mbed团队维护。这个核心平台是在[Apache许可证](../Page/Apache许可证.md "wikilink")2.0下经由贡献者同意而开发的。这包括平台提供的所有核心通用软件构件，加上HAL迁移性允许mbed透明的运行在不同制造商的微控制器上，和TOOLCHAIN迁移性允许开发使用不同的嵌入式[工具链](https://zh.wikipedia.org/wiki/工具链 "wikilink")。
  - 构件数据库 –
    库构件由各公司和更广泛的社区开发，它提供对各种外设构件、传感器、无线广播、协议和云服务API的支持，这是建造最终设备所需要的。这些是在[Apache许可证](../Page/Apache许可证.md "wikilink")2.0（鼓励）或其它创立者选择的许可证下贡献的，并由这些个体公司和开发开发者社区支持。

## 引用

## 外部连接

  -
[Category:ARM_操作系统](https://zh.wikipedia.org/wiki/Category:ARM_操作系统 "wikilink")
[Category:微控制器](https://zh.wikipedia.org/wiki/Category:微控制器 "wikilink")

1.  [Review on
    hackaday.com](http://hackaday.com/2009/11/21/review-mbed-nxp-lpc1768-microcontroller/)
2.  [Review on
    devmonkey.edn.com](http://www.edn.com/electronics-blogs/dev-monkey-blog/4408558/An-mbed-Module-to-the-Rescue)
3.  [ARM press
    release](http://www.arm.com/about/newsroom/arm-wins-edn-innovation-award-for-mbed-microcontroller-at-esc-silicon-valley.php)
4.  [mbed Cortex M0 LPC11U24
    announcement](http://mbed.org/blog/entry/Look-what-just-turned-up-at-mbed-HQ)