{{ Otheruses|subject=電腦作業系統的用户空间文件系统|other=保險絲或稱熔絲（Fuse）|保險絲}}
**用户空间文件系统**（**F**ilesystem in
**Use**rspace，簡稱**FUSE**）是一个面向[类Unix计算机](../Page/类Unix.md "wikilink")[操作系统的](../Page/操作系统.md "wikilink")[软件接口](../Page/应用程序接口.md "wikilink")，它使无特权的用户能够无需编辑[内核代码而创建自己的](../Page/内核.md "wikilink")[文件系统](../Page/文件系统.md "wikilink")。目前[Linux通过](../Page/Linux.md "wikilink")[内核模块对此进行支持](../Page/内核模块.md "wikilink")。一些文件系统如[ZFS](../Page/ZFS.md "wikilink")、[glusterfs和](../Page/glusterfs.md "wikilink")[lustre使用FUSE实现](../Page/lustre.md "wikilink")。

Linux用于支持用户空间文件系统的内核模块名叫FUSE，FUSE一词有时特指Linux下的用户空间文件系统。

[文件系统是一个通用操作系统重要的组成部分](../Page/文件系统.md "wikilink")。传统上操作系统在[内核层面上对文件系统提供支持](../Page/内核.md "wikilink")。而通常内核态的代码难以调试，生产率较低。

Linux从2.6.14版本开始通过FUSE模块支持在用户空间实现文件系统。

在用户空间实现文件系统能够大幅提高生产率，简化了为操作系统提供新的文件系统的工作量，特别适用于各种[虚拟文件系统和](../Page/虚拟文件系统.md "wikilink")[网络文件系统](../Page/网络文件系统.md "wikilink")。上述[ZFS和](../Page/ZFS.md "wikilink")[glusterfs都属于](../Page/glusterfs.md "wikilink")[网络文件系统](../Page/网络文件系统.md "wikilink")。但是，在用户态实现文件系统必然会引入额外的内核态/用户态切换带来的开销，对性能会产生一定影响。

FUSE可用于[Linux](../Page/Linux.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[OpenBSD](../Page/OpenBSD.md "wikilink")、[NetBSD](../Page/NetBSD.md "wikilink")（作为[puffs](../Page/PUFFS_\(NetBSD\).md "wikilink")）、[OpenSolaris](../Page/OpenSolaris.md "wikilink")、[Minix
3](../Page/Minix_3.md "wikilink")、[Android和](../Page/Android.md "wikilink")[macOS](../Page/macOS.md "wikilink")。\[1\]

## 比较知名的用户空间文件系统

  - [ExpanDrive](../Page/ExpanDrive.md "wikilink")：商业文件系统，实现了SFTP/FTP/FTPS协议；
  - [GlusterFS](../Page/GlusterFS.md "wikilink")：用于[集群的](../Page/计算机集群.md "wikilink")[分布式文件系统](../Page/分布式文件系统.md "wikilink")，可以扩展到[PB级](../Page/PB.md "wikilink")；
  - [SSHFS](../Page/SSHFS.md "wikilink")：通过SSH协议访问远程文件系统；
  - [GmailFS](../Page/GmailFS.md "wikilink")：通过文件系统方式访问[GMail](../Page/GMail.md "wikilink")；
  - [EncFS](../Page/EncFS.md "wikilink")：[加密的虚拟文件系统](../Page/加密.md "wikilink")
  - [NTFS-3G和](../Page/NTFS-3G.md "wikilink")[Captive
    NTFS](../Page/Captive_NTFS.md "wikilink")，在非[Windows中对](../Page/Windows.md "wikilink")[NTFS文件系统提供支持](../Page/NTFS.md "wikilink")；
  - [WikipediaFS](../Page/WikipediaFS.md "wikilink")：支持通过文件系统接口访问[Wikipedia上的文章](../Page/Wikipedia.md "wikilink")；
  - [升阳公司的](../Page/Sun_Microsystems.md "wikilink")[Lustre](../Page/Lustre.md "wikilink")：和[GlusterFS类似但更早的一个](../Page/GlusterFS.md "wikilink")[集群](../Page/集群.md "wikilink")[文件系统](../Page/文件系统.md "wikilink")
  - [ZFS](../Page/ZFS.md "wikilink")：[Lustre的](../Page/Lustre.md "wikilink")[Linux版](../Page/Linux.md "wikilink")；
  - [archivemount](../Page/archivemount.md "wikilink")：
  - [HDFS](../Page/HDFS.md "wikilink"):
    [Hadoop提供的分布式文件系统](../Page/Hadoop.md "wikilink")。HDFS可以通过一系列命令访问，并不一定经过Linux
    FUSE；

## 参考资料

## 外部链接

  - [FUSE Home Page](http://fuse.sourceforge.net/)

  - [Develop your own filesystem with
    FUSE](http://www.ibm.com/developerworks/linux/library/l-fuse/) by
    Sumit Singh

  - [List of FUSE
    filesystems](https://web.archive.org/web/20090303111857/http://apps.sourceforge.net/mediawiki/fuse/index.php?title=FileSystems)

  - [Fuse for FreeBSD](http://fuse4bsd.creo.hu/)

  - [Fuse for
    Windows](https://web.archive.org/web/20090214194341/http://fuse4win.4host.ru/)

[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:特殊目的自由文件系统](https://zh.wikipedia.org/wiki/Category:特殊目的自由文件系统 "wikilink")
[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")
[Category:Unix文件系统相关软件](https://zh.wikipedia.org/wiki/Category:Unix文件系统相关软件 "wikilink")
[Category:用户空间文件系统](https://zh.wikipedia.org/wiki/Category:用户空间文件系统 "wikilink")

1.