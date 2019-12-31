> 本文内容由[QEMU](https://zh.wikipedia.org/wiki/QEMU)转换而来。


**QEMU**（quick emulator）是一款由Fabrice Bellard等人编写的免费的可执行[硬件虚拟化](../Page/硬件虚拟化.md "wikilink")的（hardware virtualization）开源托管[虚拟机](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")（VMM）。

其与[Bochs](../Page/Bochs.md "wikilink")，[PearPC](../Page/PearPC.md "wikilink")类似，但拥有高速（配合[KVM](https://zh.wikipedia.org/wiki/KVM "wikilink")），跨平台的特性。

QEMU是一个托管的虚拟机镜像，它通过动态的二进制转换，模拟[CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")，并且提供一组设备模型，使它能够运行多种未修改的客户机OS，可以通过与[KVM](https://zh.wikipedia.org/wiki/KVM "wikilink")（kernel-based virtual machine开源加速器）一起使用进而接近本地速度运行虚拟机（接近真实电脑的速度）。

QEMU还可以为user-level的进程执行CPU仿真，进而允许了为一种架构编译的程序在另外一种架构上面运行（藉由VMM的形式）。

__TOC__

## 系统模块

QEMU有多种模式\[1\]

  - User mod：又称作“使用者模式”，在这种模块下，QEMU运行针对不同指令编译的单个[Linux](../Page/Linux.md "wikilink")或[Darwin](https://zh.wikipedia.org/wiki/Darwin "wikilink")/[macOS程序](https://zh.wikipedia.org/wiki/macOS "wikilink")。系统调用与32/64位接口适应。在这种模式下，我们可以实现交叉编译（cross-compilation）与交叉偵错（cross- debugging）。

<!-- end list -->

  - System mod：“系统模式”，在这种模式下，QEMU模拟一个完整的计算机系统，包括外围设备。它可以用于在一台计算机上提供多台虚拟计算机的虚拟主机。 QEMU可以实现许多客户机OS的引导，比如x86，MIPS，32-bit ARMv7，PowerPC等等。

<!-- end list -->

  - KVM Hosting：QEMU在这时处理KVM镜像的设置与迁移，并参加硬件的仿真，但是客户端的执行则由KVM完成。

<!-- end list -->

  - Xen Hosting：在这种托管下，客户端的执行几乎完全在[Xen](../Page/Xen.md "wikilink")中完成，并且对QEMU屏蔽。QEMU只提供硬件仿真的支持。

## 架构

QEMU的架构由纯软件实现，并在Guest与Host中间，来处理Guest的硬件请求，并由其转译给真正的硬件。

然而因为QEMU是纯软件实现的，所有的指令都要经过QEMU，使得性能很差，而配合KVM则可以解决这一问题。

QEMU虚拟化的思路是：提取Guest代码，翻译为**TCG**中间代码，而后翻译为**Host**代码。相当于实现了一个“中间人”的角色。

## 特性

QEMU可以在运行所有程序的情况下保存和恢复虚拟机的状态。**客户操作系统**（Guest Operating System）不需要修补就可以在QEMU中运行。

QEMU支持仿真各种体系结构，包括：

  - [IA-32](https://zh.wikipedia.org/wiki/IA-32 "wikilink")（x86）个人电脑

<!-- end list -->

  - [x86-64个人电脑](https://zh.wikipedia.org/wiki/x86-64 "wikilink")

<!-- end list -->

  - [MIPS64](https://zh.wikipedia.org/wiki/MIPS64 "wikilink") Release 6\[2\]和更早的版本

<!-- end list -->

  - Sun的SPARC [sun4m](https://zh.wikipedia.org/wiki/sun4m "wikilink")

<!-- end list -->

  - Sun的SPARC [sun4u](https://zh.wikipedia.org/wiki/sun4u "wikilink")

<!-- end list -->

  - [ARM开发板](https://zh.wikipedia.org/wiki/ARM "wikilink")（Integrator / CP和Versatile / PB）

<!-- end list -->

  - [SH4](https://zh.wikipedia.org/wiki/SH4 "wikilink") SHIX板

<!-- end list -->

  - [PowerPC](../Page/PowerPC.md "wikilink")（PReP和Power Macintosh）

<!-- end list -->

  - [ETRAX CRIS](https://zh.wikipedia.org/wiki/ETRAX_CRIS "wikilink")

<!-- end list -->

  - [MicroBlaze](https://zh.wikipedia.org/wiki/MicroBlaze "wikilink")

<!-- end list -->

  - [RISC-V](../Page/RISC-V.md "wikilink")

[虚拟机可以连接多种类型的物理主机硬件](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")。这些包括：[硬盘](../Page/硬盘.md "wikilink")，[CD-ROM](../Page/CD-ROM.md "wikilink")，[网卡](../Page/网卡.md "wikilink")，[音效卡和](../Page/声卡.md "wikilink")[USB](../Page/USB.md "wikilink")。可以完全模拟USB设备（从图像文件，输入设备进行海量存储），也可以使用主机的USB设备（但这需要管理员权限，并且不适用于所有设备）。

**虚拟磁盘映像**可以以特殊格式（qcow或qcow2）存储，只占用虚拟机操作系统实际使用的磁盘空间。这样，仿真的120 GB磁盘在主机上可能只占用几百兆字节。 QCOW2格式还允许创建覆盖映像，以记录与另一个（未修改的）基本映像文件的区别。这提供了将模拟磁盘的内容恢复到较早状态的可能性。例如，基本映像可以保存已知工作的操作系统的全新安装，并使用叠加映像。如果访客系统变得不可用（病毒攻击，意外的系统破坏等），用户可以删除覆盖并重建较早的模拟磁盘映像版本。

QEMU可以通过网络地址转换模拟共享主机系统连接的网卡（不同型号），从而有效地允许**guest虚拟机**使用与**主机**相同的网络。虚拟网卡还可以连接到其他QEMU实例的网卡或本地TAP接口。通过使用主机OS的桥接功能，将QEMU使用的TUN / TAP接口与主机OS上的非虚拟以太网接口桥接，也可以实现网络连接。

QEMU集成了多种服务以允许主机和访客系统进行通信;例如，集成的SMB服务器和网络端口重定向（以允许传入连接到虚拟机）。它也可以在没有引导程序的情况下引导Linux内核。

QEMU不依赖主机系统上的图形输出方法。相反，它可以允许通过集成的VNC服务器访问客户操作系统的屏幕。它还可以使用模拟的串行线，而不使用任何屏幕和适用的操作系统。

可以在多个CPU上运行SMP[对称多处理结构](https://zh.wikipedia.org/wiki/對稱多處理機 "wikilink")（Symmetrical Multi-Processing）

QEMU不需要管理权限运行，除非使用了额外的提高速度的内核模块（如KQEMU），或者使用其网络连接模型的某些模式。

### 微型代码生成器

微型代码生成器（TCG）旨在消除依赖特定版本的GCC或编译器的缺点，并将编译合并到QEMU的运行时任务中。因此，整个翻译阶段由两部分组成：目标代码块（TB）以TCG指令（一种机器无关的中间符号）重写 ，随后TCG为宿主机架构执行编译。可选的优化在这两步之间传递。

TCG需要专用的代码来支持每个体系结构。它还要求重写目标指令集翻译过程以利用TCG指令，而不是以前使用的dyngen指令。

### 加速器

KQEMU是一个Linux内核模块，由Fabrice Bellard撰写，它明显加快了在具有相同CPU架构的平台上模拟x86或x86-64程序的速度。这可以通过直接在主机CPU上运行用户模式代码（以及可选的某些内核代码）以及仅对内核模式和实模式代码使用处理器与外设模拟来实现。即使宿主机CPU不支持硬件辅助虚拟化，KQEMU也可以从多个客户操作系统执行代码。QEMU支持大容量内存，这使得它们与KQEMU不兼容。较新的QEMU版本已完全取消对KQEMU的支持。

由于缺乏对KQEMU和QVM86的支持，基于内核的虚拟机（KVM）已经基本成为基于Linux的硬件辅助虚拟化解决方案，与QEMU一起使用。

英特尔的硬件加速执行管理器（HAXM）是KVM在Windows和MacOS上基于x86的硬件辅助虚拟化的开源替代品。2013年，英特尔使用QEMU来进行Android开发。

## 硬件辅助仿真

[MIPS兼容的](https://zh.wikipedia.org/wiki/MIPS "wikilink")[龙芯](../Page/龙芯.md "wikilink")3处理器增加了200条新指令来帮助QEMU翻译x86指令，这些新指令降低了在MIPS流水线中执行x86 / CISC风格指令的开销。由于[中国科学院](../Page/中国科学院.md "wikilink")对QEMU进行了进一步改进，龙芯3在9个基准测试中，运行x86二进制文件的同时，执行本机二进制文件的平均性能达到70％。 \[3\]

## 并行仿真

使用QEMU的虚拟化解决方案能够并行执行多个虚拟CPU。 对于用户模式仿真，QEMU将仿真线程映射到宿主线程。 对于全系统仿真，QEMU能够为每个虚拟CPU运行一个主机线程。 前提是客户端已经更新到可以支持并行系统仿真，目前可以支持的CPU是[ARM和](https://zh.wikipedia.org/wiki/ARM "wikilink")[Alpha](https://zh.wikipedia.org/wiki/Alpha "wikilink")。否则QEMU将使用单个线程以循环方式模拟执行每个虚拟CPU。

## 与其他虚拟机的集成

**VirtualBox**

[VirtualBox](../Page/VirtualBox.md "wikilink")，发布于2007年1月，使用了一些QEMU的虚拟硬件设备，并且有内置的基于QEMUdede动态再编译器。与KQEMU一样，VirtualBox通过VMM（虚拟机管理器）在宿主机上本地运行几乎所有客户代码，并将再编译仅仅用作回退机制——例如，当客户代码以实地址模式执行时。 \[4\]另外，VirtualBox使用内置的反汇编程序进行了大量的代码分析和修补，以尽量减少再编译。除某些功能外，VirtualBox是免费且开源的（在GPL许可下）。

**Xen-HVM**

[Xen](../Page/Xen.md "wikilink")是虚拟机监视器，可以使用Intel VT-x或AMD-V硬件x86虚拟化扩展以及ARM Cortex-A7和Cortex-A15虚拟化扩展在HVM（硬件虚拟机）模式下运行。 \[5\]这意味着，面对domU以使用真实的设备驱动程序进行交谈的是一组真实的虚拟硬件，而不是半虚拟化设备。

QEMU包含几个组件：CPU仿真器，仿真设备，通用设备，机器描述符，用户界面和调试器。 QEMU中的仿真器件和通用器件组成了虚拟I/O的器件模型。它们包括PIIX3 IDE，Cirrus Logic或纯VGA模拟视频，RTL8139或E1000网络仿真以及ACPI支持。Xen提供APIC支持。

Xen-HVM具有基于QEMU项目的设备仿真功能，可为虚拟机提供虚拟I/O。硬件通过运行在dom0后端的“QEMU设备模型”守护进程来模拟。与其他QEMU运行模式（动态转换或KVM）不同，虚拟CPU完全由管理程序管理，管理程序负责在QEMU模拟内存映射I/O访问时停止虚拟CPU。

**KVM**

[KVM](https://zh.wikipedia.org/wiki/KVM "wikilink")（基于内核的虚拟机）是FreeBSD和Linux的内核模块，它允许用户空间程序访问各种处理器的虚拟化硬件特性，这个特点使得QEMU可以为x86，PowerPC和S/390客户提供虚拟化。当目标体系结构与主机相同时，QEMU可以使用KVM特有的功能，比如加速功能。

**Win4Lin Pro Desktop**

在2005年初，[Win4Lin推出了Win](https://zh.wikipedia.org/wiki/Win4Lin "wikilink")4Lin Pro Desktop，它基于QEMU和KQEMU的已调谐版本，并且托管了Windows的NT版本。 在2006年6月， \[6\]Win4Lin发布了基于相同代码库的Win4Lin虚拟桌面服务器。 Win4Lin虚拟桌面服务器为来自Linux服务器的精简客户机提供Microsoft Windows会话服务。

2006年9月，Win4Lin宣布将公司名称更改为Virtual Bridges，并发布了Win4BSD Pro Desktop，该产品的一个端口用于FreeBSD和PC-BSD。在2007年5月发布了Win4Solaris Pro Desktop和Win4Solaris虚拟桌面服务器后，提供了Solaris支持。\[7\]

**SerialICE**

SerialICE是一款基于QEMU的固件调试工具，可在QEMU内部运行系统固件，同时通过与主机系统的串行连接访问真实硬件。这可以用作硬件ICE的廉价替代品。

**WinUAE**

WinUAE Amiga仿真器在3.0.0版本中引入了对使用QEMU PPC内核的CyberStorm PPC和Blizzard 603e开发板的支持。\[8\]

## 硬件平台模拟

QEMU可模拟多种硬件设备

键盘 SCSI控制器（AMD PCscsi和Tekram DC-390控制器中的LSI MegaRAID SAS 1078，LSI53C895A，NCR53C9x） 串行接口 声卡（Sound Blaster 16，ES1370 PCI，Gravis Ultrasound，AC97和Intel HD Audio） 看门狗定时器（Intel 6300 ESB PCI或iB700 ISA） USB 1.x / 2.x / 3.x控制器（UHCI，EHCI，xHCI） USB设备：音频，蓝牙适配器，HID（键盘/鼠标/平板电脑），MTP，串行接口，CAC智能卡读卡器，存储（仅批量传输和USB连接SCSI），Wacom数位板

**arm**

QEMU使用NEON扩展模拟ARMv7指令集。它模拟整合系统/ CP板，多功能底板，RealView仿真底板，基于XScale的PDA，Palm Tungsten | E PDA，诺基亚N800和诺基亚N810互联网平板电脑等完整系统.QEMU还为Android SDK提供支持，该模拟器属于Android SDK 。三星选择了QEMU来帮助开发仿真'Wave'设备。

基于Xilinx Cortex A9的Zynq SoC采用以下元素进行建模仿真：

Zynq-7000 ARM Cortex-A9 CPU Zynq-7000 ARM Cortex-A9 MPCore 三重计时器 DDR内存控制器 DMA控制器（PL330） 静态存储器控制器（NAND / NOR闪存） SD / SDIO外设控制器（SDHCI） Zynq千兆以太网控制器 USB控制器（仅限EHCI - 主机支持） Zynq UART控制器 SPI和QSPI控制器 I2C控制器

## 參考文獻

  - [系统虚拟机比较](https://zh.wikipedia.org/wiki/系统虚拟机比较 "wikilink")
  - [VirtualBox](../Page/VirtualBox.md "wikilink")

## 外部連結

  - [QEMU的主頁](http://wiki.qemu.org/Index.html)
  - [QEMU on Windows](http://lassauge.free.fr/qemu/) - 已编译的二进制可执行文件
  - [qemu-0.12.4 Binaries (x86 & x64）](https://web.archive.org/web/20111121143700/http://qemu-forum.ipi.fi/viewtopic.php?f=5&p=16200) - 同上
  - [Drivers for QEMU devices](http://www.claunia.com/qemu/drivers/index.html) - [驱动程序](../Page/驱动程序.md "wikilink")
  - [Qemu Manager](https://web.archive.org/web/20130211102503/http://www.davereyn.co.uk/) - 初学者易用
  - [用Eee PC 901同時運行四個OS！（Windows XP、Linux加集體回憶DOS / Windows 3.x及Windows 95）](http://amanda_hoic.mysinablog.com/index.php?op=ViewArticle&articleId=1343462)
  - [實作QEMU虛擬機PXE網路開機](https://web.archive.org/web/20100723025510/http://superstanwu.blog.ithome.com.tw/post/775/76131)

[Category:虛擬化軟體](https://zh.wikipedia.org/wiki/Category:虛擬化軟體 "wikilink") [Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")

1.
2.
3.
4.
5.
6.  [win4lin VDS announcement](http://weblog.infoworld.com/virtualization/archives/2006/06/win4lin_announc.html)
7.  [Win4Solaris announcement](http://win4solaris.com/jml/index.php?option=com_content&task=view&id=17&Itemid=1)
8.