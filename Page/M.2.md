[右](https://zh.wikipedia.org/wiki/File:M.2_and_mSATA_SSDs_comparison.jpg "fig:右")
(左) 与 M.2 2242 SSD (右) 的尺寸对比\]\] **M.2**，前身为**Next Generation Form
Factor**
(**NGFF**)，是[计算机内部扩展卡及相关](../Page/计算机.md "wikilink")[连接器规范](../Page/连接器.md "wikilink")。其採用了全新的物理布局和连接器，将取代[PCI
Express Mini及與PCI](../Page/PCI_Express.md "wikilink") Express Mini
相容的[mSATA标准](../Page/SATA#mSATA.md "wikilink")。M.2具有灵活的物理规范，允许更多種類的模块宽度与长度，并與更高级的[接口相配](../Page/介面_\(資訊科技\).md "wikilink")，使M.2比mSATA更适合日常應用，尤其是用於[超级本或](../Page/超级本.md "wikilink")[平板电脑等小型设备的](../Page/平板电脑.md "wikilink")[固态存储](../Page/固态硬盘.md "wikilink")。\[1\]\[2\]\[3\]理論上M.2介面最多可提供PCI
Express x4的帶寬（實際情況視晶片組等情況而定）。

[计算机总线将M](../Page/总线.md "wikilink").2连接器轉化为[PCI Express
3.0](../Page/PCI_Express.md "wikilink")（最多4个通道）、[Serial ATA
3.0和](../Page/SATA.md "wikilink")[USB
3.0接口](../Page/USB_3.0.md "wikilink")，后两者則配備单个逻辑端口。取決于對主机和设备类型支援的级别，接口的支援取决于M.2主机或设备制造商的选择。M.2连接器有几种不同的固定槽，代表著M.2主机和模块不同的目的和功能，避免用户將M.2模块插入到功能不兼容的主机连接器中。\[4\]\[5\]\[6\]

除了在逻辑接口的层面支持传统的[AHCI](../Page/AHCI.md "wikilink")，M.2标准还支持[NVM
Express](../Page/NVM_Express.md "wikilink")（NVMe）作为M.2 PCI Express
[SSD的逻辑设备接口](../Page/固态硬盘.md "wikilink")。支持AHCI能确保软件层面对传统SATA设备和传统[操作系统的向下兼容性](../Page/操作系统.md "wikilink")，而採用[NVM
Express的设计則能充分利用PCI](../Page/NVM_Express.md "wikilink")
Express存储设备的高性能，同時执行大量[I/O操作](../Page/I/O.md "wikilink")。\[7\]\[8\]

## 特性

[右](https://zh.wikipedia.org/wiki/File:SATA_Express_interface.svg "fig:右")|author1=Jim
Handy|author2=Jon Tanguy|author3=Jaren May|author4=David
Akerson|author5=Eden Kim|author6=Tom
Coughlin}}</ref><sup>:14</sup>它支持传统SATA和PCI
Express存储设备，包括[AHCI和NVMe作为逻辑设备接口](../Page/AHCI.md "wikilink")。\[9\]<sup>:4</sup>|371x371像素\]\]
[总线分拆M](../Page/总线.md "wikilink").2连接器为[PCI
Express](../Page/PCI_Express.md "wikilink") 3.0、Serial ATA (SATA)
3.0和[USB](../Page/通用串行總線.md "wikilink") 3.0（对USB
2.0[向下兼容](../Page/向下兼容.md "wikilink")）。也因如此，M.2模块可以集結多种功能，包括[Wi-Fi](../Page/Wi-Fi.md "wikilink")、[蓝牙](../Page/蓝牙.md "wikilink")、[卫星导航](../Page/卫星导航系统.md "wikilink")、[近场通信](../Page/近場通訊.md "wikilink")（NFC）、数字广播、[无线千兆联盟](../Page/WiGig.md "wikilink")（WiGig）、（WWAN）和[固态硬盘](../Page/固态硬盘.md "wikilink")（SSD）。\[10\]2013年8月[SATA](../Page/SATA.md "wikilink")
3.2的版本规范中，正式將M.2設为新的存储设备格式，并對其硬件格式作出定義。\[11\]<sup>:12</sup>\[12\]

