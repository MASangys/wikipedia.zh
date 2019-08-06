**zram**（也称为zRAM，先前称为**compcache**）是[Linux核心的一项功能](../Page/Linux内核.md "wikilink")，可提供[虚拟内存压缩](https://zh.wikipedia.org/wiki/虚拟内存压缩 "wikilink")。zram通过在[RAM内的压缩](../Page/随机存取存储器.md "wikilink")[块设备上分页](https://zh.wikipedia.org/wiki/块设备 "wikilink")，直到必须使用[硬盘](../Page/硬盘.md "wikilink")上的[交换空间](https://zh.wikipedia.org/wiki/Linux_swap "wikilink")，以避免在磁盘上进行分页，从而提高性能。由于zram可以用内存替代硬盘为系统提供交换空间的功能，zram可以在需要交换/分页时让Linux更好利用RAM，在物理内存较少的旧电脑上尤其如此\[1\]\[2\]。

即使RAM的价格相对较低（），zram仍有利于[嵌入式设备](https://zh.wikipedia.org/wiki/嵌入式设备 "wikilink")、[上网本](../Page/上网本.md "wikilink")和其它相似的低端硬件设备。这些设备通常使用[固态存储](https://zh.wikipedia.org/wiki/固态存储 "wikilink")，它们由于其固有性质而寿命有限，因而避免以其提供交换空间可防止其迅速磨损。此外，使用zRAM还可显著降低Linux系统用于交换的[I/O](https://zh.wikipedia.org/wiki/I/O "wikilink")\[3\]\[4\]。

zram于3.14合并入[Linux内核主线](https://zh.wikipedia.org/wiki/Linux内核主线 "wikilink")，并于2014年3月30日发布\[5\]。截至发布于2014年6月8日的Linux内核3.15，zram可支持[LZ4](https://zh.wikipedia.org/wiki/LZ4_\(压缩算法\) "wikilink")[压缩算法](../Page/数据压缩.md "wikilink")，而[LZO仍然作为默认的压缩后端](https://zh.wikipedia.org/wiki/LZO "wikilink")。内核3.15中的修改还改进了性能，以及经由[sysfs切换压缩算法的能力](https://zh.wikipedia.org/wiki/sysfs "wikilink")\[6\]。

Google在[Chrome OS中使用zram](../Page/Chrome_OS.md "wikilink")，它也成为了[Android](../Page/Android.md "wikilink") 4.4设备的一个选项\[7\]\[8\]。此外，[Lubuntu](../Page/Lubuntu.md "wikilink")于13.10开始使用zram\[9\]。，Ubuntu考虑为小内存的计算机默认启用zram\[10\]。

## 参见

  - [Linux swap](https://zh.wikipedia.org/wiki/分頁#Linux "wikilink")
  - [固态硬盘上的交换分区](https://zh.wikipedia.org/wiki/固态硬盘#交换分区 "wikilink")
  - [zswap](https://zh.wikipedia.org/wiki/zswap "wikilink")

## 参考

## 外部链接

  - [Compcache, Compressed Caching for Linux](https://code.google.com/p/compcache/)
  - [Compcache: in-memory compressed swapping](https://lwn.net/Articles/334649/), May 26, 2009, LWN.net, by Nitin Gupta
  - [In-kernel memory compression](https://lwn.net/Articles/545244/), April 3, 2013, LWN.net, by Dan Magenheimer
  - [The Compression Cache: Virtual Memory Compression for Handheld Computers](http://www.cs.princeton.edu/~mfreed//docs/6.033/compression.pdf), March 16, 2000, by Michael J. Freedman

{{-}}

[Category:記憶體管理](https://zh.wikipedia.org/wiki/Category:記憶體管理 "wikilink") [Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink") [Category:虚拟内存](https://zh.wikipedia.org/wiki/Category:虚拟内存 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.  Google, [Android KitKat | Android Developers](http://developer.android.com/about/versions/kitkat.html)
9.
10.