**R-Studio**
是一套全功能的[数据恢复应用程序](https://zh.wikipedia.org/wiki/数据恢复 "wikilink")，适用于
[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Mac
OS](https://zh.wikipedia.org/wiki/Mac_OS "wikilink") 以及
[Linux](../Page/Linux.md "wikilink") 。它可以从[硬碟](../Page/硬盘.md "wikilink")
(HDD)、[固态硬碟](../Page/固态硬盘.md "wikilink")
(SSD)、[快閃記憶體及其他内部或外部的数据存储设备启动以恢复数据](../Page/闪存.md "wikilink")。\[1\]\[2\]\[3\]\[4\]

R-Studio 内核的应用程序 **R-Undelete** 专为非专业用户开发，它只能在 Windows
下工作，拥有简化的界面和十六进制编辑器，但不支持
[RAID](../Page/RAID.md "wikilink") 和网络数据恢复功能。R-Undelete 面向家庭用户，帮助这些用户从
[FAT32](https://zh.wikipedia.org/wiki/FAT32 "wikilink")/[NTFS](../Page/NTFS.md "wikilink")、[FAT](../Page/FAT.md "wikilink")/[exFAT等文件系统中恢复文件](https://zh.wikipedia.org/wiki/exFAT "wikilink")，前两种主要是Windows下的[机械硬碟和固态硬碟](https://zh.wikipedia.org/wiki/机械硬盘 "wikilink")（SSD），后两种文件系统主要用于[USB以及數位相機中的](https://zh.wikipedia.org/wiki/U盘 "wikilink")
[SD卡](../Page/SD卡.md "wikilink")。\[5\]

## 特性

  - 包括简体中文在内的多语言界面和帮助。
  - 支持的文件系统：[FAT12](https://zh.wikipedia.org/wiki/FAT12 "wikilink")、[FAT16](https://zh.wikipedia.org/wiki/FAT16 "wikilink")、FAT32、exFAT、NTFS、NTFS5、[ReFS](../Page/ReFS.md "wikilink")、[HFS](https://zh.wikipedia.org/wiki/HFS "wikilink")/[HFS+](../Page/HFS+.md "wikilink")
    (Macintosh)、[Ext2](../Page/Ext2.md "wikilink")/[Ext3](../Page/Ext3.md "wikilink")/[Ext4](../Page/Ext4.md "wikilink")
    FS (Linux)、和 UFS1/UFS2 (FreeBSD/OpenBSD/NetBSD/Solaris)。
  - 支持本地化的文件和文件夹名称（简体中文、欧洲和亚洲语言）
  - 支持压缩和加密的 NTFS 文件。
  - 支持动态磁盘，包括软件 Windows RAID。
  - 支持逻辑磁盘管理器：Windows Storage Spaces（Windows 8/8.1和 10/Threshold 2）、软件
    Apple RAID 和 Linux Logical Volume Manager (LVM/LVM2)。
  - 支持文件签名：适合大多数广泛使用的文件类型和用户定自义文件类型的一组预定义签名。
  - 可以作为取证工具\[6\]\[7\]

## 数据恢复原理

R-Studio使用两种方法进行数据恢复：

  - 对磁盘进行分析以找到关于现有和曾经存在的文件系统的信息，并根据此类信息恢复文件。这种方法不仅可以恢复文件本身，还可以恢复磁盘上的文件夹结构，包括时间戳等元数据。
  - 使用文件签名搜索文件。文件签名是用于 jpg 或 doc
    等特定文件类型的典型字节模式。这种方法在文件系统的相关信息遭到严重破坏而无法使用前一种方法恢复时使用。这种方法只能恢复文件内容，而文件名、文件夹结构以及时间戳等相关信息将无法恢复。

## 程序内容

除了数据恢复程序外，R-Studio 还包括：

  - 全功能磁盘数据编辑器
  - 磁盘映像和克隆模块
  - 磁盘 S.M.A.R.T. 参数监控模块
  - 紧急版本 R-Studio —— 它可以从用户计算机支持的任何可移动介质（USB、CD/DVD等）运行。
  - 网络数据恢复模块——适用于本地网络和 Internet。
  - 高级 RAID 恢复模块——支持标准和用户定义 RAID 等级，可以自动发现 RAID 参数。
  - DeepSpar Disk Imager 集成模块 —— 一种用于复制故障磁盘的专业设备。（仅适用于技术人员许可证）。

## 跨平台

R-Studio 提供了适用于 Windows、Mac OSX\[8\]以及 Linux\[9\]的版本。所有版本都具有相同的功能。

## 参考资料

[Category:Linux軟件](https://zh.wikipedia.org/wiki/Category:Linux軟件 "wikilink")
[Category:Windows软件](https://zh.wikipedia.org/wiki/Category:Windows软件 "wikilink")
[Category:系统软件](https://zh.wikipedia.org/wiki/Category:系统软件 "wikilink")

1.  [数据恢复软件介绍-R-Studio-技佳数据恢复公司](http://www.databack.com.cn/News/1470.html)
2.  [数据恢复工具R-Studio使用教程](http://www.mianfeiwendang.com/doc/4bb3723b3201f498578aa940)
3.  [如何使用R-Studio恢复被格式化分区内的数据](http://sjhfml.blog.51cto.com/656700/130662)
4.  [R-Studio – 数据恢复软件](http://ilvruan.com/4030.html)
5.  [R-Undletel中国网站](http://www.r-undelete.com/zhcn/)
6.  [NIST: Forensic File
    Carving](http://www.cftt.nist.gov/filecarving.htm)
7.  [Forensic Wiki: Tools:Data
    Recovery](http://forensicswiki.org/wiki/Tools:Data_Recovery)
8.  [R-Studio for
    Mac可以现场中国](http://www.r-studio.com/zhcn/data_recovery_macintosh/)
9.  [R-Studio中的Linux中国网站](http://www.r-studio.com/zhcn/data_recovery_linux/)