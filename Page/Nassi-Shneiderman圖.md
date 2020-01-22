> 本文内容由[Nassi-Shneiderman圖](https://zh.wikipedia.org/wiki/Nassi-Shneiderman圖)转换而来。


[Multiple_Branching.jpg](https://zh.wikipedia.org/wiki/File:Multiple_Branching.jpg "fig:Multiple_Branching.jpg") **Nassi Shneiderman圖**，簡稱**NS圖**或**盒圖**，是[結構化編程中的一種](https://zh.wikipedia.org/wiki/結構化編程 "wikilink")\[1\]。NS圖是在1972年由Isaac Nassi及其學生Ben Shneiderman提出。\[2\]。NS圖類似[流程圖](https://zh.wikipedia.org/wiki/流程圖 "wikilink")，但所不同之處是NS圖可以表示程式的結構\[3\]。[DIN](https://zh.wikipedia.org/wiki/DIN "wikilink") 66261是NS圖的相關標準。

## 簡介

依，待處理的問題會分解成一些較小的副程式，最後只有簡單的敘述及[控制流程結構](https://zh.wikipedia.org/wiki/控制流程 "wikilink")，NS圖對應了上述的思維，利用巢狀的方塊來表示副程式。NS圖中沒有對應[Goto](../Page/Goto.md "wikilink")指令的表示，和[結構化編程中不使用GOTO的理念一致](https://zh.wikipedia.org/wiki/結構化編程 "wikilink")。NS圖的抽象層次接近結構化的程式碼，若程式重寫，NS圖就需重新繪製，不過NS圖在簡述程序及高階設計時相當方便。

NS圖幾乎是流程圖的[同構](https://zh.wikipedia.org/wiki/同構 "wikilink")，任何的NS圖都可以轉換為流程圖，而大部份的流程圖也可以轉換為NS圖。其中只有像[Goto](../Page/Goto.md "wikilink")指令或是[C語言中針對迴圈的break及continue指令無法用NS圖表示](https://zh.wikipedia.org/wiki/C語言 "wikilink")。

## 圖示

### 程序方塊

[Process_Block2.jpg](https://zh.wikipedia.org/wiki/File:Process_Block2.jpg "fig:Process_Block2.jpg") 程序方塊表示不需再分解的基本步驟，當流程進行到一程序方塊時，會進行程序方塊中的動作，然後移至下一個方塊。 {{-}}

### 分支方塊

[Two-Way_Branch.jpg](https://zh.wikipedia.org/wiki/File:Two-Way_Branch.jpg "fig:Two-Way_Branch.jpg") 分支方塊可分為二種，第一種是簡單的真/假分支方塊，對應`if`指令，會有二個對應的路徑，根據條件是否成立，決定後續執行的程式。 {{-}} [Multiple_Branching.jpg](https://zh.wikipedia.org/wiki/File:Multiple_Branching.jpg "fig:Multiple_Branching.jpg") 第二種是多重分支方塊，當使用類似C語言的`switch`指令，依運算式結果要從三個或三個以上的路徑中選擇一個時使用，此方塊一般會有許多對應的選項和其對應的子程序。 {{-}}

### 測試迴圈方塊

測試迴圈方塊允許程式執行一個或一組特定程序，一直到一特定條件滿足為止。測試迴圈方塊可分為二部份：左側長條狀部份和方塊上方（或下方的）的測試條件部份相連辺，測試迴圈方塊內部的方塊則是迴圈中可能要執行多次的程序。

[Test_First.jpg](https://zh.wikipedia.org/wiki/File:Test_First.jpg "fig:Test_First.jpg") 測試迴圈方塊可分為二種：先測試的迴圈方塊及後測試的迴圈方塊。二者的差異是條件判斷次序的先後。在先測試的迴圈方塊中，在執行迴圈前會先判斷特定條件是否成立，若不成立，才執行迴圈內的程序，之後再重新判斷條件是否成立，若不成立，再執行迴圈內的程序……，只要特定條件成立，就結束迴圈內的程序，繼續執行後續的程序。由於在迴圈開始時就判斷條件是否成立，有可能在迴圈內程序完全未執行過的情形下就結束迴圈，繼續執行後續程序。 {{-}} [Test_Last.jpg](https://zh.wikipedia.org/wiki/File:Test_Last.jpg "fig:Test_Last.jpg") 後測試的迴圈方塊會先執行一次迴圈內的程序，之後判斷特定條件是否成立，若不成立，才執行迴圈內的程序……。後測試的迴圈方塊中，迴圈內的程序至少會被執行一次。 {{-}}

## 参见

  - [DRAKON](https://zh.wikipedia.org/wiki/DRAKON "wikilink")

## 參考資料

### 外部連結

  - [*A short history of structured flowcharts (Nassi–Shneiderman Diagrams)*](http://www.cs.umd.edu/hcil/members/bshneiderman/nsd/), by Ben Shneiderman
  - [Atego's BlueRiverX32](http://www.atego.com/company/blue-river/) – Nassi–Shneiderman development environment for C and C++
  - [Structorizer](http://structorizer.fisch.lu) – Nassi–Shneiderman diagram-editor for [Linux](../Page/Linux.md "wikilink"), [Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink") & [Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink"), released under the [GNU General Public License](https://zh.wikipedia.org/wiki/GNU_General_Public_License "wikilink")
  - [Struktograaf](http://www.sichemsoft.nl/) – Nassi–Shneiderman diagram-editor for [Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink"), proprietary application (Dutch website)

[Category:计算机编程](https://zh.wikipedia.org/wiki/Category:计算机编程 "wikilink") [Category:图表](https://zh.wikipedia.org/wiki/Category:图表 "wikilink")

1.  Hans-Georg Fill (2009). *Visualisation for Semantic Information Systems*. p.32
2.  Ben Shneiderman (2003). *A short history of structured flowcharts (Nassi-Shneiderman Diagrams)*. Webdoc draft: May 27, 2003. ([Source](http://www.cs.umd.edu/hcil/members/bshneiderman/nsd/))
3.  Rolf Isermann (1988). *Automatic Control: Selected papers from the triennial world congress of the International Federation of Automatic Control : Munich, Federal Republic of Germany, 27–31 July 1987, Volume 10;Volume 14*. p.89