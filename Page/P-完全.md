在[計算複雜度理論內](https://zh.wikipedia.org/wiki/計算複雜度理論 "wikilink")，標示了**P-完全**的[決定型問題對於分析](https://zh.wikipedia.org/wiki/決定型問題 "wikilink")

1.  哪些問題很難有效的平行處理，
2.  哪些問題很難在有限空間內解決掉。

相當的有用。

更正式的說，一個[決定型問題是](https://zh.wikipedia.org/wiki/決定型問題 "wikilink")**P**-[完全](../Page/完備_\(複雜度\).md "wikilink")(一個P裡面的完全問題)：若這問題本身在**[P](../Page/P_\(複雜度\).md "wikilink")**裡面，且所有在**P**內的問題，都可以[化約為此問題](https://zh.wikipedia.org/wiki/可變換_\(複雜度\) "wikilink")。

特定的化約方式會產生使用差異而且會影響問題集合的大小。 若我們使用**[NC](https://zh.wikipedia.org/wiki/NC_\(複雜度\) "wikilink")**的化約，亦即，可以在[多項式對數時間內](https://zh.wikipedia.org/wiki/多項式對數時間 "wikilink")，以平行運作的電腦在多項式個數之內的處理器下完成的化約，，基於一個未被證明的假設 **NC** ≠ **P**，則我們可知所有的**P**-完全問題在**NC**之外，因此無法被有效率的平行處理化。如果我們使用比較弱的 [log-space 化約](https://zh.wikipedia.org/wiki/log-space_化約 "wikilink")，前面的說法維持為真，但是多了一個**P**-完全問題會在[L之外的推論](../Page/L_\(複雜度\).md "wikilink")， 基於另一個較弱的，尚未被證明的假設**L** ≠ **P**。這裡需要注意到根據後者定義出的**P**-完全 會是一個比前者小一點的集合。

## 動機

找到一個有效率平行處理**P**-完全問題的方法會導出**NC** = **P**的結論(另一個雖沒有證明，但是一般認為是否的假說)。

另外，我們也可以將之視為"需要超過對數空間的問題"；因為，一個針對**P**-完全問題提出使用對數空間解決的演算法 (using the definition based on log-space reductions) 將會推導出**L** = **P**(另一個雖沒有證明，但是一般認為是否的假說)。

## P-完全問題

最基本的**P**-完全問題是：給定一個[圖靈機](https://zh.wikipedia.org/wiki/圖靈機 "wikilink")，此機器的輸入，以及一個數字*T* (以[一進位表示](https://zh.wikipedia.org/wiki/一進位數字系統 "wikilink"))，這個給定的圖靈機是否會在 *T* 步驟之內結束運算？？這個問題是**P**-完全證明如下：

首先，這個問題包含於**P**之內，因為我們可以讓圖靈機實際模擬跑完前面*T*個步驟來得到結論。這只會耗費多項式的時間。

又，如果我們可以平行化這個問題，那就代表我們必須要允許一個圖靈機能平行處理任何問題。而若這個問題在**NC**之內，那所有包含在**P**的問題都將也可以化約為此問題，故得證。

若這個數字是以二進位系統表示，則這個問題會變成[EXPTIME-完全](https://zh.wikipedia.org/wiki/EXPTIME-完全 "wikilink").

這個問題展示了一個在研究**P**-完全問題的理論常用的技巧。我們並不關注在這問題是否可以快速的用平行機器處理，我們關注的地方在於這個問題是否在使用平行機器時會變的比起使用非平行的機器快速"很多"。因此，我們要先將問題改寫為**P**的版本。這就是為何我們需要將*T*以一進位表示。若數字*T*是使用[二進位表示](https://zh.wikipedia.org/wiki/二進位 "wikilink") (一個包含n個零與一的字串，*n* = log *T*)，那麼用最直觀的演算法運作的時間就會變成2<sup>*n*</sup>. 但是，若*T*是用一進位系統表示 (一個包含*T*個一的字串)，則花費的時間就變成只有*n*(因為跑的時間不變，但是輸入資料變大了，因此時間複雜度下降)。 藉著以一進位而非二進位來表示*T*， we have reduced the obvious sequential algorithm 從對數時間轉換到到線性時間。 因此將這個問題使用序列解法的時間限制在**P**之內。 Then, it will be in **NC** 若且唯若這問題是可以平行化處理的。

許多其他的問題也已被證明屬於**P**-完全，因此廣泛的被認為是自然屬於序列化(也就是，不容易平行化)的。 這些包含了以下的問題(無論是否是以[決定型問題的方式表示](https://zh.wikipedia.org/wiki/決定型問題 "wikilink")，時間上都一樣為P-完全):

要證明一個給定的問題是P-完全，一個常見的作法是將一個已知是**P**-完全的問題化約為這個給定的問題。

在1999年，Jin-Yi Cai 和 D. Sivakumar，基於Ogihara的理論，推導出若存在一個[稀疏語言](../Page/稀疏語言.md "wikilink")屬於**P**-完全，則**[L](../Page/L_\(複雜度\).md "wikilink")** = **[P](../Page/P_\(複雜度\).md "wikilink")**。\[1\]

## 未知是否為P-完全的問題

有一些問題尚不清楚是屬於**NP**-難或者是**P**。這一些問題(例如說，[整數分解](https://zh.wikipedia.org/wiki/整數分解 "wikilink"))被懷疑是比較困難的。 類似的有些問題尚不清楚是屬於**P**-完全或者**NC**，但是一般被認為是不容易平行化的。這類問題的範例有找出兩給定整數[最大公因數](../Page/最大公因數.md "wikilink")的[決定型問題版本](https://zh.wikipedia.org/wiki/決定型問題 "wikilink")，和給出對[延伸輾轉相除法出入兩個整數之後的答案](https://zh.wikipedia.org/wiki/延伸輾轉相除法 "wikilink")。

## 参考文献

### 引用

### 来源

  - Greenlaw, Raymond, James Hoover, and Walter Ruzzo. 1995. *Limits To Parallel computation; P-完全ness Theory*. ISBN 0-19-508591-4. — Develops the theory, then catalogs 96 P-完全 problems.
  - Satoru Miyano, Shuji Shiraishi, and Takayoshi Shoudai. *A List of P-完全 Problems*. Kyushu University, RIFIS-TR-CS-17. December 1990.

{{-}}

[Category:複雜度類](https://zh.wikipedia.org/wiki/Category:複雜度類 "wikilink")

1.