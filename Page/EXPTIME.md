在[計算複雜性理論](../Page/計算複雜性理論.md "wikilink")裡面，**EXPTIME**（有時稱作**EXP**）這個[複雜度類是一些](https://zh.wikipedia.org/wiki/複雜度類 "wikilink")[決定型問題的](https://zh.wikipedia.org/wiki/決定型問題 "wikilink")[集合](https://zh.wikipedia.org/wiki/集合 "wikilink")，這些問題可以使用[圖靈機在](https://zh.wikipedia.org/wiki/圖靈機 "wikilink")[O](https://zh.wikipedia.org/wiki/大O符號 "wikilink")(2<sup>*p*(*n*)</sup>)的時間內解決，這裡的*p*(*n*)代表的是*n*的某個多項式。

用[DTIME](../Page/DTIME.md "wikilink")來定義，則是

\[\mbox{EXPTIME} = \bigcup_{k \in \mathbb{N} } \mbox{ DTIME } \left( 2^{ n^k } \right)\]

我們已經知道

  -
    [P](../Page/P_\(複雜度\).md "wikilink") \(\subseteq\) [NP](../Page/NP_\(複雜度\).md "wikilink") \(\subseteq\) [PSPACE](../Page/PSPACE.md "wikilink") \(\subseteq\) EXPTIME \(\subseteq\) [NEXPTIME](../Page/NEXPTIME.md "wikilink") \(\subseteq\) [EXPSPACE](../Page/EXPSPACE.md "wikilink")

另外，根據[時間譜系理論](https://zh.wikipedia.org/wiki/時間譜系理論 "wikilink")（time hierarchy theorem）以及[空間譜系理論](https://zh.wikipedia.org/wiki/空間譜系理論 "wikilink")（space hierarchy theorem），

  -
    P \(\subsetneq\) EXPTIME 且 NP \(\subsetneq\) NEXPTIME 且 PSPACE \(\subsetneq\) EXPSPACE

所以至少第一條包含關係中，前三個包含關係中的一個，以及後三個包含關係中的一個，必然是完整包含（沒有相等可能），但是我們還不知道那一個是。多數人相信這一些複雜度類全部都不相等。另外我們已知如果，則 [NEXPTIME](../Page/NEXPTIME.md "wikilink")}}，這裡的NEXPTIME是在指數時間內可以使用[非確定型圖靈機解決的問題](https://zh.wikipedia.org/wiki/非確定型圖靈機 "wikilink")。\[1\]更精確的說，**EXPTIME** ≠ **NEXPTIME**若且唯若存在一個[稀疏語言](../Page/稀疏語言.md "wikilink")，在**NP**裡面且不在**P**內。\[2\]

EXPTIME也可以用空間的方式來定義，等同於*APSPACE*這個複雜度類。APSPACE的意思是包含了所有可以用[交替式圖靈機在多項式空間內解決的問題](https://zh.wikipedia.org/wiki/交替式圖靈機 "wikilink")。這種定義方式也是一種看出PSPACE \(\subseteq\) EXPTIME的方式，因為已知交替式圖靈機至少跟確定型圖靈機計算能力一樣。\[3\]

EXPTIME是[指數譜系](https://zh.wikipedia.org/wiki/指數譜系 "wikilink")（exponential hierarchy）內的其中一個複雜度類。[2-EXPTIME](../Page/2-EXPTIME.md "wikilink")這個複雜度類則使用類似EXPTIME的定義方式，但是使用[雙指數函數](https://zh.wikipedia.org/wiki/雙指數函數 "wikilink")（Double exponential function）的時間限制\(2^{2^n}\)。使用類似方式可以類推出更高的時間上限。

## EXPTIME-完全

我們說一個問題是EXPTIME-完全，若這問題本身在EXPTIME內，且對任何EXPTIME內的問題，均存在一個[多項式時間歸約的方法可以歸約成此問題](https://zh.wikipedia.org/wiki/多項式時間歸約 "wikilink")。換句話說，存在一個多項式時間的演算法，將原來題目的輸入對應到另一個問題的輸入，並且能維持答案相同。EXPTIME-完全問題也可以想做是EXPTIME內最難的問題。這裡應該注意到，我們並不知道NP是否等同P，但是我們確實知道EXPTIME-完全問題不包含在P內；根據[時間譜系理論](https://zh.wikipedia.org/wiki/時間譜系理論 "wikilink")，我們已經證實這些問題不可能在多項式時間內解決。

在[可計算性理論內](https://zh.wikipedia.org/wiki/可計算性理論 "wikilink")，一個基本的非決定性問題是一個決定型[圖靈機](https://zh.wikipedia.org/wiki/圖靈機 "wikilink")（DTM, deterministic turing machine）是否能結束運作（一般說的halting problem，停機問題）。有一個此問題的簡易版，詢問一個DTM是否能在k步裡面結束運作，是EXPTIME-完全中一個基本問題。這問題是在EXPTIME裡面，因為單純使用圖靈機去模擬需要O(*k*)的時間，而輸入實際的資料晾大小則是(log *k*)。\[4\]然後，我們知道這是EXPTIME-完全問題。因為，用比較粗略的說法，我們可以使用這個問題，去決定一個機器是否在指數時間內可以解決一個EXPTIME問題。如果我們將一模一樣的問題，步驟的數目使用一進位表示，這問題則變成[P-完全](../Page/P-完全.md "wikilink")。

其他EXPTIME-完全問題的範例包括了[推廣的](https://zh.wikipedia.org/wiki/推廣遊戲 "wikilink")[西洋棋](https://zh.wikipedia.org/wiki/西洋棋 "wikilink"),\[5\] [國際跳棋](https://zh.wikipedia.org/wiki/國際跳棋 "wikilink"),\[6\]以及[圍棋](https://zh.wikipedia.org/wiki/圍棋 "wikilink")（使用日本的規則）。\[7\]這些遊戲之所以可能是EXPTIME-完全，因為這些遊戲可以維持相對板子大小而言，可能移動方式是指數成長。在圍棋的例子，日本的規則足夠困難到暗示了其EXPTIME-完整性，但是我們並不知道比較簡單的美國或者中國規則是否還是EXPTIME-完全。

相對的，可以維持移動步數成長跟棋盤大小成多項式成長的推廣遊戲一般是[PSPACE-完全](https://zh.wikipedia.org/wiki/PSPACE-完全 "wikilink")。對指數成長但是非重複部份是自動處理的遊戲，這也是一樣的。

另一系列的EXPTIME-完全問題與簡潔電路（succinct circuit）相關。簡潔電路是用來以指數速率減少的空間，來形容一些種類的圖（gragh），的簡單機器。這機器接受兩個點的編號作為輸入值，輸出這兩個點是否相連。對許多使用自然的圖表示法（像是[鄰接矩陣](https://zh.wikipedia.org/wiki/鄰接矩陣 "wikilink")）時，與圖相關的[P-完全](../Page/P-完全.md "wikilink")問題，換成使用簡潔電路表來解決相同的問題，會變成EXPTIME-完全，因為輸入值跟圖大小相比是以指數速率減少；但是要完整證出這個問題，需要一些比較複雜的證明，因為簡潔電路只能用來定義部份的圖。\[8\]

## 參考資料

<references/>

[Category:複雜度類](https://zh.wikipedia.org/wiki/Category:複雜度類 "wikilink")

1.   Section 20.1, page 491.
2.  Juris Hartmanis, Neil Immerman, Vivian Sewelson. Sparse Sets in NP-P: EXPTIME versus NEXPTIME. *Information and Control*, volume 65, issue 2/3, pp.158–181. 1985. [At ACM Digital Library](http://portal.acm.org/citation.cfm?id=808769)
3.  Papadimitriou (1994), section 20.1, corollary 3, page 495.
4.   Slide 21.
5.
6.
7.
8.  Papadimitriou (1994), section 20.1, page 492.