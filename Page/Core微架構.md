**Core微架构**（**Core
Microarchitecture**）是[Intel的](https://zh.wikipedia.org/wiki/Intel "wikilink")[處理器架構](https://zh.wikipedia.org/wiki/處理器架構 "wikilink")，原稱「Intel's
Next Generation
Microarchitecture」。於2006年宣佈，並取代舊有的[NetBurst及](https://zh.wikipedia.org/wiki/NetBurst "wikilink")[Pentium
M架構](https://zh.wikipedia.org/wiki/Pentium_M "wikilink")。本架構的特色為低功耗、多核心、[虛擬化技術](https://zh.wikipedia.org/wiki/虛擬化技術 "wikilink")（部分型號）、[Intel
64](https://zh.wikipedia.org/wiki/Intel_64 "wikilink")（又稱EM64T等）及[SSSE3](../Page/SSSE3.md "wikilink")。

首先推出的處理為用本架構的Merom、Conroe及Woodcrest核心處理器。Merom為流動核心、Conroe為桌面核心、而Woodcrest為伺服器用核心。

## 技術

Core微架構是全新設計的处理器内部架構，但其有類似[Pentium
M的設計](https://zh.wikipedia.org/wiki/Pentium_M "wikilink")，有14级[流水線](https://zh.wikipedia.org/wiki/流水線 "wikilink")（Pipeline），相比[NetBurst架構](https://zh.wikipedia.org/wiki/NetBurst "wikilink")[Prescott的](https://zh.wikipedia.org/wiki/奔腾4#Prescott "wikilink")31级，足足少了超過一半。另外執行核心亦由[P6](https://zh.wikipedia.org/wiki/Intel_P6 "wikilink")、P6-M、及Netburst的一次可處理3個指令，增加至4個。本架構亦是雙核心設計，兩個核心的L1快取互相連接，共用L2快取。使用以上設計以達到最高效能功耗比（Performance
per watt）。

其中一個新設計為[宏融合](../Page/宏融合.md "wikilink")，將兩個x86指令合併成為一個，以達到優化。另外，本架構亦將128位元的SSE指令的思考時間由兩個週期縮短為一個週期，及全新的省電設計。所有核心會以最低速度運行，當有需要時則自動增速，以減低晶片的發熱量，及其耗電量。本架構的[前端总线](../Page/前端总线.md "wikilink")（FSB）為Woodcrest核心的1333MHz（MT/s），Merom核心的667MHz（MT/s），及Conroe核心的1066MHz（MT/s，E6X00/Q6X00/QX6X00/X6X00）或1333MHz（MT/s，E6X50/E6X40/QX6X50）。不過外頻是本架構的弱點，因為其仍使用Pentium
4核心的設計，故仍未能完全控制雙通道的DDR2記憶體，又或者新的[FB-DIMM](../Page/FB-DIMM.md "wikilink")。

英特爾宣稱其功率消耗極低，Conroe核心的功率消耗是65W，而Woodcrest核心則是80W（相比Opteron
875HE有55W）。行動核心Merom將有功率消耗為35W的標準電壓版本以及5W的低電壓版本。

## Roadmap

### 行動平台

  - *Merom*，第一枚第八代行動處理器核心，65nm，Dual Core，2–4MB
    L2[快取](https://zh.wikipedia.org/wiki/快取 "wikilink")（發佈：2006年8月）

:\* *Penryn*，雙核心，45nm，3–6MB L2快取

:\* *Perryville*，單核心，45奈米，2MB L2快取

### 桌面平台

  - *Conroe*，第一枚第八代桌面處理器核心，65nm，雙核心，4MB L2快取（發佈：2006年6月）

:\* *Allendale*，雙核心，Conroe的2MB L2快取版本

:\* *Conroe-1M*，雙核心，Conroe的1MB L2快取版本

:\* *Conroe-L*，單核心，Conroe的512KB L2快取版本

:\* *Kentsfield*，四核心，由兩個Conroes組成，2×4MB L2快取（8MB L2快取）

::\* *Wolfdale*，雙核心，45nm，6MB L2快取

::\* *Yorkfield*，四核心，45nm，12MB L2快取

::\* *Ridgefield*，雙核心，45nm，6MB L2快取

::\* *Perryville*，單核心，45nm，2 MB L2快取

### 伺服器及工作站

  - *Woodcrest*，第一枚第八代伺服器及工作站處理器核心，65納米，雙核心，4MB L2快取（發佈：2006年6月19日）

:\* *Clovertown*，四核心，由兩個Woodcrest組成，2×4MB L2快取（8MB L2快取）

::\* *Clovertown-MP*，Clovertown兼容多處理器版本

:\* *Tigerton*，四核心，兼容多處理器，由兩個Woodcrest組成

:\* *Harpertown*，雙核心，45納米或者八核心，45納米，12MB L2快取

:\* *Dunnington*，四至三十二核心

## 另見

  - [英特爾微處理器列表](https://zh.wikipedia.org/wiki/英特爾微處理器列表 "wikilink")

## 參照

  - [Intel Core Microarchitecture
    website](http://www.intel.com/technology/architecture/coremicro/index.htm)
  - [Intel press release announcing plans for a new
    microarchitecture](http://www.intel.com/pressroom/archive/releases/20050823corp.htm)
  - [Intel press release introducing the Core
    Microarchitecture](http://www.intel.com/pressroom/archive/releases/20060307corp.htm)
  - [Intel processor roadmap](http://www.intel.com/products/roadmap/)
  - [Intel names the Core
    Microarchitecture](http://anandtech.com/tradeshows/showdoc.aspx?i=2711&p=2)
  - [Pictures of processors using the Core Microarchitecture, among
    others (also first mention of
    Clovertown-MP)](https://web.archive.org/web/20060717124332/http://www.xbitlabs.com/articles/editorial/display/idf-s2006_5.html)
  - [IDF keynotes, advertising the performance of the new
    processors](https://web.archive.org/web/20060322051611/http://www.tgdaily.com/2006/03/07/idf_keynotes_welcome_to_intel_3-point-0/)
  - [RealWorld Tech's overview of the Core
    microarchitecture](http://www.realworldtech.com/page.cfm?ArticleID=RWT030906143144)
  - [Detailed overview of the Core microarchitecture at Ars
    Technica](http://arstechnica.com/articles/paedia/cpu/core.ars)
  - [Comparison of the AMD Opteron and Intel Core Microarchitectures at
    Anandtech](http://www.anandtech.com/cpuchipsets/showdoc.aspx?i=2748)
  - [Release dates of upcoming Intel Core processors using the Intel
    Core
    Microarchitecture](http://archive.wikiwix.com/cache/20110714162514/http://dailytech.com/article.aspx?newsid=2015)

## 外部連結

  - [The Tick Tock Beat of Microprocessor Development at
    Intel](http://www.intel.com/technology/itj/2010/v14i3/pdfs/Intel_Technology_Journal_Volume_14_Issue_3_2010.pdf)
    英特爾總結處理器開發的經驗 (Tick 為半導體制程的改良，Tock為微架構的進步) - Intel科技期刊 ([Intel
    Technology Journal](http://www.intel.com/technology/itj/))

[Category:Intel處理器架構](https://zh.wikipedia.org/wiki/Category:Intel處理器架構 "wikilink")
[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")