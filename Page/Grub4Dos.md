**grub4dos**是一个将Linux下的[GNU
GRUB](../Page/GNU_GRUB.md "wikilink")[启动引导程序移植到DOS和Windows的一个分支](../Page/启动引导程序.md "wikilink")，是一个大幅度提高了软件和硬件兼容性的[启动引导程序](../Page/启动引导程序.md "wikilink")。

[Grub4dos.png](https://zh.wikipedia.org/wiki/File:Grub4dos.png "fig:Grub4dos.png")

该项目是由tinybit（不点）于2003年发起的，目前活跃的开发者主要有tinybit，bean，chenall，roy，yaya和karyonix等。

该程序最初正如其名，是为了兼容DOS而进行的改进，然而经过大量扩充后，目前它已经发展为一个面向更广阔应用领域的启动引导程序，但是原作者决定保留该名称。

GRUB4DOS最少只需一個檔案（GRLDR）和一段[MBR](../Page/MBR.md "wikilink")/[DBR代碼即可啟動](../Page/DBR.md "wikilink")，而Linux的[GRUB則需多個檔案](../Page/GRUB.md "wikilink")。

## 特色

作为[GNU
GRUB启动引导程序的扩充](../Page/GNU_GRUB.md "wikilink")，grub4dos将焦点放在兼容性上。这体现在这几个方面上：

  - 当系统已经安装有[操作系统和](../Page/操作系统.md "wikilink")[启动引导程序时](../Page/启动引导程序.md "wikilink")，它可以以多种多样的方式被加载。目前它可以被[DOS作为普通应用程序加载](../Page/DOS.md "wikilink")，或者被[GNU/Linux使用kexec系统调用作为内核文件加载](../Page/GNU/Linux.md "wikilink")。此外，[NTLDR](../Page/NTLDR.md "wikilink")、[BOOTMGR和其它Linux下的启动引导程序均可加载之](../Page/BOOTMGR.md "wikilink")。
  - 当安装为首先启动的启动引导程序时，它能启动各种各样的操作系统，其中包括GNU/Linux，[Windows](../Page/Windows.md "wikilink")，[DOS等](../Page/DOS.md "wikilink")，并支持各种媒质，如[CD-ROM](../Page/CD-ROM.md "wikilink")，[软盘](../Page/软盘.md "wikilink")，[硬盘](../Page/硬盘.md "wikilink")，[U盘](../Page/U盘.md "wikilink")，[PXE等等](../Page/PXE.md "wikilink")。

grub4dos最大的成功之处就是既学习了windows的方便易用，又引入linux的强大功能。

## 近况

目前，该程序仍在积极开发中，最新版本是0.4.6a。稳定版本为0.4.4。

## 另请参阅

  - [GRUB](../Page/GRUB.md "wikilink")
  - [wee](../Page/wee.md "wikilink")

## 相关链接

  - [无忧启动论坛GRUB4DOS区](http://bbs.wuyou.net/forum.php?mod=forumdisplay&fid=60)
  - [最新的项目主页](https://github.com/chenall/grub4dos)
  - [下载地址](http://grub4dos.chenall.net/)
  - [安装指南(英文)](http://diddy.boot-land.net/grub4dos/files/install.htm)

[en:GNU GRUB\#Variants](../Page/en:GNU_GRUB#Variants.md "wikilink")

[Category:bios](https://zh.wikipedia.org/wiki/Category:bios "wikilink")
[Category:Grub](https://zh.wikipedia.org/wiki/Category:Grub "wikilink")
[Category:启动引导程序](https://zh.wikipedia.org/wiki/Category:启动引导程序 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")