M.2规范提供最多四个[PCI
Express通道和一个逻辑性](../Page/PCI_Express.md "wikilink")[SATA](../Page/SATA.md "wikilink")
3.0（6 Gbit/s）端口，且全部都是通过同一个连接器分拆而成，因此一个M.2模块可能同时存在PCI
Express和SATA存储设备。被分拆的PCI Express通道對主机与存储设备提供一个纯PCI
Express连接，且没有额外的总线[抽象層](../Page/抽象層.md "wikilink")。\[13\]在2013年10月的[PCI-SIG推出的M](../Page/周邊元件互連特別興趣小組.md "wikilink").2规范1.0版本中，則提供了详细的M.2规范。\[14\]<sup>:12</sup>\[15\]

有三种逻辑设备接口和M.2存储设备接口命令集的选项可用，这可根据M.2存储设备的类型和[操作系统的支持性选用](../Page/操作系统.md "wikilink")：\[16\]<sup>:14</sup>\[17\]\[18\]

  - 传统SATA
    用于SATA SSD，以及通过M.2连接器分拆出的AHCI驱动程序和舊式SATA 3.0 (6 Gbit/s)端口。

<!-- end list -->

  - 使用AHCI的PCI Express
    用于PCI Express SSD和通过[AHCI驱动程序和PCI](../Page/AHCI.md "wikilink")
    Express通道提供的接口，使用AHCI访问PCI Express
    SSD，利用广泛的SATA支持在操作系统层面以提供非最佳性能的[向下兼容](../Page/向下兼容.md "wikilink")。開發AHCI的時候,
    系統的[主机总线适配器
    (HBA)的用途是将CPU](../Page/主机总线适配器_\(HBA\).md "wikilink")/内存子系统通過一个相比慢得多的基于旋转[磁介质的存储子系统相连](../Page/磁儲存.md "wikilink")，正因如此，AHCI在用于SSD设备时有一些固有的低效能问题，因为其行为更类似[DRAM而非旋转介质](../Page/动态随机存取存储器.md "wikilink")。

<!-- end list -->

  - 使用NVMe的PCI Express
    用于PCI Express SSD和通过NVMe驱动程序和PCI
    Express通道提供的接口，作为一个高性能并可扩展的主机连接器接口设计，尤其是专门为PCI
    Express SSD的接口而优化。NVMe已全新设计，为PCI Express
    SSD提供低延迟和[并行性](../Page/并行计算.md "wikilink")，助益现代CPU、平台和应用程序的并行性。在高层次水平，NVMe相比AHCI的主要优势是NVMe能充分、并行地利用主机的硬件和软件，它的设计优势包括更少的数据传输层级，更大的命令队列，以及更有效的[中断处理](../Page/中斷.md "wikilink")。

## 插座外形和卡口

[右](https://zh.wikipedia.org/wiki/File:M.2_connector_on_a_computer_motherboard.jpg "fig:右")的M.2插座，位于图片的左上。该插座的类型为M
key，提供两个螺栓固定点，允许2260和2280尺寸的M.2模块。\]\]
M.2标准的设计目的是为了修订和完善[mSATA标准](../Page/SATA.md "wikilink")，较大的[印刷电路板](../Page/印刷电路板.md "wikilink")（PCB）可能是其主要诱因之一。随着mSATA带来[PCI
Express Mini
Card的外形和连接器优势](../Page/PCI_Express.md "wikilink")，M.2的设计旨在最大化利用PCB空间并最小化模块空间。作为其设计结果，M.2标准允许更长的模块和双面组件群，M.2
[SSD设备可以提供更大的存储容量](../Page/固态硬盘.md "wikilink")，与mSATA设备占用同样空间，但提供双倍的存储容量。\[19\]<sup>:20,22–23</sup>\[20\]\[21\]

M.2模块的外形是长方形，在一侧有一个边缘连接器（有最多67针的75个点位，0.5毫米间距，各针分布在PCB的两侧），并在另一侧边的中心有一个半圆形安装固定孔。连接器上的各引脚额定最多50[V和](../Page/伏特.md "wikilink")0.5[A](../Page/安培.md "wikilink")，而连接器本身要求耐受最多60次拔插。M.2标准允许模块宽度为12、16、22和30毫米，长度16、26、30、38、42、60、80和110毫米。市售的M.2扩展卡主要是22毫米宽，长度有30、42、60、80和110毫米等规格。\[22\]\[23\]\[24\]\[25\]例如：2242表示22毫米宽,
42毫米长，2280表示22毫米宽, 80毫米长。

