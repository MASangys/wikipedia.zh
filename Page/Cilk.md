> 本文内容由[Cilk](https://zh.wikipedia.org/wiki/Cilk)转换而来。


**Cilk**是一種建基於[C編程語言](https://zh.wikipedia.org/wiki/C編程語言 "wikilink")、為[平行運算而設計的泛用式](https://zh.wikipedia.org/wiki/平行運算 "wikilink")[程式語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink")。

## 設計

Cilk語言設計背後最主要概念是，程式設計人員應該負責探索程式以平行運算的可能性、分辨程式中可安全地進行平行運算的原素（特別是系統的[排程器](https://zh.wikipedia.org/wiki/排程器 "wikilink")）、以及決定在程序運作時處理器之間如何分配工作。正因為這些設計時涉及的責任，使程式可運作於任何處理器數目的情形（包括只有單一個處理器時），而無需重新為特定的處理器情況重新編寫程式。

Cilk語言建基於[ANSI C](../Page/ANSI_C.md "wikilink")\[1\]，並加入了部份Cilk專用的關鍵字庫，而當這些Cilk的專用關鍵字從程式碼之中抽起的時候，程式碼亦能直接被編譯成C程式。

## 参见

  - [Fork-join模型](../Page/Fork-join模型.md "wikilink")

## 外部連結

  - [The Cilk Project](http://supertech.lcs.mit.edu/cilk/)

## 參考文獻

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")

1.  <http://supertech.lcs.mit.edu/cilk/FAQ/section1.html#whatiscilk>