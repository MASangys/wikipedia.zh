> 本文内容由[UltraSPARC T1](https://zh.wikipedia.org/wiki/UltraSPARC_T1)转换而来。


**UltraSPARC T1**是[昇陽電腦](../Page/昇陽電腦.md "wikilink")所研發的[微處理器](https://zh.wikipedia.org/wiki/微處理器 "wikilink")，而處理器還在開發階段時的研發[代號稱為](https://zh.wikipedia.org/wiki/代號 "wikilink")「Niagara，[尼亞加拉瀑布](https://zh.wikipedia.org/wiki/尼亞加拉瀑布 "wikilink")」，之後在2005年11月14日正式研發完成並發表。UltraSPARC T1是一顆[多核心](https://zh.wikipedia.org/wiki/多核心 "wikilink")（執行核）、[多线程](../Page/多线程.md "wikilink")（多執行緒）的[CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")，且針對[伺服器運算的運用需求而強化省電設計](https://zh.wikipedia.org/wiki/伺服器 "wikilink")，在1.2GHz運作時脈下的典型用電為72W（Watt，瓦、瓦特）。

UltraSPARC T1衍生自UltraSPARC系列微處理器，它是昇陽電腦公司的第一顆多核多緒處理器，這顆處理器內可以有4個、6個、8個CPU核心，且每個核心最多可同時執掌、處理4個執行緒，如此UltraSPARC T1處理器在最理想狀態下可同時執行32個執行緒。

UltraSPARC T1的運作與昇陽電腦的高階對稱處理（SMP）系統很近似，它具有系統分割能力，可以將一個或數個核心切割成一個分區（Partition），然後在分區內執行一個或數個程序（Process）及執行緒（Thread），此外待執行的程序、執行緒也可以儘速派送或轉移給其他較閒餘的執行核心，進而增加整體執行效率。

## 核心

[Pipeline_Niagara.svg](https://zh.wikipedia.org/wiki/File:Pipeline_Niagara.svg "fig:Pipeline_Niagara.svg") UltraSPARC T1是針對多緒執行而設計的特殊處理器，它運用新的架構來獲取高執行效率，而不是為單一個執行核心加入更多智慧化、[最優化的心力設計](https://zh.wikipedia.org/wiki/最佳化 "wikilink")，昇陽的目標是在同一時間內盡可能執行、處理多個執行緒，使每個執行核心的執行管線能達到最大的使用率。

此種作法目前來看似乎成效不錯，現有的基準標竿測試證實UltraSPARC T1內的每個執行核心確實更有效率，這是與約2001年的UltraSPARC III相比，UltraSPARC III是一顆單核、單緒，且能完整執行SPARC v9[指令集的處理器](https://zh.wikipedia.org/wiki/指令集 "wikilink")。

UltraSPARC T1內雖有8個執行核心，但每個執行核心的結構複雜度並不如現有的高階處理器，而且每個執行核心也不具備[超序執行](https://zh.wikipedia.org/wiki/超序執行 "wikilink")（out-of-order execution，簡稱：OOO，也稱[亂序執行](https://zh.wikipedia.org/wiki/亂序執行 "wikilink")）的能力，也沒有配屬大容量的[快取記憶體](https://zh.wikipedia.org/wiki/快取記憶體 "wikilink")。單緒型的處理器極倚賴大容量的快取記憶體來提升執行效能，原因是：一旦在快取記憶體中抓取不到所需的資料（稱為：漏失，miss）時，就必須從主記憶體中去提取（fetch）資料，而增加快取記憶體的容量可減少漏失的機率，不過即便如此，漏失對效能依然是很大的衝擊影響。

相對的，UltraSPARC T1的核心是運用多執行緒的處理特性來避開快取漏失所造成的效能衝擊，當快取漏失發生時，核心會轉去處理另一個執行緒（在此假設還有其他可放置的待處理位置，每個核最多可執掌4個執行緒），在處理的同時，原先漏失的的需求資料，也會在這時候以背景作業的方式自外部主記憶體提取到處理器內。如此雖然每個執行緒的處理速度會較慢，但每個核心的整體處理進出量及運算利用率反而是大幅提高。而這也意味著快取漏失的衝擊影響被大幅降低，這樣UltraSPARC T1就能以較少的內建快取記憶體而仍可維持大量的進出處理執行效率，快取記憶體的容量不再需要大到得容納執行核心所需的所有資料或絕大多數的資料，只要能容納每個執行緒最近所漏失而必須提取至處理器內的資料。

## 目標市場

UltraSPARC T1有其獨到的功效能力使其能專注、適合在特有的市場，而不是用在高階財務數字運算及超高效能的應用，它是鎖定在網路方面的高需求伺服運算上，如高流量的網站伺服器，這類的伺服運算會用到大量的執行緒，且各執行緒間沒有相依性，或者是沒有太高的相依性，各緒相當的個別獨立。

不過，UltraSPARC T1的設計上也有個拘限，那就是整個處理器內僅有1個[浮點運算單元](https://zh.wikipedia.org/wiki/浮點運算單元 "wikilink")，且使用上由8個核心所共享，因此UltraSPARC T1不適合用來執行具有大量浮點運算的應用程式。然而，這顆處理器所想定的互联网服务器應用市場本就不常用到大量的浮點運算，昇陽電腦方面不认为在这个市场上這將成為一個問題。

1.  \- **附註：***文章雖如此翻譯，但我持有另一個看法，即是昇陽電腦為了及早推出UltraSPARC T1處理器，因此將重要性較次的設計項目加以精省，而浮點運算、加密運算皆在此列，所以UltraSPARC T1僅有8個整數運算核心，但卻沒有8個浮點數運算核心及8個加密運算核心，反而是只有1個浮點數運算核心與1個加密運算核心，而這些已在後續的新款處理器中得到補足強化。*

已经证实这些问题已经在升阳的下一代芯片UltraSPARC T2中得到解决。这款芯片将具有8个核，每个核具有8个硬件线程支持能力（这比UltraSPARC-T1多一倍）。同时，每个核心都具有独立的浮点运算单元。因此，这款芯片的浮点运算能力甚至可用于高性能计算领域（需要大量浮点运算支持）。

同为多核心处理器，Sun的Niagara系列芯片（UltraSPARC T1, T2）与IBM的多核心芯片Cell显著不同。首先，前者是对等结构，各核之间地位对等、没有差异；而后者是主从结构。其次，前者的每个核心均具有完整的SPARC V9指令集支持能力，均可独立执行任何指令，理论上二进制代码可以直接运行；后者只有一个Power核心作为主控，其余核心实质上都是矢量处理单元（VPE），只负责执行SIMD指令，如果要充分发挥其处理能力，应用程序必须以SIMD指令重写。以上不同造成了两款芯片面向不同应用的事实，即前者适合于处理无规则数据流，如网络服务器；后者适合大批量规则运算，如做为游戏机处理芯片。

## 研發代號：「Rock」

UltraSPARC T1是針對單顆CPU的系統所設計，所以它不具備對稱處理（SMP）能力，即由UltraSPARC T1组成的系统，最多只能有一颗多核心芯片。而未來昇陽的CMT UltraSPARC處理器，如Rock（研發代號）將會是多顆處理晶片的伺服器架構，多颗多核心Rock芯片将能组成[对称多处理机](https://zh.wikipedia.org/wiki/对称多处理机 "wikilink")（SMP）系统，进一步扩展运算能力。Rock處理器將鎖定在傳統資料運算工作，如資料庫執行。因此，Rock看來將成為昇陽電腦在SMP架構處理器上的新接替，預計會取代現有的UltraSPARC III、UltraSPARC IV。

與UltraSPARC T1不同的，Rock重視且強化浮點運算的能力。另外根據昇陽電腦的透露，Rock上將具有一種[Hardware Scout](https://zh.wikipedia.org/wiki/Hardware_Scout "wikilink")（硬件侦测，硬體偵察）功能，是以多執行緒式的硬體線路設計讓Rock具有[数据預取](https://zh.wikipedia.org/wiki/数据預取 "wikilink")（prefetching）的能力。

此外，Rock不是用來接替UltraSPARC T1，昇陽電腦已公開其[UltraSPARC T2](../Page/UltraSPARC_T2.md "wikilink")（Niagara 2）處理器的計畫，Niagara 2將與UltraSPARC T1相同，皆訴求在網路型運算。

## UltraSPARC T2

[UltraSPARC T2是昇陽電腦所研發的](../Page/UltraSPARC_T2.md "wikilink") 8 核心處理器，每個核心最高可執掌8個執行緒，即可同時執行64個執行緒；且每個核心皆會配屬到1個浮點運算單元，即是一顆T2處理器內會有8個浮點運算單元。

## 開放原碼

2006年3月21日，昇陽電腦將UltraSPARC T1的相關原始程式碼，以[GPL](https://zh.wikipedia.org/wiki/GPL "wikilink")（GNU General Public License）授權的方式加以公開公佈，而公開的項目包括：

  - UltraSPARC T1在邏輯電路設計上的原始程式碼（使用[Verilog](../Page/Verilog.md "wikilink")語言）
  - 驗證套件與電路功效的模擬推演模型
  - 指令集的規格（2005年的UltraSPARC架構版本）
  - Solaris 10作業系統在推演模擬之用時的系統映象檔（Image）

## 操作系统支持

  - [Solaris](../Page/Solaris.md "wikilink")
  - [Ubuntu](../Page/Ubuntu.md "wikilink")

## 外部連結

  - [在昇陽電腦的官方正式網站上，關於UltraSPARC T1處理器的資訊](http://www.sun.com/processors/UltraSPARC-T1/)
  - [昇陽電腦發表八核處理器](https://web.archive.org/web/20060118024728/http://www.reed-electronics.com/electronicnews/article/CA6283640.html) – 2005年11月14日，作者：Jessica Davis，出處：Electronic News
  - [OpenSPARC](http://www.opensparc.org/) – 昇陽電腦的OpenSPARC網站
  - [UltraSPARC T1 Project home](https://web.archive.org/web/20060421101811/http://opensparc-t1.sunsource.net/) - UltraSPARC T1專案網站

[Category:Sun微处理器](https://zh.wikipedia.org/wiki/Category:Sun微处理器 "wikilink") [Category:开源微处理器](https://zh.wikipedia.org/wiki/Category:开源微处理器 "wikilink")