M.2模块是被安装到主机电路板提供的匹配的连接器，并且使用一个安装螺钉固定模块到指定位置。组件可能被安装在模块的任意侧面，实际的模块类型限定了可以安装的组件最大厚度；允许的组件最大厚度是每侧1.5毫米。有多种用于单侧或双侧的M.2模块主机端连接器，根据M.2扩展卡和主机PCB的情况提供不同的空间量。\[26\]\[27\]\[28\]主机上的电路板通常被设计为能接受多种长度的M.2模块，这也意味着接受较长M.2模块的插座通常也能接受较短的同类模块，只需要为较短的模块提供不同位置的安装螺钉。\[29\]\[30\]
M.2模块的PCB提供75位的边缘连接器；取决于模块类型，部分针位被去除以存在一个或多个缺口。主机上的M.2连接器（插座）可能填充一个或多个匹配的卡口，这取决于主机可接受的模块类型；截至2014年4月，主机侧的连接器可以只填充一个卡口（无论B或M型）。\[31\]\[32\]\[33\]此外，用于SATA或双通道PCI
Express (PCIe ×2)的M.2插座卡口被称为"socket 2 configuration"或者"socket
2"，用于四通道PCI Express (PCIe ×4)的插座卡口被称为"socket 3
configuration"或"socket 3"。\[34\]\[35\]

<div align="center">

