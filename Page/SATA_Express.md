**SATA Express**（英文：，亦可縮寫為**Serial ATA Express**，也有坊間的非官方縮寫**SATAe**）是一種基於[SATA](../Page/SATA.md "wikilink")和[PCI Express](../Page/PCI_Express.md "wikilink")（PCIe）而來的高速電腦匯流排，用於SATA、PCIe存儲裝置，最初是作為SATA 3.2版標準發表。\[1\]

## 來歷

### 可用性

最初內建SATA Express控制器的是英特爾於2014年的9系列PCH晶片組（H97、Z97），適用於Haswell微架構的處理器（[LGA 1150插槽](../Page/LGA_1150.md "wikilink")）。\[2\]\[3\]不過，2013年11月[華碩](../Page/華碩.md "wikilink")釋出了帶有SATA Express連接埠的「Z87-Deluxe/SATA Express」主機板，使用一顆由祥碩科技提供的控制晶片提供SATA Express支援，不過這款主機板僅在2014年的[CES消費電子展上展出以後便無任何推出市場的計劃了](../Page/消費電子展.md "wikilink")。\[4\]\[5\]

2014年4月，華碩公開展示了一種準量產型的SATA Express硬體，並支援華碩稱為「帶獨立展頻時鐘的分立式基準時脈」（SRIS）特性。SRIS的要點在於在SATA Express存儲裝置上增加一個用於資料信號傳輸的時鐘發生器，在主機板的韌體上予以額外支援，來降低SATA Express資料連接線傳輸同步PCIe匯流排信號時屏蔽的技術需求。\[6\]\[7\]\[8\]

2014年5月，首批使用Z97和H97晶片組的主機板上架販售，不少主機板不僅提供了SATA Express連接埠，還提供了M.2插槽（M.2是一種界面卡式存儲器連接結構，安裝於主機板上，和SATA Express原生物理界面一樣提供PCIe和SATA的腳位）。Z97和H97為每個SATA Express連接埠各提供了PCIe 2.0 ×2規格的PCIe通道，每個SATA Express裝置可擁有1GB/s的頻寬。\[9\]\[10\]\[11\]不過這兩款晶片組的主機板都主要用於高階效能機桌上型平台，對一般主流級市場影響不大。\[12\]\[13\]而極致效能級桌機平台上，英特爾於2014年8月推出了支援SATA Express的X99晶片組。X99主機板上SATA Express界面的PCIe通道仍由X99 PCH提供，而M.2插槽的PCIe通道則是視主機板廠商而定，可從X99 PCH上引出兩條PCIe 2.0通道，也可從LGA 2011-v3插槽的處理器上引出最多4條PCIe 3.0通道，來供M.2插槽使用。\[14\]

