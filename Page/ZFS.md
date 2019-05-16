**ZFS**是一個擁有[邏輯捲軸管理功能的](https://zh.wikipedia.org/wiki/邏輯捲軸管理 "wikilink")[檔案系統](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")，最早源自于[昇陽電腦为](../Page/昇陽電腦.md "wikilink")[Solaris](../Page/Solaris.md "wikilink")[操作系统开发的文件系统](../Page/操作系统.md "wikilink")。ZFS是一个具有高存储容量、文件系统与卷管理概念整合、崭新的磁盘逻辑结构的轻量级文件系统，同时也是一个便捷的存储池管理系统。ZFS是一个使用[通用开发与散布许可证授权的](../Page/通用开发与散布许可证.md "wikilink")[开源项目](https://zh.wikipedia.org/wiki/开源 "wikilink")，這個商標名稱現由[甲骨文公司擁有](../Page/甲骨文公司.md "wikilink")。

## 历史

ZFS的设计与开发由Sun公司的[Jeff
Bonwick所领导的一支团队完成](https://zh.wikipedia.org/wiki/Jeff_Bonwick "wikilink")。最早宣布于2004年9月14日，\[1\]於2005年10月31日并入了Solaris开发的主干源代码。\[2\]并在2005年11月16日作为[OpenSolaris](../Page/OpenSolaris.md "wikilink")
build 27的一部分发布。Sun在OpenSolaris社区开张1年后的2006年六月，将ZFS整合进了Solaris 10
6/06版本更新。\[3\]

ZFS的命名來源發想於"[Zettabyte](https://zh.wikipedia.org/wiki/Zettabyte "wikilink")
File
System"的首字母缩写。\[4\]但ZFS本身並不具備任何的縮寫意涵，只是作者想闡述做為一個具備高擴充容量檔案系統且還有支援許多延伸功能的一個產品。

## 存储池

不同于传统文件系统需要驻留于单独设备或者需要一个卷管理系统去使用一个以上的设备，ZFS建立在虚拟的，被称为“zpools”的存储池之上（存储池最早在[AdvFS實現](../Page/AdvFS.md "wikilink")\[5\]，並且加到後來的[Btrfs](../Page/Btrfs.md "wikilink")）。每个存储池由若干虚拟设备（*virtual
devices，vdevs*）组成。这些虚拟设备可以是原始磁盘，也可能是一个[RAID1镜像设备](https://zh.wikipedia.org/wiki/RAID1 "wikilink")，或是非标准RAID等级的多磁盘组。于是zpool上的文件系统可以使用这些虚拟设备的总存储容量。

可以使用[磁盘限额以及设置磁盘预留空间来限制存储池中单个文件系统所占用的空间](https://zh.wikipedia.org/wiki/磁盘限额 "wikilink")。

## 容量

ZFS是一个[128位的文件系统](https://zh.wikipedia.org/wiki/128位 "wikilink")，这意味着它能存储1800亿亿（18.4×10<sup>18</sup>）倍于当前[64位文件系统的数据](https://zh.wikipedia.org/wiki/64位 "wikilink")。ZFS的设计如此超前以至于这个极限就当前现实实际可能永远无法遇到。项目领导Bonwick曾说：“要填满一个128位的文件系统，将耗尽地球上所有存储设备。除非你拥有煮沸整个海洋的能量，不然你不可能将其填满。”\[6\]

以下是ZFS的一些理论极限：

  - 2<sup>48</sup>—任意文件系统的[快照数量](https://zh.wikipedia.org/wiki/快照 "wikilink")（2×10<sup>14</sup>）
  - 2<sup>48</sup>—任何单独文件系统的文件数（2×10<sup>14</sup>）
  - 16 [exabytes](https://zh.wikipedia.org/wiki/exabyte "wikilink")
    (2<sup>64</sup> byte)—文件系统最大尺寸
  - 16 exabytes (2<sup>64</sup> byte)—最大单个文件尺寸
  - 16 exabytes (2<sup>64</sup> byte)—最大属性大小
  - 128 [Zettabytes](https://zh.wikipedia.org/wiki/Zettabyte "wikilink")
    (2<sup>78</sup> byte)—最大zpool大小
  - 2<sup>56</sup>—单个文件的属性数量（受ZFS文件数量的约束，实际为2<sup>48</sup>）
  - 2<sup>56</sup>—单个目录的文件数（受ZFS文件数量的约束，实际为2<sup>48</sup>）
  - 2<sup>64</sup>—单一zpool的设备数
  - 2<sup>64</sup>—系统的zpools数量
  - 2<sup>64</sup>—单一zpool的文件系统数量

作为对这些数字的感性认识，假设每秒钟创建1,000个新文件，达到ZFS文件数极限需要大约9,000年。

在辩解填满ZFS与煮沸海洋的关系时，Bonwick写到：

> 尽管我们都希望[摩尔定律永远延续](../Page/摩尔定律.md "wikilink")，但是[量子力学给定了任何物理设备上计算速率](../Page/量子力学.md "wikilink")（computation
> rate）与信息量的理论极限。举例而言，一个-{zh-hans;zh-hant|质量}-为1[公斤](https://zh.wikipedia.org/wiki/公斤 "wikilink")，体积为1[升的物体](../Page/升.md "wikilink")，每秒至多在10<sup>31</sup>[位](https://zh.wikipedia.org/wiki/位 "wikilink")[信息](../Page/信息.md "wikilink")
> 上进行10<sup>51</sup>次运算\[7\]。一个完全的128位存储池将包含2<sup>128</sup>个块=
> 2<sup>137</sup>字节= 2<sup>140</sup>位；应此，保存这些数据位至少需要(2<sup>140</sup>位) /
> (10<sup>31</sup>位/公斤) = 1360亿公斤的物质。

## 写入时复制事务模型

ZFS采用[写入时复制事务对象模型](https://zh.wikipedia.org/wiki/写入时复制 "wikilink")。文件系统中的所有块指向都包含目标块的256位[校验和或](https://zh.wikipedia.org/wiki/校验和 "wikilink")[hash值](https://zh.wikipedia.org/wiki/密码散列函数 "wikilink")（目前有、
Fletcher-4与[SHA-2供选择](../Page/SHA-2.md "wikilink")）\[8\]。在读取块时会对这些参数加以验证。包含活动数据的块不会被覆盖，而是给修改过的数据分配一个新块，任何引用此块的[元数据块都被重新读取](../Page/元数据.md "wikilink")、重新分配和重写。为减少该过程的开销，多次读写更新会被归纳为一个事件组，在需要同步写入语义时会使用ZIL（）写入缓存，而这些块会与校验和一同编入中。

利用写入时复制使ZFS的快照和事物功能的实现变得更简单和自然，快照功能更灵活，但严重碎片化问题是其缺点之一。对于通过顺序写生成的大文件，如果以后随机的对其中的一部分进行了更改，那么这个文件在硬盘上的物理地址就变得不再连续，未来的顺序读会变得性能比较差。

## 快照与克隆

当ZFS写入新数据时，可以保留包含旧数据的块，因而能够维护文件系统的[快照版本](https://zh.wikipedia.org/wiki/快照_\(电脑储存\) "wikilink")。ZFS快照具备一致性（快照基于单个时间点反映整个数据）。而因为组合快照的所有数据都会被储存，且整个存储池通常每小时会进行几次快照，所以快照的创建速度非常快。任何未变动的数据会在文件系统及其快照之间进行共享，因此也具备空间高效性。快照本质上是只读的，确保在创建后快照不会被修改。快照可以被整个恢复，也可以恢复快照中的某些文件或目录。

ZFS也可以创建可写快照（“克隆”），让两个独立的文件系统共享一组块。对克隆文件系统的修改都会创建新的数据块以反映这些更改。但是无论存在多少个克隆，未变动的块仍然会被共享。这是写入时复制原则的实施方式。

## 动态条带化

ZFS能动态条带化所有设备以最大化吞吐量。当额外的设备被加入到zpool中的时候，条带宽度会自动-{zh-hans;zh-hant|扩展}-以包含这些设备。这使得存储池中的所有磁盘都被用到，同时负载被平摊到所有的磁盘上。

## 可变块尺寸

ZFS使用可变大小的块，最大可至128KB。现有的代码允许管理员调整最大块大小，这在大块效果不好的时候有用。未来也许能做到自动调整适合工作量的块大小。\[需要引用\]

ZFS的可变大小的块与BtrFS和Ext4的extent不同。在ZFS中，在一个文件中所有数据块的逻辑长度必须是相同的，不同文件之间的块大小可以不同，因此ZFS可以用直接映射（direct
map）的方式（同ufs/ffs/ext2/ext3）来来搜索间接块的数据指针数组（blkptr）。BtrFS和Ext4的extent方式在同一个文件中每个数据快的大小都可以不相同，因此需要用B+
Tree或者类B Tree的方式来组织间接块的数据。

虽然直接映射方式比B+
Tree的查找速度快，但是这种方式的缺点也非常明显，如：元数据开销过大、顺序IO的大文件性能不好、删除比较慢等等，因此在现代文件系统中映射方式逐渐被extent变长块取代。

如果数据压缩（LZJB）被启用，可变块大小需要被用到。如果一个数据块可被压缩至一个更小的数据块，则小的数据块将使用更少的存储和提高吞吐量（代价是增加CPU压缩和解压缩的负担）。

## 轻量化文件系统创建

在ZFS中，存储池中文件系统的操作相比传统文件系统的卷管理更加便捷。创建ZFS文件系统或者改变一个ZFS文件系统的大小接近于传统技术中的管理目录而非管理卷。

## 储存管理

## 限制

ZFS的最新beta版已支持透明加密。\[9\]

## 专利争端

NetApp指控Sun的ZFS文件系统侵犯了它WAFL的七项专利，Sun[反诉](http://news.ccidnet.com/art/1032/20071028/1255929_1.html)NetApp侵犯了12项专利，其中包括NFS协议等。后来专利争端以和解告终。

## 对其支持的操作系统

  - [Sun Solaris](../Page/Solaris.md "wikilink")
  - [OpenSolaris](../Page/OpenSolaris.md "wikilink")
  - [Illumos发行版](../Page/Illumos.md "wikilink")
  - [OpenIndiana](../Page/OpenIndiana.md "wikilink")
  - [FreeBSD](../Page/FreeBSD.md "wikilink")
  - [Mac OS X Server
    10.5](https://zh.wikipedia.org/wiki/Mac_OS_X_Server#Mac_OS_X_Server_10.5_\(Leopard_Server\) "wikilink")
  - [NetBSD](../Page/NetBSD.md "wikilink")
  - [Linux](../Page/Linux.md "wikilink")（通过[用户空间文件系统或原生第三方内核](https://zh.wikipedia.org/wiki/用户空间文件系统 "wikilink")[可載入核心模組支持](https://zh.wikipedia.org/wiki/可載入核心模組 "wikilink")）\[10\]
  - [Ubuntu从](../Page/Ubuntu.md "wikilink")16.04起开始

## 参见

  - [Btrfs](../Page/Btrfs.md "wikilink")
  - [OpenZFS](https://zh.wikipedia.org/wiki/OpenZFS "wikilink")

## 參考文獻

## 外部連結

  - [ZFS主頁](https://web.archive.org/web/20070408132558/http://www.opensolaris.org/os/community/zfs/)
  - [ZFS on Linux](http://www.zfsonlinux.org/) -
    美國[勞倫斯利福摩爾國家實驗室的ZFS](https://zh.wikipedia.org/wiki/勞倫斯利福摩爾國家實驗室 "wikilink")
    on Linux開源計劃

[Category:磁盘文件系统](https://zh.wikipedia.org/wiki/Category:磁盘文件系统 "wikilink")
[Category:昇陽電腦軟體](https://zh.wikipedia.org/wiki/Category:昇陽電腦軟體 "wikilink")
[Category:Linux檔案系統](https://zh.wikipedia.org/wiki/Category:Linux檔案系統 "wikilink")
[Category:OpenSolaris](https://zh.wikipedia.org/wiki/Category:OpenSolaris "wikilink")

1.

2.  {{ cite web | url =
    <http://blogs.sun.com/roller/page/bonwick?entry=zfs_the_last_word_in>
    | title = ZFS: The Last Word in Filesystems | author = Jeff Bonwick
    | work = Jeff Bonwick's Blog | date = October 31, 2005 | accessdate
    = 2006-04-30 | deadurl = yes | archiveurl =
    <https://www.webcitation.org/6BNdGOIEe?url=https://blogs.oracle.com/roller-ui/errors/404.jsp>
    | archivedate = 2012年10月13日 }}

3.  {{ cite web | url =
    <http://www.sun.com/smi/Press/sunflash/2006-06/sunflash.20060620.1.xml>
    | title = Sun Celebrates Successful One-Year Anniversary of
    OpenSolaris | publisher = Sun Microsystems | date = June 20, 2006 }}

4.  {{ cite web | title = You say zeta, I say zetta | author = Jeff
    Bonwick | date = 2006-05-04 | work = Jeff Bonwick's Blog |
    accessdate = 2006-09-08 | url =
    <http://blogs.sun.com/bonwick/entry/you_say_zeta_i_say> | deadurl =
    yes | archiveurl =
    <https://www.webcitation.org/6BNdHzNju?url=https://blogs.oracle.com/roller-ui/errors/404.jsp>
    | archivedate = 2012-10-13 }}

5.

6.
7.  Seth Lloyd, "[Ultimate physical limits to
    computation（计算的终极物理限制）](http://puhep1.princeton.edu/~mcdonald/examples/QM/lloyd_nature_406_1047_00.pdf)."
    Nature 406, 1047-1054 (2000)\]

8.   见2.4节。

9.

10.