**GnuCOBOL** （曾称**OpenCOBOL** 、**GNU Cobol** ）是[COBOL](../Page/COBOL.md "wikilink")编程语言的免费实现。最初由Keisuke Nishida设计，领导开发由Roger While负责。现在的发展是由Simon Sobisch，Sergey Kashyrin，Ron Norman，Edward Hart和其他许多人领导。\[1\]

## 历史

在Tiny COBOL上与Rildo Pragana合作时，Keisuke决定尝试使用适合与[gcc集成的COBOL](../Page/GCC.md "wikilink") 语言编译器。 这很快成为了OpenCOBOL项目。 Keisuke一直担任首席开发人员，直到2005年和版本0.31。 随后罗杰接任首席执行官并于2007年12月27日发布了OpenCOBOL 1.0。 OpenCOBOL 1.1预发布的工作一直持续到2009年2月。 2012年5月，积极开发转移到[SourceForge](../Page/SourceForge.md "wikilink") ，2009年2月的预发布被标记为发布。 \[2\] 2013年9月下旬，OpenCOBOL 语言被接受为[GNU项目](../Page/GNU計劃.md "wikilink") ，更名为GNU Cobol，最后于2014年9月更名为GnuCOBOL。 \[3\] Ron Norman添加了一个Report Writer模块作为GnuCobol 2.0的一个分支，Sergey Kashyrin开发了一个使用[C ++作为中间体的版本而不是](../Page/C++.md "wikilink")[C的版本](https://zh.wikipedia.org/wiki/C语言 "wikilink") 。 \[4\]

最新的当前版本现在是2017年9月7日发布的v2.2 Final。

通过于2015年6月17日完成GnuCOBOL 语言源代码（包括具有GNU Cobol和OpenCOBOL拼写的版本）将版权转让给[自由软件基金会](../Page/自由软件基金会.md "wikilink")。 \[5\]

## 哲学

在努力与COBOL语言标准保持一致，符合当前的COBOL 2014规范，并包含现有编译器中常见的功能时，开发人员不需要任何级别的标准一致性。 \[6\] 即便如此，2.2最终版本通过了[NIST](../Page/國家標準技術研究所.md "wikilink") COBOL 85测试套件中包含的9,688（99.79％）测试，在9,708之外 删除了20个。 \[7\]

GnuCOBOL将[COBOL 语言程序](../Page/COBOL.md "wikilink")（源代码）转换为[C程序](https://zh.wikipedia.org/wiki/C语言 "wikilink")。 然后可以将C程序编译成计算机使用的实际代码（目标代码）或其他程序可以调用（链接到）的库。 在[UNIX](../Page/UNIX.md "wikilink")和类似的操作系统（例如[Linux](../Page/Linux.md "wikilink") ）下，使用GNU C编译器。 对于[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink") ，Microsoft的Visual Studio Express包提供了C编译器。 两步编译通常由单个命令执行，但是存在一个选项，允许程序员在生成C代码后停止继续编译。 \[8\]

## 文档

opencobol.org网站是2002年至2012年开发团队的官方主页，是上游开发信息的最佳来源。 \[9\] 但是，所有最近的开发工作现在都在http://sourceforge.net/projects/open-cobol/的SourceForge项目空间内进行，此项目空间还包含最新的GnuCOBOL 语言文档和信息。

由Gary Cutler撰写的OpenCOBOL程序员指南是根据[GNU自由文档许可证](../Page/GNU自由文档许可证.md "wikilink")发布的 。 \[10\] 它已更新为包含GnuCOBOL 语言和Report Writer，并列在GnuCOBOL文档概述页面中，其中包含代码树中的最新版本。 \[11\]

## 示例程序

### 历史

``` cobol
000100* HELLO.COB GnuCOBOL example
000200 IDENTIFICATION DIVISION.
000300 PROGRAM-ID. hello.
000400 PROCEDURE DIVISION.
000500   DISPLAY "Hello, world!".
000600   STOP RUN.
```

编译和执行：

``` console
$ cobc -x HELLO.COB
$ ./HELLO
Hello, world!
```

### 现代，免费格式

``` cobolfree
*> GnuCOBOL Hello World example
identification division.
program-id. hello.
procedure division.
display "Hello, world!"
end-display.
goback.
```

编译和执行：

``` console

$ cobc -x -free hello.cob
$ ./hello
Hello, world!
```

### 最短

使用GnuCOBOL 2.0中的松散语法选项，最短的有效COBOL程序是一个空白文件。 编译和执行：

``` console

$ cobc -x -frelax-syntax ./empty.cob
./empty.cob: 1: Warning: PROGRAM-ID header missing - assumed
$ ./empty
$
```

对于早期版本和轻松的语法：

``` cobolfree
display"Hello, world!".
```

编译和执行：

``` console

$ cobc -x -frelax-syntax -free hello.cob
hello.cob: 1: Warning: PROGRAM-ID header missing - assumed
hello.cob: 1: Warning: PROCEDURE DIVISION header missing - assumed
$ ./hello
Hello, world!
```

没有宽松的语法和任何版本的GnuCOBOL，GNU Cobol或OpenCOBOL。 （注意，有7个前导空格符合FIXED布局COBOL源）：

``` cobol
    program-id.h.procedure division.display "Hello, world!".
```

编译没有错误：

``` console

$ cobc -x smallest.cob
$ ./smallest
Hello, world!
```

*请注意，这些琐事列表不应被视为良好的COBOL表格; COBOL 语言旨在成为一种可读的英语编程语言。*

## 履行

解析器和词法扫描器使用[Bison和](https://zh.wikipedia.org/wiki/GNU_bison "wikilink")[Flex](https://zh.wikipedia.org/wiki/Flex詞法分析器 "wikilink") 。 [GPL许可编译器和](../Page/GNU通用公共许可证.md "wikilink")[LGPL许可的运行时库是用](../Page/GNU宽通用公共许可证.md "wikilink")[C语言编写的](https://zh.wikipedia.org/wiki/C语言 "wikilink")，并使用C [ABI进行外部程序链接](../Page/应用二进制接口.md "wikilink")。

构建包装使用[GNU Build System](https://zh.wikipedia.org/wiki/GNU构建系统 "wikilink") 。 使用`make check进行`标准测试使用[需要指定 Autoconf](../Page/Autoconf.md "wikilink") ，通过`make test`运行的ANSI85测试套件使用[Perl](../Page/Perl.md "wikilink")脚本。

设置GnuCOBOL编译的[configure脚本具有以下选项](https://zh.wikipedia.org/wiki/Configure_script "wikilink")：

  - 选择C编译器及其后期翻译编译选项
  - 用于[ISAM支持的数据库管理系统](https://zh.wikipedia.org/wiki/ISAM "wikilink")
  - 包含iconv

## 可用性

  - SourceForge发布1.0版。 \[12\]
  - 1.1从SourceForge发布\[13\]
  - 来自SourceForge的2.0开发版本\[14\]
  - open-cobol [Debian](../Page/Debian.md "wikilink")包。 \[15\]
  - 2.2最终，2017年9月7日从SourceForge发布\[16\]
  - 2.2源自SourceForge代码树的2017年9月发布的文档。

## 参考

## 外部链接

  - [GNU站点，GnuCOBOL的官方发行版](http://ftp.gnu.org/gnu/gnucobol/)

  -
  - [日本开源COBOL联盟](http://www.osscons.jp/osscobol)

  - [GnuCOBOL常见问题](http://opencobol.add1tocobol.com/gnucobol)

  - [添加1ToCOBOL开源Cobol和OpenCOBOL宣传网站](http://add1tocobol.com)

  -
  - [新的COBOL 语言用户组](http://newcobug.com)

[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink") [Category:自由編譯器與直譯器](https://zh.wikipedia.org/wiki/Category:自由編譯器與直譯器 "wikilink") [Category:编译器软件](https://zh.wikipedia.org/wiki/Category:编译器软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13. [GnuCOBOL downloads at SourceForge](https://zh.wikipedia.org/wiki/sourceforge:projects/open-cobol/files/gnu-cobol/1.1 "wikilink")
14. [GnuCOBOL downloads at SourceForge](https://zh.wikipedia.org/wiki/sourceforge:projects/open-cobol/files/gnu-cobol/2.0 "wikilink")
15. [Debian package details](http://packages.debian.org/stable/open-cobol)
16. [GnuCOBOL downloads at SourceForge](https://zh.wikipedia.org/wiki/sourceforge:projects/open-cobol/files/gnu-cobol/2.2 "wikilink")