[電子振盪器主要利用LC](../Page/振盪器.md "wikilink")[儲能電路設計](../Page/儲能電路.md "wikilink")。所謂的LC儲能電路，是由[電感和](../Page/電感.md "wikilink")[電容組成用來在振盪過程中儲存能量的電路](../Page/電容.md "wikilink")。但是電子振盪器不一定要使用電感，而在振盪電路中的頻率選擇部分可以只用[電阻和電容構成](../Page/電阻.md "wikilink")。這種只用電阻和電容構成的振盪器稱為**RC振盪器**。

\== 類型 ==
依輸出波型是否為正弦波，可區分為[弦波振盪器與](../Page/弦波振盪器.md "wikilink")[非正弦波振盪器](../Page/非正弦波振盪器.md "wikilink")。

\=== 弦波振盪器 ===
弦波振盪器目前依架構可區分為[Wien-Bridge振盪器與](../Page/Wien-Bridge振盪器.md "wikilink")[雙T振盪器](../Page/雙T振盪器.md "wikilink")。

要產生無失真的[正弦波](../Page/正弦波.md "wikilink")，RC振盪器必須加上振幅控制。常見的設計只有在回授電路中使用[白熾燈](../Page/白熾燈.md "wikilink")，這樣的振盪器利用了[鎢](../Page/鎢.md "wikilink")[絲的](../Page/絲.md "wikilink")[電阻與溫度成正比上升的特性](../Page/電阻.md "wikilink")。在燈絲的溫度還不足以發亮之前，這樣的設計運作良好：在回授電路中昇高的電壓訊號使得流過燈絲的電流昇高，電流量上昇使燈絲盪度提高進而使得燈絲的電阻提高，在回授電路中提高的電阻便可以減弱回授訊號的強度，把振盪器的訊號限制在[線性區間](../Page/線性區間.md "wikilink")（也就是避免產生[截波](../Page/截波.md "wikilink")）。惠普的HP200型振盪器就採用了這種技術。

更精密的振盪器會量測輸出訊號的大小做為[回授以控制振盪器中](../Page/回授.md "wikilink")[壓控放大器的增益](../Page/壓控放大器.md "wikilink")。若是振幅偵測的[頻率響應是完全水平的](../Page/頻率響應.md "wikilink")，則振幅[負回授的設計可以確保不論設定工作在任何輸出頻率下振盪器的輸出訊號固定振幅](../Page/負回授.md "wikilink")。


\====[Wien-Bridge振盪器](../Page/Wien-Bridge振盪器.md "wikilink")====
由兩組RC電路所組成(一組串聯RC電路，一組並聯RC電路)。
可配合[可變電容調整輸出訊號頻率](../Page/可變電容.md "wikilink")，因此常用於[音頻訊號產生器](../Page/音頻訊號產生器.md "wikilink")。
如：[惠普公司的原型HP](../Page/惠普.md "wikilink")200音頻振盪器就是使用Wien-Bridge振盪器。


#### [雙T振盪器](../Page/雙T振盪器.md "wikilink")

並聯兩個"T型"的RC電路而成。
第一個"T型"電路是R-C-R的[低通濾波器](../Page/低通濾波器.md "wikilink")，第二個"T型"電路是C-R-C的[高通濾波器](../Page/高通濾波器.md "wikilink")。
這兩個電路橋接在一起選擇出振盪器所需要的頻率。

\=== 非正弦波振盪器 === 有不少RC振盪器輸出的訊號不是弦波，許多非正弦波RC振盪器只使用一組RC電路。 如：
[複振器](../Page/複振器.md "wikilink")
[555振盪電路](../Page/555振盪電路.md "wikilink") [da:Elektronisk
oscillator](../Page/da:Elektronisk_oscillator.md "wikilink")
[de:Oszillatorschaltung](../Page/de:Oszillatorschaltung.md "wikilink")
[pt:Oscilador
electrónico](../Page/pt:Oscilador_electrónico.md "wikilink")

[Category:振荡器](https://zh.wikipedia.org/wiki/Category:振荡器 "wikilink")