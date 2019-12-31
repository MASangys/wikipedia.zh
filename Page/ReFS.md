> 本文内容由[ReFS](https://zh.wikipedia.org/wiki/ReFS)转换而来。


{{ infobox file system | developer = [Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink") | full_name = Resilient File System | introduction_date = \[1\] | introduction_os = [Windows Server 2012](../Page/Windows_Server_2012.md "wikilink") | partition_id = | directory_struct = | file_struct = | file_types = | bad_blocks_struct = | bootable = | min_volume_size = | max_volume_size = 1 [yottabyte](https://zh.wikipedia.org/wiki/yottabyte "wikilink") | max_file_size = 16 [exabyte](https://zh.wikipedia.org/wiki/exabyte "wikilink") | file_size_granularity = | max_files_no = | max_filename_size = | max_dirname_size = | max_directory_depth = | filename_character_set = | dates_recorded = | date_range = | date_resolution = | forks_streams = | attributes = 是 | file_system_permissions = | compression = 否 | encryption = | data_deduplication = | copy_on_write = 是 | OS = [Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink") | website = [Resilient File System Overview](http://technet.microsoft.com/library/hh831724.aspx) }} **弹性文件系统**（，简称**ReFS**）\[2\]，代号“Protogon”\[3\]。这是一个[微软](../Page/微软.md "wikilink")在[Windows Server 2012中引入的](../Page/Windows_Server_2012.md "wikilink")[专有](https://zh.wikipedia.org/wiki/专有 "wikilink")[文件系统](../Page/文件系统.md "wikilink")，目的是成为[NTFS](../Page/NTFS.md "wikilink")之后的“下一代”文件系统。

ReFS旨在克服NTFS被构想以来出现的重要问题，面向已改变的数据存储需求。ReFS的关键设计优势包括自动和[数据清理](https://zh.wikipedia.org/wiki/数据清理 "wikilink")、避免需要运行[chkdsk](../Page/CHKDSK.md "wikilink")、防止、内置和的处理、集成[RAID](../Page/RAID.md "wikilink")功能、数据和元数据更新切换到[写时复制/分配](https://zh.wikipedia.org/wiki/寫入時複製 "wikilink")、[超长路径和文件名的处理](https://zh.wikipedia.org/wiki/长文件名 "wikilink")，以及[存储虚拟化和存储池](https://zh.wikipedia.org/wiki/儲存虛擬化 "wikilink")、包括几乎任意大小的[逻辑卷](https://zh.wikipedia.org/wiki/邏輯捲軸管理 "wikilink")（与所用驱动器的物理大小无关）。

存储系统和使用情况的需求已发生改变——存储设备的大小（大容量或TB级存储阵列正日益常见）和[持续可靠性需求](https://zh.wikipedia.org/wiki/24/7 "wikilink")。因此，该文件系统需要根据物理磁盘和逻辑卷之间的[抽象层或虚拟化完成自我修复](https://zh.wikipedia.org/wiki/抽象層 "wikilink")，避免介入缓慢或必须中断的磁盘检查）。

ReFS最初只被添加到[Windows Server 2012](../Page/Windows_Server_2012.md "wikilink")，目标是逐步迁移到未来版本的消费者系统中（很快就有爱好者以方式解锁这点）。最初的版本中移除了一些NTFS功能，例如、[备用数据流和](https://zh.wikipedia.org/wiki/备用数据流 "wikilink")[扩展属性](../Page/扩展文件属性.md "wikilink")，因此引发了一定关注。以上部分功能已在更高版本的ReFS中重新实现。

在ReFS的早期版本（2012年-2013年）中，它在测试中类似或略高于NTFS的水平\[4\]，但在完整性检查时远慢于NTFS，这是因为ReFS新采用了奇偶效验。\[5\]\[6\]也有用户在预发布版本中提到了到[存储空间](../Page/Windows_8新功能.md "wikilink")，该存储系统旨在支撑ReFS，但据称它可能会导致ReFS自动恢复失败。\[7\]\[8\]\[9\]

## 相较NTFS的功能变化

### 重要新功能

  - 改进磁盘结构可靠性

    ReFS对所有存储在磁盘上的结构使用[B+树](../Page/B+树.md "wikilink")，包括所有元数据和文件数据。\[10\]\[11\]元数据和文件数据被组成一个类似[关系数据库](../Page/关系数据库.md "wikilink")的数据表。文件大小、[文件夹内的文件数和卷总大小及卷中文件夹数量都采用](../Page/目录_\(文件系统\).md "wikilink")64位数字；因此，ReFS支持最多16[EB的文件大小](../Page/艾字节.md "wikilink")，最多18.4 × 10<sup>18</sup>个目录和最大1[YB](../Page/尧字节.md "wikilink")（64 KB[簇](../Page/簇.md "wikilink")的卷），这允许较大的可扩展性，对文件和目录大小没有实际限制（硬件限制仍适用）。空闲空间是由一个分层分配器计算，其中包括三个单独的表，分别保存大、中、小块。

<!-- end list -->

  - 内置复原
    ReFS对元数据采用[allocation-on-write更新策略](https://zh.wikipedia.org/wiki/寫入時複製 "wikilink")\[12\]，每次更新时分配新块并采用批次[IO](https://zh.wikipedia.org/wiki/I/O "wikilink")。所有ReFS元数据都采用独立存储的64位校验和。文件数据可以单独拥有可选的“完整性流”校验和，那种情况下文件更新策略也实现写时复制；新的“完整性”属性可应用到文件和目录。如果文件数据或元数据损坏，文件可以直接删除而无需脱机维护整个卷，并且文件可以从备份恢复。因为内置弹性设计，管理员不需要对ReFS定期运行错误检查工具，例如[CHKDSK](../Page/CHKDSK.md "wikilink")。

<!-- end list -->

  - 与现有API和技术兼容
    ReFS支持NTFS特性的一个子集，并且仅“广泛使用”的Win32 API支持它；但它不需要新的系统API，并且大多数文件系统筛选器可在ReFS卷工作。\[13\]ReFS支持许多现有的Windows和NTFS特性，例如[BitLocker](https://zh.wikipedia.org/wiki/BitLocker驱动器加密 "wikilink") 加密、[访问控制列表](https://zh.wikipedia.org/wiki/存取控制串列 "wikilink")、[USN日志](../Page/USN日志.md "wikilink")、变更通知\[14\]、[符号链接](../Page/NTFS符号链接.md "wikilink")、、[挂载点](https://zh.wikipedia.org/wiki/挂载点 "wikilink")、[重解析点](../Page/NTFS重解析点.md "wikilink")、[卷快照](../Page/磁碟區陰影複製服務.md "wikilink")、[文件ID和](../Page/NTFS.md "wikilink")[操作锁定](../Page/NTFS.md "wikilink")。ReFS与[存储空间无缝集成](../Page/Windows_8新功能.md "wikilink")\[15\]，[存储虚拟化层允许数据被镜像或条带化](https://zh.wikipedia.org/wiki/儲存虛擬化 "wikilink")，以及作为机器之间的共享存储池。\[16\]ReFS的可恢复功能增强了存储空间提供的镜像功能，可以使用[数据清理流程检测是否有任何文件的镜像副本已经损坏](https://zh.wikipedia.org/wiki/数据清理 "wikilink")（可选启用） \[17\]，它会定期读取所有副本并验证它们的校验和，然后使用良好副本替换损坏副本。

### 已移除功能

某些NTFS功能在ReFS的初始版本中已移除或不支持。这包括[备用数据流](https://zh.wikipedia.org/wiki/备用数据流 "wikilink")、[对象ID](../Page/NTFS重解析点.md "wikilink")、[8.3文件名](https://zh.wikipedia.org/wiki/8.3 "wikilink")、[NTFS](../Page/NTFS.md "wikilink")压缩、[加密文件系统](../Page/加密文件系统.md "wikilink")（EFS）、、、[扩展属性和](../Page/扩展文件属性.md "wikilink")。\[18\]\[19\]\[20\]ReFS最初不提供[重复数据删除](../Page/重复数据删除.md "wikilink")，\[21\]在随后的v3.2版本中实现。此外，Windows目前不能从ReFS卷引导启动。\[22\]镜像或条带化卷的动态磁盘已被“存储空间”提供的镜像或条带化存储池取代；自动纠错仅在镜像空间支持。<span class="cx-segment" data-segmentid="185"></span>

在后续实现的Windows 8.1 64位和Server 2012 R2的ReFS中，文件系统开始支持备用数据流，最大长度128K，以及完整性流在奇偶效验空间上自动纠正损坏数据。\[23\]ReFS在缺乏备用数据流的支持时不适合[Microsoft SQL Server实例分配](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")。\[24\]

## 稳定性和已知问题

一些ReFS与“存储空间”共同运行时的出现问题已被提出或建议\[25\]，包括：

:\* 在“存储空间”上添加自动精简配置的ReFS可能以非正常的方式失败，卷会没有警告地变为无法访问或无法管理。\[26\]发生此情况的可能原因是，如果物理磁盘的基本存储空间太慢。评论说，这种情况下，修复可能会“望而却步”，因为理论上进展需要需要识别存储空间的布局和恢复它们，而这在开始前需要恢复任何ReFS文件系统内容；因此推荐同时采用备份手段。\[27\]

:\* 即使“存储空间”非自动精简配置，ReFS在某些情况下仍可能无法有把握的糾正所有文件错误。因为存储空间以块而非文件操作，如果存储空间的某些部分工作异常，某些文件可能会缺乏必要的块或恢复数据。因此，磁盘和数据的添加和删除可能会受损，以及冗余转换变得困难或不可能。\[28\]

:\* 因为ReFS不是为应对故障设计，如果它发生故障，目前没有工具来修复它。第三方工具只能[逆向工程](../Page/逆向工程.md "wikilink")该系统，截至2014年只有寥寥几个工具。\[29\]

## 与竞争对手的性能比较

2014年，一篇对ReFS的评论与准备在生产中使用的评估显示，ReFS在与它的两个主要竞争对手（[文件系统](../Page/文件系统.md "wikilink")）的比较中具有关键优势。[ZFS](../Page/ZFS.md "wikilink")（在[Solaris](../Page/Solaris.md "wikilink")和[FreeBSD](../Page/FreeBSD.md "wikilink")中使用）被广泛批评为使用数GB的[内存用于联机重复数据消除](https://zh.wikipedia.org/wiki/内存 "wikilink")，这影响了它在大量中小型系统上的使用。但是，在关闭ZFS的联机重复数据消除后（因为ReFS不支持此功能），ZFS只占用几百兆内存，与另外两个系统相对持平。等方案使用[专有方法](../Page/专有软件.md "wikilink")，这意味着如果故障且厂商也无法解决，没有其他解决方案。\[30\]

2012年，[Phoronix](../Page/Phoronix.md "wikilink")撰写了一篇\[31\]ReFS对战[Btrfs](../Page/Btrfs.md "wikilink")的分析（Btrfs是适用于Linux的一个[写时复制文件系统](https://zh.wikipedia.org/wiki/寫入時複製 "wikilink")）。两者具有类似的特性，都支持校验和、类[RAID](../Page/RAID.md "wikilink")使用多块磁盘，以及错误检测与纠正。但是，当时的ReFS缺乏[重复数据删除](../Page/重复数据删除.md "wikilink")、写时快照和压缩，而Btrfs和ZFS支持上述技术。

## 参见

  - [WinFS](../Page/WinFS.md "wikilink")
  - [APFS](../Page/苹果文件系统.md "wikilink")

## 参考资料

## 外部链接

  - [Analysis of detailed differences between NTFS and ReFS in Server 2012, and reasons for choosing one or the other](http://kx.cloudingenium.com/microsoft/servers/windows-servers/windows-server-2012/windows-server-2012-file-system-resiliency-refs-data-deduplication-ntfs/)

[Category:2012年软件](https://zh.wikipedia.org/wiki/Category:2012年软件 "wikilink") [Category:微软磁盘文件系统](https://zh.wikipedia.org/wiki/Category:微软磁盘文件系统 "wikilink")

1.
2.
3.
4.
5.
6.
7.  Elena Pakhomova of ReclaiMe.com (2012-Aug-08, BEFORE the release of Win8\!) <http://www.smallnetbuilder.com/nas/nas-features/31836-data-recovery-tales-when-windows-storage-spaces-go-bad>
8.
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.
20. [Windows Server 2012: Does ReFS replace NTFS?](http://blogs.technet.com/b/askpfeplat/archive/2013/01/02/windows-server-2012-does-refs-replace-ntfs-when-should-i-use-it.aspx)
21.
22.
23.
24.
25.
26. Elena Pakhomova of ReclaiMe.com (2012-Aug-08, BEFORE the release of Win8\!) <http://www.smallnetbuilder.com/nas/nas-features/31836-data-recovery-tales-when-windows-storage-spaces-go-bad>
27. Elena Pakhomova of ReclaiMe.com (2012-Aug-08, BEFORE the release of Win8\!) <http://www.smallnetbuilder.com/nas/nas-features/31836-data-recovery-tales-when-windows-storage-spaces-go-bad>
28.
29.
30.
31.