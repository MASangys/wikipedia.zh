> 本文内容由[Grub4Dos](https://zh.wikipedia.org/wiki/Grub4Dos)转换而来。


**grub4dos**是一个将Linux下的[GNU GRUB](../Page/GNU_GRUB.md "wikilink")[启动引导程序移植到DOS和Windows的一个分支](https://zh.wikipedia.org/wiki/启动引导程序 "wikilink")，是一个大幅度提高了软件和硬件兼容性的[启动引导程序](https://zh.wikipedia.org/wiki/启动引导程序 "wikilink")。

[Grub4dos.png](https://zh.wikipedia.org/wiki/File:Grub4dos.png "fig:Grub4dos.png")

该项目是由tinybit（不点）于2003年发起的，目前活跃的开发者主要有tinybit，bean，chenall，roy，yaya和karyonix等。

该程序最初正如其名，是为了兼容DOS而进行的改进，然而经过大量扩充后，目前它已经发展为一个面向更广阔应用领域的启动引导程序，但是原作者决定保留该名称。

GRUB4DOS最少只需一個檔案（GRLDR）和一段[MBR](https://zh.wikipedia.org/wiki/MBR "wikilink")/[DBR代碼即可啟動](https://zh.wikipedia.org/wiki/DBR "wikilink")，而Linux的[GRUB則需多個檔案](https://zh.wikipedia.org/wiki/GRUB "wikilink")。

## 特色

作为[GNU GRUB启动引导程序的扩充](../Page/GNU_GRUB.md "wikilink")，grub4dos将焦点放在兼容性上。这体现在这几个方面上：

  - 当系统已经安装有[操作系统](../Page/操作系统.md "wikilink")和[启动引导程序时](https://zh.wikipedia.org/wiki/启动引导程序 "wikilink")，它可以以多种多样的方式被加载。目前它可以被[DOS](../Page/DOS.md "wikilink")作为普通应用程序加载，或者被[GNU/Linux使用kexec系统调用作为内核文件加载](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")。此外，[NTLDR](../Page/NTLDR.md "wikilink")、[BOOTMGR和其它Linux下的启动引导程序均可加载之](https://zh.wikipedia.org/wiki/BOOTMGR "wikilink")。
  - 当安装为首先启动的启动引导程序时，它能启动各种各样的操作系统，其中包括GNU/Linux，[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")，[DOS](../Page/DOS.md "wikilink")等，并支持各种媒质，如[CD-ROM](../Page/CD-ROM.md "wikilink")，[软盘](../Page/软盘.md "wikilink")，[硬盘](../Page/硬盘.md "wikilink")，[U盘](https://zh.wikipedia.org/wiki/U盘 "wikilink")，[PXE等等](https://zh.wikipedia.org/wiki/PXE "wikilink")。

grub4dos最大的成功之处就是既学习了windows的方便易用，又引入linux的强大功能。

## 近况

目前，该程序仍在积极开发中，最新版本是0.4.6a。稳定版本为0.4.4。

## 另请参阅

  - [GRUB](https://zh.wikipedia.org/wiki/GRUB "wikilink")
  - [wee](https://zh.wikipedia.org/wiki/wee "wikilink")

## 相关链接

  - [无忧启动论坛GRUB4DOS区](http://bbs.wuyou.net/forum.php?mod=forumdisplay&fid=60)
  - [最新的项目主页](https://github.com/chenall/grub4dos)
  - [下载地址](http://grub4dos.chenall.net/)
  - [安装指南(英文)](https://web.archive.org/web/20160301125349/http://diddy.boot-land.net/grub4dos/files/install.htm)

[en:GNU GRUB\#Variants](https://zh.wikipedia.org/wiki/en:GNU_GRUB#Variants "wikilink")

[Category:bios](https://zh.wikipedia.org/wiki/Category:bios "wikilink") [Category:Grub](https://zh.wikipedia.org/wiki/Category:Grub "wikilink") [Category:启动引导程序](https://zh.wikipedia.org/wiki/Category:启动引导程序 "wikilink") [Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")