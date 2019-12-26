**ATI Radeon HD 4000**系列，其显示核心代号**Radeon R700**，由[AMD](https://zh.wikipedia.org/wiki/AMD "wikilink")（[ATI](https://zh.wikipedia.org/wiki/ATI "wikilink")）研发并推出。Radeon HD 4000系列的第一款產品是RV770[顯示核心](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")，採用此晶片的[顯示卡名為Radeon](https://zh.wikipedia.org/wiki/顯示卡 "wikilink") HD 4850，有800個流處理器。而核心頻率更高的HD 4870及HD 4890緊隨其後，更率先採用[GDDR5](../Page/GDDR5.md "wikilink")作為顯示記憶體。最高端顯示卡採用R700核心，是一款雙晶片顯示卡產品，名為HD 4870 X2。

## 背景

與之前的系列不同，首發的**Radeon R700**顯示卡只是中端產品。這與[AMD調整策略有關](https://zh.wikipedia.org/wiki/AMD "wikilink")。過往，AMD往往在高端市場落後於[NVIDIA](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")。此次，AMD在中端市場主動出擊，原因是該市場佔用家群一個較大的比例，利潤亦會較高。而對手NVIDIA方面，雖然推出了性能比較強的GTX 200系列顯示卡，但[性價比](../Page/性價比.md "wikilink")明顯比R700不足。以往的[顯示卡開發](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")，是先研製旗艦級產品，再將此功能削減，成為中端和低端顯示卡。面對著顯示核心的架構愈來愈複雜，研發的成本和時間亦愈來愈高。另外，高端產品的市場比較細，產品往往只是技術的演示。而[ATI在過往與](https://zh.wikipedia.org/wiki/ATI "wikilink")[NVIDIA競爭的過程中](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")，經常錯過適當的發佈時間，不只輸掉高端市場，亦減慢了中低端顯示卡的發佈。

在AMD收購ATI後，市場策略亦開始調整。今次，公司只會研發針對主流市場的顯示卡，高端顯示卡則由雙核心顯示卡補上，例如Radeon HD 4870 X2。

## 架構

整體的架構與上一代相約，但作出了多方面的微調。與上一代顯示卡系列一樣，支援[DirectX](../Page/DirectX.md "wikilink") 10.1及Shader Model 4.1。RV770核心有9.56億個[電晶體](https://zh.wikipedia.org/wiki/電晶體 "wikilink")，採用55 [nm製程製造](https://zh.wikipedia.org/wiki/nm "wikilink")。

### SIMD(Single Instruction Multiple Data)

同樣是SIMD架構，核心擁有多個SIMD核心。每一個SIMD核心有16個流處理器、獨立的纹理单元和L1快取。 由於取消了共用快取，各核心可以透過Global DataShare Unit互相溝通。而每個流處理器有5個[ALU](https://zh.wikipedia.org/wiki/ALU "wikilink")，換言之一個SIMD核心有80個[ALU](https://zh.wikipedia.org/wiki/ALU "wikilink")。與上一代不同，本次所有的ALU單元都可以作整數位元運算，可大大提升GPGPU應用的效能。RV770顯示核心有10個SIMD核心，合共擁有800個流處理器。

### 流處理器(Stream Processing Unit)

RV770顯示核心擁有800個流處理器，是上一代RV670的2.5倍。流處理器的結構並沒有任何改變，只是數量上有所上升。每個流處理器有5個[ALU](https://zh.wikipedia.org/wiki/ALU "wikilink")，所有的ALU單元都可以作整數位元運算。流處理器的架構依然是4D+1D的結構，相對NVIDIA的全1D結構，雖然效率沒有那麼高，但架構簡單，可以輕易提升流處理器的數量。AMD方面，每一個流處理器內的5個ALU會共用一個指令发射端口；NVIDIA方面，一個ALU需要獨立的端口，難以有效提升流處理器的數量。

### 纹理单元(Texture Unit)

每一個SIMD核心都擁有1組纹理单元，換言之RV770擁有10組纹理单元。每組纹理单元內有4个纹理寻址单元，16个32位元浮点纹理采样单元和4个纹理过滤单元。

### 快取(Cache)

上一代的顯示核心，[快取](https://zh.wikipedia.org/wiki/快取 "wikilink")（Cache）是被所有的SIMD核心共享的。在R700顯示核心中，每一個SIMD核心都擁有獨立的Cache。這樣做可以降低延遲，提高效率。上一代SIMD可透過共用快取互相溝通，由於採用了獨立快取，所以AMD為每一個核心加裝了Global DataShare Unit，作SIMD互相溝通之用。

### 片內互聯

AMD放棄了Ring Bus架構鏈接[顯示記憶體](https://zh.wikipedia.org/wiki/顯示記憶體 "wikilink")，改用回傳統的Crossbar架構。因為縱使Ring Bus架構的結構簡單且可以優化，但延遲率高，亦要用更多的電晶體。最重要的是R600顯示Ring Bus架構對效能的幫助不明顯，

### 記憶體

RV770的記憶體[頻寬是](https://zh.wikipedia.org/wiki/頻寬 "wikilink")256-[bit](../Page/位元.md "wikilink")，但使用[GDDR5](../Page/GDDR5.md "wikilink")的話仍可以保持高速率。

### 光栅单元(Render Back-Ends)

AMD重新設計了光栅单元，用來改善AA性能。亦取消了針對透明及霧化效果的運算單元。而AA算法仍然會交由Shader處理，憑著流處理器的數量是上一代的2.5倍，AA的性能亦有所提升。

### CrossFire Sideport

[R700_interconnect.svg](https://zh.wikipedia.org/wiki/File:R700_interconnect.svg "fig:R700_interconnect.svg") 這一代的雙顯示核心設計仍使用PCI Express橋接晶片。此次使用的是[PLX出品](https://zh.wikipedia.org/wiki/PLX技術公司 "wikilink")，功耗為3.8瓦的PEX 8647晶片，這塊晶片支援[PCIe](https://zh.wikipedia.org/wiki/PCIe "wikilink") 2.0，允許兩顆GPU運作在相同的PCIe插槽但擁有兩倍於前代產品（Radeon HD 3870 X2）的頻寬。但AMD在此代顯示核心上還內建了一個新的「[CrossFire](https://zh.wikipedia.org/wiki/CrossFire "wikilink") X Sideport」，用來協調多個顯示核心之間的通訊\[1\]，提供額外5GB/s且全雙工的GPU間資料傳送頻寬，增進圖形效能。如此一來兩個GPU間的總頻寬達到了21.8GB/s。籍此AMD利用兩顆顯示核心，組成一張顯示卡，用作對抗NVIDIA的高端產品。所以增加CrossFire的效能和效率就變得重要。在這一點上，CrossFire X Sideport內聯器從未被啟用，在任何支援CrossFire的驅動程式上。

### UVD2(Unified Video Decoder 2 )

相對第一代的[UVD](../Page/UVD.md "wikilink")，UVD2可以解碼更高码率和分辨率的影片。另外，與NVIDIA的新[PureVideo一樣](https://zh.wikipedia.org/wiki/PureVideo "wikilink")，可以支援兩段影片同時解碼，方便提供畫中畫功能。新增Dynamic Contrast技術，用來提升影片的光暗對比。另外，顯示核心依然集成了音效卡，支援聲道由5.1升級到7.1，支援[AC3和](https://zh.wikipedia.org/wiki/AC3 "wikilink")[DTS](../Page/DTS.md "wikilink")，亦追加對[LPCM的支援](https://zh.wikipedia.org/wiki/LPCM "wikilink")。

Radeon HD 4550/4350會支援UVD 2.2。\[2\] 提高對高清影片格式的兼容性，支援新一代的影像輸出。

### AVT(Accelerated Video Transcoding)

利用AVT技術，使用者可以利用R700顯示核心，編碼1080p的高清影片，這相當於GPGPU的一種應用。

## 其他技術

### GPGPU

AMD選擇了開放標準，例如苹果電腦推廣的[OpenCL](../Page/OpenCL.md "wikilink")，以至[DirectX](../Page/DirectX.md "wikilink")，或者AMD自家的[Brook +](https://zh.wikipedia.org/wiki/Brook_+ "wikilink")。AMD認為NVIDIA的[CUDA](../Page/CUDA.md "wikilink")是閉源標準，最终都会失败。

### 物理引擎

AMD宣佈与[Havok合作共同优化在AMD四核心处理器下的游戏物理运算的表现](https://zh.wikipedia.org/wiki/Havok "wikilink")，并表示会共同研究将来让[顯示卡支援](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")[Havok物理引擎](https://zh.wikipedia.org/wiki/Havok "wikilink")。有第三開發者聲稱，[PhysX](../Page/PhysX.md "wikilink")物理引擎可以在R700核心上實現。而NVIDIA就盡全力幫助那一位程式員，讓R700核心支持[CUDA](../Page/CUDA.md "wikilink")技術，藉此讓核心支援[PhysX](../Page/PhysX.md "wikilink")物理引擎。\[3\]

### GDDR5

Radeon HD 4870將會利用[GDDR5](../Page/GDDR5.md "wikilink")作為顯示記憶體，是業界首次採用GDDR5裝備顯示卡。相對而言，NVIDIA就顯得比較保守，只採用GDDR3記憶體，但可以保證產品發佈順利，亦提供足夠的頻寬。對上一次，ATI亦率先採用GDDR4作為X1950 XTX顯示卡的記憶體，但由於頻率提升有限，並未能為新產品提供更大的頻寬。而GDDR5的頻寬更大，功耗更低，亦符合AMD對節能的要求。

但由於GDDR5始終是新技術，所以開始的時候不能大量上市，亦耽誤了HD 4870顯示卡的發佈。而AMD放棄了Ring Bus記憶體架構，採用GDDR5記憶體是迫不得已的做法。

### PowerPlay

這是一個電源管理技術，RV670將它首次引入到桌面市場中。而在R700顯示核心中，有關的技術亦得到升級。例如，顯示核心可以自行關閉不在工作中的處理單元，亦可以調整核心的電壓和頻率。顯示記憶體方面，就只有頻率可以調整。

## 產品

### Radeon HD 4800

最先推出的是Radeon HD 4850顯示卡，目標是中端市場，擁有800个流处理器，採用GDDR3顯示記憶體。比較高端的Radeon HD 4870 亦在其後推出，除核心頻率有所提升，更採用[GDDR5](../Page/GDDR5.md "wikilink")顯示[記憶體](https://zh.wikipedia.org/wiki/記憶體 "wikilink")。另外，由於RV770的核心頻率還有提升的空間，預計有廠商會推出超頻版本的RV770顯示卡，用來與GTX 280顯示卡競爭。

旗艦型號Radeon HD 4870 X2已於2008年8月12日推出，採用雙顯示核心設計，對手是NVIDIA的GeForce GTX 280，而實際效能比nVidia Geforce GTX 280顯示卡更強，後來NVIDIA推出GeForce GTX 295方能戰勝之。顯示核心亦集成了CrossFire Sideport元件，兩個顯示核心可以雙向5GB/s的頻寬互相連結。\[4\] 橋接晶片方面，採用了PEX8647，支援[PCI-E](https://zh.wikipedia.org/wiki/PCI-E "wikilink") 2.0。\[5\]

這個系列最低端的是Radeon HD 4830，它有640個流處理器，對手是GeForce 9800 GT。\[6\]

AMD於2009年4月2日（原為4月6日，之後推遲到9日，最後由於產品提早在3月底發售，所以正式的官方發佈時間定為4月2日）\[7\] 推出使用RV790核心的Radeon HD 4890，規格與Radeon HD 4870相似，但運作頻率更高。對手是[NVIDIA的GeForce](https://zh.wikipedia.org/wiki/NVIDIA "wikilink") GTX 275。RV790核心並不是單純的RV770核心超頻版本，還額外增加了300万个晶体管\[8\]。

AMD於中國內地市場推出Radeon HD 4860，使用RV790核心，只擁有640個流處理器，採用512MB GDDR5顯示記憶體，由於以高時脈運作，所以效能與Radeon HD 4870接近。

### Radeon HD 4700

[ATI_Radeon_HD_4770_Graphics_Card-oblique_view.jpg](https://zh.wikipedia.org/wiki/File:ATI_Radeon_HD_4770_Graphics_Card-oblique_view.jpg "fig:ATI_Radeon_HD_4770_Graphics_Card-oblique_view.jpg") Radeon HD 4770於[2009年4月](../Page/2009年4月.md "wikilink")推出，使用AMD首款40nm繪圖核心RV740，擁有640個流處理器，128bit顯示記憶體介面，但採用[GDDR5](../Page/GDDR5.md "wikilink")顯示記憶體，以免記憶體頻宽不足。核心時脈750MHz，記憶體時脈3200MHz。效能較Radeon HD 4830優勝，部份測試成績甚至與Radeon HD 4850相近。由於需求高加上[台積電的](https://zh.wikipedia.org/wiki/台積電 "wikilink")40nm晶片前期生產良率欠佳，造成市面上長期缺貨，相同級別需要由Radeon HD 4850降價接替。本產品可視為半年後推出的Radeon HD 5000系列的實驗品。

### Radeon HD 4600

  - Radeon HD 4670 - 核心頻率為750MHZ，採用GDDR3顯示記憶體，頻率為1800MHz（容量是512/1024 MB）。核心擁有320个流处理器，但顯示記憶體頻宽仅有128bit，规格参数与HD3850 128-bit(HD3690)相似\[9\]。

<!-- end list -->

  - Radeon HD 4650 - 核心頻率比4670慢，採用GDDR2顯示記憶體。

### Radeon HD 4550

[Sapphire_ATI_Radeon_HD_4550.jpg](https://zh.wikipedia.org/wiki/File:Sapphire_ATI_Radeon_HD_4550.jpg "fig:Sapphire_ATI_Radeon_HD_4550.jpg")

  - Radeon HD 4550 - 有80個流處理器，採用GDDR3顯示記憶體，頻寬只有64-bit。

### Radeon HD 4350

  - Radeon HD 4350 - 與HD 4550同樣有80個流處理器，但只採用GDDR2顯示記憶體。對手是GeForce 9400 GT。

### FireStream 9000

GPGPU產品方面，AMD會推出基於RV770核心的FireStream 9250。它支援雙精度和64位元浮點運算。

## 顯示核心規格列表

### 桌上型

#### 獨立顯示核心

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>發布日期</p></th>
<th><p>開發<a href="https://zh.wikipedia.org/wiki/代號" title="wikilink">代號</a></p></th>
<th><p>製程 (<a href="https://zh.wikipedia.org/wiki/奈米" title="wikilink">nm</a>)</p></th>
<th><p>電晶體數量 (百萬)</p></th>
<th><p>晶片面積 (<a href="https://zh.wikipedia.org/wiki/平方毫米" title="wikilink">mm<sup>2</sup></a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排介面</a></p></th>
<th><p>顯示記憶體容量 (<a href="https://zh.wikipedia.org/wiki/MiB" title="wikilink">MiB</a>)</p></th>
<th><p>時鐘頻率</p></th>
<th><p>核心佈置</p></th>
<th><p><a href="../Page/填充率.md" title="wikilink">填充率</a></p></th>
<th><p>顯示記憶體類型</p></th>
<th><p>運算效能<br />
GFLOPS</p></th>
<th><p>熱設計功耗 (W)</p></th>
<th><p>GFLOPS/W<br />
單精度浮點<br />
運算能效</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a> (版本)</p></th>
<th><p>發售價格 (美元)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>核心 (<a href="https://zh.wikipedia.org/wiki/MHz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體 (<a href="https://zh.wikipedia.org/wiki/MHz" title="wikilink">MHz</a>)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>材質 (<a href="https://zh.wikipedia.org/wiki/材質_(電腦圖形學)" title="wikilink">GT</a>/s)</p></td>
<td><p>記憶體頻寬 (<a href="https://zh.wikipedia.org/wiki/GB" title="wikilink">GB</a>/s)</p></td>
<td><p>匯流排類型</p></td>
<td><p>記憶體位寬 (<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/單精度浮點數格式" title="wikilink">單精度浮點數</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/雙精度浮點數格式" title="wikilink">雙精度浮點數</a></p></td>
<td><p>空載</p></td>
<td><p>滿載</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Radeon HD 4350</p></td>
<td><p>2008年9月30日</p></td>
<td><p>RV710</p></td>
<td><p>55</p></td>
<td><p>242</p></td>
<td><p>73</p></td>
<td><p>PCIe 2.0 x16<br />
PCIe 2.0 x1<br />
AGP 8x</p></td>
<td><p>256<br />
512<br />
1024</p></td>
<td><p>575</p></td>
<td><p>500</p></td>
<td><p>80:8:4</p></td>
<td><p>2.3</p></td>
<td><p>4.6</p></td>
<td><p>6.4</p></td>
<td><p>DDR2</p></td>
<td><p>64</p></td>
<td><p>92</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 4550</p></td>
<td><p>2008年9月30日</p></td>
<td><p>RV710</p></td>
<td><p>55</p></td>
<td><p>242</p></td>
<td><p>73</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>256<br />
512<br />
1024</p></td>
<td><p>600<br />
600</p></td>
<td><p>600<br />
800</p></td>
<td><p>80:8:4</p></td>
<td><p>2.4</p></td>
<td><p>4.8</p></td>
<td><p>6.4<br />
12.8</p></td>
<td><p>DDR2<br />
GDDR3</p></td>
<td><p>64</p></td>
<td><p>96</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 4650</p></td>
<td><p>2008年9月10日</p></td>
<td><p>RV730 PRO</p></td>
<td><p>55</p></td>
<td><p>514</p></td>
<td><p>146</p></td>
<td><p>PCIe 2.0 x16<br />
AGP 8x</p></td>
<td><p>256<br />
512<br />
1024</p></td>
<td><p>600<br />
650</p></td>
<td><p>400-500<br />
500<br />
700</p></td>
<td><p>320:32:8</p></td>
<td><p>4.8<br />
5.2</p></td>
<td><p>19.2<br />
20.8</p></td>
<td><p>12.8-16.0<br />
16.0<br />
22.4</p></td>
<td><p>DDR2<br />
GDDR3<br />
GDDR4</p></td>
<td><p>64<br />
128</p></td>
<td><p>384<br />
416</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 4670</p></td>
<td><p>2008年9月10日</p></td>
<td><p>RV730 XT</p></td>
<td><p>55</p></td>
<td><p>514</p></td>
<td><p>146</p></td>
<td><p>PCIe 2.0 x16<br />
AGP 8x</p></td>
<td><p>512<br />
1024</p></td>
<td><p>750<br />
750</p></td>
<td><p>400-500<br />
900<br />
1000</p></td>
<td><p>320:32:8</p></td>
<td><p>6.0</p></td>
<td><p>24.0</p></td>
<td><p>12.8-16.0<br />
28.8<br />
32.0</p></td>
<td><p>DDR2<br />
GDDR3<br />
GDDR4</p></td>
<td><p>128</p></td>
<td><p>480</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 4730</p></td>
<td><p>2009年6月8日</p></td>
<td><p>RV770 CE</p></td>
<td><p>55</p></td>
<td><p>956</p></td>
<td><p>256</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>512</p></td>
<td><p>700<br />
750</p></td>
<td><p>900<br />
900</p></td>
<td><p>640:32:8</p></td>
<td><p>5.6<br />
6.0</p></td>
<td><p>22.4<br />
24.0</p></td>
<td><p>28.8</p></td>
<td><p>GDDR3</p></td>
<td><p>128</p></td>
<td><p>896<br />
960</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 4770</p></td>
<td><p>2009年4月28日</p></td>
<td><p>RV740</p></td>
<td><p>40</p></td>
<td><p>826</p></td>
<td><p>137</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>512</p></td>
<td><p>750</p></td>
<td><p>800</p></td>
<td><p>640:32:16</p></td>
<td><p>12</p></td>
<td><p>24</p></td>
<td><p>51.2</p></td>
<td><p>GDDR5</p></td>
<td><p>128</p></td>
<td><p>960</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 4830</p></td>
<td><p>2008年10月21日</p></td>
<td><p>RV770 LE</p></td>
<td><p>55</p></td>
<td><p>956</p></td>
<td><p>256</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>512<br />
1024</p></td>
<td><p>575</p></td>
<td><p>900</p></td>
<td><p>640:32:16</p></td>
<td><p>9.2</p></td>
<td><p>18.4</p></td>
<td><p>57.6</p></td>
<td><p>GDDR3<br />
GDDR4</p></td>
<td><p>256</p></td>
<td><p>736</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 4850</p></td>
<td><p>2008年6月25日</p></td>
<td><p>RV770 PRO</p></td>
<td><p>55</p></td>
<td><p>956</p></td>
<td><p>256</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>512<br />
1024<br />
2048</p></td>
<td><p>625</p></td>
<td><p>993</p></td>
<td><p>800:40:16</p></td>
<td><p>10</p></td>
<td><p>25</p></td>
<td><p>63.55</p></td>
<td><p>GDDR3<br />
GDDR4</p></td>
<td><p>256</p></td>
<td><p>1000</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 4860</p></td>
<td><p>2009年9月9日</p></td>
<td><p>RV790 GT</p></td>
<td><p>55</p></td>
<td><p>959</p></td>
<td><p>282</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>512<br />
1024</p></td>
<td><p>700</p></td>
<td><p>750</p></td>
<td><p>640:32:16</p></td>
<td><p>11.2</p></td>
<td><p>22.4</p></td>
<td><p>96</p></td>
<td><p>GDDR5</p></td>
<td><p>256</p></td>
<td><p>896</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 4870</p></td>
<td><p>2008年6月25日</p></td>
<td><p>RV770 XT</p></td>
<td><p>55</p></td>
<td><p>956</p></td>
<td><p>256</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>512<br />
1024<br />
2048</p></td>
<td><p>750</p></td>
<td><p>900</p></td>
<td><p>800:40:16</p></td>
<td><p>12</p></td>
<td><p>30</p></td>
<td><p>115.2</p></td>
<td><p>GDDR5</p></td>
<td><p>256</p></td>
<td><p>1200</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 4890</p></td>
<td><p>2009年4月2日</p></td>
<td><p>RV790 XT</p></td>
<td><p>55</p></td>
<td><p>959</p></td>
<td><p>282</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>850</p></td>
<td><p>975</p></td>
<td><p>800:40:16</p></td>
<td><p>13.6</p></td>
<td><p>34</p></td>
<td><p>124.8</p></td>
<td><p>GDDR5</p></td>
<td><p>256</p></td>
<td><p>1360</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 4850 X2</p></td>
<td><p>2008年11月7日</p></td>
<td><p>R700</p></td>
<td><p>55</p></td>
<td><p>956x2</p></td>
<td><p>256x2</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>512x2<br />
1024x2</p></td>
<td><p>625</p></td>
<td><p>993</p></td>
<td><p>800:40:16 ×2</p></td>
<td><p>2× 10</p></td>
<td><p>2× 25</p></td>
<td><p>2× 63.55</p></td>
<td><p>GDDR3</p></td>
<td><p>256x2</p></td>
<td><p>2000</p></td>
</tr>
<tr class="even">
<td><p>Radeon HD 4870 X2</p></td>
<td><p>2008年8月12日</p></td>
<td><p>R700</p></td>
<td><p>55</p></td>
<td><p>956x2</p></td>
<td><p>256x2</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>1024x2</p></td>
<td><p>750</p></td>
<td><p>900</p></td>
<td><p>800:40:16 ×2</p></td>
<td><p>2× 12</p></td>
<td><p>2× 30</p></td>
<td><p>2× 115.2</p></td>
<td><p>GDDR5</p></td>
<td><p>256x2</p></td>
<td><p>2400</p></td>
</tr>
</tbody>
</table>

<sup>1</sup> [統一渲染單元數量](https://zh.wikipedia.org/wiki/GPGPU "wikilink") : [紋理對映單元數量](https://zh.wikipedia.org/wiki/紋理對映單元 "wikilink") : [渲染輸出單元數量](https://zh.wikipedia.org/wiki/渲染輸出單元 "wikilink")
<sup>2</sup>[GDDR5](../Page/GDDR5.md "wikilink")[顯示記憶體的資料傳送速率是其時鐘頻率的](https://zh.wikipedia.org/wiki/顯示記憶體 "wikilink")4倍，而非其它DDR記憶體的兩倍
<sup>3</sup>熱設計功耗（TDP）數值來源於超微官方資料。不同廠商的非公版顯示卡電路板設計會使得實際TDP數值和官方資料的有所不同。
<sup>4</sup>全部型號帶有UVD2、ATI PowerPlay功能

#### 整合式顯示核心

這一列表是Radeon HD 4000中內建於AMD晶片組系列的型號，整合這些型號的晶片組有[700系列](https://zh.wikipedia.org/wiki/AMD_700晶片組系列 "wikilink")、[800系列以及](https://zh.wikipedia.org/wiki/AMD_800_芯片组系列 "wikilink")[900系列](../Page/AMD_900_芯片组系列.md "wikilink")（980G，實際是880G的更名版本）。這些型號全部支援DirectX 10.1以及OpenGL 3.3。

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>發布日期</p></th>
<th><p>開發<a href="https://zh.wikipedia.org/wiki/代號" title="wikilink">代號</a></p></th>
<th><p>圖形核心</p></th>
<th><p>製程 (<a href="https://zh.wikipedia.org/wiki/奈米" title="wikilink">nm</a>)</p></th>
<th><p>電晶體數量 (百萬)</p></th>
<th><p>晶片面積 (<a href="https://zh.wikipedia.org/wiki/平方毫米" title="wikilink">mm<sup>2</sup></a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排介面</a></p></th>
<th><p>記憶體容量<sup>3</sup> (<a href="https://zh.wikipedia.org/wiki/MiB" title="wikilink">MiB</a>)</p></th>
<th><p>核心時脈<sup>2</sup> (<a href="https://zh.wikipedia.org/wiki/MHz" title="wikilink">MHz</a>)</p></th>
<th><p>核心佈置<sup>1</sup></p></th>
<th><p><a href="../Page/填充率.md" title="wikilink">填充率</a></p></th>
<th><p>顯示記憶體類型</p></th>
<th><p>運算效能<br />
GFLOPS</p></th>
<th><p>特性/備註</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>材質 (<a href="https://zh.wikipedia.org/wiki/材質_(電腦圖形學)" title="wikilink">GT</a>/s)</p></td>
<td><p>FP32 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>記憶體頻寬 (<a href="https://zh.wikipedia.org/wiki/GB" title="wikilink">GB</a>/s)</p></td>
<td><p>匯流排類型</p></td>
<td><p>有效時脈 (<a href="https://zh.wikipedia.org/wiki/MHz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體位寬 (<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
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
<td><p>Radeon HD 4200 Graphics (785G晶片組)</p></td>
<td><p>2009年8月</p></td>
<td><p>RS880</p></td>
<td><p>RV620</p></td>
<td><p>55</p></td>
<td><p>&gt;205</p></td>
<td><p>~73 (~9 × 8.05)</p></td>
<td><p>HT 3.0</p></td>
<td><p>最高可從系統記憶體佔用512 + 可選的專用128（即板載顯存）</p></td>
<td><p>500</p></td>
<td><p>40:4:4</p></td>
<td><p>2</p></td>
<td><p>2</p></td>
<td><p>1</p></td>
<td><p>20.8 (系統記憶體) + 2.6 (專用)</p></td>
</tr>
<tr class="odd">
<td><p>Radeon HD 4250 Graphics (880G晶片組、980G晶片組)</p></td>
<td><p>2010年3月（880G）、2011年9月（980G）</p></td>
<td><p>RS880</p></td>
<td><p>560</p></td>
<td><p>2.24</p></td>
<td><p>2.24</p></td>
<td><p>1.12</p></td>
<td><p><a href="../Page/HyperTransport.md" title="wikilink">HT</a> (系統) + <a href="https://zh.wikipedia.org/wiki/DDR3" title="wikilink">DDR3</a>-1333 (專用)</p></td>
<td><p>44.8</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Radeon HD 4290 Graphics (890GX晶片組)</p></td>
<td><p>RS880D</p></td>
<td><p>最多佔用系統記憶體512 + 專用128</p></td>
<td><p>700</p></td>
<td><p>2.8</p></td>
<td><p>2.8</p></td>
<td><p>1.4</p></td>
<td><p>56</p></td>
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

<sup>1</sup> [統一渲染單元數量](https://zh.wikipedia.org/wiki/GPGPU "wikilink") : [紋理對映單元數量](https://zh.wikipedia.org/wiki/紋理對映單元 "wikilink") : [渲染輸出單元數量](https://zh.wikipedia.org/wiki/渲染輸出單元 "wikilink")
<sup>2</sup>在[ATI PowerPlay節電技術生效時](https://zh.wikipedia.org/wiki/ATI_PowerPlay "wikilink")，核心時脈在不同的使用場合時會有所不同。這個列表列出的時脈數值是官方宣稱的時脈值參數
<sup>3</sup>整合顯示核心的專用記憶體採用特別的sideport匯流排，用作[顯示記憶體](https://zh.wikipedia.org/wiki/顯示記憶體 "wikilink")

### 行動型顯示核心

這個列表除了獨立顯示核心以外，還包括整合於[北橋晶片內的整合式顯示核心](https://zh.wikipedia.org/wiki/北橋晶片 "wikilink")。

<table>
<thead>
<tr class="header">
<th><p>型號[10]</p></th>
<th><p>發布日期</p></th>
<th><p>型號代號</p></th>
<th><p>開發<a href="https://zh.wikipedia.org/wiki/代號" title="wikilink">代號</a></p></th>
<th><p>製程 (<a href="https://zh.wikipedia.org/wiki/奈米" title="wikilink">nm</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排介面</a></p></th>
<th><p>記憶體容量 (<a href="https://zh.wikipedia.org/wiki/MiB" title="wikilink">MiB</a>)</p></th>
<th><p>時鐘頻率 (<a href="https://zh.wikipedia.org/wiki/MHz" title="wikilink">MHz</a>)</p></th>
<th><p>記憶體時脈 (<a href="https://zh.wikipedia.org/wiki/MHz" title="wikilink">MHz</a>)</p></th>
<th><p>核心佈置<sup>1</sup></p></th>
<th><p><a href="../Page/填充率.md" title="wikilink">填充率</a></p></th>
<th><p>記憶體</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API相容性</a> (版本)</p></th>
<th><p>運算能力<br />
GFLOPs</p></th>
<th><p>備註</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>材質 (GT/s)</p></td>
<td><p>頻寬 (<a href="https://zh.wikipedia.org/wiki/GB" title="wikilink">GB</a>/s)</p></td>
<td><p>匯流排類型</p></td>
<td><p>匯流排位寬 (<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
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
<td><p>Mobility Radeon HD 4200</p></td>
<td><p>2009年9月10日</p></td>
<td></td>
<td><p>RV620</p></td>
<td><p>55</p></td>
<td><p>內建PCIe x16 1.1</p></td>
<td><p>可最多從系統記憶體中佔用512</p></td>
<td><p>500</p></td>
<td><p>800<br />
(系統記憶體)</p></td>
<td><p>40:4:4</p></td>
<td><p>2</p></td>
<td><p>2</p></td>
<td><p>6.4/12.8</p></td>
<td><p><a href="../Page/DDR2_SDRAM.md" title="wikilink">DDR2</a> <a href="https://zh.wikipedia.org/wiki/DDR3" title="wikilink">DDR3</a></p></td>
<td><p>64/128</p></td>
</tr>
<tr class="odd">
<td><p>Mobility Radeon HD 4225</p></td>
<td><p>2010年5月1日</p></td>
<td></td>
<td><p>RV620</p></td>
<td><p>55</p></td>
<td><p>內建PCIe x16 1.1</p></td>
<td><p>可最多從系統記憶體中佔用512</p></td>
<td><p>380</p></td>
<td><p>800<br />
(系統記憶體)</p></td>
<td><p>40:4:4</p></td>
<td><p>1.52</p></td>
<td><p>1.52</p></td>
<td><p>6.4/12.8</p></td>
<td><p><a href="../Page/DDR2_SDRAM.md" title="wikilink">DDR2</a> <a href="https://zh.wikipedia.org/wiki/DDR3" title="wikilink">DDR3</a></p></td>
<td><p>64/128</p></td>
</tr>
<tr class="even">
<td><p>Mobility Radeon HD 4250</p></td>
<td><p>2010年5月1日</p></td>
<td></td>
<td><p>RV620</p></td>
<td><p>55</p></td>
<td><p>內建PCIe x16 1.1</p></td>
<td><p>可最多從系統記憶體中佔用512</p></td>
<td><p>500</p></td>
<td><p>800<br />
(系統記憶體)</p></td>
<td><p>40:4:4</p></td>
<td><p>2</p></td>
<td><p>2</p></td>
<td><p>6.4/12.8</p></td>
<td><p><a href="../Page/DDR2_SDRAM.md" title="wikilink">DDR2</a> <a href="https://zh.wikipedia.org/wiki/DDR3" title="wikilink">DDR3</a></p></td>
<td><p>64/128</p></td>
</tr>
<tr class="odd">
<td><p>Mobility Radeon HD 4270</p></td>
<td><p>2010年5月1日</p></td>
<td></td>
<td><p>RV620</p></td>
<td><p>55</p></td>
<td><p>內建PCIe x16 1.1</p></td>
<td><p>可最多從系統記憶體中佔用512</p></td>
<td><p>590</p></td>
<td><p>800<br />
(系統記憶體)</p></td>
<td><p>40:4:4</p></td>
<td><p>2.36</p></td>
<td><p>2.36</p></td>
<td><p>6.4/12.8</p></td>
<td><p><a href="../Page/DDR2_SDRAM.md" title="wikilink">DDR2</a> <a href="https://zh.wikipedia.org/wiki/DDR3" title="wikilink">DDR3</a></p></td>
<td><p>64/128</p></td>
</tr>
<tr class="even">
<td><p>Mobility Radeon HD 4330</p></td>
<td><p>2009年1月9日</p></td>
<td><p>M92</p></td>
<td><p>RV710</p></td>
<td><p>55</p></td>
<td><p>PCIe x16 2.0</p></td>
<td><p>512</p></td>
<td><p>450</p></td>
<td><p>600</p></td>
<td><p>80:8:4</p></td>
<td><p>1.8</p></td>
<td><p>3.6</p></td>
<td><p>9.6</p></td>
<td><p><a href="../Page/DDR2_SDRAM.md" title="wikilink">DDR2</a><br />
<a href="https://zh.wikipedia.org/wiki/DDR3" title="wikilink">DDR3</a><br />
<a href="https://zh.wikipedia.org/wiki/GDDR3" title="wikilink">GDDR3</a></p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>Mobility Radeon HD 4530</p></td>
<td><p>2009年1月9日</p></td>
<td><p>M92</p></td>
<td><p>RV710</p></td>
<td><p>55</p></td>
<td><p>PCIe x16 2.0</p></td>
<td><p>512</p></td>
<td><p>500</p></td>
<td><p>700</p></td>
<td><p>80:8:4</p></td>
<td><p>2</p></td>
<td><p>4</p></td>
<td><p>11.2</p></td>
<td><p><a href="../Page/DDR2_SDRAM.md" title="wikilink">DDR2</a><br />
<a href="https://zh.wikipedia.org/wiki/DDR3" title="wikilink">DDR3</a><br />
<a href="https://zh.wikipedia.org/wiki/GDDR3" title="wikilink">GDDR3</a></p></td>
<td><p>64</p></td>
</tr>
<tr class="even">
<td><p>Mobility Radeon HD 4550</p></td>
<td><p>2010年1月1日</p></td>
<td><p>M92</p></td>
<td><p>RV710</p></td>
<td><p>55</p></td>
<td><p>PCIe x16 2.0</p></td>
<td><p>512</p></td>
<td><p>550</p></td>
<td><p>700</p></td>
<td><p>80:8:4</p></td>
<td><p>2.2</p></td>
<td><p>4.4</p></td>
<td><p>11.2</p></td>
<td><p><a href="../Page/DDR2_SDRAM.md" title="wikilink">DDR2</a><br />
<a href="https://zh.wikipedia.org/wiki/DDR3" title="wikilink">DDR3</a><br />
<a href="https://zh.wikipedia.org/wiki/GDDR3" title="wikilink">GDDR3</a></p></td>
<td><p>64</p></td>
</tr>
<tr class="odd">
<td><p>Mobility Radeon HD 4570</p></td>
<td><p>2009年1月9日</p></td>
<td><p>M92</p></td>
<td><p>RV710</p></td>
<td><p>55</p></td>
<td><p>PCIe x16 2.0</p></td>
<td><p>512</p></td>
<td><p>680</p></td>
<td><p>800</p></td>
<td><p>80:8:4</p></td>
<td><p>2.72</p></td>
<td><p>5.44</p></td>
<td><p>12.8</p></td>
<td><p><a href="../Page/DDR2_SDRAM.md" title="wikilink">DDR2</a><br />
<a href="https://zh.wikipedia.org/wiki/DDR3" title="wikilink">DDR3</a><br />
<a href="https://zh.wikipedia.org/wiki/GDDR3" title="wikilink">GDDR3</a></p></td>
<td><p>64</p></td>
</tr>
<tr class="even">
<td><p>Mobility Radeon HD 4650[11]</p></td>
<td><p>2009年1月9日</p></td>
<td><p>M96</p></td>
<td><p>RV730</p></td>
<td><p>55</p></td>
<td><p>PCIe x16 2.0</p></td>
<td><p>512<br />
1024</p></td>
<td><p>500<br />
550</p></td>
<td><p>600<br />
800</p></td>
<td><p>320:32:8</p></td>
<td><p>4<br />
4.4</p></td>
<td><p>16<br />
17.6</p></td>
<td><p>19.2<br />
25.6</p></td>
<td><p><a href="../Page/DDR2_SDRAM.md" title="wikilink">DDR2</a><br />
<a href="https://zh.wikipedia.org/wiki/DDR3" title="wikilink">DDR3</a><br />
<a href="https://zh.wikipedia.org/wiki/GDDR3" title="wikilink">GDDR3</a></p></td>
<td><p>128</p></td>
</tr>
<tr class="odd">
<td><p>Mobility Radeon HD 4670[12]</p></td>
<td><p>2009年1月9日</p></td>
<td><p>M96-XT</p></td>
<td><p>RV730</p></td>
<td><p>55</p></td>
<td><p>PCIe x16 2.0</p></td>
<td><p>512<br />
1024</p></td>
<td><p>675</p></td>
<td><p>800</p></td>
<td><p>320:32:8</p></td>
<td><p>5.4</p></td>
<td><p>21.6</p></td>
<td><p>12.8<br />
25.6</p></td>
<td><p><a href="../Page/DDR2_SDRAM.md" title="wikilink">DDR2</a><br />
<a href="https://zh.wikipedia.org/wiki/DDR3" title="wikilink">DDR3</a><br />
<a href="https://zh.wikipedia.org/wiki/GDDR3" title="wikilink">GDDR3</a></p></td>
<td><p>128</p></td>
</tr>
<tr class="even">
<td><p>Mobility Radeon HD 4830[13]</p></td>
<td><p>2009年3月3日[14]</p></td>
<td><p>M97</p></td>
<td><p>RV740</p></td>
<td><p>40</p></td>
<td><p>PCIe x16 2.0</p></td>
<td><p>512<br />
1024</p></td>
<td><p>400/600<br />
400/600</p></td>
<td><p>800/900<br />
800/900</p></td>
<td><p>640:32:16</p></td>
<td><p>6.4/9.6<br />
6.4/9.6</p></td>
<td><p>12.8/19.2<br />
12.8/19.2</p></td>
<td><p>25.6/28.8<br />
25.6/28.8</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/GDDR3" title="wikilink">GDDR3</a><br />
<a href="https://zh.wikipedia.org/wiki/DDR3" title="wikilink">DDR3</a></p></td>
<td><p>128</p></td>
</tr>
<tr class="odd">
<td><p>Mobility Radeon HD 4850[15]</p></td>
<td><p>2009年1月9日</p></td>
<td><p>M98</p></td>
<td><p>RV770</p></td>
<td><p>55</p></td>
<td><p>PCIe x16 2.0</p></td>
<td><p>1024</p></td>
<td><p>500</p></td>
<td><p>850<br />
700</p></td>
<td><p>800:40:16</p></td>
<td><p>8</p></td>
<td><p>20</p></td>
<td><p>54.4<br />
89.6</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/GDDR3" title="wikilink">GDDR3</a><br />
<a href="../Page/GDDR5.md" title="wikilink">GDDR5</a><sup>2</sup></p></td>
<td><p>256</p></td>
</tr>
<tr class="even">
<td><p>Mobility Radeon HD 4860[16]</p></td>
<td><p>2009年3月3日[17]</p></td>
<td><p>M97</p></td>
<td><p>RV740</p></td>
<td><p>40</p></td>
<td><p>PCIe x16 2.0</p></td>
<td><p>1024</p></td>
<td><p>650</p></td>
<td><p>1000</p></td>
<td><p>640:32:16</p></td>
<td><p>10.4</p></td>
<td><p>20.8</p></td>
<td><p>64.0</p></td>
<td><p><a href="../Page/GDDR5.md" title="wikilink">GDDR5</a><sup>2</sup></p></td>
<td><p>128</p></td>
</tr>
<tr class="odd">
<td><p>Mobility Radeon HD 4870</p></td>
<td><p>2009年1月9日</p></td>
<td><p>M98-XT</p></td>
<td><p>RV770</p></td>
<td><p>55</p></td>
<td><p>PCIe x16 2.0</p></td>
<td><p>512<br />
1024</p></td>
<td><p>550</p></td>
<td><p>888<br />
700</p></td>
<td><p>800:40:16</p></td>
<td><p>8.8</p></td>
<td><p>22</p></td>
<td><p>56.832<br />
89.6</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/GDDR3" title="wikilink">GDDR3</a><br />
<a href="../Page/GDDR5.md" title="wikilink">GDDR5</a><sup>2</sup></p></td>
<td><p>256</p></td>
</tr>
<tr class="even">
<td><p>Mobility Radeon HD 4870 X2</p></td>
<td><p>2009年1月9日</p></td>
<td><p>M98-XT</p></td>
<td><p>RV770</p></td>
<td><p>55</p></td>
<td><p>PCIe x16 2.0</p></td>
<td><p>2048</p></td>
<td><p>550</p></td>
<td><p>700</p></td>
<td><p>2x [800:40:16]</p></td>
<td><p>2x 8.8</p></td>
<td><p>2x 22</p></td>
<td><p>2x 89.6</p></td>
<td><p><a href="../Page/GDDR5.md" title="wikilink">GDDR5</a><sup>2</sup></p></td>
<td><p>2x 256</p></td>
</tr>
</tbody>
</table>

<sup>1</sup> [統一渲染單元數量](https://zh.wikipedia.org/wiki/GPGPU "wikilink") : [紋理對映單元數量](https://zh.wikipedia.org/wiki/紋理對映單元 "wikilink") : [渲染輸出單元數量](https://zh.wikipedia.org/wiki/渲染輸出單元 "wikilink")
<sup>2</sup>[GDDR5](../Page/GDDR5.md "wikilink")[顯示記憶體的資料傳送速率是其時鐘頻率的](https://zh.wikipedia.org/wiki/顯示記憶體 "wikilink")4倍，而非其它DDR記憶體的兩倍

## 參考文獻

<div class="references-small">

<references>

</references>

</div>

## 参见

  - [GeForce GTX 200](https://zh.wikipedia.org/wiki/GeForce_GTX_200 "wikilink")
  - [ATI顯示核心列表](https://zh.wikipedia.org/wiki/ATI顯示核心列表 "wikilink")

## 外部連結

  - [ATI Radeon™ HD 4800 Series – Overview](https://web.archive.org/web/20080701085758/http://ati.amd.com/products/Radeonhd4800/index.html)

[Category:ATI顯示卡](https://zh.wikipedia.org/wiki/Category:ATI顯示卡 "wikilink")

1.  [AMD绝地反击：Radeon HD 4870/4850正式发布](http://news.mydrivers.com/1/109/109517_2.htm)
2.  [Radeon HD 4550/4350最终规格、价格详解](http://news.mydrivers.com/1/115/115548.htm)
3.  [A卡支持PhysX物理加速 NVIDIA鼎力协助](http://news.mydrivers.com/1/110/110603.htm)
4.  [Radeon HD 4870 X2正式发布](http://news.mydrivers.com/1/113/113695.htm)
5.  [HD4870X2全面评测](http://www.pcpop.com/doc/0/319/319704_7.shtml)
6.  [Radeon HD 4830官方游戏性能展示](http://news.mydrivers.com/1/117/117609.htm)
7.  [Radeon HD 4890准备就绪 提前一周发布](http://news.mydrivers.com/1/130/130906.htm)
8.  [RV790晶体管数比RV770多](http://www.pcpop.com/doc/0/387/387655.shtml)
9.  [AMD正式发布新一代主流显卡Radeon HD 4600](http://news.mydrivers.com/1/116/116222.htm)
10. [ATI Radeon Mobility Graphics Cards](http://products.amd.com/en-us/MobilityGPUResult.aspx)
11. [ATI Mobility Radeon HD 4600 Series Graphics – Overview](http://ati.amd.com/products/mobilityradeonhd4600/index.html)
12.
13.
14.
15. [ATI Device ID page](http://ati.amd.com/developer/vendorid.html) . Retrieved April 1, 2008.
16. [ATI Mobility Radeon HD 4800 Series](http://www.amd.com/mobility/hd4800)
17. [AMD Launches World’s First 40 nm Graphics Processors](http://www.amd.com/us/press-releases/Pages/amd_launches_worlds_first-2009mar03.aspx)