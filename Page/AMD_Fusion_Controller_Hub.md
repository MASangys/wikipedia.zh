[AMD_FCH-A88X.jpg](https://zh.wikipedia.org/wiki/File:AMD_FCH-A88X.jpg "fig:AMD_FCH-A88X.jpg") AMD **Fusion Controller Hub**（**FCH**），是[超微半導體推出的主機板](https://zh.wikipedia.org/wiki/超微半導體 "wikilink")[晶片組](https://zh.wikipedia.org/wiki/晶片組 "wikilink")，供AMD處理器使用。

## 技術概覽

以往的晶片組中，高速匯流排控制位於[北橋晶片](https://zh.wikipedia.org/wiki/北橋 "wikilink")，整合式[顯示核心為降低延時](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")，也會整合於北橋晶片上；而低速匯流排控制、時脈信號控制以及連接BIOS則由[南橋晶片負責](https://zh.wikipedia.org/wiki/南橋 "wikilink")。AMD在APU處理器晶片上，除了以往的[記憶體控制器](https://zh.wikipedia.org/wiki/記憶體控制器 "wikilink")、新加入的整合顯示核心以外，更整合北橋晶片上大部分的功能（如高速[PCI-E控制器等](https://zh.wikipedia.org/wiki/PCI-E "wikilink")），相當於由中央處理器接管控制所有高速匯流排。而餘下的南橋晶片仍舊負責較低速的外圍匯流排、BIOS溝通等功能，不過某些型號上仍然有通道數較少的PCIe匯流排控制器。AMD將AMD APU平台上餘下的這個「南橋」稱為Fusion Controller Hub（FCH），類似於[英特爾的Platform](https://zh.wikipedia.org/wiki/英特爾 "wikilink") Controller Hub（PCH，平台路徑控制器）。\[1\]\[2\]

至於晶片組與中央處理器的連接，使用基於PCIe技術的UMI匯流排或直接以4通道規格的PCIe匯流排來達成，頻寬最大可達PCIe 3.0 x4級別，因頻寬需求不高，並沒有使用以往AMD常用的[HyperTransport](../Page/HyperTransport.md "wikilink")匯流排。\[3\]

## 晶片組產品

首個FCH產品線是晶片代號「Hudson」，於2011年初隨[AMD加速處理器一同發布的](https://zh.wikipedia.org/wiki/AMD加速處理器 "wikilink")**A系列晶片組**，開始僅有A55、A75、A68M等型號，\[4\]\[5\]隨後幾乎每一代APU處理器產品推出都有A系列晶片組的新型號加入，像是第二代APU「Trinity」發表後推出的A85X、第4代APU「Kaveri」發表後推出的A88X等等。儘管如此，截至第5代APU「Bristol Ridge」推出前，主機板廠商為舊型號的晶片組搭配上新的CPU插座以及配套的BIOS均可支援最新的APU型號。目前最新的晶片組型號是隨著第5代APU悄然發表時推出市場、命名方式變更的300系列，最初有B350、A320兩款型號，還有數款外圍裝置支援較少的X/A300晶片組。\[6\]\[7\]\[8\]

### A系列（Socket FMx/FSx平台）

首代核心代號「Llano」之AMD APU、第二代代號「Trinity」、「Richland」之AMD APU均採用「Hudson」核心代號的FCH\[9\]，自第三代代號「Kaveri」AMD APU開始，推出代號「Bolton」之FCH。\[10\]支援的插座有[桌上型平台的](../Page/桌上型電腦.md "wikilink")[Socket FM1](https://zh.wikipedia.org/wiki/Socket_FM1 "wikilink")、[FM2](../Page/Socket_FM2.md "wikilink")、[FM2+](../Page/Socket_FM2+.md "wikilink")，\[11\]以及[行動型平台的](https://zh.wikipedia.org/wiki/行動平臺 "wikilink")[Socket FS1等](https://zh.wikipedia.org/wiki/Socket_FS1 "wikilink")。支援SATA（最高至6.0Gb/s，支援AHCI）及RAID 0/1/10/5、USB 3.0、PCIe、PCI及DisplayPort等顯示輸出控制（內建[RAMDAC](https://zh.wikipedia.org/wiki/RAMDAC "wikilink")）、網路適配器、[SD卡](../Page/SD卡.md "wikilink")、HD音效及紅外接收等。\[12\]\[13\]\[14\]

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>開發代號</p></th>
<th><p>UMI</p></th>
<th><p><a href="../Page/SATA.md" title="wikilink">SATA</a></p></th>
<th><p><a href="../Page/USB.md" title="wikilink">USB</a><br />
3.0+2.0+1.1</p></th>
<th><p><a href="../Page/RAID.md" title="wikilink">RAID</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/網路適配器" title="wikilink">NIC</a></p></th>
<th><p><a href="../Page/外设组件互连标准.md" title="wikilink">33 MHz PCI</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Secure_Digital" title="wikilink">SD支援</a><sup><a href="https://zh.wikipedia.org/wiki/#fn_1" title="wikilink">1</a></sup></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/RAMDAC" title="wikilink">VGA DAC</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">TDP</a> (<a href="../Page/瓦特.md" title="wikilink">W</a>)</p></th>
<th><p>功能特性 / 備註</p></th>
<th><p>部件號</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>A55T</p></td>
<td><p>Hudson-M2T[15]</p></td>
<td><p>×2 Gen.1</p></td>
<td><p>1× 3Gbit/s<br />
AHCI 1.1</p></td>
<td><p>0 + 8 + 0</p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="5" </p></td>
<td><p>SDIO</p></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>A50M</p></td>
<td><p>Hudson-M1[16]</p></td>
<td><p>×4 Gen.1[17]</p></td>
<td><p>6× 6Gbit/s<br />
<a href="../Page/AHCI.md" title="wikilink">AHCI</a>1.2</p></td>
<td><p>0 + 14 + 2</p></td>
<td></td>
<td><p>5.9[18]</p></td>
<td><p>~920mW idle</p></td>
<td><p>100-CG2198[19]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>A60M</p></td>
<td><p>Hudson-M2[20]</p></td>
<td><p>×4 Gen.1 +DP</p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
<td></td>
<td><p>4.7</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>A68M</p></td>
<td><p>Hudson-M3L[21]</p></td>
<td><p>2× 6Gbit/s<br />
AHCI1.2</p></td>
<td><p>2 + 8 + 0</p></td>
<td></td>
<td><p>~750mW idle</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>A70M</p></td>
<td><p>Hudson-M3[22]</p></td>
<td><p>6× 6Gbit/s<br />
AHCI1.2</p></td>
<td><p>4 + 10 + 2</p></td>
<td></td>
<td><p>首個原生<br />
USB 3.0控制器[23]</p></td>
<td><p>100-CG2389[24]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
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
<tr class="odd">
<td><p>A45</p></td>
<td><p>Hudson-D1[25]</p></td>
<td><p>×4 Gen.2[26]</p></td>
<td><p>6× 3Gbit/s<br />
AHCI1.1</p></td>
<td><p>0 + 14 + 2</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>A55</p></td>
<td><p>Hudson-D2[27]</p></td>
<td><p>×4 Gen.2 +DP</p></td>
<td><p>rowspan="5" </p></td>
<td></td>
<td><p>rowspan=7 </p></td>
<td><p>rowspan=7 </p></td>
<td><p>rowspan=7 </p></td>
<td><p>7.6</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>A58</p></td>
<td><p>Bolton-D2[28]</p></td>
<td><p>×4 Gen2</p></td>
<td><p>6× 3Gbit/s<br />
AHCI1.3</p></td>
<td><p>0 + 14 + 2</p></td>
<td></td>
<td><p>7.6</p></td>
<td></td>
<td><p>218-0844023</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>A68H</p></td>
<td><p>Bolton-D2H[29]</p></td>
<td><p>4× 6Gbit/s<br />
AHCI1.3</p></td>
<td><p>2 + 10 + 2</p></td>
<td></td>
<td></td>
<td><p>xHCI 1.0</p></td>
<td><p>218-0844029-00</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>A75</p></td>
<td><p>Hudson-D3[30]</p></td>
<td><p>×4 Gen.2 +DP</p></td>
<td><p>6× 6Gbit/s<br />
AHCI1.2</p></td>
<td><p>4 + 10 + 2</p></td>
<td></td>
<td><p>7.8[31]</p></td>
<td><p>首個原生<br />
USB 3.0控制器[32]</p></td>
<td><p>100-CG2386[33]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>A78</p></td>
<td><p>Bolton-D3[34]</p></td>
<td><p>6× 6Gbit/s<br />
AHCI1.3</p></td>
<td></td>
<td><p>7.8</p></td>
<td><p>xHCI 1.0</p></td>
<td><p>218-0844014</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>A85X</p></td>
<td><p>Hudson-D4[35]</p></td>
<td><p>8× 6Gbit/s<br />
AHCI1.2</p></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td><p>7.8</p></td>
<td><p>USB 3.0 (xHCI 0.96)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>A88X</p></td>
<td><p>Bolton-D4[36]</p></td>
<td><p>×4 Gen2</p></td>
<td><p>8× 6Gbit/s<br />
AHCI1.3</p></td>
<td></td>
<td><p>7.8</p></td>
<td><p>USB 3.0 (xHCI 1.0)</p></td>
<td><p>218-0844016</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>A55E</p></td>
<td><p>Hudson-E1[37]</p></td>
<td><p>×4 Gen.2</p></td>
<td><p>6× 6Gbit/s<br />
AHCI1.2</p></td>
<td><p>0 + 14 + 2</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>5.9[38]</p></td>
<td></td>
<td><p>100-CG2293[39]</p></td>
</tr>
<tr class="odd">
<td><p>A77E[40]</p></td>
<td><p>Bolton-E4[41]</p></td>
<td><p>1-, 2-, or 4-lane<br />
2 or 5GB/s</p></td>
<td><p>6× 6Gbit/s<br />
AHCI1.3</p></td>
<td><p>4 + 10 + 2</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>4-lane PCIe 2.0</p></td>
<td><p>218-0844020-00</p></td>
</tr>
<tr class="even">
<td><p>型號</p></td>
<td><p>開發代號</p></td>
<td><p>UMI</p></td>
<td><p>SATA</p></td>
<td><p>USB<br />
3.0+2.0+1.1</p></td>
<td><p>RAID</p></td>
<td><p>NIC</p></td>
<td><p>33MHz PCI</p></td>
<td><p>SD<sup><a href="https://zh.wikipedia.org/wiki/#fn_1" title="wikilink">1</a></sup></p></td>
<td><p>VGA DAC</p></td>
<td><p>TDP (W)</p></td>
<td><p>功能特性 / 備註</p></td>
<td><p>部件號</p></td>
</tr>
</tbody>
</table>

<cite id="fn_1">[Note 1:](https://zh.wikipedia.org/wiki/#fn_1_back "wikilink")</cite> 支援[SDHC](https://zh.wikipedia.org/wiki/Secure_Digital#SDHC "wikilink")，容量最大32GB，4 pins @ 50MHz.

代號:\[42\]  UMI:

### 300系列

[AMD_B350.jpg](https://zh.wikipedia.org/wiki/File:AMD_B350.jpg "fig:AMD_B350.jpg") AMD自2016年發表的新系列單晶片晶片組，首先推出的是B350和X370，接著推出了入門型的A320和A300，它們均由祥碩科技（ASMedia）設計，支援[USB 3.1](../Page/USB_3.1.md "wikilink")、PCIe 2.0、SATA、[SATA Express](../Page/SATA_Express.md "wikilink")、[NVMe以及RAID](../Page/NVM_Express.md "wikilink") 0/1/10等，其中型號X370還支援XFR動態時脈調整\[43\]（不過實際操作中，所有AM4/TR4處理器插槽的主機板都有XFR支援、所有的Ryzen處理器也有XFR支援，只是XFR的時脈範圍差異較大\[44\]）。晶片組提供的SATA Express、NVMe走PCIe匯流排，可使用SATA Express連接埠、M.2/U.2連接埠等固態硬碟連接埠，也可使用PCIe連接器。晶片組原生並不提供[網路適配器](https://zh.wikipedia.org/wiki/網路適配器 "wikilink")、[PCI](../Page/外设组件互连标准.md "wikilink")、[SD卡](https://zh.wikipedia.org/wiki/Secure_Digital "wikilink")、[VGA-DAC的支援](https://zh.wikipedia.org/wiki/RAMDAC "wikilink")，但可通過其PCIe匯流排或USB（板上線路）外掛相關功能的晶片來獲得（一般主機板廠商的做法）。

基於Zen微架構的[伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")/[工作站](../Page/工作站.md "wikilink")平台，主機板晶片組是選配選項，晶片組商品名為X399晶片組，於2017年8月推出，採用支援多處理器的[Socket SP3](../Page/Socket_SP3.md "wikilink")（伺服器/工作站）或物理規格相同但沒有多處理器支援的[Socket TR4](../Page/Socket_TR4.md "wikilink")（單CPU工作站/發燒級桌上型電腦，供Ryzen ThreadRipper系列使用），兩者均為[LGA封裝的插座](https://zh.wikipedia.org/wiki/平面網格陣列封裝 "wikilink")，接替此前使用的[Socket C32和](../Page/Socket_C32.md "wikilink")[G34](../Page/Socket_G34.md "wikilink")。一般桌上型電腦使用[Socket AM4插座](../Page/Socket_AM4.md "wikilink")。\[45\]在AMD公佈Socket SP3和TR4之前，曾經傳出有所謂「X390」、「X399」晶片組的消息，\[46\]但被發現是從舊主機板的結構圖上修改而來，純屬子虛烏有。\[47\]

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>與CPU/APU的<br />
<a href="../Page/PCI_Express.md" title="wikilink">PCIe鏈路</a></p></th>
<th><p><a href="../Page/PCI_Express.md" title="wikilink">PCIe</a></p></th>
<th><p><a href="../Page/SATA.md" title="wikilink">SATA</a> +<br />
<a href="../Page/SATA_Express.md" title="wikilink">SATA Express</a>/<a href="../Page/NVM_Express.md" title="wikilink">NVMe x2</a></p></th>
<th><p><a href="../Page/USB.md" title="wikilink">USB</a><br />
3.1+3.0+2.0/1.1</p></th>
<th><p><a href="../Page/RAID.md" title="wikilink">RAID</a></p></th>
<th><p>XFR支援</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">TDP</a> (<a href="https://zh.wikipedia.org/wiki/Watt" title="wikilink">W</a>)</p></th>
<th><p>製程</p></th>
<th><p>功能特性 / 備註</p></th>
<th><p>部件號</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>晶片組<br />
PCIe 2.0通道數量</p></td>
<td><p><a href="../Page/AMD_CrossFire.md" title="wikilink">CrossFire</a><br />
支援</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Scalable_Link_Interface" title="wikilink">SLI支援</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Socket TR4平台</p></td>
<td></td>
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
<tr class="odd">
<td><p>X399</p></td>
<td><p>x4 Gen 3.0</p></td>
<td><p>8×</p></td>
<td></td>
<td></td>
<td><p>4 + 2</p></td>
<td><p>2 + 14 + 6</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Socket AM4平台</p></td>
<td></td>
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
<tr class="odd">
<td><p>X370</p></td>
<td><p>rowspan =5|x4 Gen 3.0</p></td>
<td><p>8×</p></td>
<td><p>rowspan='2' </p></td>
<td></td>
<td><p>6 + 2/1</p></td>
<td><p>2 + 10 + 6</p></td>
<td></td>
<td><p>rowspan='2' </p></td>
<td><p>rowspan =3| 6.8</p></td>
<td><p>rowspan =5| 55nm[48]</p></td>
</tr>
<tr class="even">
<td><p>B350</p></td>
<td><p>6×</p></td>
<td><p>rowspan=4 </p></td>
<td><p>4 + 2/1</p></td>
<td><p>2 + 6 + 6</p></td>
<td></td>
<td><p>主流級</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>A320</p></td>
<td><p>4×</p></td>
<td><p>rowspan=3 </p></td>
<td><p>1 + 6 + 6</p></td>
<td></td>
<td></td>
<td><p>入門級</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>X300</p></td>
<td><p>2 + 0/1</p></td>
<td><p>0 + 4 + 0</p></td>
<td></td>
<td></td>
<td><p>rowspan=2 </p></td>
<td><p>效能級小型主機</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>A300</p></td>
<td></td>
<td></td>
<td><p>經濟型小型主機</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
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

資料來源：\[49\]\[50\]\[51\]\[52\]\[53\]\[54\]\[55\]\[56\]

### 400系列

AMD 400系列晶片組包括X470和B450兩款晶片，於2018年6月隨同基於Zen+微架構的Ryzen 7 2700X、Ryzen 5 2600X一同發表並推出市場。相較於300系列，400系列主要是新增了StoreMI特性，此特性可允許使用者利用固態硬碟作為傳統硬碟的快取和高速存儲空間之用。\[57\]

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>與CPU/APU的<br />
<a href="../Page/PCI_Express.md" title="wikilink">PCIe鏈路</a></p></th>
<th><p><a href="../Page/PCI_Express.md" title="wikilink">PCIe</a></p></th>
<th><p><a href="../Page/SATA.md" title="wikilink">SATA</a> +<br />
<a href="../Page/SATA_Express.md" title="wikilink">SATA Express</a>/<a href="../Page/NVM_Express.md" title="wikilink">NVMe x2</a></p></th>
<th><p><a href="../Page/USB.md" title="wikilink">USB</a><br />
3.1+3.0+2.0/1.1</p></th>
<th><p><a href="../Page/RAID.md" title="wikilink">RAID</a></p></th>
<th><p>XFR支援</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">TDP</a> (<a href="https://zh.wikipedia.org/wiki/Watt" title="wikilink">W</a>)</p></th>
<th><p>製程</p></th>
<th><p>功能特性 / 備註</p></th>
<th><p>部件號</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>晶片組<br />
PCIe 2.0通道數量</p></td>
<td><p><a href="../Page/AMD_CrossFire.md" title="wikilink">CrossFire</a><br />
支援</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Scalable_Link_Interface" title="wikilink">SLI支援</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Socket AM4平台</p></td>
<td></td>
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
<tr class="odd">
<td><p>X470</p></td>
<td><p>rowspan =2|x4 Gen 3.0</p></td>
<td><p>8×</p></td>
<td><p>rowspan='2' </p></td>
<td></td>
<td><p>6 + 2/1</p></td>
<td><p>2 + 10 + 6</p></td>
<td></td>
<td><p>rowspan='2' </p></td>
<td><p>rowspan =2| 4.8</p></td>
<td><p>rowspan =2| 55nm[58]</p></td>
</tr>
<tr class="even">
<td><p>B450</p></td>
<td><p>6×</p></td>
<td></td>
<td><p>4 + 2/1</p></td>
<td><p>2 + 6 + 6</p></td>
<td></td>
<td><p>主流級</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td></td>
<td></td>
</tr>
</tbody>
</table>

資料來源：\[59\]\[60\]\[61\]

### 500系列

AMD 500 系列晶片組目前僅有上市 X570 晶片，於2019年7月隨同基於 Ryzen 3000 系列 CPU 一同發表並推出。相較於 400 系列，500 系列支援 PCI-e 4.0 標準，另外由於其發熱量相較於 300、400 系列晶片組來的大，因此絕大多數主板廠都在 X570 晶片組上採用主動式散熱 (風扇) 的散熱片設計。\[62\]

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>與CPU/APU的<br />
<a href="../Page/PCI_Express.md" title="wikilink">PCIe鏈路</a></p></th>
<th><p><a href="../Page/PCI_Express.md" title="wikilink">PCIe</a></p></th>
<th><p><a href="../Page/SATA.md" title="wikilink">SATA</a> +<br />
<a href="../Page/SATA_Express.md" title="wikilink">SATA Express</a>/<a href="../Page/NVM_Express.md" title="wikilink">NVMe x2</a></p></th>
<th><p><a href="../Page/USB.md" title="wikilink">USB</a><br />
3.1+3.0+2.0/1.1</p></th>
<th><p><a href="../Page/RAID.md" title="wikilink">RAID</a></p></th>
<th><p>XFR支援</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">TDP</a> (<a href="https://zh.wikipedia.org/wiki/Watt" title="wikilink">W</a>)</p></th>
<th><p>製程</p></th>
<th><p>功能特性 / 備註</p></th>
<th><p>部件號</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>晶片組<br />
PCIe 2.0通道數量</p></td>
<td><p><a href="../Page/AMD_CrossFire.md" title="wikilink">CrossFire</a><br />
支援</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Scalable_Link_Interface" title="wikilink">SLI支援</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Socket AM4平台</p></td>
<td></td>
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
<tr class="odd">
<td><p>X570</p></td>
<td><p>x4 Gen 4.0</p></td>
<td></td>
<td><p>rowspan='2' </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan='2' </p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
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



## 參見

  - [AMD加速處理器](https://zh.wikipedia.org/wiki/AMD加速處理器 "wikilink")
  - [PCH](https://zh.wikipedia.org/wiki/PCH "wikilink")

## 參考資料

## 外部連結

  - [AMD A-Series晶片組](http://www.amd.com/zh-tw/products/chipsets/a-series)
  - [AMD Socket AM4平台](http://www.amd.com/zh-tw/products/chipsets/am4)

[Category:AMD晶片組](https://zh.wikipedia.org/wiki/Category:AMD晶片組 "wikilink") [Category:主機板](https://zh.wikipedia.org/wiki/Category:主機板 "wikilink")

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

15. **M**: 筆記型電腦平台使用

16.
17. UMI ×4 Gen. 1 代表基於[PCIe 1.1](https://zh.wikipedia.org/wiki/PCI_Express#PCI_Express_1.1 "wikilink")×4鏈路，提供共1GB/s的頻寬

18. <http://www.amd.com/us/Documents/43838_Embedded_Solutions_Selection_Brief_web.pdf>

19.
20.
21.
22.
23. [Deux chipsets pour l'APU Llano sont certifiés USB 3.0](http://www.pcinpact.com/actu/news/62708-amd-llano-hudson-usb-30-fusion.htm)

24.
25. **D**: 桌上型電腦平台使用

26. UMI ×4 Gen. 2 代表基於[PCIe 2.0](https://zh.wikipedia.org/wiki/PCI_Express#PCI_Express_2.0 "wikilink")×4鏈路，提供共2GB/s的頻寬

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
37. **E**: 嵌入式平台使用

38.
39.
40. <http://support.amd.com/TechDocs/53830%20A77E%20Databook.pdf>

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

52.

53.

54.

55.

56.

57.

58.
59.
60.

61.

62.