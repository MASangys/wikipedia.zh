在[計算複雜度理論內](https://zh.wikipedia.org/wiki/計算複雜度理論 "wikilink")，**SC** (Steve's Class，以[Stephen Cook命名](https://zh.wikipedia.org/wiki/Stephen_Cook "wikilink"))\[1\]是一個[複雜度類](https://zh.wikipedia.org/wiki/複雜度類 "wikilink")，包含了使用[圖靈機](https://zh.wikipedia.org/wiki/圖靈機 "wikilink")，在多項式時間([P複雜度類](../Page/P_\(複雜度\).md "wikilink"))以及多項式對數空間([PolyL複雜度類](https://zh.wikipedia.org/wiki/PolyL "wikilink")) (也就是，[O](https://zh.wikipedia.org/wiki/大O符號 "wikilink")(log<sup>k</sup> *n*)空間，*k*是某個常數)。我們也可以稱呼這個複雜度類為**DTISP(poly, polylog)**，這裡**DTISP**代表*確定性時間與空間*(deterministic time and space)。這裡的SC是P \(\cap\) PolyL的嚴格子集，因為對前者，他需要存在一個解決問題的演算法*同時*滿足多項式時間**以及**多項式對數空間兩個條件；而對後者這個聯集來說，他只需要兩個各自的演算法，其中一個是多項式時間，另一個是多項式對數空間即可以滿足。

**[DCFL](https://zh.wikipedia.org/wiki/確定型上下文無關語言 "wikilink")**，這個複雜度類是[上下文無關語言的子集](https://zh.wikipedia.org/wiki/上下文無關語言 "wikilink")，使用[確定下推自動機來驗證](https://zh.wikipedia.org/wiki/確定下推自動機 "wikilink")。DCFL已知是包含在**SC**內的，由Cook在1979年證明。\[2\]

**[RL](https://zh.wikipedia.org/wiki/RL_\(複雜度\) "wikilink")**和**[BPL](../Page/BPL_\(複雜度\).md "wikilink")**是能夠以[概率圖靈機在多項式時間和多項式對數空間解決的複雜度類](https://zh.wikipedia.org/wiki/概率圖靈機 "wikilink")。Nisan在1992年證明了一個較弱的[去隨機化](https://zh.wikipedia.org/wiki/去隨機化 "wikilink")，因此可以證明這兩個複雜度類都在**SC**裡面。\[3\]換句話說，給出一個*多項式對數*空間，我們可以用一個確定型的圖靈機來模擬 *對數*空間的機率演算法。

## 參考資料

[Category:複雜度類](https://zh.wikipedia.org/wiki/Category:複雜度類 "wikilink")

1.
2.  S. A. Cook. Deterministic CFL's are accepted simultaneously in polynomial time and log squared space. Proceedings of ACM STOC'79, pp. 338–345. 1979.
3.  N. Nisan. RL is contained in SC, Proceedings of ACM STOC'92, pp. 619-623, 1992.