> 本文内容由[Shred \(Unix\)](https://zh.wikipedia.org/wiki/Shred_\(Unix\))转换而来。


**`shred`**是[Unix与](https://zh.wikipedia.org/wiki/Unix "wikilink")[类Unix系统](../Page/类Unix系统.md "wikilink")中的命令之一，用于文件与设备数据使之难以被恢复。shred也是[GNU核心工具组](../Page/GNU核心工具组.md "wikilink")的组成部分之一。

## 背景

为保证效率，删除某一文件一般只需删除其在文件系统中的对应项，实际的文件内容则仍完好无损，这一特性也多为常见的数据恢复软件所利用以恢复文件。而假使该文件内容被其他内容所覆盖，专业的数据恢复设备也能利用本有存储内容的剩余磁场来恢复原始内容。针对这些特点，shred以用能最大程度破坏原始数据的模式多次覆写文件的方式来达到安全删除的目的\[1\]。

## 特点

`shred`可以对普通文件或设备（在Unix与类Unix系统中设备也是一类文件）调用。若使用默认设定，shred就会以多种模式覆写文件3遍，但覆写的次数也可以由用户以使用`-n`的方式来定义。在使用`-z`的情况下，shred还可以在最后一次覆写时将文件全部以0覆写，这也可借以掩盖文件曾用shred覆写过的痕迹。

默认情况下，shred也会覆写文件系统里为文件分配的空间中的空闲空间。任举一例，在一簇占用4KB的文件系统中存储一个5KB的文件，那该文件实际分配的空间就是8KB（2簇），而对该文件执行shred时就会将这8KB空间全部覆写；但若额外使用`-x`选项就可以避免覆写空闲空间。除此以外，shred还可搭配`-u`选项以在覆写完毕后自动删除文件。

## 局限性

shred的局限性之一是当对某一普通文件使用时，shred只会覆写该文件而不会覆写文件的其他副本，而如手动/自动备份、文件系统快照、文件系统的[COW机制](https://zh.wikipedia.org/wiki/COW "wikilink")、[闪存](../Page/闪存.md "wikilink")介质的[耗损平均机制](../Page/耗損平均技術.md "wikilink")、[网络文件系统](../Page/网络文件系统.md "wikilink")的缓存机制和[日志文件系统](../Page/日志文件系统.md "wikilink")的日志机制都可能导致文件副本的产生。因为文件系统本身的机制所产生的局限性都可以用一个办法解决，即是直接对包含目标数据的所有设备使用shred，但对于应用了耗损平均技术的设备来说，数据分配所得的逻辑块与实际的物理位置并不能保证是固定关联的，因而对设备进行shred也无法保证有足够的安全性。在这种情况下，SATA设备的安全擦除命令（如）就是更好的选择，甚至对磁性存储设备来说使用SATA安全擦除工具也更快且更可靠。除此之外，对于无法使用的硬盘等设备就可以考虑用物理破坏的方式使内容不可还原了\[2\]。

## 参考资料

## 参见

  -
  -
  -
  -
## 注

[Category:Unix软件](https://zh.wikipedia.org/wiki/Category:Unix软件 "wikilink") [Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink") [Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")

1.
2.