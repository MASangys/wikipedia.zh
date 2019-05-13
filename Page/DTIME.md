在[計算複雜度理論內](https://zh.wikipedia.org/wiki/計算複雜度理論 "wikilink")，**DTIME**（或者**TIME**）是一個[圖靈機的](https://zh.wikipedia.org/wiki/圖靈機 "wikilink")[計算資源或者](../Page/計算資源.md "wikilink")[計算時間的計量方式](https://zh.wikipedia.org/wiki/計算時間 "wikilink")。它代表一個"普通"有實體的電腦解決特定[計算問題](https://zh.wikipedia.org/wiki/計算問題 "wikilink")，使用特定[演算法](https://zh.wikipedia.org/wiki/演算法 "wikilink")，所要花費的時間。這個計算資源是最被廣泛研究的計算資源，因為它與真實世界所重視的資源（要花費多少時間才能計算出一個問題）息息相關。

**DTIME**這個資源常被使用來定義[複雜度類](https://zh.wikipedia.org/wiki/複雜度類 "wikilink")，亦即，可以在特定時間內解決的[決定性問題其集合](../Page/決定性問題.md "wikilink")。如果一個問題其輸入的大小為*n*，並且可要求*f(n)*的計算時間來解決，那我們說這問題在**DTIME(f(n))**（or
**TIME(f(n))**）裡面。這裡沒有限制必須使用多少**記憶體空間**（參見[計算資源](../Page/計算資源.md "wikilink")），但是有可能會限制一些其他的計算資源（像是可否使用[交替圖靈機](https://zh.wikipedia.org/wiki/交替圖靈機 "wikilink")）。

## DTIME內的複雜度類

許多重要的複雜度類都使用**DTIME**來定義，這些類別包含需要花費特定時間才能解決的問題，來作為分類。任何[適當複雜度函式](https://zh.wikipedia.org/wiki/適當複雜度函式 "wikilink")（proper
complexity
function）都可以用來定義複雜度類，但是只有特定的類別較有被研究的價值。概括說來，我們希望複雜度類對計算方式的變化來講足夠穩定，另外對副函式的合成來講會是封閉（close）的。

DTIME滿足[時間譜系理論](https://zh.wikipedia.org/wiki/時間譜系理論 "wikilink")，這代表在[漸進分析內較大的時間](https://zh.wikipedia.org/wiki/漸進分析 "wikilink")，所產生的時間複雜度類嚴格大於（大於且不等於）其他時間複雜度類。

有名的複雜度類**[P](../Page/P_\(複雜度\).md "wikilink")**代表所有可以在多項式內的**DTIME**解決的問題。我們可以正式定義為：

\[\mbox{P} = \bigcup_{k\in\mathbb{N}} \mbox{DTIME}(n^k)\]

**P**是包含了線性問題\(\mbox{DTIME}\left(n\right)\)的最小堅固（robust）複雜度類（AMS 2004,
Lecture 2.2, pg.
20）。另外，**P**也是我們認為"可以實際運算"的最大複雜度類（其他的複雜度類時間成長太快，一般認為計算是不實際的）。

一個大上很多的，使用DTIME的複雜度類是[EXPTIME](../Page/EXPTIME.md "wikilink")，包含了代表所有可以在[指數時間內以圖靈機解決的問題](https://zh.wikipedia.org/wiki/指數時間 "wikilink")。正式定義為：

\[\mbox{EXPTIME} = \bigcup_{k \in \mathbb{N} } \mbox{ DTIME } \left( 2^{ n^k } \right)\]。

我們可以用類似方法定義更大的複雜度類。因為時間譜系理論，這些複雜度類會組成嚴格的譜系（不會有哪個在上方者與下方相等）；換句話說，我們已知\(\mbox{P} \subsetneq \mbox{EXPTIME}\)，並且依此類推。

## 機器模型

實際操作以定義DTIME的機器，可以在不影響DTIME定義的前提之下，換成其他的某些機器。最後作結論時，常常會使用[多帶圖靈機](https://zh.wikipedia.org/wiki/多帶圖靈機 "wikilink")，特別是在定義某些很小的複雜度類時。更準確的說，一個多帶圖靈機不可能提供超過一般圖靈機平方時間以上的計算能力（Papadimitriou
1994, Thrm. 2.1）。

對時間進行常數倍數的加速並不影響DTIME內複雜度類的能力；因為常數倍數的加速永遠可以用增加圖靈機內狀態的方式達成。在Papadimitriou（1994,
Thrm. 2.2）內的陳述，對任何語言L，

  -
    令*L* \(\in\) **DTIME**(f(n))。對任何\(\epsilon\) \> 0, L \(\in\)
    **DTIME***(f'(n))*，則''f'(n) = \(\epsilon\) f(n) + n + 2.

## 推廣

使用一般圖靈機以外的機器，我們會得到許多DTIME之外的推廣與限制。舉例來說，如果我們使用[非確定型圖靈機](https://zh.wikipedia.org/wiki/非確定型圖靈機 "wikilink")，我們會得到名為[NTIME的計算資源](https://zh.wikipedia.org/wiki/NTIME "wikilink")。對於DTIME的能力與其他計算資源的關係，我們仍所知甚少。

## 參考資料

  -
  -
[Category:計算資源](https://zh.wikipedia.org/wiki/Category:計算資源 "wikilink")
[Category:複雜度類](https://zh.wikipedia.org/wiki/Category:複雜度類 "wikilink")