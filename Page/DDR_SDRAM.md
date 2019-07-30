**双倍数据率同步動態隨機存取記憶體**（，簡稱**DDR SDRAM**）為具有的[SDRAM](../Page/SDRAM.md "wikilink")，其資料傳輸速度為系統[時脈的兩倍](https://zh.wikipedia.org/wiki/時脈 "wikilink")，由於速度增加，其傳輸效能優於傳統的SDRAM。

DDR SDRAM 在系统时钟的上升沿和下降沿都可以进行数据传输。

[JEDEC](../Page/JEDEC.md "wikilink")为DDR存储器设立速度规範\[1\]，并分为以下两个部分：按内存芯片分类和按内存模块分类。

## 規格

SDRAM在一個時鐘周期内只传输一次資料，它是在时钟上升期進行資料传输；而DDR则是一個时钟周期内可传输两次資料，也就是在时钟的上升期和下降期各传输一次資料。

### 芯片和模块

<table>
<tbody>
<tr class="odd">
<td><p>標準名稱</p></td>
<td><p>I/O 匯流排時脈<br />
<small>(<a href="https://zh.wikipedia.org/wiki/MHz" title="wikilink">MHz</a>)</small></p></td>
<td><p>週期<br />
<small>(<a href="https://zh.wikipedia.org/wiki/納秒" title="wikilink">ns</a>)</small></p></td>
<td><p>記憶體時脈<br />
<small>(<a href="https://zh.wikipedia.org/wiki/MHz" title="wikilink">MHz</a>)</small></p></td>
<td><p>數據速率<br />
<small>(MT/s)</small></p></td>
<td><p>傳輸方式</p></td>
<td><p>模組名稱</p></td>
<td><p>極限傳輸率<br />
<small>(<a href="https://zh.wikipedia.org/wiki/MB" title="wikilink">MB</a>/s)</small></p></td>
</tr>
<tr class="even">
<td><p>DDR-200</p></td>
<td><p>100</p></td>
<td><p>10</p></td>
<td><p>100</p></td>
<td><p>200</p></td>
<td><p>並列傳輸</p></td>
<td><p>PC-1600</p></td>
<td><p>1600</p></td>
</tr>
<tr class="odd">
<td><p>DDR-266</p></td>
<td><p>133</p></td>
<td><p>7.5</p></td>
<td><p>133</p></td>
<td><p>266</p></td>
<td><p>並列傳輸</p></td>
<td><p>PC-2100</p></td>
<td><p>2100</p></td>
</tr>
<tr class="even">
<td><p>DDR-333</p></td>
<td><p>166</p></td>
<td><p>6</p></td>
<td><p>166</p></td>
<td><p>333</p></td>
<td><p>並列傳輸</p></td>
<td><p>PC-2700</p></td>
<td><p>2700</p></td>
</tr>
<tr class="odd">
<td><p>DDR-400</p></td>
<td><p>200</p></td>
<td><p>5</p></td>
<td><p>200</p></td>
<td><p>400</p></td>
<td><p>並列傳輸</p></td>
<td><p>PC-3200</p></td>
<td><p>3200</p></td>
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
</tr>
</tbody>
</table>

注意：上面列出的數據都是由JEDEC JESD79F指定。所有RAM的上市規格的數據率不一定是JEDEC規範，往往是製造商自行最佳化，使用更嚴格的公差或overvolted晶片。

DDR SDRAM 之間有很大的設計上的差異，設計不同的時鐘頻率，例如，PC-1600被設計運行在100 MHz，至於PC-2100被設計運行在133 MHz。

DDR SDRAM 的模塊用於桌上型電腦，被稱為[DIMM](../Page/DIMM.md "wikilink")s，有184隻引腳（而不是168針SDRAM，或240針腳的DDR2 SDRAM），並可以從不同notches數目來辨別（DDR SDRAM，有一個，SDRAM，SDRAM DIMMs的有兩個）。筆記本電腦上的DDR SDRAM 的SO-DIMMs有200隻引腳，引腳相同數量的DDR2的SO-DIMMs。這兩種規格的缺口也非常相似，如果不能確定正確的匹配，必須小心插入。

### 記憶晶片

  - DDR-200：DDR-SDRAM 記憶晶片在 100MHz 下運行
  - DDR-266：DDR-SDRAM 記憶晶片在 133MHz 下運行
  - DDR-333：DDR-SDRAM 記憶晶片在 166MHz 下運行
  - DDR-400：DDR-SDRAM 記憶晶片在 200MHz 下運行（JEDEC制定的DDR最高規格）
  - DDR-500：DDR-SDRAM 記憶晶片在 250MHz 下運行（非JEDEC制定的DDR規格）
  - DDR-600：DDR-SDRAM 記憶晶片在 300MHz 下運行（非JEDEC制定的DDR規格）
  - DDR-700：DDR-SDRAM 記憶晶片在 350MHz 下運行（非JEDEC制定的DDR規格）

\-{H|zh:芯片;zh-hans:芯片;zh-hant:晶片;zh-cn:芯片;zh-tw:晶片;zh-hk:晶片;zh-sg:晶片;zh-mo:晶片;}-

### 芯片模塊

為了要增加內存的容量和帶寬，芯片會利用模塊結合。例如，有關 DIMMs 的64位元bus需要8個 8位的芯片並行處理。與常見的位址線（address lines）的多個芯片被稱為memory rank。這個術語被引入，是要避免與芯片內部row和bank的混亂。

  - PC-1600記憶體{模塊}指工作在 100MHz 下的DDR-200內存芯片，其擁有 1.600[GB](https://zh.wikipedia.org/wiki/Gibibyte "wikilink")/s 的頻寬
  - PC-2100記憶體模塊指工作在 133MHz 下的DDR-266內存芯片，其擁有 2.133GB/s 的頻寬
  - PC-2700記憶體模塊指工作在 166MHz 下的DDR-333內存芯片，其擁有 2.667GB/s 的頻寬
  - PC-3200記憶體模塊指工作在 200MHz 下的DDR-400內存芯片，其擁有 3.200GB/s 的頻寬

## 高密度比低密度

PC3200是使用帶寬 3200 MB / s的DDR - 400芯片設計，在200 MHz的DDR SDRAM 由於 PC3200內存的上升和下降時鐘邊沿的數據傳輸，其有效的時鐘速率為 400 MHz。

## 替換

<table>
<thead>
<tr class="header">
<th><p>DDR SDRAM<br />
Standard</p></th>
<th><p>Bus clock<br />
(MHz)</p></th>
<th><p>Internal rate<br />
(MHz)</p></th>
<th><p>Prefetch<br />
(min burst)</p></th>
<th><p>Transfer Rate<br />
(MT/s)</p></th>
<th><p>Voltage</p></th>
<th><p><a href="../Page/DIMM.md" title="wikilink">DIMM</a><br />
pins</p></th>
<th><p><a href="../Page/SO-DIMM.md" title="wikilink">SO-DIMM</a><br />
pins</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/MicroDIMM" title="wikilink">MicroDIMM</a><br />
pins</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>DDR</strong> </p></td>
<td><p>100–200 </p></td>
<td><p>100–200</p></td>
<td><p>2n</p></td>
<td><p>200–400 </p></td>
<td><p>2.5/2.6</p></td>
<td><p>184</p></td>
<td><p>200</p></td>
<td><p>172</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/DDR2_SDRAM.md" title="wikilink">DDR2</a></p></td>
<td><p>200–533 </p></td>
<td><p>100–266</p></td>
<td><p>4n</p></td>
<td><p>400–1066</p></td>
<td><p>1.8</p></td>
<td><p>240</p></td>
<td><p>200</p></td>
<td><p>214</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/DDR3_SDRAM.md" title="wikilink">DDR3</a></p></td>
<td><p>400–1066</p></td>
<td><p>100–266</p></td>
<td><p>8n</p></td>
<td><p>800–2400</p></td>
<td><p>1.5</p></td>
<td><p>240</p></td>
<td><p>204</p></td>
<td><p>214</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/DDR4_SDRAM.md" title="wikilink">DDR4</a></p></td>
<td><p>800–1200</p></td>
<td><p>200–300</p></td>
<td><p>8n</p></td>
<td><p>1600–5067</p></td>
<td><p>1.2</p></td>
<td><p>288</p></td>
<td><p>260</p></td>
<td><p>214</p></td>
</tr>
</tbody>
</table>

（DDR1）已被DDR2 SDRAM取代，其中有一些修改，以允許更高的時脈頻率。與DDR2的競爭是Rambus 公司的XDR DRAM 。DDR3 SDRAM是一個新的標準，提供更高的性能和新功能。

DDR 預取緩衝器（prefetch buffer）深度為2位元，而DDR2採用4位元。雖然DDR2的時鐘速率高於DDR，但整體性能並沒有提升，主要是由於DDR2高延遲（high latency）。直到2004年DDR2才有明顯的提升。

## MDDR

MDDR是Mobile DDR的縮寫，在一些行動電子設備中使用，像是使用移動電話、手持設備、數字音頻播放器等。通過包括降低電源電壓和先進的刷新選項（advanced refresh options）技術，MDDR可以實現更高的電源效率。

## 公式

利用下列公式，就可以計算出DDR SDRAM時脈。

[DDR](https://zh.wikipedia.org/wiki/DDR "wikilink") I/II[記憶體運作](https://zh.wikipedia.org/wiki/記憶體 "wikilink")[時脈](https://zh.wikipedia.org/wiki/時脈 "wikilink")：實際時脈\*2。 （由於兩筆資料同時傳輸，200MHz記憶體的時脈會以400MHz運作。）

記憶體頻寬=記憶體速度\*8 [Byte](https://zh.wikipedia.org/wiki/Byte "wikilink")

標準[公式](https://zh.wikipedia.org/wiki/公式 "wikilink")：記憶體[除頻係數](https://zh.wikipedia.org/wiki/除頻係數 "wikilink")=時脈／200→\*速算法：[外頻](https://zh.wikipedia.org/wiki/外頻 "wikilink")\*（[除頻頻率](https://zh.wikipedia.org/wiki/除頻 "wikilink")／同步頻率） （使用此公式將會導致4%的誤差）

## 注釋

## 外部链接

  - [amd官方网](http://www.amd.com/us-en/Processors/DevelopWithAMD/0,,30_2252_869_893,00.html)
  - [Northwest Logic DDR Phy datasheet](https://web.archive.org/web/20080821101233/http://www.nwlogic.com/docs/ASIC_DDR_PHY.pdf)

## 參见

  - [雙通道](https://zh.wikipedia.org/wiki/雙通道 "wikilink")
  - [電腦記憶體](../Page/電腦記憶體.md "wikilink")
  - [SDR SDRAM](https://zh.wikipedia.org/wiki/SDR_SDRAM "wikilink")
  - [DDR2 SDRAM](../Page/DDR2_SDRAM.md "wikilink")
  - [DDR3 SDRAM](../Page/DDR3_SDRAM.md "wikilink")
  - [DDR4 SDRAM](../Page/DDR4_SDRAM.md "wikilink")
  - [DDR5 SDRAM](../Page/DDR5_SDRAM.md "wikilink")
  - [GDDR6](../Page/GDDR6.md "wikilink")
  - [EDO DRAM](https://zh.wikipedia.org/wiki/EDO_DRAM "wikilink")
  - [FB-DIMM](../Page/FB-DIMM.md "wikilink")

[el:Μνήμη τυχαίας προσπέλασης\#Τύποι μνήμης RAM](https://zh.wikipedia.org/wiki/el:Μνήμη_τυχαίας_προσπέλασης#Τύποι_μνήμης_RAM "wikilink") [fi:DRAM\#DDR SDRAM](https://zh.wikipedia.org/wiki/fi:DRAM#DDR_SDRAM "wikilink")

[Category:電腦記憶體](https://zh.wikipedia.org/wiki/Category:電腦記憶體 "wikilink") [Category:已被淘汰的電腦硬體](https://zh.wikipedia.org/wiki/Category:已被淘汰的電腦硬體 "wikilink")

1.