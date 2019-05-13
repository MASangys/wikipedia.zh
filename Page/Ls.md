**ls**是一个由[POSIX和](../Page/POSIX.md "wikilink")[单一Unix标准规范的命令](../Page/单一Unix标准.md "wikilink")，在[Unix和](../Page/Unix.md "wikilink")[类Unix系统中都有实现](../Page/类Unix.md "wikilink")。ls是英文**l**i**s**t的缩写，用于列出文件，是Unix和类Unix系统中使用非常频繁的命令。

## 历史

`ls`首次出现于原始版本的[AT\&T](../Page/AT&T.md "wikilink")
[Unix中](../Page/Unix.md "wikilink")。它的名字来源于[Multics](../Page/Multics.md "wikilink")[操作系统的一个类似命令](../Page/操作系统.md "wikilink")，意思是“列出文件块”。目前有两种主流版本的`ls`：一种是[自由软件基金会开发的](../Page/自由软件基金会.md "wikilink")[GNU](../Page/GNU.md "wikilink")[核心程序的组成部分](../Page/coreutils.md "wikilink")；另一种由各种BSD版本发布，如[FreeBSD](../Page/FreeBSD.md "wikilink")、[OpenBSD](../Page/OpenBSD.md "wikilink")、[NetBSD和](../Page/NetBSD.md "wikilink")[苹果公司的](../Page/苹果公司.md "wikilink")[Darwin](../Page/Apple_Darwin.md "wikilink")。两种版本都是[自由以及](../Page/自由软件.md "wikilink")[开源软件](../Page/开源软件.md "wikilink")。

## 使用方法

在[Unix和](../Page/Unix.md "wikilink")[类Unix操作系统中都有](../Page/类Unix.md "wikilink")[当前目录的概念](../Page/当前目录.md "wikilink")，也即程序目前在[目录树中的位置](../Page/目录_\(文件系统\).md "wikilink")。

当不加参数运行时，ls列出当前目录下的除隐藏文件外的所有文件和目录名。如果以目录名作为参数，则会列出该目录下的文件。用户也可以指定多个文件和目录作为参数，ls则会列出所有指定的文件和目录中的文件名。

以 "."（圆点）开头的目录在一般情况下不会被列出。用户可以加 -a 选项查看所有文件。

不加参数时，ls仅仅列出文件和目录的名称，不加任何修饰。这通常让人很难区分文件的类型、大小、[权限等属性](../Page/文件操作权限.md "wikilink")。显示文件常用信息的一些参数如下：

  - \-l（long）长格式，显示文件类型、权限、[硬链接的数目](../Page/硬链接.md "wikilink")、文件拥有者、文件所在的[组](../Page/组_\(计算机\).md "wikilink")、大小、日期和文件名。
  - \-F
    在不同类型的文件的文件名结尾追加一个字符以示区别。可执行文件后加"\*"，目录后加"/"，管道文件后加"|"，套接字文件后加"="，普通文件没有后缀。
  - \-a（all）显示所有文件，包括以 . 开头的文件名（默认不显示）。
  - \-R（recursive）迭代显示目录下所有的子目录。ls -R／会显示文件系统中的所有文件。
  - \-d（directory）显示目录本身的信息，而不是列出目录下的文件。

在某些环境下，使用参数"--color"（[GNU版](../Page/GNU.md "wikilink")）或者"-G"（[FreeBSD版](../Page/FreeBSD.md "wikilink")）后，ls会根据文件类型输出不同色彩的格式。GNU版的ls根据文件的类型、[扩展名和使用权限来决定颜色](../Page/扩展名.md "wikilink")，而FreeBSD版的ls仅仅检查文件类型和使用权限。

使用上述彩色选项时，输出示例如下：

