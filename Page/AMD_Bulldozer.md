**AMD
Bulldozer微架構**\[1\]（）是美商[超微繼](https://zh.wikipedia.org/wiki/超微 "wikilink")[K10微架構之後](https://zh.wikipedia.org/wiki/K10 "wikilink")，所推出的[中央處理器](https://zh.wikipedia.org/wiki/中央處理器 "wikilink")[微架構](../Page/微架構.md "wikilink")\[2\]。該微架構主要應用於[桌上型平台](https://zh.wikipedia.org/wiki/台式机 "wikilink")、[伺服器平台乃至](https://zh.wikipedia.org/wiki/伺服器 "wikilink")[超級計算機的微處理器核心上](https://zh.wikipedia.org/wiki/超級計算機 "wikilink")。Bulldozer在歷經數次[跳票後於](https://zh.wikipedia.org/wiki/跳票 "wikilink")2011年9月19日發布，其首發產品是核心代號為“Zambezi”的[AMD
FX](../Page/AMD_FX.md "wikilink")。

Bulldozer微架構從一個早期已擱置的微架構設計發展而來\[3\]，主攻[熱設計功耗為](https://zh.wikipedia.org/wiki/熱設計功耗 "wikilink")10瓦至125瓦的處理器平台。AMD預期認為，基於Bulldozer架構的處理器在實際應用中每個「推土機」（Bulldozer）核心每瓦效能可達到[高效能計算](../Page/超级计算机.md "wikilink")（High-performance
computing，HPC）的水準。屆時每個“推土機”核心會支援[Intel絕大部分的指令集](https://zh.wikipedia.org/wiki/Intel "wikilink")（包括[SSE](../Page/SSE.md "wikilink")4.1、SSE4.2、[AES](../Page/AES指令集.md "wikilink")、[CLMUL以及](https://zh.wikipedia.org/wiki/CLMUL指令集 "wikilink")[AVX](https://zh.wikipedia.org/wiki/AVX指令集 "wikilink")），以及AMD自有的指令集（包括由SSE5拆分而來的[XOP](https://zh.wikipedia.org/wiki/XOP指令集 "wikilink")、[FMA4](https://zh.wikipedia.org/wiki/FMA "wikilink")、[CVT16](https://zh.wikipedia.org/wiki/CVT16指令集 "wikilink")）\[4\]\[5\]。

## 基本介紹

2011年，AMD處理器開始導入32[奈米製程](https://zh.wikipedia.org/wiki/奈米 "wikilink")，推出[APU](https://zh.wikipedia.org/wiki/APU "wikilink")（加速處理單元）新形態處理器，應用在[桌上型電腦](../Page/桌上型電腦.md "wikilink")與[筆記型電腦](../Page/筆記型電腦.md "wikilink")。超微的處理器架構有兩大關鍵的調整方向，依用途區分成兩種系列，其研發技術代號分別為Bulldozer與[Bobcat](../Page/AMD_Bobcat.md "wikilink")。Bulldozer架構針對主流[伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")、桌上型電腦、筆電的應用，提供高存取效能與高負載[多執行緒的架構](https://zh.wikipedia.org/wiki/多執行緒 "wikilink")，並選擇以APU組態的高延展性來連結[圖形處理器](../Page/圖形處理器.md "wikilink")；Bobcat主攻低耗電的超輕薄電腦應用。\[6\]

Bulldozer架構的處理器均使用[格羅方德的](https://zh.wikipedia.org/wiki/GlobalFoundries "wikilink")32納米HKMG
SOI製程，重新使用類似[DEC的多任務計算的設計](https://zh.wikipedia.org/wiki/DEC "wikilink")。根據AMD的發布說明，“平衡專用和共用的處理器運算資源，來提供一個易於成倍提升計算效能的，高度緊湊的單晶片多核心的設計”。\[7\]換句話說，透過精簡處理器核心一些「冗餘」部分，輔以[多核心](https://zh.wikipedia.org/wiki/多核心 "wikilink")/[多線程的設計](https://zh.wikipedia.org/wiki/多線程 "wikilink")，超微希望籍此以更少的能耗，來充分發揮這些核心的特性和效能來提升整塊微處理器乃至整個平台的效能。AMD研究員Tim
Fischer表示，Bulldozer採用全新的控制結構和運算單元，其性能體現於[整數運算](https://zh.wikipedia.org/wiki/整數 "wikilink")、[浮点运算](https://zh.wikipedia.org/wiki/浮点數 "wikilink")、L1[快取](https://zh.wikipedia.org/wiki/快取 "wikilink")、電源管理，和時脈產生器等……均是開發重點，主要意義在於降低功耗並提升單位功耗的效能。\[8\]

Bulldozer微架構的設計早在2003年已出現，由於AMD忙於[K8微架構處理器的研發和推出而擱置](https://zh.wikipedia.org/wiki/K8 "wikilink")，後來Bulldozer架構在該微架構的基礎上重新設計。可合併為1個256位的2個128位並且可進行[融合乘法運算的浮點運算單元](https://zh.wikipedia.org/wiki/FMA "wikilink")，這個主要特性在2003年的設計中已出現；一個Bulldozer核心單元中，除了前述的浮點運算單元外，還擁有兩個整數排程運算單元，每個整數排程運算單元各自擁有4條管線（另外的讀取、解碼這兩級管線為兩個整數運算單元所共用）；L1快取為每整數排程運算單元獨占，但L2快取則為兩個整數排程運算單元所共用。AMD稱這樣的一個單元為一個“模組”，一個16線程的Bulldozer處理器中包含8個這樣的模組，但一個模組並不會被辨認為一個物理核心，而是根據一個模組中的2個整數排程運算單元的數量辨認為兩個邏輯核心（即[作業系統會將](https://zh.wikipedia.org/wiki/作業系統 "wikilink")1個模組辨認為兩個邏輯核心/線程）。\[9\]一個“模組”包含2個邏輯核心，和[Intel的](https://zh.wikipedia.org/wiki/Intel "wikilink")[超線程技術中](https://zh.wikipedia.org/wiki/超線程 "wikilink")1個物理核心被辨認為2個[邏輯核心的做法似乎有類似之處](https://zh.wikipedia.org/wiki/邏輯 "wikilink")，但事實上，兩者大相徑庭：AMD
Bulldozer的“模組”為每條線程提供了各自的整數運算排程單元和一級[指令快取](https://zh.wikipedia.org/wiki/指令 "wikilink")，而英特爾的超線程則是兩條線程共用核心內所有可用的運算資源。\[10\]

基於Bulldozer微架構，32納米[SOI](../Page/SOI.md "wikilink")
[HKMG製程的處理器產品於](https://zh.wikipedia.org/wiki/HKMG "wikilink")2011年9月率先於桌上型平台上發布，是為核心代號“Zambezi”（[Socket
AM3+](../Page/Socket_AM3+.md "wikilink")，4至8線程）之[AMD
FX系列](../Page/AMD_FX.md "wikilink")；緊接著的是10月12日發布伺服器平台，核心代號“Interlagos”（[Socket
G34](../Page/Socket_G34.md "wikilink")，16線程）、“Valencia”（[Socket
C32](../Page/Socket_C32.md "wikilink")，4至8線程）之[AMD
Opteron系列](../Page/AMD_Opteron處理器列表.md "wikilink")\[11\]\[12\]重新啟用了AMD少有的“FX”[品牌](../Page/品牌.md "wikilink")。首發的桌面級產品FX-8150，將有四個Bulldozer模組；伺服器級微處理器，代號Interlagos，是由兩個包含4個Bulldozer模組的[MCM](../Page/多晶片模組.md "wikilink")、共八個Bulldozer模組所構成。\[13\]

## 微架構特性

### Bulldozer核心/模組

[AMD_Bulldozer_block_diagram_(CPU_core_block).png](https://zh.wikipedia.org/wiki/File:AMD_Bulldozer_block_diagram_\(CPU_core_block\).png "fig:AMD_Bulldozer_block_diagram_(CPU_core_block).png")
[AMD_Bulldozer_block_diagram_(8_core_CPU).PNG](https://zh.wikipedia.org/wiki/File:AMD_Bulldozer_block_diagram_\(8_core_CPU\).PNG "fig:AMD_Bulldozer_block_diagram_(8_core_CPU).PNG")
[Hwloc.png](https://zh.wikipedia.org/wiki/File:Hwloc.png "fig:Hwloc.png")

  - [AMD認為並對外聲明這種](https://zh.wikipedia.org/wiki/AMD "wikilink")[模組化的設計是](https://zh.wikipedia.org/wiki/模組 "wikilink")“基於[集群的多線程](https://zh.wikipedia.org/wiki/集群 "wikilink")”或“兩個整數排程運算單元的集群”。這種基於集群的多線程技術一般稱為“**[集群多線程](https://zh.wikipedia.org/wiki/集群多線程 "wikilink")**”（[CMT](https://zh.wikipedia.org/wiki/CMT "wikilink")，Clustered
    Multithreading），而AMD則定義：基於這種設計的處理單元為一個“模組”（Module）。從[硬體的複雜性和功能性的角度出發](https://zh.wikipedia.org/wiki/硬體 "wikilink")，Bulldozer模組（集群多線程）介於兩個獨立的處理器核心和超線程之間。兩個獨立的處理器核心的設計中，每個核心擁有獨立的處理單元、快取等運算資源，一般稱這種多線程設計為**[晶片級多核心](https://zh.wikipedia.org/wiki/晶片級多處理 "wikilink")**（[CMP](https://zh.wikipedia.org/wiki/CMP "wikilink")，Chip
    Multi-Processor）；而[超線程則是兩條](https://zh.wikipedia.org/wiki/超線程 "wikilink")[線程運作於一個運算排程資源足夠多](https://zh.wikipedia.org/wiki/線程 "wikilink")、[管線足夠長](../Page/指令管線化.md "wikilink")（但不可太長）的處理器核心上，兩條線程的運算資源是共用的，包括處理單元、快取，一般稱這種多線程設計為**[同步多線程](https://zh.wikipedia.org/wiki/同步多線程 "wikilink")**（[SMT](https://zh.wikipedia.org/wiki/SMT "wikilink")，Simultaneous
    Multithreading）；而集群多線程中一般幾條線程或多或少共用fetch、寄存器甚至是浮點運算單元等運算資源，但主要執行單元——整數排程運算單元都是獨占的\[14\]。這種集群式多線程微架構的設計，綜合了晶片級多核心和同步多線程的特點，最早的實例是[DEC在](https://zh.wikipedia.org/wiki/DEC "wikilink")1996年研發後來推出市場的[精簡指令集體系的微處理器](https://zh.wikipedia.org/wiki/精簡指令集 "wikilink")[Alpha
    21264](../Page/DEC_Alpha.md "wikilink")，後來的[昇陽電腦公司和](https://zh.wikipedia.org/wiki/昇陽電腦公司 "wikilink")[甲骨文公司](../Page/甲骨文公司.md "wikilink")开发的[UltraSPARC
    T1](../Page/UltraSPARC_T1.md "wikilink")（核心代號「Niagara」）、[UltraSPARC
    T2](../Page/UltraSPARC_T2.md "wikilink")（核心代號「Niagara
    2」）微處理器也是採用類似的設計（UltraSPARC
    T2還同時使用了同步多線程技術\[15\]）。\[16\]\[17\]
      - 超微採用集群多線程設計的Bulldozer模組中，包含兩個[x86整數運算排程單元並被辨認為兩個邏輯核心](https://zh.wikipedia.org/wiki/x86 "wikilink")，每個整數運算排程單元各自佔有16KB一級指令快取；一個可拆分為兩個128[位元](../Page/位元.md "wikilink")的256位元[浮點運算單元](https://zh.wikipedia.org/wiki/浮點運算單元 "wikilink")，fetch、解碼器、二級[快取](https://zh.wikipedia.org/wiki/快取 "wikilink")、[I/O總線等為兩條線程所共用](https://zh.wikipedia.org/wiki/I/O總線 "wikilink")，即一個模組所有。
  - 每模組都擁有獨立的硬體資源：\[18\]\[19\]\[20\]
      - 2MB的L2快取（模組內兩個整數運算排程單元共用）；
      - 模組內兩個整數運算排程單元共用2路32KB一級指令快取，每整數運算排程單元獨占1路16KB一級指令快取和全數4路64[KB一級資料快取](https://zh.wikipedia.org/wiki/KB "wikilink")，包含快取[分支預測](https://zh.wikipedia.org/wiki/分支預測 "wikilink")；\[21\]\[22\]\[23\]
      - 兩個獨立的整數運算排程單元/整數核心，
          - 每個整數運算排程單元擁有兩個[算術邏輯單元](https://zh.wikipedia.org/wiki/算術邏輯單元 "wikilink")（[ALU](https://zh.wikipedia.org/wiki/ALU "wikilink")，Arithmetic
            logic
            unit）和[位址產生單元](https://zh.wikipedia.org/wiki/位址產生單元 "wikilink")（[AGU](https://zh.wikipedia.org/wiki/AGU "wikilink")，Address
            generation
            unit），由此一個整數排程運算單元在一個[時鐘週期內可完成](https://zh.wikipedia.org/wiki/時鐘週期 "wikilink")4次運算操作和[記憶體存取作業](https://zh.wikipedia.org/wiki/記憶體 "wikilink")，即一個模組可達成8指令發射/處理作業；
          - 對一些偏重多線程的[應用程式](https://zh.wikipedia.org/wiki/應用程式 "wikilink")，兩個整數排程運算單元和更多的執行管線可提供更多的硬體資源予兩條並行的線程上，以提升這些應用程式的效能表現；
          - 兩個整數運算排程單元的Bulldozer模組比僅有1個整數運算排程單元的僅多出12%的[電晶體數量以及](https://zh.wikipedia.org/wiki/電晶體 "wikilink")5%的[晶片面積增量](https://zh.wikipedia.org/wiki/晶片 "wikilink")\[24\]''；
      - 一組兩個對稱的128位元FMAC（融合乘法加法）浮點運算單元，在接收到有256位浮點運算作業的[指令](https://zh.wikipedia.org/wiki/指令 "wikilink")（如[AVX](https://zh.wikipedia.org/wiki/AVX "wikilink")）或並行的（[x87](https://zh.wikipedia.org/wiki/x87 "wikilink")/[MMX](../Page/MMX.md "wikilink")/[SSE](../Page/SSE.md "wikilink")等）128位元浮點運算作業後可以合併為1個256位元的浮點運算單元，這種設計可以更好地[相容一些不支援並行對稱浮點運算的應用程式](https://zh.wikipedia.org/wiki/相容性 "wikilink")；
      - 共同的Fetch／解碼管線;
  - 所有模組共用三級快取和增強的雙通道[DDR3-SDRAM記憶體控制器](../Page/DDR3_SDRAM.md "wikilink")；
  - 一個模組共計2.13[億](../Page/億.md "wikilink")個電晶體，佔用30.9[平方毫米的晶片](https://zh.wikipedia.org/wiki/平方毫米 "wikilink")[面積](https://zh.wikipedia.org/wiki/面積 "wikilink")，這個數據包含了2[MB的二級快取](https://zh.wikipedia.org/wiki/MB "wikilink")，四個模組共計約12億電晶體；\[25\]
  - 按照超微的說法，基於AMD
    Bulldozer微架構的[處理器上](https://zh.wikipedia.org/wiki/處理器 "wikilink")，一個雙線程的的處理器上有一個Bulldozer模組（2個整數排程運算單元），一個4線程的處理器有兩個模組（4個整數排程運算單元），一個8線程的處理器上有4個Bulldozer模組（8個整數排程運算單元），如此類推。

### 指令集

  - 支援[Intel的](https://zh.wikipedia.org/wiki/Intel "wikilink")[AVX指令集](https://zh.wikipedia.org/wiki/AVX指令集 "wikilink")（Advanced
    Vector
    Extensions，進階矢量擴展），使處理器支援256位元的浮點運算作業。除此之外還支援Intel授權的[SSE](../Page/SSE.md "wikilink")4.1、SSE4.2、[AES](https://zh.wikipedia.org/wiki/高級加密標準 "wikilink")、[CLMUL](https://zh.wikipedia.org/wiki/CLMUL "wikilink")、Multiply-Add/Accumulat等\[26\]，以及AMD自有的XOP、FMA4、CVT16、SSE4a等，其中[XOP](https://zh.wikipedia.org/wiki/XOP指令集 "wikilink")、[FMA4](https://zh.wikipedia.org/wiki/FMA "wikilink")、[CVT16是AMD原先的](https://zh.wikipedia.org/wiki/CVT16指令集 "wikilink")[SSE](../Page/SSE.md "wikilink")5拆分而來（原本Bulldozer將會實現[SSE](../Page/SSE.md "wikilink")5指令集，但是由於[Intel選擇不支援](https://zh.wikipedia.org/wiki/Intel "wikilink")[SSE5而另立自己的](https://zh.wikipedia.org/wiki/SSE5 "wikilink")[AVX指令集](https://zh.wikipedia.org/wiki/AVX "wikilink")，AMD最終決定將SSE5分拆）\[27\]，儘管這三者為並行對稱的128位元算指令，但可以相容於AVX的[編碼方案](https://zh.wikipedia.org/wiki/編碼 "wikilink")。\[28\]\[29\]\[30\]\[31\]

### 製程/製作工藝、時鐘頻率、熱設計功耗

[Bulldozer_640.jpg](https://zh.wikipedia.org/wiki/File:Bulldozer_640.jpg "fig:Bulldozer_640.jpg")

  - 11層[金屬](https://zh.wikipedia.org/wiki/金屬 "wikilink")、32納米[SOI](../Page/SOI.md "wikilink")輔以[格羅方德首代HKMG製程](https://zh.wikipedia.org/wiki/GlobalFoundries "wikilink")；
  - [Turbo Core
    2.0](https://zh.wikipedia.org/wiki/Turbo_Core "wikilink")，和上代Turbo
    Core一樣可以根據處理器的[負載狀態調整各處理器核心的](https://zh.wikipedia.org/wiki/負載 "wikilink")[時鐘頻率](https://zh.wikipedia.org/wiki/時鐘頻率 "wikilink")。在處理器核心閒置時可以降低其時鐘頻率乃至關閉核心；處理器核心滿載時可以提升其時鐘頻率，處理器半數核心處於滿負荷時可以有1[GHz的提升幅度](https://zh.wikipedia.org/wiki/GHz "wikilink")，全部核心滿載時也有500[MHz的提升幅度](https://zh.wikipedia.org/wiki/MHz "wikilink")，但是時鐘頻率的提升會保持在處理器的[TDP限制](https://zh.wikipedia.org/wiki/TDP "wikilink")（俗稱「熱牆」或「工作溫度牆」）之下。與上一代Turbo
    Core相比，Turbo Core 2.0可以使處理器核心關閉，而且可以調整各個核心的時鐘頻率，而首代Turbo
    Core則只能一次過調整半數核心的時鐘頻率而不能調整單個核心的，核心閒置也不能被完全關閉。\[32\]
  - 處理器核心[電壓](../Page/電壓.md "wikilink")在0.775[V至](../Page/伏特.md "wikilink")1.425V，伺服器平台的預設時鐘頻率最低1.6GHz，最高3.4GHz；桌上型平台預設時鐘頻率最低2.8GHz，最高達4.2GHz；\[33\]
  - [熱設計功耗最低](https://zh.wikipedia.org/wiki/熱設計功耗 "wikilink")25[瓦](../Page/瓦特.md "wikilink")，最高140瓦。

### 快取、記憶體

  - 單晶片最高8MB的路快取容量，4模組8核心共用；伺服器版本最高端型號的AMD Opteron
    6200系列4模組8核心以上的則為16MB（兩個[多晶片模組](../Page/多晶片模組.md "wikilink")）。單晶片的8MBL3快取被劃分為4個容量相同的2MB的部分，可以和[北橋](https://zh.wikipedia.org/wiki/北橋 "wikilink")（記憶體控制器）一併運作於2.2GHz的時鐘頻率上，於1.1125V的操作電壓；\[34\]
  - 原生支援DDR3-1866記憶體；\[35\]
  - 桌上型平台的處理器，內建[雙通道DDR](https://zh.wikipedia.org/wiki/雙通道 "wikilink")3記憶體控制器，支援PC3-14900（DDR3-1866）、PC3-16000（DDR3-2000）、PC3-17000（DDR3-2133）以及更高規格的記憶體；伺服器/工作站平台的處理器，則內建[四通道DDR](https://zh.wikipedia.org/wiki/四通道 "wikilink")3記憶體控制器，可支援PC3-1280（DDR3-1600）[暫存型記憶體](https://zh.wikipedia.org/wiki/寄存式內存 "wikilink")（ECC記憶體，僅核心代號“Valencia”、“Interlagos”支援）。\[36\]
  - AMD稱每通道支援兩條[DIMM](../Page/DIMM.md "wikilink")
    DDR3-1600（亦即每通道的兩條DIMM記憶體插槽可插滿DDR3-1600的記憶體），但單個通道兩條DIMM插上DDR3-1866記憶體時會降低記憶體時脈至1600MHz。

### 輸出輸入總線、配套[晶片組](https://zh.wikipedia.org/wiki/晶片組 "wikilink")、處理器插座

[AMD_Bulldozer_chipset.PNG](https://zh.wikipedia.org/wiki/File:AMD_Bulldozer_chipset.PNG "fig:AMD_Bulldozer_chipset.PNG")

  - [HyperTransport](../Page/HyperTransport.md "wikilink")總線升級為3.1版本，預設運作時鐘頻率3.20GHz，傳送速率6.4GT/s，[頻寬](https://zh.wikipedia.org/wiki/頻寬 "wikilink")25.6GB/s，單向位寬16位元。新版本的HyperTransport，在上一代[K10.5微架構](https://zh.wikipedia.org/wiki/AMD_K10 "wikilink")，HY-D1步進的“Magny-Cours”核心（socket
    G34平台，新步進版本於2010年3月推出）和“Lisbon”核心（socket C32平台，新步進於2010年6月推出）AMD
    Opteron處理器上業已使用。
  - AMD官方接受媒体采访时确认：“现有的G34、C32服务器平台会支持基于推土机的新款服务器产品（核心代號為“Interlagos”/“Valencia”）。至于桌面上，为了充分发挥推土机架构的能力，会引入增强的AM3+接口，支持推土机并向下兼容现有[AM3接口处理器](https://zh.wikipedia.org/wiki/AM3 "wikilink")。”\[37\]\[38\]
      - 桌面版處理器使用的插座為[Socket
        AM3+](../Page/Socket_AM3+.md "wikilink")（也稱AM3r2）配套晶片組為[900系列晶片組](https://zh.wikipedia.org/wiki/AMD_900芯片组系列 "wikilink")\[39\]\[40\]此代晶片組除了支援AMD自家的[CrossFireX多卡互聯技術以外](https://zh.wikipedia.org/wiki/AMD_CrossFireX "wikilink")，還會支援[NVIDIA
        SLI多卡互聯技術](../Page/NVIDIA_SLI.md "wikilink")。\[41\]
          - 處理器上共942個針腳，插座上也有942個腳位，但和同樣也是942個腳位的Socket AM3插座不同的是Socket
            AM3+僅支援DDR3-SDRAM記憶體、HT總線版本不同以及供電穩定性更強；
          - 可向下相容於800系列晶片組、使用[Socket
            AM3插座](../Page/Socket_AM3.md "wikilink")（包括一些已使用Socket
            AM3+的）的[主機板](https://zh.wikipedia.org/wiki/主機板 "wikilink")，但需要主機板廠商提供BIOS/[EFI](https://zh.wikipedia.org/wiki/EFI "wikilink")[韌體](../Page/韌體.md "wikilink")更新\[42\]\[43\]，因為AMD官方沒有提供正式的技術支援，也沒有說明Socket
            AM3+接口的處理器可使用於Socket AM3插座的主機板，然而AMD卻說明了Socket
            AM3接口的處理器可以使用於Socket
            AM3+插座的主機板上。\[44\]\[45\]
      - 伺服器/工作站平台則繼續沿用[既有的伺服器晶片組和既有的](https://zh.wikipedia.org/wiki/AMD_800芯片组系列 "wikilink")[socket
        G34](https://zh.wikipedia.org/wiki/socket_G34 "wikilink")（LGA1974）和[socket
        C32](https://zh.wikipedia.org/wiki/socket_C32 "wikilink")（LGA1207）。\[46\]\[47\]

## 處理器

### 桌上型處理器

基於Bulldozer微架構的桌上型平台處理器為**AMD
FX**，於2011年9月19日正式上市\[48\]。使用[GlobalFoundries](https://zh.wikipedia.org/wiki/GlobalFoundries "wikilink")
32nm [SOI](../Page/SOI.md "wikilink")工艺，支持Turbo Core
2.0、[Cool'n'Quiet](../Page/Cool'n'Quiet.md "wikilink")、[HyperTransport](../Page/HyperTransport.md "wikilink")
3.1等技术。使用新的[Socket
AM3+](../Page/Socket_AM3+.md "wikilink")（942）插座，支持[DDR3](https://zh.wikipedia.org/wiki/DDR3 "wikilink")-1866双通道内存，分为8核、6核、4核三种版本，主频从2.8GHz\~4.2GHz不等。配套芯片组为AMD
900系列芯片组。

Bulldozer與Fusion
APU“Llano”兩個系列處理器的上市時間定案，分別是2011年9月19日跟2012年第一季。\[49\]最初有4個Bulldozer處理器在2011年9月19日發佈，分別是：四核心FX-4100、六核心FX-6100、八核心FX-8150、FX-8120。\[50\]三核心型號（1.5個模組，微軟KB2592546修補程式的定義為“1.5核心”）只供OEM市場。\[51\]

### 伺服器處理器

2011年11月14日，AMD宣佈推出針對[伺服器等級效能的Opteron](https://zh.wikipedia.org/wiki/伺服器 "wikilink")
6200與4200系列[處理器](https://zh.wikipedia.org/wiki/處理器 "wikilink")（先前代號分別為：Interlagos與Valencia），主要將提供其擴充性，並且提供高出73%的記憶體[頻寬](https://zh.wikipedia.org/wiki/頻寬 "wikilink")，以對應更高階的[虛擬化技術應用](https://zh.wikipedia.org/wiki/虛擬化技術 "wikilink")，同時在整體耗電量部份也讓每組核心減少原有一半，同時也讓主機使用空間減少三分之二，進而節省更多[電力](../Page/電力.md "wikilink")、[空間等](https://zh.wikipedia.org/wiki/空間 "wikilink")[成本](../Page/成本.md "wikilink")支出。\[52\]\[53\]

AMD也同步透露2012年將加入全新AMD Opteron 3000伺服器平台，主要鎖定超高密度、超低功耗的1路網路主機代管（Web
Hosting）、網路伺服器（Web
Serving），以及微型伺服器（Microserver）等應用領域。其中將會先推出代號為「Zurich」的4至8核心架構的處理器系列，同樣採用推土機（Bulldozer）架構且對應AM3+插槽，並且預計將於2012上半年間出貨。\[54\]\[55\]

#### 主要特性

  - 同價位伺服器處理器產品效能約較競爭[品牌](../Page/品牌.md "wikilink")高出89％\[56\]\[57\]
  - 處理器陣容齊全、從4[核心一路涵蓋到](https://zh.wikipedia.org/wiki/核心 "wikilink")16核心\[58\]\[59\]
  - 與前代平台相同的功耗曲線下，每顆核心功耗最低約可達4.375W\[60\]\[61\]
  - 處理關鍵雲端、[虛擬化](../Page/虛擬化.md "wikilink")及高效能運算等作業時，效能可高出24％至84％\[62\]\[63\]
  - 擁有2路處理器最高的TPCC速度測試分數\[64\]\[65\]
  - 最低的[虛擬系統](../Page/虛擬系統.md "wikilink")（virtual
    machine，VM）單位成本\[66\]\[67\]
  - 最高可達4個記憶體通道，最高可支援1600MHz記憶體時脈\[68\]\[69\]
  - 支援1.25[伏特](../Page/伏特.md "wikilink")超低電壓記憶體\[70\]\[71\]
  - 每顆處理器最高支援12組DIMM記憶體，最高可支援384GB[記憶體](https://zh.wikipedia.org/wiki/記憶體 "wikilink")\[72\]\[73\]
  - 最多可支援4個16倍速的[HyperTransport](../Page/HyperTransport.md "wikilink")（HT3）鏈路，每個鏈路傳輸速度達每秒6.4GT\[74\]\[75\]

## 效能表現和市場反應

### AMD FX系列效能問題

首款基於Bulldozer微架構的消費級處理器AMD
FX上市後，在微架構的設計上、效能上和能耗上飽受爭議。首發的頂級型號FX-8150，在倚重單線程的基準效能測試中，測試結果顯示FX-8150不僅落後於基於[Nehalem](https://zh.wikipedia.org/wiki/Intel_Nehalem "wikilink")、[Sandy
Bridge等微架構的](https://zh.wikipedia.org/wiki/Sandy_Bridge "wikilink")[Intel
Core
i系列](https://zh.wikipedia.org/wiki/Intel_Core "wikilink")，還不如基於K10微架構的AMD
Phenom II系列；\[76\]不過在倚重多線程的效能測試中，結果顯示勉強可以追平Phenom II X6 1100T和Intel Core
i7-2600K。縱觀各媒體的效能測試結果，FX-8150綜合效能強於Intel Core i5
2500K，而[零售](../Page/零售.md "wikilink")[價格則在其之下](https://zh.wikipedia.org/wiki/價格 "wikilink")，這個結果並沒給市場預期留下好印象。\[77\]\[78\]在效能測試中，FX-8150在廠方預設[時鐘頻率下運作](https://zh.wikipedia.org/wiki/時鐘頻率 "wikilink")，無論待機抑或滿負荷運作，能耗比與Intel基於SandyBridge的處理器不相上下，但是進行較大幅度的超頻後，FX-8150儘管效能提昇明顯但處理器會變得極其耗電，能耗比變得相當低下。\[79\]\[80\]\[81\]\[82\]

Tom's Hardware的網站評論認為，這種在多線程負載下仍然不如預期的效能表現，是由於目前[Windows
7的線程和處理器核心一一對應的線程](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")[排程](../Page/排程.md "wikilink")方式。他們指出，如果Windows首先把一條線程分配給一個Bulldozer模組，並在模組內分為兩條子線程以充分利用該模組內的整數排程運算單元，這將會效能最大化地使處理器同時處理四條線程。這種線程排程方式和帶有超線程的Intel微處理器的類似——Windows
7會在利用邏輯核心（超線程得到的）前把線程安排至物理核心上。\[83\]

對於處理器在超頻狀態時誇張的功耗水平，業界相信由於[格羅方德的](https://zh.wikipedia.org/wiki/GlobalFoundries "wikilink")32納米SOI
HKMG製程仍舊不成熟，這個導致了處理器核心在更高時脈下運作時，漏電現象嚴重，使耗電量飆升以及核心發熱量大增。\[84\]\[85\]而且有效能測評指出，AMD為壓低FX系列的功耗，有意壓低部分型號處理器的最高工作溫度，而這個溫度的設定值，實際還低於處理器在預設時鐘頻率下滿負荷運作時的最高溫度，這樣一來在處理器過熱保護機制下，效能受到了不小的影響，從而使處理器效能不如預期。\[86\]

而AMD FX的較低階的型號中，FX-4100系列與[Intel Core
i3系列之間的比較以及FX](../Page/Intel_Core_i3.md "wikilink")-6100系列與[Intel
Core i5系列](../Page/Intel_Core_i5.md "wikilink")（Core i5
2500K除外）之間的比較中，除了某些倚重單線程的應用程式和基準效能測試項目以外，其餘的差距不大。不過功耗方面仍然有些偏高，尤其是超頻以後功耗仍然大幅增加。\[87\]\[88\]\[89\]\[90\]

2011年10月13日，AMD在其官方[部落格中回應了AMD](https://zh.wikipedia.org/wiki/部落格 "wikilink")
FX系列處理器的效能、功耗表現不如市場預期的問題，除了指出由於微架構不同於以往的x86處理器的微架構，現行的應用程式以及基準效能測試程式沒有對Bulldozer微架構的特點進行充分優化，以至效能不如預期以外，也承認FX-8150效能不濟的事實：不少效能測試成績不如Intel的Core
i7-2600K/2700K，甚至比不過AMD上一代的消費級頂級產品Phenom II X6
1100T。AMD同時表示，在2012年以後的發展規劃中，將提升Bulldozer微架構的效能，並降低功耗，目標是每一瓦電功率的效能提升10%至15%。格羅方德也表示繼續改進其32納米SOI
HKMG製程。\[91\]\[92\]根據目前一些基於AMD Piledriver微架構的AMD
Fusion（核心代號“Trinity”）的工程樣品的效能測試，結果顯示和AMD的預期效能一致。\[93\]\[94\]

### 超級電腦

AMD於2011超級電腦展（Supercomputing 2011）上，宣布基於Bulldozer微架構的新款[AMD
Opteron](https://zh.wikipedia.org/wiki/AMD_Opteron "wikilink")
6200系列處理器已被HPCwire雜誌的編輯與讀者評選為2012年最受矚目的五款新產品之一，並被[美國國家科學基金會](https://zh.wikipedia.org/wiki/美國國家科學基金會 "wikilink")（National
Science Foundation）的[Blue
Waters計畫採用](../Page/Blue_Waters.md "wikilink")，將在伊利諾州的[國家超級電腦應用中心](https://zh.wikipedia.org/wiki/國家超級電腦應用中心 "wikilink")（NCSA）建置此部[超級電腦](https://zh.wikipedia.org/wiki/超級電腦 "wikilink")。\[95\]

超過235部，搭載近5萬顆AMD Opteron 6200系列處理器的Cray XE6機櫃，使[Blue
Waters超級電腦能提供超過每秒千兆次](../Page/Blue_Waters.md "wikilink")（petaflop）的充裕效能，在各種現象研究上的獲得突破性進展，包括：[宇宙大爆炸](https://zh.wikipedia.org/wiki/宇宙大爆炸 "wikilink")（Big
Bang）之後的演進、[龍捲風](../Page/龍捲風.md "wikilink")的形成、[病毒](../Page/病毒.md "wikilink")侵入[細胞的機制](https://zh.wikipedia.org/wiki/細胞 "wikilink")，與其他眾多科學工程方面的應用。

2012年12月，搭載18,688顆8模組16核心的AMD Opteron 6274為任務分配單元，18,688顆[NVIDIA
Tesla運算加速卡](../Page/NVIDIA_Tesla.md "wikilink")（GK110[通用圖形處理器](https://zh.wikipedia.org/wiki/通用圖形處理器 "wikilink")）的[泰坦超級電腦以](https://zh.wikipedia.org/wiki/泰坦超級電腦 "wikilink")17.59[petaFLOPS的記錄榮登](https://zh.wikipedia.org/wiki/FLOPS "wikilink")[TOP500](../Page/TOP500.md "wikilink")第一名，Green500（超級電腦[效能功耗比](../Page/效能功耗比.md "wikilink")前500強）第三名。\[96\]\[97\]

### 效能優化修補程式

2011年12月16日，[微软](../Page/微软.md "wikilink")发布了KB2592546\[98\]，即传说中的推土机线程调度[补丁](https://zh.wikipedia.org/wiki/补丁 "wikilink")。而當天上午微软就已经撤下了补丁，对于这一点BSN网站\[99\]联系了微软和AMD，得到了AMD方面的官方回应：

[微軟在KB](https://zh.wikipedia.org/wiki/微軟 "wikilink")2592546之後，針對以[Win7](https://zh.wikipedia.org/wiki/Win7 "wikilink")、[Windows
Server 2008
R2的電腦為基礎](../Page/Windows_Server_2008_R2.md "wikilink")，進行最佳化。目前，AMD推土機處理器比預期的慢。因為在該兩種作業系統的執行緒[邏輯](https://zh.wikipedia.org/wiki/邏輯 "wikilink")，只對同步多執行緒（Simultaneous
Multithreading,
SMT）的[排程](../Page/排程.md "wikilink")特色進行優化，而沒對[集群多線程](https://zh.wikipedia.org/wiki/集群多線程 "wikilink")（CMT，Clustered
Multithreading）一類的多線程設計的處理器進行特別優化，來讓效能最有效地運行。\[100\]\[101\]\[102\]

後來完整版的修補程式（KB2646060以及KB2645594更新檔）發布，不少效能測試結果顯示這些效能優化修補程式效用有限，無論是伺服器平台還是桌面平台，最多僅在某些項目上有15%的效能增長。\[103\]

2012.09.21 AMD的驅動程式已有內建修補無需安裝微軟的修正程式

### 金氏世界紀錄

AMD全球副總裁暨終端產品事業群[總經理Chris](https://zh.wikipedia.org/wiki/總經理 "wikilink")
Cloran表示，等級最高的FX-8150八核心處理器，在2011年8月31日，由AMD團隊[超頻](../Page/超頻.md "wikilink")達到8.429[GHz](https://zh.wikipedia.org/wiki/GHz "wikilink")，超越同廠處理器先前的被「Team
AMD FX」締造的8.308
GHz成績，榮登[金氏世界紀錄](https://zh.wikipedia.org/wiki/金氏世界紀錄 "wikilink")「最高時脈的電腦處理器」。\[104\]\[105\]

## 改進版本

AMD在2011年發布2012年的財政預算以及2012年的產品路線圖時宣布，在2012年的第三季度發布Bulldozer微架構的改進版[Piledriver](../Page/AMD_Piledriver.md "wikilink")。首批基於Piledriver的處理器是核心代號「[Trinity](../Page/三位一體.md "wikilink")」的AMD
A系列處理器（APU）行動版本和桌面版本；新FX和Opteron在2012年9月發布。\[106\]\[107\]

## 参考文献

## 外部連結

  - [2011至2012年最新AMD產品發表時程大公開](https://web.archive.org/web/20110409053443/http://info.amdtaiwan.com.tw/survey/PDF/2011Q1_21-23.pdf)
  - [AMD
    Opteron 6200系列重裝上陣](http://www.amdtaiwan.com.tw/survey/PDF/2011Q4_AMD_Accelerate02.pdf)
  - [AMD
    Bulldozer推土機十大熱門問題，且看AMD官方細細解答！](http://hiredwolf.blogspot.com/2011/12/amd-bulldozer-amd.html)
  - [AMD
    Bulldozer/K10架構對比](http://expl.cpst.net.cn/ehard/2010_07/279587348.html)
  - [AMD Bulldozer解析](http://cpu.zol.com.cn/224/2245278.html)

<!-- end list -->

  - [AMD
    FX处理器官网](http://sites.amd.com/us/promo/processors/Pages/fx-processor.aspx)

  - <https://archive.is/20130424224040/blogs.amd.com/unprocessed/tag/bulldozer/>

      - ["Bulldozer" 20 Questions,
        Part 1](https://archive.is/20130424215928/blogs.amd.com/work/2010/08/23/%E2%80%9Dbulldozer%E2%80%9D-20-questions-round-one/)
      - ["Bulldozer" 20 Questions,
        Part 2](https://archive.is/20120711115201/blogs.amd.com/work/2010/08/30/bulldozer-20-questions-%E2%80%93-part-2/)
      - ["Bulldozer" 20 Questions,
        Part 3](https://archive.is/20130424234651/blogs.amd.com/work/2010/09/13/bulldozer-20-questions-part-3/)

  -
  -
  -
## 參見

  - [AMD CPU微架構列表](../Page/AMD_CPU微架構列表.md "wikilink")
  - [AMD FX](../Page/AMD_FX.md "wikilink")
  - [AMD Piledriver](../Page/AMD_Piledriver.md "wikilink")
  - [AMD Fusion](https://zh.wikipedia.org/wiki/AMD_Fusion "wikilink")
  - [AMD Bobcat](../Page/AMD_Bobcat.md "wikilink")
  - [SSE5](https://zh.wikipedia.org/wiki/SSE#SSE5 "wikilink")
  - [多晶片模組](../Page/多晶片模組.md "wikilink")

{{-}}

[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")
[Category:AMD處理器](https://zh.wikipedia.org/wiki/Category:AMD處理器 "wikilink")
[Category:世界之最](https://zh.wikipedia.org/wiki/Category:世界之最 "wikilink")

1.  [Inside the AMD Bulldozer
    Architecture](http://www.hardwaresecrets.com/article/Inside-the-AMD-Bulldozer-Architecture/1078)


2.  [AMD's Bulldozer
    Microarchitecture](http://www.realworldtech.com/bulldozer/)

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
15. [机密揭露：Intel超线程技术有多少种？](http://server.it168.com/a2008/1212/260/000000260168_all.shtml)
    - IT168服务器专区

16. [全面解析AMD
    Bulldozer集群多线程架构_组件芯片_服务器频道_至顶网](http://server.zdnet.com.cn/files/all-1522477.htm#1522477)

17. [AMD推土机集群多线程/Intel
    HT全对比](http://www.inpai.com.cn/doc/hard/129490_5.htm)  - 硬派

18.

19.

20.

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

38. [AMD為資料中心樹立價格、效能與功耗新標竿](http://www.amd.com/tw/aboutamd/newsroom/pressreleases/Pages/20100329.aspx)
    - amd.com.tw

39. [AMD Bulldozer FX-8150 vs
    i7-2600K完整效能測試](http://chinese.vr-zone.com/2984/bulldozer-2600k-10122011/)，Page1
    - VR-Zone中文版

40. [明年中期上市AMD 9系主板芯片组前瞻](http://article.pchome.net/content-1234871.html)
    - CPU新闻_电脑之家PChome.net

41. [天底下沒有永遠的敵人，輝達將SLI能力賦予AMD新一代990晶片組](http://chinese.engadget.com/2011/04/01/amd-9-series-chipset-can-support-sli/)
    - [engadget中文版](https://zh.wikipedia.org/wiki/engadget "wikilink")

42.

43.

44. [AM3 processors will work in the AM3+ socket, but Bulldozer chips
    will not work in non-AM3+
    motherboards](http://www.extremetech.com/article2/0,2845,2368186,00.asp)


45.
46.
47.
48. [Bulldozer時脈創金氏記錄，單核效能被Phenom
    II打臉？](http://www.techbang.com/posts/7029-bulldozer-hold-live-single-core-phenom-ii-performance-was-on-her-face)
    - T客邦

49.

50.

51.

52.

53. [新款AMD
    Opteron™處理器帶來極致的效能、擴充性與效率](http://www.amd.com/tw/aboutamd/newsroom/pressreleases/Pages/2011111400NR.aspx)
    - AMD.COM.TW

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
72.
73.
74.
75.
76. [效能居然倒退？AMD FX与Intel
    P4的故事_CPU内存硬盘评测](http://diy.pconline.com.cn/cpu/reviews/1110/2557474_6.html)

77. \[www.mobile01.com/newsdetail.php?id=11386 AMD Phenom II X6
    1100T與同門FX-8120效能解析\] - Mobile01

78. [AMD Bulldozer FX-8150 vs
    i7-2600K完整效能測試](http://chinese.vr-zone.com/2984/bulldozer-2600k-10122011/)
    - VR-Zone中文版

79.

80.

81. [全方位认识推土机：AMD
    FX-8120最全面解析与评测_文库_PC绝对领域](http://www.pceva.com.cn/article-221-5.html)

82. [终极版超频FX-8150同i7-2600K对比测试](http://tech.sina.com.cn/h/2011-10-18/08456192566_13.shtml)
    - 新浪數碼

83.

84. [对决推土机、APU：Core i7-2700K全方位评测-Intel,Core
    i7-2700K,i7-2600K,推土机,FX-8150,对比，评测-驱动之家](http://news.mydrivers.com/1/207/207379_all.htm)

85. [AMD Bulldozer FX-8150 vs
    i7-2600K完整效能測試](http://chinese.vr-zone.com/2984/bulldozer-2600k-10122011/8/)，Page8
    - VR-Zone中文版

86. [全方位认识推土机：AMD
    FX-8120最全面解析与评测](http://www.pceva.com.cn/article-221-1.html)
    - pceva.com.cn

87. [史上最高频！AMD推土机FX-4170性能测试](http://www.inpai.com.cn/doc/hard/171861_6.htm)
    - 硬派

88. [AMD FX Vs. Intel Core i3: Exploring Game Performance With Cheap
    GPUs](http://www.tomshardware.com/reviews/fx-4100-core-i3-2100-gaming-benchmark,3136.html)
    - Tom's Hardware.com

89. [同样的显卡：i3-2100、FX-4100谁更快？](http://news.mydrivers.com/1/219/219007_all.htm)
     - 驅動之家

90. [结果竟然是？AMD六核推土机FX-6100评测](http://diy.pconline.com.cn/cpu/reviews/1111/2594434_all.html)
    - pconline.com.cn

91.
92.

93. [AMD Trinity On The Desktop: A10, A8, And A6 Get
    Benchmarked\!](http://www.tomshardware.com/reviews/a10-5800k-a8-5600k-a6-5400k,3224.html)
    - Tom’s hardware

94. [大起底！AMD台式机版Trinity
    APU首测](http://news.mydrivers.com/1/231/231475_all.htm) -
    驅動之家翻譯自Tom's Hardware

95. [屢獲獎的新款AMD
    Opteron™處理器打造全球頂尖超級電腦](http://www.amd.com/tw/aboutamd/newsroom/pressreleases/Pages/2011111700NR.aspx)

96.

97.

98. [在【更新】以最佳化AMD Bulldozer
    Cpu的效能](http://support.microsoft.com/kb/2592546/)

99.

100.
101.

102. [安裝Windows 7更新檔，實測AMD FX處理器效能增加多少？ -
     第3頁](http://www.techbang.com/posts/8635-free-amd-fx-real-combat-effectiveness?page=3)
     - T客邦

103.
104.

105. [AMD Bulldozer CPU beats world record again
     achieving 8.461GHz](http://www.geek.com/articles/chips/amd-bulldozer-cpu-beats-world-record-again-achieving-8-461ghz-2011111/)

106. [AMD行動產品Roadmap曝光，2012 Q1
     Llano接班人Trinity上場](http://www.techbang.com/posts/7107-roadmap-amd-mobile-product-exposure-2012-q1-llano-successors-trinity-play)
     - T客邦

107. [AMD下代APU改用「Piledriver」微架構13年升級至28nm進入異類多核心時代](http://www.hkepc.com/7513)
     - hkepc