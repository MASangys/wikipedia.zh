**xz**是一个使用[LZMA](../Page/LZMA.md "wikilink")/LZMA2压缩[算法](../Page/算法.md "wikilink")的[无损数据压缩](../Page/无损数据压缩.md "wikilink")[文件格式](https://zh.wikipedia.org/wiki/文件格式 "wikilink")。

## 设计

和[gzip与](https://zh.wikipedia.org/wiki/gzip "wikilink")[bzip2一样](https://zh.wikipedia.org/wiki/bzip2 "wikilink")，同样支持多文件压缩，但是约定不能将多于一个的目标文件压缩进同一个[归档文件](https://zh.wikipedia.org/wiki/归档文件 "wikilink")。相反，xz通常作为一种归档文件自身的压缩格式，例如使用[tar或](https://zh.wikipedia.org/wiki/tar_\(计算机科学\) "wikilink")[cpio](https://zh.wikipedia.org/wiki/cpio "wikilink") [Unix程序创建的归档](https://zh.wikipedia.org/wiki/Unix "wikilink")。xz在[GNU](../Page/GNU.md "wikilink") [coreutils](https://zh.wikipedia.org/wiki/coreutils "wikilink")（版本7.1或更新）\[1\]中被使用。xz作为压缩软件包被收录在[Fedora](../Page/Fedora.md "wikilink")（自Fedora 12起）\[2\], [Arch Linux](../Page/Arch_Linux.md "wikilink")\[3\], [FreeBSD](../Page/FreeBSD.md "wikilink")、[Slackware Linux](https://zh.wikipedia.org/wiki/Slackware_Linux "wikilink")、[CRUX和](https://zh.wikipedia.org/wiki/CRUX "wikilink")[Funtoo Linux中](../Page/Funtoo_Linux.md "wikilink")。

## 实现

一个xz文件格式的实现[XZ实用程序已可在网上自由获得](https://zh.wikipedia.org/wiki/XZ实用程序 "wikilink")，在[GNU LGPL和](https://zh.wikipedia.org/wiki/GNU_Lesser_General_Public_License "wikilink")[GNU GPL条款下发布](https://zh.wikipedia.org/wiki/GNU_General_Public_License "wikilink")，同时还有大量软件进入了公有领域（例如liblzma等）。\[4\][GNU](../Page/GNU.md "wikilink") [tar自版本](https://zh.wikipedia.org/wiki/tar_\(计算机科学\) "wikilink")1.22起使用这一软件透明支持xz文件格式（就如同其处理gzip格式或者bzip2格式一样）。\[5\]\[6\]

xz命令行程序曾有过一个名为pxz的分支，提供多线程压缩功能，后来xz在5.2时本身就直接提供多线程了。

[7-Zip](../Page/7-Zip.md "wikilink")在9.04 beta版支持了xz文件格式。\[7\]

[WinRAR](../Page/WinRAR.md "wikilink") 在版本 5 支持了xz格式。

## 使用

xz以其优异的性能和压缩比\[8\]成为了不少开源软件（例如[GNU](../Page/GNU.md "wikilink") [coreutils](https://zh.wikipedia.org/wiki/coreutils "wikilink") 项目,\[9\] [Debian](../Page/Debian.md "wikilink") 系列系统 [deb包格式](https://zh.wikipedia.org/wiki/deb "wikilink"), [openSUSE](https://zh.wikipedia.org/wiki/openSUSE "wikilink"),\[10\] [Fedora](../Page/Fedora.md "wikilink"),\[11\] [Arch Linux](../Page/Arch_Linux.md "wikilink"),\[12\] [Slackware](../Page/Slackware.md "wikilink"),\[13\] [FreeBSD](../Page/FreeBSD.md "wikilink"),\[14\] [Gentoo](../Page/Gentoo_Linux.md "wikilink"),\[15\] [GNOME](../Page/GNOME.md "wikilink"),\[16\] 以及 [TeX Live](../Page/TeX_Live.md "wikilink")\[17\]）的压缩方式之一， 同时也可以是压缩 [Linux 内核的格式](https://zh.wikipedia.org/wiki/Linux_内核 "wikilink")。\[18\] 2013年3月, [kernel.org](https://zh.wikipedia.org/wiki/kernel.org "wikilink") 宣布使用xz作为发行内核源代码的默认格式。\[19\]

## 参见

  - [LZMA](../Page/LZMA.md "wikilink")算法
  - [无损数据压缩](../Page/无损数据压缩.md "wikilink")

## 引用

1.  [GNU Coreutils files](ftp://ftp.gnu.org/gnu/coreutils/)（See version 7.1 and newer files ending in *.tar.xz*）
2.  [Fedora 12: Features/XZRpmPayloads](https://fedoraproject.org/wiki/Features/XZRpmPayloads)
3.  [Archlinux News: Switching to xz compression for new packages](http://www.archlinux.org/news/switching-to-xz-compression-for-new-packages/)
4.  [XZ Utils Web site](http://tukaani.org/xz/)
5.  [GNU tar Web site: References](http://www.gnu.org/software/tar/#releases)
6.  [Changelog for Tar 1.22](http://git.savannah.gnu.org/cgit/tar.git/tree/ChangeLog.CVS?id=9077de9fa91886697a1294891a8d4e6d17fcd30b)
7.  [7-Zip release history](http://7-zip.org/history.txt)
8.
9.   (see version 7.1 and newer files ending in *.tar.xz*).
10. .
11. .
12. .
13. .
14. .
15. .
16. .
17. .
18. .
19.