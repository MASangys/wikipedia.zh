**cpio**
是[UNIX作業系統的一個檔案](../Page/UNIX.md "wikilink")[備份程式及](https://zh.wikipedia.org/wiki/備份 "wikilink")[檔案格式](../Page/檔案格式.md "wikilink")。這項工具最初出現於[PWB/UNIX](https://zh.wikipedia.org/wiki/PWB/UNIX "wikilink")，係用於備份[磁帶](https://zh.wikipedia.org/wiki/磁帶 "wikilink")，後來也被引進到[UNIX
System
III及](https://zh.wikipedia.org/wiki/UNIX_System_III "wikilink")[System
V](https://zh.wikipedia.org/wiki/System_V "wikilink")，並流行開來。

cpio 可以从 cpio 或
[tar](https://zh.wikipedia.org/wiki/tar_\(计算机科学\) "wikilink")
格式的归档包中存入和读取文件, 归档包是一种包含其他文件和有关信息的文件。 有关信息包括：文件名, 属主, 时标(timestamp),
和访问权限。 归档包可以是磁盘上的 其他文件, 也可以是磁带或管道.

## 示例操作和归档格式

cpio 设计的初衷，是用于在磁带设备上，以顺序、连续的方式保存备份的文件归档。cpio 本身不会对任何归档内容进行压缩，为了便于传输，对于
cpio 的输出归档人们经常会使用 [gzip](https://zh.wikipedia.org/wiki/gzip "wikilink")
等外部程序进行压缩。

### 创建归档

使用以下命令可以用当前目录下的所有文件和文件夹来创建新的 cpio 归档文件：

    find . -depth -print | cpio -o > /path/archive.cpio

### 提取归档

cpio 的 *copy-input* 操作由命令行标识  发起。在该过程中，cpio
从标准输入读取已有的归档，然后在操作系统的文件系统中，恢复创建已经被归档的文件。

``` console
$ cpio -i -vd < archive.cpio
```

命令行标识  告诉 cpio 按需重建目录。指定命令行标识  (verbose) 时，提取文件会同时打印其文件名。

除了选项标识外，其余所有命令行参数都是类 shell 的
[globbing](https://zh.wikipedia.org/wiki/globbing "wikilink")-模式，归档中，只有文件名匹配的文件才会从中提取出来。下面这个示例从归档
*archive.cpio* 中提取文件
*[Cpio//etc/fstab](https://zh.wikipedia.org/wiki/Cpio/etc/fstab "wikilink")*
：

``` console
$ cpio -i -d /etc/fstab < archive.cpio
```

### 列出归档文件列表

下面这行命令可以列出指定 cpio 归档中包含的全部文件：

``` console
$ cpio -t < archive.cpio
```

列出归档文件列表在归档内可能包含绝对路径时会很实用(例如 */bin/ls* 和 *bin/ls*)。

### 复制文件

除上述操作外，cpio 还支持复制文件的操作，该操作由命令行标识 (pass) 发起。该模式可以同时进行 *copy-in* 和
*copy-out* 操作，而不会创建任何归档文件。在该模式下，cpio 从标准输入读取路径名(就像 *copy-out*
中的那样，但这里不会创建归档文件），然后 cpio
将这些文件和目录复制创建到命令行参数指定的不同位置。

下面这个示例将从当前目录开始，将完整目录树复制到 *new-path* 路径下。指定标识  时，该复制过程会保留文件原有的编辑时间， 标识会命令
cpio 按需创建目录，指定  标识时，复制过程会直接覆盖已经存在的同名文件， 标识会在标准输出打印复制进度：

``` console
$ find . -depth -print | cpio -p -dumv new-path
```

[Category:Unix归档和压缩相关实用工具](https://zh.wikipedia.org/wiki/Category:Unix归档和压缩相关实用工具 "wikilink")
[Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink")
[Category:软件包管理系统](https://zh.wikipedia.org/wiki/Category:软件包管理系统 "wikilink")
[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink")
[Category:自由备份软件](https://zh.wikipedia.org/wiki/Category:自由备份软件 "wikilink")