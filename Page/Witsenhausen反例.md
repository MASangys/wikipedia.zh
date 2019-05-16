**Witsenhausen反例**（Witsenhausen's
counterexample）是在[隨機控制中看似簡單的](../Page/隨機控制.md "wikilink")，是由在1968年所提出的\[1\]。有關集中式[LQG控制系統](../Page/LQG控制.md "wikilink")（線性系統、有高斯雜訊、其成本函數為二次函數下，會有線性的最佳控制律）的結論，一般會很自然[猜想其中的重要特性可以推廣到分散系統](../Page/猜想.md "wikilink")，而Witsenhausen反例即為上述猜想的反例。Witsenhausen建構了二階段的LQG系統，其中二個控制器的決策都是根據分散性資訊所獨立決策的，並且證明在此系統中，有比所有線性控制律更好的非線性控制律。現今還無法找到最佳的控制律\[2\]。

[<File:WitsenhausenCounterexample.jpg>](https://zh.wikipedia.org/wiki/File:WitsenhausenCounterexample.jpg "fig:File:WitsenhausenCounterexample.jpg")

## 反例的說明

此一反例的說明如下：二個控制器試圖要在恰好二個時間間隔內將狀態控制到接近零的程度。第一個控制器觀察最初狀態\(x_0\)，成本函數中有關於第一個控制器輸入\(u_1\)的成本，也有第二個控制器狀態\(x_2\)的成本。第二個控制器的輸入\(u_2\)沒有成本，不過是以第一個控制器狀態\(x_1\)，有包括雜訊的觀測值\(y_1=x_1+z\)為基礎。第二個控制器不能和第一個控制器通訊，也無法觀察到原始狀態\(x_0\)或是第一個控制器的輸入\(u_1\)。系統動態方程如下：

\[x_1=x_0+u_1,\]

\[x_2=x_1-u_2,\]

第二個控制器的估測方程為

\[y_1=x_1+z.\]

目標是讓期望的[成本函數最小化](https://zh.wikipedia.org/wiki/损失函数 "wikilink")

\[k^2E[u_1^2]+E[x_2^2],\]

其中的期望值是在考慮初始狀態\(x_0\)的隨機以及估測雜訊\(z\)下所得的，兩者都是[独立分布的亂數](../Page/独立_\(概率论\).md "wikilink")。估測雜訊\(z\)假設是[正态分布](../Page/正态分布.md "wikilink")，而初始狀態的分佈則隨問題的版本不同而不同。

問題是要找到控制函數

\[u_1(x_0) \quad \text{and} \quad u_2(y_1)\]

至少讓目標函數和其他控制函數下的結果一樣的好。Witsenhausen證明最佳函數\(u_1(x_0)\)和\(u_2(y_1)\)不會是線性函數。

## Witsenhausen所得的結果

Witsenhausen所得的結果如下：

  - 最佳解存在（引理1）。
  - 第一個控制器的最佳控制律是讓 \(E(x_1)=0\) 的控制律（引理9）。
  - 實際控制律發生在二個控制器都限制在線性下的結果（引理11）。
  - 若\(x_0\)是高斯分佈，至少一個控制器限制要是線性的，則二個控制器都是線性時有最佳解（引理13）。
  - 實際的非線性控制律是在\(x_0\)為[二點](../Page/伯努利分布.md "wikilink")的條件下（引理15）。
  - 若\(x_0\)是高斯分佈，針對一些參數\(k\)的特定值時，其非線性控制律中的非最佳解，其成本函數的期望值都比線性最佳控制律下的成本函數的期望值要低（定理2）。

## 問題的重要性

此反例是在[控制理论及](../Page/控制理论.md "wikilink")[信息论的交集](../Page/信息论.md "wikilink")。因為此問題的難度，找最佳控制律的問題也受到[理論計算機科學社群的關注](../Page/理論計算機科學.md "wikilink")。此問題的重要性在2008年在墨西哥Cancun舉行的47屆IEEE決策及控制研討會（CDC）可以看出\[3\]，其中有一整個會議就是瞭解此一反例，而當時距Witsenhausen最早的反例提出已有40年之久。

此問題在分散式控制的概念上很重要，證明了分散式控制器為了要讓成本函數最低，彼此通訊的重要性\[4\]。因此分散式系統的控制行動有二個角色：控制以及通訊。

## 問題的難度

問題的難度是因為第二個控制器的資訊是依照第一個控制器的決策所決定\[5\]。考慮的變體版本\[6\]也證明了問題的難度也是因為其性能指標的結構，以及不同決策變數的耦合。也已經證明Witsenhausen的反例，若在連接二個控制器之間外部通道的[传输时延](https://zh.wikipedia.org/wiki/传输时延 "wikilink")，比問題中的[傳播延遲要短時](https://zh.wikipedia.org/wiki/傳播延遲 "wikilink")，問題會較簡單。不過此一結果會要求通道是完美無雜訊，而且是即時的\[7\]，因此限制了實用的程度。在實務上，外部通道總是不完美的，因此無法假設在有外部通道時，分散式控制問題會比較簡單。

計算機科學文獻也找到了這個分散式問題困難的原因：[赫里斯托斯·帕帕季米特里乌及John](../Page/赫里斯托斯·帕帕季米特里乌.md "wikilink")
Tsitsiklis證明此一反例是[NP完全](../Page/NP完全.md "wikilink")\[8\]。

## 試圖求解

有許多方式試圖用數值方式求解。若限制問題的參數（\((k=0.2,\;\sigma_0=5)\)），研究者已經透過[离散化](https://zh.wikipedia.org/wiki/离散化 "wikilink")
以及求解\[9\]。進一步的研究（著名的有[何毓琦的研究](../Page/何毓琦.md "wikilink")\[10\]，Li,
Marden and 的研究\[11\]）在相同參數範圍下其成本略有改善。不同參數下的最佳數值解，包括上述所提到的數值解，都是由S.-H.
Tseng 和A. Tang在2017年提出的局部搜尋法所得\[12\]。第一個可能近似最佳的控制策略是在2010年提出（Grover,
Park,
Sahai）\[13\]，其中用[信息论來了解此反例中的通訊](../Page/信息论.md "wikilink")。此反例的最佳解仍然是還沒有答案的開放問題。

## 參考資料

[Category:控制理论](https://zh.wikipedia.org/wiki/Category:控制理论 "wikilink")
[Category:隨機控制](https://zh.wikipedia.org/wiki/Category:隨機控制 "wikilink")

1.  Witsenhausen, Hans. "A counterexample in stochastic optimum
    control." *SIAM J. Control*, Volume 6, Issue 1, pp. 131–147
    (February 1968)

2.  Ho, Yu-Chi, "Review of the Witsenhausen problem". *Proceedings of
    the 47th IEEE Conference on Decision and Control (CDC)*, pp.
    1611–1613, 2008.

3.
4.  Mitterrand and Sahai. "Information and Control: Witsenhausen
    revisited". *Learning, control and hybrid systems*, 1999, Springer.

5.  Ho, Yu-Chi. "Team decision theory and information structures".
    *Proceedings of the IEEE*, Vol. 68, No.6, June 1980.

6.  Basar, Tamer. "Variations on the theme of the Witsenhausen
    counterexample". *47th IEEE Conference on Decision and Control
    Cancun*, Mexico, Dec. 9–11, 2008.

7.  Rotkowitz, M.; Cogill, R.; Lall, S.; , "A Simple Condition for the
    Convexity of Optimal Control over Networks with Delays," *Decision
    and Control*, 2005 and 2005 *European Control Conference. CDC-ECC
    '05. 44th IEEE Conference on* , pp. 6686–6691, 12–15 December 2005.

8.  [赫里斯托斯·帕帕季米特里乌](../Page/赫里斯托斯·帕帕季米特里乌.md "wikilink") and John
    Tsitsiklis. "Intractable problems in control theory." *24th IEEE
    Conference on Decision and Control*, 1985

9.  Baglietto, Parisini, and Zoppoli. "Numerical solutions to the
    Witsenhausen counterexample by approximating networks." *IEEE Trans.
    Automatic Control*. 2001.

10. Lee, Lau, and Ho. "The Witsenhausen counterexample: A hierarchical
    search approach for nonconvex optimization problems." '' IEEE Trans.
    Automatic Control'', 2001

11. Li, Marden, and Shamma. "Learning approaches to the Witsenhausen
    counterexample from a view of potential games." '' IEEE Conference
    on Decision and Control'', 2009.

12. Tseng and Tang. "A Local Search Algorithm for the Witsenhausen's
    Counterexample." '' IEEE Conference on Decision and Control'', 2017.

13. Grover, Sahai, and Park. "The finite-dimensional Witsenhausen
    counterexample." *IEEE WiOpt 2010, ConCom workshop*, Seoul, Korea.