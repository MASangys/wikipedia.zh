\-{H|zh-hans:文件;zh-hant:檔案;}-

**MINIX檔案系統**（），一種[檔案系統](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")，是[MINIX](../Page/MINIX.md "wikilink")[作業系統中的原生檔案系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，由[安德鲁·斯图尔特·塔能鲍姆](../Page/安德鲁·斯图尔特·塔能鲍姆.md "wikilink")於1980年代創作，於1987年伴隨著Minix
1.0版一同釋出。它源自於[Unix文件系统](../Page/Unix文件系统.md "wikilink")的基本結構，為了使原始碼簡潔，以方便教學，許多複雜的功能都沒有在這個檔案系統中實作，但這也使得它的效能與功能受限。[林纳斯·托瓦兹](../Page/林纳斯·托瓦兹.md "wikilink")在1991年創作[Linux核心時](https://zh.wikipedia.org/wiki/Linux核心 "wikilink")，最初採用了Minix檔案系統，直到1992年4月，才以[延伸檔案系統來取代它](https://zh.wikipedia.org/wiki/延伸檔案系統 "wikilink")。\[1\]

## 设计与实现

一个MINIX文件系统由6个组成部分：\[2\]

  - 引导块是总是存储在第一个块。在系统启动时，它包含了引导加载程序的加载和运行一个操作系统。
  - 第二个块是超块，它是存储有关文件系统，即允许操作系统来定位和理解其它文件系统结构数据。例如，数i节点和区，两个位图的大小和的起始块的数据区。
  - 该索引节点位图是一个简单的地图索引节点跟踪哪些是在使用中，哪些是免费的通过代表他们的任何一个（使用时）或零（免费）。
  - 该区域的位图的工作原理相同的方式作为索引节点位图，除了它跟踪的区域。
  - 该索引节点区域。每个文件或目录被表示为一个inode，它记录元数据，包括类型（文件，目录，块炭，管道），标识为用户和组，三时间戳记录的日期和上次访问时间，最后修改和最后的状态改变。一个inode还包含指向该区域中的地址的列表的数据区所在的文件或目录的实际存储数据。
  - 该数据区是在文件系统的最大组成部分，使用大部分空间。它是在实际的文件和目录的数据被存储。

## 参考资料

[Category:文件系统](https://zh.wikipedia.org/wiki/Category:文件系统 "wikilink")
[Category:磁盘文件系统](https://zh.wikipedia.org/wiki/Category:磁盘文件系统 "wikilink")
[Category:Linux檔案系統](https://zh.wikipedia.org/wiki/Category:Linux檔案系統 "wikilink")

1.

2.