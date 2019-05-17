**Kompare**（原名“Kdiff”）是一款以开发人员为对象的图形化比较和合并工具。它允许用户比较两个不同的文本文件或目录。它是 KDE
应用程序（和以前 [KDE
软件编集](https://zh.wikipedia.org/wiki/KDE_Software_Compilation "wikilink")）的一部分，因此主要用于
Linux 和其他类 unix 操作系统；在 Windows 上同样可用。Kompare 并不实际计算文件间的差异，而仅仅是 diff
程序的图形化前端。

它是一个标准的 KDE SC 工具，同 kdesdk 模块一齐被打包。

## 比较文本的文件

Kompare
通过让相同行尽可能的位置相近来两两显示要比较的文件，不同行的内容将会在两个文件中分别高亮显示。三种不同的颜色用于突出显示，说明高亮内容

  - 存在于第一个文件，但未在第二个(即高亮内容已从第一个文件 *删除了* )； *或*
  - 存在于第二个文件，但不在第一个(即已 *加入* 到第一个文件)； *或*
  - 存在于两个文件中，但是内容不同(即内容自第一个文件被创建已 *改变*)

## Kompare 的其他功能

一个不完整的列表如下，以说明 Kompare 除了比较文本文件外的其他功能。\[1\]

### 比较目录

当两个目录被选定进行比较，Kompare将分别显示目录树，包括了两目录中不相同的文件和子目录。点击条目将显示具体条目的比较。

### 创建和应用补丁

Kompare 能够创建一个补丁（patch）文件，该文件仅列出两比较文件间的差异。不仅如此，Kompare
可根据一文件与其相关的补丁文件计算生成另一文件。对于源文件很大而修订内容较小的场景，这是个很有用的功能。

Kompare
创建和应用的补丁文件同命令行工具所生成的相兼容，因为Kompare实际仅是一个diff的图形化前端，而创建和应用补丁的功能则由patch命令行工具实现。

## 另请参阅

  - [文件比较工具的比较](https://zh.wikipedia.org/wiki/文件比较工具的比较 "wikilink")
  - [meld](https://zh.wikipedia.org/wiki/meld "wikilink"),
    [KDiff3](http://kdiff3.sourceforge.net/) -
    视觉化文件差异，非常类似Kompare，但也支持合并文件、编辑文件细节。
  - [FileMerge](../Page/蘋果開發工具.md "wikilink") 提供显示文件差异的功能，风格非常像Kompare。presents
    file differences using a style very similar to Kompare.
  - [WinMerge](../Page/WinMerge.md "wikilink"), 一个相似的免费的Windows平台下工具。

## 参考文献

[Category:KDE_应用](https://zh.wikipedia.org/wiki/Category:KDE_应用 "wikilink")

1.