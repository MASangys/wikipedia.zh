**Btrfs**（B-tree檔案系統，通常念成**Butter FS**，**Better FS**或**B-tree
FS**），一種支持[寫入時複製](../Page/寫入時複製.md "wikilink")（COW）的文件系统，運行在Linux作業系統，採用[GPL授權](../Page/GPL.md "wikilink")。[Oracle于](../Page/Oracle.md "wikilink")2007年對外宣布這項計劃，並釋出原始碼，在2014年8月釋出穩定版。目标是取代[Linux目前的](../Page/Linux.md "wikilink")[ext3文件系统](../Page/ext3.md "wikilink")，改善ext3的限制，特別是单个文件的大小，总文件系统大小或文件检查和加入ext3未支持的功能，像是可写快照（writable
snapshots）、快照的快照（snapshots of
snapshots）、内建磁盘阵列（RAID），以及子卷（subvolumes）。Btrfs也宣称专注在“容错、修复及易于管理”。

## 特性

Btrfs，2007年前，已实现

  - 联机碎片整理
  - 联机卷生长和收缩
  - 联机[块设备增加和删除](../Page/块设备.md "wikilink")
  - 联机负载均衡（块设备间的对象移动以达到平衡）
  - 文件系统级的镜像（类RAID-1）、条带（类RAID-0）
  - 子卷（一个或多个单独可挂载基于每个物流分区）
  - 透明压缩（目前支持[zlib](../Page/zlib.md "wikilink")、[LZO和](../Page/LZO.md "wikilink")[ZSTD](../Page/ZSTD.md "wikilink")
    (從 4.14 開始支援)）
  - 快照（只读和可写，写复制，子卷复制）
  - 文件克隆
  - 数据和元数据的校验和（目前是CRC-32C）
  - 就地转换（带回滚）ext3/4
  - 文件系统种子
  - 用户定义的事务
  - 块丢弃支持

## 参考资料

## 参见

  - [文件系统的对比](../Page/文件系统的对比.md "wikilink")
  - [ZFS](../Page/ZFS.md "wikilink")
  - [ext4](../Page/ext4.md "wikilink")
  - [Tux3](../Page/Tux3.md "wikilink")

## 外部链接

  -
  - [Initial Btrfs宣告](http://lkml.org/lkml/2007/6/12/242)

  - [Coherent远程文件系统](http://oss.oracle.com/projects/crfs)，基于“btrfs”

  - [新一代Linux文件系统btrfs简介](http://www.ibm.com/developerworks/cn/linux/l-cn-btrfs/)

[Category:磁盘文件系统](https://zh.wikipedia.org/wiki/Category:磁盘文件系统 "wikilink")
[Category:电脑数据](https://zh.wikipedia.org/wiki/Category:电脑数据 "wikilink")
[Category:Linux檔案系統](https://zh.wikipedia.org/wiki/Category:Linux檔案系統 "wikilink")
[Category:MeeGo](https://zh.wikipedia.org/wiki/Category:MeeGo "wikilink")