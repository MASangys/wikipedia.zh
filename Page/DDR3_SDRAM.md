**第三代雙倍資料率同步動態隨機存取記憶體**（Double-Data-Rate Three Synchronous Dynamic
Random Access Memory，一般稱為DDR3
SDRAM），是一種電腦[記憶體規格](https://zh.wikipedia.org/wiki/記憶體 "wikilink")。它屬於[SDRAM家族的記憶體產品](../Page/SDRAM.md "wikilink")，提供相較於[DDR2
SDRAM更高的運行效能與更低的電壓](../Page/DDR2_SDRAM.md "wikilink")，是DDR2
SDRAM（四倍資料率同步動態隨機存取記憶體）的後繼者（增加至八倍）。

## DDR3 SDRAM技術概論

[8go_de_Ram_ddr3_1600mhz_G.SKILL.jpg](https://zh.wikipedia.org/wiki/File:8go_de_Ram_ddr3_1600mhz_G.SKILL.jpg "fig:8go_de_Ram_ddr3_1600mhz_G.SKILL.jpg")
[Hynix_HMT325S6BFR8C-H9_on_MacBook_Pro_mainboard_20120518.jpg](https://zh.wikipedia.org/wiki/File:Hynix_HMT325S6BFR8C-H9_on_MacBook_Pro_mainboard_20120518.jpg "fig:Hynix_HMT325S6BFR8C-H9_on_MacBook_Pro_mainboard_20120518.jpg")
DDR3 SDRAM為了更省電、傳輸效率更快，使用[SSTL
15的](https://zh.wikipedia.org/wiki/SSTL_15 "wikilink")[I/O介面](https://zh.wikipedia.org/wiki/I/O "wikilink")，運作I/O電壓是1.5V，採用[CSP](https://zh.wikipedia.org/wiki/CSP "wikilink")、[FBGA封裝方式包裝](https://zh.wikipedia.org/wiki/FBGA "wikilink")，除了延續DDR2
SDRAM的[ODT](https://zh.wikipedia.org/wiki/ODT "wikilink")、[OCD](https://zh.wikipedia.org/wiki/OCD "wikilink")、[Posted
CAS](https://zh.wikipedia.org/wiki/Posted_CAS "wikilink")、[AL控制方式外](https://zh.wikipedia.org/wiki/AL "wikilink")，另外新增更為精進的[CWD](https://zh.wikipedia.org/wiki/CWD "wikilink")、[Reset](../Page/Reset.md "wikilink")、[ZQ](https://zh.wikipedia.org/wiki/ZQ "wikilink")、[SRT](https://zh.wikipedia.org/wiki/SRT "wikilink")、[PASR功能](https://zh.wikipedia.org/wiki/PASR "wikilink")。

CWD是作為寫入延遲之用，Reset提供超省電功能的命令，可以讓DDR3
SDRAM記憶體顆粒電路停止運作、進入超省電[待命模式](https://zh.wikipedia.org/wiki/待命 "wikilink")，ZQ則是一個新增的終端[電阻校準功能](https://zh.wikipedia.org/wiki/電阻 "wikilink")，新增這個線路腳位提供了ODCE（On
Die Calibration Engine）用來校準ODT（On Die
Termination）內部終端電阻，新增SRT（Self-Reflash
Temperature）可程式化溫度控制記憶體[時脈功能](https://zh.wikipedia.org/wiki/時脈 "wikilink")，SRT的加入讓記憶體顆粒在溫度、時脈和電源管理上進行[優化](https://zh.wikipedia.org/wiki/優化 "wikilink")，可以說在記憶體內，就做了電源管理的功能，同時讓記憶體顆粒的穩定度也大為提升，確保記憶體顆粒不致於工作時脈過高導致燒毀的狀況，同時DDR3
SDRAM還加入PASR（Partial Array
Self-Refresh）局部Bank刷新的功能，可以說針對整個記憶體Bank做更有效的資料讀寫以達到省電功效。

  - 與DDR2的不同之處

<!-- end list -->

1.  邏輯Bank數量，DDR2
    SDRAM中有4Bank和8Bank的設計，目的就是為了應對未來大容量[晶片的需求](https://zh.wikipedia.org/wiki/晶片 "wikilink")。而DDR3很可能將從2[GB容量起步](https://zh.wikipedia.org/wiki/Gigabyte "wikilink")，因此起始的邏輯Bank就是8個，另外還為未來的16個邏輯Bank做好準備。
2.  封裝（Packages），DDR3由於新增一些功能，所以在引腳方面會有所增加，8bit晶片採用78球FBGA封裝，16bit晶片採用96球FBGA封裝，而DDR2則有60/68/84球FBGA封裝三種規格。並且DDR3必須是環保封裝，不能含有任何有害物質。
3.  突發長度（BL，Burst Length），由於DDR3的預取為8bit，所以突發傳輸週期（BL，Burst
    Length）也固定為8，而對於DDR2和早期的DDR架構的系統，BL=4也是常用的，DDR3為此增加一個4-bit
    Burst
    Chop（突發突變）模式，即由一個BL=4的讀取操作加上一個BL=4的寫入操作來合成一個BL=8的數據突發傳輸，屆時可透過A12位址線來控制這一突發模式。而且需要指出的是，任何突發中斷操作都將在DDR3記憶體中予以禁止，且不予支持，取而代之的是更靈活的突發傳輸控制（如4bit順序突發）。
4.  尋址時序（Timing），就像DDR2從DDR轉變而來後延遲週期數增加一樣，DDR3的CL週期也將比DDR2有所提升。DDR2的CL範圍一般在2至6之間，而DDR3則在6至11之間，且附加延遲（AL）的設計也有所變化。DDR2時AL的範圍是0至4，而DDR3時AL有三種選項，分別是0、CL-1和CL-2。另外，DDR3還新增加一個時序參數──寫入延遲（CWD），這一參數將根據具體的工作頻率而定。
5.  新增功能──重置（Reset），重置是DDR3新增的一項重要功能，並為此專門準備一個引腳。[DRAM業界很早以前就要求增加這一功能](https://zh.wikipedia.org/wiki/DRAM "wikilink")，如今終於在DDR3身上實現。這一引腳將使DDR3的初始化處理變得簡單。當重置命令有效時，DDR3記憶體將停止所有的操作，並切換至最少量活動的狀態，以節約電力。在重置期間，DDR3記憶體將關閉內在的大部分功能，所有數據接收與發送器都將關閉、所有內部的程式裝置將復位，DLL（延遲鎖相環路）與時鐘電路將停止工作，而且不理睬數據匯流排上的任何動靜。這樣一來，將使DDR3達到最節省電力的目的。
6.  新增功能──ZQ校準，ZQ也是一個新增的腳，在這個引腳上接有一個240[歐姆的低公差參考電阻](../Page/歐姆.md "wikilink")。這個引腳透過一個命令集，經由片上校準引擎（ODCE，On-Die
    Calibration Engine）來自動校驗數據輸出驅動器導通電阻與終結電阻器（ODT，On-Die
    Termination）的終結電阻值。當系統發出這一指令之後，將用相對應的時鐘週期（在加電與初始化之後用512個時鐘週期，在退出自刷新操作後用256個時鐘週期、在其他情況下用64個時鐘週期）對導通電阻和ODT電阻進行重新校準。

## JEDEC 標準模組

<table>
<tbody>
<tr class="odd">
<td><p>標準名稱</p></td>
<td><p>-{zh-hans:I/O总线时钟;zh-hant:I/O匯流排時脈;}-<br />
<small>(<a href="https://zh.wikipedia.org/wiki/MHz" title="wikilink">MHz</a>)</small></p></td>
<td><p>週期<br />
<small>(<a href="https://zh.wikipedia.org/wiki/納秒" title="wikilink">ns</a>)</small></p></td>
<td><p>-{zh-hans:内存时钟;zh-hant:記憶體時脈;}-<br />
<small>(MHz)</small></p></td>
<td><p>數據速率<br />
<small>(MT/s)</small></p></td>
<td><p>傳輸方式</p></td>
<td><p>模組名稱</p></td>
<td><p>極限傳輸率<br />
<small>(<a href="https://zh.wikipedia.org/wiki/GiB" title="wikilink">GiB</a>/s)</small></p></td>
<td><p>位元寬<br />
<small>(<a href="../Page/位元.md" title="wikilink">位元</a>)</small></p></td>
</tr>
<tr class="even">
<td><p>DDR3-800</p></td>
<td><p>400</p></td>
<td><p>10</p></td>
<td><p>100</p></td>
<td><p>800</p></td>
<td><p>並列傳輸</p></td>
<td><p>PC3-6400</p></td>
<td><p>6.4</p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>DDR3-1066</p></td>
<td><p>533<span class="math inline">$\tfrac{1}{3}$</span></p></td>
<td><p>7<span class="math inline">$\tfrac{1}{2}$</span></p></td>
<td><p>133<span class="math inline">$\tfrac{1}{3}$</span></p></td>
<td><p>1066<span class="math inline">$\tfrac{2}{3}$</span></p></td>
<td><p>並列傳輸</p></td>
<td><p>PC3-8500</p></td>
<td><p>8<span class="math inline">$\tfrac{8}{15}$</span></p></td>
<td><p>64</p></td>
</tr>
<tr class="even">
<td><p>DDR3-1333</p></td>
<td><p>666<span class="math inline">$\tfrac{2}{3}$</span></p></td>
<td><p>6</p></td>
<td><p>166<span class="math inline">$\tfrac{2}{3}$</span></p></td>
<td><p>1333<span class="math inline">$\tfrac{1}{3}$</span></p></td>
<td><p>並列傳輸</p></td>
<td><p>PC3-10600</p></td>
<td><p>10<span class="math inline">$\tfrac{2}{3}$</span></p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>DDR3-1600</p></td>
<td><p>800</p></td>
<td><p>5</p></td>
<td><p>200</p></td>
<td><p>1600</p></td>
<td><p>並列傳輸</p></td>
<td><p>PC3-12800</p></td>
<td><p>12.8</p></td>
<td><p>64</p></td>
</tr>
<tr class="even">
<td><p>DDR3-1866</p></td>
<td><p>933<span class="math inline">$\tfrac{1}{3}$</span></p></td>
<td><p>4<span class="math inline">$\tfrac{2}{7}$</span></p></td>
<td><p>233<span class="math inline">$\tfrac{1}{3}$</span></p></td>
<td><p>1866<span class="math inline">$\tfrac{2}{3}$</span></p></td>
<td><p>並列傳輸</p></td>
<td><p>PC3-14900</p></td>
<td><p>14<span class="math inline">$\tfrac{14}{15}$</span></p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>DDR3-2133</p></td>
<td><p>1066<span class="math inline">$\tfrac{2}{3}$</span></p></td>
<td><p>3<span class="math inline">$\tfrac{3}{4}$</span></p></td>
<td><p>266<span class="math inline">$\tfrac{2}{3}$</span></p></td>
<td><p>2133<span class="math inline">$\tfrac{1}{3}$</span></p></td>
<td><p>並列傳輸</p></td>
<td><p>PC3-17000</p></td>
<td><p>17<span class="math inline">$\tfrac{1}{15}$</span></p></td>
<td><p>64</p></td>
</tr>
<tr class="even">
<td><p>DDR3-2400</p></td>
<td><p>1200</p></td>
<td></td>
<td><p>300</p></td>
<td><p>2400</p></td>
<td><p>并列传输</p></td>
<td><p>PC3-19200</p></td>
<td><p>19.2</p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>DDR3-2666</p></td>
<td><p>1333<span class="math inline">$\tfrac{1}{3}$</span></p></td>
<td></td>
<td><p>333<span class="math inline">$\tfrac{1}{3}$</span></p></td>
<td><p>2666<span class="math inline">$\tfrac{2}{3}$</span></p></td>
<td><p>并列传输</p></td>
<td><p>PC3-21333</p></td>
<td><p>21<span class="math inline">$\tfrac{1}{3}$</span></p></td>
<td><p>64</p></td>
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
</tr>
</tbody>
</table>

DDR3
SDRAM在[記憶體模組上](https://zh.wikipedia.org/wiki/記憶體模組 "wikilink")，針對[桌上型電腦開發出](../Page/桌上型電腦.md "wikilink")240pin
DIMM模組、在[筆記型電腦則是](../Page/筆記型電腦.md "wikilink")204pin
SO-DIMM，更高的運作時脈還有DDR3-1800、DDR3-2000、DDR3-2133和DDR3-2200四種。

## SPD芯片

所有基于JEDEC规范的DDR3内存模组都会配备SPD（serial presence
detect）芯片，该芯片EEPROM存储于SMbus之上，其中包括内存模组将提供给系统的容量以及模组特征信息，包括电压，因此系统就能够借此固件信息兼容支持最新的DDR3L内存模组。

## DDR3L

2010年7月26日，JEDEC發佈DDR3L標準。\[1\]

DDR3的電壓為1.5V，而DDR3L的電壓為1.35V，記憶體模組上會標記為PC3L。DDR3U的電壓為1.25V，標記為PC3U。低電壓RAM的用電量較少，主要用於[手提電腦和](https://zh.wikipedia.org/wiki/手提電腦 "wikilink")[Skylake微架構與更新的CPU](../Page/Skylake微架構.md "wikilink")。

DDR3L内存的SPD芯片里包含支持电压的数据，可根据主板内存插槽的支持自适应1.5V或者1.35V的工作电压。理论上2011年发布的[Sandy
Bridge与](https://zh.wikipedia.org/wiki/Sandy_Bridge "wikilink")2010年发布的[Capella平台的](https://zh.wikipedia.org/wiki/Capella "wikilink")1.5V内存插槽也能识别支持DDR3L内存条。但是，只有在2012年发布的[Ivy
Bridge或](https://zh.wikipedia.org/wiki/Ivy_Bridge "wikilink")2013年发布的[Haswell平台上](https://zh.wikipedia.org/wiki/Haswell "wikilink")，DDR3L内存条才能工作于1.35V电压。\[2\]

## 參見

  - [SDR SDRAM](https://zh.wikipedia.org/wiki/SDR_SDRAM "wikilink")
  - [DDR SDRAM](../Page/DDR_SDRAM.md "wikilink")
  - [DDR2 SDRAM](../Page/DDR2_SDRAM.md "wikilink")
  - [RDRAM](../Page/RDRAM.md "wikilink")
  - [雙通道](https://zh.wikipedia.org/wiki/雙通道 "wikilink")

## 參考資料

[de:DDR-SDRAM\#DDR3-SDRAM](https://zh.wikipedia.org/wiki/de:DDR-SDRAM#DDR3-SDRAM "wikilink")
[fi:DRAM\#DDR3
SDRAM](https://zh.wikipedia.org/wiki/fi:DRAM#DDR3_SDRAM "wikilink")

[Category:電腦記憶體](https://zh.wikipedia.org/wiki/Category:電腦記憶體 "wikilink")

1.
2.  [Haswell
    碰上DDR3L新本内存升级有门道](http://www.dooland.com/magazine/article_365484.html)