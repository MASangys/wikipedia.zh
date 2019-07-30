**LZMA**（[Lempel](https://zh.wikipedia.org/wiki/Abraham_Lempel "wikilink")-[Ziv](https://zh.wikipedia.org/wiki/Jacob_Ziv "wikilink")-[Markov chain](../Page/马尔可夫链.md "wikilink")-[Algorithm的缩写](../Page/算法.md "wikilink")）是2001年以来得到发展的一个[数据压缩](../Page/数据压缩.md "wikilink")算法，它用于[7-Zip](../Page/7-Zip.md "wikilink")归档工具中的[7z](../Page/7z.md "wikilink")格式和 [Unix-like](https://zh.wikipedia.org/wiki/Unix-like "wikilink") 下的 [xz](https://zh.wikipedia.org/wiki/xz "wikilink") 格式。它使用类似于[LZ77的](../Page/LZ77与LZ78.md "wikilink")[字典编码机制](https://zh.wikipedia.org/wiki/字典编码 "wikilink")，在一般的情況下壓縮率比[bzip2為高](https://zh.wikipedia.org/wiki/bzip2 "wikilink")，用於壓縮的字典檔案大小可達4GB。

[C++](../Page/C++.md "wikilink")语言写成的LZMA[开放源码压缩库使用了](https://zh.wikipedia.org/wiki/开放源码 "wikilink")[区间编码](../Page/区间编码.md "wikilink")支持的[LZ77改进压缩算法以及特殊的用于二进制的预处理程序](../Page/LZ77与LZ78.md "wikilink")。LZMA 对数据流、重复序列大小以及重续序列位置单独进行了压缩。LZMA支持几种[散列链变体](https://zh.wikipedia.org/wiki/散列链 "wikilink")、[二叉树](../Page/二叉树.md "wikilink")以及[基数树作为它的字典查找算法基础](https://zh.wikipedia.org/wiki/基数树 "wikilink")。

## 特性

### BCJ / BCJ2二进制文件压缩

BCJ / BCJ2压缩工具所附带的LZMA SDK包括：在[X86](../Page/X86.md "wikilink")、[ARM](https://zh.wikipedia.org/wiki/ARM "wikilink")、[PowerPC](../Page/PowerPC.md "wikilink")、[IA-64以及](https://zh.wikipedia.org/wiki/IA-64 "wikilink")[ARM Thumb处理器上在压缩之前跳转目标进行归一化处理](https://zh.wikipedia.org/wiki/ARM#Thumb "wikilink")。对于x86平台来说，这是一个近跳转、近调用以及近条件跳转需要从“向后跳1665字节”这样的机器语言归一化到“跳转到5554”这样的格式，但是短跳转及短条件跳转不需要进行这样的处理。

BCJ与BCJ2之间的区别在于前者只将近跳转及近调用目标地址转换到归一化的形式，而BCJ2只将x86平台下的近跳转、近调用及条件近跳转目标分别进行压缩。

## 实现和可移植性

一些[Windows作業系統专有的特性深深嵌入在原始程序中](https://zh.wikipedia.org/wiki/Windows作業系統 "wikilink")，使得最初很难生成一个与[Unix等系统兼容的版本](https://zh.wikipedia.org/wiki/Unix "wikilink")。然而，LZMA 由于其[开放源码特性](https://zh.wikipedia.org/wiki/开放源码 "wikilink")，仍然最终获得了各种平台的实现：

### 7-Zip/p7zip 参考实现

在[GNU通用公共許可證下發佈的](https://zh.wikipedia.org/wiki/GPL "wikilink") 7-zip 參考版本有以下幾個特點：

  - 高壓縮比
  - 解壓縮程式碼較小：約5 KB
  - 解壓縮時僅需少量記憶體（取決於字典大小）
  - 解壓縮速度：在一部2GHz的處理器上運行，約可達10-20MB每秒的速度。
  - 支援在[多核心系统上](https://zh.wikipedia.org/wiki/多核心 "wikilink")[多執行緒运行](https://zh.wikipedia.org/wiki/多執行緒 "wikilink")（包括[超執行緒](../Page/超執行緒.md "wikilink")）。

这个特点使得这个这个算法的解压过程非常适合于[嵌入式系统](../Page/嵌入式系统.md "wikilink")应用的场合。p7zip 为 [7-zip](https://zh.wikipedia.org/wiki/7-zip "wikilink") 的 POSIX 系统移植。

### xz 和 LZMA Unix Port

LZMA Unix Port 是一个只移植了 7-zip 中 LZMA 压缩代码的版本，内含命令行参数类似于 [gzip](https://zh.wikipedia.org/wiki/gzip "wikilink") 的基于数据流的压缩工具。它不是一个归档工具，而只是一个普通的压缩工具，并且由于它在没有数据头中没有未压缩文件大小的UInt64变量，所以它与7-zip生成的LZMA数据流中不同。[7-zip使用一种更加灵活的归档格式](https://zh.wikipedia.org/wiki/7-zip "wikilink")[7z](../Page/7z.md "wikilink")，因此不能被此工具解压。

后来类似的 xz 替代了 LZMA Unix Port，提供了更好的压缩功能，并最终以其优异的性能和压缩比\[1\]成为了不少开源软件（例如 [Linux](../Page/Linux.md "wikilink") 内核源码、[Debian](../Page/Debian.md "wikilink") deb\[2\] 和 [Fedora](../Page/Fedora.md "wikilink") rpm）的压缩方式之一，甚至是默认压缩方式。xz 命令行程序曾有过一个名为 pxz 的分支，提供多线程压缩功能，后来 xz 在 5.2 时本身就直接提供多线程了。

### lzip

Lzip 是另一个 [Unix-like](https://zh.wikipedia.org/wiki/Unix-like "wikilink") 系统下的 LZMA 压缩格式，其主要目的之一就是和 xz 竞争。与 xz 相比，它的最大亮点在于提供更简单的文件格式和因此得来的更方便的数据恢复\[3\]\[4\]。Lzip 的格式如此简单以至于其文档中就存在一个解压器实现，于是未来的数据考古学家即使在[量子计算机](../Page/量子计算机.md "wikilink")使得 LZMA 无用多时之后只靠文档也能成功解压文件。

## 应用

使用或者支持LZMA的软件有：

  - [Nullsoft Scriptable Install System](https://zh.wikipedia.org/wiki/Nullsoft_Scriptable_Install_System "wikilink")
  - [Inno Setup](https://zh.wikipedia.org/wiki/Inno_Setup "wikilink")
  - [Linux](../Page/Linux.md "wikilink") 内核（[cramfs](https://zh.wikipedia.org/wiki/cramfs "wikilink")、[SquashFS](../Page/SquashFS.md "wikilink")、[initrd](https://zh.wikipedia.org/wiki/initrd "wikilink") 等）、[GRUB](https://zh.wikipedia.org/wiki/GRUB "wikilink")
  - [lrzip](http://ck.kolivas.org/apps/lrzip/)（"long range zip", or "LZMA [rzip](https://zh.wikipedia.org/wiki/rzip "wikilink")"）
  - [PyLZMA](http://www.joachim-bauch.de/projects/python/pylzma)，Igor Pavlov的LZMA SDK的[Python](../Page/Python.md "wikilink")语言接口
  - [FreeArc](http://freearc.narod.ru/)，归档工具及LZMA SDK的[Haskell](../Page/Haskell.md "wikilink")语言接口
  - 用于[Pascal语言的](https://zh.wikipedia.org/wiki/Pascal "wikilink")[LZMA SDK](http://www.birtles.org.uk/programming/)
  - [7-Zip](../Page/7-Zip.md "wikilink")
  - [osu\!](https://zh.wikipedia.org/wiki/osu! "wikilink")(用於紀錄玩家遊玩之游標記錄檔，[osu\!將游標移動資訊](https://zh.wikipedia.org/wiki/osu! "wikilink")，以[LZMA](../Page/LZMA.md "wikilink")壓縮成檔案。)

## 压缩格式表示

LZMA的压缩输出流是一个比特流，采用自适应二进制行程编码器（adaptive binary range coder）。比特流划分为包（packet），每个包或者表示一个字节的被压缩数据，或者如同LZ77的压缩输出序列那样的长度与距离的对（pair）。每个包得每个部分作为独立的上下文（context），从而对每个比特的概率预测仅相关于前一个包的同类型比特值。

有7类包：\[5\]

| 包的比特序列           | 包名           | 描述                            |
| ---------------- | ------------ | ----------------------------- |
| 0 + byteCode     | LIT          | 单个字节，采用自适应二进制行程编码器。           |
| 1+0 + len + dist | MATCH        | 一个典型的LZ77序列使用长度与距离。           |
| 1+1+0+0          | SHORTREP     | 单个字节的LZ77序列。距离等于上个LZ77包使用的距离。 |
| 1+1+0+1 + len    | LONGREP\[0\] | 单个LZ77序列。距离等于上个LZ77包使用的距离。    |
| 1+1+1+0 + len    | LONGREP\[1\] | 单个LZ77序列。距离等于倒数第二个LZ77包使用的距离。 |
| 1+1+1+1+0 + len  | LONGREP\[2\] | 单个LZ77序列。距离等于倒数第三个LZ77包使用的距离。 |
| 1+1+1+1+1 + len  | LONGREP\[3\] | 单个LZ77序列。距离等于倒数第四个LZ77包使用的距离。 |

LONGREP\[\*\] 表示LONGREP\[0-3\]四种包, \*REP指称LONGREP 与SHORTREP, \*MATCH指称MATCH或\*REP.

LONGREP\[n\]包删除了对距离的直接表示，而是使用包序列最近四个距离。

包的长度部分表示如下：

| 长度比特序列      | 描述                  |
| ----------- | ------------------- |
| 0+ 3 bits   | 长度用3比特编码，表示 2 到 9.  |
| 1+0+ 3 bits | 长度用3比特编码，表示 10到17.  |
| 1+1+ 8 bits | 长度用8比特编码，表示 18到273. |

如同LZ77, 长度不一定要小于距离。

距离在逻辑上是32比特，距离0表示最近增加到词典的那个字节。

距离的编码以6比特"distance slot"开始，由此可知后面跟着多少比特来补全。这是可变长编码。 距离解码后为比特流，从最显著位到最不显著位。distance slots 0−3直接编码了0−3.

| 6-bit distance slot | Highest 2 bits | Fixed 0.5 probability bits | 跟随的比特位数 |
| ------------------- | -------------- | -------------------------- | ------- |
| 0                   | 00             | 0                          | 0       |
| 1                   | 01             | 0                          | 0       |
| 2                   | 10             | 0                          | 0       |
| 3                   | 11             | 0                          | 0       |
| 4                   | 10             | 0                          | 1       |
| 5                   | 11             | 0                          | 1       |
| 6                   | 10             | 0                          | 2       |
| 7                   | 11             | 0                          | 2       |
| 8                   | 10             | 0                          | 3       |
| 9                   | 11             | 0                          | 3       |
| 10                  | 10             | 0                          | 4       |
| 11                  | 11             | 0                          | 4       |
| 12                  | 10             | 0                          | 5       |
| 13                  | 11             | 0                          | 5       |
| 14–62 (even)        | 10             | ((slot / 2) − 5)           | 4       |
| 15–63 (odd)         | 11             | (((slot − 1) / 2) − 5)     | 4       |

## 解压缩算法描述

依据嵌入到Linux kernel的 [XZ解码算法源文件](../Page/Xz.md "wikilink")\[6\]。

## 參考資料

## 外部链接

  - [7-Zip Official Web-Site](http://www.7-zip.org/)
  - [LZMA SDK](http://www.7-zip.org/sdk.html)
  - [p7zip Unix port of command-line utilities](http://sourceforge.net/projects/p7zip/)
  - [PyLZMA Python Wrapper](http://www.joachim-bauch.de/projects/python/pylzma)
  - [Nullsoft Installer uses LZMA](http://nsis.sourceforge.net/)
  - [Inno Setup supports LZMA](http://www.jrsoftware.org/isinfo.php)
  - [Compress home page](https://web.archive.org/web/20060903100509/http://www.fromconcentratesoftware.com/Compress/)
  - [LZMA support for cramfs filesystem](http://babel.ls.fi.upm.es/~aacosta/twiki/bin/view/Projects/CramfsPatches)（dead）
  - [LZMA utils](http://tukaani.org/lzma/)
  - [FreeArc archiver and Haskell interface to the LZMA library](http://freearc.narod.ru/)
  - [at least one perl interface to LZMA library has been published](http://search.cpan.org/search?query=lzma)
  - [Pascal port of the LZMA SDK](http://www.birtles.org.uk/programming/)

[Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink")

1.
2.
3.
4.
5.  [the source of LZMA SDK](http://7-zip.org/sdk.html)
6.