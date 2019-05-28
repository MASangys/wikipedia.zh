**第三代扩展文件系统**（，縮寫為**ext3**），是一个[日志文件系统](../Page/日志文件系统.md "wikilink")，常用于[Linux操作系统](https://zh.wikipedia.org/wiki/Linux操作系统 "wikilink")。它是很多[Linux发行版的默认](../Page/Linux发行版.md "wikilink")[文件系统](../Page/文件系统.md "wikilink")。[Stephen
Tweedie在](https://zh.wikipedia.org/wiki/Stephen_Tweedie "wikilink")1999年2月的内核邮件列表\[1\]中，最早显示了他使用扩展的[ext2](https://zh.wikipedia.org/wiki/ext2 "wikilink")，该文件系统从2.4.15版本的内核开始，合并到内核主线中\[2\]。

## 优势

虽然它的性能（速度）不如它的竞争对手，例如[JFS2](https://zh.wikipedia.org/wiki/JFS文件系统 "wikilink")，[ReiserFS和](../Page/ReiserFS.md "wikilink")[XFS](../Page/XFS.md "wikilink")，但它具有重要的优势，那就是它允许在适当的时候从流行的[ext2文件系统升级](https://zh.wikipedia.org/wiki/ext2 "wikilink")，而无需[备份和恢复数据](../Page/备份.md "wikilink")；除此之外，它还具有比[ReiserFS和](../Page/ReiserFS.md "wikilink")[XFS更低的的](../Page/XFS.md "wikilink")[CPU使用率](https://zh.wikipedia.org/wiki/CPU使用率 "wikilink")[1](http://linuxgazette.net/122/TWDT.html#piszcz)
。

ext3文件系统增加的超越其前代的包括：

  - [日志](../Page/日志文件系统.md "wikilink")
  - 位目录跨越多个块提供基于树的目录索引
  - 在线系统增长

如果没有这些，ext3文件系统也同时是个有效的ext2文件系统。这样，经过良好测试的、成熟的文件系统工具来管理和修复ext2文件系统工具，可以无需大的变动，就应用于ext3文件系统。ext2和ext3文件系统共享相同的工具集，带有[fsck工具的](https://zh.wikipedia.org/wiki/fsck "wikilink")[e2fsprogs](https://zh.wikipedia.org/wiki/e2fsprogs "wikilink")。这种紧密的联系也将两种文件系统之间进行转换（包括升级到ext3和降级为ext2）变得非常容易。

Linux实现的ext3文件系统，包括3个级别的日志：

  - 日记：（慢，但风险小）元数据和文件内容都在提交到主文件系统前写入。这样将提高稳定性但性能上有所损失，因为所有的数据都要写入2次。如果没有在/etc/fstab中加上这个选项，修改中的档案遇上[kernel
    panic或突然断电的时候就可能发生损毁的情况](https://zh.wikipedia.org/wiki/kernel_panic "wikilink")，当然，这还是得看软体是怎么写入档案的。

<!-- end list -->

  - 顺序：（中速，中等风险）顺序和*写回*类似，但在对应的元数据标记为提交前，强制写入文件内容。这是很多Linux发行版默认的方式。

<!-- end list -->

  - 回写：（快，但风险最大；在某种感觉上和ext2相当）这边会写入日志的只有metadata而已，档案的内容并不会跟著写入日志里面。这样的作法让整个效率变快了不少，不过也同样造成了档案写入时不按顺序的结果。举例来说，档案在附加变大的同时发生了crash的情况，就可能造成下次挂载时档案后面就附加一堆垃圾数据的情况。

尽管ext3缺少一些当代文件系统的特点，像是动态的[inode](https://zh.wikipedia.org/wiki/inode "wikilink")、树状的资料储放结构等等，都是被视作ext3的缺点之一，不过在这些特点之外，ext3在文件系统回复上面就有了很好的表现。跟树状结构的文件系统相比，在ext3上面metadata是放在固定的位置，而且在写入的同时会重复写入的一些资料让ext2/3在面临资料损毁的情况下还有挽回的机会。

## 劣势

### 功能

当初ext3的设计目标就是提供对於[ext2的高度相容](https://zh.wikipedia.org/wiki/ext2 "wikilink")，很多磁盘上的结构和都和[ext2很相似](https://zh.wikipedia.org/wiki/ext2 "wikilink")。也因为这样，ext3缺乏很多最新设计中的功能，例如动态分配inode和可变块大小（frags或tails）。

ext3文件系统在被挂载为写入的时候，是不能进行[fsck的](https://zh.wikipedia.org/wiki/fsck "wikilink")。ext3档案系统的倾倒作业在这个档案系统还是挂载中的时候执行可能会造成资料的损坏。

ext3不支持在其他文件系统上已经支持（例如：[JFS2和](../Page/JFS_\(文件系统\).md "wikilink")[ext4](https://zh.wikipedia.org/wiki/ext4 "wikilink")）的[扩展](https://zh.wikipedia.org/wiki/扩展_\(文件系统\) "wikilink")。

### 磁盘碎片

在文件系统级别上，没有在线的ext3[磁盘碎片整理工具](https://zh.wikipedia.org/wiki/磁盘碎片整理 "wikilink")。

离线的ext2磁盘碎片整理工具`e2defrag`，可以用于ext3文件系统，但前提是在使用前要将文件系统转换回ext2。但依赖于功能位在文件系统中打开，`e2defrag`可能会毁灭数据；目前仍然不知道如何处理新的ext3功能。\[3\]

有一些用户使用的磁盘碎片整理工具，例如Shake[2](http://vleu.net/shake/)
和defrag[3](http://ck.kolivas.org/apps/defrag/)，这些工具通过复制文件来实现新分配的文件不存在碎片。但这只在文件系统相当空的情况下有效，并且该文件系统不经常出现碎片。目前没有真正的用于ext3的磁盘碎片整理工具[4](http://www.redhat.com/archives/ext3-users/2005-March/msg00013.html)
。

事实上，磁盘碎片整理完全是一种人们在[单用户](https://zh.wikipedia.org/wiki/单用户 "wikilink")[单进程环境下](https://zh.wikipedia.org/wiki/单进程 "wikilink")（如DOS／早期Windows）工作时养成的旧习。

在多任务环境下，磁盘碎片的出现根本是不可避免的，而且碎片化的速度非常之快。操作系统的任务不是不负责任地给用户提供一个整理工具，而是应该在系统设计的时候消除碎片化对性能的伤害。比如[Linux的](../Page/Linux.md "wikilink")[块设备操作都要经过一个](https://zh.wikipedia.org/wiki/块设备 "wikilink")**I/O调度层**，通过在调度层中使用带有[电梯算法的调度策略来消除碎片对性能的影响](https://zh.wikipedia.org/wiki/电梯算法 "wikilink")。

另外，如果将来[固态硬盘普及乃至取代传统硬盘](../Page/固态硬盘.md "wikilink")，也会让磁盘碎片的概念成为历史。

### 反删除

和ext2不同，ext3会在删除文件时把文件的节点（inode）中的块指标清除。这样做可以在unclean载入文件系统后，重放日志时，可以减少对文件系统的访问。但也同样也增加了文件在反删除上面的困难。用户唯一的补救是在硬盘中捞取数据，并且要知道文件的起始到结束的块指标。尽管提供了比ext2在删除文件上稍微高一些的安全性，却也无可避免的带来了不便之处。

### 压缩

Ext3不支持透明[压缩](../Page/数据压缩.md "wikilink")（Ext2以非官方补丁支持）。

### 大小限制

ext3有一个相对较小的对于单个文件和整个文件系统的最大尺寸。这些限制依赖于文件系统的块大小；下面的表格总结了这些限制\[4\]：

| 區塊大小                                                      | 最大檔案容量                                                      | 最大檔案系統容量                                                   |
| --------------------------------------------------------- | ----------------------------------------------------------- | ---------------------------------------------------------- |
| 1[KiB](https://zh.wikipedia.org/wiki/kibibyte "wikilink") | 16[GiB](https://zh.wikipedia.org/wiki/gibibyte "wikilink")  | 2[TiB](https://zh.wikipedia.org/wiki/tebibyte "wikilink")  |
| 2[KiB](https://zh.wikipedia.org/wiki/kibibyte "wikilink") | 256[GiB](https://zh.wikipedia.org/wiki/gibibyte "wikilink") | 8[TiB](https://zh.wikipedia.org/wiki/tebibyte "wikilink")  |
| 4[KiB](https://zh.wikipedia.org/wiki/kibibyte "wikilink") | 2[TiB](https://zh.wikipedia.org/wiki/tebibyte "wikilink")   | 16[TiB](https://zh.wikipedia.org/wiki/tebibyte "wikilink") |
| 8[KiB](https://zh.wikipedia.org/wiki/kibibyte "wikilink") | 16[TiB](https://zh.wikipedia.org/wiki/tebibyte "wikilink")  | 32[TiB](https://zh.wikipedia.org/wiki/tebibyte "wikilink") |

8[KiB块](https://zh.wikipedia.org/wiki/kibibyte "wikilink")，只能用于允许8[KiB页面的架构](https://zh.wikipedia.org/wiki/kibibyte "wikilink")（例如[alpha](../Page/DEC_Alpha.md "wikilink")）。

### 日志中没有校验和

Ext3在写入日志时，并不做[校验和](https://zh.wikipedia.org/wiki/校验和 "wikilink")。如果barrier=1没有作为加载参数（在文件/etc/fstab），并且如果硬件在无次序的写入缓存，在崩溃时会严重损坏文件系统\[5\]\[6\]（该选项在大多数流行的Linux发行版中都没有被启用，所以大多数发行版的处境都很危险。）

考虑下面的情况：如果硬盘无序的做写入操作（因为现在的硬盘都使用缓存机制以便[摊销写入速度](https://zh.wikipedia.org/wiki/摊销分析 "wikilink")），那么有可能出现在写入处理的提交块时，其他的相关的块已经被写入了。如果电源掉电、内核panic出现在其他块写入前，那么系统将必须重启。在重启后，文件系统将按照正常方式重演日志，并且重演“优胜者”（具有提交块的处理，包括上面无效的但被标记为有效的提交块的处理）。于是，上面没有完成的磁盘写入将处理，但使用已经损坏的日志数据。*文件系统在重演日志的时候，将错误的使用已经损坏的数据覆盖正常数据。*如果使用[校验和](https://zh.wikipedia.org/wiki/校验和 "wikilink")（如果假的“优胜者”处理被标记为互斥的校验和），文件系统会处理的更好，并且不会在磁盘上重演错误的数据。截止到2007年6月24日，已经有补丁来修复这个问题。

## Ext4dev / Ext4

2006年10月10日发布了一个增强版本的文件系统，使用[ext4作为名称](https://zh.wikipedia.org/wiki/ext4 "wikilink")。该文件系统包含很多新的功能。

## 注释和引用

<div class="references-small">

<references/>

</div>

## 参考

  - [ext2](https://zh.wikipedia.org/wiki/ext2 "wikilink")
  - [ext4](https://zh.wikipedia.org/wiki/ext4 "wikilink")
  - [List of file
    systems](https://zh.wikipedia.org/wiki/List_of_file_systems "wikilink")
  - [Comparison of file
    systems](https://zh.wikipedia.org/wiki/Comparison_of_file_systems "wikilink")

## 外部链接

  - [Linux ext3
    FAQ](http://batleth.sapienti-sat.org/projects/FAQs/ext3-faq.html)
  - [Introducing ext3 - IBM developerWorks Advanced filesystem
    implementor's guide,
    Part 7](http://www-128.ibm.com/developerworks/linux/library/l-fs7.html)
  - [Ext2 File System For
    Windows](http://sourceforge.net/projects/ext2fsd) GPL ext2/ext3 file
    system driver for Windows NT/2000/XP/Vista（opensource, supports read
    & write, supports 2K/XP/VISTA on X86/AMD64）
  - [Ext2 Installable File System For
    Windows](http://www.fs-driver.org/) ext2/ext3 file system driver for
    MS Windows NT/2000/XP（freeware, supports read & write on Windows
    NT4.0/2000/XP/2003 on x86 processors only）
  - [EXT2
    IFS](https://web.archive.org/web/20070829085513/http://uranus.it.swin.edu.au/~jn/linux/ext2ifs.htm)
    ext2/ext3 file system driver for MS Windows NT/2000/XP（opensource,
    doesn't support writing, doesn't support Windows XP SP2 or Windows
    Vista）
  - [Explore2fs](http://www.chrysocome.net/explore2fs) An explorer-like
    GUI tool for accessing ext2/ext3 filesystems under MS Windows
  - [ext2/ext3 resizing tools](http://ext2resize.sourceforge.net/)
  - [Presentation on EXT3 Journaling
    Filesystem](http://olstrans.sourceforge.net/release/OLS2000-ext3/OLS2000-ext3.html)
    by Dr. Stephen Tweedie at the Ottawa Linux Symposium, 20 July, 2000

[cn:Ext3](https://zh.wikipedia.org/wiki/cn:Ext3 "wikilink")

[Category:磁盘文件系统](https://zh.wikipedia.org/wiki/Category:磁盘文件系统 "wikilink")
[Category:Linux檔案系統](https://zh.wikipedia.org/wiki/Category:Linux檔案系統 "wikilink")

1.
2.
3.
4.
5.  <http://archives.free.net.ph/message/20070518.134838.52e26369.en.html>
6.  <http://archives.free.net.ph/message/20070519.014256.ac3a2e07.en.html>