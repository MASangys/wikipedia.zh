[Linux-x86-under-qemu.png](https://zh.wikipedia.org/wiki/File:Linux-x86-under-qemu.png "fig:Linux-x86-under-qemu.png")

[Linux](../Page/Linux.md "wikilink")操作系统家族的基本组件如[Linux内核](../Page/Linux内核.md "wikilink")、[GNU C 函式庫](https://zh.wikipedia.org/wiki/GNU_C_函式庫 "wikilink")、BusyBox，或其复刻如[μClinux和](https://zh.wikipedia.org/wiki/μClinux "wikilink")[uClibc](https://zh.wikipedia.org/wiki/uClibc "wikilink")，在编程时已经考虑了一定程度的抽象。此外，在[汇编语言](../Page/汇编语言.md "wikilink")或[C语言源代码中包含了不同的代码途径](https://zh.wikipedia.org/wiki/C语言 "wikilink")，以支持特定的硬件。因此，源代码可以在大量的[计算机系统结构](../Page/计算机系统结构.md "wikilink")上成功编译（或交叉编译）。

此外，还开发了必需的[自由及开放源代码软件](../Page/自由及开放源代码软件.md "wikilink")，作为Linux和将要执行Linux的硬件之间的接口。例如，[編譯器](../Page/編譯器.md "wikilink")如[GCC](../Page/GCC.md "wikilink")和[LLVM](../Page/LLVM.md "wikilink")/[Clang](../Page/Clang.md "wikilink")。对交叉编译来说，则有数个完整[工具鏈](https://zh.wikipedia.org/wiki/工具鏈 "wikilink")，像[GNU工具链](https://zh.wikipedia.org/wiki/GNU工具链 "wikilink")、[OpenWrt Buildroot或](https://zh.wikipedia.org/wiki/OpenWrt_Buildroot "wikilink")[OpenEmbedded](../Page/OpenEmbedded.md "wikilink")。[Yocto计划针对嵌入式应用案例](https://zh.wikipedia.org/wiki/Yocto计划 "wikilink")。

条目[Linux内核](../Page/Linux内核.md "wikilink")的[可移植性一节中包含了有关技术细节的信息及参考](https://zh.wikipedia.org/wiki/Linux内核#可移植性 "wikilink")。

请注意，额外的组件，如[显示服务器或程序](https://zh.wikipedia.org/wiki/显示服务器 "wikilink")（像[Blender](../Page/Blender.md "wikilink")），不一定适用以下所有平台。根本上说，所有软件都需要移植到执行该软件的硬件上，即适用特定体系。在编程时抽象的程度决定了该软件日后移植时所需要付出的努力。

相关术语：移植目标中有[计算机系统结构](../Page/计算机系统结构.md "wikilink")，包括[指令集架構](../Page/指令集架構.md "wikilink")和[微处理器](../Page/微处理器.md "wikilink")（至少为[CPU](../Page/中央处理器.md "wikilink")）的[微架構](../Page/微架構.md "wikilink")。目标还包括整个系统的“系统设计”，无论是[超级计算机](../Page/超级计算机.md "wikilink")、[桌上型電腦](../Page/桌上型電腦.md "wikilink")还是某些[系统芯片](../Page/系统芯片.md "wikilink")，如在某些情况下，使用的是独一无二的[总线](../Page/总线.md "wikilink")。过去，内存控制器是在[主板](../Page/主板.md "wikilink")[芯片组](../Page/芯片组.md "wikilink")的一部分，而不是在CPU[晶粒](../Page/晶粒.md "wikilink")上。

尽管支持特定指令集是编译器的任务，软件在编写时也需考虑一定程度的抽象，才能使移植成为可能。以汇编语言写成的任何代码都将限定于某一指令集。

对特定微架构的支持包括优化[CPU缓存](../Page/CPU缓存.md "wikilink")层次结构中的[TLB等](../Page/轉譯後備緩衝區.md "wikilink")。

## 发行

  - Alpha指令集：
      - [DEC Alpha](../Page/DEC_Alpha.md "wikilink")
      - 三星Alpha CPU
  - [ADI](https://zh.wikipedia.org/wiki/美國模擬器件公司 "wikilink")
      - [Blackfin](https://zh.wikipedia.org/wiki/Blackfin "wikilink")（自[2.6.22](http://marc.info/?l=linux-kernel&m=117902651507441&w=2)）
  - [ARM系列指令集](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")：
      - [Acorn Archimedes及](https://zh.wikipedia.org/wiki/艾康阿基米德 "wikilink")[Risc PC系列](https://zh.wikipedia.org/wiki/Risc_PC "wikilink")
      - [全志](../Page/全志科技.md "wikilink")
      - [Apple Ax](https://zh.wikipedia.org/wiki/苹果系统芯片 "wikilink")
      - [Broadcom VideoCore](../Page/VideoCore.md "wikilink")
      - DEC [StrongARM](../Page/StrongARM.md "wikilink")
      - [三星Exynos](../Page/三星Exynos.md "wikilink")
      - [Marvell](https://zh.wikipedia.org/wiki/迈威尔科技 "wikilink")（原英特尔）[XScale](../Page/XScale.md "wikilink")
      - [Sharp Zaurus](https://zh.wikipedia.org/wiki/Sharp_Zaurus "wikilink")
      - [HiSilicon](https://zh.wikipedia.org/wiki/HiSilicon "wikilink")
      - [iPAQ](https://zh.wikipedia.org/wiki/iPAQ "wikilink")
      - [Palm公司的](https://zh.wikipedia.org/wiki/Palm公司 "wikilink")[Tungsten Handheld](https://zh.wikipedia.org/wiki/Tungsten_Handheld "wikilink")\[1\]
      - [Gamepark Holdings](https://zh.wikipedia.org/wiki/Gamepark_Holdings "wikilink") [GP2X](https://zh.wikipedia.org/wiki/GP2X "wikilink")
      - [Open Pandora](https://zh.wikipedia.org/wiki/Open_Pandora "wikilink")
      - [联发科技](https://zh.wikipedia.org/wiki/联发科技 "wikilink")
      - [诺基亚770网络终端](https://zh.wikipedia.org/wiki/诺基亚770网络终端 "wikilink")
      - [诺基亚 N800](https://zh.wikipedia.org/wiki/诺基亚_N800 "wikilink")
      - [诺基亚 N810](https://zh.wikipedia.org/wiki/诺基亚_N810 "wikilink")
      - [诺基亚 N900](https://zh.wikipedia.org/wiki/诺基亚_N900 "wikilink")
      - [Nomadik](https://zh.wikipedia.org/wiki/Nomadik "wikilink")
      - [NovaThor](../Page/NovaThor.md "wikilink")（停产）
      - [gumstix](https://zh.wikipedia.org/wiki/gumstix "wikilink")
      - [任天堂DS](../Page/任天堂DS.md "wikilink")（为[DSlinux](https://zh.wikipedia.org/wiki/DSlinux "wikilink")）
      - [Sony Mylo](../Page/Mylo.md "wikilink")
      - [Qualcomm Snapdragon](https://zh.wikipedia.org/wiki/驍龍 "wikilink")
      - [Nvidia Tegra](../Page/图睿.md "wikilink")
      - [TI OMAP](../Page/OMAP.md "wikilink")
      - [Psion 5, 5MX, Series 7, netBook](https://zh.wikipedia.org/wiki/OpenPsion "wikilink")
      - [Rockchip](https://zh.wikipedia.org/wiki/Rockchip "wikilink")
      - 某些Apple [iPod型号](https://zh.wikipedia.org/wiki/iPod "wikilink")（参见[iPodLinux](https://zh.wikipedia.org/wiki/iPodLinux "wikilink")）
      - [OpenMoko Neo 1973](https://zh.wikipedia.org/wiki/Neo_1973 "wikilink")
      - [飞思卡尔](../Page/飞思卡尔.md "wikilink")（原[摩托罗拉](../Page/摩托罗拉.md "wikilink")）[i.MX多媒体处理器](https://zh.wikipedia.org/wiki/i.MX "wikilink")
  - [爱特梅尔](https://zh.wikipedia.org/wiki/爱特梅尔 "wikilink")[AVR32](https://zh.wikipedia.org/wiki/AVR32 "wikilink")
  - [安讯士](../Page/安讯士.md "wikilink")[ETRAX CRIS](https://zh.wikipedia.org/wiki/ETRAX_CRIS "wikilink")
  - [德州仪器](../Page/德州仪器.md "wikilink")[TMS320](../Page/德州仪器TMS320.md "wikilink") DSP系列
      - [TMS320C64x](https://zh.wikipedia.org/wiki/TMS320C64x "wikilink")
  - [飞思卡尔](../Page/飞思卡尔.md "wikilink")（原[摩托罗拉](../Page/摩托罗拉.md "wikilink")）[68k架构](https://zh.wikipedia.org/wiki/68k "wikilink")（68020, 68030, 68040, 68060）：
      - 某些[Amiga](../Page/Amiga.md "wikilink")：[A1200](https://zh.wikipedia.org/wiki/Amiga_1200 "wikilink")、[A2500](https://zh.wikipedia.org/wiki/Amiga_2500 "wikilink")、[A3000](https://zh.wikipedia.org/wiki/Amiga_3000 "wikilink")、[A4000](https://zh.wikipedia.org/wiki/Amiga_4000 "wikilink")
      - [Apple](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink") [Macintosh II](https://zh.wikipedia.org/wiki/Macintosh_II "wikilink")、[LC](https://zh.wikipedia.org/wiki/Macintosh_LC "wikilink")、[Quadra](https://zh.wikipedia.org/wiki/Macintosh_Quadra "wikilink")、[Centris及早先](https://zh.wikipedia.org/wiki/Macintosh_Centris "wikilink")[Performa系列](https://zh.wikipedia.org/wiki/Performa "wikilink")
  - [Fujitsu](https://zh.wikipedia.org/wiki/Fujitsu "wikilink") [FR-V](https://zh.wikipedia.org/wiki/FR-V "wikilink")
  - [Qualcomm Hexagon](https://zh.wikipedia.org/wiki/Qualcomm_Hexagon "wikilink")
  - [惠普](../Page/惠普.md "wikilink")[PA-RISC系列](https://zh.wikipedia.org/wiki/PA-RISC "wikilink")
  - [H8架构](https://zh.wikipedia.org/wiki/H8系列 "wikilink")，来自瑞萨科技（原日立）。
      - H8/300
      - H8/500
  - [IBM](../Page/IBM.md "wikilink")
      - [System/390](https://zh.wikipedia.org/wiki/System/390 "wikilink")（[31位元](https://zh.wikipedia.org/wiki/31位元 "wikilink")）
      - [Z/Architecture](https://zh.wikipedia.org/wiki/Z/Architecture "wikilink")（[Z mainframes](https://zh.wikipedia.org/wiki/IBM_System_z "wikilink")）（[64位元](../Page/64位元.md "wikilink")）
  - [英特尔](../Page/英特尔.md "wikilink")[IA-64安腾](https://zh.wikipedia.org/wiki/IA-64 "wikilink")，安腾II
  - [x86架构](https://zh.wikipedia.org/wiki/x86 "wikilink")：
      - 使用[IA-32及](https://zh.wikipedia.org/wiki/IA-32 "wikilink")[x86-64处理器的](https://zh.wikipedia.org/wiki/x86-64 "wikilink")[IBM PC兼容机](../Page/IBM_PC兼容机.md "wikilink")：
          - Intel 80386（于3.8中止）、[80486及其](../Page/Intel_80486.md "wikilink")[AMD](https://zh.wikipedia.org/wiki/AMD "wikilink")、[Cyrix](../Page/Cyrix.md "wikilink")、[德州仪器](../Page/德州仪器.md "wikilink")和IBM变种
          - 整个[奔腾系列及其](https://zh.wikipedia.org/wiki/奔腾 "wikilink")[赛扬和](https://zh.wikipedia.org/wiki/赛扬 "wikilink")[Xeon变种](https://zh.wikipedia.org/wiki/Xeon "wikilink")
          - [酷睿处理器](https://zh.wikipedia.org/wiki/酷睿 "wikilink")
          - AMD 5x86、[K5](../Page/AMD_K5.md "wikilink")、[K6](https://zh.wikipedia.org/wiki/AMD_K6 "wikilink")、[Athlon](https://zh.wikipedia.org/wiki/Athlon "wikilink")（所有32位版本）、[Duron](https://zh.wikipedia.org/wiki/Duron "wikilink")、[Sempron](https://zh.wikipedia.org/wiki/Sempron "wikilink")
          - [x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink")：64位处理器架构，现正式称为AMD64（AMD）或Intel64（英特尔）；由[Athlon 64](https://zh.wikipedia.org/wiki/Athlon_64 "wikilink")、[Opteron](../Page/Opteron.md "wikilink")、[Intel Core 2及其它所支持](https://zh.wikipedia.org/wiki/Intel_Core_2 "wikilink")
          - Cyrix 5x86、[6x86](https://zh.wikipedia.org/wiki/6x86 "wikilink")（M1）、6x86MX及[MediaGX](../Page/MediaGX.md "wikilink")（National/AMD Geode）系列
          - [VIA Technologies](https://zh.wikipedia.org/wiki/VIA_Technologies "wikilink") Eden (Samuel II), [VIA C3](../Page/VIA_C3.md "wikilink"), and [VIA C7](https://zh.wikipedia.org/wiki/VIA_C7 "wikilink") processors
      - [微软](../Page/微软.md "wikilink")[Xbox](../Page/Xbox.md "wikilink")（奔腾III处理器），通过[Xbox Linux项目](https://zh.wikipedia.org/wiki/Xbox_Linux "wikilink")
      - [SGI Visual Workstation](https://zh.wikipedia.org/wiki/SGI_Visual_Workstation "wikilink") (Pentium II/III processor(s) with SGI chipset)
      - [Sun Microsystems](../Page/昇陽電腦.md "wikilink") [Sun386i工作站](https://zh.wikipedia.org/wiki/Sun386i "wikilink")（80386及80486）
      - 对[8086](../Page/Intel_8086.md "wikilink")、[8088](../Page/Intel_8088.md "wikilink")、[80186](https://zh.wikipedia.org/wiki/Intel_80186 "wikilink")、[80188及](https://zh.wikipedia.org/wiki/Intel_80188 "wikilink")[80286](../Page/Intel_80286.md "wikilink") CPU的支持正在开发（[ELKS分支](https://zh.wikipedia.org/wiki/ELKS "wikilink")）\[2\]
  - [M32R](https://zh.wikipedia.org/wiki/M32R "wikilink")，来自[三菱](../Page/三菱集团.md "wikilink")
  - [Microblaze](https://zh.wikipedia.org/wiki/Microblaze "wikilink")，来自[Xilinx](https://zh.wikipedia.org/wiki/Xilinx "wikilink")
  - [MIPS架構](../Page/MIPS架構.md "wikilink")：
      - [Dingoo](https://zh.wikipedia.org/wiki/Dingoo "wikilink")
      - [Infineon's](https://zh.wikipedia.org/wiki/Infineon_Technologies "wikilink") Amazon & Danube Network Processors
      - [Ingenic](https://zh.wikipedia.org/wiki/Ingenic "wikilink") Jz4740
      - [Jazz](https://zh.wikipedia.org/wiki/Jazz_\(计算机\) "wikilink")
      - [Cobalt Qube](https://zh.wikipedia.org/wiki/Cobalt_Qube "wikilink")、[Cobalt RaQ](https://zh.wikipedia.org/wiki/Cobalt_RaQ "wikilink")
      - [DECstation](https://zh.wikipedia.org/wiki/DECstation "wikilink")
      - [WD TV](https://zh.wikipedia.org/wiki/WD_TV "wikilink")
      - [龙芯](../Page/龙芯.md "wikilink")（MIPS兼容），龙芯2和龙芯2E，来自BLX IC设计有限公司（[中国](https://zh.wikipedia.org/wiki/中国 "wikilink")）
      - 某些[PlayStation 2型号](../Page/PlayStation_2.md "wikilink")，通过[PS2 Linux项目](https://zh.wikipedia.org/wiki/Linux_for_PlayStation_2 "wikilink")
      - [PlayStation Portable](../Page/PlayStation_Portable.md "wikilink") uClinux 2.4.19移植[1](https://web.archive.org/web/20070114094416/http://df38.dot5hosting.com/~remember/chris/)
      - [博通无线芯片组](https://zh.wikipedia.org/wiki/博通 "wikilink")
      - [Dreambox](https://zh.wikipedia.org/wiki/Dreambox "wikilink") (HD models)\[3\]
      - [Cavium Octeon包处理器](https://zh.wikipedia.org/wiki/Cavium_Octeon "wikilink")
  - [MN103](https://zh.wikipedia.org/wiki/MN103 "wikilink"),来自[松下](../Page/松下電器.md "wikilink")
  - [OpenRISC](https://zh.wikipedia.org/wiki/OpenRISC "wikilink")
      - [OpenRISC 1000系列](https://zh.wikipedia.org/wiki/OpenRISC#Linux支持 "wikilink")，截至Linux内核主线3.1。
      - Beyond Semiconductor OR1200
      - Beyond Semiconductor OR1210
  - [Power架构](https://zh.wikipedia.org/wiki/Power架构 "wikilink")：
      - [IBM](../Page/IBM.md "wikilink")服务器
  - [PowerPC](../Page/PowerPC.md "wikilink")架构：
      - IBM [Cell](../Page/Cell_\(微處理器\).md "wikilink")
      - Most pre-Intel Apple computers (all PCI-based [Power Macintoshes](../Page/Power_Macintosh.md "wikilink"), limited support for the older [NuBus](https://zh.wikipedia.org/wiki/NuBus "wikilink") Power Macs)
      - Clones of the PCI Power Mac marketed by [Power Computing](https://zh.wikipedia.org/wiki/Power_Computing "wikilink"), [UMAX](../Page/UMAX.md "wikilink") and [Motorola](https://zh.wikipedia.org/wiki/Motorola "wikilink")
      - Amigas upgraded with a "Power-UP" card (such as the Blizzard or CyberStorm)
      - [AmigaOne主板](https://zh.wikipedia.org/wiki/AmigaOne "wikilink")，来自Eyetech Group Ltd（[英国](https://zh.wikipedia.org/wiki/英国 "wikilink")）
      - [Samantha](https://zh.wikipedia.org/wiki/Sam440 "wikilink")，来自Soft3（意大利）
      - IBM [RS/6000](https://zh.wikipedia.org/wiki/RS/6000 "wikilink")、[iSeries及](https://zh.wikipedia.org/wiki/iSeries "wikilink")[pSeries系统](https://zh.wikipedia.org/wiki/pSeries "wikilink")
      - [Pegasos](https://zh.wikipedia.org/wiki/Pegasos "wikilink") I and II boards from Genesi
      - [任天堂GameCube及](https://zh.wikipedia.org/wiki/GameCube "wikilink")[Wii](../Page/Wii.md "wikilink")，通过[Nintendo GameCube Linux](https://zh.wikipedia.org/wiki/Nintendo_GameCube_Linux "wikilink")
      - Project [BlackDog](https://zh.wikipedia.org/wiki/BlackDog "wikilink") from Realm Systems, Inc.
      - [Sony](https://zh.wikipedia.org/wiki/Sony "wikilink") [PlayStation 3](../Page/PlayStation_3.md "wikilink")
      - 微软[Xbox 360](../Page/Xbox_360.md "wikilink")，通过[free60项目](https://zh.wikipedia.org/wiki/free60 "wikilink")
      - [V-Dragon](https://zh.wikipedia.org/wiki/PowerPC_400#V-Dragon "wikilink") CPU，来自Culturecom。
      - Virtex II Pro Field Programmable Gate Array ([FPGA](https://zh.wikipedia.org/wiki/FPGA "wikilink")) from [Xilinx](https://zh.wikipedia.org/wiki/Xilinx "wikilink") with PowerPC cores.
      - [Dreambox](https://zh.wikipedia.org/wiki/Dreambox "wikilink") (non-HD models)\[4\]
  - [SPARC](../Page/SPARC.md "wikilink")
      - SPAR（32位）：
          - [Sun-4](https://zh.wikipedia.org/wiki/Sun-4 "wikilink")（于2.6.27中止）
          - [SPARCstation/SPARCserver系列](https://zh.wikipedia.org/wiki/SPARCstation "wikilink")（sun4m, sun4d）sun4c（于3.5中止）
          - [LEON](https://zh.wikipedia.org/wiki/LEON "wikilink")
      - UltraSPARC（64位）：
          - [Sun Ultra series](https://zh.wikipedia.org/wiki/Sun_Ultra_series "wikilink")
          - [Sun Blade](https://zh.wikipedia.org/wiki/Sun_Blade "wikilink")
          - [Sun Fire](https://zh.wikipedia.org/wiki/Sun_Fire "wikilink")
          - [SPARC Enterprise](https://zh.wikipedia.org/wiki/SPARC_Enterprise "wikilink") systems, also the based on the [UltraSPARC T1](../Page/UltraSPARC_T1.md "wikilink"), [UltraSPARC T2](../Page/UltraSPARC_T2.md "wikilink"), [UltraSPARC T3](https://zh.wikipedia.org/wiki/UltraSPARC_T3 "wikilink") and [UltraSPARC T4](https://zh.wikipedia.org/wiki/SPARC_T4 "wikilink") processors
  - [SuperH](../Page/SuperH.md "wikilink")
      - [Sega](https://zh.wikipedia.org/wiki/Sega "wikilink") [Dreamcast](../Page/Dreamcast.md "wikilink") (SuperH SH4)
      - [HP](https://zh.wikipedia.org/wiki/HP "wikilink") [Jornada](https://zh.wikipedia.org/wiki/Jornada_\(PDA\) "wikilink") 680 through [Jlime](https://zh.wikipedia.org/wiki/Jlime "wikilink") distribution (SuperH SH3)
  - [Synopsys](https://zh.wikipedia.org/wiki/Synopsys "wikilink") DesignWare [ARC cores](https://zh.wikipedia.org/wiki/ARC_\(processor\) "wikilink"), originally developed by [ARC International](https://zh.wikipedia.org/wiki/Synopsys#ARC_International "wikilink")
  - [S+core](https://zh.wikipedia.org/wiki/S+core "wikilink")
  - [Tilera](https://zh.wikipedia.org/wiki/Tilera "wikilink")
  - [Xtensa](https://zh.wikipedia.org/wiki/Tensilica#Processor_cores "wikilink") from [Tensilica](https://zh.wikipedia.org/wiki/Tensilica "wikilink")
  - [UniCore32](https://zh.wikipedia.org/wiki/UniCore32 "wikilink")

其它处理器（特别是Freescale 68000和[ColdFire](https://zh.wikipedia.org/wiki/ColdFire "wikilink")）受无MMU的变种[μClinux支持](https://zh.wikipedia.org/wiki/μClinux "wikilink")。

## 参见

  - [操作系统比较](https://zh.wikipedia.org/wiki/操作系统比较 "wikilink")
  - [嵌入式Linux内核子集](https://zh.wikipedia.org/wiki/嵌入式Linux内核子集 "wikilink")
  - [用户模式Linux](https://zh.wikipedia.org/wiki/用户模式Linux "wikilink")

## 参考

## 外部链接

  -
  - [BlueCat — Linux Kernel Porting Guide](https://web.archive.org/web/20080511232719/http://www.lynuxworks.com/support/bluecat/docs/0370-00-BCLinux_3.0_KnlPtgGd.pdf)

[Category:Linux内核](https://zh.wikipedia.org/wiki/Category:Linux内核 "wikilink")

1.  [Linux on Palm Tungsten E](http://palmtelinux.sf.net)
2.  [ELKS project](http://elks.sourceforge.net)
3.  [Dream Multimedia DM 800 PVR technical data](http://www.dream-multimedia-tv.de/english/products_dm800_technical.php)
4.  [Dream Multimedia DM 500 + technical data](http://www.dream-multimedia-tv.de/english/products_dm500_technical.php)