[Zen_microarchitecture.svg](https://zh.wikipedia.org/wiki/File:Zen_microarchitecture.svg "fig:Zen_microarchitecture.svg") **Zen**是一種[x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink")[微架構](../Page/微架構.md "wikilink")，由[AMD開發](https://zh.wikipedia.org/wiki/AMD "wikilink")，2016年發表，取代[Bulldozer微架構及其改進版本](https://zh.wikipedia.org/wiki/Bulldozer微架構 "wikilink")。該微架構是AMD重返高效能運算市場的重要產品，與舊有架構相比幾乎完全重新設計並以新工藝製作以提升效能，同時還引入眾多新特性，處理器產品以[SoC或半SoC形態面市](https://zh.wikipedia.org/wiki/SoC "wikilink")。而首款Zen微架構的處理器，核心代號「Summit Ridge」，正式品牌名稱為「[Ryzen](../Page/AMD_Ryzen.md "wikilink")」，而中文名稱為「銳龍」，于2017年3月2日正式上市。\[1\]\[2\]\[3\]\[4\]\[5\]

## 概覽

首個基於Zen微架構的系統展示平台在2016年的[E3消費電子展上現身](https://zh.wikipedia.org/wiki/E3 "wikilink")，而架構的細節，則是到了同年[英特爾開發者論壇](../Page/英特爾開發者論壇.md "wikilink")正舉行時，在其舉行地點對面的街區上公佈。不同於使用將近6年的並且在各種小修小補和僅更新了一次製作工藝的Bulldozer微架構，Zen微架構由曾經領隊設計K6/K7/K8架構、2012年回歸AMD的Jim Keller帶隊操刀另行開發，並且直接使用14nm節點FinFET製程，重在提升每個CPU核心的效能，最初目標是比當時預期的[Bulldozer微架構最終形態時](https://zh.wikipedia.org/wiki/Excavator微架構 "wikilink")（IPC）高出40%。此外處理器連接界面、插座、記憶體支援等等都力圖更新到最新規格。\[6\]除了效能和功能上的提升以外，還試圖以AMD APU產品線的經驗將新架構系統平台的體積縮小，令單一一顆CPU可以以SoC形態出現並支援常見的匯流排規格（包括PCIe、SATA、USB等）。\[7\]\[8\]加之此前發表的300系列晶片組、Socket AM4/Socket FP4插座、對DDR4的支援等，這些使得AMD可以令Zen微架構只需些少修改即可涵蓋當前的[筆電](https://zh.wikipedia.org/wiki/筆電 "wikilink")、小尺寸PC乃至[桌上型電腦](../Page/桌上型電腦.md "wikilink")、[工作站](../Page/工作站.md "wikilink")、[伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")（特別是高運算密度的雲端運算平台）等運算系統平台。\[9\]\[10\]\[11\]2017年中發表的AMD Epyc系列，取代Opteron成為AMD面向企業應用（特別是雲端運算）的企業級CPU系列，並且可作為無需南橋晶片的半SoC化產品。\[12\]

## 架構設計

[AMD@14nm@Zen(Zeppelin)@Summit_Ridge@Ryzen_3_1200@YD1200BBM4KAE_UA_1724PGT_9GW9105S70241_Stack-DSC01422-DSC01535_-_ZS-retouched_(35686281913).jpg](https://zh.wikipedia.org/wiki/File:AMD@14nm@Zen\(Zeppelin\)@Summit_Ridge@Ryzen_3_1200@YD1200BBM4KAE_UA_1724PGT_9GW9105S70241_Stack-DSC01422-DSC01535_-_ZS-retouched_\(35686281913\).jpg "fig:AMD@14nm@Zen(Zeppelin)@Summit_Ridge@Ryzen_3_1200@YD1200BBM4KAE_UA_1724PGT_9GW9105S70241_Stack-DSC01422-DSC01535_-_ZS-retouched_(35686281913).jpg") Zen架構改進如下：\[13\]\[14\]\[15\]

  - 32KB -{zh-cn:一级数据缓存;zh-tw:資料第一級快取}-（L1d）（8路）、64KB -{zh-cn:一级指令缓存;zh-tw:指令第一級快取}-（L1i）（4路），可以直接回寫（write-back），降低延時、加大頻寬，此前的是先通過指針回寫至記憶體再更新一級快取（write through），與Bulldozer模組相比增大兩倍頻寬
  - [同步多執行緒](https://zh.wikipedia.org/wiki/同步多线程 "wikilink")（SMT），一個CPU核心可執行兩個執行緒。該特性此前在[IBM POWER](../Page/IBM_POWER.md "wikilink")、英特爾（[超執行緒](../Page/超執行緒.md "wikilink")）及甲骨文的[SPARC](../Page/SPARC.md "wikilink")上提供\[16\]放棄Bulldozer微架構的-{zh-cn:集群多线程架构; zh-tw:叢集多執行緒架構; }-（CMT）設計
  - 每核心4個算術邏輯單元（[ALU](https://zh.wikipedia.org/wiki/ALU "wikilink")）和兩個位址生成單元（AGU）/載入存儲單元
  - 因不再使用Bulldozer模組化設計，[浮點運算單元](https://zh.wikipedia.org/wiki/浮點運算單元 "wikilink")（FPU）不再由兩組整數ALU叢集共享，改回傳統的1顆物理核心1組浮點運算單元（每組4個128bit FPU單元，可組成兩個256bit FPU 單元來操作）\[17\]
  - 512KiB 二級快取（L2）為每個CPU核心獨占，與Bulldozer模組相比增大兩倍頻寬
  - 三級快取（L3）為每4個CPU核心組成的CCX模組（CPU核心複合體，其中的CPU核心仍可單獨關閉\[18\]）共用，CCX之間通過Infinity Fabric互聯實現快取一致性，比Bulldozer模組快5倍
  - 大型宏操作快取
  - 每個SMT核心每時鐘週期能最多分派6個微操作（整合6個整數操作和4個浮點操作）\[19\]\[20\]
  - 更大的撤回、載入、存儲隊列
  - PTE（[分頁表](../Page/分頁表.md "wikilink")條目），可將4KiB的分頁表合併至32KiB的分頁尺寸上
  - 智慧型預取
  - 4個解碼單元，每個時脈週期可以解碼4條x86指令
  - 使用帶Indirect Target Array的散佈型[感知器](../Page/感知器.md "wikilink")的增強型[分支預測](https://zh.wikipedia.org/wiki/分支預測 "wikilink")，類似於Bobcat微架構的\[21\]，AMD工程師Mike Clark稱其可與[人工神經網路相比](https://zh.wikipedia.org/wiki/人工神經網路 "wikilink")\[22\]；其優勢是對於[幽靈漏洞的防範能力較佳](https://zh.wikipedia.org/wiki/幽靈_\(安全漏洞\) "wikilink")。
  - 分支預測器在指令/資料抓取階段解除耦合
  - 為修改堆疊指針而專用的堆疊引擎（堆疊暫存器），類似英特爾Haswell微架構/Broadwell微架構的設計\[23\]
  - 搬移限制，降低物理資料搬移以降低功耗
  - 高效能硬體隨機數產生器，支援[RDSEED](https://zh.wikipedia.org/wiki/RDSEED "wikilink")。RDSEED是英特爾在Boardwell微架構上實作的硬體隨機數產生器的調取指令\[24\]
  - 支援x86/AMD64、x87、[MMX](../Page/MMX.md "wikilink")(+)、[SSE](../Page/SSE.md "wikilink")/[SSE2](../Page/SSE2.md "wikilink")/[SSE3](../Page/SSE3.md "wikilink")/[SSSE3](../Page/SSSE3.md "wikilink")/SSE4.1/SSE4.2/SSE4a、[AVX/AVX2](../Page/AVX指令集.md "wikilink")、[FMA3](https://zh.wikipedia.org/wiki/FMA3 "wikilink")、CVT16/F16C、[AES](../Page/AES指令集.md "wikilink")、SHA、ADX等指令集，移除XOP、FMA4、LWP、TBM等甚少使用的指令集支援
  - 支援SMAP、SMEP、XSAVEC/XSAVES/XRSTORS、XSAVES、CLFLUSHOPT、CLZERO以及ADCX指令集\[25\]
  - 支援[AMD-V](https://zh.wikipedia.org/wiki/AMD-V "wikilink")、虛擬化技術
  - 新的[时钟门控](https://zh.wikipedia.org/wiki/时钟门控 "wikilink")
  - 基於[HyperTransport](../Page/HyperTransport.md "wikilink")擴展的高頻寬低延時的Infinity Fabric互聯架構，在基於Zen的處理器上大量使用的NUMA結構之瓶頸可被大幅緩解
  - 消費級系統支援[雙通道DDR](https://zh.wikipedia.org/wiki/雙通道 "wikilink")4-2666的記憶體配置規格，企業級系統最高支援[八通道並且帶](../Page/多通道記憶體技術.md "wikilink")[ECC的](https://zh.wikipedia.org/wiki/ECC "wikilink")[DDR4記憶體](../Page/DDR4_SDRAM.md "wikilink")，不支援DDR3
  - AMD SenseMI，\[26\]\[27\]\[28\]使用AMD Infinity Control Fabric提供以下功能：
      - Pure Power，取代[Cool & Quiet](../Page/Cool'n'Quiet.md "wikilink")，監控晶片[電壓](../Page/電壓.md "wikilink")和[時脈](https://zh.wikipedia.org/wiki/時脈 "wikilink")，調整處理器的節電狀態
      - Precision Boost，取代Turbo Core，在熱設計功耗和溫度的限制下在預設時脈之上進行動態加速，對於有負載分配的核心盡可能加速，其餘閒置的CPU核心則盡可能進入休眠狀態
      - XFR，全稱eXtended Frequency Range，動態時脈擴展，在散熱條件允許的情況下盡可能將時脈和電壓（必要時）提升至超過Precision Boost所能提供的時脈加速幅度，但是這個功能需要主機板[晶片組提供支援](https://zh.wikipedia.org/wiki/晶片組 "wikilink")，目前僅搭載X370和X300晶片組的[主機板可用](https://zh.wikipedia.org/wiki/主機板 "wikilink")\[29\]
  - SoC設計，提供傳統[南橋和](https://zh.wikipedia.org/wiki/南橋晶片 "wikilink")[北橋晶片的功能](https://zh.wikipedia.org/wiki/北橋晶片 "wikilink")（包括[PCIe](https://zh.wikipedia.org/wiki/PCIe "wikilink")、[SATA](../Page/SATA.md "wikilink")/[AHCI](../Page/AHCI.md "wikilink")、[NVMe](../Page/NVM_Express.md "wikilink")、[USB](../Page/USB.md "wikilink")），不過AMD還是發表了其委託祥碩設計的[300系列晶片組](https://zh.wikipedia.org/wiki/AMD_Fusion_Controller_Hub#300系列（Socket_AM4平台） "wikilink")
  - [Socket AM4插座](../Page/Socket_AM4.md "wikilink")\[30\]
  - 對[GCC](../Page/GCC.md "wikilink")、[LLVM](../Page/LLVM.md "wikilink")等[編譯器](../Page/編譯器.md "wikilink")做了性能最佳化

## 處理器產品

[AMD_Zen.svg](https://zh.wikipedia.org/wiki/File:AMD_Zen.svg "fig:AMD_Zen.svg") [AMD_Epyc.svg](https://zh.wikipedia.org/wiki/File:AMD_Epyc.svg "fig:AMD_Epyc.svg") [AMD_Threadripper.svg](https://zh.wikipedia.org/wiki/File:AMD_Threadripper.svg "fig:AMD_Threadripper.svg") 除了2017年3月販售的Ryzen以外，主流消費級[AMD APU產品線也更新到Zen微架構了](https://zh.wikipedia.org/wiki/AMD_APU "wikilink")，新版AMD APU預計2017年下半年開賣，\[31\]而伺服器及工作站用的[Opteron](../Page/Opteron.md "wikilink")系列，則是更名為EPYC\[32\]，預計2017年第二季度以後出貨。\[33\]

目前出貨的Zen微架構的處理器均為[GlobalFoundries在美國紐約州的Fab](https://zh.wikipedia.org/wiki/GlobalFoundries "wikilink") 8廠製造，製程工藝技術來自GF與[三星電子](../Page/三星電子.md "wikilink")旗下晶圓廠合作的14nm LPP\[34\]。受制於GF的生產能力，AMD在2017年初以一億美元的代價修訂與GF的合同，不再排除讓三星、台積電代工製造的可能，不過這將在未來的7nm製程節點上開始。\[35\]

### Ryzen系列

2017年3月初至4月中，Ryzen 7、Ryzen 5系列處理器正式上市，Ryzen 7為8核心16執行緒的桌上型電腦處理器，Ryzen 5則是有6核心12執行緒和4核心8執行緒兩種規格，基準時脈從3 GHz \~ 3.6 GHz不等，均支援雙通道DDR4記憶體，擁有最多24條PCIe通道。

早期Ryzen系列的DDR4記憶體支援度有相容性問題，記憶體只能以較低的速率、時序參數運行。不過隨著2017年3月、4月的數次[AGESA](../Page/AGESA.md "wikilink")韌體的更新，已經大有改善，最高能支援至DDR4-3200規格。\[36\]\[37\]

AMD也發表了極致效能級別的產品Ryzen ThreadRipper（线程撕裂者），由Epyc的NUMA結構衍生而來，目前最高16核心32執行緒規格（2×8核心），支援四通道記憶體（由兩個雙通道記憶體控制器提供支援）。本次也是繼AMD Quad FX平台以來第二次面向消費級市場推出NUMA結構的電腦系統平台，不過這次AMD將多顆處理器整合到一塊處理器基板上，僅需一個處理器插座。\[38\]

### APU產品線

2017年5月17日AMD公佈了行動版Ryzen處理器，均為自家的APU產品。本次公佈的CPU規格是，4核心8執行緒、每核心 512KB 的 L2 Cache、所有CPU核心共用 4MB L3 Cache，基準時脈有 1.9 GHz、2 GHz、3 GHz的配置，最高加速時脈可達 3.3 GHz；而GPU則是採用與代號[「Vega」GPU相同的架構](https://zh.wikipedia.org/wiki/Radeon_500系列 "wikilink")，11組CU共704個ALU，核心時脈800MHz左右。\[39\]

### Epyc系列

2017年5月17日AMD在財務分析報告會上宣布，基於Zen微架構的伺服器/工作站用CPU，另立Epyc品牌取代原來[Opteron](../Page/Opteron.md "wikilink")品牌。\[40\]主攻高密度雲端運算等企業應用。\[41\]

最高規格是核心代號「Naples」的[多晶片模組](../Page/多晶片模組.md "wikilink")，由4顆8核心16執行緒的處理器晶片做在一塊處理器PCB上，所以一共擁有4×8個CPU核心，4×16執行緒，晶片之間採用Infinity Fabric連接。處理器採用[Socket SP3](../Page/Socket_SP3.md "wikilink") LGA封裝，支援雙處理器，每顆處理器支援[八通道DDR](../Page/多通道記憶體技術.md "wikilink")4記憶體（由每顆晶片提供雙通道支援），每顆處理器擁有高達64條PCIe 3.0通道，處理器之間也使用Infinity Fabric連接。\[42\]

由於處理器晶片是已經內建SATA/SATA Express控制器、USB控制器、時鐘電路等傳統上由南橋晶片提供的功能，針對高密度伺服器的主機板可更利用海量的PCIe通道增加網路處理元器件、RAID陣列控制器等而無需[南橋晶片](https://zh.wikipedia.org/wiki/南橋晶片 "wikilink")，必要的也就一顆顯示輸出用GPU，也是x86架構平台首次對伺服器市場推出高度整合化的半SoC化處理器。\[43\]不過，也由於處理器本身的多晶片模組設計，相當於一顆[NUMA結構的](https://zh.wikipedia.org/wiki/NUMA "wikilink")4路處理器平台，需要軟體開發做更進一步的針對NUMA結構的最佳化調適，尤其於工作站用途時，不過市面上並不缺少NUMA的使用範例，Intel在企業級平台上也是大量使用。\[44\]

## 效能表現

從多數媒體的首發效能評測而言，首發產品[Ryzen 7系列的每個CPU核心的效能及多執行緒效能已經達到Intel](../Page/AMD_Ryzen.md "wikilink") [Haswell](https://zh.wikipedia.org/wiki/Haswell "wikilink")/Boardwell微架構在同時脈下的水準，能源效率則更佳，多執行緒的需求是Ryzen的優勢，其競爭對手的處理器產品採用舊一代的架構時的預設時脈也不會如此高。\[45\]\[46\]但不足之處是，一來受制於製造工藝，最高時脈及能源效率不如對手英特爾最新的[Skylake](../Page/Skylake微架構.md "wikilink")/Kaby Lake微架構的產品（Intel的[14奈米製程](https://zh.wikipedia.org/wiki/14奈米製程 "wikilink")，在許多方面表現的都優於其他晶圓廠的14/16nm製程），儘管Skylake/Kaby Lake微架構同時脈下效能與Haswell/Boardwell微架構的相比僅5%的效能差別\[47\]\[48\]；二來是長久以來AMD高效能系統平台的缺席、市佔劣勢，間接導致不少軟體對AMD處理器的效能最佳化不良，特別是一些電腦遊戲（一些遊戲效能測試結果顯示似乎這些遊戲並不適應AMD的同步多執行緒，出現效能不升反降的情況，以網路遊戲為重災區）\[49\]\[50\]\[51\]。

目前英特爾主要以製造工藝優勢和預設高時脈優勢與AMD拉開差距，為維持x86處理器的效能領導地位，英特爾推出了[Core i9系列](../Page/Intel_Core_i9.md "wikilink")，市場定位相當於以往的Core i7極致版，但規格更為誇張（特別是時脈參數上，儘管耗電和發熱量上也有所增長）。針對企業級市場打造的EPYC，則在[巨量資料處理以及](../Page/大數據.md "wikilink")[高效能運算上樂勝英特爾的Xeon系列](https://zh.wikipedia.org/wiki/高效能運算 "wikilink")，但是在[資料庫處理方面則不敵對手](https://zh.wikipedia.org/wiki/資料庫 "wikilink")。\[52\]

Ryzen並沒有[熔毀漏洞](https://zh.wikipedia.org/wiki/熔毀_\(安全漏洞\) "wikilink")、[幽靈漏洞的問題也比較輕微](https://zh.wikipedia.org/wiki/幽靈_\(安全漏洞\) "wikilink")，競爭對手Intel修正這些漏洞所造成的效能損失，讓Ryzen在許多需求的競爭力提高。

有第三方x86-64指令集程式最佳化指導機構Anger，推出了針對Zen微架構處理器的源碼最佳化建議指導。\[53\]

## Zen+

**Zen+**是Zen的改進型微架構，\[54\]首款基於Zen+的處理器於2018年4月發表。\[55\]

### 改進之處

Zen+微架構的處理器使用了[GlobalFoundries的](https://zh.wikipedia.org/wiki/GlobalFoundries "wikilink")「12奈米」LP（Leading Performance）工藝製作，\[56\]該製程工藝實際上是同廠[14奈米LPP工藝的改良版](https://zh.wikipedia.org/wiki/14奈米製程 "wikilink")，重在提高單位面積下電晶體的數量（即同等電路下減少晶片面積），而Zen+相較於Zen而言沒有大變動，電晶體數量也是幾乎一樣。\[57\]有第三方媒體對基於Zen+的Ryzen 7進行實測，發現除了晶片面積有所減少以外，相較於第一代也有小幅的時脈提升及同等效能下功耗的下降，\[58\]\[59\]但這個也與AMD對Zen的電源管理有改善有關，主要是對AMD SenseMI電源管理的調整改善，令CPU電源管理模組更快響應CPU的負荷需要，並且在有負荷時CPU核心的時脈比此前Zen的更能維持高[時脈](https://zh.wikipedia.org/wiki/時脈 "wikilink")，特別是XFR2，還進一步改進了檢測單個CPU核心在當前最高工作溫度下的最高時脈的特性。\[60\]

除了換用更新的製程以及對CPU電源管理的改善外，還有：\[61\]

  - 降低對[快取](https://zh.wikipedia.org/wiki/CPU快取 "wikilink")、記憶體存取時所需的時鐘週期
  - 提升快取頻寬
  - 更佳的記憶體相容性以及更高效能參數的記憶體支援（原生支援DDR4-2933，XMP/AMP支援下更達DDR4-3400+）

這些改進使得Zen+相較於Zen而言同時脈下每時鐘週期能處理多3%的指令數量，最高時脈也有6%的提升，最終大約取得10%左右的效能提升。\[62\]

配套的晶片組更新至[400系列](https://zh.wikipedia.org/wiki/AMD_Fusion_Controller_Hub#400系列 "wikilink")，不過原先300系列的通過AGESA EFI韌體更新後（若廠商提供）也可以使用基於Zen+的處理器。

## Zen 2

## 相關

  - [AMD Zen+架構](https://zh.wikipedia.org/wiki/AMD_Zen+架構 "wikilink")
  - [AMD Zen2架構](https://zh.wikipedia.org/wiki/AMD_Zen2架構 "wikilink")
  - [AMD FCH](https://zh.wikipedia.org/wiki/AMD_FCH "wikilink")
  - [Radeon 500系列](https://zh.wikipedia.org/wiki/Radeon_500系列 "wikilink")

## 參考文獻

## 外部連結

  - [“Zen” 核心架构](http://www.amd.com/zh-cn/innovations/software-technologies/zen-cpu)
  - [【Arstechnica】Zen架构详解](http://www.moepc.net/?post=1567)
  - [卧虎藏龙，锐龙 AMD Ryzen 7 1800X评测汇总](http://www.expreview.com/52786.html)

[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink") [Category:AMD處理器](https://zh.wikipedia.org/wiki/Category:AMD處理器 "wikilink")

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

20.  PC Perspective|url=[https://www.pcper.com/reviews/Processors/AMD-Zen-Architecture-Overview-Focus-Ryzen|website=PC](https://www.pcper.com/reviews/Processors/AMD-Zen-Architecture-Overview-Focus-Ryzen%7Cwebsite=PC) Perspective|accessdate=13 March 2017|language=en}}

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

38.  T客邦 - 我只推薦好東西|url=[https://www.techbang.com/posts/53173-before-you-buy-the-amd-ryzen-threadripper-you-should-first-understand-what-is-numa|language=zh-tw](https://www.techbang.com/posts/53173-before-you-buy-the-amd-ryzen-threadripper-you-should-first-understand-what-is-numa%7Clanguage=zh-tw)}}

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

52.

53. ，原載於[Test results for AMD Ryzen](http://agner.org/optimize/blog/read.php?i=838)

54.

55.

56.

57.

58.

59.
60.

61.

62.