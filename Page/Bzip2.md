**bzip2**是[Julian
Seward开发并按照](../Page/Julian_Seward.md "wikilink")[自由软件](../Page/自由软件.md "wikilink")／[开源软件协议发布的](../Page/开源软件.md "wikilink")[数据压缩](../Page/数据压缩.md "wikilink")[算法及程序](../Page/算法.md "wikilink")。Seward在1996年7月第一次公开发布了bzip2
0.15版，在随后几年中这个压缩工具稳定性得到改善并且日渐流行，Seward在2000年晚些时候发布了1.0版。

## 压缩效率

bzip2比传统的[gzip或者](../Page/gzip.md "wikilink")[ZIP的压缩效率更高](../Page/ZIP.md "wikilink")，但是压缩速度较慢。从这点来说，非常类似于較新的压缩算法。与[RAR或者ZIP等其它不同的是](../Page/RAR.md "wikilink")，bzip2-{只}-是数据压缩工具，而不是归档工具，在这一点与gzip类似。程序本身不包含用于多个文件、加密或者文档切分的工具，相反按照[UNIX的传统需要使用如](../Page/UNIX.md "wikilink")[tar或者](../Page/Tar_\(计算机科学\).md "wikilink")[GnuPG这样的外部工具](../Page/GnuPG.md "wikilink")。

在有些情况下，按照绝对压缩效率来讲bzip2不如[7z和RAR格式](../Page/7z.md "wikilink")。根据[摩尔定律的持续效应](../Page/摩尔定律.md "wikilink")，计算时间越来越少并且也变得越来越不重要，所以类似的压缩方法变得越来越流行。根据作者的说法，在目前所有已知的压缩算法中，bzip2可以排到百分之十到十五这样最好的一类算法中（[PPM](../Page/PPM压缩算法.md "wikilink")），尽管它在压缩速度时大致快两倍，而解压速度有六倍快。

bzip2使用[Burrows-Wheeler
transform将重复出现的字符序列转换成同样字母的字符串](../Page/Burrows-Wheeler_transform.md "wikilink")，然后用[move-to-front
transform进行处理](../Page/move-to-front_transform.md "wikilink")，最后使用[哈夫曼编码进行压缩](../Page/哈夫曼编码.md "wikilink")。在bzip2中所有的数据块都是大小一样的纯文本数据块，它们可以用命令行变量进行选择，然后用从[π的十进制表示得到的一个任意位序列标识成压缩文本](../Page/圓周率.md "wikilink")。

起初，bzip2的前一代**bzip**在数据块排列之后使用[算术编码进行压缩](../Page/算术编码.md "wikilink")，由于软件[专利的限制现在已经不再使用](../Page/专利.md "wikilink")[算术编码](../Page/算术编码.md "wikilink")。

## 使用

在[Unix系统下](../Page/Unix.md "wikilink")，bzip2可以独立使用也可以与tar一起使用。*bzip2
file*压缩文件，*bzip2 -d file.bz2*解压文件，解压也可以使用另外一个名字*bunzip2*。

bzip2的命令行标志大部分与[gzip相同](../Page/gzip.md "wikilink")，所以，从tar文件解压bzip2压缩的文件可以用：

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

  - [归档格式列表](../Page/归档格式列表.md "wikilink")
  - [归档工具列表](../Page/归档工具列表.md "wikilink")
  - [归档工具比较](../Page/归档工具比较.md "wikilink")
  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")

## 外部链接

  - [bzip2与libbzip2主页](https://www.webcitation.org/65SvAK5k0?url=http://www.bzip.org/)
  - [用于Windows的bzip2](http://gnuwin32.sourceforge.net/packages/bzip2.htm)
  - [MacBzip2](http://persephone.cps.unizar.es/~spd/bzip2/)（for Classic
    [Mac OS](../Page/Mac_OS.md "wikilink")；under [Mac OS
    X](../Page/Mac_OS_X.md "wikilink")，the standard bzip2 is available
    at the command line）
  - [bzip2smp](http://bzip2smp.sourceforge.net/)（用于多处理器或者多内核机器上的bzip2
    [并行计算版本](../Page/并行计算.md "wikilink")）
  - [4 Parallel bzip2
    Implementations](http://www.c10n.info/archives/352) at The Data
    Compression News Blog

## 參考來源

<references/>

[Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink")
[Category:数据压缩自由软件](https://zh.wikipedia.org/wiki/Category:数据压缩自由软件 "wikilink")
[Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink")
[Category:Unix归档和压缩相关实用工具](https://zh.wikipedia.org/wiki/Category:Unix归档和压缩相关实用工具 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")