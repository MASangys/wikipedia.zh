> 本文内容由[LZ4](https://zh.wikipedia.org/wiki/LZ4)转换而来。


**LZ4**是一种[无损数据压缩](../Page/无损数据压缩.md "wikilink")[算法](../Page/算法.md "wikilink")，着重于压缩和解压缩速度。它属于面向字节的[LZ77压缩方案家族](../Page/LZ77与LZ78.md "wikilink")。

## 特征

该算法提供一个比[LZO算法稍差的压缩率](https://zh.wikipedia.org/wiki/LZO "wikilink")——这逊于[gzip等算法](https://zh.wikipedia.org/wiki/gzip "wikilink")。但是，它的压缩速度类似LZO——比gzip快几倍；而解压速度显著快于LZO。\[1\]

## 设计

压缩可以在流或者块中进行。在查找最佳匹配时投入更多努力可达到更高的压缩率，这样的结果是更小的输出和更快的解压缩速度。

## 实现

Yann Collet使用[C语言制成的参考实现发布在](https://zh.wikipedia.org/wiki/C语言 "wikilink")[BSD许可证](../Page/BSD许可证.md "wikilink")之下。此算法已有多种语言的[移植和](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink")[绑定](https://zh.wikipedia.org/wiki/绑定 "wikilink")，包括[Java](../Page/Java.md "wikilink")、[C\#](../Page/C♯.md "wikilink")、[Python](../Page/Python.md "wikilink")等。\[2\]像是[Hadoop等数据库使用此算法进行快速压缩](https://zh.wikipedia.org/wiki/Hadoop "wikilink")。LZ4也在[Linux内核](../Page/Linux内核.md "wikilink") 3.11中被原生实现。\[3\][ZFS](../Page/ZFS.md "wikilink")文件系统的[FreeBSD](../Page/FreeBSD.md "wikilink")、[Illumos](../Page/Illumos.md "wikilink")、ZFS on Linux，以及ZFS-OSX实现都支持LZ4算法进行即时压缩。\[4\]\[5\]\[6\]\[7\]Linux从3.19-rc1开始在[SquashFS](../Page/SquashFS.md "wikilink")中支持LZ4。\[8\]Yann Collet也在较新版的[Zstd压缩软件中实现了LZ](https://zh.wikipedia.org/wiki/Zstd "wikilink")4。

## 参考资料

## 外部链接

  -
[Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink") [Category:数据压缩自由软件](https://zh.wikipedia.org/wiki/Category:数据压缩自由软件 "wikilink") [Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.