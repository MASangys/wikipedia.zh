**Intel Haswell**是[英特爾目前第三新的](https://zh.wikipedia.org/wiki/英特爾 "wikilink")[中央處理器](https://zh.wikipedia.org/wiki/中央處理器 "wikilink")[架構](../Page/微架構.md "wikilink")，由英特爾的[奧勒岡團隊負責研發](https://zh.wikipedia.org/wiki/奧勒岡 "wikilink")，用以取代[Intel Ivy Bridge和](https://zh.wikipedia.org/wiki/Intel_Ivy_Bridge "wikilink")[Intel Sandy Bridge微架構](https://zh.wikipedia.org/wiki/Intel_Sandy_Bridge "wikilink")。\[1\] 和Ivy Bridge微架構一樣，採用22[納米製程](https://zh.wikipedia.org/wiki/納米 "wikilink")\[2\] 根據英特爾的“[Tick-Tock](../Page/Intel_Tick-Tock.md "wikilink")”策略和產品路線圖，基於Intel Haswell微架構的處理器定於2013年6月發布。\[3\]\[4\]Intel曾於2011年的[IDF上展示出基於Haswell微架構的](https://zh.wikipedia.org/wiki/IDF "wikilink")[晶片](https://zh.wikipedia.org/wiki/晶片 "wikilink")。\[5\]2012年的[英特爾開發者論壇](../Page/英特爾開發者論壇.md "wikilink")上，英特爾公佈了更多關於Haswell架構的工程樣品處理器和技術說明。\[6\]在2013年6月4日至6月8日的[台北國際電腦展上](https://zh.wikipedia.org/wiki/台北國際電腦展 "wikilink")，英特爾正式推出Haswell微架構以及其處理器產品。\[7\]

## 技術特性

作為英特爾“Tick-Tock”策略下的產物，在“Tick-Tock”時間表上，Haswell架構屬於“Tock”階段，是為架構改進換代。根據Fudzilla的消息，“英特爾透露給合作夥伴的消息指同時脈下與Ivy Bridge架構的產品相比，Haswell架構的產品其效能至少有10%的提升”。\[8\]而英特爾宣稱Haswell整體效能將比Ivy Bridge快兩倍。\[9\] 英特爾稱在某些工作负荷上Haswell架構的效率比上代產品的提升了20%。

[Haswell_Chip.jpg](https://zh.wikipedia.org/wiki/File:Haswell_Chip.jpg "fig:Haswell_Chip.jpg")，與一隻鐵釘的大小對比\]\]

### 已確認的新特性

#### 製程

  - 更成熟的22[奈米製程](https://zh.wikipedia.org/wiki/奈米 "wikilink")，大幅改善漏電率（這裡的漏電指高製程晶片於運作時，部分電子因[量子穿隧效應](../Page/量子穿隧效應.md "wikilink")而由非電路或電路元件的[矽中穿過](https://zh.wikipedia.org/wiki/矽 "wikilink")）；\[10\]
  - 更成熟的[3D](https://zh.wikipedia.org/wiki/3D "wikilink")-三柵極[電晶體](https://zh.wikipedia.org/wiki/電晶體 "wikilink")；\[11\]

#### 處理器核心

  - 14級[管線](../Page/指令管線化.md "wikilink")（從[Intel Core微架構開始一直沿用至今](https://zh.wikipedia.org/wiki/Intel_Core微處理器架構 "wikilink")）；\[12\]
  - 和以往一樣，[整數運算](https://zh.wikipedia.org/wiki/整數運算 "wikilink")、[浮點運算和](https://zh.wikipedia.org/wiki/浮點運算 "wikilink")[SIMD運算作業同樣通過指令端口進行分配](https://zh.wikipedia.org/wiki/SIMD "wikilink")；\[13\]
  - 每核心4個[算術邏輯單元](https://zh.wikipedia.org/wiki/算術邏輯單元 "wikilink")（[ALU](https://zh.wikipedia.org/wiki/ALU "wikilink")）和3個[位址生成單元](https://zh.wikipedia.org/wiki/位址生成單元 "wikilink")（[AGU](https://zh.wikipedia.org/wiki/AGU "wikilink")，2個位於載入管線，1個位於存儲管線）；\[14\]
  - 每核心8指令發射端口，可同時執行8條內部指令（uOPs），以實現4倍整數運算（Intel Sandy Bridge/Ivy Bridge為6uOPs/3倍整數運算）。\[15\]
  - 2個256位元的SIMD單元，以便支援[Larrabee](../Page/Intel_Larrabee.md "wikilink")/[Knight系列的](https://zh.wikipedia.org/wiki/Intel_Knight "wikilink")512位元SIMD；\[16\]
  - 類似於X79晶片組平台（使用LGA2011插座）的可調節[外頻](https://zh.wikipedia.org/wiki/外頻 "wikilink")/基準時鐘頻率（處理器外頻與基準時脈異步），意味著Haswell平台的[超頻](../Page/超頻.md "wikilink")限制放寬。\[17\]\[18\]實際上，由於QPI環形鏈路的設計使得核心電源和時脈管理出現這樣的混亂：由於三級快取是CPU核心和GPU核心共用，但三級快取的電壓控制以及時脈控制是和CPU核心的同步的，當CPU核心處於低負載而內建GPU核心處於高負載時，三級快取需要處於全速運作狀態，連帶CPU核心也需要全速運作，這樣不利於處理器的功耗控制。英特爾要解決這個問題，需要CPU核心的基準時脈與非CPU核心的異步。\[19\]
  - 主流級處理器產品全線均為原生[四核心](https://zh.wikipedia.org/wiki/多核心 "wikilink")，\[20\]但實際上，英特爾公佈的技術說明已表明下一代的酷睿 i3（Core i3）、奔騰（Pentium）系列仍維持雙核心的設計。\[21\]
  - 英特爾[事务性同步扩展](https://zh.wikipedia.org/wiki/事务性同步扩展 "wikilink") (TSX)，大幅改善[多線程執行效率](https://zh.wikipedia.org/wiki/多線程 "wikilink")。\[22\]\[23\]
  - [AVX2指令集](https://zh.wikipedia.org/wiki/AVX "wikilink")（或稱Haswell新指令集，包括[矢量聚集散射](https://zh.wikipedia.org/wiki/矢量 "wikilink")、[位元處理以及對](../Page/位操作.md "wikilink")[FMA3的支援](https://zh.wikipedia.org/wiki/FMA "wikilink")）\[24\]\[25\]
  - 改善[AES-NI指令的執行效能](https://zh.wikipedia.org/wiki/高級加密標準 "wikilink")；\[26\]

#### 快取、記憶體介面、匯流排、處理器插槽

  - 每核心擁有獨立的64[KB的L](https://zh.wikipedia.org/wiki/KB "wikilink")1[快取](https://zh.wikipedia.org/wiki/快取 "wikilink")（32KB資料快取+32KB[指令快取](https://zh.wikipedia.org/wiki/指令 "wikilink")）；\[27\]；每核心擁有獨立的256KB L2快取；\[28\]所有核心可共享最高32[MB的L](https://zh.wikipedia.org/wiki/MB "wikilink")3快取.\[29\]
  - 新的處理器快取設計，旨在提升快取頻寬，L1、L2快取頻寬由原來的每時鐘週期32位元組（256位元），提升至每時鐘週期64位元組（512位元），提升L2 [TLB命中率](https://zh.wikipedia.org/wiki/TLB "wikilink")。以提升大規模高負載運算任務的資料存取表現；\[30\]
  - 原生支援[雙通道](https://zh.wikipedia.org/wiki/雙通道 "wikilink")[DDR3](https://zh.wikipedia.org/wiki/DDR3 "wikilink")-1600；\[31\]\[32\]企業級的Haswell-EP/EX核心還會支援[八通道](../Page/多通道記憶體技術.md "wikilink")[DDR4](https://zh.wikipedia.org/wiki/DDR4 "wikilink")；\[33\]\[34\]\[35\]
  - 原生支持PCI-E 3.0 x16匯流排
  - 處理器內部仍然使用QPI總線，單向資料傳送效能有4.8GT/s、5.2GT/s、6.4GT/s等三種規格，較低階型號的處理器在晶片組和處理器之間仍然採用DMI總線，單向資料傳送效能有2.5GT/s和5.0GT/s兩種規格；\[36\]QPI總線的佈局延續Intel Sandy Bridge以來的環形鏈路設計，設計簡單而且效率更高，更容易推出衍生產品。\[37\]
  - 新[處理器插座](../Page/CPU插座.md "wikilink")：桌面版本的是[LGA 1150](../Page/LGA_1150.md "wikilink")，行動版本的是[rPGA 947和](https://zh.wikipedia.org/wiki/rPGA_947 "wikilink")[BGA 1364](https://zh.wikipedia.org/wiki/BGA_1364 "wikilink")。\[38\]英特爾的技術說明已表示Intel Haswell不會[向下相容於現有的英特爾處理器平台](https://zh.wikipedia.org/wiki/向下相容 "wikilink")。\[39\]

#### 內建顯示核心

  - 除了部分極致效能/[伺服器平台以外](https://zh.wikipedia.org/wiki/伺服器 "wikilink")，所有處理器型號均融合[Intel HD Graphics](../Page/Intel_HD_Graphics.md "wikilink")[顯示核心](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")。
  - 內建[顯示核心將支援](https://zh.wikipedia.org/wiki/顯示核心 "wikilink") [DirectX 11.1以及](../Page/DirectX.md "wikilink") [OpenGL 4.0](../Page/OpenGL.md "wikilink")；\[40\]通用運算方面支援[Open CL](https://zh.wikipedia.org/wiki/Open_CL "wikilink") 1.2；\[41\]繼續強化3D圖形處理效能，支援HDMI、DisplayPort、DVI、VGA連接埠標準；支援三屏顯示訊號獨立輸出（最高解析度為4096[像素](../Page/像素.md "wikilink")×3072像素）或是[4K分辨率输出](https://zh.wikipedia.org/wiki/4K分辨率 "wikilink")；\[42\]\[43\]
  - 新的英特爾HD圖形顯示核心（[Intel HD Graphics](../Page/Intel_HD_Graphics.md "wikilink")）有三種不同型號，代號分別為GT1、GT2和GT3。GT1擁有10個[執行單元和](https://zh.wikipedia.org/wiki/執行單元 "wikilink")1組紋理單元，定位入門級；GT2擁有20個執行單元和2組紋理單元，定位主流級；最高階的GT3則擁有40個執行單元和4組紋理單元，但只用於行動平台。\[44\]而現任的Intel Ivy Bridge整合顯示核心HD4000最多只有16個執行單元，但顯示核心架構仍舊一樣，\[45\]由於在架構、製程不變的情形下大幅提升顯示核心的規模和規格，可能會使內建顯示核心的Intel Haswell架構的處理器的發熱量急升，桌上型版本可以突破100瓦，行動版本更達57瓦。\[46\]
  - 在相同的功耗水平Haswell能提供两倍于[Intel Ivy Bridge的图像性能](https://zh.wikipedia.org/wiki/Intel_Ivy_Bridge "wikilink")，英特爾稱Haswell的內建GPU的效能可媲美售價50$至70$的獨立顯示核心。
  - 不再支持Windows XP，也不支持Windows Vista。如需在Haswell平台上运行Windows XP，须另行购买独立显卡\[47\]。

#### 電源管理、熱設計功耗

  - 處理器晶片將內建完整的[電壓調節模組](../Page/電壓調節模組.md "wikilink")，Intel又一次把[主機板上的元件整合至處理器上](https://zh.wikipedia.org/wiki/主機板 "wikilink")，\[48\]此舉可令主機板的供電設計變得簡單，降低主機板廠商的製造主機板的製造成本。\[49\]但同時也令主機板廠商的產品賣點減少，趨於同質化，競爭加劇。\[50\]\[51\]英特爾的這種設計並非是電壓調節模組和處理器晶片完全融合，電壓調節模組是一塊獨立的供電晶片，英特爾稱『整合稳压器』（IVR），和處理器晶片共用一塊處理器基板。晶片採用22奈米制程，內建20個『供電單元』（Power Cell），具有可程式化特性，可為處理器各單元模組提供獨立穩定的電壓控制，理論上最多可以為處理器內各個模組單元提供一共320相供電。\[52\]
  - 新的高級電源管理，除了傳統的EIST和Turbo Boost以外，新增了幾個電力控制狀態，對於CPU核心和內建GPU核心將會有更明確精細的電壓控制，類似於對手[超微半導體](https://zh.wikipedia.org/wiki/超微半導體 "wikilink")（[AMD](https://zh.wikipedia.org/wiki/AMD "wikilink")）的Turbo Core 3.0；\[53\]\[54\]
  - 行動版本的處理器將有[熱設計功耗為](https://zh.wikipedia.org/wiki/熱設計功耗 "wikilink")25瓦、37瓦、47瓦以及57瓦的型號\[55\]；而桌機版本的預期則有熱設計功耗為35瓦、45瓦、55瓦、65瓦、77瓦、95瓦以及極致效能（包括高階[伺服器平台的](https://zh.wikipedia.org/wiki/伺服器 "wikilink")）高達100瓦以上TDP的型號\[56\]，最高達到了Haswell-EP/EX的160瓦，最大通過電流190安培\[57\]\[58\]，不過有消息指出，由於增大的顯示核心，主流級和效能級桌面版本處理器的熱設計功耗有可能上揚至105瓦\[59\]；除了流動平台、桌面平台以及伺服器平台以外，Intel還專門為[超極致筆電設計了](../Page/Ultrabook.md "wikilink")[TDP只有](https://zh.wikipedia.org/wiki/TDP "wikilink")15W、10W的版本，而且還將採用[多晶片模組](../Page/多晶片模組.md "wikilink")的設計，將晶片組和處理器整合到一塊處理器[基板上](https://zh.wikipedia.org/wiki/印刷電路板 "wikilink")，類似於[Intel Westmere中顯示核心和CPU核心整合於一塊處理器基板的形式](https://zh.wikipedia.org/wiki/Intel_Westmere "wikilink")。\[60\]\[61\]\[62\]\[63\]\[64\]

### 預期特性

  - 支援[Thunderbolt](../Page/Thunderbolt.md "wikilink")技術。\[65\]

<!-- end list -->

  - 128 bytes cache line.
  - Execution trace cache will be included L2 caching design.

## Haswell Refresh

英特尔在2014年5月发布Haswell的改进版，称为Haswell Refresh。同時，發佈新一代9系晶片組。

Haswell/Haswell Refresh與8/9系晶片組互相相容。Haswell Refresh K系列處理器原先只能在Z97或H97主機板上使用。\[66\]后来英特尔宣布Haswell Refresh K系列处理器也可在8系主板上使用。\[67\]

i7-4790用以取代i7-4771而非i7-4770。

## 晶片組

### 8系列[晶片組](https://zh.wikipedia.org/wiki/晶片組 "wikilink")

  - 支援[USB](../Page/USB.md "wikilink")3.0並最多提供6個[連接埠](https://zh.wikipedia.org/wiki/連接埠 "wikilink")
  - 支援[SATA 6.0Gb/s並提供最多](../Page/SATA.md "wikilink")6個連接埠
  - 優化[硬碟資料傳送效能](https://zh.wikipedia.org/wiki/硬碟 "wikilink")，提高資料存取和響應能力，特別是[固態硬碟](https://zh.wikipedia.org/wiki/固態硬碟 "wikilink")
  - 優化英特爾智能響應技術及其支援[驅動程式](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")
  - 为固態硬碟組建的[硬碟陣列提供完整的TRIM支援](https://zh.wikipedia.org/wiki/硬碟陣列 "wikilink")
  - Intel Lake Tiny技術（動態硬碟加速）改善固態硬碟和機械硬碟混合組合的傳送效能
  - 採用32nm製程
  - 秏電量4.1W（上代為6.7W）
  - 於2013年第二季度上市\[68\]，不相容舊有處理器。\[69\]

消費級平臺上，最高階型號為Z87，支援所有特性；H87不支援動態硬碟加速以及3路PCI-E顯示卡互聯；而最低階的H81取代舊有的H61，僅支援單路PCI-E 2.0 16倍速+六條PCI-E 2.0 1倍速、兩個USB 3.0連接埠+八個USB 2.0連接埠、兩個SATA 6Gbps連接埠+兩個SATA 3Gbps連接埠（無[RAID](../Page/RAID.md "wikilink")和[AHCI](../Page/AHCI.md "wikilink")），以及每通道記憶體只支援一個DIMM（亦即每通道僅能插入一條DDR3記憶體）。除此以外，B85也會取代B75，規格和H87相近但不支援高級硬碟特性。\[70\]\[71\]一些有一定研发实力的厂商，如[华硕电脑](https://zh.wikipedia.org/wiki/华硕电脑 "wikilink")、[华擎科技](https://zh.wikipedia.org/wiki/华擎科技 "wikilink")、[技嘉科技](../Page/技嘉科技.md "wikilink")等，推出的H87、B85芯片组的主板支持一些处理器型号的倍频调整或是基准频率的调整以实现处理器的超频。\[72\]\[73\]\[74\]\[75\]

商務平臺由Q87、Q85分別取代Q77、Q75。\[76\]\[77\]

然而在2013年3月份，有消息指8系列晶片組工程樣品中的USB 3.0控制器存在缺陷，會影響S3休眠電源狀態以及USB 3.0的使用。\[78\]儘管離正式發佈仍有三個月的時間，但是英特爾当时卻沒有修復這個硬體電路BUG的打算，所以销售的C1步进的产品是存在瑕疵的。\[79\]\[80\]后来英特尔于2013年4月份突然宣布这个硬件电路的BUG已修复完成，但仅限于2013年8月份以后推出的C2步进的版本，此前出货的有缺陷的C1步进版本仍然继续销售，只是要注意USB3.0的使用。\[81\]有消息称该缺陷只会在Windows 8系统下碰到。\[82\]据称该缺陷无法通过更新驱动程序或BIOS/EFI修复，但有网友称在Windows 8和Windows Server 2012下可以通过安装KB2811660和KB2822241修复该缺陷。\[83\]\[84\]\[85\]

### 9系列[晶片組](https://zh.wikipedia.org/wiki/晶片組 "wikilink")

  - 支持M.2接口
  - 于2014年第二季度上市，将兼容后续的Broadwell处理器。

## 處理器

### 消費級處理器

首批上市的基於Haswell架構的消費級桌上型處理器有[Core i7系列](https://zh.wikipedia.org/wiki/Intel_Core_i7 "wikilink")、[Core i5系列](../Page/Intel_Core_i5.md "wikilink")，標準電壓版的Core i7-4770K/4770、Core i5-4670K/4670/4570/4430的熱設計功耗為84瓦（其中帶“K”的型號不鎖定[倍頻](https://zh.wikipedia.org/wiki/倍頻器 "wikilink")），節能版的Core i7-4770S、Core i5-4670S/4570S/4430S的為65瓦，低電壓版的Core i7-4770T、Core i5-4670T的為45瓦，超低電壓版的Core i7-4765T、Core i5-4570T（雙核心四線程）的則為35瓦。全部型號內建英特爾HD圖形（HD Graphics 4600）。\[86\]行動版處理器全部為四核心Core i7，分別為i7-4930MX（TDP 57瓦，8MB三級快取）、i7-4900MQ（TDP 47瓦，8MB三級快取）、i7-4800MQ（47瓦，6MB三級快取），均為rPGA封裝。\[87\]\[88\]面向主流市場的Core i3以及Pentium型號則於2013年8月後陸續推出，有Core i3-4130/4330/4340、Pentium G3220/G3420/G3430/G3450等型號。\[89\]\[90\]\[91\]

2014年，為紀念英特爾『[Pentium](https://zh.wikipedia.org/wiki/Pentium "wikilink")』（奔騰）品牌誕生20週年，英特爾已於2014年中期推出無倍頻鎖定的Pentium20週年紀念版(PENTIUM G3258)，英特爾8系列和9系列的晶片組均可支援。\[92\]除此以外，還將發布英特爾首款消費級八核心處理器，支援[DDR4記憶體](https://zh.wikipedia.org/wiki/DDR4 "wikilink")。而且還改進處理器頂蓋中的導熱材料，緩解haswell架構處理器中部分型號的過熱問題。\[93\]\[94\]

### 企業級處理器

Intel為在[高效能計算和高效能資料中心領域對抗](https://zh.wikipedia.org/wiki/超級計算機 "wikilink")[NVIDIA](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")“[Project Denver](../Page/Project_Denver.md "wikilink")”的新形態處理器（基於[ARM的](https://zh.wikipedia.org/wiki/ARM "wikilink")[指令集架構](../Page/指令集架構.md "wikilink")的處理器並整合NVIDIA基於“Maxwell”架構的[GPGPU](https://zh.wikipedia.org/wiki/GPGPU "wikilink")），將推出極致效能的x86處理器核心Haswell-EP/EX，最高支援[八通道](https://zh.wikipedia.org/wiki/多通道 "wikilink")[DDR4](https://zh.wikipedia.org/wiki/DDR4 "wikilink")-4266，熱設計功耗高達160[瓦](../Page/瓦特.md "wikilink")，往下還有145瓦、135瓦、120瓦等幾個階層。\[95\]\[96\]\[97\]

## 效能表現

與上一代Sandy Bridge/Ivy Bridge架構相比：

  - Haswell的CPU核心預期至少有10%～20%的效能提升，相對於Ivy Bridge的製品；\[98\]不過根據2013年3月流出的Core i7-4770K的工程樣品顯示，整體效能水平相較于前兩代的Core i7而言提升幅度仍然有限。\[99\]\[100\]
  - 最高階的內建[圖形處理器](../Page/圖形處理器.md "wikilink")是HD Graphics 4600預計會有翻倍的效能，相對於HD Graphics 4000，而實際上提升幅度和上一代的一樣，而且仍然不及對手[超微半導體的](https://zh.wikipedia.org/wiki/超微半導體 "wikilink")[AMD Fusion](https://zh.wikipedia.org/wiki/AMD_Fusion "wikilink") APU的內建顯示核心。\[101\]

## 過熱問題

內建顯示核心的運行單元(EU)由上代Ivy Bridge的6組大幅增加到20組，同時也將電源控制模組整合到CPU上，四核心型號耗電量由77W上升到84W，使得處理器電壓調節模組的熱量都集中至CPU上，運行時的温度比上代更高，超頻能力亦有所下降。\[102\]\[103\] 因為發熱升高，效能沒有太多提升，使得Haswell微架構在超頻玩家中也被戲稱『hotwell』。\[104\]\[105\]

## 製程改進版：Intel Broadwell

根據Intel的“Tick-Tock”策略路線，Intel Haswell微架構的製程改進版代號為**Intel Broadwell**\[106\]\[107\]，採用14納米製程，於Haswell發布後一年發布。\[108\]\[109\]Intel Broadwell將會採用[系統單晶片](https://zh.wikipedia.org/wiki/系統單晶片 "wikilink")（SoC）或[多晶片模組](../Page/多晶片模組.md "wikilink")（MCM）的設計，將PCH晶片組內建於處理器晶片上或處理器基板上\[110\]。這個將意味著Intel Haswell平台的主機板和處理器無法與Intel Broadwell的處理器/主機板互相相容，因為Haswell平台的主機板仍保留晶片組的設計。\*從命名形式來看,Broadwell一部份處理器型號將兼容LGA1150接口.這符合一代接口用兩代的慣例

2012年11月末，有不實傳言謠傳指英特爾在Broadwell以後將統一採用[BGA封裝](https://zh.wikipedia.org/wiki/BGA "wikilink")，摒棄插槽，屆時將和主機板捆綁販售\[111\]，此言一出，立刻在[個人電腦](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")[DIY市場上引起強烈反對的聲音](../Page/組裝電腦.md "wikilink")，而英特爾發言人Daniel Snyder則出面澄清，“英特爾將繼續在可以預見的未來為使用者提供LGA封裝的處理器製品”。\[112\]\[113\]對手AMD也表示，儘管它們有BGA封裝的製品大量生產，但不會放棄插槽式的處理器製品。\[114\]

英特爾也會在Broadwell中加入新指令：\[115\]

  - ADOC/ADCX指令，用於任意精度整數操作\[116\]

## 繼任微架構

[Intel Skylake微架構將會是Intel](https://zh.wikipedia.org/wiki/Intel_Skylake "wikilink") Haswell微架構及其製程改進版[Intel Broadwell微架構的繼任者](https://zh.wikipedia.org/wiki/Intel_Broadwell "wikilink")。

## 參見

  - [Intel Core](https://zh.wikipedia.org/wiki/Intel_Core "wikilink")
  - [Intel Nehalem](https://zh.wikipedia.org/wiki/Intel_Nehalem "wikilink")
  - [Intel Westmere](https://zh.wikipedia.org/wiki/Intel_Westmere "wikilink")
  - [Intel Sandy Bridge](https://zh.wikipedia.org/wiki/Intel_Sandy_Bridge "wikilink")
  - [Intel Ivy Bridge](https://zh.wikipedia.org/wiki/Intel_Ivy_Bridge "wikilink")
  - [AMD Bulldozer](../Page/AMD_Bulldozer.md "wikilink")
  - [AMD Piledriver](../Page/AMD_Piledriver.md "wikilink")
  - [AMD Steamroller](../Page/AMD_Steamroller.md "wikilink")

## 参考文献

{{-}}

[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink") [Category:Intel處理器架構](https://zh.wikipedia.org/wiki/Category:Intel處理器架構 "wikilink")

1.

2.

3.

4.  [配置英特尔Haswell芯片的PC明年上半年发售](http://www.cnbeta.com/articles/210018.htm)  - cnbeta.com

5.

6.
7.  [Computex 2013：二合一新體驗，Intel 第四代 Core 處理器將不同以往](http://www.techbang.com/posts/13563-computex-2013-two-in-one-experience-intel-fourth-generation-core-processors-will-be-different-from-the-past)

8.  <http://www.fudzilla.com/home/item/28318-haswell-to-be-10%20-percent-faster-than-ivy-bridge>

9.
10. [Intel Haswell：“第4代Core i系列”初揭秘](http://diy.pconline.com.cn/cpu/study_cpu/1207/2854170_all.html) - 太平洋電腦網

11.
12.
13.
14.
15.
16.
17. [Intel to Officially Enable Better Overclocking in Haswell](http://news.softpedia.com/news/Intel-to-Officially-Enable-Better-Overclocking-in-Haswell-293719.shtml)

18. [Intel Haswell Processors to Further Improve Overclocking.](http://www.xbitlabs.com/news/cpu/display/20120919160307_Intel_Haswell_Processors_to_Further_Improve_Overclocking.html)

19. [又能超外频了? Haswell或恢复FSB概念](http://vga.zol.com.cn/348/3484783.html) - zol.com.cn

20.
21. [更强更低耗 Intel新架构Haswell解析](http://www.inpai.com.cn/doc/HDhard/181950_-3.htm)  - 硬派

22.

23.
24.

25.
26.
27. <http://wccftech.com/intel-shark-bay-platform-roadmap-leaked-haswell-engineering-samples-mass-production-beings-q4-2012/>

28.
29.

30.
31.

32.
33. [Intel Haswell-EP Platform Detailed](http://vr-zone.com/articles/intel-haswell-ep-platform-detailed/16419.html) - VR-Zone

34. [DDR4 Haswell-EP：160W十六核角逐NVIDIA](http://news.mydrivers.com/1/230/230124.htm) - 驅動之家

35.

36.
37.
38.

39.
40.

41. [Haswell i7/i5处理器、8系列芯片组完整规格](http://news.mydrivers.com/1/256/256558.htm) - mydrivers.com

42.
43.
44. [Haswell图形性能大爆发：四倍于SNB](http://news.mydrivers.com/1/234/234175.htm) - 驅動之家

45. [最多40个单元：Haswell GPU架构猜想](http://news.mydrivers.com/1/226/226462.htm)

46. [Intel次世代Haswell CPU加強顯示效能造成TDP追高100W？！](http://it.oc.com.tw/ocitview.asp?gitid=2126098)  - itoc

47. [Haswell与XP说再见](http://club.women.sohu.com/it/thread/2b5fnfotht7)  - sohu.com

48. .

49.
50. [Intel Haswell要逼死小主板厂商](http://news.mydrivers.com/1/242/242753.htm) - 驅動之家

51. [分析：Intel会扼杀主板市场吗？](http://www.cnbeta.com/articles/208108.htm) - pcbeta

52. [CPU整合稳压器 主板厂商今后还能怎么玩](http://vga.zol.com.cn/345/3454395.html) - zol.com.cn

53.
54.
55.

56.
57. [Intel Haswell-EP Brings DDR4, to Eat up to 160W, 190 Amps](http://vr-zone.com/articles/intel-haswell-ep-brings-ddr4-to-eat-up-to-160w-190-amps/16141.html) - VR-Zone

58. [AMD压力暂缓 英特尔Haswell矛头直指NVIDIA](http://news.ccidnet.com/art/3215/20120605/3924703_1.html)  - 賽迪網

59. [Haswell桌面顶级型号TDP 100W左右](http://news.mydrivers.com/1/234/234124.htm) - 驅動之家

60.
61.
62. [Haswell明年3-8月连环阵 还有E3-1200 v3](http://news.mydrivers.com/1/233/233962.htm) - 驅動之家

63. [超低压15W：Haswell移动版功耗体系确认](http://news.mydrivers.com/1/233/233943.htm) - 驅動之家

64.
65. .

66.

67. [怒赞！Intel越来越有良心了](http://news.mydrivers.com/1/307/307735.htm) - 驱动之家

68. <http://www.fudzilla.com/home/item/26786-intel-migrates-to-desktop-multi-chip-module-mcm-with-14nm-broadwell>

69.
70.
71. [英特爾8系列晶片組](http://www.digitimes.com.tw/tw/dt/n/shwnws.asp?CnlID=10&Cat=25&Cat1=&id=294429) - digitimes.com.tw

72. [華碩H87/B85主機板發佈新版UEFI BIOS，全面釋放K系列處理器超頻極限](http://www.ithome.com.tw/itadm/article.php?c=81530)  - ithome.com.tw

73. [绝非Z87专利！技嘉H87/B85亦支持超频](http://article.pchome.net/content-1632376.html) - pchome.com.cn

74. [華擎H87/ B85系列主機板超頻限制 DIGITIMES中文網](http://www.digitimes.com.tw/tw/dt/n/shwnws.asp?cnlid=13&id=0000340870_R9P9Y31C69OXUI11SOZUX&cat=40)

75. [H87/B85开始超频吧：华硕官方新BIOS解锁](http://news.mydrivers.com/1/269/269326.htm) - mydrivers.com

76. [Intel發布9款LGA1150主機板 對應明年第二季推出的新處理器](http://mag.udn.com/mag/digital/storypage.jsp?f_ART_ID=417852) - udn.com

77. [Haswell i7/i5处理器、8系列芯片组具体规格](http://www.ithome.com/html/digi/39372.htm)  - ithome.com

78. [USB 3.0缺陷拖累！Intel 下調Haswell主機板首批出貨量…，玩家入手先觀望！](http://www.oc.com.tw/articles/2013-03-15-news-usb3-issue-caused-adjustment-of-intel-haswell-mainboard-volumes.html)  - oc.com.tw

79. [无法软件修复 Haswell USB3.0成为死穴](http://vga.zol.com.cn/360/3602588.html) - 中关村在线

80. [USB3.0有缺陷 Haswell将限量谨慎出货](http://vga.zol.com.cn/360/3602588.html) - zol.com.cn

81. [Intel宣布8系主板芯片组USB3.0故障已修复](http://8080.net/posts/188/21186) - 8080.net

82. [想买没缺陷的8系列主板？再等两三个月](http://mb.zol.com.cn/386/3867170.html) - 中关村在线

83. [分享一下haswell主板C1步进的解决方法](http://bbs.3dmgame.com/thread-3954707-1-1.html) - 3dmgame.com

84. [Windows 8 and Windows Server 2012 update rollup: March 2013](http://support.microsoft.com/kb/2811660) - microsoft.com

85. [Windows 8 and Windows Server 2012 update rollup: April 2013](http://support.microsoft.com/kb/2822241) - microsoft.com

86. [TDP升至84W，首批Haswell处理器命名、频率、GPU型号曝光](http://www.expreview.com/22733.html) - expreview.com

87. [Haswell 行動版首波只有四核心版本，全新 H 系列處理器將加入戰場](http://chinese.vr-zone.com/44251/haswell-mobile-udapte-for-h-series-gt3-cpu-and-naming-rules-changing-12142012/) - VRZone.com

88. [TDP稍升，移动版Haswell处理器M系列三款型号配置曝光](http://www.expreview.com/22789.html) - expreview.com

89.

90.

91.

92.

93.

94.

95.
96.
97.
98. <http://www.fudzilla.com/home/item/28318-haswell-to-be-10%20-percent-faster-than-ivy-bridge>

99. [失望么？Haswell Core i7-4770K性能详尽预览](http://news.mydrivers.com/1/257/257728_all.htm) - mydrivers.com

100. [Intel Haswell CPU效能曝光，處理效能僅微增14%…](http://www.oc.com.tw/articles/2013-03-20-news-intel-haswell-cpu-performance-benchmark-result-leaked.html)  - oc.com.tw

101.
102.

103.

104.

105.

106.

107.

108.

109.

110.
111. <http://semiaccurate.com/2012/11/26/intel-kills-off-the-desktop-pcs-go-with-it/>

112. <http://www.maximumpc.com/article/news/intel_says_company_committed_sockets2012>

113. [Intel官方回应BGA封装，可预见的未来依然支持升级](http://www.expreview.com/22613.html) - expreview.com

114. [AMD:可升级的插槽CPU是我们的爱，决不放弃DIY玩家](http://www.expreview.com/22585.html) - expreview.com

115. <http://software.intel.com/en-us/articles/intel-software-development-emulator>

116. <http://download.intel.com/embedded/processor/whitepaper/327831.pdf>