[AMD則於](https://zh.wikipedia.org/wiki/AMD "wikilink")2017年發表了[Socket AM4和](../Page/Socket_AM4.md "wikilink")[Socket SP3](../Page/Socket_SP3.md "wikilink")(r2)/LGA 4094處理器平台，內建SATA Express控制器。\[15\]

### 使用度

SATA Express的推廣使用上，分為兩種情況。單就SATA Express控制器本身而言是算成功的，至2017年推出的主機板晶片組、x86 CPU/SoC均有支援。然而就SATA Express物理界面上來說則是相當的失敗，以至於主機板廠商多是將SATA Express控制器用於SATA插槽或是M.2插槽上，載有SATA Express物理界面的主機板可謂是相當的少，早期甚至連驅動程式也欠奉；至於SATA Express物理界面的存儲裝置也可謂寥寥無幾。\[16\]\[17\]

2015年SATA Express使用了一種一方面相容M.2針腳定義、一方面可相容SAS的U.2連接器界面，不過，其過大的體積被認為不見得能在消費級市場上有所普及，與SAS的相容性似乎暗示U.2將更多地用於伺服器等企業應用場合。

## 特性

[SATA_Express_interface.svg](https://zh.wikipedia.org/wiki/File:SATA_Express_interface.svg "fig:SATA_Express_interface.svg")

SATA Express本身配備了新的物理連接界面，連接埠可[向下相容原有SATA標準的SATA連接線插頭](https://zh.wikipedia.org/wiki/向下相容 "wikilink")，\[18\]而實際上SATA Express是使用兩條PCIe通道傳輸資料，其對應的連接埠幾乎相當於一個特化的PCIe ×2插槽，所以基於SATA Express的存儲裝置是通過PCIe匯流排與SATA Express控制器進行通信的。\[19\]不像此前的數個SATA標準，由於固態硬碟機（SSD）的長足發展和越發廣泛的使用，SATA 3.0對於SSD來說已不敷使用，能在與舊裝置相容的基礎上比SATA 3.0（6 Gbps）提升多倍的匯流排頻寬，SATA 3.2選擇使用PCIe和SATA共用技術標準。\[20\]不過相比原來的SATA標準來說，為了能在PCIe匯流排上運行而修改了大量的技術參數標準，而為了相容舊有的SATA，運作時功耗又會比只使用PCIe匯流排的控制器要高。\[21\]\[22\]選擇與PCIe走在一起的另一個原因是，作為一個可廣泛適配的電腦匯流排，PCIe可在提供足夠的[頻寬的同時](https://zh.wikipedia.org/wiki/頻寬 "wikilink")，還能通過增加PCIe通道數來達成成倍頻寬提升。\[23\]

此外，因為SATA Express支援原來在SATA邏輯介面層（面向[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")）上運作的[AHCI](../Page/AHCI.md "wikilink")，使得支援只有邏輯介面層標準的[NVMe](https://zh.wikipedia.org/wiki/NVMe "wikilink")（AHCI的繼任者）也成為了可實現的目的，只要SATA Express的存儲裝置支援。支援AHCI可確保能相容現時大量的舊型SATA裝置和舊版的作業系統（如[Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")），對NVMe的支援則可全力發揮PCIe存儲裝置的功能與效能，像是大量I/O操作的並列化執行。\[24\]

SATA Express介面同時支援PCIe存儲裝置和SATA存儲裝置，其物理連接介面佔用兩條PCIe 2.0/3.0通道和兩個SATA 3.0（6.0 Gbps）連接埠（兩種連接介面重用一個物理連接埠），主機和存儲裝置之間的連接是純PCIe匯流排連接的，不需要額外的匯流排抽象層。\[25\]\[26\] 2013年8月的SATA 3.2版本規範中，正式將SATA Express匯流排標準推出，並公佈其硬體規格以及電氣特性參數。\[27\]\[28\]

SATA Express選擇使用PCIe，使得其性能可以通過多條並列的或是更高版本的PCIe匯流排來獲得性能的提升。舉個例子，使用PCIe 2.0 ×2時，可在8b/10b編碼及2×5 GT/s的吞吐量時獲得1GB/s的頻寬；而使用PCIe 3.0 ×2時，同樣通道下使用128b/130b編碼、2×8 GT/s的吞吐量時可獲得接近2 GB/s（實際1,969MB/s）的頻寬。\[29\]\[30\]作為對比，SATA 3.0（6 Gbps）僅擁有0.6 GB/s的頻寬，使用的是效率相對較低的[8b/10b編碼](https://zh.wikipedia.org/wiki/8b/10b編碼 "wikilink")。

### 運行模式

對於SATA Express控制器和其連接的存儲裝置，它們可使用3種不同的邏輯裝置介面和命令集：\[31\]\[32\]

#### 傳統SATA

用於[向下相容傳統的SATA裝置](https://zh.wikipedia.org/wiki/向下相容 "wikilink")（包括使用AHCI邏輯介面的SATA裝置）、SATA Express控制器提供的SATA 3.0連接埠。

#### 使用AHCI的PCI Express

一來是用於使用PCIe匯流排並通過AHCI邏輯介面與主機連接的PCIe SSD；而二來是在作業系統中以相容性為目的，提供非效能最佳化，以廣泛使用的SATA模式（通過AHCI邏輯介面）存取PCIe SSD（即相容模式，一般NVMe SSD會提供此模式，方便安裝舊版作業系統，如Windows 7）。在AHCI開發的時代，系統的[主机适配器](../Page/主机适配器.md "wikilink")將CPU/記憶體子系統與相對慢得多的、基於旋轉[磁性介質的存儲子系統](https://zh.wikipedia.org/wiki/磁儲存 "wikilink")，AHCI是針對這種懸殊的速度差來進行最佳化設計的。而到了固態硬碟廣泛使用的時代，AHCI便出現了一些與固態硬碟的運作原理[不相適應之處而導致的效能低落](https://zh.wikipedia.org/wiki/NVMe_vs_AHCI "wikilink")，現時固態硬碟機採用的快閃記憶體，存儲原理與DRAM有類似之處（儘管速度仍是慢得多），不同於旋轉存儲媒介。

#### 使用NVMe的PCI Express

用於使用PCIe匯流排並通過NVMe邏輯裝置介面與主機連接的PCIe SSD。NVMe是一種轉為快閃記憶體設計的高效能、可擴展的主機控制器介面，其高效能主要在於低延時和I/O操作的[并列性](../Page/并行计算.md "wikilink")，現代CPU、系統平台及應用均可受益。[相比AHCI](https://zh.wikipedia.org/wiki/NVMe_vs_AHCI "wikilink")，NVMe提供在主機硬體和軟體可支援的情況下提供原生的存儲並行性支援，更少的資料存儲層級、更深的命令隊列和更高效的[中斷](../Page/中斷.md "wikilink")處理。

## 物理界面

[thumb|upright=1.7|right|SATA Express主機連接器，即一般的「主機板插座」（Host plug），可連接兩個傳統SATA裝置或是一個SATA Express裝置\[33\]\[34\]](https://zh.wikipedia.org/wiki/File:SATA_Express_motherboard_connection.svg "wikilink")

### SATA Express原生物理介面

共有五種物理是SATA Express可用的，取決於裝置的用途：\[35\]

  - Host plug：即原生SATA Express物理介面，用於主機板、附加控制器（如[擴展介面卡](https://zh.wikipedia.org/wiki/介面卡 "wikilink")）上。與舊型SATA裝置無縫相容、不需要額外的適配器或轉換器的保守設計。\[36\]主機板一側的連接器可選擇連接兩個舊型SATA裝置或是一個SATA Express連接線的PCIe固態硬碟。而連接埠上的匯流排工作在PCIe模式還是SATA模式，取決於所連接的存儲裝置。\[37\]
  - Host cable receptacle：SATA Express資料連接線上的插頭，用於連接主機板上的Host plug插座，不相容於舊SATA插座。
  - Device cable receptacle：SATA Express資料連接線上的插頭，用於連接存儲裝置，相容舊型SATA插座，一個Device cable receptacle插座可插上一條舊SATA連接線與主機板的SATA插座連接，不過這樣的話裝置只會在SATA模式運作。
  - Device plug：使用於SATA Express存儲裝置上，這種連接埠是部分向下相容設計，可令裝置與多連結SAS（MultiLink SAS）或與下面提到的U.2主機板插頭配合使用。\[38\]然而，SATA Express在裝置與主機板連接後，需要裝置支援PCIe連接時方能開啟PCIe通道。
  - Host receptacle：與M.2類似的板上連接方式，不需要連接線。這種連接方式間接相容連接一個舊型SATA裝置。

這五種SATA Express物理連接器僅提供兩個PCIe通道（即PCIe ×2規格），畢竟一開始就是基於舊版SATA及SAS物理介面改造的保守設計，注重向下相容性和成本效益，以便降低推廣成本，而且就算因性能接受度問題（僅支援到PCIe ×2）沒有廠商願意推出搭載這類連接器的主機板或裝置，相容SATA介面的設計也能保證其可用性及重用性。

### SFF-8639/U.2/M.2

事實上SATA-IO並不滿足於讓SATA Express僅支援到PCIe ×2的規格。SFF-8639連接器規格（即後來的U.2），基於多連結SAS，可以達成PCIe ×4規格以及與[M.2](../Page/M.2.md "wikilink")相同的裝置支援性（通過不同的冗餘針腳位來分別支援SATA、PCIe ×4等規格），但採用線纜結構，與M.2互補作用，主要用於大容量固態存儲裝置。\[39\]\[40\]\[41\]\[42\]至2015年3月，一些廠商推出了使用U.2連接器、支援NVMe的固態硬碟產品（如Intel 750系列）\[43\]\[44\]\[45\]，預料本規格在性能上會獲得更廣的接受度，因為和M.2一樣可以使用PCIe ×4的規格，比原生SATA Express的高出一倍的PCIe通道，能達成最高約32Gbps（約4GB/s）的頻寬，同時保有SATA等舊型匯流排的間接相容性。因針腳定義相同，SATA Express也可直接使用M.2物理介面來實現板上連接，而市面上也有M.2與U.2的被動轉接器販售。\[46\]也有SATA Express裝置直接採用PCIe物理規格的例子。

下表簡略展示SATA Express不同連接器之間的相容度：

<table>
<caption>连接器兼容性[47]</caption>
<thead>
<tr class="header">
<th><p> </p></th>
<th><p>SATA Express<br />
主机线缆<br />
插座</p></th>
<th><p>SATA Express<br />
设备线缆<br />
插座</p></th>
<th><p>SATA Express<br />
主机插座</p></th>
<th><p>SATA线缆<br />
插座</p></th>
<th><p>U.2背板<br />
插座</p></th>
<th><p><br />
插座</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>SATA Express<br />
主机插头</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>SATA Express<br />
设备插头</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>SATA<br />
设备插头</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 相容度

SATA Express向下相容是裝置層級的，只要存儲裝置支援SATA均可使用；而PCIe模式，只要主機板晶片組/SoC有SATA Express控制器，也只需裝置支援即可正確開啟。不過無論是何種模式，仍然需要作業系統驅動程式的支援。

機械參數上，無論是原生SATA Express連接器還是U.2連接器，針腳的功能設定類似於[USB 3.0向下相容](../Page/USB_3.0.md "wikilink")[USB 2.0的做法](https://zh.wikipedia.org/wiki/USB_2.0 "wikilink")，原生SATA Express在兩個舊型SATA 7針連接器的基礎上另外新增了其它PCIe所需針腳位，也因此可讓舊型SATA資料傳輸線適配（最多插入兩個裝置）。\[48\]\[49\]而U.2則是採用與M.2類似的針腳定義，U.2需要額外的被動適配器才能與舊型SATA裝置連接。另外，現時不是所有的主機板都配備U.2連接埠，與M.2類似的，需要PCIe轉接卡（被動或主動的，無橋接晶片的被動介面卡一般用於純PCIe裝置，帶橋接晶片的主動介面卡一般用於轉接SATA連接埠裝置）；如果主機板上配備了M.2連接埠，除了使用M.2規格的裝置以外，也可通過被動轉接器使用U.2的裝置而無頻寬損失。\[50\]

軟體層面上，作業系統只要有AHCI[驅動程式即可開啟SATA](https://zh.wikipedia.org/wiki/驅動程式 "wikilink") Express的SATA模式（AHCI介面）存取舊型SATA裝置，或是通過AHCI介面存取SATA Express連接器的PCIe固態硬碟，與使用普通的SSD無甚區別。但是NVMe的支援上，則需要較新的作業系統才有內建的驅動程式支援，舊作業系統（包括[Windows 8.1及之前版本的](../Page/Windows_8.1.md "wikilink")、[Linux內核版本](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")3.3以前的、[FreeBSD](../Page/FreeBSD.md "wikilink") 9以前的、[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink") 10.10以前的）需要額外的驅動程式方能支援。\[51\]雖然一些支援NVMe的SSD有相容模式以便安裝舊版作業系統，不過像是Intel 600p這樣的SSD，本身無AHCI相容模式支援的，需要在載入NVMe驅動的情況下安裝舊版作業系統。

## 參見

  - [電腦裝置頻寬列表](../Page/電腦裝置頻寬列表.md "wikilink")
  - [M.2](../Page/M.2.md "wikilink")
  - [串列SCSI](../Page/串列SCSI.md "wikilink") (SAS)

## 備註

## 參考資料

## 外部連結

  - 官方網站： (SATA-IO)

  - [SSD 不卡彈，新介面 SATA Express 解開速度限制， 1GB_s 起跳兼容老 SATA](http://www.techbang.com/posts/16809-interface-sata-ssd-does-not-play-the-new-express-unlock-the-speed-limit-from-the-1gb-s-take-off-backward-compatible-with-older-sata-computer-king-115-special-report-1-x)

  - [LFCS: Preparing Linux for nonvolatile memory devices](https://lwn.net/Articles/547903/), [LWN.net](../Page/LWN.net.md "wikilink"), April 19, 2013, by Jonathan Corbet

  - [NVMe vs AHCI: Another Win for PCIe](http://www.anandtech.com/show/7843/testing-sata-express-with-asus/4), [AnandTech](https://zh.wikipedia.org/wiki/AnandTech "wikilink"), March 13, 2014, by Kristian Vatto

  - [Intel SSD DC P3700 Review: Understanding NVM Express](http://www.tomshardware.com/reviews/intel-ssd-dc-p3700-nvme,3858-2.html), [Tom's Hardware](https://zh.wikipedia.org/wiki/Tom's_Hardware "wikilink"), August 13, 2014, by Drew Riley

  - [PCIe SSD 101: An Overview of Standards, Markets and Performance](https://web.archive.org/web/20140202110152/http://www.snia.org/sites/default/files/SNIASSSIPCIe101WhitePaper1.12013.pdf), [SNIA](https://zh.wikipedia.org/wiki/Storage_Networking_Industry_Association "wikilink"), August 2013, archived from the original on February 2, 2014

  - US patent 20130294023, November 7, 2013, assigned to Raphael Gay

  - [MultiLink SAS presentations, press releases and roadmaps](http://scsita.org/library/multilink-sas/), [SCSI Trade Association](https://zh.wikipedia.org/wiki/SCSI_Trade_Association "wikilink")

[Category:2013年面世](https://zh.wikipedia.org/wiki/Category:2013年面世 "wikilink") [Category:计算机存储总线](https://zh.wikipedia.org/wiki/Category:计算机存储总线 "wikilink") [Category:固态计算机存储](https://zh.wikipedia.org/wiki/Category:固态计算机存储 "wikilink") [Category:Serial_ATA](https://zh.wikipedia.org/wiki/Category:Serial_ATA "wikilink") [Category:串行总线](https://zh.wikipedia.org/wiki/Category:串行总线 "wikilink")

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

47.
48.
49.
50.
51.