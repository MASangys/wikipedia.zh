英特爾**Larrabee**，是[英特爾公司的](../Page/英特爾.md "wikilink")[通用圖形處理器](../Page/通用圖形處理器.md "wikilink")（GPGPU）的[開發代號](../Page/開發代號.md "wikilink")/核心代號。有別於英特爾當時的[英特爾GMA系列整合式](../Page/Intel_GMA.md "wikilink")[顯示核心](../Page/顯示核心.md "wikilink")，「Larrabee」顯示核心是英特爾繼[Intel
740以後又一獨立式顯示核心](../Page/I740.md "wikilink")，研發團隊、開發概念等都與英特爾的整合式顯示核心的完全不同。原計劃最遲於2010年作為消費級圖形處理器產品推出市場，但由於多次的「[跳票](../Page/跳票.md "wikilink")」、研發進度不如預期、圖形效能不佳、功耗過高等因素，\[1\]最終英特爾於2010年5月宣布取消發布相關顯示卡的計劃，而「Larrabee」研究計劃亦無後續消息。\[2\]但是，同樣是2010年，英特爾公佈的的[Intel
MIC多處理器架構中繼承了大量由](../Page/Intel_MIC.md "wikilink")「Larrabee」研究計劃而來的設計元素，最大的區別在於前者專注於為[高效能運算而設計的多處理器協同運算](../Page/高效能運算.md "wikilink")，後者是作為[圖形處理器](../Page/圖形處理器.md "wikilink")（GPU）而生。

## 緣起

英特爾最後的獨立[顯示卡產品是](../Page/顯示卡.md "wikilink")[I740](../Page/I740.md "wikilink")。後來英特爾的平台化策略中，I740顯示核心被整合於[晶片組中的](../Page/晶片組.md "wikilink")[北橋晶片](../Page/北橋晶片.md "wikilink")，成為Intel的一系列整合式晶片組產品。2006年以後，[ATI](../Page/ATI.md "wikilink")/[AMD和](../Page/AMD.md "wikilink")[NVIDIA都推出了相關的](../Page/NVIDIA.md "wikilink")[GPGPU產品](../Page/GPGPU.md "wikilink")。英特爾為保持優勢，遂計劃重新推出獨立顯示卡產品，而核心架構與英特爾的整合式顯示核心和超微、輝達的一般顯示核心不同。

## 架構

