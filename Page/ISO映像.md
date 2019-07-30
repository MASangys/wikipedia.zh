**ISO映像**是一种[光盘的](../Page/光碟.md "wikilink")，是[磁盘映像](../Page/磁盘映像.md "wikilink")的类型之一，数据由一张[光盘的每个](../Page/光碟.md "wikilink")[扇区组成](https://zh.wikipedia.org/wiki/磁盘扇区 "wikilink")，这包括光盘的[文件系统](../Page/文件系统.md "wikilink")。\[1\]ISO映像文件通常采用[文件扩展名](../Page/文件扩展名.md "wikilink")`.iso`。名称ISO取自用于[CD-ROM](../Page/CD-ROM.md "wikilink")介质的[ISO 9660文件系统](../Page/ISO_9660.md "wikilink")，但ISO映像也可包含[DVD和](../Page/數碼多功能影音光碟.md "wikilink")[蓝光光盘使用的](https://zh.wikipedia.org/wiki/蓝光光盘 "wikilink")[UDF](../Page/通用光碟格式.md "wikilink")（ISO/IEC 13346）文件系统。

ISO映像可以使用三种方式创建：使用从光盘创建，使用[光盘制作软件从一系列文件创建](../Page/光盘制作软件列表.md "wikilink")，从另一个而成。在可引导光盘上分发的软件很多都有可下载的ISO映像格式，并且类似的ISO映像大多可以写入光盘（例如CD或DVD）中。

## 描述

实际上不存在对ISO映像文件的标准定义。ISO是未压缩的，并且不使用某种容器格式；它只是逐个复制一张光盘上的数据[扇区](https://zh.wikipedia.org/wiki/磁盘扇区 "wikilink")，然后存储在一个二进制文件中。ISO映像预期包含光学媒体的[文件系统](../Page/文件系统.md "wikilink")（通常是[ISO 9660及其扩展](../Page/ISO_9660.md "wikilink")，或者[UDF](../Page/通用光碟格式.md "wikilink")），复制了存储在光盘上文件的二进制数据。ISO映像内的数据结构与光盘创建时使用的文件系统相同。

ISO文件只存储光盘上各扇区的用户数据，会忽略[控制头和错误纠正数据](../Page/CD-ROM.md "wikilink")，因此略小于光盘介质的原始映像。因为光盘上每个逻辑扇区的用户数据是2,048字节，ISO映像的大小会以2,048字节为基础单位。

此类光盘映像最常用的[文件扩展名](../Page/文件扩展名.md "wikilink")就是.iso。某些ISO映像文件会使用.img扩展名，例如出自微软[DreamSpark的映像](https://zh.wikipedia.org/wiki/DreamSpark "wikilink")；但[IMG文件也使用](../Page/IMG格式.md "wikilink").img扩展名，并往往有略显不同的内容。.udf扩展名有时也被使用，以表明此ISO映像是采用UDF而非ISO 9660文件系统。

任何单[CD-ROM](../Page/CD-ROM.md "wikilink")、[DVD或](../Page/數碼多功能影音光碟.md "wikilink")[蓝光光盘都可以存档为ISO格式](../Page/藍光光碟.md "wikilink")，制成原始介质的数字副本。与物理光盘不同，映像可以被传输到任何数据链路或可移动存储设备。ISO映像可以被很多打开，各操作系统也有一些对ISO映像的原生支持。

格式有着被不同设备、操作系统或硬件读取的能力。一个例子是，[Microsoft Windows和](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Macintosh支持单个磁盘映像的安装盘](https://zh.wikipedia.org/wiki/Mac電腦 "wikilink")（包含多个文件系统）。

ISO可以被适当的[驱动程序](../Page/驱动程序.md "wikilink")软件“挂载”，即操作系统将其模拟和对待成一个仿佛一个物理光盘。包括[GNU/Linux和](../Page/Linux.md "wikilink")[Mac OS X等大多数](https://zh.wikipedia.org/wiki/OS_X "wikilink")[类Unix操作系统提供内置功能来挂载ISO](https://zh.wikipedia.org/wiki/类Unix "wikilink")，[Windows 8也提供了此功能](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")。\[2\]其他软件还可安装驱动程序到操作系统以达到相同目的。<span class="cx-segment" data-segmentid="133"></span>

因为没有标准定义ISO光盘映像的文件格式，名词“ISO映像”有时会指任何光盘映像文件，而不限于其所用格式。

## 限制

一个CD可以有多个，其中可以包含计算机数据、音频或视频，诸如[ISO 9660等文件系统存储在这些轨道内](../Page/ISO_9660.md "wikilink")。由于ISO映像预期包含文件系统及其内容的二进制副本，ISO映像内部没有“轨道”的概念，因此一条轨道就是一个ISO映像内容的容器。这意味着多轨的CD光盘不能存储在单个ISO映像中；大多数情况下，一个ISO映像将包含多个轨道之一的数据，并且只有一份数据，如果它是在一个标准文件系统中存储为一个文件。

这也意味着，通常以多个音轨组成的[音频CD不能存储在一个ISO映像中](../Page/CDDA.md "wikilink")。此外，即便一张音频CD可以存储在一个ISO映像中，这些音轨也不包含文件系统，它们只是一个连续的已编码音频数据流。这些音频存储在中，而不是存储在一个文件系统的文件中；对它的处理方式是音轨编号、索引位置和CD时间编码，而这些信息被编码存储在CD音乐光盘每个区段的[lead-in中](https://zh.wikipedia.org/wiki/光碟燒錄技術 "wikilink")。

[VCD和](https://zh.wikipedia.org/wiki/影音光碟 "wikilink")[超级VCD需要一张CD上的至少两个轨道](../Page/SVCD.md "wikilink")，因此也不可能存储在一个ISO映像文件中。

诸如[CUE/BIN](../Page/CUE脚本.md "wikilink")、和格式可以存储多轨道光盘映像，包括音频CD。这些格式会存储计算机光盘的原始映像，包括所有轨道的信息，并有一个协同文件来描述多个轨道和每个轨道的特性。这也使光盘烧录工具能正确取得在新光盘上烧录的所有必需信息。对于音频CD，用户也可将音频数据转换为未压缩的音频文件（如[WAV](../Page/WAV.md "wikilink")或[AIFF格式](../Page/音频交换文件格式.md "wikilink")），并可以选择保留元数据（见）。

大多数软件可以将ISO映像中的数据写入硬盘或可录制介质（CD、DVD或蓝光光盘），但将ISO磁盘映像写入[闪存盘](../Page/闪存盘.md "wikilink")却时常不能。此限制更多是因为软件工具的能力所限，而不是格式本身的问题。但从2011年开始，各种软件已可以写入原始（RAW）映像文件到USB闪存盘。\[3\]\[4\]

## 参见

  - [ISO 9660](../Page/ISO_9660.md "wikilink")
  - [磁盘映像](../Page/磁盘映像.md "wikilink")
  - [El Torito](../Page/El_Torito.md "wikilink")（CD启动盘标准）
  - [Joliet (文件系统)](../Page/Joliet_\(文件系统\).md "wikilink")
  - [Live USB](https://zh.wikipedia.org/wiki/Live_USB "wikilink")
  - [免CD破解](https://zh.wikipedia.org/wiki/免CD破解 "wikilink")

## 参考资料

## 外部链接

  - [How to write ISO files to CD, DVD and BD with Linux using genisoimage, wodim, growisofs, etc.](http://wiki.archlinux.org/index.php/Optical_disc_drive)
  - [Create ISO files from CD, DVD and BD using Casper ISO Creator](https://www.cmmsol.com/blog/freeware/casper-iso-creator/)

[Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink") [Category:磁盘映像](https://zh.wikipedia.org/wiki/Category:磁盘映像 "wikilink")

1.
2.
3.
4.