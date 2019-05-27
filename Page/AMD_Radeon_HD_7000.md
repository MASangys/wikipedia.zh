**AMD Radeon HD
7000**系列，是[AMD的](https://zh.wikipedia.org/wiki/AMD "wikilink")[圖形處理器系列產品](../Page/圖形處理器.md "wikilink")，研發[代號為Southern](https://zh.wikipedia.org/wiki/代號 "wikilink")
Islands（翻譯為南方群島），採用28奈米製程，由[台積電](https://zh.wikipedia.org/wiki/台積電 "wikilink")[代工](https://zh.wikipedia.org/wiki/代工 "wikilink")。本系列第一款產品為Radeon
HD 7970，於2012年1月16日發佈。全系列顯示核心採用「次世代圖形核心」（Graphics Core
Next）架構，針對[通用計算而優化](https://zh.wikipedia.org/wiki/通用計算 "wikilink")。流處理器由4-Ways
VLIW SIMD架構（俗稱4D架構）改良，亦提升了曲面细分性能。透過ZeroCore
Power技術，顯示核心待机的時候，功耗小于3W。另外，Radeon
HD
7000支援[PCI-Express](https://zh.wikipedia.org/wiki/PCI-Express "wikilink")
3.0匯流排和[Direct X](https://zh.wikipedia.org/wiki/Direct_X "wikilink")
11.1。\[1\]

Radeon HD
7000系列的主要競爭對手為[NVIDIA的](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")[GeForce
600系列](https://zh.wikipedia.org/wiki/GeForce_600 "wikilink")，兩者同樣使用[台積電的](https://zh.wikipedia.org/wiki/台灣積體電路製造公司 "wikilink")[28nm製程製造](https://zh.wikipedia.org/wiki/28nm製程 "wikilink")。\[2\]HD
8000-{只}-是HD
7000的更名版本，僅供[OEM](https://zh.wikipedia.org/wiki/OEM "wikilink")。HD
7000的真正後繼者是代號Volcanic Islands（火山島）的[Radeon Rx
200系列](https://zh.wikipedia.org/wiki/Radeon_Rx_200 "wikilink")。

## 新標誌

2013年，AMD時更換了全線產品的標誌，包括[中央處理器和](https://zh.wikipedia.org/wiki/中央處理器 "wikilink")[圖像處理器](https://zh.wikipedia.org/wiki/圖像處理器 "wikilink")，力圖更新Radeon及其他產品的[品牌形象](https://zh.wikipedia.org/wiki/品牌形象 "wikilink")。官方網站的產品介紹都改用了新標誌，但零售產品依然是印着舊的Radeon標誌。\[3\]\[4\]\[5\]

## 架構

從「Southern Islands」南方群島系列開始，超微開始使用新一代名為「Graphics Core
Next」（次世代顯示核心，GCN）的顯示核心架構，主要為加強圖形核心的[通用計算能力而特別設計](https://zh.wikipedia.org/wiki/通用計算 "wikilink")。這種設計概念類似於[英特爾已經取消的](https://zh.wikipedia.org/wiki/英特爾 "wikilink")[Larrabee專案](../Page/Intel_Larrabee.md "wikilink")，但不同的是AMD的專案仍然會重視傳統的圖形處理能力。\[6\]

### 流处理器模組化

對比圖形引擎，流处理器的改動相對比較大。

以往的5-Ways [VLIW](https://zh.wikipedia.org/wiki/VLIW "wikilink")
[SIMD或](https://zh.wikipedia.org/wiki/SIMD "wikilink")4-Ways VLIW
SIMD（俗稱5D/4D架構）架構流處理器是針對[指令而優化的](https://zh.wikipedia.org/wiki/指令 "wikilink")：自[R600顯示核心以來](https://zh.wikipedia.org/wiki/Radeon_R600 "wikilink")，AMD/[ATI顯示核心的流處理單元上是由一個指令發射端](https://zh.wikipedia.org/wiki/ATI "wikilink")+五個「流處理器」（四個矢量運算單元+一個超標量運算單元，後期變更為僅有四個矢量單元），理論上，透過將幾個短指令組合為一個長的指令，使每個流處理單元可同一時間處理一個5D/4D指令，達到大資料吞吐量的目的。但這樣做的缺點也很明顯：需要依賴指令的恰當組合，而且在指令組合時會出現延時。實際上執行時指令組合往往並非最佳組合，造成有部分流處理器處於閒置狀態，致使執行效率不高，而造成超微顯示核心一直以來給人「理論參數高，實際效能低」的印象。\[7\]。所以AMD放棄以往的VLIW架構，改用稱為GCN的新架構。

而新的GCN架構是針對[線程而優化](https://zh.wikipedia.org/wiki/線程 "wikilink")，儘管仍然保留SIMD的設計。GCN架構中，為強化通用處理能力，超微開始引入類似於對手輝達的「串流多處理器」、「GPC」等概念。在GCN架構的顯示核心上，劃分為多個計算單元（Compute
Unit，CU，前稱「GCN陣列」），每個CU單元裏包含指令獲取/仲裁單元（Instruction Fetch
Arbitration）、控制/解碼單元（Control and
Decode）、獨享的一級指令/資料[快取記憶體](https://zh.wikipedia.org/wiki/快取記憶體 "wikilink")、65個[ALU](https://zh.wikipedia.org/wiki/ALU "wikilink")：一個[純量運算單元](https://zh.wikipedia.org/wiki/純量 "wikilink")（Scalar
Unit）以及64個[向量運算單元](../Page/向量.md "wikilink")（Vector
Unit，即流處理器），這64個矢量運算單元中，每16個矢量運算單元組成一個16位元的SIMD陣列並獨享64KB的[暫存器](https://zh.wikipedia.org/wiki/暫存器 "wikilink")，這樣一來，一個CU單元就擁有4組SIMD矢量陣列。在執行運算任務時，所有[資料都會被拆散為](https://zh.wikipedia.org/wiki/資料 "wikilink")1D資料，每個SIMD矢量陣列運行一條[線程](https://zh.wikipedia.org/wiki/線程 "wikilink")，由此一組CU單元可運行四條硬體[執行緒](https://zh.wikipedia.org/wiki/執行緒 "wikilink")，一個GCN架構的顯示核心中包含多個CU單元，因此整個GCN顯示核心可以同時運行多個[任務](https://zh.wikipedia.org/wiki/任務 "wikilink")/[進程](https://zh.wikipedia.org/wiki/進程 "wikilink")，以一組SIMD陣列為一個運算單元的角度看，一個CU單元具備MIMD的特性。超微官方的資料指出，這是一種「基於SIMD陣列的[MIMD架構](https://zh.wikipedia.org/wiki/MIMD "wikilink")」（「Southern
Islands is a MIMD architecture with a SIMD array」）。\[8\]

這樣做的話，只要一直有數據輸入顯示核心，就不會有流處理器閒置。這與[NVIDIA的處理方式相似](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")，將所有數據都分解為1D數據。效率的提升，可以彌補額外配套而增加的線路。在某些特定情況，線程可以[乱序执行](../Page/乱序执行.md "wikilink")，減少線程之間互相影響。\[9\]\[10\]

### 图形引擎

核心配備兩個几何引擎。每一個几何引擎包含曲面细分单元、几何装配器、顶点装配器各一個，還有可用於[卷積運算](https://zh.wikipedia.org/wiki/卷積 "wikilink")、[傅里葉變換等特殊運算任務以及材質貼圖處理的材質陣列](https://zh.wikipedia.org/wiki/傅里葉變換 "wikilink")。單從數量而言，光栅器和曲面细分单元依然比不上對手[NVIDIA](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")。AMD特別針對相關單元的執行效率，聲稱Radeon
HD 7970的曲面细分效能最高是上一代Radeon HD 6970的4倍，即使平均下來也有兩倍的效能提升水準。\[11\]

### 任務仲裁

新增一級和二級執行緒排程機制。為此，核心額外新增了一到兩個Asynchronous Compute
Engine（非同步運算引擎，ACE），用作CU單元（包括其內部）/流處理器的任務分配和仲裁，增強顯示核心的[乱序执行能力](../Page/乱序执行.md "wikilink")（顯示核心本質上依然是順序执行），提高幾何和通用計算的性能\[12\]。

### 暫存器

GCN架構中，為保證資料快速存取，[暫存器數量驚人](https://zh.wikipedia.org/wiki/暫存器 "wikilink")。在一個CU單元中，每一組SIMD矢量陣列擁有各自的暫存器，容量為每組64KB，一個純量單元獨占4KB的暫存器，這樣一來一個CU單元裏共有5個獨立的暫存器。而對手NVIDIA的Kepler架構的[GeForce
600中](https://zh.wikipedia.org/wiki/GeForce_600 "wikilink")，每個SMX單元（相當於一個CU單元）僅有1個全域暫存器，即使是早期Fermi架構的[GeForce
400上](https://zh.wikipedia.org/wiki/GeForce_400 "wikilink")，每組SM單元也是僅有一個全局暫存器。\[13\]\[14\]但是，過多的暫存器會使得顯示核心過於龐大，在出於成本考量時還會擠壓運算單元的電晶體使用量，而且還不利於功耗發熱控制以及時脈的提升，Tahiti
XT頂級顯示核心就擁有約43.13億個電晶體。有評論指出如此龐大的暫存器數量，顯示出Radeon
HD顯示核心暫存器的使用[算法不佳](../Page/算法.md "wikilink")。\[15\]

### 記憶體架構

#### 快取以及記憶體

以往的緩衝記憶體只支援讀取模式。新的緩衝記憶體，可支援讀寫模式，方便交換數據。每一個CU單元擁有64KB的一級快取\[16\]，被劃分為一個32KB的一級唯讀指令快取、一個16KB的一級唯讀資料快取和一個16KB一級可讀寫資料快取，全部是連通的，而且可供其它CU單元存取，以保證資料同步和共享。而且，這種設計更多的似乎是為了日後CPU+GPU協同運算著想。\[17\]\[18\]\[19\]

顯示核心配備每通道容量為64KB到128KB的可讀寫二級快取，與各CU的一級快取之間以及與圖形引擎之間以64位元通道連接，以支援它們之間的資料傳送以及同步。二級快取的通道數還與顯示記憶體控制器數量相對應，比如，Radeon
HD
7970擁有6個64位元的GDDR5記憶體控制器，每個控制器擁有一個通道的二級快取對應，即7970的二級快取容量為386KB～758KB。支援[X86虛擬記憶體技術](../Page/X86.md "wikilink")，可將顯示記憶體中的一部分容量[映射到系統記憶體上](https://zh.wikipedia.org/wiki/映射 "wikilink")，供中央處理器存取，以解決紋理生成速率[樽頸](https://zh.wikipedia.org/wiki/樽頸 "wikilink")。\[20\]

頂級型號Radeon HD
7970擁有6個64位元的[GDDR5記憶體控制器](../Page/GDDR5.md "wikilink")，合組384位元，擁有3GB的顯示記憶體容量。系統介面支援PCI-E
3.0匯流排。

### 通用運算和GPU加速

  - 支援[C](https://zh.wikipedia.org/wiki/C語言 "wikilink")、[C++](../Page/C++.md "wikilink")（及後來的C++
    AMP）以及其它[高階程式語言](https://zh.wikipedia.org/wiki/高階程式語言 "wikilink")
  - 支援CPU和GPU之間統一虛擬尋址、支援GPU讀取記憶體資料和記憶體分頁除錯、CPU和GPU間記憶體資料同步
  - 支援FP64雙精度[浮點運算](https://zh.wikipedia.org/wiki/浮點運算 "wikilink")，和單精度浮點運算的速率比率為1:4
  - 支援[ECC記憶體](https://zh.wikipedia.org/wiki/ECC記憶體 "wikilink")
  - 新增VCE視訊編碼引擎以及SAD媒體處理指令，[UVD升級至](../Page/UVD.md "wikilink")3.0版本
  - 支援[OpenCL](../Page/OpenCL.md "wikilink") 1.2\[21\]

### 圖形程式介面

硬體支援Direct X 11.1所有特性，支援OpenGL 4.3。增加Partially Resident
Textures（局部儲存紋理）特性。支援[光柵作業與Z緩衝單元繼續獨立運作](https://zh.wikipedia.org/wiki/光柵 "wikilink")、所有[紋理作業支援快取讀寫作業等](https://zh.wikipedia.org/wiki/紋理 "wikilink")。\[22\]

### 獨立多路音訊輸出

新增Discrete Digital Multi-Point Audio（DDM
Audio）。以往的顯示核心只支援一個[音頻數據流輸出](https://zh.wikipedia.org/wiki/音頻 "wikilink")。Radeon
HD
7000則支援多個。如果顯示卡接駁三個集成[揚聲器的顯示器](../Page/揚聲器.md "wikilink")，以往只可以一個發聲，現在則是三個皆可有聲效輸出。另外，每個顯示器的音效，都是基於該顯示器顯示中的影像。\[23\]

### 多屏視訊輸出

Eyefinity 2.0（寬域技術）：

  - 支援HDMI 1.4a 3GHz以及DP 1.2 HDR2
  - 不同尺寸的[顯示器都可以組成一個Eyefinity群組](https://zh.wikipedia.org/wiki/顯示器 "wikilink")。
  - Eyefinity技術可配合HD3D技術
  - 桌面[圖標自定義](https://zh.wikipedia.org/wiki/圖標 "wikilink")
  - 自定義解析度
  - 最大支援16K×16K的超高[解析度](https://zh.wikipedia.org/wiki/解析度 "wikilink")\[24\]

### HD3D

需要一個支援120Hz刷新率的顯示裝置，配合[DisplayPort或者](../Page/DisplayPort.md "wikilink")[HDMI](../Page/HDMI.md "wikilink")
1.4a輸出。

### 電源管理

新增[ZeroCore技術](https://zh.wikipedia.org/wiki/ZeroCore "wikilink")，可使顯示核心閒置時进入深度[休眠状态](https://zh.wikipedia.org/wiki/休眠 "wikilink")，将功耗降至小於3瓦。\[25\]在Radeon
HD 7970 GHz Edition（使用Tahiti
XT2核心）上還新增Boost特性，使顯示核心能自動超頻或在拷機測試時使核心頻率和電壓降至安全值，最大值為1125MHz，Radeon
HD 7990推出以後，最低值更低至500MHz。Radeon HD
7790推出時還對電源級別進行了改進，在顯示核心使用中可根據負載需要進行更細膩的電源和時脈調整。\[26\]但与對手NVIDIA的[GPU
Boost相比](https://zh.wikipedia.org/wiki/GPU_Boost "wikilink")，此技术仍略显粗糙。

## 產品

28奈米新架構的AMD Radeon HD 7000系列被劃分為三個級別：用於Radeon HD
7900系列的「[Tahiti](../Page/大溪地.md "wikilink")」頂級顯示核心、Radeon HD
7800系列效能級的「[Pitcairn](https://zh.wikipedia.org/wiki/皮特凱恩群島 "wikilink")」以及Radeon
HD 7700系列主流級的「[Cape
Verde](../Page/佛得角.md "wikilink")」。以完整的晶片來看，效能級的顯示核心（擁有20組CU）大約擁有旗艦級（擁有32組CU）的一半，或兩倍於主流級（擁有10組CU）的流處理器數量，相對應的是單精度浮點運算和雙精度浮點運算的效能也是如此。消費級產品的旗艦型號Radeon
HD 7900系列的雙精度浮點運算的速率大約為單精度浮點運算的四分之一，而效能級的Radeon HD 7800系列和主流級的Radeon HD
7700系列則是十六分之一。\[27\]每個更大的晶片上有兩個額外的記憶體控制器可擴充128位元的匯流排頻寬，實際效能測試中，「Pitcairn」核心擁有和「Tahiti」核心一樣的一對前端曲面細分單元，使得兩者的重度DirectX
11曲面細分效能得分相近。\[28\]

### Radeon HD 7900系列

[缩略图](https://zh.wikipedia.org/wiki/File:Radeon_7970.jpg "fig:缩略图")後的Radeon
HD
7970[顯示卡](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")，由[Sapphire製造](../Page/藍寶科技.md "wikilink")\]\]
首款使用GCN核心，開發代號為「Tahiti」的Radeon HD 7900系列，於2011年12月22日發布。產品系列包括：Radeon HD
7970 GHz Edition、Radeon HD 7970以及Radeon HD 7950。首發顯示卡Radeon HD
7970（核心代號「Tahiti XT」）擁有32組CU共2048個流處理器，核心時脈925MHz；接著的Radeon
HD 7950在7970的基礎上削減有瑕疵的4組CU共256個流處理器，擁有28組CU共1792個流處理器，核心代號「Tahiti
Pro」，核心時脈800MHz。

後來2012年5月發布的Radeon HD 7970 GHz Edition是採用基於小幅改良過的「Tahiti
XT2」，新增Boost動態時脈調節，核心時脈最高可達1050MHz。這三者的公版顯示卡均配備3GB的[GDDR5顯示記憶體](../Page/GDDR5.md "wikilink")，核心使用[台積電的](https://zh.wikipedia.org/wiki/台積電 "wikilink")28奈米
HKMG製程來製造。

發燒級的Radeon HD 7990，最初的核心代號是「New Zealand」，採用兩顆「Tahiti
XT」核心。\[29\]後來因功耗限制，先是改由合作廠商利用「Tahiti
XT2」顯示核心組成「7970 ×2」形式並冠名「7990」的名義推出非公版的「Radeon HD
7990」\[30\]\[31\]。實際上超微已經於2012年第四季度推出過採用兩顆削減過硬體規格「Tahiti」核心的FirePro
S10000專業繪圖卡，但直到2013年4月，超微才發布消費級領域的Radeon HD
7990，開發代號「[Malta](https://zh.wikipedia.org/wiki/馬耳他 "wikilink")」，採用兩顆「Tahiti
XT2」顯示核心，核心最高時脈1GHz，採用6GB的GDDR5顯示記憶體，最大熱設計功耗控制在375瓦。

### Radeon HD 7800系列

開發代號為「Pitcairn」的Radeon HD
7800系列於2012年3月5日正式發布，2012年3月29日正式進入零售市場。這一系列包括Radeon
HD 7870 GHz Edition以及Radeon HD 7850。Radeon HD 7870採用「Pitcairn
XT」顯示核心，擁有20組CU共1280個流處理器，核心時脈1000MHz；Radeon HD
7850則使用「Pitcairn
Pro」顯示核心，擁有16組CU共1024個流處理器，核心時脈860MHz。這兩款公版顯示卡使用2GB的GDDR5顯示記憶體，晶片也是由台積電的28奈米製程生產。\[32\]

2013年，新增Radeon HD 7870 XT（原來是Radeon HD 7890）一員，使用的是「Tahiti」最低階的「Tahiti
LE」顯示核心，擁有24組CU共1536個流處理器，但和「Tahiti
XT2」一樣擁有動態調頻，最高時脈為970MHz，但仍然是使用2GB的GDDR5顯示記憶體，而且是以非公版型號推出市場。

### Radeon HD 7700系列

開發代號為「Cape Verde」的Radeon HD 7700系列於2012年2月15日發布。產品系列有Radeon HD 7770 GHz
Edition和Radeon HD 7750。Radeon HD 7770 GHz Edition採用「Cape Verde
XT」顯示核心擁有10組CU共640個流處理器，核心時脈1000MHz；Radeon HD
7750採用規格削減的「Cape Verde
Pro」擁有8組CU共512個流處理器，核心時脈800MHz。同樣兩款公版顯示卡配備1GB的GDDR5顯示記憶體，晶片也是由台積電的28奈米製程製造。

2013年3月22日，新增Radeon HD 7790，採用基於GCN小幅改良版本GCN 1.1的「Bonaire
XT」顯示核心，效能高於Radeon HD 7770而弱於Radeon HD
7850。超微也準備推出基於GCN架構的新入門級產品Radeon HD
7730，儘管是入門級產品，但根據工程樣品的效能測試表明其仍然擁有兩倍於Radeon HD
6670的效能表現。\[33\]

### Radeon HD 7600/7500/7400/7300系列

目前除了內建於下一代低功耗[AMD
APU的Radeon](https://zh.wikipedia.org/wiki/AMD_APU "wikilink") HD
7420G以外，其它型號均外上一代產品的更名版本。

## 顯示核心列表

### 桌上型平台

#### 獨立顯示核心

  - HD 76xx及以下的顯示核心採用舊有的5Ways-VLIW SIMD架構
  - HD 73xx-76xx 支援 [DirectX](../Page/DirectX.md "wikilink")
    11，[OpenGL](../Page/OpenGL.md "wikilink") 4.2
    和[OpenCL](../Page/OpenCL.md "wikilink") 1.2

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出年分</p></th>
<th><p>開發代號</p></th>
<th><p>製造工藝(<a href="https://zh.wikipedia.org/wiki/nm" title="wikilink">nm</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/晶體管" title="wikilink">晶體管數目</a> (百萬)</p></th>
<th><p>核心尺寸(<a href="https://zh.wikipedia.org/wiki/平方毫米" title="wikilink">mm<sup>2</sup></a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排介面</a></p></th>
<th><p>記億體 (<a href="https://zh.wikipedia.org/wiki/MB" title="wikilink">MB</a>)</p></th>
<th><p>核心頻率</p></th>
<th><p>核心配置<br />
<sup>SPs:TMUs:ROPs<sub>1</sub></sup></p></th>
<th><p>填充率</p></th>
<th><p>顯示記憶體</p></th>
<th><p>單精度浮點<br />
（GFLOPS）</p></th>
<th><p>TDP<sup>3</sup> (W)</p></th>
<th><p>GFLOPS/W</p></th>
<th><p>雙精度浮點<br />
（GFLOPS）</p></th>
<th><p>備註</p></th>
<th><p>售價 (USD)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>核心 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記億體 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>材質 (<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)</p></td>
<td><p>頻寛 (<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p>匯流排類型<sup>2</sup></p></td>
<td><p>匯流排寬度(<a href="https://zh.wikipedia.org/wiki/比特" title="wikilink">比特</a>)</p></td>
<td><p>空閒</p></td>
<td><p>滿載</p></td>
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
<td><p>Radeon HD 7350 [34]</p></td>
<td><p>2012年1月[35]</p></td>
<td><p>Cedar [36]</p></td>
<td><p>40</p></td>
<td><p>292</p></td>
<td><p>59</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>?</p></td>
<td><p>400-650</p></td>
<td><p>400<br />
800</p></td>
<td><p>80:8:4</p></td>
<td><p>1.6-2.6</p></td>
<td><p>3.2-5.2</p></td>
<td><p>6.4<br />
12.8</p></td>
<td><p>DDR2<br />
DDR3</p></td>
<td><p>64</p></td>
<td><p>104</p></td>
<td><p>6.4</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7450 [37]</p></td>
<td><p>2012年1月[38]</p></td>
<td><p>Caicos [39]</p></td>
<td><p>40</p></td>
<td><p>370</p></td>
<td><p>67</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>512<br />
1024</p></td>
<td><p>625-750</p></td>
<td><p>533-800</p></td>
<td><p>160:8:4</p></td>
<td><p>2.5-3</p></td>
<td><p>5-6</p></td>
<td><p>8.5-12.8</p></td>
<td><p>DDR3</p></td>
<td><p>64</p></td>
<td><p>200-240</p></td>
<td><p>9</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7470 [40]</p></td>
<td><p>2012年1月[41]</p></td>
<td><p>512<br />
1024</p></td>
<td><p>625-750</p></td>
<td><p>800-900</p></td>
<td><p>160:8:4</p></td>
<td><p>2.5-3</p></td>
<td><p>5-6</p></td>
<td><p>25.6-28.8</p></td>
<td><p>GDDR5</p></td>
<td><p>64</p></td>
<td><p>200-240</p></td>
<td><p>9</p></td>
<td><p>27</p></td>
<td><p>7.41-8.89</p></td>
<td></td>
<td><p>?</p></td>
<td><p>OEM</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7570 [42]</p></td>
<td><p>2012年1月[43]</p></td>
<td><p>Turks PRO [44]</p></td>
<td><p>40</p></td>
<td><p>716</p></td>
<td><p>118</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>512<br />
1024<br />
2048</p></td>
<td><p>650</p></td>
<td><p>900<br />
1000</p></td>
<td><p>480:24:8</p></td>
<td><p>5.2</p></td>
<td><p>15.6</p></td>
<td><p>28.8<br />
64</p></td>
<td><p>GDDR3<br />
GDDR5</p></td>
<td><p>128</p></td>
<td><p>624</p></td>
<td><p>10<br />
11</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7670 [45]</p></td>
<td><p>2012年1月[46]</p></td>
<td><p>Turks XT [47]</p></td>
<td><p>40</p></td>
<td><p>716</p></td>
<td><p>118</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>512<br />
1024</p></td>
<td><p>800</p></td>
<td><p>1000</p></td>
<td><p>480:24:8</p></td>
<td><p>6.4</p></td>
<td><p>19.2</p></td>
<td><p>64</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
<td><p>768</p></td>
<td><p>12</p></td>
</tr>
</tbody>
</table>

  - HD 77xx-79xx則採用新的GCN（Graphics Core Next）架構。
  - HD 77xx-79xx 支援 [DirectX](../Page/DirectX.md "wikilink")
    11.1，[OpenGL](../Page/OpenGL.md "wikilink") 4.2 和
    [OpenCL](../Page/OpenCL.md "wikilink") 1.2
  - HD 7790支援[DirectX](../Page/DirectX.md "wikilink")
    11.1，[OpenGL](../Page/OpenGL.md "wikilink")
    4.3和[OpenCL](../Page/OpenCL.md "wikilink") 1.2
  - HD 7790的核心設計上，包含兩個異步運算引擎（ACE），和7800/7900系列一樣，而不是7700系列的一個\[48\]
  - 「Bonaire」核心，和未來即將發布的「Caribbean Sea」、「Malta」地中海海島（Mediterranean
    Sea）系列一樣，是GCN架構的小幅度改良版本之一
  - HD 7990官方版本直到2013年4月方有發布，最早由諸如Powercolor、華碩以及HIS等超微官方合作夥伴推出的帶有「HD
    7990」的HD7970 X2的顯示卡均為非官方/非公版設定。
  - 雙精度浮點效能實際基於販售市場的不同會有所改變，這裡列出的是超微官方公佈的最高效能數據

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出年分</p></th>
<th><p>開發代號</p></th>
<th><p>製造工藝(<a href="https://zh.wikipedia.org/wiki/nm" title="wikilink">nm</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/晶體管" title="wikilink">晶體管數目</a> (百萬)</p></th>
<th><p>核心尺寸(<a href="https://zh.wikipedia.org/wiki/平方毫米" title="wikilink">mm<sup>2</sup></a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排介面</a></p></th>
<th><p>記億體 (<a href="https://zh.wikipedia.org/wiki/MB" title="wikilink">MB</a>)</p></th>
<th><p>頻率</p></th>
<th><p>核心配置<br />
<sup>CUs:SPs/ALUs:TMUs:ROPs<sub>1</sub></sup></p></th>
<th><p>填充率</p></th>
<th><p>顯示記憶體</p></th>
<th><p>單精度浮點<br />
（GFLOPS）</p></th>
<th><p>TDP<sup>3</sup> (W)</p></th>
<th><p>GFLOPS/W</p></th>
<th><p>雙精度浮點<br />
（GFLOPS）</p></th>
<th><p>備註</p></th>
<th><p>售價 (USD)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>核心 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記億體 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>材質 (<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)</p></td>
<td><p>頻寛 (<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p>匯流排類型<sup>2</sup></p></td>
<td><p>匯流排寬度(<a href="https://zh.wikipedia.org/wiki/比特" title="wikilink">比特</a>)</p></td>
<td><p>空閒</p></td>
<td><p>滿載</p></td>
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
<td><p>Radeon HD 7730[49][50][51][52]</p></td>
<td><p>2013年4月</p></td>
<td><p>Cape Verde LE</p></td>
<td><p>28</p></td>
<td><p>1500</p></td>
<td><p>123</p></td>
<td><p>PCIe 3.0 ×16</p></td>
<td><p>1024</p></td>
<td><p>800</p></td>
<td><p>900（DDR3）<br />
1125（GDDR5）</p></td>
<td><p>6:384:24:16</p></td>
<td><p>12.8</p></td>
<td><p>19.2</p></td>
<td><p>28.8（DDR3）<br />
72（GDDR5）</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
<td><p>128</p></td>
<td><p>614.4</p></td>
<td><p>10</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7750 [53]</p></td>
<td><p>2012年2月15日[54]</p></td>
<td><p>Cape Verde Pro [55]</p></td>
<td><p>28</p></td>
<td><p>1500 [56]</p></td>
<td><p>123 [57]</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024<br />
2048<br />
4096</p></td>
<td><p>800<br />
900</p></td>
<td><p>1125</p></td>
<td><p>8:512:32:16</p></td>
<td><p>12.8</p></td>
<td><p>25.6</p></td>
<td><p>72</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
<td><p>819.2</p></td>
<td><p>10 [58]</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7770 GHz Edition[59]</p></td>
<td><p>2012年2月15日 [60]</p></td>
<td><p>Cape Verde XT [61]</p></td>
<td><p>28</p></td>
<td><p>1500 [62]</p></td>
<td><p>123 [63]</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>1000<br />
1100</p></td>
<td><p>1125</p></td>
<td><p>10:640:40:16</p></td>
<td><p>16</p></td>
<td><p>40</p></td>
<td><p>72</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
<td><p>1280</p></td>
<td><p>10 [64]</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7790 [65]</p></td>
<td><p>2013年3月22日[66]</p></td>
<td><p>Bonaire XT</p></td>
<td><p>28</p></td>
<td><p>2080</p></td>
<td><p>160</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>1000</p></td>
<td><p>1500</p></td>
<td><p>14:896:56:16</p></td>
<td><p>16</p></td>
<td><p>56</p></td>
<td><p>96</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
<td><p>1790</p></td>
<td><p>10</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7850 [67]</p></td>
<td><p>2012年3月19日 [68]</p></td>
<td><p>Pitcairn Pro [69]</p></td>
<td><p>28</p></td>
<td><p>2800 [70]</p></td>
<td><p>212 [71]</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024[72][73]<br />
2048</p></td>
<td><p>860</p></td>
<td><p>1200</p></td>
<td><p>16:1024:64:32</p></td>
<td><p>27.52</p></td>
<td><p>55.04</p></td>
<td><p>153.6</p></td>
<td><p>GDDR5</p></td>
<td><p>256</p></td>
<td><p>1761.28</p></td>
<td><p>10 [74]</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7870 GHz Edition[75]</p></td>
<td><p>2012年3月19日 [76]</p></td>
<td><p>Pitcairn XT [77]</p></td>
<td><p>28</p></td>
<td><p>2800 [78]</p></td>
<td><p>212 [79]</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048</p></td>
<td><p>1000</p></td>
<td><p>1200</p></td>
<td><p>20:1280:80:32</p></td>
<td><p>32</p></td>
<td><p>80</p></td>
<td><p>153.6</p></td>
<td><p>GDDR5</p></td>
<td><p>256</p></td>
<td><p>2560</p></td>
<td><p>10 [80]</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7870 XT[81]</p></td>
<td><p>2012年11月27日</p></td>
<td><p>Tahiti LE [82]</p></td>
<td><p>28</p></td>
<td><p>4313</p></td>
<td><p>365[83]</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048</p></td>
<td><p>925<br />
Boost:975</p></td>
<td><p>1500</p></td>
<td><p>24:1536:96:32</p></td>
<td><p>31.2</p></td>
<td><p>93.6</p></td>
<td><p>192</p></td>
<td><p>GDDR5</p></td>
<td><p>256</p></td>
<td><p>2995.2</p></td>
<td><p>15</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7950 [84]</p></td>
<td><p>2012年1月31日 [85]</p></td>
<td><p>Tahiti Pro [86]</p></td>
<td><p>28</p></td>
<td><p>4313</p></td>
<td><p>352 [87]</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>3072</p></td>
<td><p>850<br />
925</p></td>
<td><p>1250</p></td>
<td><p>28:1792:112:32</p></td>
<td><p>25.6</p></td>
<td><p>89.6</p></td>
<td><p>240</p></td>
<td><p>GDDR5</p></td>
<td><p>384</p></td>
<td><p>2867.2</p></td>
<td><p>15 [88]</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7950 Boost[89][90]</p></td>
<td><p>2012年8月14日</p></td>
<td><p>Tahiti PRO2<br />
Tahiti PRO-H2</p></td>
<td><p>28</p></td>
<td><p>4313</p></td>
<td><p>352</p></td>
<td><p>PCIe 3.0 ×16</p></td>
<td><p>3072</p></td>
<td><p>850<br />
Boost: 925</p></td>
<td><p>1250</p></td>
<td><p>28:1792:112:32</p></td>
<td><p>29.6</p></td>
<td><p>103.6</p></td>
<td><p>240</p></td>
<td><p>GDDR5</p></td>
<td><p>384</p></td>
<td><p>3046.4<br />
3315.2</p></td>
<td><p>15</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7970 [91]</p></td>
<td><p>2012年1月9日 [92]</p></td>
<td><p>Tahiti XT [93]</p></td>
<td><p>28</p></td>
<td><p>4313</p></td>
<td><p>352 [94]</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>3072<br />
6144</p></td>
<td><p>925</p></td>
<td><p>1375</p></td>
<td><p>32:2048:128:32</p></td>
<td><p>29.6</p></td>
<td><p>118.4</p></td>
<td><p>264</p></td>
<td><p>GDDR5</p></td>
<td><p>384</p></td>
<td><p>3788.8</p></td>
<td><p>15 [95]</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7970 GHz Edition [96]</p></td>
<td><p>2012年6月22日</p></td>
<td><p>Tahiti XT2 [97]</p></td>
<td><p>28</p></td>
<td><p>4313</p></td>
<td><p>352 [98]</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>3072<br />
6144</p></td>
<td><p>1000<br />
1050</p></td>
<td><p>1500</p></td>
<td><p>32:2048:128:32</p></td>
<td><p>33.6</p></td>
<td><p>134.4</p></td>
<td><p>288</p></td>
<td><p>GDDR5</p></td>
<td><p>384</p></td>
<td><p>4300</p></td>
<td><p>15</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7990 <small><sup>4</sup></small></p></td>
<td><p>2013年4月23日</p></td>
<td><p>Malta（Tahiti XT2 ×2）[99]</p></td>
<td><p>28</p></td>
<td><p>4313 ×2</p></td>
<td><p>352 ×2 [100]</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>3072 ×2</p></td>
<td><p>950<br />
1000</p></td>
<td><p>1500</p></td>
<td><p>32:2048:128:32 ×2</p></td>
<td><p>64</p></td>
<td><p>256</p></td>
<td><p>576</p></td>
<td><p>GDDR5</p></td>
<td><p>384 x2</p></td>
<td><p>8200</p></td>
<td><p>30</p></td>
</tr>
</tbody>
</table>

  -
    <sup>1</sup> （計算單元，Compute
    Units）：[統一渲染器](https://zh.wikipedia.org/wiki/GPGPU "wikilink")（[頂點渲染器](https://zh.wikipedia.org/wiki/頂點著色器 "wikilink")/[幾何渲染器](https://zh.wikipedia.org/wiki/幾何著色器 "wikilink")/[像素渲染器](https://zh.wikipedia.org/wiki/像素著色器 "wikilink"))
    : [紋理鏡射單元](https://zh.wikipedia.org/wiki/紋理鏡射單元 "wikilink")（Texture
    mapping unit） :
    [渲染輸出單元](https://zh.wikipedia.org/wiki/渲染輸出單元 "wikilink")（Render
    Output unit）
    <sup>2</sup>
    [GDDR5](../Page/GDDR5.md "wikilink")[顯示記憶體的資料存取時脈是顯示記憶體時脈的四倍](https://zh.wikipedia.org/wiki/顯示記憶體 "wikilink")，而不是GDDR3/DDR3的兩倍
    <sup>3</sup>
    熱設計功耗（TDP）是超微官方數據，實際由於不同廠商有不同的顯卡線路板設計以及不同的核心時脈參數設定，會影響實際的TDP數值
    <sup>4</sup> Radeon HD
    7990的資料是基於超微官方於2013年4月發布時的正式資料，而非此前[PowerColor](../Page/PowerColor.md "wikilink")、[華碩以及](../Page/華碩.md "wikilink")[HIS推出的](../Page/基恩資訊.md "wikilink")「HD
    7990」的參數
    <sup>5</sup>
    採用Tahiti的繪圖卡都有兩個[BIOS](../Page/BIOS.md "wikilink")，第二個BIOS貯存了較高的核心頻率，稱為「BOOST」，但初版的HD7970沒有此功能

#### 整合式顯示核心

  - 全部型號均支援[DirectX](../Page/DirectX.md "wikilink")
    11.1、[OpenGL](../Page/OpenGL.md "wikilink")
    4.2和[OpenCL](../Page/OpenCL.md "wikilink") 1.2
  - 全部型號內建「統一北橋」（UNB/MC）匯流排輸出輸入界面
  - 全部型號均由驅動程式設定強制停用雙精度浮點運算特性
  - 全部型號支援角度無關各向異性過濾、UVD3.2以及最高支援四屏輸出的[Eyefinity寬域顯示技術](https://zh.wikipedia.org/wiki/Eyefinity "wikilink")
  - 全部型號均基於Radeon HD 6900系列「Cayman」核心採用的4Ways-VLIW SIMD架構
  - 全部型號是內建於[AMD
    APU的部分型號中](https://zh.wikipedia.org/wiki/AMD_APU "wikilink")，並由[格羅方德採用和CPU核心一致的](https://zh.wikipedia.org/wiki/格羅方德 "wikilink")32奈米
    HKMG製程製造

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出時間</p></th>
<th><p>核心代號</p></th>
<th><p>製造工藝 (<a href="https://zh.wikipedia.org/wiki/奈米" title="wikilink">nm</a>)</p></th>
<th><p>核心時脈 (<a href="https://zh.wikipedia.org/wiki/MHz" title="wikilink">MHz</a>)</p></th>
<th><p>核心配置<sub>SPs/ALUs:TMUs:ROPs<sup>1</sup></sub></p></th>
<th><p>填充率</p></th>
<th><p>記憶體類型</p></th>
<th><p>單精度浮點<br />
（GFLOPS）</p></th>
<th><p>滿載TDP<sup>2</sup> (W)</p></th>
<th><p>GFLOPS/W</p></th>
<th><p>備註</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>像素（<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s）</p></td>
<td><p>材質/紋理（<a href="https://zh.wikipedia.org/wiki/材質_(圖形處理器)" title="wikilink">GT</a>/s)</p></td>
<td><p>頻寬（<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s）</p></td>
<td><p>匯流排類型</p></td>
<td><p>匯流排寬度 (<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7480D</p></td>
<td><p>2012年6月1日</p></td>
<td><p>Devastator</p></td>
<td><p>32</p></td>
<td><p>723</p></td>
<td><p>128:8:4</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>25.6</p></td>
<td><p>DDR3-1600</p></td>
<td><p>128</p></td>
<td><p>185</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7540D</p></td>
<td><p>2012年6月1日</p></td>
<td><p>Devastator</p></td>
<td><p>32</p></td>
<td><p>760</p></td>
<td><p>192:12:4</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>29.9</p></td>
<td><p>DDR3-1866（最高2400）</p></td>
<td><p>128</p></td>
<td><p>292</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7560D</p></td>
<td><p>2012年6月1日</p></td>
<td><p>Devastator</p></td>
<td><p>32</p></td>
<td><p>760</p></td>
<td><p>256:16:4</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>29.9</p></td>
<td><p>DDR3-1866（最高2400）</p></td>
<td><p>128</p></td>
<td><p>389</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7660D</p></td>
<td><p>2012年6月1日</p></td>
<td><p>Devastator</p></td>
<td><p>32</p></td>
<td><p>760-800</p></td>
<td><p>384:24:8</p></td>
<td><p>2.7</p></td>
<td><p>16.2</p></td>
<td><p>29.9</p></td>
<td><p>DDR3-1866（最高2400）</p></td>
<td><p>128</p></td>
<td><p>584-614</p></td>
</tr>
</tbody>
</table>

  - <sub>1</sub>：熱設計功耗（TDP）的數據中是包含CPU核心的熱功率，根據超微的官方資料。顯示核心的實際TDP取決於AMD
    APU的核心負載

### 行動平台

#### 獨立顯示核心

  - 內部系列型號「London」
  - 部分型號仍使用舊有顯示核心，40奈米製程；其餘的為新的GCN架構顯示核心，28奈米製程
  - 全部型號支援[OpenCL](../Page/OpenCL.md "wikilink") 1.2

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出時間</p></th>
<th><p>內部型號</p></th>
<th><p>開發代號</p></th>
<th><p>製造工藝 （奈米）</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排介面</a></p></th>
<th><p>記億體 (<a href="https://zh.wikipedia.org/wiki/MB" title="wikilink">MB</a>)</p></th>
<th><p>核心時脈</p></th>
<th><p>核心配置<sup>1</sup></p></th>
<th><p><a href="../Page/填充率.md" title="wikilink">填充率</a></p></th>
<th><p>顯示記憶體</p></th>
<th><p>單精度浮點<br />
（GFLOPs）</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a></p></th>
<th><p>熱設計功耗（W）</p></th>
<th><p>特性/備註</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>核心 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>材質 (<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)</p></td>
<td><p>頻寬 (<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p>匯流排類型<sup>2</sup></p></td>
<td><p>匯流排寬度(<a href="https://zh.wikipedia.org/wiki/比特" title="wikilink">比特</a>)</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7430M</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Seymour Pro</p></td>
<td><p>Caicos</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024</p></td>
<td><p>600</p></td>
<td><p>900</p></td>
<td><p>160:8:4</p></td>
<td><p>2.4</p></td>
<td><p>4.8</p></td>
<td><p>14.4</p></td>
<td><p>DDR3</p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7450M</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Seymour Pro</p></td>
<td><p>Caicos</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024</p></td>
<td><p>700<br />
700</p></td>
<td><p>900<br />
800</p></td>
<td><p>160:8:4</p></td>
<td><p>2.8</p></td>
<td><p>5.6</p></td>
<td><p>14.4<br />
25.6</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
<td><p>64</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7470M</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Seymour XT</p></td>
<td><p>Caicos</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024</p></td>
<td><p>750<br />
800</p></td>
<td><p>900<br />
800</p></td>
<td><p>160:8:4</p></td>
<td><p>3.0<br />
3.2</p></td>
<td><p>6<br />
6.4</p></td>
<td><p>14.4<br />
25.6</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7490M</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Seymour XTX</p></td>
<td><p>Caicos</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024</p></td>
<td><p>800</p></td>
<td><p>950</p></td>
<td><p>160:8:4</p></td>
<td><p>3.2</p></td>
<td><p>6.4</p></td>
<td><p>30.4</p></td>
<td><p>GDDR5</p></td>
<td><p>64</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7510M</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Thames LE</p></td>
<td><p>Turks</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024</p></td>
<td><p>450</p></td>
<td><p>800</p></td>
<td><p>400:20:8</p></td>
<td><p>3.6</p></td>
<td><p>9.0</p></td>
<td><p>12.8</p></td>
<td><p>DDR3</p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7530M</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Thames LP</p></td>
<td><p>Turks</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024</p></td>
<td><p>450</p></td>
<td><p>900</p></td>
<td><p>400:24:8</p></td>
<td><p>3.6</p></td>
<td><p>9.0</p></td>
<td><p>14.4</p></td>
<td><p>DDR3</p></td>
<td><p>64</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7550M</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Thames Pro</p></td>
<td><p>Turks</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024</p></td>
<td><p>450<br />
550</p></td>
<td><p>900<br />
800</p></td>
<td><p>400:20:8</p></td>
<td><p>3.6<br />
4.4</p></td>
<td><p>9.0<br />
11.0</p></td>
<td><p>14.4<br />
25.6</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7570M</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Thames Pro</p></td>
<td><p>Turks</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024</p></td>
<td><p>450<br />
650</p></td>
<td><p>900<br />
800</p></td>
<td><p>400:20:8</p></td>
<td><p>3.6<br />
5.2</p></td>
<td><p>9.0<br />
13.0</p></td>
<td><p>14.4<br />
25.6</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
<td><p>64</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7590M</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Thames XT</p></td>
<td><p>Turks</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024</p></td>
<td><p>600</p></td>
<td><p>800</p></td>
<td><p>480:24:8</p></td>
<td><p>4.8</p></td>
<td><p>14.4</p></td>
<td><p>25.6</p></td>
<td><p>GDDR5</p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7610M</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Thames LE</p></td>
<td><p>Turks</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024</p></td>
<td><p>450</p></td>
<td><p>800</p></td>
<td><p>400:20:8</p></td>
<td><p>3.6</p></td>
<td><p>9.0</p></td>
<td><p>25.6</p></td>
<td><p>DDR3</p></td>
<td><p>128</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7630M</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Thames LP</p></td>
<td><p>Turks</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024</p></td>
<td><p>450</p></td>
<td><p>800</p></td>
<td><p>480:24:8</p></td>
<td><p>3.6</p></td>
<td><p>10.8</p></td>
<td><p>25.6</p></td>
<td><p>DDR3</p></td>
<td><p>128</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7650M</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Thames Pro</p></td>
<td><p>Turks</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024</p></td>
<td><p>450<br />
550</p></td>
<td><p>800<br />
800</p></td>
<td><p>480:24:8</p></td>
<td><p>3.6<br />
4.4</p></td>
<td><p>10.8<br />
13.2</p></td>
<td><p>25.6</p></td>
<td><p>DDR3</p></td>
<td><p>128</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7670M</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Thames Pro</p></td>
<td><p>Turks</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024</p></td>
<td><p>600</p></td>
<td><p>900</p></td>
<td><p>480:24:8</p></td>
<td><p>4.8</p></td>
<td><p>14.4</p></td>
<td><p>28.8<br />
57.6</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
<td><p>128</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7690M</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Thames XT</p></td>
<td><p>Turks</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>725<br />
600</p></td>
<td><p>900<br />
900</p></td>
<td><p>480:24:8</p></td>
<td><p>5.8<br />
4.8</p></td>
<td><p>17.4<br />
14.4</p></td>
<td><p>28.8<br />
57.6</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
<td><p>128</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7690M XT</p></td>
<td><p>2012年1月7日</p></td>
<td><p>Thames XTX</p></td>
<td><p>Turks</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>725</p></td>
<td><p>900</p></td>
<td><p>480:24:8</p></td>
<td><p>5.8</p></td>
<td><p>17.4</p></td>
<td><p>57.6</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
</tr>
</tbody>
</table>

以下是使用新架構的顯示核心

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出時間</p></th>
<th><p>內部型號</p></th>
<th><p>開發代號</p></th>
<th><p>製造工藝 （奈米）</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排介面</a></p></th>
<th><p>記億體 (<a href="https://zh.wikipedia.org/wiki/MB" title="wikilink">MB</a>)</p></th>
<th><p>核心時脈</p></th>
<th><p>核心配置<sup>1</sup></p></th>
<th><p><a href="../Page/填充率.md" title="wikilink">填充率</a></p></th>
<th><p>顯示記憶體</p></th>
<th><p>單精度浮點<br />
（GFLOPs）</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a></p></th>
<th><p>熱設計功耗（W）</p></th>
<th><p>特性/備註</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>核心 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>材質 (<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)</p></td>
<td><p>頻寬 (<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p>匯流排類型<sup>2</sup></p></td>
<td><p>匯流排寬度(<a href="https://zh.wikipedia.org/wiki/比特" title="wikilink">比特</a>)</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7730M</p></td>
<td><p>2012年4月24日</p></td>
<td><p>Chelsea LP</p></td>
<td><p>Cape Verde</p></td>
<td><p>28</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>2048</p></td>
<td><p>575<br />
675</p></td>
<td><p>900<br />
900</p></td>
<td><p>512:32:16</p></td>
<td><p>9.2<br />
10.8</p></td>
<td><p>18.4<br />
21.6</p></td>
<td><p>28.8</p></td>
<td><p>GDDR3</p></td>
<td><p>128</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7750M</p></td>
<td><p>2012年4月24日</p></td>
<td><p>Chelsea Pro</p></td>
<td><p>Cape Verde</p></td>
<td><p>28</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>575</p></td>
<td><p>1000</p></td>
<td><p>512:32:16</p></td>
<td><p>9.2</p></td>
<td><p>18.4</p></td>
<td><p>64</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7770M</p></td>
<td><p>2012年4月24日</p></td>
<td><p>Chelsea XT</p></td>
<td><p>Cape Verde</p></td>
<td><p>28</p></td>
<td><p>PCIe 2.1 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>675</p></td>
<td><p>1000</p></td>
<td><p>512:32:16</p></td>
<td><p>10.8</p></td>
<td><p>21.6</p></td>
<td><p>64</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7850M</p></td>
<td><p>2012年4月24日</p></td>
<td><p>Heathrow Pro</p></td>
<td><p>Cape Verde</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048</p></td>
<td><p>675</p></td>
<td><p>1000</p></td>
<td><p>640:40:16</p></td>
<td><p>10.8</p></td>
<td><p>27</p></td>
<td><p>64</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7870M</p></td>
<td><p>2012年4月24日</p></td>
<td><p>Heathrow XT</p></td>
<td><p>Cape Verde</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048</p></td>
<td><p>800</p></td>
<td><p>1000</p></td>
<td><p>640:40:16</p></td>
<td><p>12.8</p></td>
<td><p>32</p></td>
<td><p>64</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7970M</p></td>
<td><p>2012年4月24日</p></td>
<td><p>Wimbledon XT</p></td>
<td><p>Pitcairn</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048</p></td>
<td><p>850</p></td>
<td><p>1200</p></td>
<td><p>1280:80:32</p></td>
<td><p>27.2</p></td>
<td><p>68</p></td>
<td><p>153.6</p></td>
<td><p>GDDR5</p></td>
<td><p>256</p></td>
</tr>
</tbody>
</table>

#### 整合式顯示核心

  - 全部型號支援[DirectX](../Page/DirectX.md "wikilink") 11.1,
    [OpenGL](../Page/OpenGL.md "wikilink") 4.2
    以及[OpenCL](../Page/OpenCL.md "wikilink") 1.2
  - 全部型號內建「統一北橋」（包括記憶體控制器和PCI-E控制器），UMI（United Media Interface）匯流排
  - 由於驅動程式的設定，全部型號暫不支援雙精度浮點運算
  - 全部型號支援角度無關各向異性過濾、UVD3.2和[Eyefinity多屏顯示技術](https://zh.wikipedia.org/wiki/Eyefinity "wikilink")（最高支援四屏輸出）
  - 除Radeon HD 7420G是基於GCN架構以外，全部型號的顯示核心是基於AMD Radeon HD 6900的4VLIW
    SIMD架構設計

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>發布時間</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/開發代號" title="wikilink">開發代號</a></p></th>
<th><p>製造工藝（<a href="https://zh.wikipedia.org/wiki/奈米" title="wikilink">奈米</a>）</p></th>
<th><p>顯示記憶體（<a href="../Page/Mebibyte.md" title="wikilink">MiB</a>）</p></th>
<th><p>核心時脈</p></th>
<th><p>核心配置<sup>1</sup></p></th>
<th><p><a href="../Page/填充率.md" title="wikilink">填充率</a></p></th>
<th><p>記憶體</p></th>
<th><p>單精度浮點（GFLOPS）</p></th>
<th><p>雙精度浮點（GFLOPS）</p></th>
<th><p>熱設計功耗<sup>2</sup> (W)</p></th>
<th><p>GFLOPS/W</p></th>
<th><p>備註</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>核心 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>材質 (<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)</p></td>
<td><p>頻寬 (<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排類型</a></p></td>
<td><p>匯流排寬度(<a href="https://zh.wikipedia.org/wiki/比特" title="wikilink">比特</a>)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7400G</p></td>
<td><p>2012年9月1日</p></td>
<td><p>-</p></td>
<td><p>28</p></td>
<td><p>System</p></td>
<td><p>327<br />
Boost: 424</p></td>
<td><p>System</p></td>
<td><p>192:12:4</p></td>
<td><p>1.31</p></td>
<td><p>3.92</p></td>
<td><p>System</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/DDR3" title="wikilink">DDR3</a></p></td>
<td><p>64</p></td>
<td><p>125.57</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7420G</p></td>
<td><p>2012年6月1日</p></td>
<td><p>-</p></td>
<td><p>28</p></td>
<td><p>System</p></td>
<td><p>255~496<br />
Boost: 655</p></td>
<td><p>System</p></td>
<td><p>128:8:4</p></td>
<td><p>1.92</p></td>
<td><p>3.84</p></td>
<td><p>System</p></td>
<td><p>DDR3</p></td>
<td><p>64</p></td>
<td><p>122.88</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7500G</p></td>
<td><p>2012年5月12日</p></td>
<td><p>Scrapper</p></td>
<td><p>28</p></td>
<td><p>System</p></td>
<td><p>327<br />
Boost: 424</p></td>
<td><p>System</p></td>
<td><p>256:16:8</p></td>
<td><p>2.62</p></td>
<td><p>5.23</p></td>
<td><p>System</p></td>
<td><p>DDR3</p></td>
<td><p>128</p></td>
<td><p>167.42</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7520G</p></td>
<td><p>2012年6月1日</p></td>
<td><p>Scrapper</p></td>
<td><p>28</p></td>
<td><p>System</p></td>
<td><p>496<br />
Boost: 685</p></td>
<td><p>System</p></td>
<td><p>192:12:4</p></td>
<td><p>1.98</p></td>
<td><p>5.95</p></td>
<td><p>System</p></td>
<td><p>DDR3</p></td>
<td><p>64</p></td>
<td><p>190.46</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7600G</p></td>
<td><p>2012年9月1日</p></td>
<td><p>-</p></td>
<td><p>28</p></td>
<td><p>System</p></td>
<td><p>320<br />
Boost: 424</p></td>
<td><p>System</p></td>
<td><p>384:24:8</p></td>
<td><p>2.56</p></td>
<td><p>7.68</p></td>
<td><p>System</p></td>
<td><p>DDR3</p></td>
<td><p>128</p></td>
<td><p>245.76</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7620G</p></td>
<td><p>2012年5月12日</p></td>
<td><p>Devastator</p></td>
<td><p>28</p></td>
<td><p>System</p></td>
<td><p>360<br />
Boost: 497</p></td>
<td><p>System</p></td>
<td><p>384:24:8</p></td>
<td><p>2.88</p></td>
<td><p>8.64</p></td>
<td><p>System</p></td>
<td><p>DDR3</p></td>
<td><p>128</p></td>
<td><p>276.48</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 7640G</p></td>
<td><p>2012年5月12日</p></td>
<td><p>Devastator</p></td>
<td><p>28</p></td>
<td><p>System</p></td>
<td><p>496<br />
Boost: 685</p></td>
<td><p>System</p></td>
<td><p>256:16:8</p></td>
<td><p>3.97</p></td>
<td><p>7.94</p></td>
<td><p>System</p></td>
<td><p>DDR3</p></td>
<td><p>128</p></td>
<td><p>253.95</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 7660G</p></td>
<td><p>2012年5月12日</p></td>
<td><p>Devastator</p></td>
<td><p>28</p></td>
<td><p>System</p></td>
<td><p>496<br />
Boost: 685</p></td>
<td><p>System</p></td>
<td><p>384:24:8</p></td>
<td><p>3.97</p></td>
<td><p>11.9</p></td>
<td><p>System</p></td>
<td><p>DDR3</p></td>
<td><p>128</p></td>
<td><p>380.93</p></td>
</tr>
</tbody>
</table>

  - <small>System：由系統決定</small>
  - TDP數值是基於整塊APU晶片的，而不單是圖形處理部分

## 注释及参考资料

## 参见

  - [ATI顯示核心列表](https://zh.wikipedia.org/wiki/ATI顯示核心列表 "wikilink")
  - [GeForce 600](https://zh.wikipedia.org/wiki/GeForce_600 "wikilink")

## 外部链接

  - [GCN架構](http://www.amd.com/cn/products/technologies/gcn/Pages/gcn-architecture.aspx)
    - AMD

[Category:AMD圖形處理器](https://zh.wikipedia.org/wiki/Category:AMD圖形處理器 "wikilink")
[Category:顯示卡](https://zh.wikipedia.org/wiki/Category:顯示卡 "wikilink")

1.

2.

3.

4.

5.

6.  [图形与计算的融合，AMD GCN架构解析](http://www.expreview.com/17961-all.html) -
    expreview.com

7.

8.  [AMD HD 7970 之 GCN 架構完全解析，帶來 GPU
    革命](http://www.techbang.com/posts/8170-adv90-special-report-gpu-revolution-hd-7970-gcn-schemas-fully-resolved?page=3)
    - techbang.com（Page3）

9.

10. [AMD HD 7970 之 GCN 架構完全解析，帶來 GPU
    革命](http://www.techbang.com/posts/8170-adv90-special-report-gpu-revolution-hd-7970-gcn-schemas-fully-resolved?page=4)
    - techbang.com（Page4）

11.
12.

13. [图形与计算那些事：AMD
    GCN架构历史解析](http://www.amdnews.cn/2012/0106/1993_7.html)
    - amdnews.cn

14.
15. [显示世界的2012中篇 年度GPU架构回顾](http://vga.zol.com.cn/332/3324917_all.html)
    - zol.com.cn

16.

17.
18.
19. [与HD7970同核心
    Tahiti架构HD7870首测](http://vga.zol.com.cn/361/3615256_all.html)
    - zol.com.cn

20.
21.
22.
23.
24.
25.
26.
27. [Review: AMD Radeon HD 7850
    & 7870](http://www.behardware.com/art/imprimer/856/)  - BeHardware

28.
29.

30. [AMD新旗舰逆袭！最强A卡迪兰HD7990首测](http://diy.pconline.com.cn/graphics/reviews/1209/2998604_all.html)
    - pconline.com.cn

31.

32.

33. [入门级独显市场的补充，微星HD 7730显卡实物曝光](http://www.expreview.com/25179.html) -
    expreview.com

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
48. [AMD launches Radeon 7790: Meet the Xbox 720′s
    GPU](http://www.extremetech.com/gaming/151367-amd-launches-radeon-7790-meet-the-xbox-720s-gpu)
    - EXTREMETECH.com

49. [AMD Radeon™ HD 7730
    显卡](http://www.amd.com/cn/products/desktop/graphics/7000/7730/Pages/radeon-7730.aspx)
    - amd.com

50. [GT640杯具?AMD新入门卡HD7730测试](http://www.inpai.com.cn/doc/hard/197931.htm)
     - inpai.com

51. [HD 7730再测：DDR3与GDDR5版差距大，性价比依然是硬伤](http://www.expreview.com/27339.html)
    - expreview.com

52. [Review: Sapphire Radeon HD 7730 1GB
    GDDR5](http://hexus.net/tech/reviews/graphics/58677-sapphire-radeon-hd-7730-1gb-gddr5/)
    - hexus.net

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
63.

64.
65.

66.

67.

68.
69.
70.
71.
72. PowerColor Radeon HD 7850 SCS3 1GB Passive Video Card Review Read
    more at
    <http://www.legitreviews.com/powercolor-radeon-hd-7850-scs3-1gb-passive-video-card-review_2213>

73. [GTX 650 Ti杀手，蓝宝石HD 7850 1GB评测](http://www.expreview.com/22541.html)
    - expreview.com

74.
75.

76.
77.
78.
79.

80.
81. [Radeon HD 7870 "Boost Edition" seitens Club3D und PowerColor
    vorgestellt](http://www.3dcenter.org/news/radeon-hd-7870-boost-edition-seitens-club3d-und-powercolor-vorgestellt)
    -3dcenter.org

82.

83.
84.

85.

86.
87.
88.
89. AMD Radeon HD 7950 w/ Boost Versus NVIDIA GeForce GTX 760 Read more
    at
    <http://www.legitreviews.com/amd-radeon-hd-7950-w-boost-versus-nvidia-geforce-gtx-760_2227>

90. [GK104变形记，GeForce
    GTX 760显卡同步评测](http://www.expreview.com/26301-all.html)
    - expreview.com

91.

92.

93.

94.

95.
96.

97.

98.

99. [Radeon HD 7990详尽测试](http://news.mydrivers.com/1/261/261388_all.htm)
     - mydrivers.com轉載自Tom’s Hardware

100.