> 本文内容由[Draft:MIPS架构处理器](https://zh.wikipedia.org/wiki/Draft:MIPS架构处理器)转换而来。


-----

自从1985年以来，各种基于[MIPS架构的](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")[中央处理器](../Page/中央处理器.md "wikilink")、[SoCs已经被设计出来且广泛使用](../Page/系统芯片.md "wikilink")。

## MIPS微处理器

[MIPS_Architecture_(Pipelined).svg](https://zh.wikipedia.org/wiki/File:MIPS_Architecture_\(Pipelined\).svg "fig:MIPS_Architecture_(Pipelined).svg")

1985年，第一个MIPS[微处理器](../Page/微处理器.md "wikilink")**[R2000](https://zh.wikipedia.org/wiki/R2000 "wikilink")**发布。它在某种独立的片上单元中增加了多周期乘法和除法指令。新的指令被添加进去以将结果从该单元检索回寄存器文件；这些检索结果的指令是互锁的。

**[R2000](https://zh.wikipedia.org/wiki/R2000 "wikilink")**可以引导为[大端序或](https://zh.wikipedia.org/wiki/大端序 "wikilink")[小端序](https://zh.wikipedia.org/wiki/小端序 "wikilink")。它具有31个32位通用寄存器，但没有条件代码寄存器（设计人员认为这是潜在的瓶颈），它是[AMD 29000和](https://zh.wikipedia.org/wiki/AMD_29000 "wikilink")[Alpha处理器所共有的功能](../Page/DEC_Alpha.md "wikilink")。与其他寄存器不同，程序计数器是不能被直接访问的。

**[R2000](https://zh.wikipedia.org/wiki/R2000 "wikilink")**还支持多达四个协处理器，其中一个内置于主CPU中，并处理异常，陷阱和内存管理，而其他三个则留作其他用途。其中之一可以由可选的**R2010** FPU填充，该模块具有32个32位寄存器，可以用作16个64位寄存器以实现双精度计算。

**[R3000](https://zh.wikipedia.org/wiki/R3000 "wikilink")**在1988年继承了**[R2000](https://zh.wikipedia.org/wiki/R2000 "wikilink")**，它为指令和数据增加了32 KB的高速缓存（很快增加到64 KB），并以高速缓存一致性协议的形式支持共享内存多处理。尽管R3000的多处理支持存在缺陷，但已成功用于多台成功的多处理器计算机中。R3000还包括内置MMU，这是该时代CPU的常见功能。与**[R2000](https://zh.wikipedia.org/wiki/R2000 "wikilink")**一样，R3000可以与**R3010** FPU配对。 R3000是市场上第一个成功的MIPS设计，最终生产了超过一百万。**R3000A**是速度最快的R3000版本，运行速度高达40 MHz，可提供32个 VUP（VAX性能单位）的性能。兼容MIPS **R3000A**的**R3051**以33.8688 MHz运行，尽管它没有FPU或MMU，但却是Sony PlayStation中使用的处理器。第三方设计包括Performance Semiconductor的**R3400**和IDT的**R3500**，它们都是具有集成**R3010** FPU的**R3000A**。东芝的**R3900**实际上是用于运行Windows CE的早期手持式PC的第一个[SoC](../Page/系统芯片.md "wikilink")。用于太空应用的抗辐照芯片变体[Mongoose-V是具有集成R](https://zh.wikipedia.org/wiki/Mongoose-V "wikilink")3010 FPU的R3000。

1991年发布的**[R4000](https://zh.wikipedia.org/wiki/R4000 "wikilink")**系列将MIPS扩展到完整的64位体系结构，将FPU移到主芯片上以创建单芯片微处理器，并且在引入时具有100 MHz的高时钟频率。但是，为了达到时钟频率，每个高速缓存减少到8 KB，并且需要三个周期来访问。高工作频率是通过深流水线技术（当时称为超级流水线）实现的。改进的**R4400**于1993年问世。它具有更大的16 KB主缓存，基本上无错误的[64位操作的支持以及对更大的L](https://zh.wikipedia.org/wiki/64位 "wikilink")2缓存的支持。

MIPS，原来是SGI的一个部门MTI，设计了低成本的**[R4200](https://zh.wikipedia.org/wiki/R4200 "wikilink")**，这是更便宜的R4300i的基础。 Nintendo 64游戏机使用了该微处理器的衍生产品NEC **VR4300**。\[1\]

[IDT_R4700_diephoto2.jpg](https://zh.wikipedia.org/wiki/File:IDT_R4700_diephoto2.jpg "fig:IDT_R4700_diephoto2.jpg")制造，由[Quantum Effect Devices设计的带有裸露硅芯片的R](https://zh.wikipedia.org/wiki/Quantum_Effect_Devices "wikilink")4700 Orion封装的底视图\]\] [KL_IDT_R4700_MIPS_Microprocessor.jpg](https://zh.wikipedia.org/wiki/File:KL_IDT_R4700_MIPS_Microprocessor.jpg "fig:KL_IDT_R4700_MIPS_Microprocessor.jpg") Orion封装的顶视图\]\] [Quantum Effect Devices](https://zh.wikipedia.org/wiki/Quantum_Effect_Devices "wikilink")（QED）是由MIPS前员工创立的另一家公司，设计了**[R4600](https://zh.wikipedia.org/wiki/R4600 "wikilink")** **Orion**，**[R4700](https://zh.wikipedia.org/wiki/R4700 "wikilink")** **Orion**，**[R4650](https://zh.wikipedia.org/wiki/R4650 "wikilink")**和**[R5000](https://zh.wikipedia.org/wiki/R5000 "wikilink")**。 在R4000推高时钟频率并牺牲了缓存容量的情况下，QED设计强调了大型缓存，可以在两个周期内就可以对其进行访问，并有效利用了硅片面积。 R4600和R4700用于[SGI Indy工作站的低成本版本以及第一批基于MIPS的Cisco路由器](https://zh.wikipedia.org/wiki/SGI_Indy "wikilink")，例如36x0和7x00系列路由器。[R4650用于原始的](https://zh.wikipedia.org/wiki/R4650 "wikilink")[WebTV](https://zh.wikipedia.org/wiki/WebTV "wikilink") [机顶盒](https://zh.wikipedia.org/wiki/机顶盒 "wikilink") （也就是现在的Microsoft TV）。 [R5000的FPU比R](https://zh.wikipedia.org/wiki/R5000 "wikilink")4000具有更灵活的单精度浮点调度，因此，基于R5000的SGI Indys比相同图形硬件、相似CPU频率的[R4400](https://zh.wikipedia.org/wiki/R4400 "wikilink") Indys拥有更好的图形性能。 SGI与[R5000结合使用时](https://zh.wikipedia.org/wiki/R5000 "wikilink")，为旧的图形板重新命名，以强调其改进。 QED随后为网络和激光打印机等嵌入式市场设计了**RM7000**和**[RM9000](https://zh.wikipedia.org/wiki/RM9000 "wikilink")**系列设备。 QED在2000年8月被半导体制造商[PMC-Sierra收购](https://zh.wikipedia.org/wiki/PMC-Sierra "wikilink")，后者继续投资于MIPS架构。**[RM7000](https://zh.wikipedia.org/wiki/RM7000 "wikilink")**包括一个集成的256KB L2缓存和一个用于可选L3缓存的控制器。**RM9xx0**是[SoC设备家族](../Page/系统芯片.md "wikilink")，其中包括[内存控制器](../Page/内存控制器.md "wikilink")和[北桥](../Page/北桥.md "wikilink")外设，例如外围组件互连[PCI控制器](https://zh.wikipedia.org/wiki/PCI "wikilink")，[千兆以太网控制器和快速I](https://zh.wikipedia.org/wiki/千兆以太网 "wikilink")/O，例如[HyperTransport](../Page/HyperTransport.md "wikilink")接口。

**[R8000](https://zh.wikipedia.org/wiki/R8000 "wikilink")**（1994年发布）是第一个[超标量](https://zh.wikipedia.org/wiki/超标量 "wikilink") MIPS设计，能够在每个周期执行两个整数或浮点数和两个存储指令。该设计分布在六个芯片上：一个整数单元（具有16KB指令和16KB数据高速缓存），一个浮点单元，三个全定制二级缓存标签RAM（两个用于二级缓存访问，一个用于总线侦听）和一个高速缓存控制器ASIC。该设计有两个全流水线双精度乘法加法单元，可以从4MB片外二级缓存中流式传输数据。R8000在1990年代中期用于SGI的[POWER Challenge服务器](https://zh.wikipedia.org/wiki/SGI_Challenge "wikilink")，后来在POWER Indigo2工作站中亦为可用。尽管它的FPU性能非常适合科学用户，但其有限的整数性能和高昂的成本削弱了大多数用户的吸引力，R8000仅在市场上销售了一年，到现在保留下来的此工作站已经相当罕见。

1995年，**[R10000](https://zh.wikipedia.org/wiki/R10000 "wikilink")**被发布。该处理器是单芯片设计，以比R8000更高的时钟频率运行，并具有更大的32KB指令和数据缓存。它也是超标量处理器，但其主要创新是乱序执行。即使使用单个内存流水线和更简单的FPU，R10000的大幅改进，更低的价格和更高的晶体管密度也使R10000对于大多数客户而言是首选之物。

后来的一些设计都基于R10000内核。 **[R12000](https://zh.wikipedia.org/wiki/R10000＃R12000 "wikilink")**使用0.25微米的工艺来缩小芯片并获得更高的时钟频率。修改后的**[R14000](https://zh.wikipedia.org/wiki/R10000＃R14000 "wikilink")**允许更高的时钟频率，并在片外缓存中额外支持[DDR](../Page/DDR_SDRAM.md "wikilink") [SRAM](../Page/静态随机存取存储器.md "wikilink")。以后的迭代分别称为**[R16000](https://zh.wikipedia.org/wiki/R10000＃R16000 "wikilink")**和**R16000A**，与前代相比，它们具有更高的时钟频率和更低的晶体制程精度。

MIPS系列的其他成员包括**[R6000](https://zh.wikipedia.org/wiki/R6000 "wikilink")**，这是一种由[Bipolar Integrated Technology设计并实现了](https://zh.wikipedia.org/wiki/Bipolar_Integrated_Technology "wikilink")[ECL的处理器](https://zh.wikipedia.org/wiki/Emitter-耦合逻辑 "wikilink")。**R6000**引入了MIPS II架构。它的[转换后备缓冲区](https://zh.wikipedia.org/wiki/转换后备缓冲区 "wikilink")（TLB）和缓存体系结构与MIPS系列的所有其他成员不同。R6000没有实现承诺的性能优势，尽管它在[Control Data机器中得到了一些使用](https://zh.wikipedia.org/wiki/Control_Data "wikilink")，但很快就从主流市场中消失了。

## 历史

### 第一代硬件

1981年，[约翰·轩尼诗在](https://zh.wikipedia.org/wiki/约翰·轩尼诗 "wikilink")[斯坦福大学设立了](https://zh.wikipedia.org/wiki/斯坦福大学 "wikilink")[MIPS](https://zh.wikipedia.org/wiki/Stanford_MIPS "wikilink") (*Microprocessor without Interlocked Pipeline Stages*)项目以研究[精简指令集](../Page/精简指令集.md "wikilink")计算技术。项目的成果向他展示了这项技术潜在的经济价值，并让他在1984年休假期间成立了[MIPS Computer Systems](../Page/美普思科技.md "wikilink")。该公司设计了一种新的[体系结构](https://zh.wikipedia.org/wiki/计算机体系结构 "wikilink")，也称为[MIPS](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")，并于1985年推出了第一个实现[MIPS架构的](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")[微处理器](../Page/微处理器.md "wikilink")，即**[R2000](https://zh.wikipedia.org/wiki/R2000 "wikilink")**。R2000的设计被改进后，新的设计在1988年被生产为**[R3000](https://zh.wikipedia.org/wiki/R3000 "wikilink")**。这些[32位](https://zh.wikipedia.org/wiki/32位 "wikilink")[微处理器](../Page/微处理器.md "wikilink")构成了其公司在1980年代的基础，主要用于[SGI系列的](https://zh.wikipedia.org/wiki/Silicon_Graphics "wikilink")[工作站](../Page/工作站.md "wikilink")和更高版本的[Digital Equipment Corporation](https://zh.wikipedia.org/wiki/Digital_Equipment_Corporation "wikilink") DECstation工作站和服务器。 SGI商业设计与斯坦福MIPS有所不同，它在硬件中实现了大多数互锁，并提供了完整的乘法和除法指令（以及其他）。这些设计部分由软件架构师[Earl Killian指导](https://zh.wikipedia.org/wiki/Earl_Killian（engineer） "wikilink")，他设计了MIPS III 64位指令集扩展，并领导了**[R4000](https://zh.wikipedia.org/wiki/R4000 "wikilink")**[微体系结构的工作](https://zh.wikipedia.org/wiki/微架构 "wikilink")。\[2\]\[3\]

1991年，MIPS发布了第一个[64位](https://zh.wikipedia.org/wiki/64位 "wikilink") [微处理器](../Page/微处理器.md "wikilink")，即**[R4000](https://zh.wikipedia.org/wiki/R4000 "wikilink")**。 但是，MIPS在投放市场时遇到了财务困难。当时SGI是MIPS的几个主要客户之一，该设计对SGI非常重要，因此SGI在1992年直接收购了该公司，以确保设计不会丢失。之后，该公司被称为[MIPS科技公司](../Page/美普思科技.md "wikilink")，作为SGI的一个子公司。

### 可授权的架构

在1990年代初期，MIPS开始将其设计许可给第三方供应商。事实证明，由于MIPS处理器核的简单性，它相当成功，这使其可以用于许多应用，这些应用以前使用的功能[CISC设计少得多](https://zh.wikipedia.org/wiki/CISC "wikilink")，而[门数和价格却差不多](https://zh.wikipedia.org/wiki/门数 "wikilink")。CPU的价格通常与门的数量和外部引脚的数量密切相关。[Sun Microsystems试图通过许可](https://zh.wikipedia.org/wiki/Sun_Microsystems "wikilink")[SPARC](../Page/SPARC.md "wikilink")处理器核获得类似的成功，但是却没有那么成功。到1990年代后期，MIPS已成为[嵌入式系统](../Page/嵌入式系统.md "wikilink")领域的强者。根据[MIPS科技公司的统计](../Page/美普思科技.md "wikilink")，1997年以MIPS为基础的CPU出货量为4800万，占RISC CPU总市场份额的49％。\[4\] MIPS如此成功，以至于SGI在1998年把[MIPS科技公司拆分出来成为一个子公司](../Page/美普思科技.md "wikilink")。如今，MIPS的全部收入中有一半来自其设计的许可，而其余的大部分则按照第三方的合同设计工作，然后由第三方进行生产。

1999年，[MIPS科技公司用两种](../Page/美普思科技.md "wikilink")[MIPS架构取代了先前版本的](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")[MIPS架构](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")，即32位**MIPS32**（基于MIPS II，具有MIPS III，MIPS IV和MIPS V的一些其他功能）和用于许可的64位**MIPS64**（基于MIPS V）。[NEC](https://zh.wikipedia.org/wiki/NEC "wikilink")，[Toshiba和](https://zh.wikipedia.org/wiki/Toshiba "wikilink")[SiByte](https://zh.wikipedia.org/wiki/SiByte "wikilink")（后来由[博通收购](https://zh.wikipedia.org/wiki/博通 "wikilink")）一经宣布就分别获得了MIPS64的许可证。此后，[飞利浦](https://zh.wikipedia.org/wiki/飞利浦 "wikilink")，[LSI Logic和](https://zh.wikipedia.org/wiki/LSI_Logic "wikilink")[IDT加入了他们的行列](https://zh.wikipedia.org/wiki/IDT "wikilink")。如今，MIPS[IP核已成为](https://zh.wikipedia.org/wiki/IP核 "wikilink")[嵌入式系统](../Page/嵌入式系统.md "wikilink")（[手持计算机](https://zh.wikipedia.org/wiki/手持计算机 "wikilink")，机顶盒，机顶盒等）市场上最常用的“重量级” 处理器核之一。

由于[MIPS架构是可授权的](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")，因此其多年来吸引了多家设计处理器的[初创公司](https://zh.wikipedia.org/wiki/初创公司 "wikilink")。 [Quantum Effect Devices是设计MIPS处理器的首批初创公司之一](https://zh.wikipedia.org/wiki/Quantum_Effect_Devices "wikilink")（请参阅下一节）。设计**[R4300i](https://zh.wikipedia.org/wiki/R4300i "wikilink")**的MIPS设计团队成立了[SandCraft公司](https://zh.wikipedia.org/wiki/SandCraft "wikilink")，该公司为NEC设计了**R5432**，后来又生产了**SR71000** ，是嵌入式市场上首批[乱序执行](../Page/乱序执行.md "wikilink")处理器之一。最初的[DEC](https://zh.wikipedia.org/wiki/DEC "wikilink")[StrongARM](../Page/StrongARM.md "wikilink")团队最终分裂为两个基于MIPS的初创企业：SiByte，后者生产了**SB-1250**，这是首批高性能MIPS之一基于[SoC](../Page/系统芯片.md "wikilink")；而[Alchemy Semiconductor](https://zh.wikipedia.org/wiki/Alchemy_Semiconductor "wikilink")（后来由[AMD收购](https://zh.wikipedia.org/wiki/AMD "wikilink")）推出了用于低功率应用的**Au-1000**[SoC](../Page/系统芯片.md "wikilink")。[Lexra使用了](https://zh.wikipedia.org/wiki/Lexra "wikilink")[MIPS架构](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")，并为音频芯片市场增加了DSP扩展和为电信市场提供了[多线程](../Page/多线程.md "wikilink")支持。由于Lexra未被授权该架构，因此两家公司之间开始了两项诉讼。当Lexra承诺不宣传其处理器兼容MIPS时，第一个诉讼很快就解决了。第二个诉讼（关于处理未对齐的内存访问的MIPS专利4814976）长期持续了下去，损害了两家公司的业务，最终达到了[MIPS科技公司的目的](../Page/美普思科技.md "wikilink")，后者为Lexra提供了免费许可和大量现金支付。

已经出现了两家公司专门使用[MIPS架构构建](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")[多核心处理器设备](https://zh.wikipedia.org/wiki/多核心处理器 "wikilink")。[RMI从失败的SandCraft购买了产品线](https://zh.wikipedia.org/wiki/RMI "wikilink")，后来生产出的设备包含针对电信和网络市场的芯片拥有8个处理器核。[Cavium](https://zh.wikipedia.org/wiki/Cavium "wikilink")，最初是安全处理器供应商，还为相同的市场生产具有8个处理器核，后来最多拥有32个处理器核的设备。两家公司都在内部设计了内核，只是对体系结构进行了授权，而不是从MIPS购买[IP核](https://zh.wikipedia.org/wiki/IP核 "wikilink")。

### 桌面领域

使用MIPS处理器制造[工作站](../Page/工作站.md "wikilink")的制造商有[SGI](https://zh.wikipedia.org/wiki/Silicon_Graphics "wikilink")，[MIPS Computer Systems](../Page/美普思科技.md "wikilink")，[Whitechapel Workstations](https://zh.wikipedia.org/wiki/Whitechapel_Workstations "wikilink")，[Olivetti](https://zh.wikipedia.org/wiki/Olivetti "wikilink")，[Siemens Nixdorf Informationssysteme](https://zh.wikipedia.org/wiki/Siemens_Nixdorf_Informationssysteme "wikilink")，[Acer](https://zh.wikipedia.org/wiki/Acer "wikilink")，[DEC](https://zh.wikipedia.org/wiki/DEC "wikilink")，[NEC和](https://zh.wikipedia.org/wiki/NEC "wikilink")[DeskStation](https://zh.wikipedia.org/wiki/DeskStation "wikilink")。

已经有许多针对[MIPS架构编写或移植的](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")[操作系统](../Page/操作系统.md "wikilink")，其中包括：
SGI的[IRIX](../Page/IRIX.md "wikilink")；
[微软](../Page/微软.md "wikilink")的[Windows NT](../Page/Windows_NT.md "wikilink")（只支持到v4.0）， [Windows CE](https://zh.wikipedia.org/wiki/Windows_CE "wikilink")；
[Linux](../Page/Linux.md "wikilink")；
[FreeBSD](../Page/FreeBSD.md "wikilink")，[NetBSD](../Page/NetBSD.md "wikilink")，[OpenBSD](../Page/OpenBSD.md "wikilink")；
[UNIX](https://zh.wikipedia.org/wiki/Unix "wikilink")，[System V](https://zh.wikipedia.org/wiki/System_V "wikilink")；
[SINIX](../Page/SINIX.md "wikilink")，[QNX](../Page/QNX.md "wikilink")；
以及[MIPS Computer Systems自己拥有的](../Page/美普思科技.md "wikilink")[RISC/os](https://zh.wikipedia.org/wiki/RISC/os "wikilink").

在1990年代初期，人们猜测MIPS和其他功能强大的[精简指令集](../Page/精简指令集.md "wikilink")处理器将取代[英特尔](../Page/英特尔.md "wikilink")[IA-32架构](https://zh.wikipedia.org/wiki/IA-32 "wikilink")。[微软](../Page/微软.md "wikilink")的[Windows NT的前两个版本支持](../Page/Windows_NT.md "wikilink")\[\[Alpha\]，MIPS和\[\[PowerPC|Alpha\]，MIPS和[PowerPC](../Page/PowerPC.md "wikilink")，在较小程度上支持[Clipper架构和](https://zh.wikipedia.org/wiki/Clipper架构 "wikilink")[SPARC](../Page/SPARC.md "wikilink")。 但是，随着[英特尔](../Page/英特尔.md "wikilink")快速发布[Pentium类CPU的更快版本](https://zh.wikipedia.org/wiki/Pentium "wikilink")，[微软](../Page/微软.md "wikilink")[Windows NT](../Page/Windows_NT.md "wikilink") v4.0放弃了对[IA-32和](https://zh.wikipedia.org/wiki/IA-32 "wikilink")[Alpha的支持](https://zh.wikipedia.org/wiki/Alpha "wikilink")。[SGI决定于](https://zh.wikipedia.org/wiki/SGI "wikilink")2007年（继2006年第11次破产之后\[5\]）过渡到[IA-64和](https://zh.wikipedia.org/wiki/IA-64 "wikilink")[IA-32架构](https://zh.wikipedia.org/wiki/IA-32 "wikilink")，和2009年被[Rackable Systems, Inc.收购](https://zh.wikipedia.org/wiki/Silicon_Graphics_International "wikilink")，对MIPS/IRIX消费市场的支持按原定计划于2013年12月结束。 但是，一个支持团队仍然存在，解决特殊情况和对系统进行维护翻新，但是在有限的基础上进行着。\[6\]

### 嵌入式领域

[Ingenic_JZ4730.JPG](https://zh.wikipedia.org/wiki/File:Ingenic_JZ4730.JPG "fig:Ingenic_JZ4730.JPG")JZ4730 是一个基于MIPS架构的[SoC样例](../Page/系统芯片.md "wikilink")。\]\] 在整个1990年代，[MIPS架构被嵌入式市场广泛采用](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")，包括用于[计算机网络](../Page/计算机网络.md "wikilink")，[电信](../Page/电信.md "wikilink")，[视频街机游戏](https://zh.wikipedia.org/wiki/视频街机游戏 "wikilink")，[视频游戏机](https://zh.wikipedia.org/wiki/视频游戏机 "wikilink")，[计算机打印机](https://zh.wikipedia.org/wiki/计算机打印机 "wikilink")，数字[机顶盒](https://zh.wikipedia.org/wiki/机顶盒 "wikilink")，[数字电视](../Page/数字电视.md "wikilink")，[DSL](https://zh.wikipedia.org/wiki/DSL "wikilink")，[电缆调制解调器和](https://zh.wikipedia.org/wiki/电缆调制解调器 "wikilink")[个人数字助手](https://zh.wikipedia.org/wiki/个人数字助手 "wikilink")。

出于面向嵌入式市场的MIPS核心具有低功耗，低发热的特质，并且[MIPS架构在嵌入式领域积累了大量的开发工具及资料](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")，使其在嵌入式领域的应用仍然非常广泛。

### 面向嵌入式市场的可合成IP核

近年来，在各种[MIPS架构版本中使用的大多数技术已作为](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")[嵌入式系统](../Page/嵌入式系统.md "wikilink")设计所需的[IP核](https://zh.wikipedia.org/wiki/IP核 "wikilink")（构建模块）提供给设计厂商。MIPS官方提供[32位和](https://zh.wikipedia.org/wiki/32位 "wikilink")[64位基本](https://zh.wikipedia.org/wiki/64位 "wikilink")[IP核](https://zh.wikipedia.org/wiki/IP核 "wikilink")，被称为**4K**和**5K**。 这些[IP核可以与诸如](https://zh.wikipedia.org/wiki/IP核 "wikilink")[FPU](https://zh.wikipedia.org/wiki/FPU "wikilink")，[SIMD模块](https://zh.wikipedia.org/wiki/SIMD "wikilink")，各种输入/输出设备等附加单元混合使用。

MIPS[IP核在商业上取得了成功](https://zh.wikipedia.org/wiki/IP核 "wikilink")，现在已在许多消费和工业应用中使用。MIPS[IP核可以在较新的](https://zh.wikipedia.org/wiki/IP核 "wikilink")[Cisco](https://zh.wikipedia.org/wiki/Cisco "wikilink")，[Linksys](../Page/Linksys.md "wikilink")和Mikrotik的路由器路由器，[电缆调制解调器和](https://zh.wikipedia.org/wiki/电缆调制解调器 "wikilink")[ADSL](../Page/ADSL.md "wikilink")调制解调器，[智能卡中找到](https://zh.wikipedia.org/wiki/智能卡 "wikilink")， [激光打印机](../Page/激光打印机.md "wikilink")引擎，[机顶盒](https://zh.wikipedia.org/wiki/机顶盒 "wikilink")，[机器人](../Page/机器人.md "wikilink")和手持计算机。 在手机和PDA中，MIPS在很大程度上无法取代现有的竞争产品[ARM](https://zh.wikipedia.org/wiki/ARM "wikilink")。

用MIPS架构IP核的处理器包括：
IDT RC32438;
ATI/[AMD](https://zh.wikipedia.org/wiki/AMD "wikilink") Xilleon;
Alchemy Au1000, 1100, 1200;
[Broadcom](https://zh.wikipedia.org/wiki/博通 "wikilink") Sentry5;
[RMI](https://zh.wikipedia.org/wiki/RMI_Corporation "wikilink") XLR7xx;
[Cavium](https://zh.wikipedia.org/wiki/Cavium_Networks "wikilink") Octeon CN30xx, CN31xx, CN36xx, CN38xx and CN5xxx;
[Infineon Technologies](https://zh.wikipedia.org/wiki/Infineon_Technologies "wikilink") EasyPort, Amazon, Danube, ADM5120, WildPass, INCA-IP, INCA-IP2;
[Microchip Technology](https://zh.wikipedia.org/wiki/Microchip_Technology "wikilink") PIC32;
[NEC](https://zh.wikipedia.org/wiki/NEC "wikilink") EMMA and EMMA2, NEC VR4181A, VR4121, VR4122, VR4181A, VR4300, VR5432, VR5500;
[Oak Technologies](https://zh.wikipedia.org/wiki/Oak_Technologies "wikilink") Generation;
[PMC-Sierra](https://zh.wikipedia.org/wiki/PMC-Sierra "wikilink") RM11200;
[QuickLogic](https://zh.wikipedia.org/wiki/QuickLogic "wikilink") QuickMIPS ESP;
Toshiba *Donau*, [Toshiba](https://zh.wikipedia.org/wiki/Toshiba "wikilink") TMPR492x, TX4925, TX9956, TX7901;
[KOMDIV-32](https://zh.wikipedia.org/wiki/KOMDIV-32 "wikilink"), [KOMDIV-64](https://zh.wikipedia.org/wiki/KOMDIV-64 "wikilink");
[ELVEES Multicore](https://zh.wikipedia.org/wiki/ELVEES_Multicore "wikilink")

### 基于MIPS架构的超级计算机

[MIPS架构最有趣的应用之一是其在大规模数量的处理器应用的超级计算机中的使用](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")。 [Silicon Graphics](https://zh.wikipedia.org/wiki/Silicon_Graphics "wikilink")（SGI）在1990年代初将其业务从台式机图形工作站重新定位到[高性能计算市场](https://zh.wikipedia.org/wiki/高性能计算 "wikilink")。该公司首次涉足服务器系统的成功，则基于**R4400**和**[R8000](https://zh.wikipedia.org/wiki/R8000 "wikilink")**以及后来的**[R10000](https://zh.wikipedia.org/wiki/R10000 "wikilink")**的[Challenge系列](https://zh.wikipedia.org/wiki/SGI_Challenge "wikilink")。这些成功促使SGI创建了功能更强大的系统。**R​​10000**的高集成性使SGI生产出一种系统[Origin 2000](https://zh.wikipedia.org/wiki/Origin_2000 "wikilink")，并使用其[NUMAlink](https://zh.wikipedia.org/wiki/NUMAlink "wikilink")[一致性高速缓存非均匀存储访问模型互连将最大可集成的CPU数量扩展到](https://zh.wikipedia.org/wiki/非均匀访存模型#一致性高速缓存非均匀存储访问模型 "wikilink")1024个。Origin 2000源自[Origin 3000系列](https://zh.wikipedia.org/wiki/Origin_3000 "wikilink")，该系列最大可集成1024个CPU，但使用的CPU是频率最高700MHz的**R14000**和**R16000**芯片。2005年，当SGI做出战略决定把研发方向转移到[英特尔](../Page/英特尔.md "wikilink")的[IA-64架构时](https://zh.wikipedia.org/wiki/IA-64 "wikilink")，其基于MIPS的超级计算机的项目被取消。

一家名为[SiCortex的高性能计算公司在](https://zh.wikipedia.org/wiki/SiCortex "wikilink")2007年推出了大规模并行的基于MIPS的超级计算机。这些计算机基于MIPS64架构和使用[Kautz graph拓扑的高性能互连](https://zh.wikipedia.org/wiki/Kautz_graph "wikilink")。该系统非常节能，并且计算功能强大。该系统最创新的方面是其多核处理节点，该节点集成了六个MIPS64处理器核，一个[crossbar switch](https://zh.wikipedia.org/wiki/crossbar_switch "wikilink") [内存控制器](../Page/内存控制器.md "wikilink")，互连[DMA引擎](https://zh.wikipedia.org/wiki/DMA "wikilink")，[千兆以太网和](https://zh.wikipedia.org/wiki/千兆以太网 "wikilink")[PCIe控制器全部集成在一个仅消耗](https://zh.wikipedia.org/wiki/PCIe "wikilink")10瓦功率，但具有6[GFLOPS峰值浮点性能的芯片上](https://zh.wikipedia.org/wiki/GFLOPS "wikilink")。使用该系统的最强大的配置是SC5832，它是由972个此类节点芯片组成的单机柜超级计算机，总共具有5832个MIPS64处理器核和8.2[TFLOPS的峰值浮点性能](https://zh.wikipedia.org/wiki/TFLOPS "wikilink")。

### [龙芯](../Page/龙芯.md "wikilink")

**[龙芯](../Page/龙芯.md "wikilink")**（****，舊稱\[7\]）是由[中国科学院计算技术研究所](../Page/中国科学院计算技术研究所.md "wikilink")、[龙芯中科](../Page/龙芯中科.md "wikilink")、[神州龙芯等机构](https://zh.wikipedia.org/wiki/神州龙芯 "wikilink")、公司所设计的一系列各种芯片（包括通用[中央處理器](https://zh.wikipedia.org/wiki/中央處理器 "wikilink")、[SoC](../Page/系统芯片.md "wikilink")、[微控制器](https://zh.wikipedia.org/wiki/微控制器 "wikilink")、[芯片组](../Page/芯片组.md "wikilink")等），採用[MIPS](https://zh.wikipedia.org/wiki/MIPS指令集 "wikilink")、[LoongISA](../Page/LoongISA.md "wikilink")[精简指令集](../Page/精简指令集.md "wikilink")架構，由[MIPS科技公司授權使用](../Page/美普思科技.md "wikilink")[MIPS指令集](https://zh.wikipedia.org/wiki/MIPS架构 "wikilink")\[8\]。龙芯1号系列为嵌入式领域芯片，已经被多家企业使用。龙芯2号系列速度最高為1GHz，用于瘦客户端、工控等低中端领域。龙芯3号系列于2010年推出成品，用于桌面、服务器、超算、工控等领域。

### MIPS Aptiv 系列

在2012年发布，\[9\] MIPS Aptiv 系列包含三个基于MIPS32 Release 3架构的[32位](https://zh.wikipedia.org/wiki/32位 "wikilink")[CPU产品](../Page/中央处理器.md "wikilink")。

### MIPS Warrior 系列

在2013年六月发布，\[10\] MIPS Warrior系列包括多个基于MIPS Release 5和6架构的[32位和](https://zh.wikipedia.org/wiki/32位 "wikilink")[64位芯片产品](https://zh.wikipedia.org/wiki/64位 "wikilink")。

## 参考

## 另见

  - [MIPS处理器列表](https://zh.wikipedia.org/wiki/MIPS处理器列表 "wikilink")

[Category:微处理器](https://zh.wikipedia.org/wiki/Category:微处理器 "wikilink") [Category:MIPS架构](https://zh.wikipedia.org/wiki/Category:MIPS架构 "wikilink")

1.  [NEC Offers Two High Cost Performance 64-bit RISC Microprocessors](http://www.nec.co.jp/press/en/9801/2002.html)
2.
3.
4.
5.
6.
7.
8.  [龙芯故事 - 关于那些不明真相的群众对龙芯的疑惑](https://zhuanlan.zhihu.com/p/48986328?utm_source=qq&utm_medium=social)，龙芯有关MIPS指令集使用说明。
9.
10.