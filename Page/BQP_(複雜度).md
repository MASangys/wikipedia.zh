在[計算複雜度理論內](https://zh.wikipedia.org/wiki/計算複雜度理論 "wikilink")，**有限錯誤量子多項式時間**（，）是一個決定性問題的複雜度類，並且其內的問題可以在多項式時間內以量子電腦解決，錯誤的機率小於1/3。BQP也可以視為是複雜度類[BPP的量子電腦版](https://zh.wikipedia.org/wiki/BPP "wikilink")。

換句話說，對BQP裡面的問題，存在一個使用量子電腦的[演算法](https://zh.wikipedia.org/wiki/演算法 "wikilink")（[量子演算法](https://zh.wikipedia.org/wiki/量子演算法 "wikilink")）花費多項式時間運作，並且有很高的機率回答正確的答案。對任何狀況，回答錯誤答案的機率小於三分之一。

與其他「有限錯誤」的機率演算法相同，這裡所提到的1/3是一個比較隨意的定義。如果原本演算法的錯誤機率比較大，我們可以運作多次該演算法，然後取多數回答正確的答案以取得比較高的準確率。詳細的分析顯示錯誤的下限可以高達1/2 − *n*<sup>−*c*</sup>或者低達2<sup>−*n<sup>c</sup>*</sup>，所包含的題目範圍均不會有變化。這裡*c*是一個正數的常數，*n*是輸入的長度。

## 量子計算

演算法所使用[量子位元](../Page/量子位元.md "wikilink")的數目可以為輸入大小的任何[多項式](../Page/多項式.md "wikilink")。舉例來說，因式分解*n*位元整數的演算法使用大約2'n'個量子位元（參考[秀爾演算法](../Page/秀爾演算法.md "wikilink")）。

一般狀況之下，量子電腦的計算停止於[量子測量](../Page/量子測量.md "wikilink")上面。測量行為會導致量子位元[塌縮到其中一個](https://zh.wikipedia.org/wiki/波函數塌縮 "wikilink")[量子態](../Page/量子態.md "wikilink")上。我們可以說量子位元在經過運算之後，最終的測量會讓他有極高的機會出現正確的答案。

量子電腦受到許多矚目，因為有許多問題已知在**BQP**內，但是一般認為在**P**之外（換句話說，使用量子電腦比起一般電腦，能大幅縮短計算這些問題的時間）。一些著名的例子有：

  - [整數分解](https://zh.wikipedia.org/wiki/整數分解 "wikilink")（參考[秀爾演算法](../Page/秀爾演算法.md "wikilink")）\[1\]
  - [離散對數](https://zh.wikipedia.org/wiki/離散對數 "wikilink")\[2\]
  - 模擬量子系統（參考）
  - 在特定根之下計算

## 參考資料

## 外部連接

  - [Complexity Zoo link to BQP](https://complexityzoo.uwaterloo.ca/Complexity_Zoo:B#bqp)

[Category:機率複雜度類](https://zh.wikipedia.org/wiki/Category:機率複雜度類 "wikilink") [Category:量子複雜度理論](https://zh.wikipedia.org/wiki/Category:量子複雜度理論 "wikilink") [Category:计算机科学中未解决的问题](https://zh.wikipedia.org/wiki/Category:计算机科学中未解决的问题 "wikilink")

1.  [arXiv:quant-ph/9508027v2 *Polynomial-Time Algorithms for Prime Factorization and Discrete Logarithms on a Quantum Computer*, Peter W. Shor](http://www.arxiv.org/abs/quant-ph/9508027)

2.