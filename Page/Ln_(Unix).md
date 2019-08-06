**`ln`** 是一个用于创建链接文件的[标准 Unix 命令](../Page/Unix实用程序列表.md "wikilink")。

## 链接文件

通过链接文件，不同的文件名可以指向同一个文件。

`ln` 可以创建两种类型的链接文件：

1.  [符号链接](../Page/符号链接.md "wikilink")，也称软链接，这是指向另一个不同路径文件的一个符号路径。
2.  [硬链接](https://zh.wikipedia.org/wiki/硬链接 "wikilink")，这是一个存储了链接建立时它所指向文件的实际数据的文件副本。

从以下命令示例可看出两种链接文件的区别：

``` bash
$ echo '文件内容' > oringinal.file
$ ln oringinal.file hardlink.file
$ ln -s oringinal.file softlink.file
$ cat softlink.file
文件内容
$ rm oringinal.file
$ cat softlink.file
cat: softlink.file: 没有那个文件或目录
$ cat hardlink.file
文件内容
```

原始文件被删除后，符号链接将失效，访问软链接时，会提示找不到文件，但硬链接文件还在，而且还保存有原始文件的内容。

## 规范

[单一Unix规范](https://zh.wikipedia.org/wiki/单一Unix规范 "wikilink")（SUS）规定了创建一个原始文件（或目录）的链接（不管是符号链接还是硬链接）文件时的行为。

`ln` 可以用两种方式使用。第一种，是第一个参数指定原始文件，第二个参数指定链接文件；第二种，指定多于两个选项，应该先是多个原始文件（或目录），最后指定一个目录，所有原始文件（或目录）的链接将会被创建于最后指定的目录里。在后一种方式中，ln 命令的行为和具体的程序实现有关。

`ln` 和标准的 `unlink()` 和 `link()` 函数执行完全一致的操作，详细的 `ln` 命令用法，可以执行以下两个命令查询：

``` bash
 $ man ln
 $ ln --help
```

## 参见

  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [NTFS junction point](https://zh.wikipedia.org/wiki/NTFS_junction_point "wikilink")

## 外部链接

  - 单一 Unix 规范里的 [ln](http://www.opengroup.org/onlinepubs/009695399/utilities/ln.html) 命令
  - [ln](http://en.wikibooks.org/wiki/Guide_to_Unix/Commands/File_System_Utilities#ln) 命令简要指南

### 手册页

  - [GNU](../Page/GNU.md "wikilink") 网站上的 [ln](http://www.gnu.org/software/coreutils/manual/html_node/ln-invocation.html) 手册页
  - [OpenBSD](../Page/OpenBSD.md "wikilink") 网站上的 [ln](http://www.openbsd.org/cgi-bin/man.cgi?query=ln) 手册页

{{-}}

[Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink") [Category:Unix_SUS2008实用程序](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用程序 "wikilink")