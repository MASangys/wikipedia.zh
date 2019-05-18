**uncore**一詞，是[英特爾用來描述](https://zh.wikipedia.org/wiki/英特爾 "wikilink")[微處理器中](https://zh.wikipedia.org/wiki/微處理器 "wikilink")，功能上為非處理器核心（Core）所負擔，但是對處理器效能的發揮和維持有必不可少的作用的組成部分。\[1\]處理器核心包含的處理器組件都涉及處理器指令的執行，包括[算術邏輯單元](https://zh.wikipedia.org/wiki/算術邏輯單元 "wikilink")（[ALU](https://zh.wikipedia.org/wiki/ALU "wikilink")）、[浮點運算單元](https://zh.wikipedia.org/wiki/浮點運算單元 "wikilink")（[FPU](https://zh.wikipedia.org/wiki/FPU "wikilink")）、[一級快取](https://zh.wikipedia.org/wiki/快取 "wikilink")（L1
Cache）、二級快取（L2
Cache）。Uncore的功能包括[QPI控制器](https://zh.wikipedia.org/wiki/QPI "wikilink")、三級快取（L3
Cache）、窺探（監測）[管線](../Page/指令管線化.md "wikilink")（snoop agent
pipeline）、記憶體控制器，以及[Thunderbolt控制器](../Page/Thunderbolt.md "wikilink")。\[2\]至於其餘的[匯流排控制器](https://zh.wikipedia.org/wiki/匯流排 "wikilink")，像是[PCI-E](https://zh.wikipedia.org/wiki/PCI-E "wikilink")、[SPI等](../Page/序列周邊介面.md "wikilink")，則是屬於[晶片組的一部分](https://zh.wikipedia.org/wiki/晶片組 "wikilink")。\[3\]

英特爾Uncore設計根源，來自於[北橋晶片](../Page/北桥.md "wikilink")。Uncore的設計是，將對於處理器核心有關鍵作用的功能重新組合編排，從物理上使它們更靠近核心（整合至處理器晶片上，而它們有部分原來是位於北橋上），以降低它們的存取延時。而北橋上餘下的和處理器核心並無太大關鍵作用的功能，像是PCI-E控制器或者是電源控制單元（PCU），並沒有整合至Uncore部分，而是繼續作為晶片組的一部分。\[4\]

具體而言，[微架構中的uncore是被細分為數個模組單元的](../Page/微架構.md "wikilink")。uncore連接至處理器核心是通過一個叫Cache
Box（CBox）的界面實現的，CBox也是[末級快取](https://zh.wikipedia.org/wiki/CPU快取 "wikilink")（Last
Level
Cache，LLC）的連接界面，同時負責管理[快取一致性](https://zh.wikipedia.org/wiki/快取一致性 "wikilink")。複合的內部與外部QPI連結由物理層單元（Physical
Layer
units）管理，稱為PBox。PBox、CBox以及一個或更多的內建[記憶體控制器](https://zh.wikipedia.org/wiki/記憶體控制器 "wikilink")（iMC，作MBox）的連接由系統配置控制器（System
Config Controller，作UBox）和路由器（Router，作RBox）負責管理。\[5\]

從uncore部分移出串列匯流排控制器，可以更好地促進效能的提升，通過允許uncore的[時脈速率](https://zh.wikipedia.org/wiki/時脈 "wikilink")（UCLK）運作於基準的2.66GHz，提升至超過超頻限制值的3.44GHz，實現效能提升。\[6\]這種時脈提升使得核心存取關鍵功能部件（像是記憶體控制器）時的延時值更低（典型情況下處理器核心存取[DRAM的時間可降低](https://zh.wikipedia.org/wiki/DRAM "wikilink")10[奈秒或更多](https://zh.wikipedia.org/wiki/奈秒 "wikilink")）。

## 參考資料

## 外部連結

  - [Intel Software Developer's Manual. Vol. 3A
    & 3B](http://www.intel.com/products/processor/manuals/)

[Category:集成電路](https://zh.wikipedia.org/wiki/Category:集成電路 "wikilink")
[Category:微處理器](https://zh.wikipedia.org/wiki/Category:微處理器 "wikilink")

1.
2.
3.
4.
5.
6.