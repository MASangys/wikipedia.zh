**第二代扩展文件系统**（，縮寫為**ext2**），是[Linux内核](../Page/Linux内核.md "wikilink")所用的[文件系统](../Page/文件系统.md "wikilink")。它开始由Rémy Card设计，用以代替[ext](https://zh.wikipedia.org/wiki/ext "wikilink")，於1993年1月加入Linux内核之中。它和[BSD](../Page/BSD.md "wikilink")中的[Unix文件系统](../Page/Unix文件系统.md "wikilink")具有相同的设计标准，同时也是[Linux](../Page/Linux.md "wikilink")上的第一个商业级文件系统。\[1\]

ext2的经典实现是[Linux内核](../Page/Linux内核.md "wikilink")中名为“ext2fs”的文件系统驱动；其他的实现（它们的软件质量和完整性可能不同）存在于[GNU Hurd](../Page/GNU_Hurd.md "wikilink")，[Minix 3](https://zh.wikipedia.org/wiki/Minix_3 "wikilink")，以及某些[BSD](../Page/BSD.md "wikilink")系统中，同时也以第三方驱动的形式存在于包括[Windows和](https://zh.wikipedia.org/wiki/Windows "wikilink")[OS X在内的的操作系统](https://zh.wikipedia.org/wiki/OS_X "wikilink")。

ext2是多个[LINUX发行版的默认文件系统](../Page/Linux发行版列表.md "wikilink")，如[Debian](../Page/Debian.md "wikilink")、[Red Hat Linux等](../Page/Red_Hat_Linux.md "wikilink")。直到后来完全兼容ext2的日志系统[ext3开始取代ext](https://zh.wikipedia.org/wiki/ext3 "wikilink")2时，ext2仍然是闪存设备（例如：[SD卡](../Page/SD卡.md "wikilink")和[U盘](https://zh.wikipedia.org/wiki/U盘 "wikilink")）上的Linux所使用的文件系统，因为没有日志功能使得Linux性能更好，同时也能减少写入的次数（闪存设备通常具有有限的写入次数）。最新版本的内核，同样也支持一种不含日志模式的ext4文件系统，这种模式能够带来类似的好处以及一些ext4独有的优点。

## 历史

Linux早期开发是在[Minix系统上进行的跨平台开发](https://zh.wikipedia.org/wiki/Minix "wikilink")。因此，[MINIX文件系统](../Page/MINIX文件系统.md "wikilink")被用作Linux的第一个文件系统。尽管Minix文件系统十分稳定，但是由于其内部使用了16位的偏移量，使得它能够支持的最大空间只有64[MB](https://zh.wikipedia.org/wiki/MB "wikilink")，支持的最大文件名为14个字符。正是由于这些不足，开发一套Linux原生的文件系统开始了。\[2\]

为了避免新文件系统的出现带来的问题，同时也为了给文件操作提供更好的[API](../Page/应用程序接口.md "wikilink")，[虚拟文件系统](https://zh.wikipedia.org/wiki/虚拟文件系统 "wikilink")，一个文件系统的虚拟层，被加入到了Linux内核中。**[第一代扩展文件系统](https://zh.wikipedia.org/wiki/延伸文件系统 "wikilink")**（[英语](../Page/英语.md "wikilink")：extended file system）作为第一个使用虚拟文件系统的文件系统，发布于1992年4月，并集成在了版本为0.96c的Linux中。扩展文件系统解决了Minix文件系统中的两个主要的问题，它支持最多255个字符的文件名，最大支持2[GB的空间](https://zh.wikipedia.org/wiki/GB "wikilink")。但是它同样也存在问题：文件访问，[Inode](../Page/Inode.md "wikilink")修改以及文件内容修改没有使用独立的[时间戳](https://zh.wikipedia.org/wiki/时间戳 "wikilink")。

为了解决这个问题，两种新的文件系统被开发出来，并出现在1993年1月发布的版本为0.99的Linux内核中，分别是：[xiafs和](https://zh.wikipedia.org/wiki/xiafs "wikilink")**第二代扩展文件系统**（**ext2**）,它从[Unix文件系统](../Page/Unix文件系统.md "wikilink")中吸取了很多优点，并用这些优点来改进之前的第一代扩展文件系统。并且第二代扩展文件系统在磁盘上存储的（与磁盘功能相关的）数据结构中预留了很多空间供未来进一步开发使用，这也使得它具有很好的可拓展性。

从那时起，第二代扩展文件系统就成为了许多对[虚拟文件系统的](https://zh.wikipedia.org/wiki/虚拟文件系统 "wikilink")[API进行拓展的开发的测试平台](https://zh.wikipedia.org/wiki/API "wikilink")。由于第二代扩展文件系统好的拓展性以及开发人员对其内在实现非常清楚的优点，很多新特性，例如：[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")，[访问控制表和](https://zh.wikipedia.org/wiki/访问控制表 "wikilink")[extended attribute都是最初在第二代扩展文件系统上实现的](https://zh.wikipedia.org/wiki/extended_attribute "wikilink")。

在Linux内核版本号低于2.6.17\[3\]，块驱动（block driver）中的限制使得第二代扩展文件系统最大支援至2[TB的单个文件](https://zh.wikipedia.org/wiki/TB "wikilink")。

## 技術內容

其實作方式受到[Unix文件系统](../Page/Unix文件系统.md "wikilink")的影響。

## 歷史

## 參考資料

## 外部链接

  - [ext2fs user-space tools](http://e2fsprogs.sourceforge.net/ext2.html)

[Category:Linux檔案系統](https://zh.wikipedia.org/wiki/Category:Linux檔案系統 "wikilink") [Category:磁盘文件系统](https://zh.wikipedia.org/wiki/Category:磁盘文件系统 "wikilink")

1.
2.
3.  [linux/kernel/git/torvalds/linux-2.6.git/commitdiff:](http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commitdiff;h=a0f62ac6362c168754cccb36f196b3dfbddc3bc3) , \[PATCH\] 2TB files: add blkcnt_t, Author:Takashi Sato, 26 Mar 2006 09:37:52 +0000 (01:37 -0800) — Commit allowing for large files, git.kernel.org