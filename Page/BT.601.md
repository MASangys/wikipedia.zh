**ITU-R Recommendation BT.601**，简称Rec.601或者**BT.601**（或者它的前身，CCIR
601），是1982年由CCIR（現已更換名稱為[ITU-R](https://zh.wikipedia.org/wiki/ITU-R "wikilink")）发布的一个[标准](../Page/标准.md "wikilink")，用于将[隔行](../Page/隔行扫描.md "wikilink")[數位視訊](https://zh.wikipedia.org/wiki/數位視訊 "wikilink")[模擬訊號進行](../Page/模擬信號.md "wikilink")[數位化編碼](https://zh.wikipedia.org/wiki/數位化 "wikilink")。\[1\]其包含編碼525行60Hz和625行50Hz訊號的方法，兩者都采用720亮度樣本和360色度樣本進行每行采樣。其描述的色彩解碼系統被稱爲[YCbCr
4:2:2](https://zh.wikipedia.org/wiki/色度抽样#4:2:2 "wikilink")。

Rec. 601視訊光柵制式已經在許多後來的標準當中大量使用，包括ISO/IEC
[MPEG以及ITU](../Page/MPEG.md "wikilink")-T
[H.26x壓縮制式](https://zh.wikipedia.org/wiki/ITU-T_VCEG "wikilink")。不過消費者應用的壓縮制式色彩編碼通常都會從4:2:2縮減到[4:2:0](https://zh.wikipedia.org/wiki/4:2:0 "wikilink")。

該標準在歷史上已經經歷過了多次修訂，其第七版（被稱爲BT.601-7）於2011年三月獲得批准，并於2011年10月正式發佈。

## 訊號制式

Rec.
601訊號可以被認爲事故數字編碼的模擬[分量視訊訊號](../Page/色差端子.md "wikilink")，因此采樣會包含水平、垂直同步以及消隱間隔的數據。無論幀速率如何，亮度的采樣頻率都會是13.5MHz。樣本一般使用[YCbCr域中的](../Page/YCbCr.md "wikilink")8或10位元[PCM來](../Page/脈衝編碼調變.md "wikilink")[量化樣本](../Page/量化_\(信号处理\).md "wikilink")。

對於每個8位元的亮度樣本，用於表示黑色的標稱值為16，白色為235。8位元的編碼提供了值爲1到15的[底量](https://zh.wikipedia.org/wiki/底量 "wikilink")（footroom），以便於容納瞬態訊號内容，例如[濾波下衝](https://zh.wikipedia.org/wiki/濾波下衝 "wikilink")。類似地，從236到254的值為[餘量](https://zh.wikipedia.org/wiki/餘量 "wikilink")（headroom），例如[濾波過衝](../Page/振鈴效應.md "wikilink")。特別地，0和255用於編碼同步脈衝，并且不允許出現在時間圖像區域之内。Cb和Cr樣本是[無符號的](../Page/移码.md "wikilink")，并且使用值128作爲中心色差值的編碼，例如對黑白灰區域的編碼。

## 主要色度

Rec.601對625行編碼和525行編碼系統指定了略有不同的原色，不過在早期的標準（BT.610-6之前）之中并沒有明確定義色彩的原色。

| 色彩空間          | [白點](https://zh.wikipedia.org/wiki/白点 "wikilink")（[D<sub>65</sub>](https://zh.wikipedia.org/wiki/D65光源 "wikilink")） | 原色            |
| ------------- | ------------------------------------------------------------------------------------------------------------------- | ------------- |
| X<sub>W</sub> | Y<sub>W</sub>                                                                                                       | x<sub>R</sub> |
| 625行          | 0.3127                                                                                                              | 0.3290        |
| 525行          | 0.3127                                                                                                              | 0.3290        |

Rec. 601的RGB色彩空間參數

## 傳輸特徵

Rec.601的[傳輸函數是](../Page/传递函数.md "wikilink")[非綫性的](../Page/非線性系統.md "wikilink")。其在0左右類似綫性，但在其餘的光强度範圍内轉變為[伽馬曲綫](https://zh.wikipedia.org/wiki/伽瑪校正 "wikilink")。

## 獎項

CCIR 因其開發Rec .601標準而獲得1982-83
[科技與工程艾美獎](https://zh.wikipedia.org/wiki/科技與工程艾美獎 "wikilink")。\[2\]

<references />

[Category:国际标准](https://zh.wikipedia.org/wiki/Category:国际标准 "wikilink")

1.
2.