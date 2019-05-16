**串行ATA**（**Serial ATA: Serial Advanced Technology
Attachment**）是一種[電腦](https://zh.wikipedia.org/wiki/電腦 "wikilink")[匯流排](https://zh.wikipedia.org/wiki/匯流排 "wikilink")，負責[主機板和大容量儲存裝置](https://zh.wikipedia.org/wiki/主機板 "wikilink")（如[硬碟及](https://zh.wikipedia.org/wiki/硬碟 "wikilink")[光碟機](https://zh.wikipedia.org/wiki/光碟機 "wikilink")）之間的數據傳輸，主要用於個人電腦。串行ATA與[串列SCSI](../Page/串列SCSI.md "wikilink")（SAS:
Serial Attached SCSI）的兩者排線相容，SATA硬碟可接上SAS介面。

2000年11月由「Serial ATA Working
Group」團體所制定，取代舊式[PATA](../Page/高技術配置.md "wikilink")（Parallel
ATA或舊稱IDE）接口的舊式[硬盘](../Page/硬盘.md "wikilink")，因采用串行方式传输数据而得名。在數據傳輸上這一方面，SATA的速度比以往更加快捷，並支持[热插拔](https://zh.wikipedia.org/wiki/热插拔 "wikilink")，使電腦運作時可以插上或拔除硬件。另一方面，SATA总线使用嵌入式[時脈訊號](https://zh.wikipedia.org/wiki/時脈訊號 "wikilink")，具备比以往更强的纠错能力，能对传输指令（不仅是数据）进行检查，如果发现错误会自动矫正，提高数据传输的可靠性。不過，SATA和以往最明顯的分別，是使用較细的排線，有利機箱內部的空氣流通，某程度上增加整個平台的穩定性。

現時，SATA分別有SATA 1.5Gbit/s、SATA 3Gb/s和SATA 6Gb/s三種規格。2013年推出更快速的SATA
Express規格。

## 特色

### 頻寬速度換算

需要注意的是，在一些新的技术标准中，为了防止数据在高速传输中出错而加入校验码，比如PCI-E 2.0、USB 3.0和SATA
3.0中采用的是[8/10编码](https://zh.wikipedia.org/wiki/8b/10b "wikilink")，每10位编码中只有8位是真实数据，这时单位换算就不再是1:8而是1:10，USB
3.0的5Gbps速度实际上是理论500MB/s而非理论625MB/s，SATA 6Gbps的理论速度则是600MB/s而非750MB/s。

所謂3Gb/s的算法，3000MHz的頻率x每次發送一個數據x 80%(8b/10b的編碼) / 8 bits per byte =
300Mbytes/s，同理1.5Gb/s也是這樣可算成150MB/s，也就是一般我們在買硬碟時，有時候會看到SATA 150MB/s /
300MB/s，有時候又會看到SATA 1.5Gb/s / 3Gb/s的緣故。

以USB 3.0而言，它擁有5Gbps的頻寬，每次發送一個數據x 80%(8b/10b的編碼) / 8 bits per byte =
500Mbytes/s，所以USB 3.0的頻寬比SATA 3.0的600MB/s還來的小。

| 版本           | 頻寬      | 理論速度     | 編碼        |
| ------------ | ------- | -------- | --------- |
| SATA Express | 16Gb/s  | 1969MB/s | 128b/130b |
| SATA 3.0     | 6Gb/s   | 600MB/s  | 8b/10b    |
| SATA 2.0     | 3Gb/s   | 300MB/s  | 8b/10b    |
| SATA 1.0     | 1.5Gb/s | 150MB/s  | 8b/10b    |
|              |         |          |           |

### 排線和電源線

| Pin \#                                                                                                    | 功能     |
| --------------------------------------------------------------------------------------------------------- | ------ |
| 1                                                                                                         | Ground |
| 2                                                                                                         | A+（發送） |
| 3                                                                                                         | A−（發送） |
| 4                                                                                                         | Ground |
| 5                                                                                                         | B−（接收） |
| 6                                                                                                         | B+（接收） |
| 7                                                                                                         | Ground |
| [SATA_Data_Cable.jpg](https://zh.wikipedia.org/wiki/File:SATA_Data_Cable.jpg "fig:SATA_Data_Cable.jpg") |        |
| <small>SATA排線</small>                                                                                     |        |

傳統的Parallel
ATA使用單模信號放大系統「single-end-signal-amplified-system」。在這種系統中，雜訊會隨著正常信號一起傳輸、放大，不易被抑制；在高速時尤其嚴重，為了有效的減少雜訊的干擾，我們只好使用高達5V的電壓來傳送正常訊號，使大電壓的正常訊號蓋過小電壓的雜訊信號。雖然大的電壓可以有效的抑制雜訊，但是大的電壓同時也表示驅動電路的生產成本將因此上升，大電壓更不利於高速傳輸系統的設計和製造，高達5V的傳輸電壓限制追求高速和低成本的可能性。

和Parallel ATA相比，新的Serial
ATA使用[差分信號系統](https://zh.wikipedia.org/wiki/差分信號 "wikilink")（differential-signal-amplified-system）。這種系統能有效的將雜訊從正常訊號中濾除，良好的雜訊濾除能力使得SATA只要使用低電壓操作即可，和Parallel
ATA高達5V的傳輸電壓相比，SATA只要0.5V（500mv）的峰對峰值電壓即可操作於更高的速度之上。比較正確的說法是：峰對峰值『差模電壓』。

和Parallel ATA的5V驅動電壓相比，0.5V的SATA系統節省電力，其驅動IC的生產成本也較為便宜。

有種排線附有小金屬片可以卡住插座，比較不會發生不小心將排線拔出的問題。

### 進階主機控制器介面

SATA支援[進階主機控制器介面功能](../Page/AHCI.md "wikilink")，可讓SATA儲存裝置啟用進階SATA功能，例如[NCQ及](https://zh.wikipedia.org/wiki/NCQ "wikilink")[熱插拔](https://zh.wikipedia.org/wiki/熱插拔 "wikilink")。

## 版本

### SATA 1.0

SATA 1.0 於 2003 年 1 月 7
日推出，為第一代SATA介面，坊間的非官方名稱為SATA-1\[1\]，传输速度为1.5Gbit/s。

### SATA 2.0

SATA 2.0 於 2004
年正式推出，坊間的非官方名稱為SATA-2（SATA-II），符合ATA-7規範，傳輸速度可達3.0Gbit/s。這顯示SATA的速度提升是以幾何級數增長，這點和PATA的一級級算術級數增長是不同的。

SATA 3Gb/s比SATA 1.5Gb/s進步的地方在於：

  - 3.0Gb/s的高傳輸速度
  - 支持真正的SATA指令排序（NCQ）
  - SATA 3Gb/s資料線長度最多2m。SATA 1.5Gb/s只是1m，PATA更短到50cm
  - 全新的圍擋式接口更穩固。

### SATA 3.0

[SATA_6Gbs_Logo.gif](https://zh.wikipedia.org/wiki/File:SATA_6Gbs_Logo.gif "fig:SATA_6Gbs_Logo.gif")
SATA
3.0於2009年5月26日完成最終規格發布，比上一代提升一倍速率至6Gb/s，此外增加多項新技術，包含新增NCQ指令以改良傳輸技術，並減低傳輸時所需耗電量。

依據Serial ATA Revison
3.0規格白皮書，[AHCI底下改善](../Page/AHCI.md "wikilink")（NCQ）串行指令NCQ的指令數目、NCQ的指令優先權及演算法SATA
3.0亦會增加，包括為即時性的資源提供優先處理，主要用於影像及音像傳輸方面。此外SATA
3.0同時會為正被系統處理中的資源作優先安排，大大提升系統的執行效率。

為了降低耗電，SATA 3.0採用全新INCITS
ATA8-ACS標準，不但可相容舊有的SATA裝置、改良傳輸訊號技術，亦大幅減低了SATA2.0傳輸時所需功耗。

針對筆記型電腦（NB）市場對體積的需求，SATA 3.0提供了較一般SATA2.0接口細小的LIF介面（Low Insertion Force
Connector），專門針對1.8吋的儲存裝置，包括僅厚7mm光碟機。

2011年7月18日SATA-IO公佈SATA3.1規格，3.1版帶來諸多特性，例如節電測量，TRIM性能提升和一些雜項調整。

3.1版帶來一個新的mini SATA接口，主要用於為移動計算設備增強互操作性，Zero-Power Optical Disk
Drive（ODD）的發明減少閒置光碟機的耗電量，用新的電源管理策略降低整個系統的電力需求。TRIM改進允許SATA固態硬碟在不影響性能的前提下自行修剪，改善了SSD的性能，同時還帶來了讓主機識別設備的硬件設備功能，提升SATA的兼容性。

另一個值得注意的是SATA通用存儲模塊（USM）和熱插拔SATA驅動器模塊，它讓SATA硬碟的熱插拔機制更為成熟，目前希捷GoFlex部分型號的硬碟已經開始支持。

### SATA 3.1

於2011年7月發布。引入改變這些功能：\[2\]\[3\]

  - mSATA，SATA在移動計算設備的固態硬碟，外型與 Mini PCI Express 相同（但兩者並不相容）。\[4\]
  - 零功耗光碟機，閒置時的SATA光碟機可以不消耗電力。
  - 排隊TRIM指令，提高固態硬碟的性能。
  - 所需的鏈接電源管理，減少整體的電力需求。
  - 硬件控制功能，使設備功能的主機標識。
  - 通用存儲模塊（USM），用於無纜插件（槽）供電存儲消費電子設備的新標準。\[5\]\[6\]

### SATA 3.2

為解決[固態硬碟的資料傳送瓶頸](https://zh.wikipedia.org/wiki/固態硬碟 "wikilink")，[國際序列式ATA組織正著手制定下一代串列ATA的標準](../Page/國際序列式ATA組織.md "wikilink")——SATA
3.2。SATA
Express最大傳送速率為16Gb/s，使用兩條[PCIe](https://zh.wikipedia.org/wiki/PCIe "wikilink")
3.0總線連接SSD。連接埠和制式向下相容前三代SATA的標準。\[7\]\[8\]\[9\]\[10\]\[11\]

### SATA 3.3

於2016年2月22號提出，主要為優化SMR技術，將硬碟儲存密度提升到25%，還可將SATA遠程斷電（Power Disable）。

## eSATA

External Serial ATA的略称，是为面向外接驱动器而制定的Serial ATA
1.0a的扩展规格。虽然规模比较小，但已经有相对应的产品在市面流通。它最大的缺點是沒有電力供應，競爭對手[USB](../Page/USB.md "wikilink"),
[FireWire](https://zh.wikipedia.org/wiki/FireWire "wikilink"),
[Thunderbolt都能傳輸](../Page/Thunderbolt.md "wikilink")[數據及](https://zh.wikipedia.org/wiki/數據 "wikilink")[電力](../Page/電力.md "wikilink")。這使得eSATA硬碟需要連接一個獨立[變壓器才可運作](https://zh.wikipedia.org/wiki/變壓器 "wikilink")。

  - 为了防止误接，eSATA的接口形状与SATA的接口形状是不一样的
  - 连接线的最大长度为2m
  - 支持热插拔
  - 传输速度可以达到现在主流的[USB
    2.0的传输速度的](https://zh.wikipedia.org/wiki/USB_2.0 "wikilink")2倍以上，但依然比[USB
    3.0為慢](../Page/USB_3.0.md "wikilink")
  - 提高接頭的插拔耐用度

<File:ESATA> Logo.png|官方標誌 <File:SATA2> und eSATA-Stecker.jpg|左：SATA
右：eSATA
[File:Connector_esata_IMGP6050_wp.jpg|eSATA插座](File:Connector_esata_IMGP6050_wp.jpg%7CeSATA插座)
<File:Esatap> port.JPG|eSATAp插座結合了eSATA和USB

為了解決供電問題，[SATA-IO於](../Page/國際序列式ATA組織.md "wikilink")2008年推出了eSATAp
(Power over eSATA)，它結合了eSATA的七個針腳及USB
2.0的四個針腳，利用USB針腳提供5V及12V（可選）電壓。此插座主要在硬碟外接盒中使用，既可以插入eSATA，也可以插入USB。

## mSATA

[MSATA_SSD_vs._2.5"_SATA_drive.JPG](https://zh.wikipedia.org/wiki/File:MSATA_SSD_vs._2.5"_SATA_drive.JPG "fig:MSATA_SSD_vs._2.5\"_SATA_drive.JPG")
下: 2.5" SATA硬盘\]\] mSATA (mini-SATA)是迷你版本SATA接口，外型和電子-{介面}-與mini
[PCI-E完全相同](https://zh.wikipedia.org/wiki/PCI-E "wikilink")，但電子信號不同，兩者互不相容。mSATA接口多用于[固态硬盘](../Page/固态硬盘.md "wikilink")，适用于需要尺寸较小的存储器的场合（例如[Ultrabook](../Page/Ultrabook.md "wikilink")）。

mSATA固态硬盘形似mini PCI-E扩展卡，尺寸很小，有助于节省机器内部空间。官方標準為MO-300
mSATA，也有自定长度的mSATA固态硬盘。

## SATA与其他规格的比较

<table>
<thead>
<tr class="header">
<th><p>Name</p></th>
<th><p>原始頻寬</p></th>
<th><p>data-sort-type="number" | 傳輸速度</p></th>
<th><p>排線最長長度</p></th>
<th><p>電源</p></th>
<th><p>連結的裝置數量</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/#eSATA" title="wikilink">eSATA</a></p></td>
<td><p>data-sort-value="6" | 6 Gbit/s</p></td>
<td><p>data-sort-value="600" | 600 MB/s</p></td>
<td><p>2 m with eSATA <a href="https://zh.wikipedia.org/wiki/Host_bus_adapter" title="wikilink">HBA</a> (1 m with a passive adapter)</p></td>
<td></td>
<td><p>1 個 (15 with a <a href="https://zh.wikipedia.org/wiki/port_multiplier" title="wikilink">port multiplier</a>)</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/#eSATA" title="wikilink">eSATAp</a></p></td>
<td><p>data-sort-value="3" | 3 Gbit/s</p></td>
<td><p>data-sort-value="300" | 300 MB/s</p></td>
<td><p>2 m with eSATA <a href="https://zh.wikipedia.org/wiki/Host_bus_adapter" title="wikilink">HBA</a> (1 m with a passive adapter)</p></td>
<td><p>[12]</p></td>
<td><p>1 個 (15 with a port multiplier)</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/M.2.md" title="wikilink">M.2 / NGFF</a></p></td>
<td><p>data-sort-value="32" | 32 GT/s (PCI Express x4 3.0)</p></td>
<td><p>data-sort-value="3.94" | 3.94 GB/s</p></td>
<td><p>?</p></td>
<td></td>
<td><p>每插座 1 個</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/#SATA_Express_(16_Gbit/s,_1969_MB/s)" title="wikilink">SATA Express</a></p></td>
<td><p>data-sort-value="16" | 16 Gbit/s</p></td>
<td><p>data-sort-value="1969" | 1.97 GB/s</p></td>
<td><p>1 m</p></td>
<td></td>
<td><p>每條線 1 個</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/#SATA_3.2_(16_Gbit/s,_1969_MB/s)" title="wikilink">SATA revision 3.2</a></p></td>
<td><p>data-sort-value="16" | 16 Gbit/s</p></td>
<td><p>data-sort-value="1969" | 1.97 GB/s</p></td>
<td><p>1 m</p></td>
<td></td>
<td><p>1 個 (15 with a port multiplier)</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/#SATA_3.0_(6_Gbit/s,_600_MB/s)" title="wikilink">SATA revision 3.0</a></p></td>
<td><p>data-sort-value="6" | 6 Gbit/s</p></td>
<td><p>data-sort-value="600" | 600 MB/s[13]</p></td>
<td><p>1 m</p></td>
<td></td>
<td><p>1 個 (15 with a port multiplier)</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/#SATA_2.0_(3_Gbit/s,_300_MB/s)" title="wikilink">SATA revision 2.0</a></p></td>
<td><p>data-sort-value="3" | 3 Gbit/s</p></td>
<td><p>data-sort-value="300" | 300 MB/s</p></td>
<td><p>1 m</p></td>
<td></td>
<td><p>1 個 (15 with a port multiplier)</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/#SATA_1.0_(1.5_Gbit/s,_150_MB/s)" title="wikilink">SATA revision 1.0</a></p></td>
<td><p>data-sort-value="1.5" | 1.5 Gbit/s</p></td>
<td><p>data-sort-value="150" | 150 MB/s[14]</p></td>
<td><p>1 m</p></td>
<td></td>
<td><p>每條線 1 個</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Parallel_ATA" title="wikilink">PATA (IDE)</a> 133</p></td>
<td><p>data-sort-value="1.067" | 1.064 Gbit/s</p></td>
<td><p>data-sort-value="133.3" | 133.3 MB/s</p></td>
<td><p>0.46 m (18 in)</p></td>
<td></td>
<td><p>2 個</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Serial_Attached_SCSI" title="wikilink">SAS-3</a></p></td>
<td><p>data-sort-value="12" | 12 Gbit/s</p></td>
<td><p>data-sort-value="1200" | 1.2 GB/s</p></td>
<td><p>10 m</p></td>
<td></td>
<td><p>1 － 8 個 (&gt; 65k with expanders)</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Serial_Attached_SCSI" title="wikilink">SAS-2</a></p></td>
<td><p>data-sort-value="6" | 6 Gbit/s</p></td>
<td><p>data-sort-value="600" | 600 MB/s</p></td>
<td><p>10 m</p></td>
<td></td>
<td><p>1 個 (&gt; 65k with expanders)</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Serial_Attached_SCSI" title="wikilink">SAS 300</a></p></td>
<td><p>data-sort-value="3" | 3 Gbit/s</p></td>
<td><p>data-sort-value="300" | 300 MB/s</p></td>
<td><p>10 m</p></td>
<td></td>
<td><p>1 個 (&gt; 65k with expanders)</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Serial_Attached_SCSI" title="wikilink">SAS 150</a></p></td>
<td><p>data-sort-value="1.5" | 1.5 Gbit/s</p></td>
<td><p>data-sort-value="150" | 150 MB/s</p></td>
<td><p>10 m</p></td>
<td></td>
<td><p>1 個 (&gt; 65k with expanders)</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/IEEE_1394.md" title="wikilink">IEEE 1394 (FireWire)</a> 3200</p></td>
<td><p>data-sort-value="3.144" | 3.144 Gbit/s</p></td>
<td><p>data-sort-value="393" | 393 MB/s</p></td>
<td><p>100 m (more with special cables)</p></td>
<td></td>
<td><p>63 (with a hub)</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/IEEE_1394.md" title="wikilink">IEEE 1394 (FireWire)</a> 800</p></td>
<td><p>data-sort-value="{{#expr:786/1024}}" | 786 Mbit/s</p></td>
<td><p>data-sort-value="98.25" | 98.25 MB/s</p></td>
<td><p>100 m[15]</p></td>
<td></td>
<td><p>63 (with a hub)</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/IEEE_1394.md" title="wikilink">IEEE 1394 (FireWire)</a> 400</p></td>
<td><p>data-sort-value="{{#expr:393/1024}}" | 393 Mbit/s</p></td>
<td><p>data-sort-value="49.13" | 49.13 MB/s</p></td>
<td><p>4.5 m[16][17]</p></td>
<td></td>
<td><p>63 (with a hub)</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Universal_Serial_Bus" title="wikilink">USB</a> 3.1</p></td>
<td><p>data-sort-value="10" | 10 Gbit/s</p></td>
<td><p>data-sort-value="1212" | 1.21 GB/s</p></td>
<td><p>3 m</p></td>
<td><p>[18]</p></td>
<td><p>127 (with a hub)</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Universal_Serial_Bus" title="wikilink">USB</a> 3.0</p></td>
<td><p>data-sort-value="5" | 5 Gbit/s</p></td>
<td><p>data-sort-value="400" | 400 MB/s or more (protocol overhead, flow control, framing excluded) <ref>{{Cite book</p></td>
<td><p>title=Universal Serial Bus Specification Revision 3.0</p></td>
<td><p>page=75 (4–4.11)</p></td>
<td><p>url=<a href="http://www.usb.org/developers/docs/usb_30_spec_122012.zip">http://www.usb.org/developers/docs/usb_30_spec_122012.zip</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Universal_Serial_Bus" title="wikilink">USB</a> 2.0</p></td>
<td><p>data-sort-value="{{#expr:480/1000}}" | 480 Mbit/s</p></td>
<td><p>data-sort-value="35" | 35 MB/s</p></td>
<td><p>5 m[19]</p></td>
<td></td>
<td><p>127 (with a hub)[20]</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Universal_Serial_Bus" title="wikilink">USB</a> 1.1</p></td>
<td><p>data-sort-value="{{#expr:12/1000}}" | 12 Mbit/s</p></td>
<td><p>data-sort-value="1.5" | 1.5 MB/s</p></td>
<td><p>3 m</p></td>
<td></td>
<td><p>127 (with a hub)[21]</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/SCSI" title="wikilink">SCSI</a> Ultra-320</p></td>
<td><p>data-sort-value="2.56" | 2.56 Gbit/s</p></td>
<td><p>data-sort-value="320" | 320 MB/s</p></td>
<td><p>12 m</p></td>
<td></td>
<td><p>15 (plus the Host Bus Adapter/Host)</p></td>
</tr>
<tr class="even">
<td><p>10GFC <a href="https://zh.wikipedia.org/wiki/Fibre_Channel" title="wikilink">Fibre Channel</a></p></td>
<td><p>data-sort-value="10.52" | 10.52 Gbit/s</p></td>
<td><p>data-sort-value="1195" | 1.195 GB/s</p></td>
<td><p>2 m – 50 km</p></td>
<td></td>
<td><p>126 (16,777,216 with switches)</p></td>
</tr>
<tr class="odd">
<td><p>4GFC <a href="https://zh.wikipedia.org/wiki/Fibre_Channel" title="wikilink">Fibre Channel</a></p></td>
<td><p>data-sort-value="4" | 4.25 Gbit/s</p></td>
<td><p>data-sort-value="398" | 398 MB/s</p></td>
<td><p>12 m</p></td>
<td></td>
<td><p>126 (16,777,216 with switches)</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/InfiniBand" title="wikilink">InfiniBand</a><br />
Quad Rate</p></td>
<td><p>data-sort-value="10" | 10 Gbit/s</p></td>
<td><p>data-sort-value="{{#expr:0.98*1024}}" | 0.98 GB/s</p></td>
<td><p>5 m (copper)[22][23] &lt;10 km (fiber)</p></td>
<td></td>
<td><p>One with <a href="https://zh.wikipedia.org/wiki/Point-to-point_(telecommunications)" title="wikilink">point-to-point</a>, many with <a href="https://zh.wikipedia.org/wiki/switched_fabric" title="wikilink">switched fabric</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Thunderbolt.md" title="wikilink">Thunderbolt</a></p></td>
<td><p>data-sort-value="10" | 10 Gbit/s</p></td>
<td><p>data-sort-value="{{#expr:1.22*1024}}" | 1.22 GB/s</p></td>
<td><p>3 m (copper)<br />
100 m (fiber)</p></td>
<td><p>(copper only)</p></td>
<td><p>7 個</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Thunderbolt.md" title="wikilink">Thunderbolt 2</a></p></td>
<td><p>data-sort-value="20" | 20 Gbit/s</p></td>
<td><p>data-sort-value="{{#expr:2.44*1024}}" | 2.44 GB/s</p></td>
<td><p>3 m (copper)<br />
100 m (fiber)</p></td>
<td><p>(copper only)</p></td>
<td><p>7 個</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Thunderbolt.md" title="wikilink">Thunderbolt 3</a></p></td>
<td><p>data-sort-value="40" | 40 Gbit/s</p></td>
<td><p>data-sort-value="{{#expr:4.88*1024}}" | 4.88 GB/s</p></td>
<td><p>3 m (copper)<br />
100 m (fiber)</p></td>
<td><p>(copper only)</p></td>
<td><p>7 個</p></td>
</tr>
</tbody>
</table>

與 PATA 不同，SATA 和 eSATA
都支援[熱插拔](https://zh.wikipedia.org/wiki/熱插拔 "wikilink")，但此功能需要主機、裝置和操作系统的支援。基本上所有
SATA 裝置（硬碟）都支援熱插拔（基於裝置的需要），絕大部分的 SATA 主機適配器都支援此指令。\[24\]

## 註解

## 參考資料

## 外部链接

  - [SATA-IO Official Website](http://www.serialata.org/)
  - [SATA測試實驗室](http://www.serialata.org/testlabs.asp)

## 相關條目

  - [ATA](../Page/高技術配置.md "wikilink")
  - [串列SCSI](../Page/串列SCSI.md "wikilink")
  - [進階主機控制器介面](../Page/AHCI.md "wikilink")
  - [原生指令排序](../Page/原生指令排序.md "wikilink")
  - [電腦裝置頻寬列表](../Page/電腦裝置頻寬列表.md "wikilink")

[Category:串行总线](https://zh.wikipedia.org/wiki/Category:串行总线 "wikilink")
[Category:计算机总线](https://zh.wikipedia.org/wiki/Category:计算机总线 "wikilink")
[Category:主板](https://zh.wikipedia.org/wiki/Category:主板 "wikilink")

1.

2.

3.

4.

5.

6.

7.  [SATA3也落后了? SATA新接口标准将到来](http://vga.zol.com.cn/346/3462421.html) -
    zol.com.cn

8.  [打破传输瓶颈SATA
    Express接口标准即将登场](http://news.mydrivers.com/1/251/251408.htm)
    - mydrivers.com

9.  [SATA的下一代「SATA
    Express」](http://www.coolaler.com/showthread.php/271253-SATA%E7%9A%84%E4%B8%8B%E4%B8%80%E4%BB%A3%E3%80%8CSATA-Express%E3%80%8D)
    - coolaler.com

10. [Speedy 8Gbit, 16Gbit SATA Express systems coming this
    year](http://www.computerworld.com/s/article/9235229/Speedy_8Gbit_16Gbit_SATA_Express_systems_coming_this_year)
    - computerworld.com

11. [1](http://www.sata-io.org/zh-trad/?lang=zh-trad) - Serial ATA國際組織

12.

13.

14.

15.

16.
17. 16 cables can be daisy chained up to 72 m

18.

19. USB hubs can be daisy chained up to 25 m

20.
21.
22.

23.

24.