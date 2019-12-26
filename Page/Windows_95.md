[Windows-95-Start-Button.png](https://zh.wikipedia.org/wiki/File:Windows-95-Start-Button.png "fig:Windows-95-Start-Button.png") ****是[美国](../Page/美国.md "wikilink")[微软](../Page/微软.md "wikilink")公司于1995年推出的[電腦](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")[操作系统](../Page/操作系统.md "wikilink")。Windows 95是一个混合的[16位](https://zh.wikipedia.org/wiki/16位 "wikilink")/[32位](https://zh.wikipedia.org/wiki/32位 "wikilink")[Windows系统](https://zh.wikipedia.org/wiki/Windows "wikilink")，其版本號為4.0，開發代號為Chicago。\[1\]Windows 95是微软之前独立的操作系统[MS-DOS](../Page/MS-DOS.md "wikilink")和[Microsoft Windows的直接后续版本](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。第一次抛弃了对前一代16位[x86的支持](https://zh.wikipedia.org/wiki/x86 "wikilink")，因此它要求[英特尔](../Page/英特尔.md "wikilink")的[80386处理器或者在保护模式下运行于一个兼容的速度更快的处理器](https://zh.wikipedia.org/wiki/80386 "wikilink")。它以对[圖形使用者介面的重要的改进和底层工作](https://zh.wikipedia.org/wiki/圖形使用者介面 "wikilink")（underlying workings）为特征。同时也是第一个特别捆绑了一个版本的[DOS](../Page/DOS.md "wikilink")的视窗版本（MS-DOS 7.0）。这样，微软就可以保持由[Windows 3.x建立起来的GUI市场的统治地位](../Page/Windows_3.x.md "wikilink")，同时使得没有非微软的产品可以提供对系统的底层操作服务。也就是说，Windows 95具有双重的角色。它带来了更强大的、更稳定、更实用的桌面图形用户界面，同时也结束了桌面操作系统间的竞争。

## 历史

Windows 95以强大的攻势进行发布，包括商业性质的[滾石樂隊的歌曲](https://zh.wikipedia.org/wiki/滾石樂隊 "wikilink")《Start Me Up》。很多没有电脑的顾客受到宣传的影响而排队购买软件，但他们甚至根本不知道Windows 95是什么。

后来的Windows 95版本附带了[Internet Explorer 3](../Page/Internet_Explorer_3.md "wikilink")，然后是[Internet Explorer 4](../Page/Internet_Explorer_4.md "wikilink")。当Internet Explorer 4被整合到操作系统后，它将给系统带来一些新特征。Internet Explorer被用来给系统的桌面提供[HTML](../Page/HTML.md "wikilink")支持。这个也是在微软的[反托拉斯案中的焦点](https://zh.wikipedia.org/wiki/美國訴微軟案 "wikilink")，因为整合後的[Internet Explorer排挤了微软的竞争对手](../Page/Internet_Explorer.md "wikilink")[網景](../Page/網景.md "wikilink")的产品。Windows 95的后续产品是[Windows 98](../Page/Windows_98.md "wikilink")。

## 版本

Windows 95共有五種版本：

  - Windows 95 零售版（发布日期1995年8月24日）
  - Windows 95 OEM Service Release 1（OSR1）（发布日期1996年2月14日，包括 Windows 95 Service Pack 1）
  - Windows 95 OEM Service Release 2（OSR2）（发布日期1996年8月24日，包括一些改良例如IE 3.0和[FAT32的支援](https://zh.wikipedia.org/wiki/FAT32 "wikilink")）
  - Windows 95 OEM Service Release 2.1（OSR2.1）（发布日期1997年8月24日，包括基本USB支援）
  - Windows 95 OEM Service Release 2.5（OSR2.5）（发布日期1997年11月26日，包括以上版本多所有功能，另附IE 4.0与[DirectX](../Page/DirectX.md "wikilink") 5.0）

OSR2、OSR2.1和OSR2.5並沒有對公眾發行，而是由廠商預先安裝在電腦上。

## 架構

[链接=<https://en.wikipedia.org/wiki/File:Microsoft_Windows_95_architecture.svg>](https://zh.wikipedia.org/wiki/File:Microsoft_Windows_95_architecture.svg "fig:链接=https://en.wikipedia.org/wiki/File:Microsoft_Windows_95_architecture.svg")Windows 95的架构由Windows for Workgroups的386增强模式演变而来，旨在最大程度地兼容现有的[MS-DOS](../Page/MS-DOS.md "wikilink")和16位Windows程序与设备[驱动程序](../Page/驱动程序.md "wikilink")，同时提供更稳定和更出色的系统性能\[2\]\[3\]。Windows 95的最低运作水平包括以32位[保护模式运行的大量虚拟设备驱动程序](../Page/保護模式.md "wikilink")（VxD）以及以[虚拟8086模式运行的一个或多个虚拟DOS计算机](https://zh.wikipedia.org/wiki/虚拟8086模式 "wikilink")。虚拟驱动程序负责处理物理设备（例如视频卡与网卡）、模拟虚拟机所使用的虚拟设备或提供各种系统服务。三个最重要的虚拟设备驱动程序分别是：

  - 虚拟机管理器（Virtual Machine Manager / VMM32.VXD）
    负责内存管理、事件处理、[中断处理](../Page/中斷.md "wikilink")、加载和初始化虚拟设备驱动程序、创建新虚拟机以及[线程](../Page/线程.md "wikilink")[调度](../Page/调度_\(计算机\).md "wikilink")。
  - 配置管理器（Configuration Manager / CONFIGMG）
    负责实现[随插即用功能](../Page/隨插即用.md "wikilink")、监控硬件配置变化、使用总线枚举器检测设备以及以无冲突的方式分配[I/O端口](../Page/存储器映射输入输出.md "wikilink")、IRQ，[DMA通道和内存](https://zh.wikipedia.org/wiki/直接存储器访问 "wikilink")。
  - 可安装文件系统管理器（Installable File System Manager）；输入/输出子系统（Input/Output Subsystem）
    协调对支持的文件系统的访问。Windows 95 最初附带支持[FAT](../Page/FAT.md "wikilink")12，[FAT](../Page/FAT.md "wikilink")16，[VFAT扩展](../Page/FAT.md "wikilink")，[ISO 9660](../Page/ISO_9660.md "wikilink")（CDFS）和网络重定向器，而后期版本支持[FAT](../Page/FAT.md "wikilink")32。

对物理媒体的访问请求被发送到输入/输出管理器，由其负责调度请求。每个物理介质都有自己的设备驱动程序：访问磁盘由端口驱动程序执行；访问[SCSI设备则由在SCSI层上运作的微型端口驱动程序处理](../Page/小型计算机系统接口.md "wikilink")。端口与微型端口驱动程序绕过MS-DOS和[BIOS](../Page/BIOS.md "wikilink")，以32位保护模式执行读写操作，从而显着提高性能。若存储设备没有原生Windows驱动程序，或者设备被强制以兼容模式运行，则“实模式映射器”（Real Mode Mapper）可以通过MS-DOS访问此存储设备。

32位Windows程序能够自行分配内存段，且内存段的大小可以任意调整。程序无法访问段外的存储区。 某个程序崩溃并不会使其他程序收到损坏。而在此之前，程序会使用固定的非独占64KB段。虽然64KB大小是DOS和Windows 3.x系统的严重障碍，但缺乏对排他性的保证是造成稳定性问题的原因，因为程序有时会彼此覆盖内存段。在Windows 3.x中，崩溃的程序会破坏其内存段周围的进程。

[Win32 API由三个模块实现](../Page/Windows_API.md "wikilink")，每个模块由一个16位和一个32位组件组成：

  - 内核
    提供对内存和[进程管理的高级访问](https://zh.wikipedia.org/wiki/进程管理 "wikilink")，以及对文件系统的访问。 由KRNL386.EXE、KERNEL32.DLL和VWIN32.VXD组成。
  - 用户
    负责管理和绘制用户界面组件，如[窗口](https://zh.wikipedia.org/wiki/窗口_\(计算机\) "wikilink")、[菜单和](../Page/選單.md "wikilink")[按钮](https://zh.wikipedia.org/wiki/按钮_\(计算机\) "wikilink")。 由USER.EXE和USER32.DLL组成。
  - [图形设备接口](../Page/GDI+.md "wikilink")（GDI）
    负责以独立于设备的方式绘制图形。 由GDI.EXE和[GDI32.DLL组成](../Page/Windows系統函式庫.md "wikilink")。

### 对MS-DOS的依赖

对于终端用户来说，MS-DOS是Windows 95的底层组件，例如用户可以阻止加载图形用户界面并将系统引导到实模式MS-DOS环境中。这引发了用户和专业人士之间程度不小的争论：Windows 95究竟是操作系统，还是仅仅在MS-DOS上运行的图形外壳\[4\]\[5\]\[6\]。

在启动图形用户界面时，虚拟机管理器会接管与文件系统和磁盘相关的功能。MS-DOS本身被降级为16位设备驱动程序的兼容层\[7\]。这与依赖于MS-DOS执行文件和磁盘访问的Windows早期版本形成对比（Windows for Workgroups 3.11在启用32位文件及磁盘访问时也能够在很大程度上绕过MS-DOS）。将MS-DOS保留在内存中允许Windows 95在合适的Windows驱动程序不可用时使用DOS设备驱动程序。Windows 95能够使用所有16位Windows 3.x驱动程序。

与Windows 3.1x不同，在Windows 95中运行的DOS程序不需要为鼠标、CD-ROM及声卡加载DOS驱动程序，而是使用Windows驱动程序。启动Windows 95仍然需要HIMEM.SYS，但EMM386和其他内存管理器仅由旧版DOS程序所使用。此外，CONFIG.SYS和AUTOEXEC.BAT的设置对Windows程序没有影响（除HIMEM.SYS外）。无法在Windows 3.x上运行的DOS游戏可以在Windows 95中运行（游戏往往会将Windows 3.x锁定或导致其他问题）。与Windows 3.x一样，使用[EGA或](https://zh.wikipedia.org/wiki/增强图形适配器 "wikilink")[VGA图形模式的DOS程序会在窗口模式下运行](../Page/视频图形阵列.md "wikilink")（[CGA和文本模式程序可以继续以全屏模式运行](https://zh.wikipedia.org/wiki/彩色图形适配器 "wikilink")）。

要激活Windows 95的MS-DOS组件，可以在启动Windows 95之前按下键暂停默认启动过程并显示DOS启动选项菜单，由此允许用户继续正常启动Windows、以安全模式启动Windows或打开DOS提示符\[8\]。此时系统与早期版本的MS-DOS一样没有32位支持，必须为鼠标和其他硬件加载DOS驱动程序。

由于Windows 95基于DOS开发，Windows 95必须保持内部DOS数据结构与的数据结构同步。即便是原生32位Windows程序，启动程序时MS-DOS也会被短暂执行以创建称为“程序段前缀”的数据结构。MS-DOS甚至可能会在执行此操作时耗尽常规内存，从而阻止程序启动\[9\]，而Windows 3.x首先在常规内存中分配固定段。由于内存段是固定分配的，Windows无法移动这些内存段，从而导致无法启动更多的程序。

Microsoft在Windows 95 OSR2（OEM Service Release 2）中部分删除了对文件控制块（DOS 1.x和CP/M的API保留）的支持。FCB功能可以读取但无法写入FAT32卷。

## 參見

  - [微軟視窗歷史](https://zh.wikipedia.org/wiki/微軟視窗歷史 "wikilink")
  - [作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")
  - [作業系統列表](https://zh.wikipedia.org/wiki/作業系統列表 "wikilink")
  - [微軟作業系統列表](../Page/微軟作業系統列表.md "wikilink")
  - [微軟](https://zh.wikipedia.org/wiki/微軟 "wikilink")
  - [Windows 95 开发历史](../Page/Windows_95开发历史.md "wikilink")

## 參考資料

<div class="references-small">

<references />

</div>

  - 註釋

[Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink") [Category:已停止開發的作業系統](https://zh.wikipedia.org/wiki/Category:已停止開發的作業系統 "wikilink")

1.  [Washingtonpost.com: WashTech](http://www.washingtonpost.com/wp-srv/business/longterm/microsoft/stories/1995/debut082495.htm)
2.
3.
4.
5.
6.
7.
8.
9.