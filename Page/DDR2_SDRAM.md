[RAM_1GB_with_cooler.jpg](https://zh.wikipedia.org/wiki/File:RAM_1GB_with_cooler.jpg "fig:RAM_1GB_with_cooler.jpg")
**第二代双倍数据率同步動態隨機存取記憶體**（，一般稱為**DDR2
SDRAM**），是一種[電腦記憶體規格](../Page/電腦記憶體.md "wikilink")。它屬於[SDRAM家族的記憶體產品](../Page/SDRAM.md "wikilink")，提供了相較於[DDR
SDRAM更高的運行效能與更低的電壓](../Page/DDR_SDRAM.md "wikilink")，是DDR
SDRAM（双倍数据率同步動態隨機存取記憶體）的後繼者。

JEDEC为DDR存储器设立了速度规，并分为了以下两个部分：按内存芯片分类和按内存模块分类。

## 概述

像所有的[SDRAM实现方法一样](../Page/SDRAM.md "wikilink")，DDR2
SDRAM有一个同步接口，在响应控制输入前会等待一个[时钟信号](../Page/时钟信号.md "wikilink")，这样就能和计算机的[系统总线同步](../Page/系统总线.md "wikilink")。像之前的DDR，DDR2
I/O
缓冲器在时钟信号的[上升沿和](../Page/上升沿.md "wikilink")[下降沿都传输数据](../Page/下降沿.md "wikilink")（一种叫做["double
pumping"的技术](../Page/Double_data_rate.md "wikilink")）。DDR和DDR2的关键区别是：DDR2内存单元的核心频率是等效频率的1/4（而不是1/2）。这需要一个4-bit-deep的预取队列，在并不用改变内存单元本身的情况下，DDR2能有效地达到DDR数据传输速度的两倍。

DDR2的等效频率由于电气接口的改进（包括[on-die
termination](../Page/on-die_termination.md "wikilink"), [prefetch
buffers](../Page/prefetch_buffer.md "wikilink") 和 off-chip
drivers）而大增。然而，[CAS等待时间却增长了](../Page/memory_latency.md "wikilink")。DDR2预读取是4位，而DDR预读取是2位，[DDR3预读取是](../Page/DDR3_SDRAM.md "wikilink")8位。DDR
SDRAM一般是2到3个总线周期的读取等待时间，而DDR2一般是4到6个总线周期的读取等待时间。

另外增加的带宽导致的成本是芯片封装更昂贵且更困难，因为[BGA封装相比于先前采用](../Page/Ball_grid_array.md "wikilink")[TSSOP封装技术生产的](../Page/TSSOP.md "wikilink")[DDR
SDRAM和](../Page/DDR_SDRAM.md "wikilink")[SDR
SDRAM更昂贵且更困难](../Page/SDR_SDRAM.md "wikilink")。这种封装的改变需要更高的总线速度以维持信号的完整。

节能得以实现主要是由于生产过程中的模具收缩导致工作电压的下降（从DDR的2.5V到DDR2的1.8V）。更低的内存时钟频率也能使应用程序不需要最高的可用数据传输率而得以降低功耗。

根据JEDEC\[1\]建议的最高电压是1.9V，并且建议对于要求内存稳定使用的环境绝不能超过此值（例如服务器或其他任务关键设备）。此外，JEDEC规定内存模块必须在受到永久损害前承受2.3V的电压（虽然它们可能正常工作时并不在此电压水平）。

## 规范标准

### 芯片和模块

<table>
<tbody>
<tr class="odd">
<td><p>標準名稱</p></td>
<td><p>I/O 匯流排時脈<br />
<small>(<a href="../Page/MHz.md" title="wikilink">MHz</a>)</small></p></td>
<td><p>週期<br />
<small>(<a href="../Page/納秒.md" title="wikilink">ns</a>)</small></p></td>
<td><p>記憶體時脈<br />
<small>(<a href="../Page/MHz.md" title="wikilink">MHz</a>)</small></p></td>
<td><p>數據速率<br />
<small>(MT/s)</small></p></td>
<td><p>傳輸方式</p></td>
<td><p>模組名稱</p></td>
<td><p>極限傳輸率<br />
<small>(<a href="../Page/GiB.md" title="wikilink">GiB</a>/s)</small></p></td>
<td><p>位元寬<br />
<small>(<a href="../Page/位元.md" title="wikilink">位元</a>)</small></p></td>
</tr>
<tr class="even">
<td><p>DDR2-400</p></td>
<td><p>200</p></td>
<td><p>10</p></td>
<td><p>100</p></td>
<td><p>400</p></td>
<td><p>並列傳輸</p></td>
<td><p>PC2-3200</p></td>
<td><p>3.2</p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>DDR2-533</p></td>
<td><p>266</p></td>
<td><p>7.5</p></td>
<td><p>133</p></td>
<td><p>533</p></td>
<td><p>並列傳輸</p></td>
<td><p>PC2-4200<br />
PC2-4300</p></td>
<td><p>4.3</p></td>
<td><p>64</p></td>
</tr>
<tr class="even">
<td><p>DDR2-667</p></td>
<td><p>333</p></td>
<td><p>6</p></td>
<td><p>166</p></td>
<td><p>667</p></td>
<td><p>並列傳輸</p></td>
<td><p>PC2-5300<br />
PC2-5400</p></td>
<td><p>5.3</p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>DDR2-800</p></td>
<td><p>400</p></td>
<td><p>5</p></td>
<td><p>200</p></td>
<td><p>800</p></td>
<td><p>並列傳輸</p></td>
<td><p>PC2-6400</p></td>
<td><p>6.4</p></td>
<td><p>64</p></td>
</tr>
<tr class="even">
<td><p>DDR2-1066</p></td>
<td><p>533</p></td>
<td><p>3.75</p></td>
<td><p>266</p></td>
<td><p>1066</p></td>
<td><p>並列傳輸</p></td>
<td><p>PC2-8500<br />
PC2-8600</p></td>
<td><p>8.5</p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

現時有售的DDR2-SDRAM已能達到DDR2-1200，但必須在高電壓下運作，以維持其穩定性。

## 历史

2003年第二季度，DDR2推出了两种频率的内存：其内部时钟频率分别为200MHz（对应PC2-3200）和266MHZ（PC2-4200）。它们在延迟方面的表现不如原来的DDR内存，使得总访问时间更长。然而，原来的DDR技术时钟频率可超出200MHz（400MT/s）。更高性能的DDR芯片虽存在，但是[JEDEC已表示他们不会将其标准化](../Page/JEDEC.md "wikilink")。

2004年底由于模块到达更低的延迟变成现实，DDR2相比更早的DDR标准变得具有竞争力。\[2\]

## 向后兼容

[Desktop_DDR_Memory_Comparison.svg](https://zh.wikipedia.org/wiki/File:Desktop_DDR_Memory_Comparison.svg "fig:Desktop_DDR_Memory_Comparison.svg")

DDR2 DIMMs没有被设计成与DDR DIMMs向后兼容。DDR2 DIMMs的凹口位置与DDR
DIMMs是不同的，并且用于台式机的内存针脚数DDR2高于DDR
DIMMs。DDR2有240针，DDR有184针。用于笔记本电脑的有200针的DDR和DDR2，但是DDR凹口的位置与DDR2有微小的不同。

高性能的DDR2 DIMMs与低性能的DDR2
DIMMs是兼容的；但是，混用高性能的内存只能以低性能内存的频率工作。在系统中，更高性能的总线与低性能的DDR2内存结合，则最终性能由低性能的内存决定；然而在许多系统中这种性能损失可以通过设置内存计时以致更低的延时来减缓。

## ddr2l

是指筆記型電腦上的暫存記憶體，以acer,asus電腦為例，內均建[南亞科技](../Page/南亞科技.md "wikilink")，少數高階機種採用[威剛科技](../Page/威剛科技.md "wikilink")。
[南亞科ddr2l.jpg](https://zh.wikipedia.org/wiki/File:南亞科ddr2l.jpg "fig:南亞科ddr2l.jpg")

## 参考资料

## 延伸阅读

  - [JEDEC standard: DDR2 SDRAM
    Specification](http://www.jedec.org/download/search/JESD79-2F.pdf)
    (JESD79-2F, November 2009)

  - [JEDEC standard:
    DDR2-1066](http://www.jedec.org/download/search/JESD208.pdf)

  -
  -
## 外部連結

  - [JEDEC website](http://www.jedec.org)
  - [Overview of DDR-II
    technology](https://web.archive.org/web/20090106043029/http://www.lostcircuits.com/mambo/index.php?option=com_content&task=view&id=35&Itemid=60)
  - [QBM的介紹](https://web.archive.org/web/20061110225531/http://www.xbitlabs.com/articles/memory/display/qbm.html)

## 參見

  - [SDR SDRAM](../Page/SDR_SDRAM.md "wikilink")
  - [DDR SDRAM](../Page/DDR_SDRAM.md "wikilink")
  - [DDR3 SDRAM](../Page/DDR3_SDRAM.md "wikilink")
  - [RDRAM](../Page/RDRAM.md "wikilink")
  - [雙通道](../Page/雙通道.md "wikilink")
  - [FB-DIMM](../Page/FB-DIMM.md "wikilink")

[de:DDR-SDRAM\#DDR2-SDRAM](../Page/de:DDR-SDRAM#DDR2-SDRAM.md "wikilink")
[fi:DRAM\#DDR2 SDRAM](../Page/fi:DRAM#DDR2_SDRAM.md "wikilink")

[Category:電腦記憶體](https://zh.wikipedia.org/wiki/Category:電腦記憶體 "wikilink")
[Category:已被淘汰的電腦硬體](https://zh.wikipedia.org/wiki/Category:已被淘汰的電腦硬體 "wikilink")

1.  [JEDEC JESD 208](http://www.jedec.org/download/search/JESD208.pdf)
    (section 5, tables 15 and 16)
2.