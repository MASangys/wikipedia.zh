在[計算複雜度理論領域內](https://zh.wikipedia.org/wiki/計算複雜度理論 "wikilink")，**BPL**（有限錯誤機率對數空間，Bounded-error
Probabilistic
Logarithmic-space）\[1\]或者叫做**BPLP**（有限錯誤機率對數空間多項式時間，Bounded-error
Probabilistic Logarithmic-space
Polynomial-time）\[2\]是一個使用[機率圖靈機可以在多項式時間時間以及對數空間解決的問題](../Page/機率圖靈機.md "wikilink")，但是有**雙邊錯誤**（two-sided
error）。這個類別的名稱類似**[BPP](../Page/BPP_\(複雜度\).md "wikilink")**，一個很接近但是沒有對數空間限制的類別。

**BPL**裡面的機率圖靈機會在回答接收或者拒絕的時候，犯下機率小於1/3的錯誤；這個被稱呼為*雙邊錯誤*。

這裡1/3的常數是一個抽象的概念：任何0 ≤ *x* \<
1/2都可以滿足這個定義。藉由重複整個演算法，我們可以限縮誤差機率小於2<sup>−*p*(*x*)</sup>（這裡的*p*(*x*)為任意多項式），並且不使用多項式時間和對數空間以上的資源。

雖然雙邊錯誤比起單邊錯誤（回答特定答案時絕不會出錯，只有在另一個答案時會）更加一般化，**[RL](https://zh.wikipedia.org/wiki/RL_\(複雜度\) "wikilink")**和它的[補集](https://zh.wikipedia.org/wiki/補集_\(複雜度\) "wikilink")**co-RL**包含在**BPL**裡面。**BPL**也包含在**[PL](https://zh.wikipedia.org/wiki/PL_\(複雜度\) "wikilink")**（一個相類似的複雜度類，不過其錯誤率恰為1/2而非小於1/2）裡面；就像**[PP](../Page/PP_\(複雜度\).md "wikilink")**一樣，**PL**可能需要花費很多次的計算來降低錯誤的機率，因此比較不實用。

使用了一個弱的去隨機化結果證明**[BPL](https://zh.wikipedia.org/wiki/BPL "wikilink")**包含在**[SC](../Page/SC_\(複雜度\).md "wikilink")**裡面。\[3\]這裡的SC是一個複雜度類，包含可以使用決定型圖靈機在多項式時間和多項式對數（polylogarithmic）空間解決的問題；換句話說，這個結論證明了
給予*多項式對數*空間，一個決定型機器可以模擬*對數*空間的機率演算法。

## 參考資料

[Category:機率複雜度類](https://zh.wikipedia.org/wiki/Category:機率複雜度類 "wikilink")

1.  [Complexity Zoo:
    BPL](http://qwiki.stanford.edu/wiki/Complexity_Zoo:B#bpl)
2.  .
3.  .