| Key编号 | 卡口针数    | 提供接口                                                                                                                                                                                          |
| ----- | ------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A     | 8 - 15  | [PCIe](../Page/PCI_Express.md "wikilink")×2、USB 2.0、[I<sup>2</sup>C和](../Page/I²C.md "wikilink")[DP](../Page/DisplayPort.md "wikilink")×4                                                     |
| B     | 12 - 19 | PCIe×2、SATA、USB 2.0、USB 3.0、音频、[UIM](../Page/SIM卡.md "wikilink")、 [HSIC](../Page/HSIC.md "wikilink")、[HSIC](../Page/HSIC.md "wikilink")、I<sup>2</sup>C和[SMBus](../Page/系統管理匯流排.md "wikilink") |
| C     | 16 - 23 | 保留供未来使用                                                                                                                                                                                       |
| D     | 20 - 27 |                                                                                                                                                                                               |
| E     | 24 - 31 | PCIe×2、USB 2.0、[I²C](../Page/I²C.md "wikilink")、[SDIO](../Page/SD卡#SDIO.E4.BB.8B.E7.BB.8D.md "wikilink")、[UART和](../Page/UART.md "wikilink")[PCM](../Page/I²S.md "wikilink")                  |
| F     | 28 - 35 | 未来存储器接口（FMI）                                                                                                                                                                                  |
| G     | 39 - 46 | 保留供自定义使用（在M.2规范中未使用）                                                                                                                                                                          |
| H     | 43 - 50 | 保留供未来使用                                                                                                                                                                                       |
| J     | 47 - 54 |                                                                                                                                                                                               |
| K     | 51 - 58 |                                                                                                                                                                                               |
| L     | 55 - 62 |                                                                                                                                                                                               |
| M     | 59 - 66 | PCIe×4、SATA和SMBus                                                                                                                                                                             |

M.2模块卡口和提供的接口\[36\]<sup>:8</sup>\[37\]<sup>:3</sup>\[38\]

<table>
<caption>M.2模块最大组件厚度[39]<sup>:8</sup>[40]<sup>:3</sup></caption>
<thead>
<tr class="header">
<th><p>类型编号</p></th>
<th><p>正面</p></th>
<th><p>背面</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>S1</p></td>
<td><p>1.20 mm</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>S2</p></td>
<td><p>1.35 mm</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>S3</p></td>
<td><p>1.50 mm</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>D1</p></td>
<td><p>1.20 mm</p></td>
<td><p>1.35 mm</p></td>
</tr>
<tr class="odd">
<td><p>D2</p></td>
<td><p>1.35 mm</p></td>
<td><p>1.35 mm</p></td>
</tr>
<tr class="even">
<td><p>D3</p></td>
<td><p>1.50 mm</p></td>
<td><p>1.35 mm</p></td>
</tr>
<tr class="odd">
<td><p>D4</p></td>
<td><p>1.50 mm</p></td>
<td><p>0.70 mm</p></td>
</tr>
<tr class="even">
<td><p>D5</p></td>
<td><p>1.50 mm</p></td>
<td><p>1.50 mm</p></td>
</tr>
</tbody>
</table>

</div>

[右](https://zh.wikipedia.org/wiki/File:M2_Edge_Connector_Keying.svg "fig:右")举例来说，有B和M型两个缺口的M.2模块，使用最多两个PCI
Express通道并提供广泛的兼容性，而只有一个缺口的M型M.2使用最多四个PCI
Express通道；以上两例也可能提供SATA存储设备。类似的卡口适用于提供USB
3.0连通性的M.2模块。\[41\]\[42\]\[43\]

各种类型的M.2设备使用“WWLL-HH-K-K”或“WWLL-HH-K”命名表示方案，其中“WW”（width，宽度）和“LL”（length，长度）分别表示以毫米为单位的模块宽度和长度。
“HH”部分是一个编码形式，表示模块是单侧或者双侧，以及已安装组件的最大厚度，可能的值已列在右上表中。模块卡口指定在“K-K”部分，使用左上表中的key
ID表示；它也可能指定为仅“K”，如果该模块只有一个缺口。\[44\]\[45\]

除了插入式模块，M.2标准也包括永久[焊接单面模块的选项](../Page/软钎焊.md "wikilink")。\[46\]

## 参见

  - [電腦裝置頻寬列表](../Page/電腦裝置頻寬列表.md "wikilink")
  - [固态硬盘](../Page/固态硬盘.md "wikilink")

## 参考资料

## 外部链接

  - <span class="official-website" contenteditable="false"><span class="url">[Serial
    ATA International
    Organization](https://www.sata-io.org/)</span></span><span class="official-website" contenteditable="false"></span>
    (SATA-IO)
  - <span class="official-website" contenteditable="false"><span class="url">[Peripheral
    Component Interconnect Special Interest
    Group](https://www.pcisig.com)</span></span><span class="official-website" contenteditable="false"></span>
    (PCI-SIG)
  - [Understanding M.2, the interface that will speed up your next
    SSD](http://arstechnica.com/gadgets/2015/02/understanding-m-2-the-interface-that-will-speed-up-your-next-ssd/),
    [Ars Technica](../Page/Ars_Technica.md "wikilink"), February 9,
    2015, by Andrew Cunningham
  - [Samsung XP941 M.2 PCIe SSD Review (512
    GB)](http://www.thessdreview.com/our-reviews/samsung-xp941-m-2-pcie-ssd-review-512gb/),
    September 22, 2013, by Les Tokar
  - [LFCS: Preparing Linux for nonvolatile memory
    devices](https://lwn.net/Articles/547903/), LWN.net, April 19, 2013,
    by Jonathan Corbet
  - [PCIe SSD 101: An Overview of Standards, Markets and
    Performance](https://web.archive.org/web/20140202110152/http://www.snia.org/sites/default/files/SNIASSSIPCIe101WhitePaper1.12013.pdf),
    [SNIA](../Page/全球网络存储工业协会.md "wikilink"), August 2013, archived from
    the original on February 2, 2014
  - [<span class="plainlinks">LSI SandForce SF3700 Flash
    Controllers</span>](https://www.youtube.com/watch?v=kUSEK5JA7l0)<span contenteditable="false">
    on </span>[YouTube](../Page/YouTube.md "wikilink"), November 18,
    2013
  - <span contenteditable="false">\[//www.google.com/patents/US20130294023
    Interface card
    mount\]</span><span contenteditable="false"></span><span> </span>–
    US patent 20130294023, November 7, 2013, assigned to Raphael Gay

[Category:计算机总线](https://zh.wikipedia.org/wiki/Category:计算机总线 "wikilink")

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

19.

20.

21.

22.

23.

24.

25.

26.

27.

28.

29.

30.

31.

32.

33.

34.

35.

36.
37.
38.
39.
40.
41.

42.

43.

44.

45.

46.