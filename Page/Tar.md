> 本文内容由[Tar](https://zh.wikipedia.org/wiki/Tar)转换而来。


{{ infobox file format | name = tar | icon = [<File:Torchlight> tar.png](https://zh.wikipedia.org/wiki/File:Torchlight_tar.png "fig:File:Torchlight tar.png") | screenshot = [Tar_screenshot.png](https://zh.wikipedia.org/wiki/File:Tar_screenshot.png "fig:Tar_screenshot.png") | caption = GNU tar 1.16 showing three common types of Tarballs (shown in red). | extension = `.tar` | mime = application/x-tar | uniform type = public.tar-archive | magic = `ustar` at byte 257 | genre = [File archiver](https://zh.wikipedia.org/wiki/File_archiver "wikilink") | contained by = [gzip](https://zh.wikipedia.org/wiki/gzip "wikilink"), [bzip2](https://zh.wikipedia.org/wiki/bzip2 "wikilink"), [lzma](https://zh.wikipedia.org/wiki/lzma "wikilink"), [xz](https://zh.wikipedia.org/wiki/xz "wikilink"), [lzop](https://zh.wikipedia.org/wiki/lzop "wikilink"), [compress](https://zh.wikipedia.org/wiki/compress "wikilink") | free = Yes }}

**tar**是[Unix和](https://zh.wikipedia.org/wiki/Unix "wikilink")[类Unix系统](../Page/类Unix系统.md "wikilink")上的归档打包工具，可以将多个[文件合并为一个文件](https://zh.wikipedia.org/wiki/文件 "wikilink")，打包后的[文件名亦为](https://zh.wikipedia.org/wiki/文件名 "wikilink")“tar”。目前，tar文件格式已经成为[POSIX标准](https://zh.wikipedia.org/wiki/POSIX "wikilink")，最初是POSIX.1-1988，目前是POSIX.1-2001。本程序最初的设计目的是将文件备份到[磁带](../Page/磁带.md "wikilink")上（**t**ape **ar**chive），因而得名tar。

## 版本

常用的tar是[自由软件基金会](../Page/自由软件基金会.md "wikilink")开发的[GNU](../Page/GNU.md "wikilink")版，目前的稳定版本是1.32，发布于。

## 缩写

[Targzip.svg](https://zh.wikipedia.org/wiki/File:Targzip.svg "fig:Targzip.svg")，来生成压缩文档。如图所示，结合档案中的文件被压缩为一个单位。\]\] tar代表未压缩的tar文件。已压缩的tar文件则附加[数据压缩](../Page/数据压缩.md "wikilink")格式的[扩展名](https://zh.wikipedia.org/wiki/扩展名 "wikilink")，如经过gzip压缩后的tar文件，扩展名为“.tar.gz”。由于受到[DOS](../Page/DOS.md "wikilink")8.3文件名格式的限制，常使用下列缩写：

  - .tgz等价于.tar.gz
  - .tbz与tb2等价于.tar.bz2
  - .taz等价于.tar.Z
  - .tlz等价于.tar.lzma
  - .txz等价于.tar.xz

## GNU tar的用法

命令格式是

` tar `*`功能``   ``选项``   ``文件`*

可以将代表功能和选项的单个字母合并；当使用单个字母时，可以不用在字母前面加“-”。某些版本的tar要求严格按照功能字、选项字的顺序，而有些版本的tar并不在意这个顺序。

### 功能

  - \-c，--create 创建新的tar文件
  - \-x，--extract，--get 解开tar文件
  - \-t，--list 列出tar文件中包含的文件的信息
  - \-r，--append 附加新的文件到tar文件中
  - \-u，--update 用已打包的文件的较新版本更新tar文件
  - \-A，--catenate，--concatenate 将tar文件作为一个整体追加到另一个tar文件中
  - \-d，--diff，--compare 将文件系统里的文件和tar文件里的文件进行比较
  - \--delete 删除tar文件里的文件。注意，这个功能不能用于已保存在磁带上的tar文件！

### 常用选项

  - \-v，--verbose 列出每一步处理涉及的文件的信息，只用一个“v”时，仅列出文件名，使用两个“v”时，列出权限、所有者、大小、时间、文件名等信息。
  - \-k，--keep-old-files 不覆盖文件系统上已有的文件
  - \-f，--file \[主机名:\]文件名 指定要处理的文件名。可以用“-”代表[标准输出或](https://zh.wikipedia.org/wiki/标准输出 "wikilink")[标准输入](https://zh.wikipedia.org/wiki/标准输入 "wikilink")。
  - \-P，--absolute-names 使用[绝对路径](https://zh.wikipedia.org/wiki/绝对路径 "wikilink")
  - \-j，--bzip2 调用[bzip2执行压缩或解压缩](https://zh.wikipedia.org/wiki/bzip2 "wikilink")。注意，由于部分老版本的tar使用-I实现本功能，因此，编写[脚本时](https://zh.wikipedia.org/wiki/脚本 "wikilink")，最好使用--bzip2。
  - \-J，--xz，--lzma 调用执行压缩或解压缩。依赖XZ Utils。
  - \-z，--gzip，--gunzip，--ungzip 调用[gzip执行压缩或解压缩](https://zh.wikipedia.org/wiki/gzip "wikilink")
  - \-Z，--compress，--uncompress 调用[compress执行压缩或解压缩](https://zh.wikipedia.org/wiki/compress "wikilink")

## 应用示例

` tar -cvf home_backup.tar /home`

可以将/home目录下的所有文件打包入home_backup.tar文件中。理解这个命令时，请注意“home_backup.tar”实际上是-f选项的参数。tar默认记录[相对路径](https://zh.wikipedia.org/wiki/相对路径 "wikilink")，即使给出的是[绝对路径](https://zh.wikipedia.org/wiki/绝对路径 "wikilink")，也会自动将代表[根目录](../Page/根目录.md "wikilink")的“/”去掉，所以，在这个例子中，使用“/home”和“home”是相同的。要想使用绝对路径，请加上“P”选项，但一般不推荐使用绝对路径，原因之一是可能导致[tar炸弹攻击](https://zh.wikipedia.org/wiki/Tar_\(计算机科学\)#tar炸弹 "wikilink")。

` cd /home`
` tar -cvf home_backup.tar *`

这也是一种制作备份的方法，但是不推荐这样做。因为tar在默认解压时，会将文件直接输出到当前目录下，而不会新建并输出到一个名为home的子目录，令到当前目录显得很凌乱。这也是一种形式的[tar炸弹攻击](https://zh.wikipedia.org/wiki/Tar_\(计算机科学\)#tar炸弹 "wikilink")。

` tar -tf home_backup.tar`

列出home_backup.tar文件里已被打包的文件。此时仅仅显示文件名。如果加上“v”，则能列出权限、所有者、大小、时间、文件名等信息。为防止[tar炸弹攻击](https://zh.wikipedia.org/wiki/Tar_\(计算机科学\)#tar炸弹 "wikilink")，应该养成解压前查看tar文件内容的好习惯。

` tar -xvf home_backup.tar`

在当前目录下解压home_back.tar。解压后的文件，其访问权限得到保留；其所有者是执行tar命令的用户，如果tar的执行者是root，则所有者是文件原来的所有者。 解压前，最好先查看tar文件的内容，以决定是否需要新建一个临时子目录安放。

` tar -xvf home_backup.tar home/test.c`

指定解压出test.c这个文件。解压过程中会自动创建home这个子目录。
\== 其他 ==

### 替代

由于备份策略的进步，逐渐采用[dump](https://zh.wikipedia.org/wiki/dump "wikilink")、[restore等工具替代tar](https://zh.wikipedia.org/wiki/restore "wikilink")。此后，tar多与[gzip联用](https://zh.wikipedia.org/wiki/gzip "wikilink")，弥补后者无法将多个文件打包的不足。这一用法沿用至今，新的tar版本已能自动调用多种[压缩工具执行压缩](https://zh.wikipedia.org/wiki/压缩工具 "wikilink")。已压缩的tar文件也叫“tarball”。大部分自由软件的源代码采用tarball的形式发布。

### tar炸弹

攻击者利用绝对路径，或者“tar -cf bomb.tar \*”的方式创建的tar文件，然后诱骗受害者在根目录下解压，或者使用绝对路径解压。可能使受害系统上已有的文件被覆盖掉，或者导致当前工作目录凌乱不堪，这就是所谓的“tar炸弹”。因此，要养成良好的解压习惯：

  - 解压前用“t”查看tar的文件内容。
  - 拒绝使用绝对路径。
  - 新建一个临时子目录，然后在这个子目录里解压。

### tar管道

管道用法：

` tar -c "${源目录}" | tar -xvC "${目标目录}"`

文件默认是标准输入/输出，不需再额外指定。可以将源目录下的文件及子目录复制到目标目录中，尤其适用于复制含有特殊文件（如[软链接](https://zh.wikipedia.org/wiki/软链接 "wikilink")、[设备文件](https://zh.wikipedia.org/wiki/设备文件 "wikilink")）的目录。

[Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink") [Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink") [Category:自由备份软件](https://zh.wikipedia.org/wiki/Category:自由备份软件 "wikilink")