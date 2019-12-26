**加速處理器**（，縮寫**APU**）是[AMD一個](https://zh.wikipedia.org/wiki/AMD "wikilink")[處理器品牌](https://zh.wikipedia.org/wiki/中央處理器 "wikilink")，包括E1/E2/A4/A6/A8/A10/Athlon/Sempron/FX與Ax-PRO等多個子系列。\[1\]\[2\]\[3\]\[4\]\[5\]

**APU**以往以**Fusion**作為其專案代號。[AMD Ryzen以後](../Page/AMD_Ryzen.md "wikilink")，APU指的是整合了顯示核心的AMD處理器。

## 歷史

超微（[AMD](https://zh.wikipedia.org/wiki/AMD "wikilink")）在併購[ATI以後](https://zh.wikipedia.org/wiki/ATI "wikilink")，隨即公佈了代號為「AMD Fusion」（融聚計劃）。簡要地說，這個專案的目標是在一塊[晶片上](https://zh.wikipedia.org/wiki/晶片 "wikilink")，整合傳統中央處理器和圖形處理器，並且內建最少16通道、可與外部[PCI-E裝置連結的PCI](https://zh.wikipedia.org/wiki/PCI-E "wikilink")-E控制器，[記憶體控制器等](https://zh.wikipedia.org/wiki/記憶體 "wikilink")。而這種設計會將[北橋晶片從主機板上移除](https://zh.wikipedia.org/wiki/北桥芯片 "wikilink")，整合到中央處理器中，CPU核心還可以將原來依賴CPU核心處理的任務（如[浮點運算](https://zh.wikipedia.org/wiki/浮點運算 "wikilink")）交給為運算進行過最佳化的GPU處理（如處理浮點數運算）。AMD認為這是加速處理單元（APU）的一類，\[6\]是為AMD加速處理器（AMD Accelerated Processing Units，AMD APU）。

首款市售的AMD APU在2011年1月4日于[拉斯維加斯舉行的](https://zh.wikipedia.org/wiki/拉斯維加斯 "wikilink")[消費電子展](../Page/消費電子展.md "wikilink")（[CES](https://zh.wikipedia.org/wiki/CES "wikilink")-2011）上發佈，核心代號「Llano」。\[7\]2010年超微的財政分析日公佈了2012年第二代Fusion APU的存在，核心代號為「Trinity」，\[8\]2011年5月底超微公佈了更多關於2012年Fusion APU的產品線，\[9\]2012年5月「Trinity」正式發佈，首發的是行動型號，CPU核心基於AMD Piledriver架構，GPU核心基於Radeon HD 7000系列（實際為Radeon HD 6900系列的4-VLIW SIMD設計），採用新的Socket FM2插座和A85晶片組。\[10\]\[11\]\[12\]

除了硬體規格的提升，超微也發佈了多個[AMD Catalyst](https://zh.wikipedia.org/wiki/AMD_Catalyst "wikilink")[驅動程式更新](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")，用於提升內建的Radeon HD顯示核心的效能表現。\[13\]\[14\]\[15\]\[16\]

2013年，超微取消了基於[Bobcat 2.0架構的Fusion](../Page/AMD_Bobcat.md "wikilink") APU，\[17\]取而代之的是[Jaguar架構](../Page/AMD_Jaguar.md "wikilink")，核心代號分別爲「Kabini」和「Temash」，對應超低功耗裝置和平板裝置，晶片採用[台積電的](https://zh.wikipedia.org/wiki/台積電 "wikilink")28奈米制程製造。\[18\]\[19\]

### 商標爭議

開始「AMD Fusion」只是超微的[專案代號](https://zh.wikipedia.org/wiki/專案 "wikilink")，後來成為超微的一個[商標](https://zh.wikipedia.org/wiki/商標 "wikilink")，然而這樣卻引起爭議。歐盟商標持有者的 Boost Up國際有限公司和Arctic Switzerland AG稱它們早在2006年首先使用了「Fusion」作為它們一系列[電源供應器](../Page/電源供應器.md "wikilink")的產品商標。\[20\]為避免爭議進一步發展成商業[訴訟](../Page/訴訟.md "wikilink")，超微在2012年初期，計劃將放棄「Fusion」商標，而傾向于改用「HSA」（Heterogeneous System Architecture，異構系統架構）作為AMD加速處理器的新商標。\[21\]然而，由於AMD和Arctic公司在談判中無法就法律費用和許可費用達成妥協，最終還是失敗了。

2013年1月23日，Arctic宣佈和AMD達成最終私人協議。\[22\]為消除爭議，在2013年1月31日前，超微產品的製造商（包括搭載AMD處理器的品牌電腦和[筆電](https://zh.wikipedia.org/wiki/筆電 "wikilink")、以及[OEM製品](https://zh.wikipedia.org/wiki/OEM "wikilink")）和代理商被要求立即終止「Fusion」和「AMD Fusion」商標的使用。\[23\]

## 大略技術特性

與傳統的[x86中央處理器相比](https://zh.wikipedia.org/wiki/x86 "wikilink")，超微著重強調AMD APU的「異構系統架構」（Heterogeneous System Architecture，HSA），即單晶片上兩個不同的架構進行協同運作，然而超微認為這個體系結構仍未成熟，但是未來將會使它變得更易於編程、更易於進行效能最佳化、負載資源更易於平衡、更高的效能以及更低的能耗。\[24\]2006年10月25日，AMD完成对[ATi的收购后](https://zh.wikipedia.org/wiki/ATi "wikilink")，公司就公布了“Fusion”專案，初期預計在2009年底或2010年初发布。它亦是统一加速计算平台的一部分，配合[FireStream流处理器进行协同运算](https://zh.wikipedia.org/wiki/FireStream "wikilink")。內置[显示核心效能較一般的入門級獨立顯示核心和以往的整合顯示核心強勁](https://zh.wikipedia.org/wiki/显示核心 "wikilink")，能支援實時[光线跟踪運算](https://zh.wikipedia.org/wiki/光线跟踪 "wikilink")。

以往整合圖形核心一般是內建於主機板的北橋中。而AMD Fusion專案則是結合現時的[處理器和繪圖核心](https://zh.wikipedia.org/wiki/處理器 "wikilink")，即是將處理一般事務的CPU核心、處理3D幾何任務以及圖形核心之擴展功能的現代GPU核心、以及主機板的北橋融合到一塊晶片上。\[25\]目前的階段裏，AMD Fusion的矽晶片上有两个独立的核心，一個負責處理器，另一個負責繪圖核心，两个核心並不是融合在一起，處理器有自己獨立的緩衝記憶體，繪圖核心部分同样如此。两个核心會透過CrossBar互相連接。此外，Fusion亦會集成記憶體控制器，後期與PCI-E控制器、HT匯流排控制器整合到一起並稱為「統一北橋」（Unified Northbridge）。Fusion APU中的各个元件之间使用[HyperTransport](../Page/HyperTransport.md "wikilink")連接，使各个元件连接成一個整体。這種設計允許一些應用程式或其相關連結界面來調用圖形處理器來加速處理進程，例如OpenCL。\[26\]處理器和繪圖核心共用記憶體控制器，可以直接访问[記憶體](https://zh.wikipedia.org/wiki/記憶體 "wikilink")，但繪圖核心没有独立的顯示記憶體，需要佔用系統記憶體的部分容量來充當之。南桥暫不会集成在Fusion APU芯片中，除了低功耗的、要求高集成度的SoC製品以外。未來AMD將會在AMD APU上實現記憶體統一定址空間，使CPU和GPU進一步結合。最終的目標是要將圖形處理器和中央處理器「深度整合」/「完全融合」，可根據任務類別自動分配運算任務予不同的運算單元中。\[27\]無論是當前還是未來，如此的設計可有效降低一般PC平臺的功耗和發熱量，尤其是對功耗發熱敏感的HTPC和筆電來說更具吸引力。

[Acer.aspire-522.amd-fusion.ubuntu_1c555_7117.jpg](https://zh.wikipedia.org/wiki/File:Acer.aspire-522.amd-fusion.ubuntu_1c555_7117.jpg "fig:Acer.aspire-522.amd-fusion.ubuntu_1c555_7117.jpg") Aspire522[小筆電](https://zh.wikipedia.org/wiki/小筆電 "wikilink")\]\]

縱使處理器和繪圖核心二合為一，但AMD會繼續設計中階以上級別的独立显示核心，因為高端用户和[物理计算仍然依賴独立显示卡的強大運算性能](../Page/计算物理学.md "wikilink")。

無論是桌上型平臺還是行動平臺，部份AMD的中階和中低階的獨立顯示核心可與處理器的內建顯示核心進行「[交火](../Page/AMD_CrossFire.md "wikilink")」（）互聯，對於中高階以及高階的獨立顯示核心由於和內建顯示核心交火互聯的效能提升效果不明顯而沒有支援。此技術亦可配合增強的AMD PowerNow\!電源管理技術，使笔记本電腦更節省電量。例如一部笔记本電腦同時配置了Fusion APU處理器和AMD的独立顯示卡。當流動使用時，独立显示核心會被關閉，只使用Fusion APU處理器內的顯示核心，以節省電量。當接駁了外置式電源時，可以根據圖形處理負載，決定內建顯示核心和独立显示卡的開與關，較低的圖形資料負載時也只開啟內建顯示核心，而在較重的圖形資料處理時，獨立顯示核心開啟或兩個顯示核心協同運作，以提供更強大的显示性能。類似的設計也延伸到搭載非AMD處理器的筆電上，功效也和搭載AMD APU的一樣，在內建顯示核心和獨立顯示核心之間根據負載進行切換，但無法使用交火功能使兩個顯示核心協同運作。

### 目前AMD APU中已內建的模組單元

| [片上系統](https://zh.wikipedia.org/wiki/片上系統 "wikilink")（[SoC](https://zh.wikipedia.org/wiki/SoC "wikilink")）模組單元                                                        | 整合到效能級APU的年份 | 整合到低/超低功耗APU的年份 | 被取代的片上系統模組單元                                                                      | 備註                                                                                                                                                                                                                                                            |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------ | --------------- | --------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [AMD K10處理器核心](https://zh.wikipedia.org/wiki/AMD_K10 "wikilink")                                                                                                      | 2011年        |                 |                                                                                   |                                                                                                                                                                                                                                                               |
| [AMD Bobcat處理器核心](../Page/AMD_Bobcat.md "wikilink")                                                                                                                   |              | 2011年           |                                                                                   |                                                                                                                                                                                                                                                               |
| [AMD Radeon HD 6000顯示核心](https://zh.wikipedia.org/wiki/AMD_Radeon_HD_6000 "wikilink")                                                                                 | 2011年        | 2011年           |                                                                                   | 是為5-[VLIW](https://zh.wikipedia.org/wiki/VLIW "wikilink") [SIMD架構](https://zh.wikipedia.org/wiki/SIMD "wikilink")                                                                                                                                             |
| [北橋](https://zh.wikipedia.org/wiki/北橋 "wikilink")\[28\]\[29\]                                                                                                         | 2011年        | 2011年           |                                                                                   |                                                                                                                                                                                                                                                               |
| [PCIe控制器](https://zh.wikipedia.org/wiki/PCIe "wikilink")\[30\]\[31\]                                                                                                  | 2011年        | 2011年           |                                                                                   |                                                                                                                                                                                                                                                               |
| [DDR3記憶體控制器](https://zh.wikipedia.org/wiki/DDR3 "wikilink")\[32\]\[33\]                                                                                               | 2011年        | 2011年           |                                                                                   | 仲裁記憶體一致性和非一致性請求。\[34\] 系統主記憶體被劃分為圖形核心使用的顯示專用記憶體（最多2GB容量）和CPU核心使用主記憶體。\[35\]                                                                                                                                                                                   |
| [UVD](../Page/UVD.md "wikilink")單元\[36\]\[37\]                                                                                                                        | 2011年        | 2011年           |                                                                                   |                                                                                                                                                                                                                                                               |
| [顯示控制器](https://zh.wikipedia.org/wiki/顯示控制器 "wikilink")                                                                                                               | 2011年        | 2011年           |                                                                                   |                                                                                                                                                                                                                                                               |
| [AMD Piledriver處理器核心](../Page/AMD_Piledriver.md "wikilink")                                                                                                           | 2012年        |                 | [AMD K10處理器核心](https://zh.wikipedia.org/wiki/AMD_K10 "wikilink")                  |                                                                                                                                                                                                                                                               |
| AMD Radeon HD 6900顯示核心                                                                                                                                                | 2012年        |                 | [AMD Radeon HD 6000](https://zh.wikipedia.org/wiki/AMD_Radeon_HD_6000 "wikilink") | 4-VLIW SIMD架構而非Radeon HD 7000系列的GCN架構，但品牌命名上屬於AMD Radeon HD 7000\[38\]                                                                                                                                                                                        |
| AMD 高解析度媒體加速器（AMD HD Media Accelerator）\[39\]                                                                                                                         | 2012年        |                 | [UVD](../Page/UVD.md "wikilink")單元                                                | 相比舊有的UVD單元，新的媒體加速器包括AMD 高解析度完美畫面技術（AMD Perfect Picture HD）、AMD Quick Stream技術（類似對手英特爾的[Quick Sync Video技術](https://zh.wikipedia.org/wiki/Quick_Sync_Video "wikilink")），以及AMD Steady Video技術\[40\]                                                             |
| [HDMI](../Page/HDMI.md "wikilink"), [DisplayPort](../Page/DisplayPort.md "wikilink") 1.2, [DVI控制器](https://zh.wikipedia.org/wiki/Digital_Visual_Interface "wikilink") | 2012年        |                 |                                                                                   |                                                                                                                                                                                                                                                               |
| 統一北橋                                                                                                                                                                  | 2012年        |                 | 北橋                                                                                | 新的統一北橋與舊有的整合北橋相比，內建處理器電源管理和新的C6電源狀態，新增Turbo Core 3.0（可根據負載需要和功耗狀態動態調整CPU核心和GPU核心的電壓和時脈，允許一段時間內實際時脈和電壓高於預設值但不超過熱設計功耗）\[41\]                                                                                                                                    |
| [AMD Jaguar處理器核心](../Page/AMD_Jaguar.md "wikilink")                                                                                                                   |              | 2013年           | [AMD Bobcat處理器核心](../Page/AMD_Bobcat.md "wikilink")                               |                                                                                                                                                                                                                                                               |
| [AMD Steamroller處理器核心](../Page/AMD_Steamroller.md "wikilink")                                                                                                         | 2013年        |                 | [AMD Piledriver](../Page/AMD_Piledriver.md "wikilink")                            |                                                                                                                                                                                                                                                               |
| [AMD Radeon HD 7000顯示核心](../Page/AMD_Radeon_HD_7000.md "wikilink")                                                                                                    | 2013年        | 2013年           | AMD Radeon HD 6900系列顯示核心                                                          | 新的GCN（Graphics Core Next）顯示核心架構：[RISC](https://zh.wikipedia.org/wiki/精簡指令集 "wikilink") [SIMD取代](https://zh.wikipedia.org/wiki/SIMD "wikilink")4/5-[VLIW](https://zh.wikipedia.org/wiki/VLIW "wikilink") [SIMD](https://zh.wikipedia.org/wiki/SIMD "wikilink") |
| [南橋](https://zh.wikipedia.org/wiki/南橋 "wikilink")                                                                                                                     |              | 2013年           |                                                                                   |                                                                                                                                                                                                                                                               |
| [ARM Cortex-A5](https://zh.wikipedia.org/wiki/ARM_Cortex "wikilink") MP-Core                                                                                          |              | 2013年           |                                                                                   | 由[ARM授權AMD作為TrustZone](https://zh.wikipedia.org/wiki/ARM "wikilink") IP使用                                                                                                                                                                                     |
| [AMD Radeon HD 8000顯示核心](../Page/AMD_Radeon_HD_8000.md "wikilink")                                                                                                    |              |                 | [AMD Radeon HD 7000顯示核心](../Page/AMD_Radeon_HD_7000.md "wikilink")                |                                                                                                                                                                                                                                                               |
| [AMD Excavator處理器核心](https://zh.wikipedia.org/wiki/AMD_Excavator "wikilink")\[42\]                                                                                    |              |                 | [AMD Steamroller處理器核心](../Page/AMD_Steamroller.md "wikilink")                     |                                                                                                                                                                                                                                                               |

### AMD異構系統結構發展時程

<table>
<thead>
<tr class="header">
<th><p>類型</p></th>
<th><p>HSA特性</p></th>
<th><p>首次實作時間</p></th>
<th><p>備註</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>最佳化平台</p></td>
<td><p>圖形處理器運算支援<a href="https://zh.wikipedia.org/wiki/C++語言" title="wikilink">C++語言</a></p></td>
<td><p>2012年<br />
「Trinity」 APU</p></td>
<td><p>支援OpenCL C++指令和微軟公司即將公佈的C++ AMP語言。這樣做可以更容易為CPU和GPU進行程式編寫，使它們兩者更好地協同運作，來處理並行運算負載。</p></td>
</tr>
<tr class="even">
<td><p>HSA MMU</p></td>
<td><p>GPU可以透過HSA MMU的轉譯服務和分頁故障管理來存取主系統記憶體。</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>統一電源管理</p></td>
<td><p>GPU和CPU的供電由單一電源管理單元統一管理，可根據當前系統負載需要來決定各個單元的電源供應，以提高運算單元的復用率和能耗比。</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>架構整合</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/定址空間" title="wikilink">統一虛擬定址空間</a>[43][44]</p></td>
<td><p>2013年<br />
「Kaveri」 APU</p></td>
<td><p>GPU 能直接使用 CPU 的虛擬定址存取系統記憶體，並允許 CPU 與 GPU 之間<strong>指針為指針</strong> <em>(pointer-is-a-pointer)</em>。統一定址空間將讓異構運算程序的編程難度大大減少，並允許 CPU 與 GPU 之間更多進階的記憶體共享運用。</p></td>
</tr>
<tr class="odd">
<td><p>一致性系統記憶體</p></td>
<td><p>GPU 運算單元能直接以統一虛擬定址空間的指針，存取位於一致性區城的系統記憶體，同時亦窺探 CPU 的緩存，實現 GPU 與 CPU 的緩存一致性。</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>GPU 存取分頁式系統記憶體</p></td>
<td><p>藉由統一虛擬定址空間及 HSA MMU，GPU 亦能存取可分頁的系統記憶體統分頁記憶體（即<a href="https://zh.wikipedia.org/wiki/虛擬記憶體" title="wikilink">虛擬記憶體</a>）。目前的 GPU 要存取可分頁記憶體，必須先行複製副本，或是釘選分頁 (<em>pinning</em>)。</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>系統整合</p></td>
<td><p>GPU 運算上下文切換</p></td>
<td><p>2014年</p></td>
<td><p>進行中的 GPU 與運算任務可以進行上下文切換，因而在多任務環境下系統能更快速地處理應用程式、運算任務以及圖形處理，為使用者提供無縫的效能體驗。</p></td>
</tr>
<tr class="even">
<td><p>GPU 圖形處理<a href="https://zh.wikipedia.org/wiki/優先權" title="wikilink">優先權</a></p></td>
<td><p>在可以進行上下文切換的同時，圖形處理將會被給予更高的優先權，以使圖形處理的延時未免受多任務處理影響。長時間運行的圖形處理任務將會被中斷並暫時切換。</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/服務質量" title="wikilink">服務質量控制</a>（QoS）[45]</p></td>
<td><p>除了多任務切換以及優先權控制以外，硬體資源可以在多使用者和應用程式之間平衡分配或進行優先權排程。</p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 類似設計

超微的競爭對手[英特爾和](https://zh.wikipedia.org/wiki/英特爾 "wikilink")[輝達也有類似的設計](https://zh.wikipedia.org/wiki/輝達 "wikilink")。

  - 英特爾最早在超微宣佈「Fusion」專案不久后也宣佈其處理器未來將整合圖形核心，其首發產品是2009年底基於[Intel Westmere架構的](https://zh.wikipedia.org/wiki/Intel_Westmere "wikilink")[Core i5](https://zh.wikipedia.org/wiki/Core_i5 "wikilink")、[Core i3](https://zh.wikipedia.org/wiki/Core_i3 "wikilink")，它們是將包含圖形處理器的北橋以及CPU核心兩個獨立的晶片一同封裝在同一處理器[基板上](https://zh.wikipedia.org/wiki/印刷電路板 "wikilink")\[46\]，而後來的[Sandy Bridge以後除極致效能和部份企業級產品以外均採用類似AMD](https://zh.wikipedia.org/wiki/Sandy_Bridge "wikilink") Fusion的設計：三級快取也是CPU核心和內建GPU核心共用；顯示核心也支援OpenCL以使得可以和CPU核心進行協同運算，儘管效能上仍然受制於英特爾當前還比較孱弱的圖形核心處理能力，而且許多[異構運算的特性仍然缺乏支援](https://zh.wikipedia.org/wiki/異構運算 "wikilink")；CPU核心新增的[AVX](https://zh.wikipedia.org/wiki/AVX "wikilink")（進階矢量擴充）等新指令集也加強了其內部各單元的並行處理能力。

<!-- end list -->

  - 而NVIDIA的「[Project Denver](../Page/Project_Denver.md "wikilink")」則是在圖形核心上融合基於[ARM架構的CPU核心](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")，可供[桌上型電腦](../Page/桌上型電腦.md "wikilink")以及[資料中心](https://zh.wikipedia.org/wiki/資料中心 "wikilink")[伺服器使用](https://zh.wikipedia.org/wiki/伺服器 "wikilink")。\[47\]

然而NVIDIA[片上系統產品](https://zh.wikipedia.org/wiki/片上系統 "wikilink")「[Tegra](https://zh.wikipedia.org/wiki/NVIDIA_Tegra "wikilink")」雖然也是顯示核心和ARM CPU核心整合到一塊晶片上，但GPU並不會協助CPU核心處理運算任務，仍然只負責圖形處理，和當下其它行動裝置的系統晶片一般。而NVIDIA也表明，「Project Denver」和「Tegra」的目標本身就有很大的不同，在當下兩者之間完全無關係。丹佛計劃的目標是使圖形處理器作為和當下的中央處理器一般的通用處理器使用，以效能為主要導向；而「Tegra」面向行動裝置SoC，再者，省電是其設計主要導向之一。\[48\]

## 客制化APU

2013年5月1日，AMD公佈將會提供半客制化APU服務。\[49\] 這些APU專為各間公司的不同要求而定制，種類包括一般的消費級APU到特定用途APU。其中最廣為人知的例子就是[PS4和](https://zh.wikipedia.org/wiki/PS4 "wikilink")[Xbox One所採用的客制化APU](../Page/Xbox_One.md "wikilink")。\[50\]

## 處理器列表

下列世代分法源自AMD ComputeX 2015簡報，其他Refresh核心以時間軸排序。

第一代AMD APU於2011年6月推出，核心代號Llano，採用[Socket FM1](https://zh.wikipedia.org/wiki/Socket_FM1 "wikilink")，包括A4、A6和A8，搭配晶片組為A55/A75。

第二代AMD APU於2012年6月推出，核心代號Trinity，採用[Socket FM2](../Page/Socket_FM2.md "wikilink")，包括E1、E2、A4、A6、A8和A10，晶片組為A55/A75/A85X。

第三代AMD APU於2013年5月推出，核心代號Kabini，採用[Socket AM1以及](../Page/Socket_AM1.md "wikilink")[Socket FT3](https://zh.wikipedia.org/wiki/Socket_FT3 "wikilink")，前者包括Athlon和Sempron後者包括E1、E2、A4、A6，為Soc設計。

AMD APU於2013年6月推出第二代APU Refresh版，核心代號Richland，採用[Socket FM2](../Page/Socket_FM2.md "wikilink")，包括E1、E2、A4、A6、A8和A10以及Ax PRO系列，晶片組為A55/A75/A85X。

第四代AMD APU於2014年1月推出，核心代號Kaveri，採用[Socket FM2+](../Page/Socket_FM2+.md "wikilink")，包括A6到A10(A4為Richland refresh而來)，晶片組為A58/A78/A88X。

第五代AMD APU於2014年5月推出，核心代號Beema，採用[Socket FT3b](https://zh.wikipedia.org/wiki/Socket_FT3b "wikilink")，包括E1到A8，為Soc設計。

第六代AMD APU於2015年6月推出，核心代號Carrizo，採用[Socket FP4](https://zh.wikipedia.org/wiki/Socket_FP4 "wikilink")，包括E1到A10、FX以及Ax PRO系列。

AMD APU於2015年6月推出第四代APU Refresh版，核心代號Godavari，採用[Socket FM2+](../Page/Socket_FM2+.md "wikilink")，包括A4到A10，晶片組為A58/A78/A88X。

第七代AMD APU於2016年4月發表，核心代號Bristol Ridge，採用[Socket AM4](../Page/Socket_AM4.md "wikilink")，包括A6到A12，晶片組為B350/A320。

2017年2月22日發表代號「Summit Ridge」的第一代Ryzen系列，取代AMD FX系列

2017年10月發表代號「Raven Ridge」的Ryzen APU產品線

2018年4月發表了代號「Pinnacle Ridge」的第二代Ryzen系列，是第一代Ryzen系列的小幅改良版

於2019年消費電子展中宣布將於同年年中發表代號「Matisse」，採用7奈米製程及支援PCIe 4.0之第三代Ryzen處理器（整合Vega內顯的第三代Ryzen仍然是PCIe 3.0）。

## 媒体談論

  - [digitimes.com AMD's vision for next few years](http://www.digitimes.com/news/a20060628VL201.html) - an interview with Henri Richard
  - [AMD's "Fusion" Process to merge CPU and GPU](https://web.archive.org/web/20061127115852/http://www.tgdaily.com/2006/10/25/amd_announces_fusion_processor/)
  - [AMD's Purchase of ATI Closes, and Fusion Begins](http://techreport.com/onearticle.x/11094)

## 參考資料

## 外部連結

  - [ATI official Website](https://web.archive.org/web/20070217182216/http://ati.amd.com/)
  - [AMD official Website](http://www.amd.com)
  - [DailyTech - AMD Announces "Fusion" CPU/GPU Program](https://web.archive.org/web/20070227223226/http://www.dailytech.com/article.aspx?newsid=4696)

\[\[Category:主機板\]

[Category:AMD处理器](https://zh.wikipedia.org/wiki/Category:AMD处理器 "wikilink")

1.
2.
3.
4.
5.  [AMD Accelerated Processing Units](http://www.amd.com/us/products/technologies/apu/Pages/apu.aspx)  - amd.com
6.
7.  [AMD Fusion APU Era Begins](http://www.amd.com/us/press-releases/Pages/amd-fusion-apu-era-2011jan04.aspx)
8.  [AMD begins shipping Brazos, announces Bulldozer-based APUs](http://techreport.com/discussions.x/19948), [1](http://ir.amd.com/phoenix.zhtml?c=74093&p=irol-2010analystday) [pdf](http://ir.amd.com/External.File?item=UGFyZW50SUQ9Njk3NTF8Q2hpbGRJRD0tMXxUeXBlPTM=&t=1#page=27)
9.
10. [Building an AMD 'Trinity' desktop PC | ZDNet](http://www.zdnet.com/building-an-amd-trinity-desktop-pc-7000005227/)
11.
12.
13.
14.
15.
16.
17.
18. [AMD APU 2013路线图：全线新架构、新工艺](http://news.mydrivers.com/1/251/251768.htm) - mydrivers.com
19. [AMD低功耗APU性能曝光](http://www.ithome.com/html/digi/39634.htm)  - ithome.com
20. ["AMD targeted by Arctic over Fusion bran"](http://www.bit-tech.net/news/bits/2012/01/23/amd-arctic-fusion-brand/1), bit-tech, 23 January 2012. Retrieved 28 January 2013
21. ["AMD ditches Fusion branding"](http://www.bit-tech.net/news/hardware/2012/01/19/amd-ditches-fusion-branding/1), bit-tech, 19 January 2012. Retrieved 28 January 2013
22. ["ARCTIC and Boost Up Announce Negotiated Solution with AMD Regarding "FUSION" Trademark in European Union"](http://www.arctic.ac/en/news/fusion-announcement.htm), www.arctic.ac, 23 January 2013. Retrieved 28 January 2013
23. ["Use of the terms "AMD" and "AMD Fusion""](ftp://ftp.ts.fujitsu.com/pub/Mainboard-OEM-Sales/Services/Newsletter/Distri_Newsletter/2012/Distri_Newsletter_2012_WW51_AMD_Fusion.pdf), 18 December 2012. Retrieved 28 January 2013.
24.
25. [ATI chipsets](https://zh.wikipedia.org/wiki/Comparison_of_ATI_chipsets "wikilink") already include GPU
26. phx.corporate-ir.net/External.File?item=UGFyZW50SUQ9ODUyOTR8Q2hpbGRJRD0tMXxUeXBlPTM=\&t=1|APU101_Final_Jan 2011.pdf
27. [AnandTech - AMD Outlines HSA Roadmap: Unified Memory for CPU/GPU in 2013, HSA GPUs in 2014](http://www.anandtech.com/show/5493/amd-outlines-hsa-roadmap-unified-memory-for-cpugpu-in-2013-hsa-gpus-in-2014)
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
38. 根據AMD的說法，它們計劃每年都會發布新的AMD APU，新的A10 APU系列將面向比A8更高效能級別的電腦，新的A8 APU將面向以往A6 APU的主流市場。見：[as portrayed in this APU roadmap document](http://cdn.itproportal.com/photos/amd-roadmap-computex-2011_articleinline.jpg) 。2012年AMD發布了新一代AMD APU的旗艦型號A10-5800K，核心代號「Trinity」，CPU核心的效能比上一代AMD APU的旗艦型號A8-3870K高出20%\~30%，而GPU核心的效能則有30%\~50%的效能增長，其中GPU核心從原來基於AMD Radeon HD 5000/6000系列顯示核心的5-VLIW SIMD架構升級到效率更高和效能更強的AMD Radeon HD 6900系列（核心代號「Cayman」）顯示核心的4-VLIW SIMD架構，並且將製程從40奈米提升到32奈米，見：[this article](http://www.tomshardware.com/reviews/a10-5800k-a8-5600k-a6-5400k,3224.html).
39.
40.
41.
42.
43.
44.
45.
46. [集显U会限制超频么?酷睿i3-530超频实测](http://cpu.zol.com.cn/166/1668755_all.html) - zol.com.cn
47. [CES 2011：NVIDIA 发表桌电用 ARM CPU 计划「Project Denver」](http://cn.engadget.com/2011/01/06/nvidia-announces-project-denver-arm-cpu-for-the-desktop/) - engaget.com
48. [深度解析NVIDIA的三极化战略：Denver和Tegra没关系？](http://news.mydrivers.com/1/203/203464.htm) - mydrivers.com
49. [AMD Establishes Semi-Custom Business Unit to Create Tailored Products with Customer-Specific IP - X-bit labs](http://www.xbitlabs.com/news/other/display/20130501231534_AMD_Establishes_Semi_Custom_Business_Unit_to_Create_Tailored_Products_with_Customer_Specific_IP.html)
50. [Three for three: How AMD won the war for the heart of next-gen consoles](http://www.polygon.com/2013/6/15/4431474/amd-xbox-one-ps4-wii-u-e3-1023)