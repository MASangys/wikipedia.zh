**iconv**\[1\]是一个计算机程序\[2\]以及一套[应用程序编程接口](https://zh.wikipedia.org/wiki/应用程序编程接口 "wikilink")\[3\]的名称。它的作用是在多种国际编码格式之间进行文本内码的转换。支持的内码包括：

  - [Unicode相关编码](https://zh.wikipedia.org/wiki/Unicode "wikilink")，如[UTF-8](../Page/UTF-8.md "wikilink")、[UTF-16等等](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")
  - 各国采用的ANSI编码，其中包括GB2312、BIG5等中文编码方式。

作为应用程序的iconv采用命令行界面，允许将某种特定编码的文件转换为另一种编码。

## 用法

文件`infile`从GB18030编码转换至UTF-8编码并写入到文件`outfile`中：

``` bash
iconv -f GB18030 -t utf-8 < infile > outfile
```

[PHP](http://www.php.net/manual/zh/book.iconv.php)语言对iconv封装了3个函数：

  - iconv_open函数用于初始化用于转换的内部缓冲区，需要指明需要从何种编码方式转换到哪一种。
  - iconv函数进行实际的转换，需要给出两个间接缓冲区指针和剩余字节数指针。该函数需要更新所有相关信息，因此将不可改写的指针传递给iconv是错误的。
  - iconv_close函数释放iconv_open函数的缓冲区。

iconv基于[GPL公开源代码](https://zh.wikipedia.org/wiki/GPL "wikilink")，是[GNU项目的一部分](../Page/GNU.md "wikilink")。在各种[UNIX操作系统下均可使用](../Page/UNIX.md "wikilink")，而在[Windows系统](https://zh.wikipedia.org/wiki/Windows "wikilink")，需要特殊的环境如[cygwin或者](https://zh.wikipedia.org/wiki/cygwin "wikilink")[GnuWin32等软件平台下方可使用](https://zh.wikipedia.org/wiki/GnuWin32 "wikilink")。现在在[SourceForge上也有运行于Windows系统的](../Page/SourceForge.md "wikilink")，需要同时安装[gettext程序](https://zh.wikipedia.org/wiki/gettext "wikilink")。

目前，libiconv已经包含在C运行时刻库`libc.so`中。因此，Linux平台上使用iconv库函数的程序，需要包含\<iconv.h\>，但链接时不需要引入libiconv库了。

## 参考文献

## 外部链接

  - <http://gettext.sourceforge.net/>

{{-}}

[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")
[Category:GNU](https://zh.wikipedia.org/wiki/Category:GNU "wikilink")

1.
2.
3.