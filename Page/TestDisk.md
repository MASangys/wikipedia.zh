**TestDisk**是一款[自由开源的](../Page/自由及开放源代码软件.md "wikilink")[数据恢复工具](https://zh.wikipedia.org/wiki/数据恢复 "wikilink")，主要设计用来帮助恢复丢失的磁盘[分区](https://zh.wikipedia.org/wiki/分区 "wikilink")，修复无法引导的磁盘中的软件问题，以及特定种类的病毒或人类过失（例如不慎抹除分区表）。 TestDisk也可用来收集关于某个损坏磁盘的详细信息，可以用来送给技师进一步分析。

## 操作系统支持

TestDisk支持以下这些操作系统：

  - [DOS](../Page/DOS.md "wikilink")：实模式或者 Win9x DOS 模拟
  - [Microsoft
    Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")：[NT4](../Page/Windows_NT.md "wikilink")、[2000](../Page/Windows_2000.md "wikilink")、[XP](../Page/Windows_XP.md "wikilink")、[2003](../Page/Windows_Server_2003.md "wikilink")、[2008](../Page/Windows_Server_2008.md "wikilink")、[Vista](../Page/Windows_Vista.md "wikilink")、[Windows
    7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")
  - [GNU/Linux](../Page/Linux.md "wikilink")
  - [FreeBSD](../Page/FreeBSD.md "wikilink"),
    [NetBSD](../Page/NetBSD.md "wikilink"),
    [OpenBSD](../Page/OpenBSD.md "wikilink")
  - [SunOS](../Page/SunOS.md "wikilink")
  - [Mac OS X](https://zh.wikipedia.org/wiki/OS_X "wikilink")

## 分区表类型支持

TestDisk能够识别以下分区格式：

  - [Apple partition
    map](https://zh.wikipedia.org/wiki/Apple_Partition_Map "wikilink")
  - [GUID分区表](../Page/GUID磁碟分割表.md "wikilink")
  - PC/Intel分区表 ([MBR](https://zh.wikipedia.org/wiki/MBR "wikilink"))
  - Sun [Solaris](../Page/Solaris.md "wikilink")
    [slice](../Page/硬盘分区.md "wikilink")
  - [Xbox固定分区机制](../Page/Xbox_\(遊戲機\).md "wikilink")

TestDisk也能处理未分区的介质。

## 分区恢复

TestDisk查询[BIOS或](../Page/BIOS.md "wikilink")[操作系统以便找到](../Page/操作系统.md "wikilink")[儲存裝置](../Page/儲存裝置.md "wikilink")（[硬盘](../Page/硬盘.md "wikilink")、[存储卡](https://zh.wikipedia.org/wiki/存储卡 "wikilink")、……）及其特征（[LBA大小和](https://zh.wikipedia.org/wiki/LBA "wikilink")[CHS形态](../Page/CHS.md "wikilink")）。TestDisk
能够：\[1\]

  - 恢复删除的分区
  - 重建分区表
  - 重写主引导记录（MBR）

TestDisk快速检查磁盘的结构并与分区表比对以检测错误。
然后它搜索下列[文件系统的丢失分区](../Page/文件系统.md "wikilink")\[2\]\[3\]：

  - [Be
    文件系统](https://zh.wikipedia.org/wiki/Be_文件系统 "wikilink") ([BeOS](../Page/BeOS.md "wikilink"))

  - (FreeBSD/OpenBSD/NetBSD)

  - [Cramfs](https://zh.wikipedia.org/wiki/Cramfs "wikilink")，压缩文件系统

  - DOS/Windows[FAT12](https://zh.wikipedia.org/wiki/FAT12 "wikilink"),
    FAT16, and [FAT32](../Page/FAT.md "wikilink")

  - Windows [exFAT](https://zh.wikipedia.org/wiki/exFAT "wikilink")

  - [HFS](../Page/分层文件系统.md "wikilink"),
    [HFS+](../Page/HFS+.md "wikilink") and HFSX,
    [分层文件系统](../Page/分层文件系统.md "wikilink")

  - [JFS](https://zh.wikipedia.org/wiki/JFS_\(文件系统\) "wikilink"), IBM
    日志文件系统

  - Linux
    [ext2](https://zh.wikipedia.org/wiki/ext2 "wikilink")、[ext3](https://zh.wikipedia.org/wiki/ext3 "wikilink")、[ext4](https://zh.wikipedia.org/wiki/ext4 "wikilink")

  - Linux RAID

      - RAID 1：镜像
      - RAID 4：含有奇偶校验设备的条带阵列
      - RAID 5：含有分布式奇偶校验信息的条带阵列
      - RAID 6：含有分布式双冗余信息的条带阵列

  - Linux Swap (版本 1 and 2)

  - LVM and LVM2, Linux
    [邏輯捲軸管理員](https://zh.wikipedia.org/wiki/邏輯捲軸管理員 "wikilink")

  - [Novell存储服务](https://zh.wikipedia.org/wiki/Novell存储服务 "wikilink")
    (NSS)

  - [NTFS](../Page/NTFS.md "wikilink") (Windows
    NT/2000/XP/2003/Vista/2008/7)

  - [ReiserFS](../Page/ReiserFS.md "wikilink") 3.5、3.6、4

  - Sun Solaris i386 disklabel

  - [Unix File System](../Page/Unix文件系统.md "wikilink") UFS and UFS2
    (Sun/BSD/…)

  - [XFS](../Page/XFS.md "wikilink"), SGI’s Journaled File System

## 参见

  -
  - [数据恢复软件列表](../Page/数据恢复软件列表.md "wikilink")

## 引用

## 外部链接

  - [TestDisk Wiki](http://www.cgsecurity.org/wiki/TestDisk)
  - [List of news articles about TestDisk and
    PhotoRec](http://www.cgsecurity.org/wiki/In_The_News)
  - Falko Timme, [Data Recovery With
    TestDisk](http://www.howtoforge.com/data_recovery_with_testdisk)
    HowTo
  - [Digital Forensics using Linux and Open Source
    Tools](http://www.digitalforensics.ch/nikkel05b.pdf)

[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:硬盘分区软件](https://zh.wikipedia.org/wiki/Category:硬盘分区软件 "wikilink")
[Category:自由系統軟體](https://zh.wikipedia.org/wiki/Category:自由系統軟體 "wikilink")
[Category:硬盘软件](https://zh.wikipedia.org/wiki/Category:硬盘软件 "wikilink")
[Category:綠色軟件](https://zh.wikipedia.org/wiki/Category:綠色軟件 "wikilink")

1.  Debra Littlejohn Shinder, Michael Cross (2002).
2.  Ido Perelmutter - Debian Administration, [Recovering from file
    system corruption using
    TestDisk](http://www.debian-administration.org/articles/420)
3.  Ionut Ilascu, [Softpedia](../Page/Softpedia.md "wikilink"), [Your
    HDD Is Missing a
    Slice?](http://www.softpedia.com/reviews/windows/TestDisk-Review-32579.shtml)