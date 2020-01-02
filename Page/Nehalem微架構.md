> 本文内容由[Nehalem微架構](https://zh.wikipedia.org/wiki/Nehalem微架構)转换而来。


**Intel Nehalem** (\[1\]) ，是[Intel研發的](https://zh.wikipedia.org/wiki/Intel "wikilink")[中央處理器](https://zh.wikipedia.org/wiki/中央處理器 "wikilink")[微架構](../Page/微架構.md "wikilink")之代號，該架構取代了前代的[Core微處理器架構](https://zh.wikipedia.org/wiki/Intel_Core微處理器架構 "wikilink")。\[2\] 使用Nehalem架構的微處理器採用45[納米製程](https://zh.wikipedia.org/wiki/納米 "wikilink")（後期改用32納米製程），在2007年的Intel開發者論壇上Intel官方展示了一個採用兩顆INehalem微架構的處理器的系統平台。首款採用Intel Nehalem架構的處理器是2008年11月正式發售的桌上型處理器[Intel Core i7](https://zh.wikipedia.org/wiki/Intel_Core_i7 "wikilink")。\[3\]

Intel在[Pentium 4時代也使用過](https://zh.wikipedia.org/wiki/Pentium_4 "wikilink")“Nehalem”的代號，該代號曾使用於[NetBurst微架構的](https://zh.wikipedia.org/wiki/NetBurst "wikilink")10Ghz版本之Pentium 4微處理器，後來改計劃取消。Nehalem微架構儘管與Netburst架構不是一個時代的產物，但是兩者之間有一些共同的技術和特點，如超執行緒、較高的預設[時脈等](https://zh.wikipedia.org/wiki/時脈 "wikilink")。儘管Nehalem架構的微處理器預設時脈普遍較高，但能效比依然比Core微架構的製程改進版Penryn微架構的微處理器要高。2011年1月，Intel Nehalem微架構由其下一代微架構[Intel Sandy Bridge所取代](https://zh.wikipedia.org/wiki/Intel_Sandy_Bridge "wikilink")。

Intel Nehalem的架構設計有不少地方與[AMD K10類似](https://zh.wikipedia.org/wiki/AMD_K10 "wikilink")（譬如每核心獨立電壓及時脈等），但要比AMD K10的效能更佳、能耗更低。[AMD後來也推出K](https://zh.wikipedia.org/wiki/AMD "wikilink")10的改進版[K10.5來與Intel的Nehalem競爭](https://zh.wikipedia.org/wiki/K10.5 "wikilink")。

## 技術特點

[Intel_Nehalem_arch.svg](https://zh.wikipedia.org/wiki/File:Intel_Nehalem_arch.svg "fig:Intel_Nehalem_arch.svg")

### 整合[北橋](https://zh.wikipedia.org/wiki/北橋 "wikilink")

全部型號的微處理器核心都整合了[記憶體控制器](https://zh.wikipedia.org/wiki/記憶體 "wikilink")，一般支援[雙通道DDR](https://zh.wikipedia.org/wiki/雙通道 "wikilink")3 SDRAM，消費級產品最高支援[三通道](https://zh.wikipedia.org/wiki/三通道 "wikilink")[DDR3 SDRAM](../Page/DDR3_SDRAM.md "wikilink")，而伺服器平台則可以支援四通道DDR3 SDRAM；除此以外還處理器核心還整合了[PCI Express 2.0控制器](../Page/PCI_Express.md "wikilink")。

### 直連式總線

從Nehalem微架構開始，Intel改用[QPI](https://zh.wikipedia.org/wiki/QPI "wikilink")/[DMI直連式](https://zh.wikipedia.org/wiki/DMI "wikilink")[總線](https://zh.wikipedia.org/wiki/總線 "wikilink")，放棄了傳統的[FSB](https://zh.wikipedia.org/wiki/前端匯流排 "wikilink")。首發的Core i7使用了新的“Quick Path Interconnect”直連式總線，與AMD的[HyperTransport](../Page/HyperTransport.md "wikilink")相似。

相比FSB，每一個處理器都可以有獨立的QPI通道與其他處理器連接，處理器之間不用再共享FSB[頻寬](https://zh.wikipedia.org/wiki/頻寬 "wikilink")，並繞路到北橋才能通訊。此外，QPI是[雙向傳輸](../Page/雙工.md "wikilink")\[4\]。

後來發布的[Core i5](../Page/Intel_Core_i5.md "wikilink")、[i3](../Page/Intel_Core_i3.md "wikilink")，處理器內部仍使用QPI，但與外部晶片組連接則使用與QPI類似但較QPI的頻寬小的DMI（Direct Media Interface）總線。

隨著FSB的『卸任』，一般意義上的『外頻』概念由『基準時鐘頻率』（BLCK）所取代。\[5\]

### 模組化的多核心設計

處理器採用模組化設計\[6\]。例如[核心](https://zh.wikipedia.org/wiki/核心 "wikilink")、記憶體控制器、以至輸入輸出介面控制器，都能夠以不同的數量配搭，而且都能做到原生[多核心設計](https://zh.wikipedia.org/wiki/多核心 "wikilink")。這樣使得Nehalem架構的處理器產品線可以做成雙核心、四核心、六核心乃至八核心、十核心（僅見於[Xeon E7](https://zh.wikipedia.org/wiki/Intel_Xeon "wikilink")）\[7\]，可以使到產品更容易針對不同[市場](https://zh.wikipedia.org/wiki/市場 "wikilink")。與AMD K10微架構類似，每一個[模組都可以有獨立的](https://zh.wikipedia.org/wiki/模組 "wikilink")[電壓](../Page/電壓.md "wikilink")和獨立的時脈，讓處理器在不同[負載水平的效能最大化的同時更省電](https://zh.wikipedia.org/wiki/負載 "wikilink")。

二級[分支預測器](../Page/分支預測器.md "wikilink")和新的[轉譯後備緩衝區](../Page/轉譯後備緩衝區.md "wikilink")（Translation Lookaside Buffer，TLB）。

### 超執行緒

[超執行緒](../Page/超執行緒.md "wikilink")技術回歸：部分處理器型號支援超线程的技術。消費級市場發售的最高六核心，十二執行緒，企業級的更達到八核心，十六執行緒甚至到後期的十核心，二十執行緒。不僅多執行緒處理能力加強，Intel認為該技術還能最多提升處理器30%的效能。

### 快取

多級[快取](https://zh.wikipedia.org/wiki/快取 "wikilink")：每核心64KB的L1快取（32KB指令快取+32KB資料快取）；每核心256KB的L2快取，雖容量大小較Core微架構的小但擁有更低的讀寫延遲值；與AMD K10一樣，Intel Nehalem微架構的處理器都內建L3快取，每一個處理器共享最小4MB至最大12MB（企業級處理器更達到30MB）。

### 效能、電源管理

效能動態調節和電源管理：中高階型號的處理器會支援[Turbo Boost](https://zh.wikipedia.org/wiki/Turbo_Boost "wikilink")（[港澳地區](../Page/港澳地區.md "wikilink")沒有正式官方[中文名稱](https://zh.wikipedia.org/wiki/中文 "wikilink")，[台灣官方中文名稱為](https://zh.wikipedia.org/wiki/台灣 "wikilink")『渦輪加速』，[中國大陸官方中文名稱為](https://zh.wikipedia.org/wiki/中國大陸 "wikilink")『睿頻』。其後該技術更名為[Dynamic Speed](https://zh.wikipedia.org/wiki/Dynamic_Speed "wikilink")，動態時脈\[8\]）動態時脈調整技術，倘若有程式使用較多的處理器负载，處理器的頻率可以按步驟提升，此外，可以自動往上提升[倍頻](https://zh.wikipedia.org/wiki/倍頻 "wikilink")\[9\]該功能基本不需要[作業系統的支援](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，完全由硬體監控\[10\]。除了時脈管理，電源管理方面引入[Power Gates技術](https://zh.wikipedia.org/wiki/Power_Gates "wikilink")，核心閒置的時候可被關閉。對比上一代的[Core架構](https://zh.wikipedia.org/wiki/Intel_Core微處理器架構 "wikilink")，的核心[電阻可以被關閉](https://zh.wikipedia.org/wiki/電阻 "wikilink")，[電流可以完全不通過核心](https://zh.wikipedia.org/wiki/電流 "wikilink")。各個處理器核心可運作於不同的[頻率和](https://zh.wikipedia.org/wiki/頻率 "wikilink")[電壓](../Page/電壓.md "wikilink")\[11\]。Turbo Boost及Power Gates功能都是由一個單元提供，佔去大約一百萬個[晶体管](../Page/晶体管.md "wikilink")\[12\]。而AMD K10及後來的改進版K10.5，核心必須手動才能關閉。

### 指令集

[指令集更新](https://zh.wikipedia.org/wiki/指令集 "wikilink")：[SIMD指令](https://zh.wikipedia.org/wiki/SIMD "wikilink")[SSE](../Page/SSE.md "wikilink")4的版本會提升為SSE 4.2，SSE4.2在SSE4.1（於Core架構上）的基礎上新增了7條[指令](https://zh.wikipedia.org/wiki/指令 "wikilink")\[13\]；引入第二代Intel[虛擬化](../Page/虛擬化.md "wikilink")技術，支援EPT（Extended Page Table，擴展分頁表）、VPIDs（virtual processor identifiers，虛擬處理器標識）以及非屏蔽中斷窗口退出（non-maskable interrupt-window exiting）。\[14\]Intel Nehalem架构的原子操作延时降低了50%，在试图限制原子的开销上。\[15\]

### 搭配晶片組

[晶片組方面](https://zh.wikipedia.org/wiki/晶片組 "wikilink")，Intel推出了5系列晶片組與之搭配，桌面平台有P5\*、H5\*、X5\*等系列型號，其中P5\*、H5\*系列型號採用[LGA1156插座](https://zh.wikipedia.org/wiki/LGA1156 "wikilink")，X5\*採用[LGA1366插座](https://zh.wikipedia.org/wiki/LGA1366 "wikilink")。代號Bloomfield的Core i7和後期第二批的Intel X58晶片組（允許更變倍頻）的組合再次提升Intel平台的超頻極限。核心代號Lynnfield的Core i5所使用的晶片組，更名為“[PCH](https://zh.wikipedia.org/wiki/PCH "wikilink")”（Platform Controller Hub，PCH，整合了一部分北橋和整個[南橋](https://zh.wikipedia.org/wiki/南橋 "wikilink")），取代以往分離的北橋晶片和南橋晶片，成為單晶片組。\[16\]早期，處理器核心的電壓與系統記憶體同步。此前，Intel官方表示首批處理器產品會支持DDR3-800和DDR3-1066規格的記憶體。對於DDR3-1333，由於處理器只可以接受較低的電壓水平（限制在1.65V或以下），高速的記憶體意味著需要較高的電壓，所以此規格的官方支援仍然存在疑問\[17\]。後來第二批X58晶片組主機版上，處理器核心電壓與系統記憶體電壓可以實現異步，方便用家[超頻](../Page/超頻.md "wikilink")\[18\]。另外，原先只有XE版本處理器可以調整記憶體頻率。後來Intel修改為所有上市的Core i7處理器，均可以修改記憶體和QPI總線的頻率\[19\]。

## 效能和能耗之改進

儘管核心面積比Core架構要大不少，性能較Core架構系列則仍大幅提升，並沒有令市場期望失望。\[20\]

與Core架構的45納米製程版本Core相比，Nehalem架構：

  - 在相同的能耗下比Core架構的單執行緒效能高出10%至100%；
  - 同樣的效能下的能耗平均比Core架構的低30%；
  - 每核心每[時鐘週期的效能平均比上代架構高](https://zh.wikipedia.org/wiki/時鐘週期 "wikilink")12%至20%。

## 核心及其步進

<table>
<thead>
<tr class="header">
<th><p>核心數量（記憶體通道數量、其他總線）</p></th>
<th><p>製程</p></th>
<th><p>晶片面積</p></th>
<th><p>CPUID</p></th>
<th><p>Model</p></th>
<th><p>步進</p></th>
<th><p>流動平台</p></th>
<th><p>桌面平台、 UP Server</p></th>
<th><p>DP Server</p></th>
<th><p>MP Server</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>八核心</strong>（四通道）</p></td>
<td><p>45 nm</p></td>
<td><p>684 mm²</p></td>
<td><p>206E6</p></td>
<td><p>46</p></td>
<td><p>D0</p></td>
<td></td>
<td></td>
<td></td>
<td><p>|Beckton (80604)</p></td>
</tr>
<tr class="even">
<td><p><strong>四核心</strong>（三通道）</p></td>
<td><p>45 nm</p></td>
<td><p>263 mm²</p></td>
<td><p>106A4<br />
106A5</p></td>
<td><p>26</p></td>
<td><p>C0<br />
D0</p></td>
<td></td>
<td><p>Bloomfield (80601)</p></td>
<td><p>Gainestown (80602)</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>四核心</strong>（雙通道、PCIe）</p></td>
<td><p>45 nm</p></td>
<td><p>296 mm²</p></td>
<td><p>106E4<br />
106E5</p></td>
<td><p>30</p></td>
<td><p>B0<br />
B1</p></td>
<td><p>Clarksfield (80607)</p></td>
<td><p>Lynnfield (80605)</p></td>
<td><p>Jasper Forest (80612)</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>雙核心</strong>（雙通道、PCIe、內建顯示核心）</p></td>
<td><p>45 nm</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>Auburndale <em>（已取消）</em></p></td>
<td><p>Havendale <em>（已取消）</em></p></td>
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
</tr>
<tr class="even">
<td><p>align= "left"| <strong>十核心</strong>（四通道）[21]</p></td>
<td><p>32 nm</p></td>
<td><p>513 mm²</p></td>
<td><p>206F2</p></td>
<td><p>47</p></td>
<td><p>A2</p></td>
<td></td>
<td></td>
<td></td>
<td><p>Westmere-EX (80615)</p></td>
</tr>
<tr class="odd">
<td><p><strong>六核心</strong>（三通道）</p></td>
<td><p>32 nm</p></td>
<td><p>248 mm²</p></td>
<td><p>206C2</p></td>
<td><p>44</p></td>
<td><p>B1</p></td>
<td></td>
<td><p>Gulftown (80613)</p></td>
<td><p>Westmere-EP (80614)</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>雙核心</strong>（雙通道、PCIe、內建顯示核心）</p></td>
<td><p>32 nm<br />
45 nm</p></td>
<td><p>81+114 mm²</p></td>
<td><p>20652<br />
20655</p></td>
<td><p>37</p></td>
<td><p>C2<br />
K0</p></td>
<td><p>Arrandale (80617)</p></td>
<td><p>Clarkdale (80616)</p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

  - 極致效能級別的處理器無倍頻限制；
  - 全部微處理器使用133MHz的基準[時鐘頻率](https://zh.wikipedia.org/wiki/時鐘頻率 "wikilink")。

## 處理器列表

## 繼任微架構

Intel遵循[Tick-Tock策略](../Page/Intel_Tick-Tock.md "wikilink")，於2011年第一季度發布了[Intel Sandy Bridge微架構](https://zh.wikipedia.org/wiki/Intel_Sandy_Bridge "wikilink")，正式取代Intel Nehalem微架構以及其製程改進版Intel Westmere微架構。

## 參考

## 外部連結

  - [Nehalem processor](http://www.intel.com/technology/architecture-silicon/next-gen/) at [Intel](https://zh.wikipedia.org/wiki/Intel "wikilink").com

<!-- end list -->

  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink") [Category:Intel處理器架構](https://zh.wikipedia.org/wiki/Category:Intel處理器架構 "wikilink")

1.
2.
3.
4.  [45nm最强平台！Core i7+X58深度解析](http://www.pcpop.com/doc/0/314/314231_15.shtml)
5.  [又能超外频了? Haswell或恢复FSB概念](http://vga.zol.com.cn/348/3484783.html) - zol.com.cn
6.  [Intel谈Nehalem带宽、扩展性、频率](http://news.mydrivers.com/1/108/108817.htm)
7.  [Intel® Xeon® Processor E7-8870 (30M Cache, 2.40 GHz, 6.40 GT s Intel® QPI)](http://ark.intel.com/zh-tw/products/53580/intel-xeon-processor-e7-8870-\(30m-cache-2_40-ghz-6_40-gts-intel-qpi\))
8.
9.  [IDF秋08：Intel公布Nehalem更多细节](http://www.hardspell.com/doc/hard/80412.htm)
10. [英特尔下個月推四核心Atom处理器](http://news.mydrivers.com/1/114/114483.htm)
11. [Intel发布首颗6核心处理器Xeon X7460](http://news.mydrivers.com/1/114/114434.htm)
12. [更低功耗：Core i7動態超頻技術](http://news.mydrivers.com/1/114/114482.htm)
13. [革命即将开始！Core i7 965性能详测](http://www.pcpop.com/doc/0/278/278906_6.shtml)
14. [QInside Nehalem: Intel's Future Processor and System](http://realworldtech.com/page.cfm?ArticleID=RWT040208182719&p=8)
15.
16.
17. [Nehalem平台极限超频存在电压限制](http://news.mydrivers.com/1/116/116454.htm)
18. [X58主板可以支持处理器、内存电压异步](http://news.mydrivers.com/1/116/116844.htm)
19.
20.
21. [Westmere-EX 10 core CPUs announced by Intel at IDF](http://www.tweaktown.com/news/16724/westmere_ex_10_core_cpus_announced_by_intel_at_idf/index.html)