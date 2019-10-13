**Intrinsity** 是美國一家高速晶片製造商, 位於美國德州奥斯汀市（Austin）。

## 历史

1993年成立 Exponential Technology ，從事研發[PowerPC](../Page/PowerPC.md "wikilink") 處理器，1997 年關閉公司。其研發團隊後來又成立EVSX，2000年改名為Intrinsity 。

Intrinsity 以發展enhanced RTL FastCore® 和“Fast14 多米諾（骨牌）邏輯”（Fast14 Domino Logic）设计聞名\[1\]。2009年韓國Samsung曾與Intrinsity 合作推出45nm 的[Hummingbird處理器](https://zh.wikipedia.org/wiki/Hummingbird "wikilink"), 這是當時最快的ARM Cortex-A8處理器，频率达到了1GHz, 比一般ARM處理器快上350MHz, 可以达到2000 DMIPS的效能。Hummingbird 還運用了multi-Vdd / multi-frequency （多电压/多频率）技術, 即使在1伏特最小供电电压下，仍能够保證晶片高速运行。Intrinsity 所擁有的技術被稱為 fast14 1-of-n domino逻辑(NDL)技术，[1-of-N編碼是指](../Page/One-hot.md "wikilink") N 種狀態的電壓值透過 N 個線路(wire)來傳遞給其他N-1個接地（grounded），這會優於以 log(N) 個線路的任意傳遞方式。這一方式可以減少信噪外曝（noise exposure）, 另一方面借用（borrow）複雜門（complicated gates）的延遲時鐘周期（delay clock cycle）來進行輸出邏輯的“低延迟”轉態，成为Cortex-A8 RTL内核中时序-关键路径（timing-critical paths）的巨集（macros）。NDL 提供多米诺逻辑与静态逻辑之间的低反应转换，速度提高25%-50%, 在获得高速運行表现的同时還能維持低功耗。

2012年4月蘋果公司終於買下Intrinsity\[2\]，一般認為是Apple力圖鞏固在行動裝置市場的領先優勢。事實上, 早在2008年蘋果即以2.78億美元收購另一晶片製造商[P.A. Semi公司](../Page/P.A._Semi.md "wikilink")，以建立晶片設計團隊，[賈伯斯本人表示](https://zh.wikipedia.org/wiki/賈伯斯 "wikilink")：“A4是我們所設計的最先進的晶片”。不過有专家推测，苹果[iPad的A](https://zh.wikipedia.org/wiki/iPad "wikilink")4芯片應該是以Intrinsity的芯片为基础。\[3\]Ars Technica曾指出，Intrinsity與三星電子共同發表的Hummingbird晶片幾乎就是[Apple A4的核心](../Page/Apple_A4.md "wikilink")。

ARM 與Intrnisity公司達成一項協議，將整合Intrinsity 的Fast14 1-of-N Domino Logic (NDL)技術於更多高效能應用上，例如Cortex-R4處理器擁有將近雙倍時脈。

## 客戶

  - [ATI](https://zh.wikipedia.org/wiki/ATI_Technologies "wikilink") – for reducing transistor count in [GPUs](https://zh.wikipedia.org/wiki/GPU "wikilink").\[4\]
  - [AMCC](https://zh.wikipedia.org/wiki/Applied_Micro_Circuits_Corporation "wikilink") – for [Power Architecture](https://zh.wikipedia.org/wiki/Power_Architecture "wikilink") based designs reaching 3 GHz.\[5\]
  - [LSI Corporation](https://zh.wikipedia.org/wiki/LSI_Corporation "wikilink") (then [Agere Systems](https://zh.wikipedia.org/wiki/Agere_Systems "wikilink")) – for high performance and low power [macrocell](https://zh.wikipedia.org/wiki/Macrocell_array "wikilink") design.\[6\]
  - [Samsung](https://zh.wikipedia.org/wiki/Samsung "wikilink") - for high-speed, low power processor cores.\[7\]

## 注釋

[Category:無廠半導體公司](https://zh.wikipedia.org/wiki/Category:無廠半導體公司 "wikilink")

[Category:苹果公司收购](https://zh.wikipedia.org/wiki/Category:苹果公司收购 "wikilink")

1.
2.
3.  竹居智久：〈iPad的心臟——A4核探秘〉，《日經技術在線》
4.  [](http://www.extremetech.com/article2/0,3973,1518127,00.asp)
5.
6.
7.  [](http://www.marketwire.com/press-release/Intrinsity-897850.html)