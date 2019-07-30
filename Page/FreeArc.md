**FreeArc**是一个[自由](../Page/自由软件.md "wikilink")、[开源的](../Page/开源软件.md "wikilink")。Beta版0.666于2010年发布。后续版本“FreeArc Next”处在开发阶段，0.11版本已于2016年10月发布。\[1\]“Next”版本提供32位和64位版本，适用于[Windows和](https://zh.wikipedia.org/wiki/Windows "wikilink")[Linux](../Page/Linux.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")，并包含[Zstandard](../Page/Zstandard.md "wikilink")支持。\[2\]

## 算法

FreeArc按文件类型自动使用[LZMA](../Page/LZMA.md "wikilink")、、[TrueAudio](../Page/TTA.md "wikilink")、Tornado和算法。它还使用多种过滤器来进一步改进压缩率，包括REP（找到间隔高达1GB的副本）、DICT（对文本的字典取代）、DELTA（改进二进制数据表的压缩）、BCJ（可执行文件与处理器）和LZP（去除文本中的副本）。

## 基准测试

### 归档文件大小

在2010年“[Tom's 硬體指南](../Page/Tom's_硬體指南.md "wikilink")”比较各流行的归档工具时，FreeArc几近超越[WinZip](../Page/WinZip.md "wikilink")、[7-Zip](../Page/7-Zip.md "wikilink")和“最佳压缩”模式的[WinRAR](../Page/WinRAR.md "wikilink")。在“默认压缩”测试中它输给了7-Zip的[LZMA](../Page/LZMA.md "wikilink")2，但仍优于WinRAR和WinZip。\[3\]

### 速度

在同一次“Tom's 硬體指南”测试中，默认设置的FreeArc超过了7zip的LZMA2默认压缩，并也超过了哪怕“最佳压缩”模式的WinRAR。FreeArc在最佳设置下慢于7zip和WinRAR，但仍超越了WinZip。

### 效率

在Werner Bergmans设计的一个[最大压缩基准测试指标下](../Page/无损数据压缩.md "wikilink")，FreeArc的压缩比.Z ([LZW](../Page/LZW.md "wikilink"))、[.zip](../Page/ZIP格式.md "wikilink") ([Deflate](../Page/DEFLATE.md "wikilink"))、[.gz和](../Page/Gzip.md "wikilink")[bzip2这些经典格式更有效率](https://zh.wikipedia.org/wiki/bzip2 "wikilink")。这个非公开测试中所用的得分公式：

  -
    \(\text{score}_X = \text{time}_X \times 2^{10(\frac{\text{size}_X}{\text{size}_{\text{TOP}}} - 1)}\)

，FreeArc位居该基准测试的榜首，其次是、和WinRAR。\[4\]因此它比WinRAR和7zip更有效率。\[5\]

## 特点

类似[RAR](../Page/RAR.md "wikilink")和[ZIP格式](../Page/ZIP格式.md "wikilink")，.arc是一个文件归档格式，而不仅是一个数据压缩格式（如[gzip和](https://zh.wikipedia.org/wiki/gzip "wikilink")[bzip2](https://zh.wikipedia.org/wiki/bzip2 "wikilink")）。FreeArc有命令行界面和[GUI界面](../Page/图形用户界面.md "wikilink")。其他特点包括：

  - “智能更新”时的固态压缩尽可能避免重新压缩
  - AES/Blowfish/Twofish/Serpent加密\[6\]，包括链式加密
  - FAR和[Total Commander插件](../Page/Total_Commander.md "wikilink")
  - 可以创建[自解壓縮檔和安装器](https://zh.wikipedia.org/wiki/自解壓縮檔 "wikilink")
  - 采用[里德-所罗门码](../Page/里德-所罗门码.md "wikilink")的归档保护和恢复层，用户可定制该层大小。

## 支持的平台

截至0.666版本，开发者提供适用于Windows的[二进制文件无](https://zh.wikipedia.org/wiki/二进制文件 "wikilink")[64位元](../Page/64位元.md "wikilink")版本。\[7\]不过FreeArc Next 0.11已支持32位和64位系统。

## FreeArc Next

FreeArc Next于2016年10月发布首个版本。\[8\]截至，它只提供适用于32位和64位Windows及Linux平台的[命令行界面](../Page/命令行界面.md "wikilink")应用程序。新增特性包括：

  - 类似的完全归档去重复数据
  - [Facebook](../Page/Facebook.md "wikilink")实现的[Zstandard](../Page/Zstandard.md "wikilink")压缩算法\[9\]
  - [INI文件中进行](https://zh.wikipedia.org/wiki/INI文件 "wikilink")[Lua](../Page/Lua.md "wikilink")编程
  - 更好的文件预取以加速压缩

## 参见

  -
  - [压缩软件比较](https://zh.wikipedia.org/wiki/压缩软件比较 "wikilink")

  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")

  -
  - [LZMA](../Page/LZMA.md "wikilink")

## 参考资料

## 外部链接

  -
  - [FreeArc project at SourceForge](http://sourceforge.net/projects/freearc/develop)（已废弃）

[Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink") [Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink") [Category:文件归档器](https://zh.wikipedia.org/wiki/Category:文件归档器 "wikilink") [Category:数据压缩自由软件](https://zh.wikipedia.org/wiki/Category:数据压缩自由软件 "wikilink") [Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink") [Category:Unix归档和压缩相关实用工具](https://zh.wikipedia.org/wiki/Category:Unix归档和压缩相关实用工具 "wikilink")

1.
2.  [FA 0.11 release notes, Bulat Ziganshin](https://github.com/Bulat-Ziganshin/FA/wiki/FA-0.11-release-notes)
3.
4.
5.  , golem.de
6.  Patrick Schmid, Achim Roos, (March 10, 2010) *[7-Zip 9.1 Beta And FreeArc 0.60](http://www.tomshardware.com/reviews/archive-zip-compression,2572-3.html)*, \[//en.wikipedia.org/wiki/Tom%27s_Hardware Tom's Hardware\]
7.
8.
9.