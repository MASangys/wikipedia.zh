**e2fsprogs**（又稱為**e2fs
programs**）是用以維護[ext2](../Page/ext2.md "wikilink")，[ext3和](../Page/ext3.md "wikilink")[ext4](../Page/ext4.md "wikilink")[檔案系統的工具程序集](../Page/檔案系統.md "wikilink")。由於ext2/3/4是绝大多数[Linux发行版默认的文件系统](../Page/Linux发行版.md "wikilink")，所以這套工具集也包含在众多Linux发行版内。

e2fsprogs包含以下獨立的程式：

  - [`e2fsck`](../Page/e2fsck.md "wikilink"),
    ext2/3/4文件系统的[fsck程序](../Page/fsck.md "wikilink")，用于檢查文件系统的完整性。
  - [`mke2fs`](../Page/mke2fs.md "wikilink"), 用于创建ext2/3/4檔案系統。
  - [`resize2fs`](../Page/resize2fs.md "wikilink"),
    調整已建立的ext2/3/4檔案系統的大小。
  - [`tune2fs`](../Page/tune2fs.md "wikilink"), 修改ext2/3/4檔案系統的相關參數。
  - [`dumpe2fs`](../Page/dumpe2fs.md "wikilink"), 顯示ext2/3/4檔案系統的相关資訊。
  - [`debugfs`](../Page/debugfs.md "wikilink"),
    用于调试ext2/3/4文件系统，可以查看与更改文件系统的状态。

e2fsprogs工具集同时也包含函数库[libext2fs](../Page/libext2fs.md "wikilink")。

## 外部連結

  - [e2fsprogs项目主页](http://e2fsprogs.sourceforge.net/)
  - [e2fsprogs git源代码仓库](http://git.kernel.org/?p=fs/ext2/e2fsprogs.git)
  - [Design and Implementation of the Second Extended
    Filesystem](http://web.mit.edu/tytso/www/linux/ext2intro.html)

[Category:Linux檔案系統](https://zh.wikipedia.org/wiki/Category:Linux檔案系統 "wikilink")
[Category:磁盘文件系统](https://zh.wikipedia.org/wiki/Category:磁盘文件系统 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:Unix文件系统相关软件](https://zh.wikipedia.org/wiki/Category:Unix文件系统相关软件 "wikilink")