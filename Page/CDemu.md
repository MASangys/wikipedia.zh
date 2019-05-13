**CDemu**是一个软件套件，旨在在[Linux系统下提供](../Page/Linux.md "wikilink")[模拟](../Page/磁盘映像模拟器.md "wikilink")[光盘驱动器和](../Page/光盘驱动器.md "wikilink")[光盘](../Page/光盘.md "wikilink")（包括[CD和](../Page/CD.md "wikilink")[DVD](../Page/DVD.md "wikilink")）。

CDEmu 包括:

  - 一个内核模块实现的虚拟的[SCSI](../Page/SCSI.md "wikilink")[主机总线适配器](../Page/SCSI主机适配器.md "wikilink"),
  - libmirage--一个解释[光盘镜像的软件库](../Page/光盘镜像.md "wikilink"),
  - 一个模拟[SCSI](../Page/SCSI.md "wikilink")[主机总线适配器的守护进程](../Page/SCSI主机适配器.md "wikilink"),
  - 有文本模式和GTK客户端来控制模拟器.

[Cdemu-functionality](https://zh.wikipedia.org/wiki/File:Cdemu-functionality.png "fig:Cdemu-functionality")

由CDemu的光驱可以在Linux系统下挂载。允许自动挂载。

## 历史

**CDemu** 最初是一群朋友当作挂载.CUE/.BIN
文件的[Mplayer的补丁来设计](../Page/Mplayer.md "wikilink")。当补丁完成时，他们发现他们简单的写了一个内核补丁。

CDemu 原本叫做 **Virtual CD**,但是那已经是一个商标了,而且商标拥有者要求他们不要使用这个名字。

2007年6月,CDemu 0.8 的开发停止，由另一个重写的项目取代。由Rok
Mandeljc做了这次的大部分的工作。新版本的CDEmu趋向于尽可能的在用户态做大多数的事情。2008年6月，它已经基本稳定。

## 状态

CDEmu 1.2.0支持以下光盘镜像:

  - [Nero Burning ROM](../Page/NRG_\(file_format\).md "wikilink")'s .nrg
    format,
  - [DiscJuggler](../Page/DiscJuggler.md "wikilink")'s .cdi format,
  - [Clone CD](../Page/Clone_CD.md "wikilink")'s .ccd/.sub/.img,
  - [CDRWin](../Page/CDRWin.md "wikilink")'s .cue/.bin format,
  - [ISO-9660](../Page/ISO-9660.md "wikilink") .iso format,
  - [cdrdao](../Page/cdrdao.md "wikilink")'s .toc format,
  - [Blindwrite](../Page/Blindwrite.md "wikilink") .b6t format,
  - [Alcohol 120%](../Page/Alcohol_120%.md "wikilink") .mds format,
  - [Easy CD Creator](../Page/Easy_CD_Creator.md "wikilink") .cif
    format,
  - [Roxio / WinOnCD](../Page/Easy_Media_Creator.md "wikilink") .c2d
    format,
  - [PowerISO](../Page/PowerISO.md "wikilink") .daa format.

支持大部分的[MMC-3](../Page/SCSI命令.md "wikilink"),
这意味着足够模拟一个[SCSI光驱](../Page/SCSI.md "wikilink")。

CDemu 支持 CD子轨道, [CD-Text](../Page/CD-Text.md "wikilink"),
[ISRC](../Page/International_Standard_Recording_Code.md "wikilink")，
MCNs，[ECC/EDC和](../Page/Reed-Solomon_code.md "wikilink")[DPM/RMPS](../Page/Data_Position_Measurement.md "wikilink").
也有限支持对加密压缩的镜像。

开发人员正在努力支持更多的主要格式，他们鼓励用户为此提交补丁。

## 参见

  - [Daemon Tools](../Page/Daemon_Tools.md "wikilink")
  - [Alcohol 120%](../Page/Alcohol_120%.md "wikilink")
  - [虚拟驱动器](../Page/虚拟驱动器.md "wikilink")

## 外部链接

  - [Official website](http://cdemu.sourceforge.net/)

[Category:磁盘镜像模拟软件](https://zh.wikipedia.org/wiki/Category:磁盘镜像模拟软件 "wikilink")
[Category:第三方Linux内核模块](https://zh.wikipedia.org/wiki/Category:第三方Linux内核模块 "wikilink")