在[複雜度理論內](../Page/計算複雜性理論.md "wikilink")，**RP**（"隨機多項式時間"）是一個有關[機率圖靈機](../Page/機率圖靈機.md "wikilink")的[複雜度類](https://zh.wikipedia.org/wiki/複雜度類 "wikilink")，並且存在以下特性：

<table>
<thead>
<tr class="header">
<th><p>RP演算法（單次操作）</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
</tr>
<tr class="even">
<td><p>正確<br />
解答</p></td>
</tr>
<tr class="odd">
<td><p>是</p></td>
</tr>
<tr class="even">
<td><p>否</p></td>
</tr>
<tr class="odd">
<td><p>RP演算法（<em>n</em>次操作）</p></td>
</tr>
<tr class="even">
<td></td>
</tr>
<tr class="odd">
<td><p>正確<br />
解答</p></td>
</tr>
<tr class="even">
<td><p>是</p></td>
</tr>
<tr class="odd">
<td><p>否</p></td>
</tr>
<tr class="even">
<td><p>co-RP演算法（單次操作）</p></td>
</tr>
<tr class="odd">
<td></td>
</tr>
<tr class="even">
<td><p>正確<br />
解答</p></td>
</tr>
<tr class="odd">
<td><p>是</p></td>
</tr>
<tr class="even">
<td><p>否</p></td>
</tr>
</tbody>
</table>

  - 此演算法總是跑輸入大小的多項式長度這麼多的時間
  - 如果輸入的答案為非，此演算法會回傳NO
  - 如果輸入的答案為是，則回傳YES的機率至少1/2（其餘的機率則是回傳NO）。

換句話說，這個[演算法允許在操作的時候進行全然機率的猜測](https://zh.wikipedia.org/wiki/演算法 "wikilink")。這個演算法會回傳YES的狀況必然是輸入為真的狀況；因此如果這個演算法說了YES，那我們就知道了這個輸入必定為是：不過，這個演算法可以在不管正確解答為何的時候回傳NO。也就是，如果這個演算法回傳答案是錯的，可能是這個演算法犯錯了（也就是其實這個輸入應該是對的）。

有一些作者叫這一個複雜度類**R**，不過這個名字更常被使用於定義包含了所有[遞歸語言的複雜度類](https://zh.wikipedia.org/wiki/遞歸語言 "wikilink")。

如果輸入的答案為"是"且這個演算法運作了*n*次，每次跑出來的答案[統計上獨立於其他答案](https://zh.wikipedia.org/wiki/Statistical_independence "wikilink")，那回傳起碼一次YES的機率則至少有這麼多。所以如果這個演算法跑了夠多的次數，那數學上來說他回傳錯誤解答的機率就會變得非常非常小，甚至小過運算的電腦被宇宙射線影響因此錯誤的機率。在這個概念上，如果我們有一個夠好的亂數來源，大多數的RP演算法都是非常具有實做價值的。

這裡選用的1/2這個常數，是不需要太嚴格的一個選擇：無論我們將定義裡面的1/2換成任何小於1的非零常數，**RP**這個集合仍舊包含了所有原來的問題。（這裡的常數代表說此數字跟輸入沒有任何關係）

## 相關複雜度類

**RP**的定義告訴我們，如果RP演算法說答案是YES，則答案一定為"是"：如果說是NO，則"通常"答案會是"非"。複雜度類**co-RP**的定義方式類似，不過是說答案是NO的時候，則答案一定是非，說答案是YES的時候答案則"通常"為是。換句話說，RP演算法接受了所有的YES狀態，而接受或者拒絕了一部分的NO狀態。**[BPP](../Page/BPP_\(複雜度\).md "wikilink")**這個複雜度類形容的演算法則是在YES狀態跟NO狀態都有可能犯錯的演算法，因此它同時包含了**RP**和**co-RP**。

**RP**與**co-RP**的交集則叫做**[ZPP](../Page/ZPP_\(複雜度\).md "wikilink")**。

如同**RP**有時候被叫做**R**，有一些作者使用**co-R**而非**co-RP**。

## 與P和NP的關聯

**[P](../Page/P_\(複雜度\).md "wikilink")**是**RP**的子集，而**RP**是**[NP](../Page/NP_\(複雜度\).md "wikilink")**的子集。
相同的，**P**也是**co-RP**的子集，而**co-RP**則是**[co-NP](https://zh.wikipedia.org/wiki/co-NP "wikilink")**的子集。我們尚未知道這一些是否是嚴格子集（也就是說，這一些集合是否相等或不相等）。然而，一般我們相信**P**
= **BPP**這個推測是真實的，這樣一來的話**RP**，**co-RP**，**P**就全部都是相等的了。如果我們又假設[**P** ≠
**NP**的話](https://zh.wikipedia.org/wiki/P/NP問題 "wikilink")，這就代表說**RP**嚴格包含於**NP**（也就是**RP**
≠ **NP**）。我們還不知道是否**RP** =
**co-RP**，抑或是否**RP**是**NP**和**co-NP**的交集的子集合，不過這些都可以由**P**
= **BPP**這件事情推論出來。

一個比較自然的例子確定此問題在**co-RP**裡面但是尚不知道是否在**P**裡面的是[等同多項式檢定](https://zh.wikipedia.org/wiki/等同多項式檢定 "wikilink")，此問題決定給予的多變量整數多項式是否等於一個零多項式。舉例來說,
是一個零多項式，而 則不是。

另一種有時候比較好使用的**RP**的定義是能夠被[非決定型圖靈機解決問題的集合](https://zh.wikipedia.org/wiki/非決定型圖靈機 "wikilink")。此機器接受答案，若且唯若至少有常數比例條計算路徑（此常數與輸入長度無關）回傳解答為"是"。另一方面**NP**則只需要一條路徑回傳答案為是，這件事實使我們針對同一個問題可以建立比較少的路徑。因此，此特徵顯示出**RP**顯然是**NP**的子集合。

## 相關參閱

  - [隨機演算法](https://zh.wikipedia.org/wiki/隨機演算法 "wikilink")

[Category:概率複雜度類](https://zh.wikipedia.org/wiki/Category:概率複雜度類 "wikilink")
[Category:计算机科学中未解决的问题](https://zh.wikipedia.org/wiki/Category:计算机科学中未解决的问题 "wikilink")