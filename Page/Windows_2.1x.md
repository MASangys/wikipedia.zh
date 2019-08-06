**Windows 2.1x**是[微软](../Page/微软.md "wikilink")以[图形用户界面](../Page/图形用户界面.md "wikilink")为基础的[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")的一部分。

在[Windows 2.0发布之后不到一年](../Page/Windows_2.0.md "wikilink")，1988年5月27日，Windows/286版2.10和Windows/386版2.10被发布\[1\]。这些版本可以充分利用[英特尔](https://zh.wikipedia.org/wiki/Intel_Corporation "wikilink")[80286和](../Page/Intel_80286.md "wikilink")[80386](../Page/Intel_80386.md "wikilink")[处理器的特殊功能](https://zh.wikipedia.org/wiki/处理器 "wikilink")\[2\]。首次在安装Windows时必須要有[硬盘](../Page/硬盘.md "wikilink")\[3\]。

## 版本发行

为了跟进硬件的发展，Windows 2.1x发布有两个不同的版本，两个版本均被设计为可以支持使用于英特尔处理器的电脑。\[4\]

### Windows/286

Windows/286利用技术来增加Windows程序可使用的内存容量，同样以此为目的，该版本还推出了的[DOS](../Page/MS-DOS.md "wikilink")[驱动程序](../Page/驱动程序.md "wikilink")。同样，该版本还提供了对几款[扩展存储器的支持](../Page/擴展記憶體.md "wikilink")，尽管这些支持与[80286处理器并不相关](../Page/Intel_80286.md "wikilink")。 Windows程序的分段性质是相当适合的EMS的用法，只有当[内存中的第一个](https://zh.wikipedia.org/wiki/内存 "wikilink")[兆](../Page/兆.md "wikilink")字节变为可见，代码和数据的部分可以在接触到“[实模式](https://zh.wikipedia.org/wiki/实模式 "wikilink")”程序中使用它们的程序给出的控制。 微软鼓励用户将他们的计算机设置为只有256KB的主内存，从256KB至640KB的地址空间则留下给EMS内存动态映射使用。\[5\]

尽管名为Windows/286，但其能全面运行于8088或8086处理器上。而当一枚8086级的处理器上没有高端内存区时，Windows/286便不会去使用，然而[EMS仍然可供使用](https://zh.wikipedia.org/wiki/Expanded_memory "wikilink")。一些PC厂商将Windows/286与8086的硬件搭配出售，例如IBM出品的PS/2 25型，它包含一项可选性包括“DOS4.00和Windows套件”以面向教育市场，其中包括对学生十分有用的文字处理与演示软件。 \[6\]

### Windows/386

Windows/386比其前任更先进。在[图形用户界面](../Page/图形用户界面.md "wikilink")和应用程序作为[虚拟8086模式的任务运行之上](https://zh.wikipedia.org/wiki/虚拟86模式 "wikilink")，它引入了[保护模式的内核](https://zh.wikipedia.org/wiki/保护模式 "wikilink")。它允许多个MS-DOS程序以“虚拟8086”CPU模式并行运行，而不是总是挂起成为后台应用程序。（Windows应用程序已经可以通过[协作式多任务并行运行](https://zh.wikipedia.org/wiki/多任务处理 "wikilink")）在Windows启动之前，每个DOS应用可以在占用几千字节内存以外分配到最低限度的空间。 \[7\]

Windows/386也支持[EMS仿真](https://zh.wikipedia.org/wiki/Expanded_memory#Software_emulation "wikilink")，该功能使用80386的内存管理功能使RAM在使用超过640k以上后的行为类似于当时市面上流行的DOS应用程序所使用的仅能通过扩展卡提供的（通過将[COMMAND.COM覆盖WIN](https://zh.wikipedia.org/wiki/COMMAND.COM "wikilink")200.BIN文件，就可以在不启动Windows的图形用户界面的情况下载DOS中使用EMS仿真。）。由于不支持基于磁盘的[虚拟内存](../Page/虚拟内存.md "wikilink")，所以多个DOS程序运行时会满占可用的物理内存; 因此，微软建议如有必要还是应当添置额外的[内存和板卡](https://zh.wikipedia.org/wiki/隨機存取記憶體 "wikilink")。 \[8\]

无论是以如或者[QEMM](../Page/QEMM.md "wikilink")这样的，还是[DOS扩展程序](https://zh.wikipedia.org/wiki/DOS_扩展器 "wikilink")，这些版本的系统都有自己的扩展内存管理且只能在保护模式下正常运行。在[Windows 3.0中这个问题被优化](https://zh.wikipedia.org/wiki/Windows_3.0 "wikilink")，兼容在“标准模式”下的（VCPI），以及在“386增强”模式下的（DPMI）（从Windows 3.0到[Windows 98的所有版本中](../Page/Windows_98.md "wikilink")，EMM386中都有一个可以用来设置保护模式的漏洞） \[9\]\[10\]。Windows 3.0中也有使用DWEMM（**D**irect **W**rite **E**nhanced **M**emory **M**odule，直接写入增强型内存模块）的功能。这使得系统可以拥有更快、更时尚的图形用户界面，以及真正的扩展内存的支持 \[11\]。

## Windows 2.11

1989年3月13日，微软发布Windows2.11的Windows/286和Windows/386版本，该版本在内存管理、对[AppleTalk的支持和快速打印以及打印机驱动升级等功能上做了一些小的改动](https://zh.wikipedia.org/wiki/AppleTalk "wikilink")。\[12\]

Windows 2.11在1990年5月被[Windows 3.0取代](https://zh.wikipedia.org/wiki/Windows_3.0 "wikilink")，但微软另外为其提供了12年的支持服务，直到2001年12月31日才结束支持服务。\[13\]

## 参考来源

<references />

## 扩展阅读

  - [PC Magazine](https://zh.wikipedia.org/wiki/PC_Magazine "wikilink"). *[20 Years of Windows Solutions – Windows 286 & 386](http://www.pcmag.com/article2/0,2817,1868387,00.asp)*.
  - [YouTube-upload of Windows/386 promotion video](https://www.youtube.com/watch?v=noEHHB6rnMI)

## 外部链接

  - [Microsoft Windows Version History](https://web.archive.org/web/20141219013444/http://support.microsoft.com/kb/32905)

[Category:1988年软件](https://zh.wikipedia.org/wiki/Category:1988年软件 "wikilink")

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