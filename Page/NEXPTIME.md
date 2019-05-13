在[計算複雜度理論內](https://zh.wikipedia.org/wiki/計算複雜度理論 "wikilink")，[複雜度類](https://zh.wikipedia.org/wiki/複雜度類 "wikilink")**NEXPTIME**（有時叫做**NEXP**）是一個[決定性問題的集合](../Page/決定性問題.md "wikilink")，包含可以使用[非確定型圖靈機](https://zh.wikipedia.org/wiki/非確定型圖靈機 "wikilink")，使用[O](https://zh.wikipedia.org/wiki/大O符號 "wikilink")(2<sup>*p*(n)</sup>)（這裡的*p*(n)是某個多項式）的時間可以解決的問題。另外這裡不限制空間的使用。

以[NTIME作定義](https://zh.wikipedia.org/wiki/NTIME "wikilink")

\[\mbox{NEXPTIME} = \bigcup_{k\in\mathbb{N}} \mbox{NTIME}(2^{n^k})\]

一個很重要的**NEXPTIME**-完全問題集合與簡潔電路（succinct
circuit）有關。簡潔電路是能以指數速率縮減的空間形容圖的一個機器。這個機器接收兩個頂點的號碼為輸入，輸出這兩個頂點是否有邊相連。如果有個問題，使用一般的圖表示法，像是連接矩陣，去解決時是個[NP-完全問題](https://zh.wikipedia.org/wiki/NP-完全 "wikilink")，那麼使用簡潔電路的表示來解決這個問題是**NEXPTIME**-完全，因為輸入的大小跟前者相比是成指數速率縮小。\[1\]舉個簡單的例子，使用簡潔電路的表示法找一張圖的[哈密頓圖是](https://zh.wikipedia.org/wiki/哈密頓圖 "wikilink")**NEXPTIME**-完全。

如果[**P** =
**NP**](https://zh.wikipedia.org/wiki/P/NP問題 "wikilink")，那麼**NEXPTIME**
= **EXPTIME**；更精確的說，**[E](../Page/E_\(複雜度\).md "wikilink")** ≠
**[NE](https://zh.wikipedia.org/wiki/NE_\(複雜度\) "wikilink")**，若且唯若存在一個[稀疏語言](../Page/稀疏語言.md "wikilink")，在**NP**並且不在**P**裡面。\[2\]

## 相關條目

  - [遊戲複雜度](https://zh.wikipedia.org/wiki/遊戲複雜度 "wikilink")

## 參考資料

<references/>

  - ,

[Category:複雜度類](https://zh.wikipedia.org/wiki/Category:複雜度類 "wikilink")

1.  C. Papadimitriou. *Computational Complexity* Addison-Wesley, 1994.
    ISBN 0-201-53082-1. Section 20.1, pg.492.
2.  Juris Hartmanis, Neil Immerman, Vivian Sewelson. Sparse Sets in
    NP-P: EXPTIME versus NEXPTIME. *Information and Control*, volume 65,
    issue 2/3, pp.158–181. 1985. [At ACM Digital
    Library](http://portal.acm.org/citation.cfm?id=808769)