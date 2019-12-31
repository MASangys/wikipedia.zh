> 本文内容由[PDF控制](https://zh.wikipedia.org/wiki/PDF控制)转换而来。


[Pseudo-derivative_feedback_controller.png](https://zh.wikipedia.org/wiki/File:Pseudo-derivative_feedback_controller.png "fig:Pseudo-derivative_feedback_controller.png") [PI_controller.svg](https://zh.wikipedia.org/wiki/File:PI_controller.svg "fig:PI_controller.svg") **偽微分回授控制**（pseudo-derivative feedback control）\[1\]，簡稱為**PDF控制** ，是在[自動控制中的名詞](https://zh.wikipedia.org/wiki/自動控制 "wikilink")，是Phelan在1977年在其書《Automatic Control Systems》中提到的控制架構\[2\]，其架構類似[PI控制器](https://zh.wikipedia.org/wiki/PI控制器 "wikilink")，但若控制一階系統時，控制器及系統的整體轉換函數沒有[零點](https://zh.wikipedia.org/wiki/零點 "wikilink")（若使用PI控制器，整體轉換函數會有一個零點）\[3\]，常用在[運動控制](../Page/運動控制.md "wikilink")中\[4\]。

PDF控制器其架構類似[PI控制器](https://zh.wikipedia.org/wiki/PI控制器 "wikilink")，但是目標值和[回授的誤差](https://zh.wikipedia.org/wiki/回授 "wikilink")（derivative）只作為I（積分）控制器的輸入，誤差不是P（比例）控制器的輸入，改用回授作為P（比例）控制器的輸入。因為誤差不是比例控制器的輸入，因此被Phelan稱為「偽誤差回授」\[5\]。

## PDFF控制

[Pseudo-derivative_feedback_forward_controller.png](https://zh.wikipedia.org/wiki/File:Pseudo-derivative_feedback_forward_controller.png "fig:Pseudo-derivative_feedback_forward_controller.png") 後來也有在PDF控制中加入了目標值的前饋控制，即為**PDFF控制**（Pseudo-derivative feedback forward control），可以提昇控制系統的[剛性](https://zh.wikipedia.org/wiki/剛性 "wikilink")。

## 注释

## 參考資料

[分類:控制理论](https://zh.wikipedia.org/wiki/分類:控制理论 "wikilink") [分類:自動控制](https://zh.wikipedia.org/wiki/分類:自動控制 "wikilink") [分類:控制器](https://zh.wikipedia.org/wiki/分類:控制器 "wikilink")

1.
2.
3.
4.
5.  [Pseudo-Derivative Feedback Control](http://stablesimulations.com/technotes/pdf.html)