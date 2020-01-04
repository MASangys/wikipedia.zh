> 本文内容由[Extent \(檔案系統\)](https://zh.wikipedia.org/wiki/Extent_\(檔案系統\))转换而来。


在计算机文件系统中，一个  (在中國大陸某些文獻中翻譯為「**区段**」\[1\])，是指一段连续的存储空间。一般来说，一个文件的物理大小一定是一个 extent 容量的整数倍。当一个进程创建一个文件的时候，文件系统管理程序会将整个 extent 分配给这个文件。当再次向该文件写入数据时 (有可能是在其他写入操作之后)，数据会从上次写入的数据末尾处追加数据。这样可以减少甚至消除[文件碎片](https://zh.wikipedia.org/wiki/文件碎片 "wikilink")。

以下的系統支援 extents：

  - [ASM](https://zh.wikipedia.org/wiki/Automatic_Storage_Management "wikilink") - Automatic Storage Management - [甲骨文的](../Page/甲骨文公司.md "wikilink") database-oriented 檔案系統。
  - [BFS](https://zh.wikipedia.org/wiki/Be_File_System "wikilink") - [BeOS](../Page/BeOS.md "wikilink"), [Zeta](../Page/Magnussoft_ZETA.md "wikilink") 和 [Haiku](https://zh.wikipedia.org/wiki/Haiku_\(operating_system\) "wikilink") 操作系統。
  - [Btrfs](../Page/Btrfs.md "wikilink") - [GPL'd](https://zh.wikipedia.org/wiki/GPL "wikilink") extent based file storage for Linux.
  - [Ext4](../Page/Ext4.md "wikilink") - [Linux](https://zh.wikipedia.org/wiki/Linux_kernel "wikilink") 檔案系統 (when the configuration enables extents — the default in Linux since version 2.6.23).
  - [Files-11](https://zh.wikipedia.org/wiki/Files-11 "wikilink") - [Digital Equipment Corporation](https://zh.wikipedia.org/wiki/Digital_Equipment_Corporation "wikilink") (subsequently [Hewlett-Packard](https://zh.wikipedia.org/wiki/Hewlett-Packard "wikilink")) [OpenVMS](https://zh.wikipedia.org/wiki/OpenVMS "wikilink") 檔案系統。
  - [HFS](https://zh.wikipedia.org/wiki/Hierarchical_File_System "wikilink") and [HFS Plus](https://zh.wikipedia.org/wiki/HFS_Plus "wikilink") - Hierarchical File System - [Apple](https://zh.wikipedia.org/wiki/Apple_Inc. "wikilink") [Macintosh](https://zh.wikipedia.org/wiki/Macintosh "wikilink") 檔案系統。
  - [HPFS](https://zh.wikipedia.org/wiki/HPFS "wikilink") - High Performance File Syzstem - [OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink") and [eComStation](https://zh.wikipedia.org/wiki/eComStation "wikilink").
  - [JFS](https://zh.wikipedia.org/wiki/IBM_Journaled_File_System_2_\(JFS2\) "wikilink") - Journaled File System - Used by [AIX](https://zh.wikipedia.org/wiki/AIX_\(operating_system\) "wikilink"), [OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink")/eComStation 和 [Linux](../Page/Linux.md "wikilink") 操作系統。
  - [Melio FS](https://zh.wikipedia.org/wiki/Melio_FS "wikilink") - a [shared disk file system](https://zh.wikipedia.org/wiki/shared_disk_file_system "wikilink") for Windows from Sanbolic.
  - [Microsoft SQL Server](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink") - Versions 2000-2008 supports extents of up to 64KB [1](http://msdn.microsoft.com/en-us/library/ms190969.aspx).
  - [Multi-Programming Executive](https://zh.wikipedia.org/wiki/Multi-Programming_Executive "wikilink") - [Hewlett-Packard](https://zh.wikipedia.org/wiki/Hewlett-Packard "wikilink") 製作的檔案系統。
  - [NTFS](../Page/NTFS.md "wikilink") - [Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink") 的 latest-generation 檔案系統。
  - [OCFS2](https://zh.wikipedia.org/wiki/OCFS2 "wikilink") - Oracle Cluster File System - a [shared disk file system](https://zh.wikipedia.org/wiki/shared_disk_file_system "wikilink") for Linux.
  - [Reiser4](https://zh.wikipedia.org/wiki/Reiser4 "wikilink") - Linux 檔案系統 (in "extents" 模式)。
  - [SINTRAN III](https://zh.wikipedia.org/wiki/SINTRAN_III "wikilink") - File system used by early computer company [Norsk Data](https://zh.wikipedia.org/wiki/Norsk_Data "wikilink").
  - [UDF](../Page/通用光碟格式.md "wikilink") - Universal Disk Format - Standard for optical media.
  - [VERITAS File System](https://zh.wikipedia.org/wiki/VERITAS_File_System "wikilink") - Enabled via the pre-allocation API and CLI.
  - [XFS](../Page/XFS.md "wikilink") - [SGI](https://zh.wikipedia.org/wiki/Silicon_Graphics "wikilink") 的第二代檔案系統。

## 備註及參考文獻

## 外部連結

  - [Getting to know the Solaris filesystem, Part 1](http://sunsite.uakom.sk/sunworldonline/swol-05-1999/swol-05-filesystem.html): Allocation and storage strategy — comparison of block-based and extent-based allocation

[Category:文件系统](https://zh.wikipedia.org/wiki/Category:文件系统 "wikilink")

1.  在中文世界裏， 一詞尚未有統一的翻譯，大部分文獻都是用原文，以避免混淆。