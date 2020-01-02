> 本文内容由[Flake](https://zh.wikipedia.org/wiki/Flake)转换而来。


**Flake** 是一種新的[-{zh-hans:函数库;zh-hant:函式庫}-](../Page/函式庫.md "wikilink") ，用於在[KOffice](../Page/KOffice.md "wikilink") 2系列。Flake 提供"形狀"(shape)的基本概念。對於最終用戶，形狀表現一些內容，比如一塊圖片或文字。形狀可以以任何形式（正方形，圓形等），並包含任何類型的媒體，源於形狀負責繪製本身。 KOffice的所有的組件正在修改來使用Flake。\[1\]

## 功能

Flake的功能劃分Shapes之間可顯示的內容，和操作內容或用戶界面的工具。 不同的形狀可以創建以支持各種不同的內容，例如「文本形狀」在KWord用於支持 .txt 和[.odt格式](https://zh.wikipedia.org/wiki/ODF "wikilink")。而「Kchart 形狀」只需支持圖表有關文件的標準，如 .odc。形狀被包裝藉由一套工具來操縱內容的類型和顯示用戶界面的功能給用戶。這提供了一個應用程序的所有功能需要，也能方便地嵌入形狀到其他應用程序。形狀有需要時可以加載其他形狀，例如在圖像文件中文字的圖象形狀將加載處理圖像。

Flake的前身是KOffice 1系列中widget嵌入基礎的舊設計。widget嵌入了三個明顯的缺點，即widget總是方塊、無法旋轉和測量像素。所有這些問題Flake都被修正。嵌入文件的數據，現在可以縮放、旋轉和傾斜，可以是任何形式和單位來測量如毫米。Flake還改進了在一些領域中原來的設計，如它的可擴展性。例如，在2007年的Google's Summer of Code Marijn Kruisselbrink建立了基於[MusicXML](../Page/MusicXML.md "wikilink")的音樂符號的形狀和工具\[2\] 形狀可以知道其他形狀的位置，移動圖像通過文本將導致文字動態環繞圖像周圍\[3\]。 形狀甚至可以組合在一起，並以表現得像一個單一的形狀。Flake還支持輸出成[PDF格式](https://zh.wikipedia.org/wiki/PDF "wikilink")，並完全支持以[反鋸齒](../Page/反鋸齒.md "wikilink")方式畫出平滑的文字。\[4\]

## 參考資料

[Category:KDE](https://zh.wikipedia.org/wiki/Category:KDE "wikilink") [Category:KOffice](https://zh.wikipedia.org/wiki/Category:KOffice "wikilink")

1.  [The KOffice Project - Release Goals for KOffice 2.0](http://www.koffice.org/developer/releasegoals2.0.php)
2.  [Pencils Down for KOffice Summer of Code Students\!](http://dot.kde.org/1188249220/)
3.  [The Road to KDE 4: New KOffice Technologies](http://dot.kde.org/1168284615/)
4.  [Flake - KOffice](http://wiki.koffice.org/index.php?title=Flake)