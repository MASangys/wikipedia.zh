**Steamroller微架構**，超微在發布AMD Bulldozer微架構時表示Bulldozer架構實現“一年一改進”，2011年發布首代Bulldozer架構，2012年發布第二代『增強型』Bulldozer架構（即Piledriver架構），2013年/2014年推出第三代Bulldozer架構（即Steamroller架構），2015年/2016年推出第四代Bulldozer架構（即Excavator架構）。\[1\]\[2\]

### 第三代Bulldozer架構：Steamroller

在2011年超微半導體已經提及到2013年第三代基於Bulldozer架構改進的新微架構以及其產品線，\[3\] 並稱之為“下世代Bulldozer”，使用28納米製程。\[4\]2011年9月21日，從超微官方洩漏的消息顯示這個使用28納米製程的“下世代Bulldozer”的微架構代號是“Steamroller”\[5\]\[6\]（中文：**AMD 壓路機**\[7\]）。Steamroller對於前一代AMD Piledriver微架構的主要改進在於[線程的](https://zh.wikipedia.org/wiki/線程 "wikilink")[並行性](https://zh.wikipedia.org/wiki/並行計算 "wikilink")。\[8\]基於AMD Steamroller微架構的處理器首發產品和目前的AMD Piledriver的一樣，是基於新微架構的[AMD Fusion](https://zh.wikipedia.org/wiki/AMD_Fusion "wikilink") A系列[APU](https://zh.wikipedia.org/wiki/APU "wikilink")，包括行動版本和桌上型版本，核心代號“Kaveri”。\[9\]預計2013年發布,已延後為2014年發布。

#### 主要特性

  - 和AMD Bulldozer/Piledriver一致的“M-SPACE”模組化設計；
  - 使用[格羅方德的](https://zh.wikipedia.org/wiki/格羅方德 "wikilink")28納米[SOI](../Page/SOI.md "wikilink") [HKMG製程](https://zh.wikipedia.org/wiki/HKMG "wikilink")
  - 優化線程[排程](../Page/排程.md "wikilink")方式，增強線程並行性以提升線程執行效率；\[10\]
  - 基於Steamroller架構的AMD Fusion，[顯示核心部分全面使用](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")[AMD Radeon HD 7900/7800/7700系列的GCN](../Page/AMD_Radeon_HD_7000.md "wikilink")（Graphics Core Next）架構，並且CPU和內建GPU將實現[統一記憶體定址空間](https://zh.wikipedia.org/wiki/定址空間 "wikilink")。\[11\]
  - 沿用的[處理器插座](../Page/CPU插座.md "wikilink")，即[Socket FM2+](../Page/Socket_FM2+.md "wikilink")（AMD Fusion）、仍然繼續使用，[晶片組除了可配套新發布的FCH晶片組](https://zh.wikipedia.org/wiki/晶片組 "wikilink")（AMD Fusion晶片組代號代號“Bolton”）；\[12\]
  - 已确认放弃发布除桌面Athlon II X4外的独立CPU 现已发布Athlon x4 860K 后者被认为是体质较差的A10-7850K屏蔽核显而来
  - 單核心同頻效能約Phenom II(K10.5架構)下的0.9倍
  - Steamroller將會採用radix-8 SRT浮點模塊，每週期運行指令將從目前的radix- 4單元的2條提高到3條。

Steamroller改變的是CPU中除法器（Divider）單元的設計 。 David M. Russinoff參與了Llano APU的設計，其DIV單元與前代K10沒有DIV硬件支持的設計有所不同，推土機繼承了K10的設計，FMAC（浮點累積乘單元）中的除法器功能有限。 現在Steamroller的設計類似Llano，當然不會是100%相同，因為它使用的是radix-8而非Llano的radix-4，每週期執行的指令數從2條​​提高到了3條。

對比Intel的前進的步伐，AMD其實還是慢了許多，因為Intel早在酷睿時代的Penryn架構上就已經採用radix-16除法器了，每週期指令數從原來的2條一下子提高到4條，數據延遲更低，浮點單​​元以及整數單元都可以從中受益。

#### 處理器產品

  - 消費級平台：
      - 第三代A系列APU桌上型版本，定位桌上型主流級平台。基於AMD Steamroller微架構的AMD Fusion A系列APU，核心代號“Kaveri”，其CPU部分將基於AMD Steamroller微架構，擁有一個至兩個Steamroller模組（每模組仍維持雙核心的設計）。也和現時的一樣分為A10、A8、A6和A4四大系列型號。
      - 第三代A系列APU行動版本則是主攻主流級和效能級筆記型電腦平台，AMD基於此將推出“Indus”行動平台。和桌上型版本的AMD Fusion A系列APU一樣的核心代號和系列型號劃分。\[13\]\[14\]
      - 基於Steamroller架構的第三代AMD FX系列，定位桌上型效能級平台，2014年上市，取代基於Piledriver架構的第二代FX系列。（已取消）
  - 而在企業級平台上，超微在2012年財政分析日上指出，在2014年基於AMD Steamroller架構的新版AMD Opteron系列處理器將取代基於AMD Piledriver架構之產品。（已取消）\[15\]

### 第四代Bulldozer架構：Excavator

在2014年的AMD路线图上，超微半導體表示『Excavator』（正體中文翻譯“**挖掘機**”）將會是第四代Bulldozer架構的代號，計劃2015年發布。\[16\]和Piledriver、Steamroller一樣，首發產品仍然是A系列[Fusion](https://zh.wikipedia.org/wiki/AMD_Fusion "wikilink") APU，將於2015年推出移动版；接著，AMD将放弃模块化设计，采用14/16nm finfet重新设计采用SMT多线程设计的处理器，代号“[Zen](../Page/AMD_Zen.md "wikilink")”。\[17\]

AMD 於[新加坡](../Page/新加坡.md "wikilink") Future of Compute 宣布 2015年行動[藍圖](https://zh.wikipedia.org/wiki/藍圖 "wikilink")，將以首款主打高效能的 [SoC](https://zh.wikipedia.org/wiki/SoC "wikilink") Carrizo 以及主流級的 Carrizo-L 兩款 [APU](https://zh.wikipedia.org/wiki/APU "wikilink") 做為主力，將目標集中在跨遊戲、生產力應用與 4K 體驗提供解決方案；Carrizo 將導入全新的 x86 架構核心 Excavator 以及次代 Radeon GPU 架構，並且具備 HSA 1.0 異質運算技術，也同時支援微軟的 Windows 10。\[18\]Carrizo APU 确定支持[DirectX](../Page/DirectX.md "wikilink") 12，而且是完全的Feature Level 12.0。\[19\]

## 下一代微架構

AMD正在研发全新的x86 CPU架构，代号为“Zen”瑞典网站SweClockers号称得到可靠消息，公布了Zen的多个细节，是和Intel类似的[同步多线程](https://zh.wikipedia.org/wiki/多线程#同步多執行緒 "wikilink")([SMT](https://zh.wikipedia.org/wiki/SMT "wikilink"))技术，要等到2016年第三季度推出。AMD自主研发的ARM架构“[K12](../Page/AMD_K12.md "wikilink")”也将在2016年诞生。Zen、K12虽然一个是[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")、一个是[ARM](https://zh.wikipedia.org/wiki/ARM "wikilink")，但是将会共享封装接口“[Socket AM4](../Page/Socket_AM4.md "wikilink")”，即彼此针脚兼容，可以互换。\[20\]

## 參考資料

## 外部來源

  - [Secrets of Steamroller: Digging deep into AMD’s next-gen core](http://www.extremetech.com/computing/177099-secrets-of-steamroller-digging-deep-into-amds-next-gen-core)

  - [HSAがついに完成形となるCarrizoアーキテクチャ](http://pc.watch.impress.co.jp/docs/column/kaigai/20141127_677727.html)

[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink") [Category:AMD處理器](https://zh.wikipedia.org/wiki/Category:AMD處理器 "wikilink")

1.  [Our Take on AMD FX](https://archive.is/20120707175240/blogs.amd.com/play/2011/10/13/our-take-on-amd-fx/) - Blogs.amd.com 2011-10-13
2.  [能否推倒“爱妻”?AMD FX推土机PK两代i7](http://diy.pconline.com.cn/cpu/reviews/1110/2557474_6.html) - 太平洋電腦網
3.
4.
5.
6.
7.  [打桩机版Opteron值得期待的地方……](http://news.mydrivers.com/1/233/233775.htm) - 驅動之家
8.
9.
10.
11. [APU明年实现真正的CPU/GPU统一寻址](http://news.mydrivers.com/1/231/231192.htm) - 驅動之家
12.
13.
14.
15.
16.
17.
18.
19.
20.