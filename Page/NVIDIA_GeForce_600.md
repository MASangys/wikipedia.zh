**GeForce 600系列**\[1\]是[NVIDIA的第十四代](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")[GeForce](../Page/GeForce.md "wikilink")顯示晶片。GeForce 600首次發佈於2011年12月6日，型號是GeForce 610M、GeForce GT 630M、GeForce GT 635M，均為上一代[Fermi架構的移動版](../Page/恩里科·费米.md "wikilink")[GPU](https://zh.wikipedia.org/wiki/GPU "wikilink")。真正全新一代[Kepler架構的產品於](../Page/约翰内斯·开普勒.md "wikilink")2012年3月22日正式發表，命名為GeForce GTX 680，競爭對手為[AMD Radeon](https://zh.wikipedia.org/wiki/AMD_Radeon "wikilink") HD 7970。在發表的同時NVIDIA宣佈更換沿用6年之久的GeForce [Logo](https://zh.wikipedia.org/wiki/Logo "wikilink")，著力於打造全新的GeForce品牌形象。

## 架構介紹

[EVGA_01G-P4-3652-KR_20150819.jpg](https://zh.wikipedia.org/wiki/File:EVGA_01G-P4-3652-KR_20150819.jpg "fig:EVGA_01G-P4-3652-KR_20150819.jpg")顯示卡01G-P4-3652-KR，採用GeForce GTX 650 Ti顯示晶片\]\] 开普勒架構以[约翰内斯·开普勒](../Page/约翰内斯·开普勒.md "wikilink")命名，本身實際基於[Fermi設計](../Page/恩里科·费米.md "wikilink")，核心由費米的流處理器群改為SMX，其中同樣以[CUDA](../Page/CUDA.md "wikilink")核心、升級後的PolyMorph 2.0和Texture Units等組成，而每組CUDA核心的數量大幅增加，如GK104的CUDA核心數量為每組192，上代GF110為每組32個，數量是其6倍。GK104核心以兩組SMX構成一個GPC單元，核心共有四組GPC單元和四組Raster引擎，之間共享有768KB L2緩存，GK104核心內含四組64bit記憶體控制器，共支援256bit記憶體，比上代GF110的384bit低。但GDDR5顯示記憶體的頻率提升，可以彌補有關減少。同時开普勒架構核心支援GPU Boost動態超頻技術，通過PCB內建的晶片與BIOS控制，會根據GPU的TDP與實際運作功耗之間的差異來進行動態超頻。其他的特性還包括採用[臺積電](https://zh.wikipedia.org/wiki/臺積電 "wikilink")28nm製程工藝，支援PCI-E 3.0，支援全新的反鋸齒技術TXAA及垂直同步技術Adaptive VSync。开普勒架構實現了單卡三屏輸出（上一代產品只能以SLI方式進行），通過一個[HDMI](../Page/HDMI.md "wikilink")與兩個[DVI](../Page/DVI.md "wikilink")進行輸出，同時還可以通過[DisplayPort](../Page/DisplayPort.md "wikilink")輸出，組成3+1顯示器模式。

### SMX

相對於以往的Streaming Mulit-processor，新的SMX中CUDA處理器的數量由32個大幅提升為192個\[2\]。最終結果就是採用較少的控制單元，去控制更多的CUDA核心\[3\]。事實上，新架構為了提升CUDA處理器的數量而作出的改良，是會降低整個架構的效率。但是，新的驅動程式已開始支援软件预解码，取代過往的硬體條件檢查，晶體管的數量可以減少，但效率依然有所提升。

### SIMT

對手[AMD Radeon HD 7000顯示核心](../Page/AMD_Radeon_HD_7000.md "wikilink")，硬性規定16個流處理器為一組，而使一個GCN陣列支援4個線程。而NVIDIA的SIMT方面，线程可以自由分配。即是控制元件會根據負載，而決定一個線程由多少個CUDA核心負責。整個過程是動態的，但也考驗了驅動程式和不同應用對之的優化程度。除了被稱為CUDA核心的流處理器數目有所上升之外，每個SMX中有32個特殊功能单元，用作[正弦](../Page/正弦.md "wikilink")、[余弦等計算](https://zh.wikipedia.org/wiki/余弦 "wikilink")。每個SMX中，并行线程调度器亦提升至4個，用作调度CUDA核心。指令分派单元則雙倍提升至8個，用作根據并行线程调度器，將數據分配給不同CUDA核心。载入/存储单元有32個，用作提取緩衝記憶體或顯示記憶體中的數據。纹理单元有32個，用作處理纹理和阴影。

CUDA核心的頻率再不是核心頻率的雙倍，而是相同。NVIDIA聲稱是因應功率而作出改變。但也有意見是因為元件跟不上更高的頻率\[4\]。

### Bindless Textures

可以突破DirectX 11的限制，每個shader可以讀取得紋理數量，由最多128個提升至可以超過一百万个\[5\]。現時只支援[OpenGL](../Page/OpenGL.md "wikilink")，將來可以透過NVAPI支援DirectX。

### Polymorph Engine 2.0

每個SMX中的Polymorph Engine只有8個，比GTX580時的16個少。但曲面细分单元的運作頻率和效率都有所提升，所以GTX680對曲面细分性能比GTX580的高。

### GPU Boost

顯示核心可以動態超頻，提升性能。硬件电路系统會作出監控，確保功率不會超過額定值。

### Apdative VSync

垂直同步更新原意是FPS跟顯示器更新率同步，減少畫面撕裂效果。不過當FPS比較低的時候，開啟垂直同步更新會造成更新率瞬间降低。為了解決問題，NVIDIA引入了自適應垂直同步更新。當遊戲應用低過某個FPS的時候，垂直同步更新將會被關閉。

### FXAA和TXAA

FXAA用意不是解決锯齿問題，但可以提升圖像品質，效率比傳統的MSAA提升60%。而TXAA是一種全新的，基於硬體的抗锯齿技术。透過GTX680中的HDR處理單元，矫正顏色。

### 四屏显示技術

為了追趕對手AMD的Eyefinity技術，GTX680支援四屏显示技術，也可配合自家的3D Vision Surround技術。相比對手，NVIDIA的多屏显示技術不需要使用[DisplayPort](../Page/DisplayPort.md "wikilink")接口。

### NVENC

新增专门[H.264硬件转码单元](https://zh.wikipedia.org/wiki/H.264 "wikilink")。在處理[H.264數據時](https://zh.wikipedia.org/wiki/H.264 "wikilink")，不用再依靠[CUDA](../Page/CUDA.md "wikilink")核心。

### Direct3D 11.1

首次支援Direct3D 11.1，相較于前代GeForce400/500支援的Direct3D 11，Direct 3D11.1是增量升級。然而實際上GeForce 600對Direct 3D11.1的支援並不完全，有4個Direct3D11.1的硬體特性並沒有予以支援。NVIDIA認為，這些新增的特性完全可透過[驅動程式來支援](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")，無需在硬體電路上大做文章。\[6\]

## 部分產品介紹

### [桌面平臺](https://zh.wikipedia.org/wiki/桌面平臺 "wikilink")

  - **GeForce GT 640**\[7\] - 2012年4月25日推出OEM版本。OEM版本GT 640擁有3種規格：一種使用上一代的GF116核心，擁有**144**個CUDA核心，核心時脈720Mhz，採用時脈為1782Mhz的GDDR3顯示記憶體，位寬192位元，容量1.5GB/3GB，TDP為75W；其餘两種使用GK107顯示核心，不同點在於核心時脈和使用的顯示記憶體，一種核心時脈為797Mhz，採用位寬為128位元，時脈為1782Mhz，容量1GB/2GB的DDR3顯示記憶體，其TDP為50W，另一種核心時脈950Mhz，採用位寬為128位元，時脈為5000Mhz，容量1GB/2GB的DDR5顯示記憶體，TDP為70W。\[8\]2012年6月推出零售版\[9\]。零售版GT 640擁有2種規格：两種使用GK107顯示核心，不同點在於核心時脈和使用的顯示記憶體，一種核心時脈797Mhz，採用位寬為128位元，時脈為1782Mhz，容量2GB的DDR3顯示記憶體，TDP為50W，另一種核心時脈1046Mhz，採用位寬為64位元，時脈為5000Mhz，容量1GB的DDR5顯示記憶體，TDP為50W。
  - **GeForce GT 645**\[10\]和**GeForce GTX 645**\[11\] - 前者於2012年4月25日推出，供OEM市場，GeForce GTX 560 SE的更名版，晶片代號為GF114-400-A1；在2013年4月22日GT 645被GTX 650的OEM版本：GTX 645所取代，採用規格有所刪減，代號為GK106的顯示核心，**576**個CUDA核心，核心時脈823MHz，記憶體位寬128位元，容量1GB的GDDR5顯示記憶體。
  - **GeForce GTX 650**\[12\] - 2012年9月17日發布。採用代號為GK107的顯示核心（GK107-450-A2）：**384**個CUDA核心，核心時脈1058MHz；GDDR5顯示記憶體，容量1GB、位寬128位元；採用單6-Pin輔助供電連接埠。
  - **GeForce GTX 650 Ti**\[13\]和**GeForce GTX 650 Ti Boost**\[14\]，前者2012年10月9日發布，採用規格有所刪減，代號為GK106的顯示核心，**768**個CUDA核心，核心時脈928MHz，128位元位寬的GDDR5顯示記憶體；後者於2013年3月26日發布，採用幾乎相同的核心，但核心時脈升至980MHz，而且使用192位元位寬的GDDR5記憶體控制器，顯示記憶體容量2GB。
  - **GeForce GTX 660**\[15\]\[16\] - 2012年8月22日發布。OEM版本採用進一步“閹割”的代號為GK104的核心（GK104-200-KD-A2）：**1152**個CUDA核心，核心時脈823MHz～888MHz；零售版是全新的代號為GK106的顯示核心（GK106-400-A1）：960個流處理器，核心時脈980MHz；零售版和OEM版本均採用GDDR5顯示記憶體，位寬192位元，但OEM版的記憶體容量為1.5GB或3GB，而零售版的容量則為2GB；OEM版本和零售版的的外接輔助供電均為單6Pin連接埠。
  - **GeForce GTX 660 Ti**\[17\] - 2012年8月19日正式发布。GeForce GTX 660 Ti采用规格和GeForce GTX 670相同的代號為GK104的核心（GK104-300-KD-A2），**1344**個CUDA核心，供電設計也和GTX 670一致，依然是雙6Pin供電，記憶體容量一樣是2GB/4GB GDDR5但其位寬降至192位元，公版的PCB也和GTX670一致。\[18\]\[19\]
  - **GeForce GTX 670**\[20\] - 2012年5月10日發布。GeForce GTX 670采用規格小幅刪減的代號為GK104的顯示核心（GK104-325-A2），擁有**1344**個CUDA核心，112个纹理单元，32个ROP光栅单元，核心時脈為900MHz，採用時脈為5000Mhz的GDDR5顯示記憶體，位寬256位元，容量2GB/4GB，採用雙6Pin輔助供電，但公版的[PCB則採用緊湊設計](https://zh.wikipedia.org/wiki/PCB "wikilink")，使得公版GTX 670的電路板長度比公版GTX 680的短了1/3。\[21\]
  - **GeForce GTX 680**\[22\] - 2012年3月22日推出。採用完整的，代號為GK104的顯示核心（GK104-400）。 GTX 680公版顯示卡採用P2002 PCB，有**1536**個CUDA核心，核心時脈1006MHz，著色器時脈2012MHz，記憶體時脈6208MHz，容量為2GB，TDP為195W，採用雙6Pin外接輔助供電。在多個媒體評測中效能超過競爭對手[AMD的Radeon](https://zh.wikipedia.org/wiki/AMD "wikilink") HD 7970，但仍不敌AMD稍后推出的Radeon HD 7970 GHz Edition。
  - **GeForce GTX 690**\[23\] - 2012年4月29日推出。在2012年5月1日[國際勞動節假期](https://zh.wikipedia.org/wiki/國際勞動節 "wikilink")，已經有不少[媒體收到了測試樣卡](https://zh.wikipedia.org/wiki/媒體 "wikilink")。GeForce GTX 690採用2顆完整的代號為GK104的顯示核心（GK104-355-A2），**3072**個CUDA核心，核心時脈915MHz，4GB容量的512位元位寬GDDR5顯示記憶體，外接雙8Pin輔助供電。\[24\]\[25\]2013年，有硬體玩家發現，公版的Geforce GTX 690僅僅更變PCB背板上GPU晶片鄰近的幾顆電阻焊接位上的電阻有無或電阻阻值，即可變成Quadro K5000專業繪圖卡或是Tesla K10運算加速卡。\[26\]

## 晶片規格

### 桌上型平台顯示核心

  - <sup>1</sup> [統一渲染器/流處理器數量](https://zh.wikipedia.org/wiki/統一渲染架構 "wikilink") : [紋理映射單元數量](https://zh.wikipedia.org/wiki/紋理映射單元 "wikilink") : [渲染輸出單元數量](https://zh.wikipedia.org/wiki/渲染輸出單元 "wikilink")
  - <sup>2</sup> GeForce 605是GeForce 510的更名產品。
  - <sup>3</sup> GeForce GT 610是GeForce GT 520的更名產品\[27\]
  - <sup>4</sup> GeForce GT 620的OEM版本是GeForce GT 520的更名版本
  - <sup>5</sup> GeForce GT 620的零售版本是GeForce GT 530的更名版本\[28\]
  - <sup>6</sup> 更新版GeForce GT 630 DDR3版本是GeForce GT 440 DDR3版本的更名版本\[29\]
  - <sup>7</sup> GeForce GT 630 GDDR5版本是GeForce GT 440 GDDR5版本的更名版本
  - <sup>8</sup> GeForce GT 640 OEM版本是GeForce GT 545 DDR3版本的更名版本
  - <sup>9</sup> GeForce GT 645 OEM版本是GeForce GTX 560 SE的更名版本
  - <sup>10</sup> 畫素填充率的計算：ROP的數量乘以基準核心[時脈速率](https://zh.wikipedia.org/wiki/時脈 "wikilink")（時脈單位Hz），單位畫素數每秒（P/s）。
  - <sup>11</sup> 紋理填充率的計算：TMU的數量乘以基準核心時脈速率（時脈單位Hz），單位紋理數每秒（T/s）。
  - <sup>12</sup> GDDR5視訊記憶體的資料傳輸時脈速率是其運作時脈的四倍，DDR3記憶體的則為兩倍。

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出年分</p></th>
<th><p>開發代號</p></th>
<th><p>製造工藝(<a href="https://zh.wikipedia.org/wiki/nm" title="wikilink">nm</a>)</p></th>
<th><p>電晶體數量(百萬)</p></th>
<th><p>核心面積(mm<sup>2</sup>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排介面</a></p></th>
<th><p>顯示記億體容量 (<a href="https://zh.wikipedia.org/wiki/MB" title="wikilink">MB</a>)</p></th>
<th><p>核心配置<br />
<sup>SPs:TMUs:ROPs<sub>1</sub></sup></p></th>
<th><p>核心頻率</p></th>
<th><p>填充率</p></th>
<th><p>顯示記憶體</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></th>
<th><p>FMA運算效能<br />
（GFLOPS）</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a> (W)</p></th>
<th><p>單精度浮點數<br />
運算能效比 (<a href="https://zh.wikipedia.org/wiki/GFLOPS" title="wikilink">GFLOPS</a>/<a href="https://zh.wikipedia.org/wiki/Watt" title="wikilink">W</a>)</p></th>
<th><p>發售價格 (<a href="../Page/美元.md" title="wikilink">美元</a>)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>預設 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>加速 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>渲染器 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體 (<a href="https://zh.wikipedia.org/wiki/Transfer_(computing)" title="wikilink">MT/s</a>)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)<sup>2</sup></p></td>
<td><p>材質 (<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)<sup>3</sup></p></td>
<td><p>頻寬 (<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p>類型</p></td>
<td><p>匯流排寬度 (<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>GeForce 605<sup>2</sup>[30]</p></td>
<td><p>2012年4月3日</p></td>
<td><p>GF119</p></td>
<td><p>40</p></td>
<td><p>292</p></td>
<td><p>79</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>512<br />
1024</p></td>
<td><p>48:8:4</p></td>
<td><p>523</p></td>
<td></td>
<td><p>1046</p></td>
<td><p>1798</p></td>
<td><p>2.1</p></td>
<td><p>4.3</p></td>
<td><p>14.4</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 610 <sup>3</sup>[31]</p></td>
<td><p>2012年6月15日</p></td>
<td><p>GF119</p></td>
<td><p>40</p></td>
<td><p>292</p></td>
<td><p>79</p></td>
<td><p>PCIe 2.0 x16, PCI</p></td>
<td><p>1024</p></td>
<td><p>48:8:4</p></td>
<td><p>810</p></td>
<td></td>
<td><p>1620</p></td>
<td><p>1800</p></td>
<td><p>3.24</p></td>
<td><p>6.5</p></td>
<td><p>14.4</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 620 <sup>4</sup>[32]</p></td>
<td><p>2012年4月3日</p></td>
<td><p>GF119</p></td>
<td><p>40</p></td>
<td><p>292</p></td>
<td><p>79</p></td>
<td><p>PCIe 2.0 x16, PCI</p></td>
<td><p>512<br />
1024</p></td>
<td><p>48:8:4</p></td>
<td><p>810</p></td>
<td></td>
<td><p>1620</p></td>
<td><p>1798</p></td>
<td><p>3.24</p></td>
<td><p>6.5</p></td>
<td><p>14.4</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 620<sup>5</sup>[33]</p></td>
<td><p>2012年5月15日</p></td>
<td><p>GF108</p></td>
<td><p>40</p></td>
<td><p>585</p></td>
<td><p>116</p></td>
<td><p>PCIe 2.0 x16, PCI</p></td>
<td><p>1024</p></td>
<td><p>96:16:4</p></td>
<td><p>700</p></td>
<td></td>
<td><p>1400</p></td>
<td><p>1800</p></td>
<td><p>2.8</p></td>
<td><p>11.2</p></td>
<td><p>14.4</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 625</p></td>
<td><p>2013年2月19日</p></td>
<td><p>GF119</p></td>
<td><p>40</p></td>
<td><p>292</p></td>
<td><p>79</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>512 1024</p></td>
<td><p>48:8:4</p></td>
<td><p>810</p></td>
<td></td>
<td><p>1620</p></td>
<td><p>1798</p></td>
<td><p>3.24</p></td>
<td><p>6.5</p></td>
<td><p>14.4</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 630</p></td>
<td><p>2012年4月24日</p></td>
<td><p>GK107</p></td>
<td><p>28</p></td>
<td><p>1300</p></td>
<td><p>118</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>192:16:16</p></td>
<td><p>875</p></td>
<td></td>
<td><p>875</p></td>
<td><p>1782</p></td>
<td><p>7</p></td>
<td><p>14</p></td>
<td><p>28.5</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 630 (DDR3)<sup>6</sup>[34]</p></td>
<td><p>2012年5月15日</p></td>
<td><p>GF108</p></td>
<td><p>40</p></td>
<td><p>585</p></td>
<td><p>116</p></td>
<td><p>PCIe 2.0 x16, PCI</p></td>
<td><p>1024</p></td>
<td><p>96:16:4</p></td>
<td><p>810</p></td>
<td></td>
<td><p>1620</p></td>
<td><p>1800</p></td>
<td><p>3.2</p></td>
<td><p>13</p></td>
<td><p>28.8</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 630（第二版）</p></td>
<td><p>2013年5月29日</p></td>
<td><p>GK208</p></td>
<td><p>28</p></td>
<td><p>1300</p></td>
<td><p>79</p></td>
<td><p>PCIe 2.0 x8</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>384:16:8</p></td>
<td><p>902</p></td>
<td></td>
<td><p>902</p></td>
<td><p>1800</p></td>
<td><p>7.22</p></td>
<td><p>14.44</p></td>
<td><p>14.4</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 630 (GDDR5)<sup>7</sup>[35]</p></td>
<td><p>2012年5月15日</p></td>
<td><p>GF108</p></td>
<td><p>40</p></td>
<td><p>585</p></td>
<td><p>116</p></td>
<td><p>PCIe 2.0 x16, PCI</p></td>
<td><p>1024</p></td>
<td><p>96:16:4</p></td>
<td><p>810</p></td>
<td></td>
<td><p>1620</p></td>
<td><p>3200</p></td>
<td><p>3.2</p></td>
<td><p>13</p></td>
<td><p>51.2</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 635</p></td>
<td><p>2013年2月19日</p></td>
<td><p>GK208</p></td>
<td><p>28</p></td>
<td></td>
<td><p>79</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>192:16:16</p></td>
<td><p>875</p></td>
<td></td>
<td><p>875</p></td>
<td><p>1782</p></td>
<td><p>7</p></td>
<td><p>14</p></td>
<td><p>28.5</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 640<sup>8</sup></p></td>
<td><p>2012年4月24日</p></td>
<td><p>GF116</p></td>
<td><p>40</p></td>
<td><p>1170</p></td>
<td><p>238</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>1536<br />
3072</p></td>
<td><p>144:24:24</p></td>
<td><p>720</p></td>
<td></td>
<td><p>1440</p></td>
<td><p>1782</p></td>
<td><p>17.3</p></td>
<td><p>17.3</p></td>
<td><p>42.8</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 640 (DDR3)[36]</p></td>
<td><p>2012年4月24日</p></td>
<td><p>GK107<br />
-301-A2</p></td>
<td><p>28</p></td>
<td><p>1300</p></td>
<td><p>118</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>384:32:16</p></td>
<td><p>797</p></td>
<td></td>
<td><p>797</p></td>
<td><p>1782</p></td>
<td><p>12.8</p></td>
<td><p>25.5</p></td>
<td><p>28.5</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 640 (DDR3)</p></td>
<td><p>2012年6月5日</p></td>
<td><p>GK107</p></td>
<td><p>28</p></td>
<td><p>1300</p></td>
<td><p>118</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048</p></td>
<td><p>384:32:16</p></td>
<td><p>900</p></td>
<td></td>
<td><p>900</p></td>
<td><p>1782</p></td>
<td><p>14.4</p></td>
<td><p>28.8</p></td>
<td><p>28.5</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 640 (GDDR5)</p></td>
<td><p>2012年4月24日</p></td>
<td><p>GK107</p></td>
<td><p>28</p></td>
<td><p>1300</p></td>
<td><p>118</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>384:32:16</p></td>
<td><p>950</p></td>
<td></td>
<td><p>950</p></td>
<td><p>5000</p></td>
<td><p>15.2</p></td>
<td><p>30.4</p></td>
<td><p>80</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 640（第二版）</p></td>
<td><p>2013年5月29日</p></td>
<td><p>GK208</p></td>
<td><p>28</p></td>
<td></td>
<td><p>79</p></td>
<td><p>PCIe 2.0 x8</p></td>
<td><p>1024</p></td>
<td><p>384:16:8</p></td>
<td><p>1046</p></td>
<td></td>
<td><p>1046</p></td>
<td><p>5010</p></td>
<td><p>8.37</p></td>
<td><p>16.7</p></td>
<td><p>40.1</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 645<sup>9</sup>[37]</p></td>
<td><p>2012年4月24日</p></td>
<td><p>GF114<br />
-400-A1</p></td>
<td><p>40</p></td>
<td><p>1950</p></td>
<td><p>332</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>1024</p></td>
<td><p>288:48:24</p></td>
<td><p>776</p></td>
<td></td>
<td><p>1552</p></td>
<td><p>1914</p></td>
<td><p>18.6</p></td>
<td><p>37.3</p></td>
<td><p>91.9</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 645[38]</p></td>
<td><p>2013年4月22日</p></td>
<td><p>GK106</p></td>
<td><p>28</p></td>
<td><p>2540</p></td>
<td><p>221</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024</p></td>
<td><p>576:48:16</p></td>
<td><p>823.5</p></td>
<td><p>888.5</p></td>
<td><p>823</p></td>
<td><p>1000<br />
(4000)</p></td>
<td><p>9.88</p></td>
<td><p>39.5</p></td>
<td><p>64</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 650[39]</p></td>
<td><p>2012年9月13日</p></td>
<td><p>GK107<br />
-450-A2</p></td>
<td><p>28</p></td>
<td><p>1300</p></td>
<td><p>118</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>384:32:16</p></td>
<td><p>1058</p></td>
<td></td>
<td><p>1058</p></td>
<td><p>5000</p></td>
<td><p>16.9</p></td>
<td><p>33.8</p></td>
<td><p>80</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 650 Ti[40]</p></td>
<td><p>2012年10月9日</p></td>
<td><p>GK106<br />
-220-A1</p></td>
<td><p>28</p></td>
<td><p>2540</p></td>
<td><p>221</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>768:64:16</p></td>
<td><p>928</p></td>
<td></td>
<td><p>928</p></td>
<td><p>5400</p></td>
<td><p>14.8</p></td>
<td><p>59.2</p></td>
<td><p>86.4</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 650 Ti Boost[41]</p></td>
<td><p>2013年3月26日</p></td>
<td><p>GK106<br />
-240-A1</p></td>
<td><p>28</p></td>
<td><p>2540</p></td>
<td><p>221</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>768:64:24</p></td>
<td><p>980</p></td>
<td><p>1033</p></td>
<td><p>980</p></td>
<td><p>6002</p></td>
<td><p>23.5</p></td>
<td><p>62.7</p></td>
<td><p>144.2</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 660[42][43]</p></td>
<td><p>2012年9月13日</p></td>
<td><p>GK106<br />
-400-A1</p></td>
<td><p>28</p></td>
<td><p>2540</p></td>
<td><p>221</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048<br />
3072</p></td>
<td><p>960:80:24</p></td>
<td><p>980</p></td>
<td><p>1033<br />
最大1084</p></td>
<td><p>980</p></td>
<td><p>6000</p></td>
<td><p>23.5</p></td>
<td><p>78.5</p></td>
<td><p>144.2</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 660 OEM[44][45]</p></td>
<td><p>2012年8月22日</p></td>
<td><p>GK104<br />
-200-KD-A2</p></td>
<td><p>28</p></td>
<td><p>3540</p></td>
<td><p>294</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1536<br />
2048</p></td>
<td><p>1152:96:24<br />
1152:96:32</p></td>
<td><p>823</p></td>
<td><p>888</p></td>
<td><p>823</p></td>
<td><p>5800</p></td>
<td><p>19.8</p></td>
<td><p>79</p></td>
<td><p>134</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 660 Ti[46]</p></td>
<td><p>2012年8月16日</p></td>
<td><p>GK104<br />
-300-KD-A2</p></td>
<td><p>28</p></td>
<td><p>3540</p></td>
<td><p>294</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048<br />
3072</p></td>
<td><p>1344:112:24</p></td>
<td><p>915</p></td>
<td><p>980<br />
最大1058</p></td>
<td><p>915</p></td>
<td><p>6008</p></td>
<td><p>22.0</p></td>
<td><p>102.5</p></td>
<td><p>144.2</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 670[47]</p></td>
<td><p>2012年5月10日</p></td>
<td><p>GK104<br />
-325-A2</p></td>
<td><p>28</p></td>
<td><p>3540</p></td>
<td><p>294</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048<br />
4096</p></td>
<td><p>1344:112:32</p></td>
<td><p>915</p></td>
<td><p>980<br />
最大1084</p></td>
<td><p>915</p></td>
<td><p>6008</p></td>
<td><p>29.3</p></td>
<td><p>102.5</p></td>
<td><p>192.256</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 680[48]</p></td>
<td><p>2012年3月22日</p></td>
<td><p>GK104<br />
-400-A2</p></td>
<td><p>28</p></td>
<td><p>3540</p></td>
<td><p>294</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048<br />
4096</p></td>
<td><p>1536:128:32</p></td>
<td><p>1006[49]</p></td>
<td><p>1058<br />
最大1110</p></td>
<td><p>1006</p></td>
<td><p>6008</p></td>
<td><p>32.2</p></td>
<td><p>128.8</p></td>
<td><p>192.256</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 690[50]</p></td>
<td><p>2012年4月29日</p></td>
<td><p>2× GK104<br />
-355-A2</p></td>
<td><p>28</p></td>
<td><p>2× 3540</p></td>
<td><p>2× 294</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2× 2048</p></td>
<td><p>2× 1536:128:32</p></td>
<td><p>915</p></td>
<td><p>1019<br />
最大1058[51]</p></td>
<td><p>915</p></td>
<td><p>6008</p></td>
<td><p>2× 29.28</p></td>
<td><p>2× 117.12</p></td>
<td><p>2× 192.256</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>型號</p></td>
<td><p>推出年分</p></td>
<td><p>開發代號</p></td>
<td><p>製造工藝(<a href="https://zh.wikipedia.org/wiki/nm" title="wikilink">nm</a>)</p></td>
<td><p>電晶體數量(百萬)</p></td>
<td><p>核心面積(mm<sup>2</sup>)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排介面</a></p></td>
<td><p>顯示記億體容量 (<a href="https://zh.wikipedia.org/wiki/MB" title="wikilink">MB</a>)</p></td>
<td><p>核心配置<br />
<sup>SPs:TMUs:ROPs<sub>1</sub></sup></p></td>
<td><p>核心頻率</p></td>
<td><p>填充率</p></td>
<td><p>顯示記憶體</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></td>
<td><p>FMA運算效能<br />
（GFLOPS）</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a> (W)</p></td>
<td><p>單精度浮點數<br />
運算能效比 (<a href="https://zh.wikipedia.org/wiki/GFLOPS" title="wikilink">GFLOPS</a>/<a href="https://zh.wikipedia.org/wiki/Watt" title="wikilink">W</a>)</p></td>
<td><p>發售價格 (<a href="../Page/美元.md" title="wikilink">美元</a>)</p></td>
</tr>
<tr class="odd">
<td><p>預設 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>加速 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>渲染器 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體 (<a href="https://zh.wikipedia.org/wiki/Transfer_(computing)" title="wikilink">MT/s</a>)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)<sup>2</sup></p></td>
<td><p>材質 (<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)<sup>3</sup></p></td>
<td><p>頻寬 (<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p>類型</p></td>
<td><p>匯流排寬度 (<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 行動平台顯示核心

GeForce 600M系列，是面向筆記型電腦平台的顯示核心。

  - <sup>1</sup> [統一渲染器/流處理器數量](https://zh.wikipedia.org/wiki/統一渲染架構 "wikilink") : [紋理映射單元數量](https://zh.wikipedia.org/wiki/紋理映射單元 "wikilink") : [渲染輸出單元數量](https://zh.wikipedia.org/wiki/渲染輸出單元 "wikilink")

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出年分</p></th>
<th><p>開發代號</p></th>
<th><p>製造工藝(<a href="https://zh.wikipedia.org/wiki/nm" title="wikilink">nm</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排介面</a></p></th>
<th><p>顯示記億體容量 (<a href="https://zh.wikipedia.org/wiki/MB" title="wikilink">MB</a>)</p></th>
<th><p>核心配置<br />
<sup>SPs:TMUs:ROPs<sub>1</sub></sup></p></th>
<th><p>核心頻率</p></th>
<th><p>填充率</p></th>
<th><p>顯示記憶體</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></th>
<th><p>效能<sup>2</sup><br />
(<a href="https://zh.wikipedia.org/wiki/FLOPS" title="wikilink">GFLOPS</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a> (W)</p></th>
<th><p>備註</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>核心 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>渲染器 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體 (<a href="https://zh.wikipedia.org/wiki/Transfer_(computing)" title="wikilink">MT/s</a>)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)<sup>2</sup></p></td>
<td><p>材質 (<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)<sup>3</sup></p></td>
<td><p>頻寬 (<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p>類型</p></td>
<td><p>匯流排寬度 (<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>GeForce 610M [52][53]</p></td>
<td><p>2011年12月6日</p></td>
<td><p>GF119 (N13M-GE)</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>48:8:4</p></td>
<td><p>900</p></td>
<td><p>1800</p></td>
<td><p>1800</p></td>
<td><p>3.6</p></td>
<td><p>7.2</p></td>
<td><p>14.4</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 620M [54][55]</p></td>
<td><p>2012年3月22日</p></td>
<td><p>GF117 (N13M-GS)</p></td>
<td><p>28</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>96:16:4</p></td>
<td><p>625</p></td>
<td><p>1250</p></td>
<td><p>1800</p></td>
<td><p>2.5</p></td>
<td><p>10</p></td>
<td><p>14.4<br />
28.8</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 625M</p></td>
<td><p>2012年10月</p></td>
<td><p>GF117 (N13M-GS)</p></td>
<td><p>28</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>96:16:4</p></td>
<td><p>625</p></td>
<td><p>1250</p></td>
<td><p>1800</p></td>
<td><p>2.5</p></td>
<td><p>10</p></td>
<td><p>14.4</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 630M[56][57][58][59]</p></td>
<td><p>2011年12月6日</p></td>
<td><p>GF108 (N13P-GL)<br />
GF117</p></td>
<td><p>40<br />
28</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>96:16:4</p></td>
<td><p>660<br />
800</p></td>
<td><p>1320<br />
1600</p></td>
<td><p>1800<br />
4000</p></td>
<td><p>2.6<br />
3.2</p></td>
<td><p>10.7<br />
12.8</p></td>
<td><p>28.8<br />
32.0</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 635M[60][61][62][63]</p></td>
<td><p>2011年12月6日</p></td>
<td><p>GF106 (N12E-GE2)<br />
GF116</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>2048<br />
1536</p></td>
<td><p>144:24:24</p></td>
<td><p>675</p></td>
<td><p>1350</p></td>
<td><p>1800</p></td>
<td><p>16.2</p></td>
<td><p>16.2</p></td>
<td><p>28.8<br />
43.2</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 640M LE[64][65]</p></td>
<td><p>2012年3月22日</p></td>
<td><p>GF108<br />
GK107 (N13P-LP)</p></td>
<td><p>40<br />
28</p></td>
<td><p>PCIe 2.0 x16<br />
PCIe 3.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>96:16:4<br />
384:32:16</p></td>
<td><p>762<br />
500</p></td>
<td><p>1524<br />
500</p></td>
<td><p>3130<br />
1800</p></td>
<td><p>3<br />
8</p></td>
<td><p>12.2<br />
16</p></td>
<td><p>50.2<br />
28.8</p></td>
<td><p>GDDR5<br />
DDR3</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 640M[66][67][68]</p></td>
<td><p>2012年3月22日</p></td>
<td><p>GK107 (N13P-GS)</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>384:32:16</p></td>
<td><p>625</p></td>
<td><p>625</p></td>
<td><p>1800<br />
4000</p></td>
<td><p>10</p></td>
<td><p>20</p></td>
<td><p>28.8<br />
64.0</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 645M</p></td>
<td><p>2012年10月</p></td>
<td><p>GK107 (N13P-GS)</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>384:32:16</p></td>
<td><p>710</p></td>
<td><p>710</p></td>
<td><p>1800<br />
4000</p></td>
<td><p>11.36</p></td>
<td><p>22.72</p></td>
<td><p>28.8<br />
64.0</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 650M[69][70][71][72]</p></td>
<td><p>2012年3月22日</p></td>
<td><p>GK107 (N13P-GT)</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>384:32:16</p></td>
<td><p>835<br />
745<br />
900*</p></td>
<td><p>835<br />
745<br />
900*</p></td>
<td><p>1800<br />
4000<br />
5000*</p></td>
<td><p>13.4<br />
11.9<br />
14.4*</p></td>
<td><p>26.7<br />
23.8<br />
28.8*</p></td>
<td><p>28.8<br />
64.0<br />
80.0*</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 660M[73][74][75][76][77]</p></td>
<td><p>2012年3月22日</p></td>
<td><p>GK107 (N13E-GE)</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048</p></td>
<td><p>384:32:16</p></td>
<td><p>835</p></td>
<td><p>835</p></td>
<td><p>5000</p></td>
<td><p>13.4</p></td>
<td><p>26.7</p></td>
<td><p>80.0</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 670M[78][79]</p></td>
<td><p>2012年3月22日</p></td>
<td><p>GF114 (N13E-GS1-LP)</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>1536<br />
3072</p></td>
<td><p>336:56:24</p></td>
<td><p>598</p></td>
<td><p>1196</p></td>
<td><p>3000</p></td>
<td><p>14.35</p></td>
<td><p>33.5</p></td>
<td><p>72.0</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 670MX</p></td>
<td><p>2012年10月</p></td>
<td><p>GK106 (N13E-GR)</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1536<br />
3072</p></td>
<td><p>960:80:24</p></td>
<td><p>600</p></td>
<td><p>600</p></td>
<td><p>2800</p></td>
<td><p>14.4</p></td>
<td><p>48.0</p></td>
<td><p>67.2</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 675M[80][81]</p></td>
<td><p>2012年3月22日</p></td>
<td><p>GF114 (N13E-GS1)</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>2048</p></td>
<td><p>384:64:32</p></td>
<td><p>620</p></td>
<td><p>1240</p></td>
<td><p>3000</p></td>
<td><p>19.8</p></td>
<td><p>39.7</p></td>
<td><p>96.0</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 675MX</p></td>
<td><p>2012年10月</p></td>
<td><p>GK106 (N13E-GSR)</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>4096</p></td>
<td><p>960:80:32</p></td>
<td><p>600</p></td>
<td><p>600</p></td>
<td><p>3600</p></td>
<td><p>19.2</p></td>
<td><p>48.0</p></td>
<td><p>115.2</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 680M[82]</p></td>
<td><p>2012年6月4日</p></td>
<td><p>GK104 (N13E-GTX)</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>4096</p></td>
<td><p>1344:112:32</p></td>
<td><p>720</p></td>
<td><p>720</p></td>
<td><p>3600</p></td>
<td><p>23</p></td>
<td><p>80.6</p></td>
<td><p>115.2</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 680MX</p></td>
<td><p>2012年10月23日</p></td>
<td><p>GK104</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>4096</p></td>
<td><p>1536:128:32</p></td>
<td><p>720</p></td>
<td><p>720</p></td>
<td><p>5000</p></td>
<td><p>23</p></td>
<td><p>92.2</p></td>
<td><p>160</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>型號</p></td>
<td><p>推出年分</p></td>
<td><p>開發代號</p></td>
<td><p>製造工藝(<a href="https://zh.wikipedia.org/wiki/nm" title="wikilink">nm</a>)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排介面</a></p></td>
<td><p>顯示記億體容量 (<a href="https://zh.wikipedia.org/wiki/MB" title="wikilink">MB</a>)</p></td>
<td><p>核心配置<br />
<sup>SPs:TMUs:ROPs<sub>1</sub></sup></p></td>
<td><p>核心頻率</p></td>
<td><p>填充率</p></td>
<td><p>顯示記憶體</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></td>
<td><p>效能<sup>2</sup><br />
(<a href="https://zh.wikipedia.org/wiki/FLOPS" title="wikilink">GFLOPS</a>)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a> (W)</p></td>
<td><p>備註</p></td>
</tr>
<tr class="odd">
<td><p>核心 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>渲染器 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體 (<a href="https://zh.wikipedia.org/wiki/Transfer_(computing)" title="wikilink">MT/s</a>)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)<sup>2</sup></p></td>
<td><p>材質 (<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)<sup>3</sup></p></td>
<td><p>頻寬 (<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p>類型</p></td>
<td><p>匯流排寬度 (<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 相關條目

  - [GeForce 600系列規格列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表#GeForce_600 "wikilink")
  - [GeForce 600 M系列規格列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表#GeForce_600_M "wikilink")

## 參考鏈接

## 外部連結

  - [NVIDIA主頁](http://www.nvidia.com/)
  - [NVIDIA Kepler Compute Architecture](http://www.nvidia.com/object/nvidia-kepler.html)

[Category:GeForce系列](https://zh.wikipedia.org/wiki/Category:GeForce系列 "wikilink") [Category:2011年面世的產品](https://zh.wikipedia.org/wiki/Category:2011年面世的產品 "wikilink")

1.  [NVIDIA新一代CUDA架構，代號 “[Kepler](../Page/约翰内斯·开普勒.md "wikilink")”](http://www.nvidia.com/object/nvidia-kepler.html)
2.  [全新「Kepler」GPU微架構](http://www.hkepc.com/7672/page/2#view)
3.  [开普勒秒杀GCN 新卡皇GTX680首发评测](http://www.pcpop.com/doc/0/774/774762_6.shtml)
4.  [开普勒秒杀GCN 新卡皇GTX680首发评测](http://www.pcpop.com/doc/0/774/774762_8.shtml)
5.  [Kepler的完美复仇，GeForce GTX 680同步评测](http://www.expreview.com/18845-4.html)
6.  [AMD更强更先进?开普勒不完全支持DX11.1](http://vga.zol.com.cn/337/3371323.html)- zol.com.cn
7.  geforce.com.tw: [GeForce GT 640（OEM）](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gt-640-oem)
8.  [NVIDIA更新OEM显卡规格：低端GK107登场 驱动之家](http://news.mydrivers.com/1/226/226086.htm)
9.  geforce.com.tw: \[<http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gt640> GeForce GT 640
10. geforce.com.tw: [GeForce GT 645（OEM）](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gt-645-oem)
11. geforce.com.tw: [GeForce GTX 645](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-645-oem)
12. geforce.com.tw: [GeForce GTX 650](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-650)
13. geforce.com.tw: [GeForce GTX 650 Ti](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-650ti)
14. geforce.com.tw: [GeForce GTX 650 Ti Boost](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-650ti-boost)
15. geforce.com.tw: [GeForce GTX 660（OEM）](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-660-oem)
16. geforce.com.tw: [GeForce GTX 660](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-660)
17. geforce.com.tw: [GeForce GTX 660Ti](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-660ti)
18. [NVIDIA 正式發售GeForce GTX 660 Ti，讓Kepler 架構顯卡更親民](http://chinese.engadget.com/2012/08/17/nvidia-geforce-gtx-660-ti-kepler/) - engadget
19. [nVIDIA GTX 660 Ti 上市299美元起　另贈《邊緣禁地2》](http://www.ettoday.net/news/20120819/89637.htm) - ettoday
20. geforce.com.tw: [GeForce GTX 670](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-670)
21. [一张意想不到的显卡 NV次旗舰GTX670首测 太平洋电脑网](http://diy.pconline.com.cn/graphics/reviews/1205/2776617_all.html)
22. geforce.com.tw: [GeForce GTX 680](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-680)
23. geforce.com.tw: [GeForce GTX 690](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-690)
24. [GeForce GTX 690媒体评测卡开箱照 驱动之家](http://news.mydrivers.com/1/226/226549.htm)
25. [NVIDIA双芯卡皇降临！GTX690性能测试 硬派网](http://www.inpai.com.cn/doc/hard/172256.htm)
26. [老黄又使坏！NVIDIA刻意在显卡上做硬件阉割](http://www.ithome.com/html/digi/40553.htm)  - ithome.com引用自3DM.com
27. [NVIDIA 带来较平价的 GeForce GT 610、GT 620 和 GT 630 ，没有采用 Kepler 架构 Engadet](http://cn.engadget.com/2012/05/20/nvidia-geforce-gt-610-gt-620-gt-630/)
28.
29.
30. geforce.com.tw: [GeForce 605（OEM）](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-605-oem)
31. geforce.com.tw: [GeForce GT 610](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gt-610)
32. geforce.com.tw: [GeForce GT 620（OEM）](http://www.geforce.com/hardware/desktop-gpus/geforce-gt-620-oem)
33. geforce.com.tw: [GeForce GT 620](http://www.geforce.com/hardware/desktop-gpus/geforce-gt-620)
34. geforce.com.tw: [GeForce GT 630（OEM）](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gt-630-oem)
35. geforce.com.tw: [GeForce GT 630](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gt-630-oem)
36. geforce.com.tw: [GeForce GT 640（OEM）](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gt-640-oem)
37. geforce.com.tw: [GeForce GT 645（OEM）](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gt-645-oem)
38. geforce.com.tw: [GeForce GTX 650](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-650)
39. geforce.com.tw: [GeForce GTX 650](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-650)
40. geforce.com.tw: [GeForce GTX 650 Ti](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-650ti)
41. geforce.com.tw: [GeForce GTX 650 Ti Boost](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-650ti-boost)
42. geforce.com.tw: [GeForce GTX 660](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-660)
43.
44. geforce.com.tw: [GeForce GTX 660（OEM）](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-660-oem)
45.
46. geforce.com.tw: [GeForce GTX 660Ti](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-660ti)
47. geforce.com.tw: [GeForce GTX 670](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-670)
48. geforce.com.tw: [GeForce GTX 680](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-680)
49. , page 6 of 29
50. geforce.com.tw: [GeForce GTX 690](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-690)
51.
52. geforce.com.tw: [GeForce 610M](http://www.geforce.com.tw/hardware/notebook-gpus/geforce-610m)
53.
54. geforce.com.tw: [GeForce GT 620M](http://www.geforce.com.tw/hardware/notebook-gpus/geforce-gt-620m)
55.
56. geforce.com.tw: [GeForce GT 630M](http://www.geforce.com.tw/hardware/notebook-gpus/geforce-gt-630m)
57.
58.
59.
60. geforce.com.tw: [GeForce GT 635M](http://www.geforce.com.tw/hardware/notebook-gpus/geforce-gt-635m)
61.
62.
63.
64. geforce.com.tw: [GeForce GT 640M LE](http://www.geforce.com.tw/hardware/notebook-gpus/geforce-gt-640m-le)
65.
66. geforce.com.tw: [GeForce GT 640M](http://www.geforce.com.tw/hardware/notebook-gpus/geforce-gt-640m)
67.
68.
69. geforce.com.tw: [GeForce GT 650M](http://www.geforce.com.tw/hardware/notebook-gpus/geforce-gt-650m)
70.
71.
72.
73. geforce.com.tw: [GeForce GTX 660M](http://www.geforce.com.tw/hardware/notebook-gpus/geforce-gtx-660m)
74.
75.
76.
77. [660m power draw tested in Asus G75VW](http://forum.notebookreview.com/asus-reviews-owners-lounges/659534-asus-g75vw-ivy-bridge-660m-review-owners-lounge-4.html)
78. geforce.com.tw: [GeForce GTX 670M](http://www.geforce.com.tw/hardware/notebook-gpus/geforce-gtx-670m)
79.
80. geforce.com.tw: [GeForce GTX 675M](http://www.geforce.com.tw/hardware/notebook-gpus/geforce-gtx-675m)
81.
82. geforce.com.tw: [GeForce GTX 680M](http://www.geforce.com.tw/hardware/notebook-gpus/geforce-gtx-680m)