**OverlayFS**是一个面向[Linux](../Page/Linux.md "wikilink")的[文件系统](../Page/文件系统.md "wikilink")服务，其实现一个面向其他[文件系统](../Page/文件系统.md "wikilink")的。

它于2014年被合并到[Linux内核](../Page/Linux内核.md "wikilink")的3.18版本。\[1\]\[2\]其4.0版本带来了必要的改进，例如[Docker中所需的](https://zh.wikipedia.org/wiki/Docker_\(軟體\) "wikilink")`overlay2`存储驱动程序。\[3\]

OverlayFS的主要机制涉及当两个文件系统提供同一名称的目录时目录访问的合并。除此之外，OverlayFS呈现其中一个所产生的对象（如果有），“上层”文件系统优先。OverlayFS与其他覆盖型文件系统不同，OverlayFS合并的目录子树不一定是来自不同的文件系统。\[4\]

虽然截至2016年11月，大部分Linux发行版的[Live CD使用](../Page/Live_CD.md "wikilink")[Aufs](../Page/Aufs.md "wikilink")，但[Slackware](../Page/Slackware.md "wikilink")为其Live CD使用overlayfs。\[5\]

OverlayFS支持在上层文件系统中的和opaque目录，以允许删除文件和目录。\[6\]

## 参考资料

## 外部链接

  - [OverlayFS 文档](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/tree/Documentation/filesystems/overlayfs.txt)

[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink") [Category:Unix文件系统技术](https://zh.wikipedia.org/wiki/Category:Unix文件系统技术 "wikilink") [Category:特殊目的自由文件系统](https://zh.wikipedia.org/wiki/Category:特殊目的自由文件系统 "wikilink") [Category:Linux内核支持的特殊目的文件系统](https://zh.wikipedia.org/wiki/Category:Linux内核支持的特殊目的文件系统 "wikilink") [Category:联合文件系统](https://zh.wikipedia.org/wiki/Category:联合文件系统 "wikilink")

1.

2.

3.  <https://archive.is/20161206132431/https://docs.docker.com/engine/userguide/storagedriver/selectadriver/>

4.

5.  <http://docs.slackware.com/slackware:liveslak>

6.