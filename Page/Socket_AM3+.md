**Socket AM3+**（又稱**Socket AM3b**）是[AMD推出的](https://zh.wikipedia.org/wiki/AMD "wikilink")[CPU插座](../Page/CPU插座.md "wikilink")，取代上一代[Socket AM3並支援使用](../Page/Socket_AM3.md "wikilink")[Bulldozer微架構的AMD新一代](https://zh.wikipedia.org/wiki/Bulldozer微架構 "wikilink")32納米處理器[AMD FX](../Page/AMD_FX.md "wikilink")、[Opteron 3000系列](https://zh.wikipedia.org/wiki/AMD_Opteron "wikilink")\[1\]，與Socket AM3完全向下相容。

## 技術特性

[AMD_AM3+_CPU_Socket-top_closed_PNr°0376.jpg](https://zh.wikipedia.org/wiki/File:AMD_AM3+_CPU_Socket-top_closed_PNr°0376.jpg "fig:AMD_AM3+_CPU_Socket-top_closed_PNr°0376.jpg") Socket AM3+是從Socket AM3的基礎上發展而來，同樣採用[插针网格阵列封装](https://zh.wikipedia.org/wiki/插针网格阵列封装 "wikilink")（PGA），使用Socket AM3+的[主機板插座有](https://zh.wikipedia.org/wiki/主機板 "wikilink")942個接腳，僅比Socket AM3多一個接腳，接腳排列以及管脚定義基本與Socket AM3一致；而Socket AM3+的CPU上有940支針腳，比Socket AM3的938支針腳多了兩根。\[2\]另外，Socket AM3+的管脚直徑是0.51毫米，相比Socket AM3的0.45毫米略有增加，針腳最小間距同樣為1.27毫米，31行×31列，和Socket AM3的一樣。\[3\]為了更直觀區分AM3+和AM3，AMD統一將AM3+插座做成[黑色](../Page/黑色.md "wikilink")，區別於AM3標準的[白色](../Page/白色.md "wikilink")。

電氣性能上，AM3+供電比AM3更完善，主要是電源[穩壓性能以及電源質量參數的提升](../Page/電壓調節模組.md "wikilink")。Socket AM3+中，其電源控制和CPU之間的[串行鏈路的工作時脈高達](https://zh.wikipedia.org/wiki/串行 "wikilink")3400kHz，而Socket AM3的僅400kHz；最大允許電流從Socket AM3的110A提升到145A。CPU散熱器的固定扣具仍然在主機板生產説明指引中作爲標準配備，和Socket AM3/AM2+/AM2等AMD桌上型電腦CPU的可通用。\[4\]

Socket AM3+的處理器支援[HyperTransport 3.1](../Page/HyperTransport.md "wikilink")，可運行于3.2GHz，而Socket AM3的HyperTransport 3.0則最高衹到2.6GHz；AM3+/AM3 CPU內置的[記憶體控制器均能支援](https://zh.wikipedia.org/wiki/記憶體控制器 "wikilink")[DDR3](https://zh.wikipedia.org/wiki/DDR3 "wikilink")，不同的是AM3最高只支援至DDR3-1600，AM3+則推進至DDR3-2133。\[5\]同樣Socket AM3+的CPU和主機板和Socket AM3的一樣不支援DDR2 SDRAM記憶體。

Socket AM3+的插座，可安裝Socket AM3+、SocketAM3的中央處理器；Socket AM3+管脚陣列的中央處理器，除了可安裝在Socket AM3+以外，也可安裝於Socket AM3插座上，衹是匯流排效能會有降低，以及部分新功能不能使用。儘管如此，但幾近友好的相容性也引發了一些問題，像是在一些使用Socket AM3+的舊晶片組平台上，或是在新的晶片組平台上使用舊型號CPU，CPU與晶片組的功能，不能各自都能完美實現（見[功能完整實現問題一節](https://zh.wikipedia.org/wiki/Socket_AM3+#功能完整實現問題 "wikilink")）。 {{-}}

## 使用情況

[Motherboard_Socket_AM3+_IMGP6395_wp.jpg](https://zh.wikipedia.org/wiki/File:Motherboard_Socket_AM3+_IMGP6395_wp.jpg "fig:Motherboard_Socket_AM3+_IMGP6395_wp.jpg")主機板\]\] 2011年中期，隨著Bulldozer微架構的公開發表，Socket AM3的升級版Socket AM3+順勢公佈，是基於Bulldozer微架構的處理器所使用的管腳陣列，定位高階桌上型平台以及單處理器伺服器平台。早在2011年初發布的AMD APU定位桌上型主流層級，使用[Socket FM1](https://zh.wikipedia.org/wiki/Socket_FM1 "wikilink")，後來這個市場定位由基於Piledriver微架構的AMD APU所使用的[Socket FM2接任](../Page/Socket_FM2.md "wikilink")；多處理器伺服器/工作站平台則由[Socket C32](../Page/Socket_C32.md "wikilink")、[Socket G34擔當](../Page/Socket_G34.md "wikilink")。\[6\]

### 晶片組

原生采用Socket AM3+的[晶片組是AMD的](https://zh.wikipedia.org/wiki/晶片組 "wikilink")[900系列晶片組](../Page/AMD_900_芯片组系列.md "wikilink")，包括990FX、990X、970以及帶有整合式顯示核心的980G（880G的更名版）。針對單處理器[伺服器市場](https://zh.wikipedia.org/wiki/伺服器 "wikilink")，仍采用SR5600/SP5100系列晶片組。

[AMD_AM3+_CPU_Socket-top_closed_–_with_AMD_Phenom_II_X4_840_(HDX840WFK42GM)_CPU_PNr°0379.jpg](https://zh.wikipedia.org/wiki/File:AMD_AM3+_CPU_Socket-top_closed_–_with_AMD_Phenom_II_X4_840_\(HDX840WFK42GM\)_CPU_PNr°0379.jpg "fig:AMD_AM3+_CPU_Socket-top_closed_–_with_AMD_Phenom_II_X4_840_(HDX840WFK42GM)_CPU_PNr°0379.jpg")

#### 功能完整實現問題

一些使用AM3的[800系列晶片組](https://zh.wikipedia.org/wiki/AMD_800_芯片组系列 "wikilink")，[主機板廠商也可以通過改版](https://zh.wikipedia.org/wiki/主機板 "wikilink")[BIOS](../Page/BIOS.md "wikilink")/[EFI](https://zh.wikipedia.org/wiki/EFI "wikilink")[韌體](../Page/韌體.md "wikilink")來使用AM3+插槽，但匯流排速率仍受制于晶片組（[北橋](https://zh.wikipedia.org/wiki/北橋 "wikilink")）的支援度，不會有提升\[7\]\[8\]\[9\]\[10\]。這些舊晶片組采用Socket AM3+插座，雖然仍能提供足夠的峰值電流，但目前已知有一些主機板的部分新功能不能使用或不正常的問題。一個問題是從CPU内讀取溫度值的旁帶溫度感測器界面的不正常，使的一些[PWM調速的CPU散熱風扇或衹能工作在全速狀態](../Page/脈衝寬度調變.md "wikilink")；另一個已知的問題則是由於缺少快速[Vcore開關](https://zh.wikipedia.org/wiki/CPU工作电压 "wikilink")，部分CPU節電功能無法使用。\[11\]由於與SocketAM2/AM2+的管脚定義有重叠，甚至有采用Socket AM3+插座的[700系列晶片組主機板推出并販售](https://zh.wikipedia.org/wiki/AMD_700晶片組系列 "wikilink")\[12\]，但這些主機板僅能支援DDR3記憶體而不能支援[DDR2記憶體](../Page/DDR2_SDRAM.md "wikilink")，因爲Socket AM3+的中央處理器内并沒有内建DDR2[記憶體控制器](https://zh.wikipedia.org/wiki/記憶體控制器 "wikilink")。

### 中央處理器

目前有核心代號爲「Zambezi」以及「Vishera」AMD FX系列的中央處理器、以及核心代號爲「Zurich」、「Delhi」的AMD Opteron系列采用Socket AM3+的管脚排列。\[13\]

而采用AM3的CPU，像是[Phenom II](https://zh.wikipedia.org/wiki/Phenom_II "wikilink")、[Athlon II](https://zh.wikipedia.org/wiki/Athlon_II "wikilink")、45奈米版本的[Sempron系列以及AM](https://zh.wikipedia.org/wiki/Sempron "wikilink")3版本的[Opteron](../Page/Opteron.md "wikilink")，也可以安裝在Socket AM3+插座的主機板上。\[14\]

### AMD FX

#### 「Zambezi」核心

  - 2模組，4執行緒（4核心）型號：FX-4100、4130、4150、4170
  - 3模組，6執行緒（6核心）型號：FX-6100、6120、6130、6200
  - 4模組，8執行緒（8核心）型號：FX-8100、8120、8140、8150

#### 「Vishera」核心

[AMD_FX-8320.jpg](https://zh.wikipedia.org/wiki/File:AMD_FX-8320.jpg "fig:AMD_FX-8320.jpg")

  - 2模組，4執行緒（4核心）型號：FX-4300、4320、4350
  - 3模組，6執行緒（6核心）型號：FX-6300、6350
  - 4模組，8執行緒（8核心）型號：FX-8300、8310、8320、8320E、8350、8370、8370E、9370、9590

### AMD Opteron

AMD Opteron處理器，主要是用於單CPU伺服器的Opteron 3200/3300系列采用Socket AM3+。

#### Opteron 3200系列「Zurich」

  - 2模組，4執行緒（4核心）型號：Opteron 3250 HE、3260 HE
  - 4模組，8執行緒（8核心）型號：Opteron 3280

#### Opteron 3300系列「Delhi」

  - 2模組，4執行緒（4核心）型號：Opteron 3320 EE、3350 HE
  - 4模組，8執行緒（8核心）型號：Opteron 3365、3380

## 參考文獻

## 參見

  - [AMD FX](../Page/AMD_FX.md "wikilink")、[AMD FX處理器列表](https://zh.wikipedia.org/wiki/AMD_FX處理器列表 "wikilink")
  - [AMD Opteron](https://zh.wikipedia.org/wiki/AMD_Opteron "wikilink")、[AMD Opteron處理器列表](../Page/AMD_Opteron處理器列表.md "wikilink")
  - [AMD晶片組列表](../Page/AMD晶片組列表.md "wikilink")
  - [Socket C32](../Page/Socket_C32.md "wikilink")
  - [Socket G34](../Page/Socket_G34.md "wikilink")
  - [Socket FM1](https://zh.wikipedia.org/wiki/Socket_FM1 "wikilink")
  - [Socket FM2](../Page/Socket_FM2.md "wikilink")

[Category:CPU插座](https://zh.wikipedia.org/wiki/Category:CPU插座 "wikilink")

1.

2.

3.

4.

5.  [ASUS M5A97](http://www.extremepc.co.nz/index.php?main_page=product_info&products_id=5184&zenid=6a522c98ace70f6f154b7b6c09596f54) - ExtremePC

6.
7.

8.

9.  [1](http://event.asus.com/2011/mb/AM3_PLUS_Ready/)

10.

11.

12.

13.

14.