> 本文内容由[Fsck](https://zh.wikipedia.org/wiki/Fsck)转换而来。


**fsck**（**f**ile **s**ystem **c**onsistency **c**heck）是[Unix和](https://zh.wikipedia.org/wiki/Unix "wikilink")[类Unix系统](../Page/类Unix系统.md "wikilink")上用于检查[文件系统](../Page/文件系统.md "wikilink")完整性的工具\[1\]。它类似于[Windows和](https://zh.wikipedia.org/wiki/Windows "wikilink")[MS-DOS](../Page/MS-DOS.md "wikilink")上的[CHKDSK](../Page/CHKDSK.md "wikilink")。

## 读音

fsck没有标准读音，可以读作"F-S-C-K", "F-S-check", "fizz-check", "F-sack", "fisk", "fizik", "F-sick", "F-sock", "F-sek", "feshk","fsk", "fix", "farsk" 或 "fusk"\[2\].

## 用法

fsck通常在启动时自动运行或由[系统管理员](../Page/系统管理员.md "wikilink")手动运行。该命令直接作用于磁盘上的数据结构，因此fsck命令通常需要指定文件系统类型。fsck的具体行为与其实现相关，但通常有着相同的命令顺序并提供命令行界面。

大多数fsck会提供没有提示信息的自动修复模式、用户决定处理方式的互动修复模式和只检查不修复的模式。文件名无法被重建的文件会被保存在分区根目录的"lost+found"目录中。

系统管理员在认为文件系统出现问题时可以手动运行fsck。运行fsck时分区一般处于卸载或只读方式挂载状态下。

现代[日志文件系统](../Page/日志文件系统.md "wikilink")在意外关机（例如崩溃}后不需要运行fsck一类的工具。[FreeBSD](../Page/FreeBSD.md "wikilink")使用的[UFS2文件系统会在后台运行fsck](../Page/Unix文件系统.md "wikilink")\[3\]，在访问磁盘前不需要等待fsck结束。以[ZFS](../Page/ZFS.md "wikilink")和[Btrfs](../Page/Btrfs.md "wikilink")为首的[寫入時複製文件系统旨在避免大部分文件系统损坏的原因](https://zh.wikipedia.org/wiki/寫入時複製 "wikilink")，因此没有传统的"fsck"工具。Btrfs和ZFS使用来检查和修复错误。

## 示例

检查挂载到/usr上的分区

``` bash
fsck /usr
```

检查使用[JFS文件系统的](../Page/JFS_\(文件系统\).md "wikilink")软件[RAID](../Page/RAID.md "wikilink")设备

``` bash
fsck -t jfs /dev/md0
```

## 参见

  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [文件系统列表](../Page/文件系统列表.md "wikilink")
  - [e2fsprogs](https://zh.wikipedia.org/wiki/e2fsprogs "wikilink")，其中的`e2fsck`用于检查[ext2](https://zh.wikipedia.org/wiki/ext2 "wikilink")/[ext3](https://zh.wikipedia.org/wiki/ext3 "wikilink")/[ext4文件系统的完整性](https://zh.wikipedia.org/wiki/ext4 "wikilink")

## 参考资料

## 外部链接

  - [man fsck](https://web.archive.org/web/20150529001726/http://www.manpagez.com/man/8/fsck/)
  - [Checking and Repairing File system with fsck](http://www.adminschoice.com/repairing-unix-file-system-fsck)
  - [The many faces of fsck](http://lwn.net/Articles/248180)

[Category:文件系统](https://zh.wikipedia.org/wiki/Category:文件系统 "wikilink") [Category:硬盘软件](https://zh.wikipedia.org/wiki/Category:硬盘软件 "wikilink") [Category:Unix文件系统相关软件](https://zh.wikipedia.org/wiki/Category:Unix文件系统相关软件 "wikilink")

1.
2.
3.