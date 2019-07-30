在[計算複雜度理論裡面](https://zh.wikipedia.org/wiki/計算複雜度理論 "wikilink")，**BPP**是在[多項式時間](../Page/多項式時間.md "wikilink")內以[概率圖靈機解出的](https://zh.wikipedia.org/wiki/概率圖靈機 "wikilink")[問題的集合](https://zh.wikipedia.org/wiki/問題 "wikilink"), 並且對所有的輸入，輸出結果有錯誤的[概率](../Page/概率.md "wikilink")在1/3之內。**BPP**這個簡寫代表"**B**ounded-error"(有限錯誤)，"**P**robabilistic"(機率的)，"**P**olynomial time"(多項式時間)。

<table>
<thead>
<tr class="header">
<th><p>BPP 演算法 (操作一次)</p></th>
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
<td><p>BPP 演算法 (操作<em>k</em>次)</p></td>
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
<td><p>對於某些常數 <em>c</em> &gt; 0</p></td>
</tr>
</tbody>
</table>

要是一個問題在**BPP**集合裡面，則存在一個演算法，此演算法允許轉硬幣作隨機的決定，並在多項式時間內結束。 對這個演算法的任何輸入，他都要在小於1/3的錯誤概率之下給出正確判斷，不論這一個問題的答案是"正確"或者"錯誤"。

在這裡定義裡面的1/3是任意給定的。它可以是在 0 與 1/2(不包含0與1/2自身) 之間的 [任意常數而BPP集合維持不變](https://zh.wikipedia.org/wiki/常數 "wikilink")(當然這個常數必須跟輸入值為何無關)。原因在於，雖然這演算法有錯誤的機率，但是只要我們多進行幾次演算法，那多數的答案都是錯誤的機率會呈現[指數衰減](https://zh.wikipedia.org/wiki/指數衰減 "wikilink") [1](http://www.cs.sfu.ca/~kabanets/cmpt710/lec16.pdf). 因此證明我們可以很簡單的架構一個更準確的演算法，僅僅單純多重複幾次這個演算法然後對每次的答案作多數決。

**BPP**是大小最大的幾個*實際的*問題類別之一，代表大多數的**BPP**問題都有有效率的[概率演算法](https://zh.wikipedia.org/wiki/概率演算法 "wikilink")，因此以上倏地方法可以用現在的機器快速取得解答。因為這個原因，我們對哪一些問題或問題種類在**BPP**裡面有著實用方面的興趣。

## 定義

一個語言*L*在**BPP**裡面，若且唯若這語言存在一個概率圖靈機 *M*，另

  - *M*對任何輸入均在多項式時間後停止
  - 對任何字串*x*在*L*之內, 對*M*輸入*x*之後，*M* 輸出 1 的機率大於或者等於 2/3
  - 對任何字串 *x* 不在 *L*之內, 對*M*輸入*x*之後，*M* 輸出 1 的機率小於或者等於 1/3

另外，**BPP**可以僅以決定性圖靈機定義。一個語言*L*是在**BPP**裡面若且唯若存在一個多項式*p*和一個決定性圖靈機*M*，滿足

  - *M*對任何輸入均操作多項式時間之內
  - 對任何字串*x*在*L*之內, 對長度為 *p*(|*x*|)的任意字串*y* ，滿足 *M(x,y)* = 1 這條件的機率超過或等於2/3
  - 對任何字串 *x* 不在 *L*之內, 對長度為 *p*(|*x*|)的任意字串 *y* ，滿足 *M(x,y)* = 1 這條件的機率小於或等於1/3

## 與其他複雜度類別的關係

已知 **BPP** 在取補集之下有封閉性; 換句話說, **BPP**=**Co-BPP**。 **BPP**是否是**[NP](../Page/NP_\(複雜度\).md "wikilink")**的[子集](../Page/子集.md "wikilink")仍舊是一個公開的問題。 另外**NP**是否是**BPP**的子集也是個公開的問題; 如果是的話，則**NP**=**RP**並且**[PH](../Page/PH_\(複雜度\).md "wikilink")** \(\subseteq\) **BPP**([2](http://weblog.fortnow.com/2005/12/pulling-out-quantumness.html)) (大多數人認為不會，因為這代表對一些很難的**[NP-完全](https://zh.wikipedia.org/wiki/NP-完全 "wikilink")** 問題有著實際的解法)。現在已知**[RP](../Page/RP_\(複雜度\).md "wikilink")**是**BPP**的子集，並且**BPP**是**[PP](../Page/PP_\(複雜度\).md "wikilink")**的子集。 尚不清楚這兩個是否為嚴格子集。 **BPP**包含在**[PH](../Page/PH_\(複雜度\).md "wikilink")**裡面。因此之故，**P**=**NP**代表**BPP**=**P**，因為**PH**在這時會變成**P**。 存在特定夠強的[偽亂數產生器](https://zh.wikipedia.org/wiki/偽亂數產生器 "wikilink") 是這領域裡面大多數專家的[猜想](../Page/猜想.md "wikilink")。這個猜想代表隨機性並不給予多項式計算更多的能力：換句話說，**P**=**RP**=**BPP**。注意一般的產生器並不足以表示出結果；使用典型的亂數產生器實做的任何概率演算法，與亂數的種子無關，對某一些特定的輸入會一直給出錯誤的答案(即使這一些輸入可能很稀少)。我們也可得到**P** = **BPP** ，若指數時間等級等同於**E** = \(\textrm{DTIME} \left( 2^{O(n)} \right)\) ([Babai et al.](https://zh.wikipedia.org/wiki/#Babai_et_al. "wikilink")),或者若**E**有指數的[電路複雜性](https://zh.wikipedia.org/wiki/電路複雜性 "wikilink") ([Impagliazzo and Wigderson](https://zh.wikipedia.org/wiki/#Impagliazzo_and_Wigderson "wikilink"))。 又**BPP**包含在**i.o.-SUBEXP** = \(\bigcap_{\varepsilon>0}\hbox{i.o.-DTIME}(2^{n^\varepsilon})\)裡面，若**[EXPTIME](../Page/EXPTIME.md "wikilink")**並不等同於**[MA](https://zh.wikipedia.org/wiki/MA_\(複雜度\) "wikilink")** ([Babai](https://zh.wikipedia.org/wiki/Laszlo_Babai "wikilink") et al.).

一個[Monte Carlo演算法是一個](https://zh.wikipedia.org/wiki/Monte_Carlo演算法 "wikilink")"差不多正確"的[隨機演算法](https://zh.wikipedia.org/wiki/隨機演算法 "wikilink")。 與跟它很像的[拉斯維加斯演算法比較](https://zh.wikipedia.org/wiki/拉斯維加斯演算法 "wikilink")，後者則是一個永遠正確的隨機演算法，不過隨機性在於有可能會回傳推算失敗。多項式時間之內的拉斯維加斯演算法可以用來定義**[ZPP](../Page/ZPP_\(複雜度\).md "wikilink")**這個複雜度類。

**BPP**包含在**[P/poly](https://zh.wikipedia.org/wiki/P/poly "wikilink")**裡面， 根據Adleman的理論，**BPP**是包含於**[P (複雜度)](../Page/P_\(複雜度\).md "wikilink")**裡面的。\[1\]; 的確，根據這個事實證明的結果，每一個BPP的演算法，只要輸入是有限長度的話，我們可以藉由一個決定性演算法去找足夠長的隨機字串來消除BPP的隨機特性。不過問題在於找到這個字串可能是很花費時間的事情。

## 其他特性

有很長一段時間, 一個非常有名的題目已知是**BPP**但不確定是否是**P**，是[質數檢測](https://zh.wikipedia.org/wiki/素性測試 "wikilink")，也就是求一個給定的數字是否是[質數](https://zh.wikipedia.org/wiki/質數 "wikilink")。 然而,在2002年的論文'' [PRIMES is in P](../Page/AKS質數測試.md "wikilink")'', [Manindra Agrawal](https://zh.wikipedia.org/wiki/Manindra_Agrawal "wikilink") 與他的學生 [Neeraj Kayal](https://zh.wikipedia.org/wiki/Neeraj_Kayal "wikilink") 和 [Nitin Saxena為了這個問題找到了一決定性](https://zh.wikipedia.org/wiki/Nitin_Saxena "wikilink")，多項式時間的演算法，因而證實這個問題是在**P**裡面。

一個很重要的範例問題已知在**BPP**內 (事實上在[co-RP內](../Page/RP_\(複雜度\).md "wikilink"))，但不知道是否在**P**之內。這問題是[等同多項式檢定](https://zh.wikipedia.org/wiki/等同多項式檢定 "wikilink"), 這問題在於決定一個多項式是否完全等同於一個零多項式。 換句話說，是否存在任何變數數值的組合令這個多項式的結果不為零？ 這題目應均勻且隨意的從一個至少 *d*個值的有限集合取變數的值來達到有限機率的錯誤(*d*代表多項式的總次數)。\[2\]

**BPP**是[低對應於自己](https://zh.wikipedia.org/wiki/低_\(複雜度\) "wikilink") , 代表一個能在常數時間內解決**BPP**問題的**BPP**機器 (一個**BPP** [啟示圖靈機](https://zh.wikipedia.org/wiki/啟示圖靈機 "wikilink")) ，他的運算能力並不因此比沒有這能力的機器更強(或說，兩個不同機器定義出來的問題種類維持不變)。

**BPP**這個語言集合是以一個普通的[圖靈機加上一個亂數的來源來定義](https://zh.wikipedia.org/wiki/圖靈機 "wikilink")。 相對應的[量子計算機語言集合則是](https://zh.wikipedia.org/wiki/量子計算機 "wikilink")**[BQP](https://zh.wikipedia.org/wiki/BQP "wikilink")**。

任何在**BPP**裡面的語言可以被多項式大小的[布林線路來決定](https://zh.wikipedia.org/wiki/布林線路 "wikilink") (參見[P/poly](https://zh.wikipedia.org/wiki/P/poly "wikilink")).\[3\]

## 參考資料

<references />

  - <span id="Babai_et_al">László Babai, Lance Fortnow, Noam Nisan, and Avi Wigderson (1993). "BPP has subexponential time simulations unless [EXPTIME](../Page/EXPTIME.md "wikilink") has publishable proofs". *Computational Complexity*, 3:307–318.</span>

  - <span id="Impagliazzo_and_Wigderson">[Russell Impagliazzo](https://zh.wikipedia.org/wiki/Russell_Impagliazzo "wikilink") and Avi Wigderson (1997). "P=BPP if E requires exponential circuits: Derandomizing the XOR Lemma". *Proceedings of the Twenty-Ninth Annual ACM Symposium on Theory of Computing*, pp. 220–229. </span>

  - <span id="Kabanets">Valentine Kabanets (2003). "CMPT 710 – Complexity Theory: Lecture 16". [Simon Fraser University](https://zh.wikipedia.org/wiki/Simon_Fraser_University "wikilink").</span>

  - Pages 257–259 of section 11.3: Random Sources. Pages 269–271 of section 11.4: Circuit complexity.

  - Section 10.2.1: The class BPP, pp.336–339.

## 外部連結

  - [Princeton CS 597E: Derandomization paper list](http://www.cs.princeton.edu/courses/archive/fall03/cs597E/)
  - [Harvard CS 225: Pseudorandomness](http://www.courses.fas.harvard.edu/~cs225/)

[Category:概率複雜度類](https://zh.wikipedia.org/wiki/Category:概率複雜度類 "wikilink") [Category:计算机科学中未解决的问题](https://zh.wikipedia.org/wiki/Category:计算机科学中未解决的问题 "wikilink")

1.
2.  Madhu Sudan and Shien Jin Ong. Massachusetts Institute of Technology: 6.841/18.405J Advanced Complexity Theory: Lecture 6: Randomized Algorithms, Properties of BPP. February 26, 2003. <http://people.csail.mit.edu/madhu/ST03/scribe/lect06.pdf>
3.  [Leonard Adleman](https://zh.wikipedia.org/wiki/Leonard_Adleman "wikilink"), *Two theorems on random polynomial time*, Proceedings of the Nineteenth Annual IEEE Symposium on Foundations of Computing, 1978, pp. 75–83.