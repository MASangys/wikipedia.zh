**LZ4**是一种[无损数据压缩](../Page/无损数据压缩.md "wikilink")[算法](../Page/算法.md "wikilink")，着重于压缩和解压缩速度。它属于面向字节的[LZ77压缩方案家族](../Page/LZ77与LZ78.md "wikilink")。

## 特征

该算法提供一个比[LZO算法稍差的压缩率](../Page/LZO.md "wikilink")——这逊于[gzip等算法](../Page/gzip.md "wikilink")。但是，它的压缩速度类似LZO——比gzip快几倍；而解压速度显著快于LZO。\[1\]

## 设计

压缩可以在流或者块中进行。在查找最佳匹配时投入更多努力可达到更高的压缩率，这样的结果是更小的输出和更快的解压缩速度。

## 实现

Yann
Collet使用[C语言制成的参考实现发布在](../Page/C语言.md "wikilink")[BSD许可证之下](../Page/BSD许可证.md "wikilink")。此算法已有多种语言的[移植和](../Page/移植_\(軟體\).md "wikilink")[绑定](../Page/绑定.md "wikilink")，包括[Java](../Page/Java.md "wikilink")、[C\#](../Page/C♯.md "wikilink")、[Python等](../Page/Python.md "wikilink")。\[2\]像是[Hadoop等数据库使用此算法进行快速压缩](../Page/Hadoop.md "wikilink")。LZ4也在[Linux内核](../Page/Linux内核.md "wikilink")
3.11中被原生实现。\[3\][ZFS文件系统的](../Page/ZFS.md "wikilink")[FreeBSD](../Page/FreeBSD.md "wikilink")、[Illumos](../Page/Illumos.md "wikilink")、ZFS
on
Linux，以及ZFS-OSX实现都支持LZ4算法进行即时压缩。\[4\]\[5\]\[6\]\[7\]Linux从3.19-rc1开始在[SquashFS中支持LZ](../Page/SquashFS.md "wikilink")4。\[8\]Yann
Collet也在较新版的[Zstd压缩软件中实现了LZ](../Page/Zstd.md "wikilink")4。

## 参考资料

## 外部链接

  -
[Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink")
[Category:数据压缩自由软件](https://zh.wikipedia.org/wiki/Category:数据压缩自由软件 "wikilink")
[Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.