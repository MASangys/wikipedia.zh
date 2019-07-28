{{ Otheruses|subject=電腦作業系統的用户空间文件系统|other=保險絲或稱熔絲（Fuse）|保險絲}}
**用户空间文件系统**（**F**ilesystem in
**Use**rspace，簡稱**FUSE**）是一个面向[类Unix计算机](https://zh.wikipedia.org/wiki/类Unix "wikilink")[操作系统](../Page/操作系统.md "wikilink")的[软件接口](../Page/应用程序接口.md "wikilink")，它使无特权的用户能够无需编辑[内核](../Page/内核.md "wikilink")代码而创建自己的[文件系统](../Page/文件系统.md "wikilink")。目前[Linux](../Page/Linux.md "wikilink")通过[内核模块对此进行支持](https://zh.wikipedia.org/wiki/内核模块 "wikilink")。一些文件系统如[ZFS](../Page/ZFS.md "wikilink")、[glusterfs和](https://zh.wikipedia.org/wiki/glusterfs "wikilink")[lustre使用FUSE实现](https://zh.wikipedia.org/wiki/lustre "wikilink")。

Linux用于支持用户空间文件系统的内核模块名叫FUSE，FUSE一词有时特指Linux下的用户空间文件系统。

[文件系统](../Page/文件系统.md "wikilink")是一个通用操作系统重要的组成部分。传统上操作系统在[内核](../Page/内核.md "wikilink")层面上对文件系统提供支持。而通常内核态的代码难以调试，生产率较低。

Linux从2.6.14版本开始通过FUSE模块支持在用户空间实现文件系统。

在用户空间实现文件系统能够大幅提高生产率，简化了为操作系统提供新的文件系统的工作量，特别适用于各种[虚拟文件系统和](https://zh.wikipedia.org/wiki/虚拟文件系统 "wikilink")[网络文件系统](../Page/网络文件系统.md "wikilink")。上述[ZFS](../Page/ZFS.md "wikilink")和[glusterfs都属于](https://zh.wikipedia.org/wiki/glusterfs "wikilink")[网络文件系统](../Page/网络文件系统.md "wikilink")。但是，在用户态实现文件系统必然会引入额外的内核态/用户态切换带来的开销，对性能会产生一定影响。

FUSE可用于[Linux](../Page/Linux.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[OpenBSD](../Page/OpenBSD.md "wikilink")、[NetBSD](../Page/NetBSD.md "wikilink")（作为[puffs](https://zh.wikipedia.org/wiki/PUFFS_\(NetBSD\) "wikilink")）、[OpenSolaris](../Page/OpenSolaris.md "wikilink")、[Minix
3](https://zh.wikipedia.org/wiki/Minix_3 "wikilink")、[Android](../Page/Android.md "wikilink")和[macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")。\[1\]

## 比较知名的用户空间文件系统

  - [ExpanDrive](https://zh.wikipedia.org/wiki/ExpanDrive "wikilink")：商业文件系统，实现了SFTP/FTP/FTPS协议；
  - [GlusterFS](../Page/GlusterFS.md "wikilink")：用于[集群的](../Page/计算机集群.md "wikilink")[分布式文件系统](https://zh.wikipedia.org/wiki/分布式文件系统 "wikilink")，可以扩展到[PB级](https://zh.wikipedia.org/wiki/PB "wikilink")；
  - [SSHFS](../Page/SSHFS.md "wikilink")：通过SSH协议访问远程文件系统；
  - [GmailFS](../Page/GmailFS.md "wikilink")：通过文件系统方式访问[GMail](https://zh.wikipedia.org/wiki/GMail "wikilink")；
  - [EncFS](https://zh.wikipedia.org/wiki/EncFS "wikilink")：[加密的虚拟文件系统](https://zh.wikipedia.org/wiki/加密 "wikilink")
  - [NTFS-3G](../Page/NTFS-3G.md "wikilink")和[Captive
    NTFS](https://zh.wikipedia.org/wiki/Captive_NTFS "wikilink")，在非[Windows中对](https://zh.wikipedia.org/wiki/Windows "wikilink")[NTFS](../Page/NTFS.md "wikilink")文件系统提供支持；
  - [WikipediaFS](https://zh.wikipedia.org/wiki/WikipediaFS "wikilink")：支持通过文件系统接口访问[Wikipedia上的文章](https://zh.wikipedia.org/wiki/Wikipedia "wikilink")；
  - [升阳公司的](https://zh.wikipedia.org/wiki/Sun_Microsystems "wikilink")[Lustre](../Page/Lustre.md "wikilink")：和[GlusterFS](../Page/GlusterFS.md "wikilink")类似但更早的一个[集群](https://zh.wikipedia.org/wiki/集群 "wikilink")[文件系统](../Page/文件系统.md "wikilink")
  - [ZFS](../Page/ZFS.md "wikilink")：[Lustre](../Page/Lustre.md "wikilink")的[Linux](../Page/Linux.md "wikilink")版；
  - [archivemount](https://zh.wikipedia.org/wiki/archivemount "wikilink")：
  - [HDFS](https://zh.wikipedia.org/wiki/HDFS "wikilink"):
    [Hadoop提供的分布式文件系统](https://zh.wikipedia.org/wiki/Hadoop "wikilink")。HDFS可以通过一系列命令访问，并不一定经过Linux
    FUSE；

## 参考资料

## 外部链接

  - [FUSE Home Page](http://fuse.sourceforge.net/)

  - [Develop your own filesystem with
    FUSE](http://www.ibm.com/developerworks/linux/library/l-fuse/) by
    Sumit Singh

  - [List of FUSE
    filesystems](https://web.archive.org/web/20090303111857/http://apps.sourceforge.net/mediawiki/fuse/index.php?title=FileSystems)

  - [Fuse for
    FreeBSD](https://web.archive.org/web/20070411043200/http://fuse4bsd.creo.hu/)

  - [Fuse for
    Windows](https://web.archive.org/web/20090214194341/http://fuse4win.4host.ru/)

[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:特殊目的自由文件系统](https://zh.wikipedia.org/wiki/Category:特殊目的自由文件系统 "wikilink")
[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")
[Category:Unix文件系统相关软件](https://zh.wikipedia.org/wiki/Category:Unix文件系统相关软件 "wikilink")
[Category:用户空间文件系统](https://zh.wikipedia.org/wiki/Category:用户空间文件系统 "wikilink")

1.