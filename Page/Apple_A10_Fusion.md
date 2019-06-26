**Apple A10
Fusion**（融合）是[蘋果公司設計的](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[64位](https://zh.wikipedia.org/wiki/64位 "wikilink")[系統單晶片](https://zh.wikipedia.org/wiki/系統單晶片 "wikilink")（SoC）。這款晶片於2016年9月7日發佈，首先被搭載於iPhone
7和iPhone 7 Plus智能手機中。\[1\]\[2\]

## 概覽

A10
Fusion是基於ARM架構下，蘋果首款使用[big.LITTLE組態的四核心SoC](https://zh.wikipedia.org/wiki/ARM_big.LITTLE "wikilink")\[3\]，包括兩枚高效能核心及兩枚低功耗核心。\[4\]不過A10
Fusion採用就是big.LITTLE內核內建切換器方式（In-kernel
switcher，IKS）而不是高通驍龍820採用的HMP方式：一個低功耗核心和一個高效能核心組成一對，共用L2快取，作為一個虛擬CPU核心（在iOS內核中根據負載需要切換），每個虛擬CPU核心在同一時間點上只有高效能核心或低功耗核心在運作，因此在iOS中僅能看到兩顆處理器核心。\[5\]\[6\]

A10的高效能CPU核心代号为“飓风”（Hurricane），而低功耗CPU核心代號為「微風」（Zephyr），均為蘋果公司自行設計的ARMv8相容微架構。蘋果宣稱此晶片較上代在CPU效能提升了40%，在圖形運算提升了50%。

## 產品使用

  - [iPhone 7](https://zh.wikipedia.org/wiki/iPhone_7 "wikilink")
  - [iPhone 7 Plus](https://zh.wikipedia.org/wiki/iPhone_7 "wikilink")
  - [iPad (第六代)](https://zh.wikipedia.org/wiki/iPad_\(2018\) "wikilink")
  - [iPod touch (第七代)](https://www.apple.com/tw/ipod-touch/)

## 参考文献

[Category:微處理器](https://zh.wikipedia.org/wiki/Category:微處理器 "wikilink")
[Category:ARM架構](https://zh.wikipedia.org/wiki/Category:ARM架構 "wikilink")
[Category:苹果公司处理器](https://zh.wikipedia.org/wiki/Category:苹果公司处理器 "wikilink")

1.  <http://www.eetimes.com/document.asp?doc_id=1330418>
2.  <http://www.anandtech.com/show/10658/apple-announces-iphone-7-iphone-7-plus-a10-fusion-soc-new-camera-wide-color-gamut-preorders-start-sept-9th>
3.  ，注：蘋果公司一直否認該設計是ARM的big.LITTLE組態而是自行設計配置，但ARM公佈的big.LITTLE實現方式中有和蘋果公司描述的實現方式一致的方式（In-kernel
    switcher），參見[big.LITTLE\#內核內建切換器（CPU遷移）一章節](https://zh.wikipedia.org/wiki/big.LITTLE#內核內建切換器（CPU遷移） "wikilink")
4.
5.
6.  原載於[expreview.com](http://www.expreview.com/49677.html)