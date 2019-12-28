**AMD Radeon Rx 200**系列[顯示核心](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")，[研發代號](https://zh.wikipedia.org/wiki/代號 "wikilink")「*Volcanic Islands*」（[火山島](https://zh.wikipedia.org/wiki/火山島 "wikilink")），是[超微半導體所推出的](https://zh.wikipedia.org/wiki/超微半導體 "wikilink")[圖形處理器](../Page/圖形處理器.md "wikilink")系列，接替開發代號「Sea Islands」（即[AMD Radeon HD 8000系列](../Page/AMD_Radeon_HD_8000.md "wikilink")）的產品線。Volcanic Islands系列顯示核心原預計2014年推出，屆時將與對手[NVIDIA的Maxwell系列顯示核心和](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")[英特爾第二代](https://zh.wikipedia.org/wiki/英特爾 "wikilink")[Xeon Phi架構對抗](https://zh.wikipedia.org/wiki/Xeon_Phi "wikilink")。\[1\]而實際上，超微於2013年9月業已公佈新一代顯示核心的部分資訊，並將於同年10月15日正式發布。首發的產品都是Radeon HD 7000系列的修訂版本，真正基於新顯示核心的Radeon R9 290X於2013年10月24日正式販售。Volcanic Islands系列採用[台積電和Common](https://zh.wikipedia.org/wiki/台積電 "wikilink") Platform Alliance（通用平台聯盟）的28[納米Gate](https://zh.wikipedia.org/wiki/納米 "wikilink")-Last製程來生產。\[2\]

「**Pirates Islands**」（[海盜群島](https://zh.wikipedia.org/wiki/海盜 "wikilink")）將會是最後一個以[島嶼](../Page/島嶼.md "wikilink")為研發代號的顯示核心系列\[3\]，接替「Volcanic Islands」系列，是為現時的Radeon Rx 300系列；而「Pirates Islands」首發產品則是歸類到Rx 200系列的、核心代號「Tonga」的Radeon R9 285。\[4\]

## 命名

在超微公佈新的顯示核心命名規則前不少媒體直接稱之為「Radeon HD 9000系列」\[5\]\[6\]\[7\]。而在2013年9月13日，Techpowerup發布了新版[GPU-Z](../Page/GPU-Z.md "wikilink") 0.7.3，增加對AMD Radeon R7 240、R7 250、R7 260X、R9 270、R9 270X、R9 290以及R9 290X的支持，揭示出新一代顯示晶片已放棄Radeon HD XXXX的命名方式，改為Radeon Rx XXX的命名方式，已知有Radeon R9和Radeon R7兩個子系列。\[8\]最後超微在2013年9月25日的AMD GPU14技術日正式確認並對外公佈新的顯示核心型號命名規則。\[9\]

## 架構、技術特性

### TrueAudio音频技术

研發代號『Hawaii XT/Pro』顯示核心以及Radeon R7 260的『Bonaire XTX』顯示核心新增TureAudio可程式音訊流水線技術，最高支援24聲道採樣編碼的環繞聲輸出或是身歷聲[高保真](../Page/高保真.md "wikilink")音訊輸出。\[10\]

### TressFX

TressFX技術，是超微透過DirectX 11所實作的3D畫面處理技術，能逼真展現像是頭髮絲等超精細的畫面細節而無需消耗過多的顯示核心資源。此次超微利用這個技術與Crytek、Illfonic聯手，基於最新的針對[GCN架構進行最佳化的CryENGINE引擎](https://zh.wikipedia.org/wiki/GCN架構 "wikilink")，重新製作了[ATI時代](https://zh.wikipedia.org/wiki/ATI "wikilink")[Radeon](../Page/Radeon.md "wikilink")系列的虛擬形象代言人Ruby，以此作為Radeon R9/R7 200系列的虛擬代言人，但這次是『真正擁有』12150根獨立的頭髮絲。

### CrossFire

新的顯示核心內的交火互聯模組中，整合硬體DMA引擎（交火合成引擎），因此新一代CrossFire技術不再需要CF接橋，可透過[PCI Express匯流排直接存取其他GPU](../Page/PCI_Express.md "wikilink")，便可實現多重GPU協同運算。AMD展示的新一代R9 290X上已沒有CF金手指。\[11\] AMD表示，即使不使用接橋，由於PCI-E2.0/2.1/3.0提供的頻寬已經大大超過雙卡互聯所需頻寬的，而且因為每顆顯示核心都內建硬體交火合成引擎，對PCI-E的頻寬佔用也要比以往的技術低不少，因此交火效能亦不會比使用橋接器的有所下降。\[12\]除此以外，還與Catalyst（催化劑）驅動程式的幀平滑技術相容。\[13\]

此外，新一代交火的名字由CrossFireX變回CrossFire。

### 多螢幕顯示

此代的[Eyefinity寬域技術仍然最多支援六螢幕顯示輸出](https://zh.wikipedia.org/wiki/AMD_Eyefinity "wikilink")，標配連接埠依舊是兩個[DVI](../Page/DVI.md "wikilink")、一個[HDMI](../Page/HDMI.md "wikilink")和一個[DisplayPort](../Page/DisplayPort.md "wikilink")。但這一代的Eyefinity技術相比以往的大大降低對DisplayPort技術的依賴。當只組建三螢幕顯示輸出時，可以完全不使用DisplayPort連接埠，只有兩個DVI + 一個HDMI亦可以達成三螢幕輸出，而以往的技術，無論是三螢幕抑或是更多螢幕顯示輸出，都必須使用一個配備DisplayPort連接埠的螢幕方能達成多螢幕輸出。\[14\]因應技術變更，新顯示卡的DVI連接埠相應地改為使用和NVIDIA相同的標準DVI連接埠。\[15\] 借助MTS擴展器可組建單卡六螢幕輸出。

### 高解析度輸出

支援4K×4K高解析度輸出、支援2160p（3840×2160）視訊回放硬體加速和遊戲畫面渲染。

### 3D應用程式介面

首次支援DirectX 11.2。是DirectX 11繼DirectX 11.1增量升級後的又一次功能性的增量升級。

除了傳統的[Direct3D](../Page/Direct3D.md "wikilink")、[OpenGL](../Page/OpenGL.md "wikilink")以外，AMD還針對GCN架構的顯示核心開發了新的3D應用程式介面「**Mantle**」，可以讓使用其的遊戲直接存取GCN架構的原始語言，充分利用AMD自家的顯示核心。由於下一代的遊戲主機均使用AMD的處理器，AMD亦以Mantle為這些主機提供無縫的跨平台開發之介面。此外，AMD亦正與許多遊戲開發商合作，建立相關的應用程式介面規範和驅動程式，AMD還表示Mantle並不是取代Direct3D和OpenGL，而是作為它們的輔助。\[16\] AMD亦提到Mantle儘管目前仍不是開放標準，但不會一家獨大，亦歡迎NVIDIA相容AMD的標準。\[17\]

2014年3月24日，AMD於2014遊戲開發者大會上宣布基於GCN架構的顯示核心均可支援DirectX 12。\[18\]

## 產品

2013年9月25日的AMD GPU14技術大會上超微公佈新一代R9/R7 200系列的產品線。\[19\]

### R9 200系列

R9 200系列面向高階消費市場，有R9 295X2、R9 290X、R9 290、R9 280X、R9 270X以及R9 270六個型號。

發燒級型號R9 295X2，代號「Vesuvius」（[維蘇威火山](../Page/維蘇威火山.md "wikilink")），2014年4月8日發表。\[20\] R9 295X2採用兩顆「Hawaii XT」核心，規格基本上是公版R9 290X的翻倍，但供電系統和散熱系統均被重新設計，輔助供電為8-pin+8-pin的設計，但AMD公佈高達500W的功耗，使得雙8-pin的設計需要使用AMD指定規格的電源方可滿足，否則會有供電不足停機的可能；散熱採用Asetek製造的一體化液冷散熱套件，這是公版顯示卡上尚屬首次，為了增加散熱效率，AMD還導入了對手NVIDIA在[GeForce 700系列開始使用的合金散熱罩](https://zh.wikipedia.org/wiki/GeForce_700 "wikilink")。官方售價1499美元。\[21\]\[22\]

旗艦型號R9 290X和次旗艦型號R9 290使用代號為『Hawaii』的新一代圖形處理器，搭載4GB GDDR5視訊記憶體，2013年9月25發布。\[23\]\[24\]R9 290X使用『Hawaii XT』顯示核心，而R9 290則是使用『Hawaii Pro』顯示核心，支援[TrueAudio](https://zh.wikipedia.org/wiki/TrueAudio "wikilink")、[Mantle應用程式介面](../Page/Mantle_\(API\).md "wikilink")，[DirectX 11.2以及無橋接的](../Page/DirectX.md "wikilink")[Crossfire多顯示卡互聯技術](https://zh.wikipedia.org/wiki/AMD_CrossFireX "wikilink")。2013年10月3日還有和戰地風雲4捆綁販售的R9 290X限量版套裝預訂，共賣掉了8000份，不過這個也披露了R9 290X正式販售以後的價格。R9 290X的『Hawaii XT』顯示核心擁有2816個流處理器，176個[紋理映射單元](https://zh.wikipedia.org/wiki/紋理映射單元 "wikilink")，64個[渲染輸出單元](https://zh.wikipedia.org/wiki/渲染輸出單元 "wikilink")，512位元的記憶體位寬，共44組[運算單元](https://zh.wikipedia.org/wiki/運算單元 "wikilink")（CU）和8個非同步仲裁引擎（ACE）。R9 290X的發售價格為549美元。\[25\]

Radeon R9 280X是HD 7970 GHz Edition（代號Tahiti XT2）經過最佳化改進後的更名版本，搭載3GB GDDR5顯示記憶體，2013年9月25日發布，發售價格為299美元，基於『Tahiti XTL』顯示核心。\[26\]

Radeon R9 270X，搭載2GB GDDR5顯示記憶體，2013年9月25日發布，發售價格199美元，基於『Curacao XT』顯示核心，比使用『Tahiti LE』顯示核心的Radeon HD 7870 XT效能更高。\[27\]

### R7 200系列

面向中階和低階消費市場的是R7 200系列，有R7 260X、R7 250和R7 240三個型號。

Radeon R7 260X於2013年9月25日發布，並公佈了發售價格為139美元，使用『Bonaire XTX』顯示核心。與原來使用『Bonaire XT』顯示核心的Radeon HD 7790相比時脈更高，而且還搭載2GB容量的GDDR5顯示記憶體，支援TureAudio、基於[Tensilica](https://zh.wikipedia.org/wiki/Tensilica "wikilink") HiFi EP架構的片上音訊[DSP](https://zh.wikipedia.org/wiki/DSP "wikilink")。\[28\]\[29\]實際性能大約等於新一代[遊戲主機](https://zh.wikipedia.org/wiki/遊戲主機 "wikilink")[Xbox One](../Page/Xbox_One.md "wikilink")，因此，Radeon R7 260X並不像Radeon R9 280/280X那樣是單純舊有顯示核心的改進，不是Radeon HD 7790的更名版本。

Radeon R7 250/240是Radeon HD 8670/8570的更名版本，搭載1GB GDDR5或2GB DDR3顯示記憶體，使用『Oland XT/Pro』顯示核心，而非Radeon HD 7770/7750/7730的『Cape Verde』核心。R7 250/240都不需要外接輔助電源供電。跟上代不同，Radeon R7 250/240兩款顯示卡會零售版本，不僅僅只供OEM使用，於2013年9月25日發布，售價89美元。\[30\]

## 晶片規格

### 桌上型顯示核心

#### 獨立顯示核心

  - <sup>1</sup> [統一渲染器數量](https://zh.wikipedia.org/wiki/統一渲染器 "wikilink") : [紋理對映單元](https://zh.wikipedia.org/wiki/紋理對映單元 "wikilink")（TMU）數量 : [渲染輸出單元](https://zh.wikipedia.org/wiki/渲染輸出單元 "wikilink")（ROP）數量
  - <sup>2</sup> 畫素填充率的計算：ROP的數量乘以基準核心[時脈速率](https://zh.wikipedia.org/wiki/時脈 "wikilink")（時脈單位Hz），單位畫素數每秒（P/s）。
  - <sup>3</sup> 紋理填充率的計算：TMU的數量乘以基準核心時脈速率（時脈單位Hz），單位紋理數每秒（T/s）。
  - <sup>4</sup> 單精度浮點數運算效能的計算：兩倍渲染器的數量然後乘以基準核心時脈速率（時脈單位Hz），單位[FLOPS](https://zh.wikipedia.org/wiki/FLOPS "wikilink")。
  - <sup>5</sup> 『Hawaii』核心的圖形處理器，雙精度浮點數運算效能是單精度的1/8，\[31\] 而R9 280/280X的『Tahiti』圖形核心則是維持原來雙精度/單精度效能比1/4的比率，其它使用28奈米製程的顯示核心都是1/16的雙精度/單精度運算效能比率。
  - <sup>6</sup> 滿載運作時，R9 290和R9 290X的時脈在到達95℃前會維持分別為947MHz和1000MHz。\[32\]
  - <sup>7</sup> GDDR5視訊記憶體的資料傳輸時脈速率是其運作時脈的四倍，DDR3記憶體的則為兩倍。
  - <sup>8</sup> 以AMD公佈的AIB公版顯示核心為準，非公版設計可能高於（如超頻版）或低於（如節能版、靜音版）這個數值。

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出年分</p></th>
<th><p>開發代號</p></th>
<th><p>製程(<a href="https://zh.wikipedia.org/wiki/nm" title="wikilink">nm</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/晶體管" title="wikilink">晶體管數目</a> (百萬)</p></th>
<th><p>核心尺寸(<a href="https://zh.wikipedia.org/wiki/平方毫米" title="wikilink">mm<sup>2</sup></a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排介面</a></p></th>
<th><p>顯示記億體容量 (<a href="https://zh.wikipedia.org/wiki/MB" title="wikilink">MB</a>)</p></th>
<th><p>核心頻率</p></th>
<th><p>核心配置<br />
<sup>SPs:TMUs:ROPs<sub>1</sub></sup></p></th>
<th><p>填充率</p></th>
<th><p>顯示記憶體類型</p></th>
<th><p>運算效能<br />
（GFLOPS）</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><sup>8</sup> (W)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></th>
<th><p>True Audio</p></th>
<th><p>售價 (USD)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>預設 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>加速 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>材質 (GT/s)</p></td>
<td><p>匯流排寬度 (<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p>匯流排類型</p></td>
<td><p>頻寬 (<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/單精度浮點數格式" title="wikilink">單精度浮點數</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/雙精度浮點數格式" title="wikilink">雙精度浮點數</a></p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Mantle_(應用程式介面)" title="wikilink">Mantle</a></p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Radeon R5 210 (OEM)</p></td>
<td></td>
<td><p>Cedar</p></td>
<td></td>
<td><p>292</p></td>
<td><p>59</p></td>
<td></td>
<td><p>256</p></td>
<td><p>400</p></td>
<td></td>
<td><p>450 (等效 900)</p></td>
<td><p>80:8:4</p></td>
<td><p>1.6</p></td>
<td><p>3.2</p></td>
<td><p>64</p></td>
<td></td>
<td><p>7.2</p></td>
</tr>
<tr class="odd">
<td><p>Radeon R5 220 (OEM)</p></td>
<td></td>
<td><p>Caicos PRO-L</p></td>
<td></td>
<td><p>370</p></td>
<td><p>67</p></td>
<td></td>
<td><p>512</p></td>
<td><p>625</p></td>
<td></td>
<td><p>533 (等效 1066)</p></td>
<td><p>160:8:4</p></td>
<td><p>2.5</p></td>
<td><p>5</p></td>
<td><p>64</p></td>
<td></td>
<td><p>8.53</p></td>
</tr>
<tr class="even">
<td><p>Radeon R5 230</p></td>
<td><p>2014年4月3日[33]</p></td>
<td><p>Caicos</p></td>
<td></td>
<td><p>370</p></td>
<td><p>67</p></td>
<td></td>
<td><p>1024<br />
2048</p></td>
<td><p>625[34]</p></td>
<td></td>
<td><p>533 (等效 1066)</p></td>
<td><p>160:8:4</p></td>
<td><p>2.5</p></td>
<td><p>5</p></td>
<td><p>64</p></td>
<td></td>
<td><p>8.53</p></td>
</tr>
<tr class="odd">
<td><p>Radeon R5 235(OEM)</p></td>
<td></td>
<td><p>Caicos XT</p></td>
<td></td>
<td><p>370</p></td>
<td><p>67</p></td>
<td></td>
<td><p>1024</p></td>
<td><p>775</p></td>
<td></td>
<td><p>900 (等效 1800)</p></td>
<td><p>160:8:4</p></td>
<td><p>3.1</p></td>
<td><p>6.2</p></td>
<td><p>64</p></td>
<td></td>
<td><p>14.4</p></td>
</tr>
<tr class="even">
<td><p>Radeon R5 235X(OEM)</p></td>
<td></td>
<td><p>Caicos XT</p></td>
<td></td>
<td><p>370</p></td>
<td><p>67</p></td>
<td></td>
<td><p>1024</p></td>
<td><p>875</p></td>
<td></td>
<td><p>900 (等效 1800)</p></td>
<td><p>160:8:4</p></td>
<td><p>3.5</p></td>
<td><p>7.0</p></td>
<td><p>64</p></td>
<td></td>
<td><p>14.4</p></td>
</tr>
<tr class="odd">
<td><p>Radeon R5 240(OEM)</p></td>
<td></td>
<td><p>Oland</p></td>
<td></td>
<td><p>1040</p></td>
<td><p>90</p></td>
<td></td>
<td><p>2048</p></td>
<td><p>730</p></td>
<td><p>780</p></td>
<td><p>900 (等效 1800)</p></td>
<td><p>384:24:8</p></td>
<td><p>5.84</p></td>
<td><p>14.6</p></td>
<td><p>128</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
<td><p>22.8<br />
57.6</p></td>
</tr>
<tr class="even">
<td><p>Radeon R7 240</p></td>
<td><p>2013年10月8日</p></td>
<td><p>Oland PRO</p></td>
<td></td>
<td><p>1040</p></td>
<td><p>90</p></td>
<td></td>
<td><p>2048</p></td>
<td><p>730</p></td>
<td><p>780</p></td>
<td><p>900 (等效 1800)<br />
1125 (等效 4500)</p></td>
<td><p>384:24:8</p></td>
<td><p>5.84</p></td>
<td><p>14.6</p></td>
<td><p>128</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
<td><p>28.8<br />
72</p></td>
</tr>
<tr class="odd">
<td><p>Radeon R7 250</p></td>
<td><p>2013年10月8日</p></td>
<td><p>Oland XT</p></td>
<td></td>
<td><p>1040</p></td>
<td><p>90</p></td>
<td></td>
<td><p>1024<br />
2048</p></td>
<td><p>1000</p></td>
<td><p>1050</p></td>
<td><p>1150 (等效 4600)</p></td>
<td><p>384:24:8</p></td>
<td><p>8</p></td>
<td><p>24</p></td>
<td><p>128</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
<td><p>73.6</p></td>
</tr>
<tr class="even">
<td><p>Radeon R7 250X[35]</p></td>
<td><p>2014年2月10日</p></td>
<td><p>Cape Verde XT</p></td>
<td></td>
<td><p>1500</p></td>
<td><p>123</p></td>
<td></td>
<td><p>1024<br />
2048</p></td>
<td><p>1000</p></td>
<td></td>
<td><p>1125 (等效 4500)</p></td>
<td><p>640:40:16</p></td>
<td><p>16</p></td>
<td><p>40</p></td>
<td><p>128</p></td>
<td></td>
<td><p>72</p></td>
</tr>
<tr class="odd">
<td><p>Radeon R7 260</p></td>
<td><p>2013年12月17日</p></td>
<td><p>Bonaire</p></td>
<td></td>
<td><p>2080</p></td>
<td><p>160</p></td>
<td></td>
<td><p>1024</p></td>
<td><p>1000</p></td>
<td></td>
<td><p>1500 (等效 6000)</p></td>
<td><p>768:48:16</p></td>
<td><p>16</p></td>
<td><p>48</p></td>
<td><p>128</p></td>
<td></td>
<td><p>96</p></td>
</tr>
<tr class="even">
<td><p>Radeon R7 260X</p></td>
<td><p>2013年10月8日</p></td>
<td><p>Bonaire XTX</p></td>
<td></td>
<td><p>2080</p></td>
<td><p>160</p></td>
<td></td>
<td><p>2048<br />
4096</p></td>
<td><p>1100</p></td>
<td></td>
<td><p>1625 (等效 6500)</p></td>
<td><p>896:56:16</p></td>
<td><p>17.6</p></td>
<td><p>61.6</p></td>
<td><p>128</p></td>
<td></td>
<td><p>104</p></td>
</tr>
<tr class="odd">
<td><p>Radeon R9 270</p></td>
<td><p>2013年11月13日</p></td>
<td><p>Curacao PRO[36]</p></td>
<td></td>
<td><p>2800</p></td>
<td><p>212</p></td>
<td></td>
<td><p>2048</p></td>
<td><p>900</p></td>
<td><p>925</p></td>
<td><p>1400 (等效 5600)</p></td>
<td><p>1280:80:32</p></td>
<td><p>28.8</p></td>
<td><p>72</p></td>
<td><p>256</p></td>
<td></td>
<td><p>179.2</p></td>
</tr>
<tr class="even">
<td><p>Radeon R9 270X</p></td>
<td><p>2013年10月8日</p></td>
<td><p>Curacao XT[37]</p></td>
<td></td>
<td><p>2800</p></td>
<td><p>212</p></td>
<td></td>
<td><p>2048<br />
4096</p></td>
<td><p>1000</p></td>
<td><p>1050</p></td>
<td><p>1400 (等效 5600)</p></td>
<td><p>1280:80:32</p></td>
<td><p>32</p></td>
<td><p>80</p></td>
<td><p>256</p></td>
<td></td>
<td><p>179.2</p></td>
</tr>
<tr class="odd">
<td><p>Radeon R9 280</p></td>
<td><p>2014年3月4日</p></td>
<td><p>Tahiti PRO</p></td>
<td></td>
<td><p>4313</p></td>
<td><p>352</p></td>
<td></td>
<td><p>3072</p></td>
<td><p>850</p></td>
<td><p>925</p></td>
<td><p>1250 (等效 5000)</p></td>
<td><p>1792:112:32</p></td>
<td><p>27.2</p></td>
<td><p>95.2</p></td>
<td><p>384</p></td>
<td></td>
<td><p>240</p></td>
</tr>
<tr class="even">
<td><p>Radeon R9 280X</p></td>
<td><p>2013年10月8日</p></td>
<td><p>Tahiti XT2<br />
Tahiti XTL[38]</p></td>
<td></td>
<td><p>4313</p></td>
<td><p>352</p></td>
<td></td>
<td><p>3072</p></td>
<td><p>850</p></td>
<td><p>1000</p></td>
<td><p>1500 (等效 6000)</p></td>
<td><p>2048:128:32</p></td>
<td><p>27.2</p></td>
<td><p>109</p></td>
<td><p>384</p></td>
<td></td>
<td><p>288</p></td>
</tr>
<tr class="odd">
<td><p>Radeon R9 285</p></td>
<td><p>2014年9月2日</p></td>
<td><p>Tonga PRO</p></td>
<td></td>
<td><p>5000</p></td>
<td><p>359</p></td>
<td></td>
<td><p>2048</p></td>
<td><p>最高918 [39]</p></td>
<td></td>
<td><p>1375 (等效 5500)</p></td>
<td><p>1792:112:32</p></td>
<td><p>29.4</p></td>
<td><p>102.8</p></td>
<td><p>256</p></td>
<td></td>
<td><p>176</p></td>
</tr>
<tr class="even">
<td><p>Radeon R9 290</p></td>
<td><p>2013年11月5日</p></td>
<td><p>Hawaii PRO</p></td>
<td></td>
<td><p>6200[40]</p></td>
<td><p>438</p></td>
<td></td>
<td><p>4096</p></td>
<td><p>最高947<sup>6</sup></p></td>
<td></td>
<td><p>1250 (等效 5000)</p></td>
<td><p>2560:160:64</p></td>
<td><p>60.608</p></td>
<td><p>151.52</p></td>
<td><p>512</p></td>
<td></td>
<td><p>320</p></td>
</tr>
<tr class="odd">
<td><p>Radeon R9 290X</p></td>
<td><p>2013年10月24日</p></td>
<td><p>Hawaii XT</p></td>
<td></td>
<td><p>6200[41]</p></td>
<td><p>438</p></td>
<td></td>
<td><p>4096</p></td>
<td><p>最高1000<sup>6</sup></p></td>
<td></td>
<td><p>1250 (等效 5000)</p></td>
<td><p>2816:176:64</p></td>
<td><p>64</p></td>
<td><p>176</p></td>
<td><p>512</p></td>
<td></td>
<td><p>320</p></td>
</tr>
<tr class="even">
<td><p>Radeon R9 295X2 [42]</p></td>
<td><p>2014年4月8日</p></td>
<td><p>Vesuvius</p></td>
<td></td>
<td><p>2x 6200</p></td>
<td><p>2x 438</p></td>
<td></td>
<td><p>2x 4096</p></td>
<td><p>1018</p></td>
<td></td>
<td><p>1250 (等效 5000)</p></td>
<td><p>2x 2816:176:64</p></td>
<td><p>2x 65.152</p></td>
<td><p>2x 179.168</p></td>
<td><p>2x 512</p></td>
<td></td>
<td><p>2x 320</p></td>
</tr>
<tr class="odd">
<td><p>型號</p></td>
<td><p>推出年分</p></td>
<td><p>開發代號</p></td>
<td><p>製造工藝(<a href="https://zh.wikipedia.org/wiki/nm" title="wikilink">nm</a>)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/晶體管" title="wikilink">晶體管數目</a> (百萬)</p></td>
<td><p>核心尺寸(<a href="https://zh.wikipedia.org/wiki/平方毫米" title="wikilink">mm<sup>2</sup></a>)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排介面</a></p></td>
<td><p>顯示記億體容量 (<a href="https://zh.wikipedia.org/wiki/MB" title="wikilink">MB</a>)</p></td>
<td><p>核心頻率</p></td>
<td><p>核心配置<br />
<sup>SPs:TMUs:ROPs<sub>1</sub></sup></p></td>
<td><p>填充率</p></td>
<td><p>顯示記憶體類型</p></td>
<td><p>運算效能<br />
（GFLOPS）</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><sup>8</sup> (W)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></td>
<td><p>True Audio</p></td>
<td><p>售價 (USD)</p></td>
</tr>
<tr class="even">
<td><p>預設 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>加速 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>材質 (<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)</p></td>
<td><p>頻寬 (<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p>匯流排類型</p></td>
<td><p>匯流排寬度 (<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/單精度浮點數格式" title="wikilink">單精度浮點數</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/雙精度浮點數格式" title="wikilink">雙精度浮點數</a></p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Mantle_(應用程式介面)" title="wikilink">Mantle</a></p></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 行動型顯示核心

行動型顯示核心的命名也和桌上型的一樣進行變更，是為Radeon Rx M2xx系列。

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出年分</p></th>
<th><p>Model Number</p></th>
<th><p>開發代號</p></th>
<th><p>製造工藝(<a href="https://zh.wikipedia.org/wiki/nm" title="wikilink">nm</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排</a><a href="https://zh.wikipedia.org/wiki/輸入/輸出介面" title="wikilink">介面</a></p></th>
<th><p>核心頻率</p></th>
<th><p>核心配置<br />
<sup>SPs:TMUs:ROPs<sub>1</sub></sup></p></th>
<th><p>填充率</p></th>
<th><p>顯示記憶體資訊</p></th>
<th><p>運算效能<br />
（GFLOPS）</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></th>
<th><p>GPU<a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><sup>8</sup> (W)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>預設 (MHz)</p></td>
<td><p>加速 (MHz)</p></td>
<td><p>記憶體 (MHz)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>材質 (<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)</p></td>
<td><p>容量 (<a href="https://zh.wikipedia.org/wiki/megabyte" title="wikilink">MB</a>)</p></td>
<td><p>頻寬 (<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p>類型</p></td>
<td><p>位寬 (<a href="https://zh.wikipedia.org/wiki/bit" title="wikilink">bit</a>)</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>|Radeon R5 M230</p></td>
<td><p>2014年</p></td>
<td><p>Jet Pro</p></td>
<td><p>Oland</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x8</p></td>
<td><p>780</p></td>
<td><p>855</p></td>
<td><p>1000</p></td>
<td><p>320:20:4</p></td>
<td><p>3.4</p></td>
<td><p>17.1</p></td>
<td><p>2048<br />
4096</p></td>
</tr>
<tr class="odd">
<td><p>|Radeon R5 M255</p></td>
<td><p>2014年6月</p></td>
<td><p>Jet Pro</p></td>
<td><p>Oland/Iceland</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x8</p></td>
<td></td>
<td><p>940</p></td>
<td><p>1000</p></td>
<td><p>320:20:8</p></td>
<td><p>7.5</p></td>
<td><p>18.8</p></td>
<td><p>2048<br />
4096</p></td>
</tr>
<tr class="even">
<td><p>|Radeon R7 M260</p></td>
<td><p>2014年6月</p></td>
<td><p>Opal/Topaz</p></td>
<td><p>Oland/Iceland</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x8</p></td>
<td></td>
<td><p>715<br />
980</p></td>
<td><p>1000</p></td>
<td><p>384:24:8</p></td>
<td><p>5.7<br />
7.8</p></td>
<td><p>17.2<br />
23.5</p></td>
<td><p>2048<br />
4096</p></td>
</tr>
<tr class="odd">
<td><p>|Radeon R7 M260X</p></td>
<td><p>2014年6月</p></td>
<td><p>Opal</p></td>
<td><p>Oland</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x8</p></td>
<td></td>
<td><p>715</p></td>
<td><p>1000</p></td>
<td><p>384:24:8</p></td>
<td><p>5.7</p></td>
<td><p>17.2</p></td>
<td><p>2048<br />
4096</p></td>
</tr>
<tr class="even">
<td><p>|Radeon R7 M265</p></td>
<td><p>2014年5月1日</p></td>
<td><p>Opal XT</p></td>
<td><p>Oland</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x8</p></td>
<td><p>725</p></td>
<td><p>825</p></td>
<td><p>1000</p></td>
<td><p>384:24:8</p></td>
<td><p>6.6</p></td>
<td><p>19.8</p></td>
<td><p>2048<br />
4096</p></td>
</tr>
<tr class="odd">
<td><p>|Radeon R9 M265X</p></td>
<td><p>2014年5月1日</p></td>
<td><p>Venus Pro</p></td>
<td><p>Cape Verde</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>575</p></td>
<td><p>625</p></td>
<td><p>1125</p></td>
<td><p>640:40:16</p></td>
<td><p>10</p></td>
<td><p>25</p></td>
<td><p>2048<br />
4096</p></td>
</tr>
<tr class="even">
<td><p>|Radeon R9 M270X</p></td>
<td><p>2014年5月1日</p></td>
<td><p>Venus XT</p></td>
<td><p>Cape Verde</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>725</p></td>
<td><p>775</p></td>
<td><p>1125</p></td>
<td><p>640:40:16</p></td>
<td><p>12.4</p></td>
<td><p>31</p></td>
<td><p>2048<br />
4096</p></td>
</tr>
<tr class="odd">
<td><p>|Radeon R9 M275X</p></td>
<td><p>2014年5月1日</p></td>
<td><p>Venus XTX</p></td>
<td><p>Cape Verde</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>900</p></td>
<td><p>925</p></td>
<td><p>1125</p></td>
<td><p>640:40:16</p></td>
<td><p>14.8</p></td>
<td><p>37</p></td>
<td><p>2048<br />
4096</p></td>
</tr>
<tr class="even">
<td><p>|Radeon R9 M280X</p></td>
<td><p>2015年2月9日</p></td>
<td><p>Saturn XT</p></td>
<td><p>Bonaire</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1000</p></td>
<td><p>1100</p></td>
<td><p>1500</p></td>
<td><p>896:56:16</p></td>
<td><p>17.6</p></td>
<td><p>61.6</p></td>
<td><p>2048<br />
4096</p></td>
</tr>
<tr class="odd">
<td><p>|Radeon R9 M290X</p></td>
<td><p>2014年5月1日</p></td>
<td><p>Neptune XT</p></td>
<td><p>Pitcairn</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>850</p></td>
<td><p>900</p></td>
<td><p>1200</p></td>
<td><p>1280:80:32</p></td>
<td><p>28.8</p></td>
<td><p>72</p></td>
<td><p>4096</p></td>
</tr>
<tr class="even">
<td><p>|Radeon R9 M295X</p></td>
<td><p>2014年</p></td>
<td></td>
<td><p>Tonga</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>750</p></td>
<td><p>800</p></td>
<td><p>1375</p></td>
<td><p>2048:128:32</p></td>
<td><p>25.6</p></td>
<td><p>102.4</p></td>
<td><p>4096</p></td>
</tr>
</tbody>
</table>

## 參考資料

## 另見

  - [AMD顯示核心列表](../Page/AMD顯示核心列表.md "wikilink")
  - [NVIDIA GeForce 700](../Page/NVIDIA_GeForce_700.md "wikilink")

## 外部連結

  - [TechPowerUp\! GPU Database](http://www.techpowerup.com/gpudb)
  - [AMD Radeon™ R9 Series Graphics](http://www.amd.com/US/PRODUCTS/DESKTOP/GRAPHICS/R9/Pages/amd-radeon-hd-r9-series.aspx)
  - [AMD Radeon™ R7 Series Graphics](http://www.amd.com/US/PRODUCTS/DESKTOP/GRAPHICS/R7/Pages/amd-radeon-hd-r7-series.aspx)
  - [GPU14 Tech Day Public Presentation.pdf](https://archive.is/20131107142710/https://amd.app.box.com/GPU14publicpreso)

[Category:AMD圖形處理器](https://zh.wikipedia.org/wiki/Category:AMD圖形處理器 "wikilink") [Category:顯示卡](https://zh.wikipedia.org/wiki/Category:顯示卡 "wikilink")

1.
2.
3.
4.
5.  [AMD’s Radeon HD 9000 Series Might Ship in October 2013](http://www.gamefront.com/amd-radeon-hd9000-october-2013/) - 2013年8月7日
6.
7.
8.
9.  [AMD R9、R7显卡官方真容、性能公布](http://news.mydrivers.com/1/277/277134.htm) - mydrivers.com，2013年9月26日
10. [AMD Announces TrueAudio Technology For Upcoming GPUs](http://www.anandtech.com/show/7370/amd-announces-trueaudio-technology-for-upcoming-gpus) - anandtech.com，2013年9月25日
11.
12.
13.
14.
15.
16.
17.
18.
19. [AMD新一代显卡全线性能/售价曝光](http://news.mydrivers.com/1/277/277234.htm) - mydrivers.com，2013年9月25日
20.
21.
22.
23.
24. [AMD GPU Lineup Announced R9 and R7 Series PC Perspective](http://www.pcper.com/news/General-Tech/AMD-GPU-Lineup-Announced-R9-and-R7-Series)
25.
26.
27.
28.
29.
30.
31. [Radeon R9 290X Review AMD's Back In Ultra-High-End Gaming](http://www.tomshardware.com/reviews/radeon-r9-290x-hawaii-review,3650.html) 『我們這裡知道，超微在R9 290X上將雙精度/單精度效能比由1/4改為1/8，最終雙精度浮點數運算效能在0.7 TeraFLOPS.而FirePro版本的圖形處理器則會支援全速的雙精度浮點數運算，其雙精度/單精度效能比為1/2，給專業使用者產生升級『Hawaii』產品的動機』。原文："We've also come to learn that AMD changed the double-precision rate from 1/4 to 1/8 on the R9 290X, yielding a maximum .7 TFLOPS. The FirePro version of this configuration will support full-speed (1/2 rate) DP compute, giving professional users an incentive to spring for Hawaii's professional implementation."
32. [AMD Radeon R9 290 Review Fast And $400, But Is It Consistent - Digging Deeper Into Hawaii’s Behavior](http://www.tomshardware.com/reviews/radeon-r9-290-review-benchmark,3659.html)
33.
34. [AMD Radeon™ R5 Series Graphics](http://www.amd.com/en-us/products/graphics/desktop/r5#)
35. [迎战GTX 750：R7 250X迫不及待露面了](http://news.mydrivers.com/1/291/291822.htm) - mydrivers.com
36. 實際上分別是『Pitcairn Pro』、『Pitcairn XT』
37.
38. [AMD Preparing Tahiti XTL Revision of Radeon R9 280X Graphic Card For November Release](http://wccftech.com/amd-preparing-tahiti-xtl-revision-radeon-r9-280x-graphic-card/)
39.
40. [AnandTech Portal | The AMD Radeon R9 290X Review](http://anandtech.com/show/7457/the-radeon-r9-290x-review/)
41.
42.