英特爾的Larrabee圖形處理專案完全有別於現時所有圖形處理技術（包括英特爾自家的整合式顯示核心），不同於[超微以及](../Page/超微.md "wikilink")[輝達一直以來使用的僅有圖形運算指令的](../Page/輝達.md "wikilink")[流處理技術](../Page/流處理.md "wikilink")，而是基於自家的[x86架構](../Page/x86架構.md "wikilink")，指令方面除了擁有部分新的圖形處理指令以外保有大量的x86指令，使得Larrabee擁有比競爭對手更為靈活的可程式化特性以及更為強大的通用運算處理能力，算是英特爾發展多核心x86並行運算架構的一個延伸。\[3\]
[Larrabee_slide_block_diagram.svg](https://zh.wikipedia.org/wiki/File:Larrabee_slide_block_diagram.svg "fig:Larrabee_slide_block_diagram.svg")

### x86「IA」核心

與當時以及現時一般的圖形處理器不同，一般的圖形處理器是採用[流式處理器作為核心運算單元](../Page/流處理.md "wikilink")/渲染器。而Larrabee採用x86架構的，稱為「IA」的處理核心，概念上就是傳統CPU核心，這些處理單元就是傳統意義上的[著色器或核心運算單元](../Page/著色器.md "wikilink")，不過就單個運算單元而言，一個「IA」核心的資料吞吐量要比單個流式處理器/算術邏輯單元要高得多。就單個核心而言，對比當下的CPU核心，「IA」核心也只是微核心。\[4\]

[Intel_Pentium_arch.svg](https://zh.wikipedia.org/wiki/File:Intel_Pentium_arch.svg "fig:Intel_Pentium_arch.svg")
事實上，每個「IA」核心基於舊有的首代[奔騰P54C核心改造而來](../Page/Pentium.md "wikilink")，而非當時最新的[Nehalem架構處理器核心](../Page/Intel_Nehalem.md "wikilink")，英特爾認為，當年僅具有五級[流水線且僅能依序執行的奔騰P](../Page/流水线_\(计算机\).md "wikilink")54C核心，相比擁有14級管線的擁有複雜的[亂序執行結構的Nehalem](../Page/亂序執行.md "wikilink")，更有圖形化改造潛力，而且奔騰核心即使經過改造使核心規模擴增，透過晶片製程工藝的發展改進，多x86核心更易於達成。\[5\]預計將採用45奈米甚至是32或22奈米。\[6\]2008年8月，英特爾稱Larrabee晶片內的核心數量上可以隨意增加或減少，以8的倍數改變，而且效能在8至48核心數量範圍內基本上成線性關係，英特爾官方報稱浮點性能可達到TeraFLOPS級別。\[7\]所有的「IA」核心，運作頻率會是2.0GHz。Intel聲稱，這個時脈下32個「IA」核心時的顯示核心運算效能可以達到2TeraFLOPS。\[8\]處理器仍採用順序而非亂序執行架構。\[9\]整個「IA」核心內部是[多指令流多資料流](../Page/多指令流多数据流.md "wikilink")（[MIMD](../Page/MIMD.md "wikilink")）形式佈局，兩個整數[算術邏輯單元使用各自的指令發射端](../Page/算術邏輯單元.md "wikilink")，而16個ALU的浮點單元則以[單指令流多資料流](../Page/單指令流多資料流.md "wikilink")（SIMD）的形式共用一個指令發射端。\[10\]

[Larrabee_block_diagram_(Total_pic._and_CPU_core_bloack).PNG](https://zh.wikipedia.org/wiki/File:Larrabee_block_diagram_\(Total_pic._and_CPU_core_bloack\).PNG "fig:Larrabee_block_diagram_(Total_pic._and_CPU_core_bloack).PNG")
英特爾在舊有的奔騰P54C核心上，新增執行緒分派單元、二級快取、矢量運算單元及其暫存器、超執行緒等、刪減前段匯流排（FSB）改以環形匯流排節點替代。即使是既有單元，也作了大量的修改變更。因此Larrabee並非單純是奔騰P54C改進。\[11\]

#### 浮點運算

新增512[位元](../Page/位元.md "wikilink")[SIMD](../Page/SIMD.md "wikilink")[矢量單元](../Page/矢量.md "wikilink")，由16個/寬幅，32位元的矢量[ALU組成](../Page/ALU.md "wikilink")，共用一個指令發射端，相當於現在CPU核心內部的[浮點運算單元](../Page/浮點運算單元.md "wikilink")，但對比當時的[Core
2
DUO僅有的](../Page/Core_2.md "wikilink")8寬幅的32位元浮點運算單元每核心每時鐘週期僅能進行8次單精度[浮點運算](../Page/浮點運算.md "wikilink")，各「IA」核心每時鐘週期能進行16次單精度（32位元）浮點運算。若以Larrabee擁有10個核心去計算，每個周期一共可以支援160個單精度[矢量運算](../Page/矢量.md "wikilink")；Core
2
Duo雙核心處理器只可以支援16個。\[12\]所以，Larrabee的[浮点运算性能比傳統的處理器強](../Page/浮点.md "wikilink")。核心亦支援一套新的矢量指令集，用作矢量記憶體、整数和浮点計算。浮点运算方面，支援[IEEE標準的單雙精度](../Page/IEEE.md "wikilink")。\[13\]\[14\]

與NVIDIA的[GeForce
8相似](../Page/GeForce_8.md "wikilink")，每一個矢量運算單元在一個周期中，只會運算一個顏色數據，務求提升單元的使用率。不過，在數據流通方面，一切都是以代碼形式出現。而傳統的[顯示核心](../Page/顯示核心.md "wikilink")，一般都會使用專門的逻辑單元，去管理資料流通。\[15\]

#### 整數運算

但在[標量](../Page/標量.md "wikilink")/[整數數據中](../Page/整數.md "wikilink")，主流處理器始終較有優勢。Core
2
Duo是單核每周期處理四個，Larrabee只是單核兩個。二級[緩衝記憶體方面](../Page/快取.md "wikilink")，每一個核心將會擁有256KB。Larrabee並非是單純建基於舊的Pentium核心，指令解碼除了奔騰原有的指令以外，新增Larrabee專用純量指令以及新的x86指令，純量運算單元也加入對新指令的支援，在每一個純量單元中，由兩個負責純量運算的算術邏輯單元組成，組成一個主要和辅助指令執行管线，擁有各自對應的指令發射端。一個可以處理x86或新引入的Larrabee標量指令集，一個用來處理簡單的[ALU計算或者x](../Page/ALU.md "wikilink")86指令集的子集命令。\[16\]

#### 超執行緒

Larrabee還會有特殊的[超執行緒特性](../Page/超執行緒.md "wikilink")，支援單核執行四條[執行緒](../Page/執行緒.md "wikilink")。為支援單核四路超執行緒技術，矢量和標量單元各自擁有4組暫存器。\[17\]

#### 快取架構

原有的一級資料和指令快取均由8KB擴增至32KB，其位寬也擴增至512位元；二級快取容量為256KB，每核心獨占；記憶體[寻址能力亦達到](../Page/定址欄位.md "wikilink")[64位元](../Page/64位元.md "wikilink")，與現代的處理器相若。\[18\]

### 圖形引擎

英特爾曾經聘請了專注[光线跟踪的研究員](../Page/光线跟踪.md "wikilink")，預計Larrabee顯示核心可以支援相關技術。\[19\]
在[DirectX和](../Page/DirectX.md "wikilink")[OpenGL中](../Page/OpenGL.md "wikilink")，仍然會使用[栅格化渲染](../Page/栅格化.md "wikilink")，但將以軟體實現。\[20\]而且，這種以軟體方式實現的光線追踪、光柵化等作業將簡化程式碼。\[21\]

不過傳統的[紋理](../Page/紋理.md "wikilink")/[材質的採樣](../Page/材質.md "wikilink")、解壓縮、混合等作業仍由固定功能的紋理材質單元處理。但紋理/材質等快取則是以x86資料的形式暫存於IA核心內的二級快取上，須進入「IA」核心存取，因此，紋理單元亦具有虛擬位址轉換特性來存取這些資料。\[22\]\[23\]\[24\]

### 圖形程式介面

Larrabee可以同時支援[DirectX和](../Page/DirectX.md "wikilink")[OpenGL](../Page/OpenGL.md "wikilink")。由於是通用核心，亦可以支援物理加速\[25\]。圖形[API方面](../Page/API.md "wikilink")，它支援主流的
[DirectX和](../Page/DirectX.md "wikilink")[OpenGL](../Page/OpenGL.md "wikilink")，而Intel亦會推出自家的標準。目的是充分發揮多[x86核心的性能](../Page/x86.md "wikilink")。\[26\]\[27\]

[消除混疊技術方面](../Page/消除混疊.md "wikilink")，除了傳統的[MSAA等抗鋸齒技術](../Page/MSAA.md "wikilink")，還會實作利用CPU進行的[形態過濾抗鋸齒](../Page/形態過濾抗鋸齒.md "wikilink")（[MLAA](../Page/MLAA.md "wikilink")）。MLAA是一種後期[抗鋸齒技術](../Page/抗鋸齒.md "wikilink")，雖然由英特爾最先提出，但最先實作此技術的是AMD，AMD在發布[Radeon
HD 6000系列顯示核心時率先引入](../Page/AMD_Radeon_HD_6000.md "wikilink")，後來Radeon
HD 5000也予以支援。\[28\]

### 通用運算以及硬體加速

支援x86指令集、新增Larrabee指令集，使得普通的程式語言也能方便調用GPU以實現GPU加速，非常明確的[GPGPU的設計方向](../Page/GPGPU.md "wikilink")。不同於對手輝達和超微需要專門的應用程式介面，而且還需要額外的學習過程方能方便使用。\[29\]

針對[影像方面](../Page/影像.md "wikilink")，Larrabee顯示核心內有專門的影像處理單元。\[30\]

### 匯流排以及記憶體介面

Larrabee顯示核心內部使用環形[匯流排](../Page/匯流排.md "wikilink")，與[ATI的](../Page/ATI.md "wikilink")[Radeon
R600相似](../Page/Radeon_R600.md "wikilink")，但每個方向是512位元（雙向1024位元），而顯示記憶體與其控制器的連接仍採用CrossBar的形式，而Radeon
R600是顯示記憶體和其控制器之間使用單向256位元（雙向512位元）的環形匯流排。\[31\]
各「IA」核心、[顯示記憶體控制器](../Page/記憶體控制器.md "wikilink")、圖形引擎、PCI-E介面等亦使用此总线互相通讯。系統介面為[PCI-E
2.0/2.1
x16](../Page/PCI-E.md "wikilink")。記憶體將使用[GDDR5](../Page/GDDR5.md "wikilink")[顯示記憶體](../Page/顯示記憶體.md "wikilink")，但也會相容[GDDR3](../Page/GDDR3.md "wikilink")、[GDDR4](../Page/GDDR4.md "wikilink")。\[32\]\[33\]\[34\]Larrabee核心內部還會實現虛擬記憶體共享，可以使CPU存取顯示記憶體中的資料，而GPU也可存取主記憶體中的資料。\[35\]

### 電源管理

Larrabee面世時的產品並沒有配備任何節能技術，原來英特爾x86
CPU上常見的C1E/[EIST等節電技術並沒有移植到](../Page/EIST.md "wikilink")「IA」核心上。英特爾聲稱第二代的Larrabee顯示核心將會加入一些節電技術。\[36\]

## 製造和合作推廣

英特爾表示，Larrabee的晶片屆時會採用自家的32奈米或22奈米製程，儘管2009年時發布的工程樣品仍然使用45奈米製程，並且表示[顯示晶片的製造不會外包給台積電等廠商](../Page/顯示晶片.md "wikilink")，但[顯卡的製造則效仿輝達和超微的做法](../Page/顯卡.md "wikilink")，交給合作夥伴廠商來完成。\[37\]2008年時英特爾也透露已經與一些顯示卡製造商進行過洽談，\[38\]甚至有傳言指[索尼也在英特爾的積極遊說下曾經打算在研發](../Page/索尼.md "wikilink")[PS4時使用Larrabee專案](../Page/PS4.md "wikilink")，儘管索尼和英特爾並沒有直接承認此事，但PS4的確改用了x86架構處理器，放棄[POWER架構的](../Page/IBM_POWER.md "wikilink")[Cell處理器以便於一般](../Page/Cell_\(微處理器\).md "wikilink")[電腦遊戲轉為](../Page/電腦遊戲.md "wikilink")[遊戲主機](../Page/遊戲主機.md "wikilink")[電子遊戲](../Page/電子遊戲.md "wikilink")。\[39\]\[40\]\[41\]除此以外[任天堂的](../Page/任天堂.md "wikilink")[Wii
U在開發初期也有類似傳言](../Page/Wii_U.md "wikilink")，[微軟也不例外](../Page/微軟.md "wikilink")。\[42\]

## 計劃狀態

原預計「Larrabee」會在2008年第三季度推出樣本，在2009年正式發佈，但實際上2009年才有工程樣品，發布日期也推遲到2010年，但最终還是在2010年5月被突然宣布中止\[43\]\[44\]。

2009年11月4日，英特爾官方宣布首代「Larrabee」晶片不會有消費級圖形核心產品發布。\[45\]「Larrabee」最初發布時也只有一個軟體平台，在這個消息發布後不久，儘管Larrabee項目本身並未取消\[46\]，但已被轉為一個圖形處理和高效能運算的開發平台，變成純粹的研發用途\[47\]\[48\]\[49\]。英特爾對此的理由是，由於Larrabee的[硬體和](../Page/硬體.md "wikilink")[軟體開發進度都比預期有所落後](../Page/軟體.md "wikilink")，英特爾需要根據目前的狀況來作出未來的戰略調整，\[50\]英特爾亦表明在2010年「Larrabee」計劃會作進一步的更新。

但其實在2009年的[国际超级计算机大会中](../Page/国际超级计算机大会.md "wikilink")，英特爾已經隻字不提Larrabee。而英特爾曾經展示的Larrabee樣品，单精度[浮點運算性能只有](../Page/浮點運算.md "wikilink")1TFlops。與此同時相對應的是，[AMD的](../Page/AMD.md "wikilink")[Radeon
HD
5970的单精度浮点性能已經達到](../Page/ATI_Radeon_HD_5000.md "wikilink")4.64TFlops。而採用x86指令集架構作為圖形編程架構，硬體更要兼容舊有的一系列圖形標準，如[Direct3D](../Page/Direct3D.md "wikilink")、[OpenGL等](../Page/OpenGL.md "wikilink")。核心架構設計對於圖形處理而言過於複雜，相信亦是Larrabee項目改變的主因之一。在2010年9月，英特爾承認Larrabee架構「構想美好，但不現實」，它在圖形處理方面存在缺陷，所以就算有成品出現，不僅圖形效能都會不佳，連帶影響浮點運算能力，而且功耗亦會比較高。利用軟體實現一切過往硬體實作的功能，包括傳統上的[光栅化](../Page/光栅.md "wikilink")，效率將會很低。\[51\]\[52\]\[53\]

由「Larrabee」專案中直接推出圖形核心的計劃於2010年5月被中止。\[54\]2010年5月25日，英特爾通過官方[網誌宣布](../Page/網誌.md "wikilink")「Larrabee」不會作為圖形處理器發布，但會推出與高效能運算相關的產品和[輝達的](../Page/輝達.md "wikilink")[Tesla運算加速卡競爭](../Page/NVIDIA_Tesla.md "wikilink")。\[55\]

### 後續專案

其後英特爾還首度承認MIC專案其實就是Larrabee專案的後續完善版本。\[56\]

在Larrabee專案取消以前，除了Larrabee外，英特尔还有若干个其他类似的Many-Core项目，例如POD\[57\]。Intel曾經推出過「Knights
Ferry」，當時被認為屬於Larrabee的產品線。不過，它被用來面向軟體開發人員。目的是讓他們充分了解Intel的多核心架構。「Knights
Ferry」的核心頻率是1.2GHz，擁有32個x86核心。支援特別的[超執行緒技術](../Page/超執行緒.md "wikilink")，單一核心能模擬成四個核心。

Larrabee顯示卡計劃被取消後，同樣是在2010年，英特爾MIC多處理器架構（「眾核」架構）隨即發布，更將此前的「Knights
Ferry」專案也收歸其中，儘管該架構亦沿用Larrabee專案的諸多設計元素（甚至連圖形處理的電路單元也一併保留\[58\]），但不再作為圖形處理器使用，而是以實作高效能運算相關的多處理器協同運算為目的，在晶片上整合遠比現行x86處理器要多得多的x86處理器核心。該新專案的首款工程樣卡即是原有的「Knights
Ferry」，仍採用45奈米製程；而實際正式發售的產品是使用22奈米製程製造，開發代號「Knights
Corner」，擁有50個x86核心，已於2012年8月推出的[Xeon
Phi](../Page/Intel_Xeon_Phi.md "wikilink")[協處理器](../Page/協處理器.md "wikilink")（運算加速卡），面向[高效能運算市場](../Page/高效能運算.md "wikilink")，為主處理器提供運算加速。\[59\]而2014年，英特爾公佈第二代Xeon
Phi，核心代號「Knight
Landing」，採用不同於上一代的、基於Silvermont微架構的處理器單元設計，但仍然有AVX-512等上一代Xeon
Phi採用的「Knights
Corner」核心的特性，採用14奈米工藝製造，並且不再保留用於圖形運算的電路單元，\[60\]在2015年3月正式對外展示了相關硬體以及其演示。\[61\]

## 評價及影響

[輝達CEO](../Page/輝達.md "wikilink")[黃仁勳經常對Larrabee大造文章](../Page/黃仁勳.md "wikilink")，批評Larrabee的種種不合理之處，並稱英特爾在IDF上認為「Larrabee的出現會使顯示核心將在兩到三年內消失」這番消息是不切實際的「笑話」，認為Larrabee的效能在老舊的x86架構的拖累下不可能有出色表現；\[62\]\[63\]也批評英特爾沒能在可程式化和固定功能上作出合理平衡，過分強調可程式化，而圖形處理任務過程當中並非全部都可以透過可程式化來實作，即使有但效能也會非常糟糕\[64\]；還認為英特爾此舉純屬對此故弄玄虛，企圖利用幻燈片上的紙面資料忽悠圖形處理行業，即使Larrabee有產品也只是急於求成的不良品\[65\]。對這些批評，英特爾戲稱他是Larrabee的公关经理，而且不带薪酬。\[66\]\[67\]

一些媒體還對英特爾利用x86核心作GPU存疑，認為英特爾仍然沒能將圖形處理放在首位，因為對於常用的圖形程式介面諸如DirectX以及OpenGL都沒有硬體上的支援而只是軟體支援，即使是英特爾聲稱要開發自家的圖形API，其實也不過是充分利用多x86核心而已，相當於多核心優化，由此看出英特爾研發Larrabee的目的更多地是照顧通用運算而非圖形處理。\[68\]也有媒體認為，英特爾利用自己專長的x86架構來開發顯示核心純屬偷懶且急於求成之舉。\[69\]

優良的架構亦需要[驅動程式的配合](../Page/驅動程式.md "wikilink")，但過往英特爾的整合式顯示核心，由於驅動差，很多原本硬體支援的功能都不被支援，立體圖像的質素亦較差。所以，縱使英特爾希望與不同的顯示卡廠商合作推出「Larrabee」顯示卡，但都只持觀望態度。英特爾也承認，在高效能圖形驅動程式的編寫能力和經驗上不如NVIDIA和AMD。為了提高廠商和公眾的信心，英特爾特意強調Larrabee的驅動程式開發團隊是獨立於其IGP產品，而且，Larrabee的驅動程式編寫將作為一個重點來攻關。\[70\]\[71\]

「Larrabee」專案的中止使得索尼決定以AMD的中央處理器和顯示核心產品作為PS4遊戲主機的CPU和GPU。\[72\]日本媒體Impress
Watch認為英特爾的Larrabee移植至遊戲主機困難重重。\[73\]

儘管Larrabee專案後來被中止，但是對輝達以及超微研發圖形處理器的理念亦產生不少影響。NVIDIA在2010年推出的[NVIDIA
GeForce
400系列時所用的](../Page/NVIDIA_GeForce_400.md "wikilink")「Fermi」架構便參照Larrabee的一些設計概念，將GPU內部模組化，每個模組內部下轄多組流處理器（稱為「SM」單元）以及一些特殊單元，構成一個稱為「GPC」的模組，除了沒有獨立的記憶體控制器以及顯示輸出單元，每個GPC模組相當於一個小型GPU，各GPC模組的資料共用由新增的全域二級快取實作；AMD在2011年底推出的[AMD
Radeon HD
7000系列時所用的](../Page/AMD_Radeon_HD_7000.md "wikilink")「次世代圖形核心」（Graphics
Core Next）架構更是大量參照Larrabee專案的設計概念，將一些流處理器以及一些指令分派單元合作一個模組，稱為「CU」。\[74\]

## 參考

## 外部連結

  - [开源 GPU 社区](http://www.opengpu.org/)

[Category:顯示卡](https://zh.wikipedia.org/wiki/Category:顯示卡 "wikilink")
[Category:英特爾產品](https://zh.wikipedia.org/wiki/Category:英特爾產品 "wikilink")
[Category:并发计算](https://zh.wikipedia.org/wiki/Category:并发计算 "wikilink")

1.  [Intel: Initial Larrabee graphics chip canceled | Nanotech - The
    Circuits Blog - CNET
    News](http://news.cnet.com/8301-13924_3-10409715-64.html)

2.

3.

4.

5.

6.  [Larrabee 独显很可能采用 32nm
    制程工艺](http://www.hardspell.com/doc/hard/79437.htm)

7.
8.  [奔腾归来：Intel Larrabee 基于 P5
    架构](http://news.mydrivers.com/1/110/110657.htm)

9.  [Intel 制霸显卡新起点 Larrabee
    全解析](http://www.inpai.com.cn/doc/hard/85725_3.htm)

10.

11.
12.
13. [Intel 独立显卡 Larrabee
    三季度出样](http://news.mydrivers.com/1/101/101685.htm)

14.
15.

16.
17.
18.
19. [Intel 独立显卡 Larrabee
    支持光线追踪](http://news.mydrivers.com/1/100/100037.htm)

20. [Intel：光线追踪不是 Larrabee
    的重点](http://news.mydrivers.com/1/104/104606.htm)

21.

22.

23.

24.
25. [Intel：Larrabee
    浮点运算能力 2TFlops](http://news.mydrivers.com/1/110/110441.htm)

26.

27.

28. [Intel：且看CPU怎么实现MLAA抗锯齿](http://server.zdnet.com.cn/server/2011/0725/2048803.shtml)
    - zdnet.com.cn

29.
30. [Intel 透露 Larrabee 架构细节](http://news.mydrivers.com/1/113/113026.htm)

31. [Intel
    Larrabee：核心翻番、性能翻番](http://news.mydrivers.com/1/113/113034.htm)

32.
33.

34. [Intel于i7后重大举措
    Larrabee显卡雏形](http://digi.163.com/08/1126/09/4RLQ8QKM001618J1.html)
    - 163.com

35.
36.

37. [英特尔Larrabee独立显卡发展AIB/AIC](http://tech.sina.com.cn/s/s/2008-04-03/1139623330.shtml)
    - www.sina.com.cn

38. [三雄争霸！Intel和AIB厂商密谈larrabee显卡事宜](http://www.expreview.com/3734.html)
    - expreview.com

39. [E3评论：PS4上AMD捡了Intel
    Larrabee的剩饭？](http://news.mydrivers.com/1/230/230939.htm) -
    mydrivers.com

40.

41.

42.

43. [Intel kills Larrabee discrete GPU, will focus on integrated
    graphics](http://www.engadget.com/2010/05/25/intel-kills-larrabee-discrete-gpu-will-focus-on-integrated-grap/)

44. [Intel Larrabee显卡首次现场演示](http://news.mydrivers.com/1/145/145276.htm)
    - mydrivers.com

45. [Intel's Larrabee GPU put on ice, more news to come
    in 2010](http://arstechnica.com/hardware/news/2009/12/intels-larrabee-gpu-put-on-ice-more-news-to-come-in-2010.ars)

46. [英特尔:Larrabee
    独立显卡项目未取消](http://www.pcpop.com/doc/0/533/533033.shtml)

47. [Intel：Larrabee
    显卡初期只是软件开发平台](http://news.mydrivers.com/1/150/150668.htm)

48. [新闻分析：Intel Larrabee
    缘何陷入僵局](http://news.mydrivers.com/1/150/150729.htm)

49. [Intel 独立显卡基本泡汤](http://news.mydrivers.com/1/165/165347.htm)

50. [Intel Cancels Larrabee Retail Products, Larrabee Project Lives On -
    AnandTech :: Your Source for Hardware Analysis and
    News](http://www.anandtech.com/weblog/showpost.aspx?i=659)

51. [Intel：Larrabee显卡初期只是软件开发平台](http://news.mydrivers.com/1/150/150668.htm)
    - mydrivers.com

52. [Intel 彻底放弃 Larrabee
    架构独立显卡？](http://www.inpai.com.cn/doc/hard/134263.htm)

53. [Intel承认推出Larrabee独立显卡不现实](http://www.expreview.com/12098.html) -
    expreview.com

54.
55. [Technology@Intel · An Update On Our Graphics-related
    Programs](http://blogs.intel.com/technology/2010/05/an_update_on_our_graphics-rela.php)

56. [Intel未来战略解析：Larrabee显卡复活](http://news.chinabyte.com/46/12164546.shtml)
    - chinabyte.com

57. [PCINLIFE: Intel Larrabee GPU
    体系结构初览](http://www.pcinlife.com/article/graphics/2009-06-22/1245662175d828.html)


58.

59.
60.
61.

62.

63.

64.

65.

66. [Intel：黄仁勋是 Larrabee
    最佳代言人](http://www.hardspell.com/doc/hard/81130.htm)

67.

68.

69.

70. [Larrabee 驱动开发团队有别于 IGP
    团队](http://www.hardspell.com/doc/hard/81131.htm)

71.

72.
73.

74.