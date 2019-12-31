> 本文内容由[Bzip2](https://zh.wikipedia.org/wiki/Bzip2)转换而来。


**bzip2**是[Julian Seward开发并按照](https://zh.wikipedia.org/wiki/Julian_Seward "wikilink")[自由软件](../Page/自由软件.md "wikilink")／[开源软件](../Page/开源软件.md "wikilink")协议发布的[数据压缩](../Page/数据压缩.md "wikilink")[算法](../Page/算法.md "wikilink")及程序。Seward在1996年7月第一次公开发布了bzip2 0.15版，在随后几年中这个压缩工具稳定性得到改善并且日渐流行，Seward在2000年晚些时候发布了1.0版。

## 压缩效率

bzip2比传统的[gzip或者](https://zh.wikipedia.org/wiki/gzip "wikilink")[ZIP的压缩效率更高](https://zh.wikipedia.org/wiki/ZIP "wikilink")，但是压缩速度较慢。从这点来说，非常类似于較新的压缩算法。与[RAR](../Page/RAR.md "wikilink")或者ZIP等其它不同的是，bzip2-{只}-是数据压缩工具，而不是归档工具，在这一点与gzip类似。程序本身不包含用于多个文件、加密或者文档切分的工具，相反按照[UNIX](../Page/UNIX.md "wikilink")的传统需要使用如[tar或者](https://zh.wikipedia.org/wiki/Tar_\(计算机科学\) "wikilink")[GnuPG](../Page/GnuPG.md "wikilink")这样的外部工具。

在有些情况下，按照绝对压缩效率来讲bzip2不如[7z](../Page/7z.md "wikilink")和RAR格式。根据[摩尔定律](../Page/摩尔定律.md "wikilink")的持续效应，计算时间越来越少并且也变得越来越不重要，所以类似的压缩方法变得越来越流行。根据作者的说法，在目前所有已知的压缩算法中，bzip2可以排到百分之十到十五这样最好的一类算法中（[PPM](https://zh.wikipedia.org/wiki/PPM压缩算法 "wikilink")），尽管它在压缩速度时大致快两倍，而解压速度有六倍快。

bzip2使用[Burrows-Wheeler transform将重复出现的字符序列转换成同样字母的字符串](https://zh.wikipedia.org/wiki/Burrows-Wheeler_transform "wikilink")，然后用[move-to-front transform进行处理](https://zh.wikipedia.org/wiki/move-to-front_transform "wikilink")，最后使用[哈夫曼编码进行压缩](https://zh.wikipedia.org/wiki/哈夫曼编码 "wikilink")。在bzip2中所有的数据块都是大小一样的纯文本数据块，它们可以用命令行变量进行选择，然后用从[π的十进制表示得到的一个任意位序列标识成压缩文本](../Page/圓周率.md "wikilink")。

起初，bzip2的前一代**bzip**在数据块排列之后使用[算术编码](../Page/算术编码.md "wikilink")进行压缩，由于软件[专利](../Page/专利.md "wikilink")的限制现在已经不再使用[算术编码](../Page/算术编码.md "wikilink")。

## 使用

在[Unix系统下](https://zh.wikipedia.org/wiki/Unix "wikilink")，bzip2可以独立使用也可以与tar一起使用。*bzip2 file*压缩文件，*bzip2 -d file.bz2*解压文件，解压也可以使用另外一个名字*bunzip2*。

bzip2的命令行标志大部分与[gzip相同](https://zh.wikipedia.org/wiki/gzip "wikilink")，所以，从tar文件解压bzip2压缩的文件可以用：

``` bash
bzcat ''archivefile''.tar.bz2 | tar -xvf -
```

生成bzip2压缩的tar文件可以使用：

``` bash
tar -cvf - ''filenames'' | bzip2 > ''archivefile''.tar.bz2
```

[GNU](../Page/GNU.md "wikilink") tar支持 -j标志，这就可以不经过管道直接生成tar.bz2File:

``` bash
tar -cvjf ''archivefile''.tar.bz2 ''file-list''
```

解压GNU tar文件可以使用：

``` bash
 tar -xvjf ''archivefile''.tar.bz2
```

## 参见

  - [归档格式列表](https://zh.wikipedia.org/wiki/归档格式列表 "wikilink")
  - [归档工具列表](https://zh.wikipedia.org/wiki/归档工具列表 "wikilink")
  - [归档工具比较](https://zh.wikipedia.org/wiki/归档工具比较 "wikilink")
  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")

## 外部链接

  - [bzip2与libbzip2主页](https://www.webcitation.org/65SvAK5k0?url=http://www.bzip.org/)
  - [用于Windows的bzip2](http://gnuwin32.sourceforge.net/packages/bzip2.htm)
  - [MacBzip2](http://persephone.cps.unizar.es/~spd/bzip2/)（for Classic [Mac OS](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")；under [Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，the standard bzip2 is available at the command line）
  - [bzip2smp](http://bzip2smp.sourceforge.net/)（用于多处理器或者多内核机器上的bzip2 [并行计算](../Page/并行计算.md "wikilink")版本）
  - [4 Parallel bzip2 Implementations](http://www.c10n.info/archives/352) at The Data Compression News Blog

## 參考來源

<references/>

[Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink") [Category:数据压缩自由软件](https://zh.wikipedia.org/wiki/Category:数据压缩自由软件 "wikilink") [Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink") [Category:Unix归档和压缩相关实用工具](https://zh.wikipedia.org/wiki/Category:Unix归档和压缩相关实用工具 "wikilink") [Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")