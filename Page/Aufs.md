**aufs**（全称：**advanced multi-layered unification filesystem**，**高级多层统一文件系统**）用于为[Linux](../Page/Linux.md "wikilink")[文件系统](../Page/文件系统.md "wikilink")实现。该名称最初是**AnotherUnionFS**的[首字母縮略字](../Page/首字母縮略字.md "wikilink")，但从第2版开始它代表“advanced multi-layered unification filesystem”。

aufs是之前的的完全重写，2006年由开发\[1\]。它旨在提高可靠性和性能，但也引入了一些新概念，例如可写分支平衡\[2\]和其他改进——其中一些目前已在UnionFS 2.x分支中实现。

aufs被拒绝合并到主线Linux。它的代码被批评为是“稠密，不可读，无[注释](../Page/注释_\(计算机语言\).md "wikilink")”。\[3\]相反，[OverlayFS](../Page/OverlayFS.md "wikilink")已被合并到Linux内核。\[4\]\[5\]在数次尝试后，作者已经放弃。\[6\]

## 使用

[Docker最初使用aufs作为容器文件系统层](https://zh.wikipedia.org/wiki/Docker_\(軟體\) "wikilink")。它目前仍作为存储后端之一来支持。

数个[Linux发行版](../Page/Linux发行版.md "wikilink")已选择aufs作为UnionFS的替代品，包括：

  - [Knoppix](../Page/Knoppix.md "wikilink") [live CD](https://zh.wikipedia.org/wiki/live_CD "wikilink") [Linux发行版](../Page/Linux发行版.md "wikilink")，自2006年年底以来，“为了更好的稳定性和性能”\[7\]

  - ，自2008版本。与Linux-Live同时切换

  - LiveCD，完全在[内存中运行](https://zh.wikipedia.org/wiki/内存 "wikilink")

  - [Slax](../Page/Slax.md "wikilink")（及常规目的Linux-Live脚本），从第6版开始\[8\]

  - [Xandros](../Page/Xandros.md "wikilink") Linux发行版，可在ASUS [Eee PC](https://zh.wikipedia.org/wiki/華碩Eee_PC "wikilink") 901型号中使用

  - [Ubuntu](../Page/Ubuntu.md "wikilink") 10.04 LTS Live CD

  - [Debian](../Page/Debian.md "wikilink") 6.0 Live媒体

  - [Gentoo Linux](../Page/Gentoo_Linux.md "wikilink") LiveDVD 11.0\[9\]

  - [Gentoo Linux](../Page/Gentoo_Linux.md "wikilink") LiveDVD 11.2\[10\]

  - [Gentoo Linux](../Page/Gentoo_Linux.md "wikilink") LiveDVD 12.0\[11\]

  - ，通过Linux-Live脚本截止13.1.1版本，通过SaLT从13.37开始

  - [Puppy Linux可以完全在内存中运行](../Page/Puppy_Linux.md "wikilink")，而更改在关机时保存。例如，Slacko 5.3.3可运行为一个LiveCD。

## 参见

  - [OverlayFS](../Page/OverlayFS.md "wikilink")，合并到Linux核心的竞争项目

  - [文件系统](../Page/文件系统.md "wikilink")

  - ，描述文件系统分支合并的概念

  - ，更早的联合项目

  - [Syslinux](../Page/SYSLINUX.md "wikilink")

## 参考资料

## 外部链接

  - [AuFS project homepage](http://aufs.sourceforge.net/)
  - [A simple example](http://bbs.archlinux.org/viewtopic.php?pid=314698)

[Category:Linux内核支持的文件系统](https://zh.wikipedia.org/wiki/Category:Linux内核支持的文件系统 "wikilink") [Category:特殊目的自由文件系统](https://zh.wikipedia.org/wiki/Category:特殊目的自由文件系统 "wikilink") [Category:联合文件系统](https://zh.wikipedia.org/wiki/Category:联合文件系统 "wikilink")

1.
2.  [Goals and new features of aufs in the project's homepage](http://aufs.sourceforge.net/)
3.
4.
5.
6.
7.
8.  [Linux Live scripts](http://www.linux-live.org/?changes)  use AUFS for better stability
9.
10.
11.