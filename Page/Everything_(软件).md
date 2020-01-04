> 本文内容由[Everything \(软件\)](https://zh.wikipedia.org/wiki/Everything_\(软件\))转换而来。


**Everything**是一个[私有的](../Page/专有软件.md "wikilink")[免费Windows](https://zh.wikipedia.org/wiki/免费软件 "wikilink")[桌面搜索引擎](https://zh.wikipedia.org/wiki/桌面搜索 "wikilink")，可以在[NTFS](../Page/NTFS.md "wikilink")卷上快速地根据名称查找文件和目录。由澳大利亚人大卫·卡彭特（David Carpenter）开发。2009年10月30日，在拥有70,000用户的[Wakoopa](../Page/Wakoopa.md "wikilink")网站排名中，Everything在1757个应用程序中排名第857，超越了老牌压缩工具[WinZip](../Page/WinZip.md "wikilink")\[1\]。直到2013年，Everything仍处于开发状态。

## 工作原理

当Everything第一次运行时，会通过[主文件表中的文件元数据创建卷上每个文件和目录名称的索引](https://zh.wikipedia.org/wiki/NTFS#主文件表 "wikilink")\[2\]。默认情况下，会索引所有挂载的NTFS卷\[3\]。创建索引后，程序就会根据[USN日志持续更新索引](https://zh.wikipedia.org/wiki/NTFS#NTFS_日志 "wikilink")\[4\]。Everything在索引中查找满足用户查找表达式的文件名，表达式可以是部分目标文件名，或使用[正则表达式](../Page/正则表达式.md "wikilink")\[5\]，并且在搜索关键字输入后立刻显示结果。

由于Everything并不索引文件内容，并且依赖于[USN日志来过滤文件更新](https://zh.wikipedia.org/wiki/NTFS#NTFS_日志 "wikilink")，因此只需占用很少的内存和处理器时间\[6\]\[7\]。Everything的索引过程和搜索过程执行非常快速（几乎瞬间完成）、占用资源极低，同时能实时更新索引数据库（索引文件极小）和搜索结果，这些特性在如今磁盘容量越来越大、用户文件越来越多的情况下使得Everything超越了传统[桌面搜索工具而广受欢迎](https://zh.wikipedia.org/wiki/桌面搜索 "wikilink")。

## 软件缺点

基于前面描述的工作原理，使得Everything的缺点和它的优点一样明显。

  - **需要管理员权限**：这样才能读取USN日志，由此带来了安全上的问题。
  - **仅支持NTFS卷**\[8\]：不支持目前大量移动设备使用的[FAT](../Page/FAT.md "wikilink")文件系统，也不支持除Windows外的其他操作系统中常见的文件系统，如Linux\[9\]\[10\]。不过，从Everything 1.3.0.629b（测试版）开始提供的文件列表功能\[11\]，为使用其他文件系统的用户和使用移动存储设备的用户提供了便利\[12\]。

## 多用户安全

由于Everything的工作原理，它在多用户环境中并不安全。在运行时它需要访问[NTFS](../Page/NTFS.md "wikilink") USN日志，因此必须以管理员权限运行，即必须通过特权账户或作为[Windows服务](../Page/Windows服务.md "wikilink")。作为Windows服务时，可在没有管理员权限时实现搜索功能。\[13\]然而，Everything会直接显示搜索结果而不根据当前用户权限过滤，所以每个用户都可以看到卷上的所有文件，就好像他们在使用管理员权限运行Everything。用户还可以双击Everything结果列表中的文件名来打开文件或运行程序（目标为可执行文件时），而此时Everything会以它自身的管理员凭据而不是当前用户的凭据运行文件。\[14\]尽管可以通过服务或其他方法\[15\]避免在打开文件时的权限提升\[16\]，但仍没有明确的方法阻止普通用户列出他无权查阅的其他文件目录。

## 开发情况

2009年11月该软件发布了一个稳定版后\[17\]，开发工作中断了三年。这场中断引发了用户担心与失望。\[18\]2013年1月5日，该软件发布了新的测试版。

## 类似软件

  - **NTFS-Search**\[19\]以及最近的**SwiftSearch**\[20\] - 以类似方式工作的开源程序
  - **UltraSearch**，一个可替代的免费软件\[21\]
  - **MasterSeeker**：http://www.master-seeker.com/
  - [Listary](../Page/Listary.md "wikilink")

## 另请参阅

  - [Listary](../Page/Listary.md "wikilink")
  - [桌面搜索](https://zh.wikipedia.org/wiki/桌面搜索 "wikilink")
  - [搜寻引擎列表](https://zh.wikipedia.org/wiki/搜寻引擎列表 "wikilink")
  - [日志文件系统](../Page/日志文件系统.md "wikilink")
  - [NTFS](../Page/NTFS.md "wikilink")

## 参考资料

## 用户评价

  - [Everything 1.2.1.371](http://download.cnet.com/Everything/3000-2379_4-10890746.html) CNET editors' review
  - [Gizmo's Freeware 2009 Product of the Year: Our Editor's Choice](http://www.techsupportalert.com/gizmos-freeware-2009-product-of-the-year.htm) Top 4 finalist
  - [Top 10 Tiny & Awesome Windows Utilities](http://www.lifehacker.com.au/2009/03/top_10_tiny__awesome_windows_utilities-2/) Lifehacker review
  - [Find Your Files for Free With Everything Search Engine](http://www.pcworld.com/article/164021/find_your_files_for_free_with_everything_search_engine.html) PCWorld review
  - [Everything Search Engine Review](http://www.refolder.com/index.php/2009/02/everything-search-engine-review/) Refolder's review
  - [ZDNet Readers' Choice: Top 25 free, lightweight apps](https://web.archive.org/web/20090629175824/http://blogs.zdnet.com/gadgetreviews/?p=5368&page=5) \#23: *Everything* search engine
  - [Everything Search Engine Comic Review](http://www.thesimplest.net/node/210/) TheSimplest review

## 外部链接

  - [Everything search engine](http://www.voidtools.com/)

  - [Everything中文主页](http://xbeta.info/everything/index.htm)

  - [Everything使用教程](http://xbeta.info/everything-search-tool.htm)——[善用佳软](https://zh.wikipedia.org/wiki/善用佳软 "wikilink")

[Category:桌面搜索引擎](https://zh.wikipedia.org/wiki/Category:桌面搜索引擎 "wikilink")

1.
2.
3.
4.
5.
6.
7.
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
20.
21.