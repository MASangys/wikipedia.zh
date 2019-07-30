在[計算複雜度理論內](https://zh.wikipedia.org/wiki/計算複雜度理論 "wikilink")，**EXPSPACE**是一個包含可以在[O](https://zh.wikipedia.org/wiki/大O符號 "wikilink")(2<sup>*p*(*n*)</sup>)空間內解決的[決定性問題](../Page/決定性問題.md "wikilink")的[集合](https://zh.wikipedia.org/wiki/集合 "wikilink")，這裡的*p(n)*是某個n的多項式。（有些作者認為*p*(*n*）應該限制為[線性函數](../Page/線性函數.md "wikilink")，但是多數的人把這這樣的複雜度類稱作**ESPACE**。)如果我們使用非決定性圖靈機，我們會得到複雜度類**NEXPSPACE**。根據[薩維奇定理](https://zh.wikipedia.org/wiki/薩維奇定理 "wikilink")，這個複雜度類等同**EXPSPACE**。

以**[DSPACE](https://zh.wikipedia.org/wiki/DSPACE "wikilink")**和**[NSPACE](../Page/NSPACE.md "wikilink")**表示：

\[\mbox{EXPSPACE} = \bigcup_{k\in\mathbb{N}} \mbox{DSPACE}(2^{n^k}) = \bigcup_{k\in\mathbb{N}} \mbox{NSPACE}(2^{n^k})\]

我們說一個問題是**EXPSPACE-完全**，如果這問題本身在**EXPSPACE**內，而且存在多項式多對一歸約，令所有在**EXPSPACE**內的題目都可以歸約成這個題目。換句話說，存在一個多項式時間的[演算法可以將一個狀況換成其他題目的另一個狀況](https://zh.wikipedia.org/wiki/演算法 "wikilink")，並且答案一樣。**EXPSPACE-完全**的題目也可以想做是**EXPSPACE**裡面最難的題目。

**EXPSPACE**是**[PSPACE](../Page/PSPACE.md "wikilink")**，**[NP](../Page/NP_\(複雜度\).md "wikilink")**，和**[P](../Page/P_\(複雜度\).md "wikilink")**的嚴格母集（前者包含且不等於後者）。並且也被相信是**[EXPTIME](../Page/EXPTIME.md "wikilink")**的嚴格母集。

一個**EXPSPACE-完全**的例子是分辨兩個[正規表式是否是一樣的語言這個問題](https://zh.wikipedia.org/wiki/正規表式 "wikilink")。這裡的表示限制使用四種操作子：聯集，[串街](https://zh.wikipedia.org/wiki/串街 "wikilink")，[克萊尼星號](https://zh.wikipedia.org/wiki/克萊尼星號 "wikilink")（可以是零個或多個重複的表示式），和平方（兩份表示式）。\[1\]

如果我們排除星號，則這個問題變成**[NEXPTIME](../Page/NEXPTIME.md "wikilink")-完全**，這個複雜度類有點類似**EXPTIME-完全**，不過使用的機器是[非決定性圖靈機而非一般的圖靈機](https://zh.wikipedia.org/wiki/非決定性圖靈機 "wikilink")。

L. Berman在1980年證明了，證明或反證任何有關[實數並且牽涉](https://zh.wikipedia.org/wiki/實數 "wikilink")[加法](../Page/加法.md "wikilink")和比較大小（但不牽涉[乘法](../Page/乘法.md "wikilink")）的[一階陳述](https://zh.wikipedia.org/wiki/一階邏輯 "wikilink")，這個問題在**EXPSPACE**內。

## 相關頁面

  - [遊戲複雜度](https://zh.wikipedia.org/wiki/遊戲複雜度 "wikilink")

## 參考資料

<references />

  - L. Berman *The complexity of logical theories*, Theoretical Computer Science 11:71-78, 1980.

  - Section 9.1.1: Exponential space completeness, pp.313–317. Demonstrates that determining equivalence of regular expressions with exponentiation is EXPSPACE-complete.

[Category:複雜度類](https://zh.wikipedia.org/wiki/Category:複雜度類 "wikilink")

1.  Meyer, A.R. and [L. Stockmeyer](https://zh.wikipedia.org/wiki/Larry_Stockmeyer "wikilink"). [The equivalence problem for regular expressions with squaring requires exponential space](http://people.csail.mit.edu/meyer/rsq.pdf). *13th IEEE Symposium on Switching and Automata Theory*, Oct 1972, pp.125–129.