[電子振盪器主要利用LC](https://zh.wikipedia.org/wiki/振盪器 "wikilink")[儲能電路設計](https://zh.wikipedia.org/wiki/儲能電路 "wikilink")。所謂的LC儲能電路，是由[電感和](https://zh.wikipedia.org/wiki/電感 "wikilink")[電容](../Page/電容.md "wikilink")組成用來在振盪過程中儲存能量的電路。但是電子振盪器不一定要使用電感，而在振盪電路中的頻率選擇部分可以只用[電阻和電容構成](https://zh.wikipedia.org/wiki/電阻 "wikilink")。這種只用電阻和電容構成的振盪器稱為**RC振盪器**。

\== 類型 == 依輸出波型是否為正弦波，可區分為[弦波振盪器與](https://zh.wikipedia.org/wiki/弦波振盪器 "wikilink")[非正弦波振盪器](https://zh.wikipedia.org/wiki/非正弦波振盪器 "wikilink")。

\=== 弦波振盪器 === 弦波振盪器目前依架構可區分為[Wien-Bridge振盪器與](https://zh.wikipedia.org/wiki/Wien-Bridge振盪器 "wikilink")[雙T振盪器](https://zh.wikipedia.org/wiki/雙T振盪器 "wikilink")。

要產生無失真的[正弦波](https://zh.wikipedia.org/wiki/正弦波 "wikilink")，RC振盪器必須加上振幅控制。常見的設計只有在回授電路中使用[白熾燈](../Page/白熾燈.md "wikilink")，這樣的振盪器利用了[鎢絲的](https://zh.wikipedia.org/wiki/鎢 "wikilink")[電阻與溫度成正比上升的特性](https://zh.wikipedia.org/wiki/電阻 "wikilink")。在燈絲的溫度還不足以發亮之前，這樣的設計運作良好：在回授電路中昇高的電壓訊號使得流過燈絲的電流昇高，電流量上昇使燈絲盪度提高進而使得燈絲的電阻提高，在回授電路中提高的電阻便可以減弱回授訊號的強度，把振盪器的訊號限制在[線性區間](https://zh.wikipedia.org/wiki/線性區間 "wikilink")（也就是避免產生[截波](https://zh.wikipedia.org/wiki/截波 "wikilink")）。惠普的HP200型振盪器就採用了這種技術。

更精密的振盪器會量測輸出訊號的大小做為[回授以控制振盪器中](https://zh.wikipedia.org/wiki/回授 "wikilink")[壓控放大器的增益](https://zh.wikipedia.org/wiki/壓控放大器 "wikilink")。若是振幅偵測的[頻率響應是完全水平的](https://zh.wikipedia.org/wiki/頻率響應 "wikilink")，則振幅[負回授的設計可以確保不論設定工作在任何輸出頻率下振盪器的輸出訊號固定振幅](https://zh.wikipedia.org/wiki/負回授 "wikilink")。


\====[Wien-Bridge振盪器](https://zh.wikipedia.org/wiki/Wien-Bridge振盪器 "wikilink")==== 由兩組RC電路所組成(一組串聯RC電路，一組並聯RC電路)。
可配合[可變電容調整輸出訊號頻率](https://zh.wikipedia.org/wiki/可變電容 "wikilink")，因此常用於[音頻訊號產生器](https://zh.wikipedia.org/wiki/音頻訊號產生器 "wikilink")。
如：[惠普](../Page/惠普.md "wikilink")公司的原型HP200音頻振盪器就是使用Wien-Bridge振盪器。


#### [雙T振盪器](https://zh.wikipedia.org/wiki/雙T振盪器 "wikilink")

並聯兩個"T型"的RC電路而成。
第一個"T型"電路是R-C-R的[低通濾波器](https://zh.wikipedia.org/wiki/低通濾波器 "wikilink")，第二個"T型"電路是C-R-C的[高通濾波器](https://zh.wikipedia.org/wiki/高通濾波器 "wikilink")。
這兩個電路橋接在一起選擇出振盪器所需要的頻率。


### 非正弦波振盪器

有不少RC振盪器輸出的訊號不是弦波，許多非正弦波RC振盪器只使用一組RC電路。 如： [複振器](../Page/複振器.md "wikilink") [555振盪電路](https://zh.wikipedia.org/wiki/555振盪電路 "wikilink")

[Category:振荡器](https://zh.wikipedia.org/wiki/Category:振荡器 "wikilink")