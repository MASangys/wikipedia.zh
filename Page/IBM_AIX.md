> 本文内容由[IBM AIX](https://zh.wikipedia.org/wiki/IBM_AIX)转换而来。


**AIX**，是[IBM](../Page/IBM.md "wikilink")专有[UNIX](https://zh.wikipedia.org/wiki/Unix "wikilink")[操作系统](../Page/操作系统.md "wikilink")的商标名。名稱來自**先進互動執行系統**（，縮寫為）。最初的名稱來自，但或许这个名字没有得到法律部门的允许，因此更改为"Advanced Interactive eXecutive"。

AIX的一些流行特性例如chuser、mkuser、rmuser命令以及相似的东西允许如同管理文件一样来进行用户管理。AIX级别的[逻辑卷管理正逐渐被添加进各种](https://zh.wikipedia.org/wiki/逻辑卷管理 "wikilink")[自由的](../Page/自由软件.md "wikilink")[UNIX风格操作系统中](https://zh.wikipedia.org/wiki/UNIX风格 "wikilink")。

AIX 5L 5.3版本操作系统可以支持：

  - 64颗[CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")
  - 2[Tb主](https://zh.wikipedia.org/wiki/Tb "wikilink")[内存](https://zh.wikipedia.org/wiki/内存 "wikilink")
  - JFS2：最大16 Tb的[文件系统](../Page/文件系统.md "wikilink")
  - JFS2：最大16 Tb的[文件](https://zh.wikipedia.org/wiki/文件 "wikilink")

## 专用文件系统

  - JFS

IBM最早在1990年2月于AIX 3.1引入初始版本的JFS。这个版本的JFS现在被叫作JFS1， 是AIX在往后十多年的首选档案系统并被安装在过百万台IBM顾客的AIX系统中。JFS1和AIX的内存管理程序紧紧连结在一起\[6\]，这种设计经常在一些封闭源码作业系统或只支援一个作业系统的档案系统出现。

1995年，强化JFS的工作开始展开，当中包括加强其伸延性，支援多微处理器的计算机和令其易于移植至其他作业系统。经过多年的设计、改良和测试，新的JFS在1999年4月付运于OS/2 Warp Server for eBusiness，随后亦付运在2000年10月的OS/2 Warp Client中。与此同时，，JFS开发团亦在1997年开始把开发中新版JFS移植回AIX。为和原身AIX支援的原版JFS1分开，新版JFS亦会称作JFS2 (Enhanced Journaled File System)。2001年5月，JFS2开正式可供AIX 5L使用。

1999年10月，原供OS/2并正在移植回AIX的新版JFS源码被以GNU General Public License开放给自由/开放原始码软件社群并展开了移植至Linux的工作。而第一个稳定版本的JFS for Linux亦在2001年6月推出。\[7\]至2002年8月，JFS正式并入稳定版Linux核心2.4.20。\[8\]

AIX操作系统使用[JFS文件系统](https://zh.wikipedia.org/wiki/JFS "wikilink")(JOURNAL FILE SYSTEM), JFS文件系统是一种字节级日志文件系统，借鉴了数据库保护系统的技术，以日志的形式记录文件的变化。JFS通过记录文件结构而不是数据本身的变化来保证数据的完整性。这种方式可以确保在任何时刻都能维护数据的可访问性。

该文件系统主要是为满足服务器（从单处理器系统到高级多处理器和群集系统）的高吞吐量和可靠性需求而设计、开发的。JFS文件系统是为面向事务的高性能系统而开发的。在IBM的AIX系统上，JFS已经过较长时间的测试，结果表明它是可靠、快速和容易使用的。JFS也是一个有大量用户安装使用的企业级文件系统，具有可伸缩性和健壮性。与非日志文件系统相比，它的突出优点是快速重启能力，JFS能够在几秒或几分钟内就把文件系统恢复到一致状态。虽然JFS主要是为满足服务器（从单处理器系统到高级多处理器和群集系统）的高吞吐量和可靠性需求而设计的，但还可以用于想得到高性能和可靠性的客户机配置，因为在系统崩溃时JFS能提供快速文件系统重启时间，所以它是因特网文件服务器的关键技术。使用数据库日志处理技术，JFS能在几秒或几分钟之内把文件系统恢复到一致状态。而在非日志文件系统中，文件恢复可能花费几小时或几天。

JFS的缺点是，使用JFS日志文件系统性能上会有一定损失，系统资源占用的比率也偏高，因为当它保存一个日志时，系统需要写许多数据。

  - JFS2

JFS2（Enhanced Journaled File System），通常，这个新的文件系统被称为JFS2，从2001年5月开始，JFS2正式可以在AIX 5L上使用

JFS2支持预定的日志记录方式，可以提高较高的性能，并实现亚秒级文件系统恢复。JFS2同时为提高性能提供了基于分区的文件分配（Extent-based allocation）。基于分区的分配 是指对一组连续的块而非单一的块进行分配。由于这些块在磁盘上是连续的，其读取和写入的性能就会更好。这种分配的另外一个优势就是可以将元数据管理最小化。按块分配磁盘空间就意味着要逐块更新元数据。而使用分区，元数据则仅需按照分区（可以代表多个块）更新。JFS2还使用了B+ 树，以便更快地查找目录和管理分区描述符。JFS2没有内部日志提交策略，而是在kupdate守护进程超时时提交。

  - JFS和JFS2的区别

jfs和jfs2文件系统都是文件和目录的集合，管理文件或目录在磁盘上的位置。除了文件和目录以外,jfs2类型的文件系统还包含一个超级块、分配位图和一个或多个分配组。分配组由磁盘i节点和片区（Extent）组成。一个jfs2类型的文件系统也占据一个逻辑卷。

在jfs中，超级块的大小是4096字节，偏移量是4096字节；而在jfs2中，超级块的大小仍是4096字节，但是超级块在逻辑卷中的偏移量是32768字节。

jfs2的新功能包括基于片区的（Extent）的分配、目录排序和文件系统对象的动态空间分配等。

1.基于片区（Extent）的寻址结构

片区是一个连续的可变长的文件系统块的序列，它是jfs2对象的分配单位。"大片区"可以跨越多个分配组。一般而言，jfs2的分配策略通过为每一个片区分配尽可能大和连续的区间来使文件系统中片区的数量达到最小，使逻辑块的分配更加连续。这样能够提供更大的i/o传输效率，达以改善性能的目的。但是在有些情况上并不能总是达到这种理想的效果。

片区是由逻辑块偏移量（logical offset）、长度（length）和物理地址（physical address）组成的三元组来描述。其中由逻辑块偏移量和长度可能计算出物理地址。基于片区的寻址结构是由片区描述、作为根的i节点和作为键值的文件内的逻辑偏移量而构成的一个子B+树。

2.可变的逻辑块大小

JFS2把磁盘空间分割成块，JFS2支持512，1024，2048和4096字节块的大小。不同的文件系统可以使用不同的块的大小，从而达到优化空间的目的，减少目录或文件内部的残片(Fragmentation).

3.动态分配磁盘i节点

JFS2给磁盘i节点动态地按需分配空间，当i节点不再需要时就会释放i节点所占用的空间。这个特点避免了在创建标准JFS时为磁盘i节点预留固定数量磁盘空间的缺点。因此，这样就不需要用户在创建文件系统时计算这个文件系统中要保存的文件和目录的最大数。

4.目录组织 　 JFS2提供了两种不同的目录组织.第1种目录组织适用于小目录和在一个目录的i节点中保存目录的内容.这种目录组织不需要单独的目录块i/o和单独的存储分配. 第2种目录组织适用于较大的目录，每一个目录就是一个以名字为键值的B+树.与传统的、线性的、未分级的目录组织相比，这种目录组织能够提供更快的目录查找、插入和删除的能力。

5.在线整理文件系统的空闲残片

JFS2支持已安装的文件系统（即使有进程访问这个文件系统）对残余在文件系统中的空闲空间的整理功能。一旦一个文件系统的空闲空间变成分散的残片，对这些残片的整理将会使得JFS2提供I/O效率更高的磁盘空间分配，从而避免出现一些因空闲空间不连续而不够分配的情况。

## 发布历史

一些不同版本的AIX曾经存在过，但是逐渐消失了。1986年出现的AIX V1运行在IBM [RT/PC](https://zh.wikipedia.org/wiki/RT/PC "wikilink")（AIX/RT）上。它基于[System V](https://zh.wikipedia.org/wiki/System_V "wikilink") Release 3。自从1989年以来，AIX成为[RS/6000系列工作站和服务器](https://zh.wikipedia.org/wiki/RS/6000 "wikilink")（AIX/6000）的操作系统。在AIX的开发过程中，IBM和[INTERACTIVE Systems Corporation](https://zh.wikipedia.org/wiki/INTERACTIVE_Systems_Corporation "wikilink")（同IBM签约）将4.2[BSD](../Page/BSD.md "wikilink")与4.3BSD的一些特性加入了AIX中。值得一提的是，著名的[深蓝的操作系统即是AIX](https://zh.wikipedia.org/wiki/深藍_\(電腦\) "wikilink")

## 支持的架构

  - [PowerPC](../Page/PowerPC.md "wikilink")
  - [POWER](https://zh.wikipedia.org/wiki/POWER "wikilink")

## 版本

  - AIX 7.1, 2010年发布
      - 仅在采用POWER6或POWER7处理器技术的Power Systems服务器上受支持
      -
<!-- end list -->

  - AIX 6.1, 2007年11月9號
      - 技持\[工作量分區\]（WPARs=作業系統層級虛擬化）
      - 行動裝置的生活應用
      - ...
  - AIX 5L 5.3, 2004年8月
      - [NFS](https://zh.wikipedia.org/wiki/NFS "wikilink") Version 4支持
      - Advanced Accounting
      - 虚拟[SCSI](https://zh.wikipedia.org/wiki/SCSI "wikilink")
      - 虚拟[以太网](../Page/以太网.md "wikilink")
      - [SMT](https://zh.wikipedia.org/wiki/SMT "wikilink")
      - [微分区](https://zh.wikipedia.org/wiki/微分区 "wikilink")（Micro-Partitioning）
      - JFS2配额（quota）支持
      - JFS2文件系统收缩（shrink）支持
  - AIX 5L 5.2, 2002年10月
      - 支持[多路IO](https://zh.wikipedia.org/wiki/MPIO "wikilink")[光纤信道磁盘](https://zh.wikipedia.org/wiki/光纤信道 "wikilink")
      - 动态LPAR支持
  - AIX 5L 5.1, 2001年5月
      - 引入[64位](https://zh.wikipedia.org/wiki/64位 "wikilink")[内核](../Page/内核.md "wikilink")
      - JFS2
  - AIX 4.3.3, 1999年9月
      - 增加了在线[备份](../Page/备份.md "wikilink")功能
  - AIX 4.3.2, 1998年10月
  - AIX 4.3.1, 1998年4月
  - AIX 4.3, 1997年10月
      - 支持64位[体系](../Page/CPU设计.md "wikilink")

<!-- end list -->

  - AIX v4, 1994年
  - AIX v3, 1990年
      - AIX v3.1
          - 引入了日志文件系统（[JFSv](https://zh.wikipedia.org/wiki/JFS "wikilink")1）
  - AIX v2
      - 最後一個版本為v2.2.1
  - AIX v1, 1986年

*注：*L表示同[Linux](../Page/Linux.md "wikilink")的姻缘关系

## 图形界面

[通用桌面环境](../Page/CDE.md "wikilink")（Common Desktop Environment，CDE）是AIX系统的默认图形用户界面。作为同Linux联姻的一部分，针对Linux应用的AIX工具箱（ATLA）也提供了开源的[KDE](../Page/KDE.md "wikilink")和[GNOME](../Page/GNOME.md "wikilink")桌面。

## 外部链接

  - [IBM AIX主页](http://www-1.ibm.com/servers/aix/)
  - [针对Linux应用的AIX工具箱](http://www.ibm.com/servers/aix/products/aixos/linux/)
  - [AIX fixes](http://www.ibm.com/servers/eserver/support/pseries/aixfixes.html)
  - [rootvtg.net](http://rootvg.net/)

[Category:IBM操作系统](https://zh.wikipedia.org/wiki/Category:IBM操作系统 "wikilink")