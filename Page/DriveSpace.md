> 本文内容由[DriveSpace](https://zh.wikipedia.org/wiki/DriveSpace)转换而来。


**DriveSpace**（最初称为**DoubleSpace**，即双倍空间）是一个从[MS-DOS](../Page/MS-DOS.md "wikilink") 6.0版本开始提供的[磁盘压缩](../Page/磁盘压缩.md "wikilink")实用工具。DriveSpace的目的是用户可在磁盘空间上存储的数据量，通过即时的透明压缩和解压。它主要用于[硬盘](../Page/硬盘.md "wikilink")，但也支持对[软盘](../Page/软盘.md "wikilink")使用。

## 概述

最常见的使用场景为，用户的电脑中有一个硬盘，所有空间都已分配到一个分区（通常是C:）。该软件会压缩整个驱动器的内容到根分区中的一个大文件，然后在系统启动时，驱动程序将这个大文件分配为驱动器C:，使文件如往常一样访问。

微软决定开发DoubleSpace并将其添加到MS-DOS的原因很可能是，其他制造商（[IBM](../Page/IBM.md "wikilink")和[Novell](../Page/Novell.md "wikilink")）的基于DOS的操作系统事实上已开始在第三方产品中包含磁盘压缩软件。

相比从头开发自己的产品，微软取得了公司[DoubleDisk产品的技术授权](https://zh.wikipedia.org/wiki/DoubleDisk "wikilink")，并在将其调整后成为DoubleSpace。比如说，控制压缩、解压缩的驱动程序DBLSPACE.BIN更加深入地集成到操作系统（在CONFIG.SYS文件前加载）。

微软最初试图获得的技术授权，它有一个名为Stacker的类似产品，但谈判失败了。微软后被Stac Electronics成功起诉产品侵犯某些压缩专利。在审理期间，Stac Electronics称微软试图获取Stacker授权时拒绝支付任何费用，仅提供Stac Electronics开发增强产品的可能性。

## 消耗和兼容情况

有部分计算机程序（特别是游戏）与DoubleSpace不兼容，因为它们会绕过DoubleSpace的驱动程序。DoubleSpace也会显著消耗大量，因此将很难运行占用大量内存的程序。

## 软件缺陷与数据丢失

在软件发布后不久，一些数据丢失的报告就已出现。一家名为Blossom软件的公司声称已发现了一个可能导致数据损坏的软件缺陷。该缺陷会在写入文件到严重碎片化的磁盘时出现，并用一个称为BUST.EXE的程序证明。这家公司出售一个名为DoubleCheck的程序，用途是检查可能导致此错误的碎片状况。微软的立场是，这个错误不太可能发生，但已在MS-DOS 6.2中修复此问题。\[1\]

碎片状况与DoubleSpace压缩单个簇（大小8K）并将其适配到磁盘的方式有关， occupying fewer sectors (size 512 bytes) than the fixed number required without DoubleSpace (16 sectors in this example). 这导致可能发生一种内部碎片问题，即DoubleSpace将无法找到足够的连续扇区存储压缩的簇，即使有足够的可用空间。

其他潜在的数据丢失原因包括：DoubleSpace的内存区域被其他程序损坏。DoubleSpace的内存区域未受保护，因为在MS-DOS运行在[真實模式](../Page/真實模式.md "wikilink")下。微软已尝试在MS-DOS 6.2版本的DoubleSpace中弥补这一点，一项名为DoubleGuard的功能会检查此类损坏。

将整个驱动器压缩到单个文件意味着，用户有可能会意外地删除所有数据。这可能在用户无意间访问到包含此文件的托管驱动器时发生。托管驱动器通常被压缩驱动程序映射到H:，但如果压缩驱动程序加载失败，用户可能会看到它在驱动器C:

在DoubleSpace完成更新其数据结构前关闭计算机也可能导致数据丢失。此问题在微软默认启用MS-DOS 6.0中SMARTDRV磁盘缓存软件的写入缓存后更为严重。由于此更改，在退出应用程序后，MS-DOS提示符可能会在所有数据写入磁盘前出现。在那个时代，由于缺乏关机控制程序（现代操作系统中则很常见），许多用户会将看到MS-DOS提示符作为现在可安全关闭计算机的表象，而这在MS-DOS 6.0之前也基本正确。微软在MS-DOS 6.2中处理了此问题，写入缓存仍然默认启用，但缓存会在命令行提示符出现前被强制写入。

## 附加组件

AddStor提供了一个名为的附加组件产品，它包含大量工具来增强MS-DOS 6.0中提供的DoubleSpace的功能。这包括各种诊断功能，已压缩可移动介质自动挂载为习惯布局，以及后台整理DoubleSpace已压缩驱动器的磁盘碎片。\[2\]为了在后台整理文件碎片，它可能让DoubleTools替换底层的DoubleSpace驱动程序（DBLSPACE.BIN）为DoubleTools提供的版本。替换这个驱动程序也能启用此产品的其他增强功能，例如在检测到[Intel 80386或更高级](../Page/Intel_80386.md "wikilink")[CPU时使用](../Page/中央处理器.md "wikilink")[32位代码路径](https://zh.wikipedia.org/wiki/32位 "wikilink")、缓存功能，以及它所支持的——这也允许对它的某些缓冲区使用[扩展内存](https://zh.wikipedia.org/wiki/延伸記憶體 "wikilink")（减少驱动程序在和上占用的总空间，虽然这以稍微降低速度为代价）。\[3\]另一个功能是在多个软盘上分割压缩卷，在插入第一个磁盘的情况下就能看到整个卷（并在需要时提示更换光盘）。也可以与远程计算机共享压缩卷。Double Tools还能够在压缩的[软盘](../Page/软盘.md "wikilink")上放置一个特殊的实用程序，这样在即使没有DoubleSpace（或Double Tools）的计算机上也可以访问压缩的数据。

早前开发DoubleDisk并授权给微软的公司Vertisoft后来开发并出售一个名为SpaceManager的DoubleSpace的附加组件程序，其中包含大量可用性增强，并提供改进的压缩率。

其他产品（例如Stac Electronics的Stacker的晚期版本）可以转换现有的DoubleSpace已压缩驱动器到它们自己的格式。

## 后期版本

### MS-DOS 6.2

MS-DOS 6.2包含一个新的改进后的DoubleSpace版本。它已支持移除DoubleSpace。[SCANDISK程序在此版本中引入](../Page/Microsoft_ScanDisk.md "wikilink")，可以扫描压缩和非压缩的驱动器，包括检查DoubleSpace的内部结构。安全功能（称为DoubleGuard）被添加，以防止内存损坏导致数据丢失。与MS-DOS 6.0中提供的版本相比，DoubleSpace驱动程序的内存占用减少。上面讨论的碎片问题已修复。

### MS-DOS 6.21

因为就的诉讼成功，微软发布了不含DoubleSpace的MS-DOS 6.21。法庭禁令也禁止再分发以前任何包含DoubleSpace的MS-DOS版本。

### MS-DOS 6.22

MS-DOS 6.22包含一个磁盘压缩软件的重新实现版本，但这次以**DriveSpace**为名发布。该软件从用户角度看与MS-DOS 6.2中的DoubleSpace基本相同，并且兼容之前的版本。

### Windows 95中的DriveSpace

[Windows 95通过一个原生](../Page/Windows_95.md "wikilink")32位驱动程序以及图形版软件工具完全支持访问DoubleSpace/DriveSpace的压缩驱动器。MS-DOS DriveSpace用户可以无障碍升级到Windows 95。此外， 包包含DriveSpace第三版。此版本引入了新的压缩格式（HiPack和UltraPack），具有不同的性能特性，可提供更高的压缩率，还有一种工具，可以根据文件的使用频率使用不同的格式重新压缩磁盘上的文件。可以从DriveSpace 2升级到DriveSpace 3，但没有降级到DriveSpace 2的路径。虽然，可以解压缩DriveSpace 3驱动器。因为新的功能，DriveSpace 3的DOS设备驱动程序的内存占用大约为150KB。这导致了用户难以重启到用于运行游戏的Windows 95的MS-DOS模式，因为可用的减少了。

DriveSpace 3也在Windows 95 OSR2中附带，但许多功能被禁用，除非Plus\!也已安装。DriveSpace也不能与FAT32一起使用，这使其几乎不会用在大空间的PC硬盘。

### Windows 98中的DriveSpace

[Windows 98附有DriveSpace](../Page/Windows_98.md "wikilink") 3作为操作系统的一部分。功能与Windows 95 with Plus\!相同。

### Windows Me中的DriveSpace

因为[真实模式支持被移除](../Page/真實模式.md "wikilink")、FAT32走向主流和DriveSpace不再受欢迎，[Windows Me中的DriveSpace只有有限的支持](../Page/Windows_Me.md "wikilink")。DriveSpace不再支持硬盘压缩，但仍支持读取和写入已压缩的可移动媒体，但除此之外，DriveSpace支持的操作是删除和重新分配已压缩驱动器。

复制Windows 98中的可执行文件替换Windows ME系统中的文件可以非正式的恢复DriveSpace 3的所有功能。这样做之后，可以在Windows 98上如往常一样压缩新的驱动器。

## 对Windows其他文件系统的压缩

  - DriveSpace工具不支持[FAT32](https://zh.wikipedia.org/wiki/FAT32 "wikilink")。
  - [NTFS](../Page/NTFS.md "wikilink")在以[Windows NT为基础的操作系统上有自己原生的压缩技术](../Page/Windows_NT.md "wikilink")，不同于DriveSpace。

## 微软外的支持

DMSDOS是一个Linux内核驱动程序\[4\]\[5\]，开发于1990年代后期，支持读取和写入DoubleSpace/DriveSpace磁盘。不过，读取和写入到压缩的文件系统仅在内核版本为2.0、2.1和2.2时可靠。

## 参考资料

## 外部链接

  -
  - [DoubleSpace Overview](http://www.techhelpmanual.com/787-doublespace_overview.html)

  - [MDFAT](http://www.techhelpmanual.com/814-mapping_dos_fat_to_mdfat.html)

  - [CVF layout](http://www.techhelpmanual.com/805-doublespace_compressed_volume_file_layout.html)

  - [MRCI](http://www.techhelpmanual.com/815-microsoft_real_time_compression_interface__mrci_.html)

[Category:数据压缩](https://zh.wikipedia.org/wiki/Category:数据压缩 "wikilink") [Category:已停止开发的微软软件](https://zh.wikipedia.org/wiki/Category:已停止开发的微软软件 "wikilink") [Category:已停止开发的Windows组件](https://zh.wikipedia.org/wiki/Category:已停止开发的Windows组件 "wikilink") [Category:压缩文件系统](https://zh.wikipedia.org/wiki/Category:压缩文件系统 "wikilink") [Category:DOS技术](https://zh.wikipedia.org/wiki/Category:DOS技术 "wikilink") [Category:Windows_95](https://zh.wikipedia.org/wiki/Category:Windows_95 "wikilink") [Category:Windows_98](https://zh.wikipedia.org/wiki/Category:Windows_98 "wikilink")

1.
2.
3.
4.
5.