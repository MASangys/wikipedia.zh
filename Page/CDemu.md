**CDemu**是一个软件套件，旨在在[Linux](../Page/Linux.md "wikilink")系统下提供[模拟](https://zh.wikipedia.org/wiki/磁盘映像模拟器 "wikilink")[光盘驱动器](../Page/光盘驱动器.md "wikilink")和[光盘](https://zh.wikipedia.org/wiki/光盘 "wikilink")（包括[CD](../Page/CD.md "wikilink")和[DVD](https://zh.wikipedia.org/wiki/DVD "wikilink")）。

CDEmu 包括:

  - 一个内核模块实现的虚拟的[SCSI](https://zh.wikipedia.org/wiki/SCSI "wikilink")[主机总线适配器](https://zh.wikipedia.org/wiki/SCSI主机适配器 "wikilink"),
  - libmirage--一个解释[光盘镜像的软件库](https://zh.wikipedia.org/wiki/光盘镜像 "wikilink"),
  - 一个模拟[SCSI](https://zh.wikipedia.org/wiki/SCSI "wikilink")[主机总线适配器的守护进程](https://zh.wikipedia.org/wiki/SCSI主机适配器 "wikilink"),
  - 有文本模式和GTK客户端来控制模拟器.

[Cdemu-functionality](https://zh.wikipedia.org/wiki/File:Cdemu-functionality.png "fig:Cdemu-functionality")

由CDemu的光驱可以在Linux系统下挂载。允许自动挂载。

## 历史

**CDemu** 最初是一群朋友当作挂载.CUE/.BIN 文件的[Mplayer的补丁来设计](https://zh.wikipedia.org/wiki/Mplayer "wikilink")。当补丁完成时，他们发现他们简单的写了一个内核补丁。

CDemu 原本叫做 **Virtual CD**,但是那已经是一个商标了,而且商标拥有者要求他们不要使用这个名字。

2007年6月,CDemu 0.8 的开发停止，由另一个重写的项目取代。由Rok Mandeljc做了这次的大部分的工作。新版本的CDEmu趋向于尽可能的在用户态做大多数的事情。2008年6月，它已经基本稳定。

## 状态

CDEmu 1.2.0支持以下光盘镜像:

  - [Nero Burning ROM](https://zh.wikipedia.org/wiki/NRG_\(file_format\) "wikilink")'s .nrg format,
  - [DiscJuggler](https://zh.wikipedia.org/wiki/DiscJuggler "wikilink")'s .cdi format,
  - [Clone CD](https://zh.wikipedia.org/wiki/Clone_CD "wikilink")'s .ccd/.sub/.img,
  - [CDRWin](https://zh.wikipedia.org/wiki/CDRWin "wikilink")'s .cue/.bin format,
  - [ISO-9660](https://zh.wikipedia.org/wiki/ISO-9660 "wikilink") .iso format,
  - [cdrdao](https://zh.wikipedia.org/wiki/cdrdao "wikilink")'s .toc format,
  - [Blindwrite](https://zh.wikipedia.org/wiki/Blindwrite "wikilink") .b6t format,
  - [Alcohol 120%](../Page/Alcohol_120%.md "wikilink") .mds format,
  - [Easy CD Creator](https://zh.wikipedia.org/wiki/Easy_CD_Creator "wikilink") .cif format,
  - [Roxio / WinOnCD](https://zh.wikipedia.org/wiki/Easy_Media_Creator "wikilink") .c2d format,
  - [PowerISO](https://zh.wikipedia.org/wiki/PowerISO "wikilink") .daa format.

支持大部分的[MMC-3](https://zh.wikipedia.org/wiki/SCSI命令 "wikilink"), 这意味着足够模拟一个[SCSI光驱](https://zh.wikipedia.org/wiki/SCSI "wikilink")。

CDemu 支持 CD子轨道, [CD-Text](https://zh.wikipedia.org/wiki/CD-Text "wikilink"), [ISRC](https://zh.wikipedia.org/wiki/International_Standard_Recording_Code "wikilink")， MCNs，[ECC/EDC和](https://zh.wikipedia.org/wiki/Reed-Solomon_code "wikilink")[DPM/RMPS](https://zh.wikipedia.org/wiki/Data_Position_Measurement "wikilink"). 也有限支持对加密压缩的镜像。

开发人员正在努力支持更多的主要格式，他们鼓励用户为此提交补丁。

## 参见

  - [Daemon Tools](https://zh.wikipedia.org/wiki/Daemon_Tools "wikilink")
  - [Alcohol 120%](../Page/Alcohol_120%.md "wikilink")
  - [虚拟驱动器](https://zh.wikipedia.org/wiki/虚拟驱动器 "wikilink")

## 外部链接

  - [Official website](http://cdemu.sourceforge.net/)

[Category:磁盘镜像模拟软件](https://zh.wikipedia.org/wiki/Category:磁盘镜像模拟软件 "wikilink") [Category:第三方Linux内核模块](https://zh.wikipedia.org/wiki/Category:第三方Linux内核模块 "wikilink")