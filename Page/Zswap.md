**zswap**是一项[Linux内核](../Page/Linux内核.md "wikilink")的[虚拟内存压缩功能](https://zh.wikipedia.org/wiki/虚拟内存压缩 "wikilink")，可为将要[交换的页面提供压缩](../Page/分頁.md "wikilink")[回写](https://zh.wikipedia.org/wiki/回写 "wikilink")[缓存](../Page/缓存.md "wikilink")。当[内存页将要交换出去时](https://zh.wikipedia.org/wiki/内存页 "wikilink")，zswap不将其移动到交换设备，而是对其执行[压缩](../Page/数据压缩.md "wikilink")，然后存储到系统[RAM内动态分配的](https://zh.wikipedia.org/wiki/RAM "wikilink")[内存池中](../Page/記憶池.md "wikilink")。回写到实际交换设备的动作则会延迟，甚至能完全避免，从而显著减少Linux系统用于交换的[I/O](https://zh.wikipedia.org/wiki/I/O "wikilink")；副作用则是压缩所需的额外[CPU周期](https://zh.wikipedia.org/wiki/CPU "wikilink")。\[1\]\[2\]\[3\]

zswap能减少I/O，因而有利于使用[固态存储的设备](https://zh.wikipedia.org/wiki/固态存储 "wikilink")，包括[嵌入式设备](https://zh.wikipedia.org/wiki/嵌入式设备 "wikilink")、[上网本](../Page/上网本.md "wikilink")及其它相似的低端硬件设备，也包括其它使用[SSD存储的设备](https://zh.wikipedia.org/wiki/SSD "wikilink")。由于其[固有性质](../Page/写入放大.md "wikilink")，[闪存](../Page/闪存.md "wikilink")的寿命有限，因而避免以其提供[交换空间可防止其迅速磨损](https://zh.wikipedia.org/wiki/Linux_swap "wikilink")。\[4\]

## 内部机制

zswap通过使用由*frontswap*提供的[API集成入Linux内核](https://zh.wikipedia.org/wiki/API "wikilink")[虚拟内存](../Page/虚拟内存.md "wikilink")子系统的剩余部分中，该接口是Linux内核中的一种机制，能对各类可用作交换空间的存储进行抽象\[5\]。因此，zswap可通过提供内部可见的伪-RAM设备，以frontswap后端驱动的身份运作。换句话说，frontswap API使得zswap可在[内存页交换出的时候拦截它](https://zh.wikipedia.org/wiki/内存页 "wikilink")，及已交换页面的[页缺失](../Page/页缺失.md "wikilink")；在获取这两个通路后，zswap便可充当交换页面的压缩回写缓存\[6\]\[7\]。

在内部，zswap使用由内核[加密API提供的压缩](https://zh.wikipedia.org/wiki/加密API_\(Linux\) "wikilink")[模块](https://zh.wikipedia.org/wiki/可載入核心模組 "wikilink")，从而使其有可能（比如说）使用受内核支持的硬件压缩[加速器](../Page/硬件加速.md "wikilink")，将压缩任务搬离主CPU。使用[内核引导参数](https://zh.wikipedia.org/wiki/Linux内核引导参数 "wikilink")，开机时可以动态地选择要使用的压缩模块；缺省值为，表示使用[Lempel-Ziv-Oberhumer](https://zh.wikipedia.org/wiki/LZO "wikilink")（LZO）压缩。此外，截止Linux 3.13，zswap需要通过显式指定内核引导参数为以启用。\[8\]\[9\]\[10\]

zswap可使用的内存池最大大小可由参数配置，它指定池可占用的总系统RAM的最大百分比。内存池并非预先分配到所配置的最大尺寸；相反，它会根据要求增加和缩小。当在交换的过程中达到了配置的最大池大小，或者由于[内存不足无法分配更多的池时](https://zh.wikipedia.org/wiki/内存不足 "wikilink")，将会根据[最近最少使用](https://zh.wikipedia.org/wiki/最近最少使用 "wikilink")（LFU）原则，从内存池[逐出交换页面到交换设备上](https://zh.wikipedia.org/wiki/缓存逐出 "wikilink")。这种方式使zswap成为真正的交换缓存，因为一旦缓存已满，最旧的缓存页面将会被逐出到交换设备中去，因而较新的交换页面就能有空间压缩并缓存。\[11\]\[12\]\[13\]

**zbud**是由zswap内部使用的专用[内存分配器](../Page/記憶體管理.md "wikilink")，用于存储压缩页面；它是[Oracle](../Page/甲骨文公司.md "wikilink") zcache内部使用的zbud分配器的重写。zbud的工作原理是，在每张物理内存页中存储至多两张压缩页面（“buddies”，分配器因而得名），这既有优势（简单的空间收集及空闲空间复用）也有劣势（潜在的低内存利用率）。然而，由于它的设计，zbud分配的内存空间不会比最初未压缩页面所使用的还多。\[14\]\[15\]

## 历史

### Recent developments

  - In early 2008, a [Linux](../Page/Linux.md "wikilink") project named [zram](https://zh.wikipedia.org/wiki/zram "wikilink") (originally called compcache) was released; in a 2013 update, it was incorporated into [Chrome OS](../Page/Chrome_OS.md "wikilink")\[16\] and [Android](../Page/Android.md "wikilink") 4.4
  - In 2010, IBM released Active Memory Expansion (AME) for [AIX](https://zh.wikipedia.org/wiki/AIX "wikilink") 6.1 which implements virtual memory compression.\[17\]
  - In 2012, some versions of the [POWER7](https://zh.wikipedia.org/wiki/POWER7 "wikilink")+ chip included the AME hardware accelerator for data compression support, used on AIX, for virtual memory compression.\[18\]
  - In December 2012, the zswap project was announced; it was merged into the [Linux kernel mainline](https://zh.wikipedia.org/wiki/Linux_kernel_mainline "wikilink") in September 2013.
  - In June 2013, Apple announced that it will include virtual memory compression in [OS X Mavericks](../Page/OS_X_Mavericks.md "wikilink"), using the WKdm algorithm.\[19\]\[20\]
  - An August 10, 2015 "[Windows Insider](https://zh.wikipedia.org/wiki/Windows_Insider "wikilink") Preview" update for [Windows 10](../Page/Windows_10.md "wikilink") added support for RAM compression.\[21\]

zswap和zbud都由塞思·詹宁斯开发。2012年，此时代码库已经成熟，但仍标记为实验性内核功能。\[22\]\[23\]

zswap（连同zbud）于Linux 3.11（发布于2013年9月2日）合并入[Linux内核主线](https://zh.wikipedia.org/wiki/Linux内核主线 "wikilink")。\[24\]\[25\]

自Linux 3.15（发布于2014年6月8日）起，zswap支持多种交换设备。\[26\]\[27\]

## 替代

其中一个zswap的替代是[zram](https://zh.wikipedia.org/wiki/zram "wikilink")，它向Linux内核提供了类似但有所不同的“压缩交换页面到RAM”机制。

主要区别在于，zram提供以RAM存储数据的压缩[块设备](https://zh.wikipedia.org/wiki/块设备 "wikilink")，作为独立的一般交换设备。使用zram需要额外的[用户空间配置](https://zh.wikipedia.org/wiki/用户空间 "wikilink")（通过使用和），这样zram提供的基于RAM的交换设备才能被初始化并配置使用。正如设计的那样，zram可提供交换空间，即使是没有其他可用的交换设备，从而更适合用于未提供交换空间的系统，如嵌入式设备。\[28\]

相比之下，zswap则作为基于RAM的一般交换设备的压缩缓存，运行透明，不需要用户空间额外配置。zswap提供最少使用交换页面的[逐出机制](https://zh.wikipedia.org/wiki/缓存逐出 "wikilink")，而zram不支持。尽管如此，因其设计的缘故，至少需要一个已存在的交换设备，以便为其所用。\[29\]

## 参见

  - [缓存](../Page/缓存.md "wikilink")
  - [Linux swap](https://zh.wikipedia.org/wiki/Linux_swap "wikilink")
  - [固态硬盘上的交换分区](https://zh.wikipedia.org/wiki/固态硬盘#交换分区 "wikilink")

## 参考

## 外部链接

  - , September 30, 2013, by Seth Jennings, IBM

  - [Zswap – a compressed page add-on for the Linux kswapd](https://web.archive.org/web/20140202233144/http://queen.run.montefiore.ulg.ac.be/~martin/wordpress/wp-content/uploads/2013/02/os-zswap.pdf), March 15, 2013, University of Liege

  - [The Compression Cache: Virtual Memory Compression for Handheld Computers](http://www.cs.princeton.edu/~mfreed//docs/6.033/compression.pdf), March 16, 2000, by Michael J. Freedman

{{-}}

[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink") [Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink") [Category:記憶體管理](https://zh.wikipedia.org/wiki/Category:記憶體管理 "wikilink") [Category:虚拟内存](https://zh.wikipedia.org/wiki/Category:虚拟内存 "wikilink")

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
13.

14.
15.

16.
17.
18.
19. <http://arstechnica.com/apple/2013/10/os-x-10-9/17/#compressed-memory>

20. <https://www.usenix.org/legacy/publications/library/proceedings/usenix01/cfp/wilson/wilson_html/node23.html>

21.

22.

23.

24.
25.

26.

27.

28.

29.