<strong style="line-height: 1"><span style="background:#000000; color:#c0c0c0">` brw-r--r--    1 unixguy staff 64,  64 Jan 27 05:52 `<span style="color:yellow     ">`block         `</span>
` crw-r--r--    1 unixguy staff 64, 255 Jan 26 13:57 `<span style="color:#ffff00    ">`character     `</span>
` -rw-r--r--    1 unixguy staff     290 Jan 26 14:08 `<span style="color:#ff0000    ">`compressed.gz `</span>
` -rw-r--r--    1 unixguy staff  331836 Jan 26 14:06 `<span style="color:#ff00ff    ">`data.ppm      `</span>
` drwxrwx--x    2 unixguy staff      48 Jan 26 11:28 `<span style="color:#0000ff    ">`directory     `</span>
` -rwxrwx--x    1 unixguy staff      29 Jan 26 14:03 `<span style="color:#00ff00    ">`executable    `</span>
` prw-r--r--    1 unixguy staff       0 Jan 26 11:50 `<span style="color:#ffffaa    ">`fifo          `</span>
` lrwxrwxrwx    1 unixguy staff       3 Jan 26 11:44 `<span style="color:#00ffff    ">`link`</span>` -> `<span style="color:blue">`dir   `</span>
` -rw-rw----    1 unixguy staff     217 Jan 26 14:08 regularfile   `</span></strong>

ls有大量的选项，具体的用法请参考ls的[手册页](../Page/手册页.md "wikilink")。

## 示例

下面的例子演示了不同参数下ls的使用。

`$ `**`pwd`**
`/home/unixguy`
`$ `**`ls``   ``-l`**
`drwxr--r--   1 unixguy  editors   4096  drafts`
`-rw-r--r--   1 unixguy  editors  30405  edition-32`
`-r-xr-xr-x   1 unixguy  users     8460  edit`
`$ `**`ls``   ``-F`**
`drafts/`
`edition-32`
`edit*`

本例中，用户unixguy有一个名叫drafts的目录，一个叫做edition-32的常规文件和一个叫做edit的可执行文件。

## 参看

  - [chown](../Page/chown.md "wikilink")：改变文件的拥有者。
  - [chgrp](../Page/chgrp.md "wikilink")：改变文件的组
  - [du](../Page/du.md "wikilink")：查看文件的大小。
  - [用户标识符](../Page/用户标识符.md "wikilink")
  - [组标识符](../Page/组标识符.md "wikilink")
  - [Dir (命令)](../Page/Dir_\(命令\).md "wikilink")：DOS下列出文件的命令。

## 外部链接

  - LinuxQustion.org
    [wiki上的](../Page/wiki.md "wikilink")[ls](http://wiki.linuxquestions.org/wiki/Ls)
  - [ls.c](http://minnie.tuhs.org/UnixTree/V7/usr/src/cmd/ls.c.html)
    第七版Unix中ls的源代码
  - [ls.c](http://minnie.tuhs.org/UnixTree/V5/usr/source/s1/ls.c.html)
    AT\&T第五版Unix中ls的源代码
  - [newbie
    ls](https://web.archive.org/web/20070529063634/http://www.codecrazy.net/newbie-ls-program.html)
    简明版ls的源代码
  - [GNU[核心程序版的](../Page/GNU核心程序.md "wikilink")`ls`源代码](http://ftp.gnu.org/pub/gnu/coreutils/)
  - [单一Unix标准规定的](../Page/单一Unix标准.md "wikilink")[ls标准](http://www.opengroup.org/onlinepubs/009695399/utilities/ls.html)
  - [Computer Hope: Linux / UNIX, Information about the Linux / UNIX
    `ls`
    command.](https://web.archive.org/web/20070308050639/http://www.xmission.com/~comphope/unix/uls.htm)
  - linux-command.com
    [wiki上的](../Page/wiki.md "wikilink")[ls命令介绍](https://web.archive.org/web/20070319211434/http://www.linux-command.com/ls.html)

### 文档

  - [GNU版](../Page/GNU.md "wikilink")[ls文档](https://web.archive.org/web/20070329001344/http://www.gnu.org/software/coreutils/manual/html_chapter/coreutils_10.html#SEC52)

[Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink")