> 本文内容由[IBM POWER微处理器](https://zh.wikipedia.org/wiki/IBM_POWER微处理器)转换而来。


是[RISC](https://zh.wikipedia.org/wiki/RISC "wikilink")[處理器的一種](https://zh.wikipedia.org/wiki/處理器 "wikilink")，由[IBM](../Page/IBM.md "wikilink")設計，全稱為“”，《IBM Connect電子報》2007年8月號譯為「增強RISC性能優化」。POWER系列微處理器在不少IBM[伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")、[超級電腦](https://zh.wikipedia.org/wiki/超級電腦 "wikilink")、[小型電腦及](https://zh.wikipedia.org/wiki/小型電腦 "wikilink")[工作站](../Page/工作站.md "wikilink")中，廣泛作為主CPU使用。而[PowerPC](../Page/PowerPC.md "wikilink")架構也是源自[POWER架構](https://zh.wikipedia.org/wiki/POWER架構 "wikilink")，並應用在[蘋果電腦的](https://zh.wikipedia.org/wiki/蘋果電腦 "wikilink")[麥金塔電腦及部份IBM的工作站](https://zh.wikipedia.org/wiki/麥金塔電腦 "wikilink")，以及各式各樣的[嵌入式系統上](https://zh.wikipedia.org/wiki/嵌入式系統 "wikilink")。此外，IBM透過[Power.org](http://webarchive.loc.gov/all/20110729095144/https://www.power.org/)網站，向其他開發者及製造商推廣POWER架構及其他衍生產品。

POWER同样也是一系列实施了同样架构指令集的微处理器的名字。POWER系列微处理器用于IBM的服务器、微电脑、工作站、超级电脑的主处理器。POWER3以及随后的POWER系列微处理器均全部实施了[64-bit](https://zh.wikipedia.org/wiki/64-bit "wikilink") PowerPC架构。從POWER3開始及其之後的POWER處器都不再具備與支援更早之前的舊POWER的[指令集架構](../Page/指令集架構.md "wikilink")，包括PowerPC指令集架構或任何POWER2所追加延伸的指令，如lfq或stfq等，都不再具備與支援。

## 歷史

### [IBM 801計畫](https://zh.wikipedia.org/wiki/IBM_801 "wikilink")

西元1974年，[IBM](../Page/IBM.md "wikilink")開始了一個計畫，目標是創造一個至少可處理每秒300路通話的大型電話交換網路。預想中每路通話需要20000個[指令來處理](https://zh.wikipedia.org/wiki/指令 "wikilink")，以達到即時回應，因此需要一個速度為12 MIPS的處理器。這在當時是很有野心的需求，但他們認知到，並不需要如同時期處理器那樣的複雜設計，因為這部機器只需要處理I/O，分歧、暫存器加法、在暫存器和記憶體間搬移資料，不需要用來處理大量數學運算的特殊指令。

複雜運算的每個步驟，都可以簡單的指令來取代，而所有的簡單指令，都在同樣的時間內完成。這個精簡設計的理念，後來成為人們所熟知的[RISC](https://zh.wikipedia.org/wiki/RISC "wikilink")。

西元1975年，這個電話交換計畫在還沒有原型之前，就被中止了。然而，由計畫第一年中模擬所得到的估計來看，為這個計畫所設計的處理器將會是個很有潛力的通用型處理器，因此後續工作在[湯瑪斯·華生研究中心的](https://zh.wikipedia.org/wiki/湯瑪斯·華生研究中心 "wikilink")801號樓繼續進行，也就是[801計畫](https://zh.wikipedia.org/wiki/IBM_801 "wikilink")。

### 1982 Research Project“Cheetah”

為了判斷RISC機器是否能同時處理多個指令，或"801"的設計需要哪些修改，來製造擁有多個執行單元的"801"，在華生研究中心的兩年中，探索了"801"設計的超純量極限。例如使用多個運算單元實作"801"的設計來增進效能，這與先前在IBM System/360 Model 91和CDC 6600上的作法類似。

"Cheetah"擁有個別的分歧、整數及小數點執行單元。在"801"上作了許多改變以容許多重執行單元的設計。

"Cheetah"原本計畫使用Bipolar ECL製程 ，但在1984年[CMOS已經可提供積體電路整合](https://zh.wikipedia.org/wiki/CMOS "wikilink")，同時增進電晶體邏輯效能。

### The America Project

1985年，華生研究中心開始了第二世代RISC架構的研究，成果是"AMERICA架構"。1986年，IBM以這個架構為基礎，在奧斯汀開始開發[RS/6000系列](https://zh.wikipedia.org/wiki/RS/6000 "wikilink")。

### POWER and RS/6000

1990年2月，第一部採用POWER架構的IBM電腦被稱作"RISC System/6000"或RS/6000。RS/6000分成工作站和伺服器兩個等級，分別稱作POWERstation和POWERserver。RS/6000的中央處理器有兩種組態，分別稱作RIOS-1和RIOS.9（更常被稱作"POWER" CPU）。RIOS-1有11個晶片 - 一個指令快取晶片、整數晶片、浮點數晶片、四個資料快取晶片、儲存控制晶片、兩個I/O晶片、和一個時鐘晶片。較低成本的RIOS.9有8個晶片 - 一個指令快取晶片、整數晶片、浮點數晶片、兩個資料快取晶片、儲存控制晶片、一個I/O晶片、和一個時鐘晶片。

單晶片的RIOS, RSC（[RISC Single Chip的縮寫](https://zh.wikipedia.org/wiki/RISC_Single_Chip "wikilink")），是為了較低階的RS/6000開發出來的。第一部使用RSC的機器在1992年推出。

### Amazon

1990年亞馬遜計畫啟動，目標是創造一個可以使用[AIX和](https://zh.wikipedia.org/wiki/AIX "wikilink")[OS/400的共通架構](https://zh.wikipedia.org/wiki/OS/400 "wikilink")。IBM的[AS/400工程團隊當時正在設計一個RISC指令集](https://zh.wikipedia.org/wiki/AS/400 "wikilink")，用來取代既存AS/400電腦的CISC指令集。原始的設計是從既有的"IMPI"指令集衍生而來，擴展為六十四位元，增加一些RISC指令以加速那些原本在AS/400上執行，較需求計算能力的商業應用。IBM曾想讓他們使用PowerPC，但他們抗命不從，爭辯說現有的32/64位元PowerPC指令集無法執行OS/400，也需要擴充以執行AS/400上的商業應用。最後，開發出"Amazon"這個PowerPC的指令集延伸。

同時，[RS/6000的開發者正大幅擴充產品線](https://zh.wikipedia.org/wiki/RS/6000 "wikilink")，延伸到低階工作站，大型對稱式處理（SMP）系統，和叢集式的RS/6000-SP2系統。AIM聯盟開發出來的PowerPC很適合低階工作站和小型伺服器。但大型主機和大型叢集式系統需要的效能和可靠性（[RAS](https://zh.wikipedia.org/wiki/可靠性、可用性和可維護性 "wikilink")）特性，比專為Apple PowerMac設計的處理器更多。多處理器功能需要同時符合PowerMac注重的成本需求、RS/6000系統的效能和可靠性需求、以及AS/400到PowerPC的轉換需求。

亞馬遜再度擴充支援這些特性，以設計出可同時使用在RS/6000和AS/400的處理器。

第一個開發這種處理器的計畫是「[參宿五](https://zh.wikipedia.org/wiki/參宿五 "wikilink")」（Bellatrix，獵戶座的其中一顆星）。參宿五計畫在廣泛使用時脈電路、和EDA工具來支援設計工作上相當具有野心，最終被中止。為滿足技術工作站、超級電腦、和工程、科學市場，IBM奧斯汀（RS/6000的誕生地）開始同時開發能及時上市的單晶片版本Power2 (P2SC)，和擁有POWER2延伸、兩個複雜MAF浮點單元的精密64位元PowerPC處理器（POWER3/630）。為滿足RS/6000的商業應用和AS/400系統，IBM Rochester（AS/400的誕生地）開始開發第一個有AS/400延伸的高階64位元PowerPC處理器。IBM Endicott也開始開發擁有AS/400延伸的低階PowerPC處理器。

AS/400所使用的高階多晶片處理器A25/30 "Muskie"，和單晶片處理器A10 "Cobra"在1995年亮相。

1997年，在IBM Endicott研究中心開發的"Apache"處理器發表。使用在RS/6000上時它被稱作[RS64](https://zh.wikipedia.org/wiki/RS64 "wikilink")。後續型號也使用在AS/400上。

### POWER2

在AIM聯盟1991年成立的兩年之前，IBM已在德州奧斯汀開始Power1後繼者[POWER2的開發](https://zh.wikipedia.org/wiki/POWER2 "wikilink")。儘管因AIM聯盟而分散了資源，POWER2從開始到出貨還是花了五年。POWER2在1993年11月公布時，因加入第二個整數、浮點運算單元和其他效能改進，在效能處於領先地位。

指令集也加入了新指令：

  - 四字集儲存指令，這個載入指令將兩個相鄰的倍精度數值載入兩個相鄰的浮點暫存器。
  - 硬體開方根指令
  - 浮點-整數轉換指令

為支援RS/6000和RS/6000 SP2產品線，在AIM聯盟外，IBM以自家的設計團隊，和當時最先進的CMOS-6s製程，實作了單晶片的POWER2, P2SC (POWER2 Super Chip)。P2SC在一個巨大的晶片上，結合了所有個別的指令快取，整數、浮點、儲存控制、和資料快取晶片。在推出的當時，P2SC是業界最大、電晶體數最多的處理器。它也領先在處理器上內建記憶體控制器。儘管晶片尺寸、複雜度和先進CMOS製程的挑戰艱鉅，它第一次tape-out即能上市，而且在公布的當時具有領先的浮點運算效能。P2SC是1997年打敗棋王Gary Kasparov的IBM深藍超級電腦所採用的處理器。因具有兩個精密的MAF浮點運算單元和寬且低延遲的記憶體界面，P2SC主要瞄準工程和科學應用。P2SC後來被擁有64位元、對稱式處理能力、第二階快取，且能完整移植到PowerPC的Power3/630所取代。

### PowerPC

1991年，IBM了解到如果將晶片賣給其他系統製造商，也許能將POWER變成一個大量生產的架構。他們和[蘋果公司緊密合作](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")，目標是開發一整個家族以POWER為基礎的單晶片微處理器。當時蘋果公司是[摩托羅拉在桌上型微處理器等級的最大客戶](https://zh.wikipedia.org/wiki/摩托羅拉 "wikilink")，因和摩托羅拉長久以來的關係，他們大量生產微處理器的經驗，和保有第二來源的理由，不久蘋果公司就徵詢摩托羅拉加入討論。這個三方合作以德州奧斯汀為基地，後來成為知名的[AIM聯盟](https://zh.wikipedia.org/wiki/AIM聯盟 "wikilink")，也就是**A**pple, **I**BM，和**M**otorola。

兩年的開發之後，在1993年，從POWER架構修改而來的[PowerPC](../Page/PowerPC.md "wikilink")架構誕生了。PowerPC架構加入了單精度浮點運算指令，和通用暫存器間的乘法和除法指令，移除了一些POWER的特性，像是使用MQ暫存器的乘法和除法指令。它也在架構中加入了64位元的延伸和SMP的支援。

第一個PowerPC晶片是[PowerPC 601](https://zh.wikipedia.org/wiki/PowerPC_600#PowerPC_601 "wikilink")。更多資訊請參考[PowerPC](../Page/PowerPC.md "wikilink")頁面。

### POWER3

IBM在1998年引介了[POWER3](https://zh.wikipedia.org/wiki/POWER3 "wikilink")。它實作了64位元POWER指令集，包括所有（在當時是）選擇性的指令集，也擁有兩個浮點運算單元，三個整數運算單元，和兩個存儲單元。後續所有的POWER處理器都實作了完整的64位元PowerPC和POWER指令，因此IBM不再有只實作POWER或POWER2的處理器。

### POWER4

2001年IBM引介了第一個GIGA系列的處理器，[POWER4](https://zh.wikipedia.org/wiki/POWER4 "wikilink")。它是個完全64位元的處理器，實作了完整的64位元指令集，同時也擁有AS/400延伸，同時使用在RS/6000和AS/400系統上，取代POWER3和RS64處理器。當時有個叫作PowerPC 2.00的指令集發布。在這個指令集上加入了一些延伸，像是帶一個參數的mfcr指令。

### POWER5

[Power5.jpg](https://zh.wikipedia.org/wiki/File:Power5.jpg "fig:Power5.jpg")

2004年IBM介紹了[POWER5處理器](https://zh.wikipedia.org/wiki/POWER5 "wikilink")。它是個擁有兩個核心的多核心處理器，支援兩個執行緒的並行多執行緒（SMT），因此它實作了四個邏輯處理器。多個POWER5處理器透過[ViVA](https://zh.wikipedia.org/wiki/IBM_ViVA "wikilink") "虛擬向量架構"可結合在一起當成一個[向量處理器](https://zh.wikipedia.org/wiki/向量處理器 "wikilink")。POWER5在指令集架構中加入了更多指令。

POWER5+ 在ISA 2.02版時又加入了更多指令。

### POWER6

[POWER6在](https://zh.wikipedia.org/wiki/POWER6 "wikilink")2007年5月21日公開。它為POWER系列加入了[VMX](../Page/AltiVec.md "wikilink")。它也引入了從POWER3到POWER4的轉移以來最大的改變，第二代的ViVA, ViVA-2。它是雙核心設計，以65奈米製程達到了4.7 GHz。它擁有非常先進的晶片間通訊技術。它的功耗幾乎和前一代的POWER5相等，而能提供兩倍的效能。

### POWER7

[POWER7是Peta系列的第一個處理器](https://zh.wikipedia.org/wiki/POWER7 "wikilink")。在2010年發布，已被[美國國防先進研究計畫局選為他們Peta](https://zh.wikipedia.org/wiki/美國國防先進研究計畫局 "wikilink")-FLOPS等級超級電腦的候選之一。200x年初期，IBM送交了他們的計畫書，從DARPA得到五千三百萬美元以繼續參與這個挑戰。2006年IBM收到兩億四千四百萬用來為DARPA建造一台Peta-FLOPS電腦。 IBM在2008年完工的使用PowerXCell 8i 3.2 Ghz芯片的Roadrunner超级计算机已经达到了Peta-FLOPS级的计算能力。\[1\]

### POWER8

### POWER9

相較於前一代的POWER8處理器，POWER9提昇4倍的頻寬，相較於Intel x86處理器，帶來9.5倍的I/O頻寬，記憶體支援容量為2.6倍，高效能核心數量提昇2倍，記憶體頻寬則是1.8倍。首款採用POWER9的伺服器Power Systems AC922也同時亮相

## The architecture

## Implementations

## 衍生的處理器

第一個PowerPC處理器PowerPC 601，基本上是一個部份基本指令用微碼模擬的RSC處理器，採用了[Motorola 88000為基礎的匯流排設計](https://zh.wikipedia.org/wiki/Motorola_88000 "wikilink")。這允許IBM在許多工作站機器上使用這個處理器，只需要更換主板。自此 PowerPC和POWER架構有些許分岐，但大部份在指令層級仍然保持相容。

使用在太空應用的抗輻射設計[RAD6000處理器是一個POWER](https://zh.wikipedia.org/wiki/RAD6000 "wikilink")/RSC的衍生架構。

IBM [RS64家族處理器根基於PowerPC](https://zh.wikipedia.org/wiki/RS64 "wikilink")（因此也包括POWER），使用在[RS/6000和](https://zh.wikipedia.org/wiki/RS/6000 "wikilink")[AS/400產品線](https://zh.wikipedia.org/wiki/AS/400 "wikilink")。它對商用工作最佳化，沒有POWER產品線應有的浮點運算。它被POWER4取代。

IBM Gekko處理器是修改過的[PowerPC 750CXe](https://zh.wikipedia.org/wiki/PowerPC_G3 "wikilink")，使用在[任天堂](../Page/任天堂.md "wikilink")[Gamecube](https://zh.wikipedia.org/wiki/Gamecube "wikilink")。[任天堂](../Page/任天堂.md "wikilink")的[Wii](../Page/Wii.md "wikilink")使用更新的Gekko，[Broadway](https://zh.wikipedia.org/wiki/Broadway "wikilink")。

[Cell處理器也是從POWER架構衍生](https://zh.wikipedia.org/wiki/Cell "wikilink")。它具有一個複雜的[多線程](https://zh.wikipedia.org/wiki/多線程 "wikilink")[超純量](../Page/超純量.md "wikilink")核心，和稱作SPE (Synergistic Processing Elements)的八個獨立[向量處理器核心](https://zh.wikipedia.org/wiki/向量處理器 "wikilink")。這個處理器支撐了[Sony的](https://zh.wikipedia.org/wiki/Sony "wikilink")[Playstation 3](https://zh.wikipedia.org/wiki/Playstation_3 "wikilink")、Toshiba的[數位電視系統](https://zh.wikipedia.org/wiki/數位電視 "wikilink")，和IBM的高效能電腦。

[微軟的遊戲主機](https://zh.wikipedia.org/wiki/微軟 "wikilink")[Xbox 360使用一個循序執行的三核](../Page/Xbox_360.md "wikilink")[Xenon處理器](https://zh.wikipedia.org/wiki/Xenon "wikilink")，它基於PowerPC，擁有修改過的向量單元，時脈3.2 GHz\[2\]。

## 参考资料

## 外部链接

  - [IBM Power Architecture](http://www.ibm.com/chips/power/) - Official IBM website
  - [Linux on Power](http://www.ibm.com/systems/linux/power/)
  - [Linux on Power WIKI](http://www.ibm.com/collaboration/wiki/display/LinuxP/)
  - [IBM Power Architecture weekly magazine](http://www.ibm.com/developerworks/power)
  - [Power.org](http://webarchive.loc.gov/all/20110729095144/https://www.power.org/)
  - [POWER to the people](https://web.archive.org/web/20080529/http://www.ibm.com/developerworks/power/library/pa-powerppl/) - an IBM history of POWER and PowerPC
  - [When Is PowerPC Not PowerPC?](https://web.archive.org/web/20051104002140/http://www.the400squadron.com/amug/200406/NotPowerPC.htm) - History of the POWER Architecture by [Frank Soltis](https://zh.wikipedia.org/wiki/Frank_Soltis "wikilink")
  - [Migrating Source Programs](https://web.archive.org/web/20071006154350/http://www.nersc.gov/vendor_docs/ibm/asm/migrating_source.htm#be6c5d1351jeff)
  - [Meet the experts: John McCalpin](http://www-128.ibm.com/developerworks/library/pa-expert1.html) - interesting discussion on power5 and beyond
  - [27 years of IBM RISC](https://web.archive.org/web/20070319173323/http://www.rootvg.net/column_risc_.htm)

## 參考文獻

<div class="references-small">

<references>

</references>

</div>

[Category:POWER架構](https://zh.wikipedia.org/wiki/Category:POWER架構 "wikilink") [Category:微處理器](https://zh.wikipedia.org/wiki/Category:微處理器 "wikilink") [Category:IBM处理器](https://zh.wikipedia.org/wiki/Category:IBM处理器 "wikilink")

1.
2.  [IBM Developerworks - Xenon processor reference](http://www-128.ibm.com/developerworks/power/library/pa-fpfxbox/)