> 本文内容由[NVIDIA GeForce 700](https://zh.wikipedia.org/wiki/NVIDIA_GeForce_700)转换而来。


**NVIDIA GeForce 700 系列**是[NVIDIA公司在](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")2013年发布的第十五代[GeForce](../Page/GeForce.md "wikilink")[图形处理器](https://zh.wikipedia.org/wiki/图形处理器 "wikilink")，用於筆記型電腦和桌上型電腦。它主要是使用於GeForce 600系列Kepler架构的改進版（晶片代號以『GK』開頭），不過，和[GeForce 600系列一樣](https://zh.wikipedia.org/wiki/GeForce_600系列 "wikilink")，一些低階型號則仍使用[Fermi架構或是其製程升級版](../Page/NVIDIA_GeForce_400.md "wikilink")。2013年4月，已經有部分GeForce 700系列的行動版顯示核心悄然發布，但都是舊有顯示核心的更名版。2013年5月23日，首款基於GeForce 700系列顯示核心的[顯示卡GeForce](https://zh.wikipedia.org/wiki/顯示卡 "wikilink") GTX 780正式發布，同時也將此前劃分至GeForce 600系列的GeForce GTX TITAN重新劃分到GeForce 700系列中。\[1\]

## 概觀

NVIDIA GeForce 700系列的首款顯示核心，代號『GK110』，特別針對[通用運算的效能提升而設計](https://zh.wikipedia.org/wiki/GPGPU "wikilink")，其擁有71億顆[電晶體](https://zh.wikipedia.org/wiki/電晶體 "wikilink")，而且還會根據負載需要以及各流處理器負載情況來分派運算任務，從而加強並行多任務效能，並盡可能來最佳化[效能能耗比表現](../Page/效能功耗比.md "wikilink")。

在『GK110』上，[暫存器堆和](https://zh.wikipedia.org/wiki/暫存器 "wikilink")2級[快取](https://zh.wikipedia.org/wiki/快取 "wikilink")（L2 cache）的容量和頻寬比此前的型號都有所提升。與『Fermi』架構相比，在SMX/SM流處理器陣列的層面上，『GK110』的暫存器堆容量增至256KB，由65536個32位元的暫存器組成。『GK110』的2級快取的容量增加到1.5MB，兩倍於費米的『GF110』。2級快取和暫存器堆的頻寬與『Fermi』架構相比提升了兩倍，使得在需要為每條執行緒分配更多可用暫存器資源時導致的暫存器匱乏的情況下的效能也得到提升，而且，GK110上每條執行緒可進行定址、搬移的暫存器總數，也由每執行緒63個暫存器提升到每執行緒255個暫存器。

GK110上，NVIDIA也對GPU的紋理快取進行修改，使其不僅只用於圖形處理，還可以用於通用運算。48KB容量大小的紋理快取，在執行通用運算時作為唯讀快取，專門用於未對齊的記憶體存取操作。此外，錯誤偵測功能也被加入，使得依賴於[ECC糾錯的負載任務更穩定安全](https://zh.wikipedia.org/wiki/ECC "wikilink")。\[2\]

對比GeForce 600系列，GeForce 700系列的部分型號的[顯示記憶體由上代](https://zh.wikipedia.org/wiki/顯示記憶體 "wikilink")0.33ns顆粒改用了更低延遲的0.28ns顆粒，等效頻率由6000MHz上升到7000MHz，GPU[時脈亦有所上升](https://zh.wikipedia.org/wiki/時脈 "wikilink")。此外，GeForce 700系列的部分型號還引入了GPU Boost 2.0，令GPU可根據[負載需要自動加速到更高頻率](https://zh.wikipedia.org/wiki/負載 "wikilink")。

未來輝達還會透過驅動程式的支援，在『Kepler』顯示核心上實作DirectX 12。\[3\]

## 特性

NVIDIA GeForce 700系列包括來自『GK104』和『GK110』的特性。GeForce 700系列中基於Kepler架構的各款型號根據市場定位需要加入了以下功能特性。

來自『GK104』的特性：

  - [PCI Express 3.0界面](https://zh.wikipedia.org/wiki/PCI_Express#PCI_Express_3.0 "wikilink")
  - [DisplayPort](../Page/DisplayPort.md "wikilink") 1.2
  - [HDMI](../Page/HDMI.md "wikilink") 1.4a 4K x 2K 視訊輸出
  - [Purevideo VP5硬體視訊加速](https://zh.wikipedia.org/wiki/Purevideo "wikilink")（最高支援4K x 2K的H.264解碼）
  - 硬體H.264編碼加速模組（NVENC）
  - 支援最多4個熒幕輸出（2D），或是3熒幕3D視訊輸出（NV Surround）
  - Bindless紋理
  - GPU Boost
  - [TXAA抗鋸齒模式](https://zh.wikipedia.org/wiki/TXAA "wikilink")
  - [台積電](https://zh.wikipedia.org/wiki/台積電 "wikilink")28奈米製程

來自『GK110』的新特性：

  - GPU Boost 2.0
  - 針對通用運算而進行的SMX提升改進
  - 通用運算庫[CUDA](../Page/CUDA.md "wikilink") 3.5
  - 隨機搬移指令（Shuffle）
  - Dynamic Parallelism
  - Hyper-Q（Hyper-Q的MPI功能仅為Tesla系列保留）
  - Grid管理單元（ Management Unit）
  - NVIDIA GPUDirect（GPU Direct的RDMA功能仅為Tesla系列保留）

### 針對運算而進行的SMX提升改進

NVIDIA在設計『GK110』時，重在提升其運算性能。『GK110』與『GK104』最大的改變在於，『GK104』的SMX陣列中，每個SMX陣列擁有8個CUDA核心（流處理器）專門用於FP64（雙精度浮點數）運算操作，而『GK110』中每個SMX陣列擁有64個CUDA核心用於FP64運算操作，這使得『GK110』中每個SMX陣列的雙進度浮點數運算作業吞吐量可達8倍於一個『GK104』的SMX陣列。『GK110』的SMX陣列的全域[暫存器檔案空間也有增加](../Page/寄存器堆.md "wikilink")，達256KB。紋理[快取也有改進](https://zh.wikipedia.org/wiki/快取 "wikilink")，48KB的空間，可在通用運算中充當唯讀快取。\[4\]

### 隨機搬移指令

在低階程式語言層面上，『GK110』增加了額外的指令和操作，來求得更好的效能。新增的隨機搬移指令，允許執行緒可存取共用資料而無需到記憶體中存取，使處理進程比以往的載入/共用/存放模型來得更快。原子操作也被徹底分解，這樣做除了加速原子操作執行速度之餘，還加入一些FP64的操作使其獲得對FP64資料的處理能力，而此前僅支援FP32單精度浮點數的資料。\[5\]

### Hyper-Q

在執行通用運算時，Hyper-Q將『GK110』的硬體工作隊列從1個擴展到32個。在『Fermi』架構時代，一個工作隊列無論它是否會動用顯示核心內每個SM陣列，都會在隊列任務處理完畢前佔用這些陣列，這樣做就會有部分SM陣列處於閒置，而造成效率低下。『GK110』上，由於擁有32個工作隊列，在不同的情況下，能夠將不同的任務流輸入至原本閒置的SMX陣列中，增進單元復用率來達成運算資源利用最佳化。Hyper-Q不僅在顯示核心內負責任務隊列分派作用，還能與MPI通訊以及建立映射（在高效能運算領域裏頻繁使用的一個通訊界面），來加強Hyper-Q的在高效能運算方面的功用。此前基於MPI的解題運算步驟，多為多CPU系統而設計，利用顯示核心作運算加速的話，由於一般顯示核心僅能對圖形任務進行排程，對顯示核心內的運算單元等進行通用運算任務分配仍需要依賴CPU處理，這樣又加重了CPU的負擔，而且顯示核心也沒有被充分利用，這樣就成為效能提升的一大瓶頸，而Hyper-Q則可以解決這個瓶頸，GPU可自動根據負荷需要對SMX陣列執行通用運算任務分配。提升MPI任務數量，可在這些求解運算步驟中充分利用Hyper-Q，提升效率進而提升效能，而且，運算程序還無需做修改或只需小許修改。\[6\]

### Dynamic Parallelism

Dynamic Parallelism是使顯示核心根據需要對Grid的運算結果進行判別並在顯示核心內建立新的Kernel。『Fermi』時代，當前一個Kernel執行完畢後只有CPU可以回收判別運算結果然後才為顯示核心分配新的Kernel，這使得需要花費不少的資源來維持顯示核心與CPU之間的通訊。在核心加入判別運算結果以及分派Kernel能力，使其它的Kernel也能按照接到CPU發出的運算請求的Kernel去派遣分配，那樣顯示核心就可以節省大量與CPU通訊的資源以及時間，降低延時、提升顯示核心內部的Kernel密度、任務執行連貫度以及低負載高密集度任務中的運算單元復用率，同時也能解放CPU，使CPU能有更多時間處理其它任務。\[7\]

### Gird管理單元

Dynamic Parallelism，由Grid Management Unit（GMU，Gird管理單元）用作管理Grid以及對將要運行的Gird進行優先級排程，可以暫停新網格和隊列的分派，並且在網格準備執行時方會解除網格的暫停等待狀態，為准許像是動態並行能力等高負載的功能的運行提供更好的靈活性。在Kepler上的二級仲裁機制CUDA Work Distributor（CUDA工作分發器，CWD）持有準備可被分派多達32個活動的Grid，雙倍於『Fermi』的CWD，GMU對其收到的Grid進行執行/停止、回收、判斷、暫停等待以及重新排序等作業。『Kepler』上的CWD通過一種雙向鏈路與GMU進行通訊，以使得GMU可以暫停新Grid的分派並在需要時令Grid繼續執行。GMU也與Kepler的SMX陣列直接連接，以允許開啟額外工作的Grid通過動態並行發送新工作回GMU，令其對新工作進行優先級排程並分派。如果分派了額外工作負載的核心暫停了，GMU將使其進入不活動狀態，直到從屬的工作已經完成方會調回。\[8\]

### NVIDIA GPUDirect

NVIDIA GPUDirect™特性，允許在一台電腦上或數台伺服器中的多顆GPU連接為一個網路，而且它們之間可進行直接的資料交換而無需經過CPU或系統記憶體。GPUDirect的RDMA特性允許第三方裝置，像是固態硬碟、網路卡以及IB適配器等在多GPU網路上的同一系統中直接存取顯示記憶體，最重要的是，可以降低MPI發送到或接收自其它GPU的[顯示記憶體的資訊](https://zh.wikipedia.org/wiki/顯示記憶體 "wikilink")。它也降低了系統記憶體的頻寬需求，減低GPU的[DMA引擎的壓力並使其可用於其它CUDA任務上](https://zh.wikipedia.org/wiki/DMA "wikilink")。Kepler『GK110』也支援其它GPUDirect特性，包括點對點（[P2P](https://zh.wikipedia.org/wiki/P2P "wikilink")）以及視訊專用GPUDirect。

### Direct3D 12

在GeForce 700系列中基於『Kepler』顯示核心的顯示卡上實作DirectX 12。輝達通過在DirectX 11的GPU上，透過驅動程式，支援DirectX 12的API。未來將擴展到Fermi架構、Maxwell架構的顯示卡上\[9\]

## 產品介紹

### 桌面平台

[Gigabyte_GV-N770OC-4GD_Rev2.0.jpg](https://zh.wikipedia.org/wiki/File:Gigabyte_GV-N770OC-4GD_Rev2.0.jpg "fig:Gigabyte_GV-N770OC-4GD_Rev2.0.jpg")推出的GeForce GTX 770顯示卡\]\] [NVIDIA_GeForce_GTX_780_PCB-Front.jpg](https://zh.wikipedia.org/wiki/File:NVIDIA_GeForce_GTX_780_PCB-Front.jpg "fig:NVIDIA_GeForce_GTX_780_PCB-Front.jpg") 目前基於『Kepler』顯示核心的有6款產品推出，GeForce GTX 760、770、780、780 Ti、TITAN以及TITAN Black。GTX 760和770採用GK104核心。GTX 780採用與TITAN相同的GK110核心，僅在紋理單元數量，時脈以及驅動程式特性上有不同。780Ti以及TITAN Black搭載完整版『GK110』顯示核心，兩者的驅動程式特性也有所不同。

  - **GeForce GTX TITAN**\[10\]以及**GeForce GTX TITAN Black**\[11\]- 前者於2013年2月19日推出。\[12\]GeForce GTX TITAN採用和NVIDIA Tesla K20X相同的，核心代號為GK110的顯示核心：擁有71億個電晶體，2688個CUDA核心，48個ROP單元，224個紋理單元，384位元的記憶體位寬和6GB容量的GDDR5顯示記憶體，雙精度浮點運算速率和單精度浮點運算速率的比率維持在設計的1/3，而非GTX690/680/670等限制在1/24的比率。然而在GeForce GTX TITAN的驅動程式中，預設雙精度浮點運算速率和單精度浮點運算速率的比率仍為1/24（但可以手動在NVIDIA控制面板中開啟全速雙精度浮點運算），核心時脈和著色器時脈均為837MHz（開啟全速雙精度浮點運算後降為732MHz），等效顯示記憶體時脈為6008MHz，記憶體頻寬288.4GB/s。除此以外還支援新的電源管理GPU Boost 2.0，提供相對更自由的電壓調整和更細緻的時脈和電壓調整。外接輔助供電採用6Pin+8Pin的形式。NVIDIA的宣傳口號：『DNA Of the World's Fastest Supercomputer』。在多個效能測試中遠超GeForce GTX 680以及對手AMD的Radeon HD 7970 GHz Edition。\[13\]\[14\]\[15\]但是，NVIDIA卻嚴格限制合作廠商生產非公版的GeForce GTX Titan。\[16\]後續的升級版『GTX TITAN Black』已於2014年2月18日推出，規格更新至和Quadro K6000以及Tesla K40X一致的完整版『GK110』顯示核心，擁有2880個流處理器，240個紋理單元，預設時脈也提升到889MHz（全部核心加速時為980MHz），而其餘規格與GTX TITAN一致，其顯示卡外觀上僅散熱器金屬罩的標識相異。\[17\]\[18\]

<!-- end list -->

  - **GeForce GTX 780**\[19\]以及**GeForce GTX 780 Ti**\[20\] - 前者於2013年5月23日發布，相比GTX TITAN，流处理器数量进一步削减至2304个（1组SMX单元），纹理单元也削减至192个，但其它基本規格和GTX TITAN一致；公版顯示卡的顯示記憶體容量也削減到3GB，核心預設時脈則小幅上升至863MHz（全部核心加速時可達900MHz），也閹割了雙精度浮點數運算的效能（1/24比率），相對GTX TITAN，NVIDIA允許合作廠商推出非公版顯示卡。\[21\]在GTX TITAN發布後續升級版GTX TITAN Black前，消費級的完整版『GK110』顯示核心出現在2013年11月7日推出的GTX 780 Ti上，規格和後續的GTX TITAN Black的基本一致，但公版顯示卡的顯示記憶體容量也只有3GB，而且和GTX 780一樣閹割雙精度浮點運算效能，核心時脈上升至876MHz（加速可達928MHz），效能表現稍勝於對手AMD的[Radeon R9 290X](https://zh.wikipedia.org/wiki/Radeon_Rx_200 "wikilink")。\[22\]但是由於GTX 780 Ti的規格和GTX 780的規格相差非常小（仅供电不一致），因此有合作廠商曾將用於GTX 780的電路板用於GTX 780 Ti上，但由於供電規格的差異而導致這批使用GTX 780電路板的GTX 780 Ti會有顯卡燒毀的危險。而對於問題顯卡，廠商也願意對購買了這批顯卡的用戶免費更換新批次的顯卡。\[23\]\[24\]\[25\]

<!-- end list -->

  - **GeForce GTX TITAN Z**\[26\] - 2014年3月25日由黃仁勳於NVIDIA GTC 2014（GPU年度技術大會）上公佈，GTX TITAN Black的雙芯版本，單張電路板上搭載兩顆完整規格的『GK110』顯示核心，5760個流處理器，480紋理單元，56個ROP單元，12GB容量的GDDR5顯示記憶體，2×384位元的記憶體位寬，但具體的時脈仍沒有公佈，輝達的官方建議售價高達2999美元。\[27\]但正式贩售日期已数度延期，最終於2014年5月28日正式販售，維持和發佈時硬體規格以及價格。儘管公版顯示卡的效能上略為不及對手AMD Readeon R9 295X2公版，但最大僅375W的熱設計功耗以及發熱控制（僅使用風冷）要比對手的500W優勝，但在散熱器的噪音控制方面不及對手。\[28\]\[29\]

### 行動平台

輝達首先推出的使用於行動電腦的GeForce 710M\[30\]和GeForce GT 730M\[31\]均為上一代產品的更名版本。後續陸續發布了低端入門、中端以及高端的行動GPU，見下面的晶片規格表。

## 晶片規格

### 桌上型顯示核心

GeForce 700系列的桌上型顯示核心，首發實際上是GeForce GTX TITAN，稍後是GeForce GTX 780，規格進一步刪減、價格更低的產品都在GeForce GTX 780發布以後陸續發布並上市。和GeForce 600系列一樣，幾乎所有的『Kepler』架構的顯示核心儘管支援DirectX 11.1的應用程式界面，但硬體支援度上僅支援到Direct3D 11.1的硬體特性層面11_0，Direct3D硬體特性層面11_1並沒有完整支援，11_1相比11_0多出的4個特性在『Kepler』的硬體上沒有予以支援。\[32\]\[33\]即使後續可以支援Direct3D 12，也只能支援到Feture Level 11_0的功能級別。

  - <sup>1</sup> [統一渲染器/流處理器數量](https://zh.wikipedia.org/wiki/統一渲染架構 "wikilink") : [紋理映射單元數量](https://zh.wikipedia.org/wiki/紋理映射單元 "wikilink") : [渲染輸出單元](https://zh.wikipedia.org/wiki/渲染輸出單元 "wikilink")（ROP）數量
  - <sup>2</sup> 畫素填充率的計算：ROP的數量乘以基準核心[時脈速率](https://zh.wikipedia.org/wiki/時脈 "wikilink")（時脈單位Hz），單位畫素數每秒（P/s）。
  - <sup>3</sup> 紋理填充率的計算：TMU的數量乘以基準核心時脈速率（時脈單位Hz），單位紋理數每秒（T/s）。
  - <sup>4</sup> 單精度浮點數運算效能的計算：兩倍渲染器的數量然後乘以基準核心時脈速率（時脈單位Hz），單位[FLOPS](https://zh.wikipedia.org/wiki/FLOPS "wikilink")。
  - <sup>5</sup> 雙精度浮點數運算效能的計算：GeForce GTX TITAN的為單精度浮點數運算效能的最高的1/3或1/24，具體取決於使用者於驅動程式附帶的NVIDIA控制台上的設定（預設為1/24）\[34\]，但是其它型號的顯示核心，雙精度效能都被固定為單精度的1/24；\[35\]基於Maxwell架構的顯示核心，更被壓低至1/32。\[36\]
  - <sup>6</sup> GDDR5視訊記憶體的資料傳輸時脈速率是其運作時脈的四倍，DDR3記憶體的則為兩倍。
  - <sup>7</sup> 列表數據絕大部分來源於輝達的公版顯示卡的資料，實際數據會因不同廠商推出的非公版型號而有所出入；另外GF108、GF117以及GF119的時脈數據標示為：CUDA核心時脈/渲染器時脈
  - <sup>8</sup> GeForce GTX 750\[37\]以及GeForce GTX 750 Ti採用的是『Maxwell』架構的顯示核心\[38\]\[39\]\[40\]，詳見[NVIDIA GeForce 800系列](../Page/NVIDIA_GeForce_800.md "wikilink")
  - <sup>9</sup> GeForce GT 740只有非公版顯示卡，實際顯示核心、視訊記憶體之時脈會與NVIDIA發布的資料有所差異。\[41\]

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出年分</p></th>
<th><p>核心代號</p></th>
<th><p>製程<br />
(<a href="https://zh.wikipedia.org/wiki/奈米" title="wikilink">奈米</a>)</p></th>
<th><p>電晶體數<br />
(百萬個)</p></th>
<th><p>晶粒面積<br />
(平方毫米)</p></th>
<th><p>匯流排介面</p></th>
<th><p>核心配置<br />
<sup>SPs:TMUs:ROPs<sub>1</sub></sup></p></th>
<th><p>時脈配置</p></th>
<th><p>填充率</p></th>
<th><p>顯示記憶體配置</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></th>
<th><p>運算效能<br />
（GFLOPS）</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><br />
(W)</p></th>
<th><p>發售價格<br />
(<a href="../Page/美元.md" title="wikilink">美元</a>)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>預設<br />
(<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>加速<br />
(<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體<br />
(<a href="https://zh.wikipedia.org/wiki/Transfer_(computing)" title="wikilink">MT/s</a>)</p></td>
<td><p>像素<br />
(<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)<sup>2</sup></p></td>
<td><p>材質<br />
(<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)<sup>3</sup></p></td>
<td><p>容量<br />
(<a href="https://zh.wikipedia.org/wiki/MiB" title="wikilink">MiB</a>)<sup>7</sup></p></td>
<td><p>匯流排類型</p></td>
<td><p>匯流排寬度<br />
(<a href="../Page/位元.md" title="wikilink">位元</a>)<sup>7</sup></p></td>
<td><p>頻寬<br />
(<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)<sup>7</sup></p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td><p><a href="../Page/Vulkan_(API).md" title="wikilink">Vulkan</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/單精度浮點數" title="wikilink">單精度浮點數</a></p></td>
<td><p><a href="../Page/雙精度浮點數.md" title="wikilink">雙精度浮點數</a></p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 705 (OEM)[42][43]</p></td>
<td><p>2014年3月27日</p></td>
<td><p>GF119-300-A1</p></td>
<td><p>40</p></td>
<td><p>292</p></td>
<td><p>79</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>48:8:4<br />
(1 SM)</p></td>
<td><p>874/1748</p></td>
<td></td>
<td><p>1650</p></td>
<td><p>1.748</p></td>
<td><p>6.99</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 710 (GF119)[44][45]</p></td>
<td><p>2014年8月22日</p></td>
<td><p>GF119-300-A1</p></td>
<td><p>40</p></td>
<td><p>292</p></td>
<td><p>79</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>48:8:4<br />
(1 SM)</p></td>
<td><p>810/1620</p></td>
<td></td>
<td><p>1800</p></td>
<td><p>1.62</p></td>
<td><p>6.48</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 710 (GK208，OEM)[46][47]</p></td>
<td><p>2014年3月27日</p></td>
<td><p>GK208-301-A1</p></td>
<td><p>28</p></td>
<td><p>1,020</p></td>
<td><p>87</p></td>
<td><p>PCIe 2.0 x8</p></td>
<td><p>192:16:8<br />
(1 SMX)</p></td>
<td><p>823</p></td>
<td></td>
<td><p>1800</p></td>
<td><p>3.29</p></td>
<td><p>13.17</p></td>
<td><p>512</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 710 (GK208)[48][49]</p></td>
<td><p>2014年3月27日</p></td>
<td><p>GK208-301-A1</p></td>
<td><p>28</p></td>
<td><p>1,020</p></td>
<td><p>87</p></td>
<td><p>PCIe 2.0 x8</p></td>
<td><p>192:16:8<br />
(1 SMX)</p></td>
<td><p>954</p></td>
<td></td>
<td><p>1800</p></td>
<td><p>3.82</p></td>
<td><p>15.26</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 720 (GK208B)[50][51]</p></td>
<td><p>2014年6月18日</p></td>
<td><p>GK208-201-B1</p></td>
<td><p>28</p></td>
<td><p>1,020</p></td>
<td><p>87</p></td>
<td><p>PCIe 2.0 x8</p></td>
<td><p>192:16:8<br />
(1 SMX)</p></td>
<td><p>797</p></td>
<td></td>
<td><p>1600</p></td>
<td><p>3.2</p></td>
<td><p>12.8</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 720 (GK208)[52][53]</p></td>
<td><p>2014年3月27日</p></td>
<td><p>GK208-301-A1</p></td>
<td><p>28</p></td>
<td><p>1,020</p></td>
<td><p>87</p></td>
<td><p>PCIe 2.0 x8</p></td>
<td><p>384:16:8<br />
(2 SMX)</p></td>
<td><p>967</p></td>
<td></td>
<td><p>1800</p></td>
<td><p>7.74</p></td>
<td><p>15.47</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 730 (GF108)[54][55]</p></td>
<td><p>2014年6月18日</p></td>
<td><p>GF108-400-A1</p></td>
<td><p>40</p></td>
<td><p>585</p></td>
<td><p>116</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>96:16:4<br />
(2 SM)</p></td>
<td><p>700/1400</p></td>
<td></td>
<td><p>1800</p></td>
<td><p>2.8</p></td>
<td><p>11.2</p></td>
<td><p>1024</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 730 (GK208，DDR3)[56]</p></td>
<td><p>2014年1月18日</p></td>
<td><p>GK208-301-A1</p></td>
<td><p>28</p></td>
<td><p>1,020</p></td>
<td><p>87</p></td>
<td><p>PCIe 2.0 x8</p></td>
<td><p>384:16:8<br />
(2 SMX)</p></td>
<td><p>902</p></td>
<td></td>
<td><p>1800</p></td>
<td><p>7.22</p></td>
<td><p>14.43</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 730 (GK208，GDDR5)[57][58]</p></td>
<td><p>2014年1月18日</p></td>
<td><p>GK208-400-A1</p></td>
<td><p>28</p></td>
<td><p>1,020</p></td>
<td><p>87</p></td>
<td><p>PCIe 2.0 x8</p></td>
<td><p>384:16:8<br />
(2 SMX)</p></td>
<td><p>902</p></td>
<td></td>
<td><p>5000</p></td>
<td><p>7.22</p></td>
<td><p>14.43</p></td>
<td><p>1024<br />
2048[59]</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 730 (GK107，OEM)[60]</p></td>
<td><p>2014年5月29日</p></td>
<td><p>GK107-301-A2</p></td>
<td><p>28</p></td>
<td><p>1,270</p></td>
<td><p>118</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>384:32:16<br />
(2 SMX)</p></td>
<td><p>993</p></td>
<td></td>
<td><p>5000<br />
1800</p></td>
<td><p>7.84</p></td>
<td><p>31.36</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 740 (GK106，OEM)[61][62][63]</p></td>
<td><p>2015年4月14日</p></td>
<td><p>GK106-400-A1</p></td>
<td><p>28</p></td>
<td><p>2,540</p></td>
<td><p>221</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>384:32:16<br />
(2 SMX)</p></td>
<td><p>980</p></td>
<td><p>1006</p></td>
<td><p>5000<br />
1800</p></td>
<td><p>8.05</p></td>
<td><p>32.2</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>GDDR5<br />
DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 740 (GK107)[64][65]</p></td>
<td><p>2014年5月29日</p></td>
<td><p>GK107-425-A2</p></td>
<td><p>28</p></td>
<td><p>1,270</p></td>
<td><p>118</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>384:32:16<br />
(2 SMX)</p></td>
<td><p>993</p></td>
<td></td>
<td><p>5000<br />
1800</p></td>
<td><p>15.9</p></td>
<td><p>31.8</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>GDDR5<br />
DDR3</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 745 (OEM)[66][67]</p></td>
<td><p>2014年2月18日</p></td>
<td><p>GM107-300-A2</p></td>
<td><p>28</p></td>
<td><p>1,870</p></td>
<td><p>148</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>384:24:16<br />
(3 SMM)</p></td>
<td><p>1033</p></td>
<td></td>
<td><p>1800</p></td>
<td><p>16.5</p></td>
<td><p>24.8</p></td>
<td><p>最大4,096</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 750 [68][69]</p></td>
<td><p>2014年2月18日</p></td>
<td><p>GM107-300-A2</p></td>
<td><p>28</p></td>
<td><p>1,870</p></td>
<td><p>148</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>512:32:16<br />
(4 SMM)</p></td>
<td><p>1020</p></td>
<td><p>1085</p></td>
<td><p>5000</p></td>
<td><p>16.3</p></td>
<td><p>32.6</p></td>
<td><p>1024</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 750v2 [70][71]</p></td>
<td><p>2015年11月17日</p></td>
<td><p>GM206-150-A1</p></td>
<td><p>28</p></td>
<td><p>2,940</p></td>
<td><p>228</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>512:32:32<br />
(4 SMM)</p></td>
<td><p>1038</p></td>
<td><p>1188</p></td>
<td><p>5000</p></td>
<td><p>33.2</p></td>
<td><p>32.6</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 750 Ti [72][73]</p></td>
<td><p>2014年2月18日</p></td>
<td><p>GM107-400-A2</p></td>
<td><p>28</p></td>
<td><p>1,870</p></td>
<td><p>148</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>640:40:16<br />
(5 SMM)</p></td>
<td><p>1020</p></td>
<td><p>1085</p></td>
<td><p>5400</p></td>
<td><p>16.3</p></td>
<td><p>40.8</p></td>
<td><p>1024<br />
2048</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 760 192-bit (OEM)[74][75]</p></td>
<td><p>2013年6月27日<br />
2013年8月25日</p></td>
<td><p>GK104-355-A2<br />
GK104-200-KD-A2</p></td>
<td><p>28</p></td>
<td><p>1,870</p></td>
<td><p>148</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1152:96:24<br />
(6 SMX)</p></td>
<td><p>823</p></td>
<td><p>888</p></td>
<td><p>5808</p></td>
<td><p>19.8</p></td>
<td><p>79</p></td>
<td><p>1536<br />
3072</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 760 [76][77]</p></td>
<td><p>2013年6月25日</p></td>
<td><p>GK104-225-A2</p></td>
<td><p>28</p></td>
<td><p>3,540</p></td>
<td><p>294</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1152:96:32<br />
(6 SMX)</p></td>
<td><p>980</p></td>
<td><p>1033</p></td>
<td><p>6008</p></td>
<td><p>31.4</p></td>
<td><p>94.1</p></td>
<td><p>2048<br />
4096</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 760 Ti (OEM)[78][79][80]</p></td>
<td><p>2013年6月27日<br />
2013年8月25日</p></td>
<td><p>GK104-355-A2<br />
GK104-325-A2</p></td>
<td><p>28</p></td>
<td><p>3,540</p></td>
<td><p>294</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1344:112:32<br />
(7 SMX)</p></td>
<td><p>915</p></td>
<td><p>980</p></td>
<td><p>6008</p></td>
<td><p>29.3</p></td>
<td><p>103</p></td>
<td><p>2048</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 770 [81][82]</p></td>
<td><p>2013年5月30日</p></td>
<td><p>GK104-425-A2</p></td>
<td><p>28</p></td>
<td><p>3,540</p></td>
<td><p>294</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>1536:128:32<br />
(8 SMX)</p></td>
<td><p>1046</p></td>
<td><p>1085</p></td>
<td><p>7008</p></td>
<td><p>33.5</p></td>
<td><p>134</p></td>
<td><p>2048<br />
4096</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 780 (GK110)[83]</p></td>
<td><p>2013年5月23日</p></td>
<td><p>GK110-300-A1</p></td>
<td><p>28</p></td>
<td><p>7,080</p></td>
<td><p>561</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2304:192:48<br />
(12 SMX)</p></td>
<td><p>863</p></td>
<td><p>900</p></td>
<td><p>6008</p></td>
<td><p>41.4</p></td>
<td><p>166</p></td>
<td><p>3072</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 780 (GK110B)[84][85]</p></td>
<td><p>2013年9月10日</p></td>
<td><p>GK110-301-B1</p></td>
<td><p>28</p></td>
<td><p>7,080</p></td>
<td><p>561</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2304:192:48<br />
(12 SMX)</p></td>
<td><p>863</p></td>
<td><p>900</p></td>
<td><p>6008</p></td>
<td><p>41.4</p></td>
<td><p>166</p></td>
<td><p>6144</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 780v2[86][87]</p></td>
<td><p>2013年9月10日</p></td>
<td><p>GK110-300-B1</p></td>
<td><p>28</p></td>
<td><p>7,080</p></td>
<td><p>561</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2304:192:48<br />
(12 SMX)</p></td>
<td><p>863</p></td>
<td><p>900</p></td>
<td><p>6008</p></td>
<td><p>41.4</p></td>
<td><p>166</p></td>
<td><p>3072</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 780 Ti[88][89]</p></td>
<td><p>2013年11月7日</p></td>
<td><p>GK110-425-B1</p></td>
<td><p>28</p></td>
<td><p>7,080</p></td>
<td><p>561</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2880:240:48<br />
(15 SMX)</p></td>
<td><p>876</p></td>
<td><p>928</p></td>
<td><p>7000</p></td>
<td><p>42.0</p></td>
<td><p>210</p></td>
<td><p>3072</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX Titan [90][91]</p></td>
<td><p>2013年2月19日</p></td>
<td><p>GK110-400-A1</p></td>
<td><p>28</p></td>
<td><p>7,080</p></td>
<td><p>561</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2688:224:48<br />
(15 SMX)</p></td>
<td><p>837</p></td>
<td><p>876</p></td>
<td><p>6008</p></td>
<td><p>40.2</p></td>
<td><p>188</p></td>
<td><p>6144</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX Titan Black [92][93]</p></td>
<td><p>2014年2月18日</p></td>
<td><p>GK110-430-B1</p></td>
<td><p>28</p></td>
<td><p>7,080</p></td>
<td><p>561</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2880:240:48<br />
(15 SMX)</p></td>
<td><p>889</p></td>
<td><p>980</p></td>
<td><p>7000</p></td>
<td><p>42.7</p></td>
<td><p>213</p></td>
<td><p>6144</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX Titan Z[94][95]</p></td>
<td><p>2014年3月25日</p></td>
<td><p>2× GK110-430-B1[96]</p></td>
<td><p>28</p></td>
<td><p>2× 7,080</p></td>
<td><p>2× 561</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2× 2880:240:48<br />
(2× 15 SMX)</p></td>
<td><p>705</p></td>
<td><p>876</p></td>
<td><p>7000</p></td>
<td><p>2× 33.8</p></td>
<td><p>2× 169</p></td>
<td><p>2× 6144</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>型號</p></td>
<td><p>推出年分</p></td>
<td><p>核心代號</p></td>
<td><p>製程<br />
(<a href="https://zh.wikipedia.org/wiki/奈米" title="wikilink">奈米</a>)</p></td>
<td><p>電晶體數<br />
(百萬個)</p></td>
<td><p>晶粒面積<br />
(平方毫米)</p></td>
<td><p>匯流排介面</p></td>
<td><p>核心配置<br />
<sup>SPs:TMUs:ROPs<sub>1</sub></sup></p></td>
<td><p>時脈配置</p></td>
<td><p>填充率</p></td>
<td><p>顯示記憶體配置</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></td>
<td><p>運算效能<br />
（GFLOPS）</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a><br />
(W)</p></td>
<td><p>發售價格<br />
(<a href="../Page/美元.md" title="wikilink">美元</a>)</p></td>
</tr>
<tr class="even">
<td><p>預設<br />
(<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)<sup>7</sup></p></td>
<td><p>加速<br />
(<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體<br />
(<a href="https://zh.wikipedia.org/wiki/Transfer_(computing)" title="wikilink">MT/s</a>)</p></td>
<td><p>像素<br />
(<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)<sup>2</sup></p></td>
<td><p>材質<br />
(<a href="https://zh.wikipedia.org/wiki/Texel_(graphics)" title="wikilink">GT</a>/s)<sup>3</sup></p></td>
<td><p>容量<br />
(<a href="https://zh.wikipedia.org/wiki/MiB" title="wikilink">MiB</a>)</p></td>
<td><p>匯流排類型</p></td>
<td><p>匯流排寬度<br />
(<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p>頻寬<br />
(<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td><p><a href="../Page/Vulkan_(API).md" title="wikilink">Vulkan</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/單精度浮點數" title="wikilink">單精度浮點數</a></p></td>
<td><p><a href="../Page/雙精度浮點數.md" title="wikilink">雙精度浮點數</a></p></td>
</tr>
</tbody>
</table>

### 行動平台顯示核心

某些筆記型電腦或低功耗裝置製造商會使用特定規格，特別是低端入門型號的顯示核心。因此該列表中低端型號的顯示核心的數據僅供參考，實際數據取決於裝置製造商。

  - <sup>1</sup> [統一渲染器/流處理器數量](https://zh.wikipedia.org/wiki/統一渲染架構 "wikilink") : [紋理映射單元數量](https://zh.wikipedia.org/wiki/紋理映射單元 "wikilink") : [渲染輸出單元數量](https://zh.wikipedia.org/wiki/渲染輸出單元 "wikilink")

<table>
<thead>
<tr class="header">
<th><p>型號</p></th>
<th><p>推出年分</p></th>
<th><p>開發代號</p></th>
<th><p>製造工藝(<a href="https://zh.wikipedia.org/wiki/nm" title="wikilink">nm</a>)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/匯流排" title="wikilink">匯流排介面</a></p></th>
<th><p>記億體 (<a href="https://zh.wikipedia.org/wiki/MB" title="wikilink">MB</a>)</p></th>
<th><p>核心配置<br />
<sup>SPs:TMUs:ROPs<sub>1</sub></sup></p></th>
<th><p>核心頻率</p></th>
<th><p>填充率</p></th>
<th><p>顯示記憶體</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/應用程式介面" title="wikilink">API支援</a>（版本）</p></th>
<th><p>處理效能<sup>2</sup><br />
(GFLOPS)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/熱設計功耗" title="wikilink">熱設計功耗</a> (瓦特)</p></th>
<th><p>備註</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>核心 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>流處理器 (<a href="https://zh.wikipedia.org/wiki/Hertz" title="wikilink">MHz</a>)</p></td>
<td><p>記憶體 (MT/s)</p></td>
<td><p>像素 (<a href="https://zh.wikipedia.org/wiki/Pixel" title="wikilink">GP</a>/s)</p></td>
<td><p>材質 (GT/s)</p></td>
<td><p>頻寬 (<a href="https://zh.wikipedia.org/wiki/Gigabyte" title="wikilink">GB</a>/s)</p></td>
<td><p>匯流排類型</p></td>
<td><p>匯流排寬度(<a href="../Page/位元.md" title="wikilink">位元</a>)</p></td>
<td><p><a href="../Page/DirectX.md" title="wikilink">DirectX</a></p></td>
<td><p><a href="../Page/OpenGL.md" title="wikilink">OpenGL</a></p></td>
<td><p><a href="../Page/OpenCL.md" title="wikilink">OpenCL</a></p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>GeForce 705M [97]</p></td>
<td><p>2013年6月1日</p></td>
<td><p>GF119</p></td>
<td><p>40</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>最多2048</p></td>
<td><p>48:8:4</p></td>
<td><p>775</p></td>
<td><p>1550</p></td>
<td><p>1800</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce 710M [98]</p></td>
<td><p>2013年4月1日</p></td>
<td><p>GF117</p></td>
<td><p>28</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>最多2048</p></td>
<td><p>96:16:4</p></td>
<td><p>775</p></td>
<td><p>1550</p></td>
<td><p>1800</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>14.4</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 720M [99]</p></td>
<td><p>2013年4月1日</p></td>
<td><p>GF117<br />
GK208</p></td>
<td><p>28</p></td>
<td><p>PCIe 2.0 x16</p></td>
<td><p>最多2048</p></td>
<td><p>96:16:4<br />
192:16:8</p></td>
<td><p>800</p></td>
<td><p>1600</p></td>
<td><p>2000</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>16.0</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 730M [100]</p></td>
<td><p>2013年4月1日</p></td>
<td><p>GK107<br />
GK208</p></td>
<td><p>28</p></td>
<td><p>PCIe 2.0 x8<br />
PCIe 3.0 x16</p></td>
<td><p>最多4096</p></td>
<td><p>384:32:8<br />
384:32:16</p></td>
<td><p>725</p></td>
<td><p>725</p></td>
<td><p>1800 - 4000</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>14.4 - 64.0</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 735M [101]</p></td>
<td><p>2013年4月1日</p></td>
<td><p>GK208</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>最多2048</p></td>
<td><p>384:32:8</p></td>
<td><p>889</p></td>
<td><p>889</p></td>
<td><p>2000</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>16.0</p></td>
<td><p>DDR3</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 740M [102]</p></td>
<td><p>2013年4月1日</p></td>
<td><p>GK107<br />
GK208</p></td>
<td><p>28</p></td>
<td><p>PCIe 2.0 x8<br />
PCIe 3.0 x16</p></td>
<td><p>最多2048</p></td>
<td><p>384:32:8<br />
384:32:16</p></td>
<td><p>810/1033</p></td>
<td><p>810/1033</p></td>
<td><p>1800<br />
3600</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>14.4 - 57.6</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 745M [103]</p></td>
<td><p>2013年4月1日</p></td>
<td><p>GK107</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>最多2048</p></td>
<td><p>384:32:16</p></td>
<td><p>837</p></td>
<td><p>837</p></td>
<td><p>2000 - 5000</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>32.0 - 80.0</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GT 750M [104]</p></td>
<td><p>2013年4月1日</p></td>
<td><p>GK107</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>最多4096</p></td>
<td><p>384:32:16</p></td>
<td><p>967</p></td>
<td><p>967</p></td>
<td><p>2000 - 5000</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>32 - 80</p></td>
<td><p>DDR3<br />
GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GT 755M [105]</p></td>
<td></td>
<td><p>GK107</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>最多2048</p></td>
<td><p>384:32:16</p></td>
<td><p>980?</p></td>
<td><p>980?</p></td>
<td><p>5400</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>86.4</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 760M [106]</p></td>
<td><p>2013年5月30日</p></td>
<td><p>GK106</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048</p></td>
<td><p>768:64:16</p></td>
<td><p>657</p></td>
<td><p>657</p></td>
<td><p>4008</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>64.1</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 765M [107]</p></td>
<td><p>2013年5月30日</p></td>
<td><p>GK106</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>2048</p></td>
<td><p>768:64:16</p></td>
<td><p>850</p></td>
<td><p>850</p></td>
<td><p>4008</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>64.1</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="odd">
<td><p>GeForce GTX 770M [108]</p></td>
<td><p>2013年5月30日</p></td>
<td><p>GK106</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>3072</p></td>
<td><p>960:80:24</p></td>
<td><p>811</p></td>
<td><p>811</p></td>
<td><p>4008</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>96.2</p></td>
<td><p>GDDR5</p></td>
</tr>
<tr class="even">
<td><p>GeForce GTX 780M [109]</p></td>
<td><p>2013年5月30日</p></td>
<td><p>GK104</p></td>
<td><p>28</p></td>
<td><p>PCIe 3.0 x16</p></td>
<td><p>4096</p></td>
<td><p>1536:128:32</p></td>
<td><p>823</p></td>
<td><p>823</p></td>
<td><p>5000</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>160.0</p></td>
<td><p>GDDR5</p></td>
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
</tr>
</tbody>
</table>

## 參見

  - [NVIDIA顯示核心列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表 "wikilink")
  - [NVIDIA GeForce 600](../Page/NVIDIA_GeForce_600.md "wikilink")
  - [AMD Radeon HD 8000](../Page/AMD_Radeon_HD_8000.md "wikilink")
  - [NVIDIA Tesla](../Page/NVIDIA_Tesla.md "wikilink")

## 腳註

### 註解

### 資料來源

## 外部連結

  - [NVIDIA主頁](http://www.nvidia.com/)
  - [NVIDIA Kepler Compute Architecture](http://www.nvidia.com/object/nvidia-kepler.html)
  - [Nvidia Nsight](http://developer.nvidia.com/nvidia-nsight-visual-studio-edition)

[Category:GeForce系列](https://zh.wikipedia.org/wiki/Category:GeForce系列 "wikilink") [Category:2013年面世的產品](https://zh.wikipedia.org/wiki/Category:2013年面世的產品 "wikilink")

1.  [驅動程式](http://www.geforce.com.tw/drivers)，在GeForce GTX 780發布前，在驅動程式手動搜尋中，GeForce GTX TITAN歸為NVIDIA GeForce 600圖形處理器系列當中，而非NVIDIA GeForce 700系列。而GeForce GTX 780發布後，GeForce GTX TITAN被歸到GeForce 700系列當中。後來發表的GTX TITAN Black Edition以及GTX TITAN Z也被劃分至GeForce 700系列中。
2.
3.
4.
5.
6.
7.
8.
9.
10. geforce.com.tw: [GeForce GTX TITAN](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-titan)
11. [GeForce GTX TITAN Black](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-titan-black)
12. [万众期待 GeForce GTX TITAN正式发布](http://vga.zol.com.cn/354/3547032.html) - zol.com.cn
13. [性能超GTX680四成？ Titan性能震撼首测](http://vga.zol.com.cn/354/3540093_all.html) - zol.com.cn
14. [NVIDIA巅峰之作 GTX Titan显卡首发评测](http://vga.it168.com/a2013/0221/1455/000001455145_all.shtml) - it168.com
15. [新一代单芯显卡之王，GeForce GTX TITAN评测汇总](http://www.expreview.com/23913.html)
16. [EVGA也只能妥协? 超频版GTX Titan展出](http://vga.zol.com.cn/359/3592074.html) - zol.com.cn
17. [宇宙最强单芯卡皇：GTX Titan Black正式发布](http://news.mydrivers.com/1/293/293264.htm) - mydrivers.com
18. [NVIDIA Titan Black cards bring much improved specs, even crazier prices](http://www.engadget.com/2014/02/19/nvidia-titan-black-graphics-card/)
19. [GeForce GTX 780](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-780)
20. [GeForce GTX 780 Ti](http://www.geforce.com.tw/hardware/desktop-gpus/geforce-gtx-780-ti)
21. [“亲民版”泰坦，GeForce GTX 780同步评测](http://www.expreview.com/tag/gtx780.html) - expreview.com
22. [GK110火力全开 新卡皇GTX 780Ti评测](http://www.inpai.com.cn/doc/hard/201187_-3.htm)  - INPAI.COM
23. [新卡皇命运多舛，部分GTX 780 Ti显卡出现烧PCB问题](http://www.expreview.com/29377.html) - expreview.com
24. [GTX780Ti"烧PCB"元凶现身 果然贴纸惹祸?](http://www.inpai.com.cn/doc/hard/201431.htm)  - inpai.com
25. [直接换 部分GTX780Ti显卡有烧PCB问题](http://vga.it168.com/a2013/1112/1558/000001558676.shtml) - it168.com
26.
27. [英伟达核弹：5760颗Kelper核心+12GB显存](http://www.ithome.com/html/digi/78135.htm?f=mofang) - ithome.com
28.
29.
30. geforce.com.tw: [GeForce 710M](http://www.geforce.com.tw/hardware/notebook-gpus/geforce-710m)
31. geforce.com.tw: [GeForce GT730M](http://www.geforce.com.tw/hardware/notebook-gpus/geforce-gt-730m)
32. [NVIDIA Kepler not fully compliant with DirectX 11.1](http://www.guru3d.com/news_story/nvidia_kepler_not_fully_compliant_with_directx_11_1.html)
33. [Nvidia Doesn't Fully Support DirectX 11.1 with Kepler GPUs, But… - Bright Side Of News](http://www.brightsideofnews.com/news/2012/11/21/nvidia-doesnt-fully-support-directx-111-with-kepler-gpus2c-bute280a6.aspx)
34. [GK110 The True Tank - Nvidia GeForce GTX Titan 6 GB GK110 On A Gaming Card](http://www.tomshardware.com/reviews/geforce-gtx-titan-gk110-review,3438-2.html)
35. [Nvidia GeForce GTX 780 Ti Review GK110, Fully Unlocked - GK110, Unleashed The Wonders Of Tight Binning](http://www.tomshardware.com/reviews/geforce-gtx-780-ti-review-benchmarks,3663.html)
36.
37. [麦克斯韦第二炮：GeForce GTX 750](http://news.mydrivers.com/1/291/291247.htm) - mydrivers.com
38. [Details on Nvidia's GeForce GTX 750 Ti, GTX 750 cards leak](http://www.techspot.com/news/55592-details-on-nvidias-geforce-gtx-750-ti-gtx-750-cards-leak.html) - techspot.com
39. [GTX750Ti、GTX750长这样：规格也定了](http://news.mydrivers.com/1/291/291821.htm) - mydrivers.com
40. [新Maxwell显卡GTX750 Ti居然开放预定](http://www.inpai.com.cn/doc/hard/203981.htm)  - inpai.com
41.
42. [GeForce GT 705(OEM) | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gt-705-oem/specifications)
43. [GeForce GT 705 OEM | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2578/geforce-gt-705-oem)
44. [GeForce GT 710 | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gt-710/specifications)
45. [GeForce GT 710 | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2614/geforce-gt-710)
46.
47. [GeForce GT 710 OEM | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2711/geforce-gt-710-oem)
48.
49. [GeForce GT 710 | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/1990/geforce-gt-710)
50. [GeForce GT 720 | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gt-720/specifications)
51. [GeForce GT 720 | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2702/geforce-gt-720)
52.
53. [GeForce GT 720 | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/1989/geforce-gt-720)
54.
55. [GeForce GT 730 | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2590/geforce-gt-730)
56.
57. [GeForce GT 730 | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gt-730/specifications)
58. [GeForce GT 730 | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/1988/geforce-gt-730)
59.
60. [GeForce GT 730 OEM | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2710/geforce-gt-730-oem)
61. [GeForce GT 740 | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gt-740/specifications)
62. [GeForce GT 740 | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2844/geforce-gt-740)
63. [GeForce GT 740 | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2699/geforce-gt-740-oem)
64.
65. [GeForce GT 740 | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/1987/geforce-gt-740)
66. [GeForce GTX 745 (OEM) | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-745-oem/specifications)
67. [NVIDIA GeForce GTX 745 OEM| Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2561/geforce-gtx-745-oem)
68. [GeForce GTX 750 | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-750/specifications)
69. [NVIDIA GeForce GTX 750| Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/1986/geforce-gtx-750)
70. [NVIDIA GeForce GTX 750 v2| Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2778/geforce-gtx-750-v2)
71.
72. [GeForce GTX 750 Ti | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-750-ti/specifications)
73. [NVIDIA GeForce GTX 750 Ti| Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2548/geforce-gtx-750-ti)
74. [GeForce GTX 760 192-bit (OEM) | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-760-oem/specifications)
75. [NVIDIA GeForce GTX 760 OEM Rebrand| Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2454/geforce-gtx-760-oem-rebrand)
76. [GeForce GTX 760 | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-760/specifications)
77. [NVIDIA GeForce GTX 760| Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/1857/geforce-gtx-760)
78. [GeForce GTX 760 Ti (OEM)| Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-760ti-oem/specifications)
79. [GeForce GTX 760 Ti (OEM)| Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2491/geforce-gtx-760-ti-oem)
80. [NVIDIA GeForce GTX 760 Ti OEM Rebrand| Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2453/geforce-gtx-760-ti-oem-rebrand)
81. [GeForce GTX 770 | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-770/specifications)
82. [GeForce GTX 770 | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/1856/geforce-gtx-770)
83. [GeForce GTX 780 | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-780/specifications)
84.
85. [GeForce GTX 780 6GB | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2707/geforce-gtx-780-6-gb)
86.
87. [GeForce GTX 780v2 | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2513/geforce-gtx-780-rev-2)
88. [GeForce GTX 780 Ti | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-780-ti)
89. [GeForce GTX 780 Ti | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2512/geforce-gtx-780-ti)
90. [GeForce GTX TITAN | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-titan/specifications)
91. [GeForce GTX TITAN | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/1996/geforce-gtx-titan)
92. [GeForce GTX Titan Black | Specifications | GeForce](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-titan-black/specifications)
93. [GeForce GTX TITAN BLACK | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2549/geforce-gtx-titan-black)
94.
95. [Ultimate Power. The new GeForce GTX TITAN Z](http://www.geforce.com/whats-new/articles/announcing-the-geforce-gtx-titan-z)
96. [GeForce GTX TITAN Z | Specifications | techpowerup.com](http://www.techpowerup.com/gpudb/2575/geforce-gtx-titan-z)
97. [GeForce 705M | Specifications | GeForce](http://www.notebookcheck.net/NVIDIA-GeForce-705M.92914.0.html)
98. [GeForce 710M | Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-710m/specifications)
99. [GeForce GT 720M | Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gt-720m/specifications)
100. [GeForce GT 730M | Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gt-730m/specifications)
101. [GeForce GT 735M | Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gt-735m/specifications)
102. [GeForce GT 740M | Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gt-740m/specifications)
103. [GeForce GT 745M | Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gt-745m/specifications)
104. [GeForce GT 750M | Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gt-750m/specifications)
105. [GeForce GT 755M | Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gt-755m/specifications)
106. [GeForce GTX 760M | Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gtx-760m/specifications)
107. [GeForce GTX 765M | Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gtx-765m/specifications)
108. [GeForce GTX 770M | Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gtx-770m/specifications)
109. [GeForce GTX 780M | Specifications | GeForce](http://www.geforce.com/hardware/notebook-gpus/geforce-gtx-780m/specifications)