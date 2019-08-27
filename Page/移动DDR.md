[Tolino_shine_-_controller_board_-_Samsung_K4X2G323PD-8GD8-1997.jpg](https://zh.wikipedia.org/wiki/File:Tolino_shine_-_controller_board_-_Samsung_K4X2G323PD-8GD8-1997.jpg "fig:Tolino_shine_-_controller_board_-_Samsung_K4X2G323PD-8GD8-1997.jpg")

**移动DDR**（英文：**Mobile DDR**）（也称**MDDR**、**Low Power DDR**或**LPDDR**）是[DDR SDRAM的一種](../Page/DDR_SDRAM.md "wikilink")，專門用於[移動式電子產品](../Page/移动设备.md "wikilink")，例如[手机等](https://zh.wikipedia.org/wiki/手机 "wikilink")。

[DDR内存从](https://zh.wikipedia.org/wiki/DDR "wikilink")[DDR](../Page/DDR_SDRAM.md "wikilink")、[DDR2](../Page/DDR2_SDRAM.md "wikilink")[、DDR3发展到](../Page/DDR3_SDRAM.md "wikilink")[DDR4](../Page/DDR4_SDRAM.md "wikilink")，频率更高、电压更低的同时卻也讓反應時間不断变大，改变着内存子系统。而[DDR4最重要的使命是提高频率和带宽](../Page/DDR4_SDRAM.md "wikilink")，每个针脚都可以提供2Gbps(256MB/s)的带宽，拥有高达4266MHz的频率，内存容量最大可达到128GB，运行电压正常可降低到1.1V\~1.2V。

相对于[DDR内存](https://zh.wikipedia.org/wiki/DDR "wikilink"),[MDDR具有低功耗](https://zh.wikipedia.org/wiki/MDDR "wikilink")、高可靠性的特点，目前韩国[三星电子与](https://zh.wikipedia.org/wiki/三星电子 "wikilink")[美光科技](../Page/美光科技.md "wikilink")（Micron Technology）掌握该项技术。[Apple](https://zh.wikipedia.org/wiki/Apple "wikilink") [iPad](https://zh.wikipedia.org/wiki/iPad "wikilink"), [Samsung Galaxy Tab](https://zh.wikipedia.org/wiki/Samsung_Galaxy_Tab "wikilink") 以及 [Motorola Droid X都使用LPDDR](https://zh.wikipedia.org/wiki/Motorola_Droid_X "wikilink")\[1\]。

MDDR的运行电压（工作电压）相比DDR的标准电压要低，从第一代LPDDR到如今的LPDDR4，每一代LPDDR都使内部读取大小和外部传输速度加倍。其中[LPDDR4可提供](../Page/DDR4_SDRAM.md "wikilink")32Gbps的带宽，输入/输出接口数据传输速度最高可达3200Mbps，电压降到了1.1V。

## LPDDR2

一个新的[JEDEC](../Page/JEDEC.md "wikilink")标准[JESD209-2F](http://www.jedec.org/user/register?destination=node/16037)定义了low-power DDR介面标准。它与DDR1或[DDR2 SDRAM并不兼容](../Page/DDR2_SDRAM.md "wikilink")，但类似：

  - LPDDR2-S2: 2n prefetch memory (像 DDR1)，
  - LPDDR2-S4: 4n prefetch memory (像 DDR2)，或是
  - LPDDR2-N: 非易失性（[NAND](https://zh.wikipedia.org/wiki/NAND "wikilink")）内存。

低功耗狀態基本相似，LPDDR，一些額外的部分陣列更新選項。

<table>
<caption>LPDDR2 命令编码[2]</caption>
<thead>
<tr class="header">
<th><p>CK</p></th>
<th><p>CA0<br />
()</p></th>
<th><p>CA1<br />
()</p></th>
<th><p>CA2<br />
()</p></th>
<th><p>CA3</p></th>
<th><p>CA4</p></th>
<th><p>CA5</p></th>
<th><p>CA6</p></th>
<th><p>CA7</p></th>
<th><p>CA8</p></th>
<th><p>CA9</p></th>
<th><p>操作</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>↑</p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p>—</p></td>
<td><p>NOP</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>↓</p></td>
<td><p>—</p></td>
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
<td><p>↑</p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p>—</p></td>
<td><p>預先充電所有的 banks</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>↓</p></td>
<td><p>—</p></td>
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
<td><p>↑</p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p>—</p></td>
<td><p>BA2</p></td>
<td><p>BA1</p></td>
<td><p>BA0</p></td>
<td><p>預先充電一個 bank</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>↓</p></td>
<td><p>—</p></td>
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
<td><p>↑</p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p>A30</p></td>
<td><p>A31</p></td>
<td><p>A32</p></td>
<td><p>BA2</p></td>
<td><p>BA1</p></td>
<td><p>BA0</p></td>
<td><p>Preactive<br />
(LPDDR2-N only)</p></td>
</tr>
<tr class="even">
<td><p>↓</p></td>
<td><p>A20</p></td>
<td><p>A21</p></td>
<td><p>A22</p></td>
<td><p>A23</p></td>
<td><p>A24</p></td>
<td><p>A25</p></td>
<td><p>A26</p></td>
<td><p>A27</p></td>
<td><p>A28</p></td>
<td><p>A29</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>↑</p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p>—</p></td>
<td><p>突發中止</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>↓</p></td>
<td><p>—</p></td>
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
<td><p>↑</p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p><em>reserved</em></p></td>
<td><p>C1</p></td>
<td><p>C2</p></td>
<td><p>BA2</p></td>
<td><p>BA1</p></td>
<td><p>BA0</p></td>
<td><p>讀<br />
(AP=auto-precharge)</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>↓</p></td>
<td><p>AP</p></td>
<td><p>C3</p></td>
<td><p>C4</p></td>
<td><p>C5</p></td>
<td><p>C6</p></td>
<td><p>C7</p></td>
<td><p>C8</p></td>
<td><p>C9</p></td>
<td><p>C10</p></td>
<td><p>C11</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>↑</p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p><em>reserved</em></p></td>
<td><p>C1</p></td>
<td><p>C2</p></td>
<td><p>BA2</p></td>
<td><p>BA1</p></td>
<td><p>BA0</p></td>
<td><p>寫<br />
(AP=auto-precharge)</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>↓</p></td>
<td><p>AP</p></td>
<td><p>C3</p></td>
<td><p>C4</p></td>
<td><p>C5</p></td>
<td><p>C6</p></td>
<td><p>C7</p></td>
<td><p>C8</p></td>
<td><p>C9</p></td>
<td><p>C10</p></td>
<td><p>C11</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>↑</p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p>R8</p></td>
<td><p>R9</p></td>
<td><p>R10</p></td>
<td><p>R11</p></td>
<td><p>R12</p></td>
<td><p>BA2</p></td>
<td><p>BA1</p></td>
<td><p>BA0</p></td>
<td><p>激活<br />
(R0–14=Row address)</p></td>
</tr>
<tr class="even">
<td><p>↓</p></td>
<td><p>R0</p></td>
<td><p>R1</p></td>
<td><p>R2</p></td>
<td><p>R3</p></td>
<td><p>R4</p></td>
<td><p>R5</p></td>
<td><p>R6</p></td>
<td><p>R7</p></td>
<td><p>R13</p></td>
<td><p>R14</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>↑</p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p>A15</p></td>
<td><p>A16</p></td>
<td><p>A17</p></td>
<td><p>A18</p></td>
<td><p>A19</p></td>
<td><p>BA2</p></td>
<td><p>BA1</p></td>
<td><p>BA0</p></td>
<td><p>激活<br />
(LPDDR2-N only)</p></td>
</tr>
<tr class="even">
<td><p>↓</p></td>
<td><p>A5</p></td>
<td><p>A6</p></td>
<td><p>A7</p></td>
<td><p>A8</p></td>
<td><p>A9</p></td>
<td><p>A10</p></td>
<td><p>A11</p></td>
<td><p>A12</p></td>
<td><p>A13</p></td>
<td><p>A14</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>↑</p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p>—</p></td>
<td><p>更新所有的 banks<br />
(LPDDR2-Sx only)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>↓</p></td>
<td><p>—</p></td>
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
<td><p>↑</p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p>—</p></td>
<td><p>更新一個 bank<br />
(Round-robin addressing)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>↓</p></td>
<td><p>—</p></td>
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
<td><p>↑</p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>H</strong></p></td>
<td><p>MA0</p></td>
<td><p>MA1</p></td>
<td><p>MA2</p></td>
<td><p>MA3</p></td>
<td><p>MA4</p></td>
<td><p>MA5</p></td>
<td><p>Mode register read<br />
(MA0–7=Address)</p></td>
</tr>
<tr class="even">
<td><p>↓</p></td>
<td><p>MA6</p></td>
<td><p>MA7</p></td>
<td><p>—</p></td>
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
<td><p>↑</p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p><strong>L</strong></p></td>
<td><p>MA0</p></td>
<td><p>MA1</p></td>
<td><p>MA2</p></td>
<td><p>MA3</p></td>
<td><p>MA4</p></td>
<td><p>MA5</p></td>
<td><p>Mode register write<br />
(OP0–7=Data)</p></td>
</tr>
<tr class="even">
<td><p>↓</p></td>
<td><p>MA6</p></td>
<td><p>MA7</p></td>
<td><p>OP0</p></td>
<td><p>OP1</p></td>
<td><p>OP2</p></td>
<td><p>OP3</p></td>
<td><p>OP4</p></td>
<td><p>OP5</p></td>
<td><p>OP6</p></td>
<td><p>OP7</p></td>
<td></td>
</tr>
</tbody>
</table>

列位址（Column address）C0 bit從未轉讓，並假定為零。 突發傳輸（Burst transfers）從而始終在偶數地址開始。

LPDDR2也有一個低電平有效的chip select（高時，一切都是NOP）和時鐘（clock）開啟CKE信號，操作像SDRAM。

  - 如果晶片被激活（active），它凍結（freeze）到位。
  - 如果該命令是一個NOP（CS低或CA0 - 2 = HHH），晶片空閒。
  - 如果該命令是一個更新命令（CA0 - 2 = LLH），晶片進入自更新狀態。
  - 如果該命令是一個突發終止（CA0 - 2 = HHL），晶片進入深斷電狀態。 （完全復位序列時，需要離開。）

## LPDDR3

2012年5月，[JEDEC](../Page/JEDEC.md "wikilink")公佈JESD209-3低功耗記憶裝置標準。比起LPDDR2，LPDDR3提供更高的數據傳輸速率、更高的頻寬與功率效率。LPDDR3可達到1600 MT/s的數據傳輸速率，並利用關鍵的新技術write-leveling、command/address training、選擇性ODT（On Die Termination）與低I/O電容。LPDDR3支援PoP封裝（package-on-package）與離散封裝兩種形式。

## LPDDR4

2013年3月14日，[JEDEC](../Page/JEDEC.md "wikilink")固態技術協會舉辦會議，探討未來移動裝置的新標準，如LPDDR4。

### LPDDR4X

[三星電子](../Page/三星電子.md "wikilink")提出最新的LPDDR4標準，与LPDDR4相同，只是通过将I / O电压降低到0.6 V而不是1.1 V来节省额外的功耗，也就是更省电。

## LPDDR5

2017年，JEDEC正在研究LP-DDR5記憶裝置標準。儘管負責制定記憶體標準的JEDEC組織尚未發表LPDDR5的正式規格，但三星已經完成8Gbit LPDDR5模組原型的功能測試與驗證。

## 注釋

## 外部連結

  - [Samsung](http://www.samsung.com/global/business/semiconductor/products/dram/Products_MobileSDRAM.html)
  - [Micron](https://web.archive.org/web/20080520121425/http://www.micron.com/products/dram/mobiledram)
  - [Elpida](https://web.archive.org/web/20110829044651/http://www.elpida.com/en/products/mobile.html)

[分類:電腦記憶體](https://zh.wikipedia.org/wiki/分類:電腦記憶體 "wikilink")

1.  [Anandtech Samsung Galaxy Tab - The AnandTech Review](http://www.anandtech.com/show/4062/samsung-galaxy-tab-the-anandtech-review), December 23, 2010
2.