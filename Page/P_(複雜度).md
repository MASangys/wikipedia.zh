在[計算複雜度理論中](../Page/計算複雜度理論.md "wikilink")，**P**是在[複雜度類別問題中可於](../Page/複雜度類別.md "wikilink")[決定性圖靈機以](../Page/圖靈機.md "wikilink")[多項式量級](../Page/多項式.md "wikilink")（或稱[多項式時間](../Page/多項式時間.md "wikilink")）求解的[決定性問題](../Page/決定性問題.md "wikilink")。

**P**通常表示那類可以「有效率地解決」或「溫馴」的可計算型問題，就算指數級非常高也可以算作「溫馴」，例如**[RP](../Page/RP_\(複雜度\).md "wikilink")**與**[BPP](../Page/BPP_\(複雜度\).md "wikilink")**問題。當然P類別存在很多現實處理上一點也[不溫馴的問題](../Page/P/NP问题#P真的容易处理吗？.md "wikilink")，例如一些至少需要n<sup>1000000</sup>指令來解決的問題。很多情況下存在著[更難的複雜度問題](../Page/P/NP问题#更难的问题.md "wikilink")

## 在P中令人注目的問題

**P**包含了很多已知的自然問題，例如決定性版本的[线性规划](../Page/线性规划.md "wikilink")，計算[最大公因數](../Page/最大公因數.md "wikilink")，以及發現[最大吻合](../Page/maximum_matching.md "wikilink")。在2002年，判別一個數是否為[質數也被人解出是一個](../Page/質數.md "wikilink")**P**問題\[1\]。與[功能性問題](../Page/function_problem.md "wikilink")（[function
problem](../Page/功能性問題.md "wikilink")）相關的類別是[**FP**](../Page/FP_\(複雜度\).md "wikilink")。

## 與其他類別的關係

**P**的擴大集合是[**NP**](../Page/NP_\(複雜度\).md "wikilink")，此複雜度類別是一個可在[多項式時間以](../Page/多項式時間.md "wikilink")[非確定型圖靈機決定答案的問題的集合](../Page/非確定型圖靈機.md "wikilink")。因此我們可知道**P**是**NP**的子集，且雖然[未證明](../Page/P/NP問題.md "wikilink")，但大部分專家相信P是NP的嚴格子集（即NP一定大於且包含P集合）。\[2\]

**P**也已知至少大於[**L**一個可在](../Page/L_\(複雜度\).md "wikilink")[對數量級的](../Page/對數.md "wikilink")[記憶體空間上決定的問題的類別](../Page/記憶體空間.md "wikilink")。一個判定演算法使用了O(log
*n*)的空間就不可能使用超過2<sup>O(log
*n*)</sup>=*n*<sup>O(1)</sup>的時間，因為這是所有可能組合方式的總數，因此**L**是**P**的子集合。另一個重要問題是：**L**是否相等於**P**？我們已知**P**=**AL**（問題可在對數記憶體上以[另類圖靈機](../Page/另類圖靈機.md "wikilink")（[alternating
Turing
machine](../Page/交替式图灵机.md "wikilink")）解決的問題之集合），而**P**也已知不大於**[PSPACE](../Page/PSPACE.md "wikilink")**（可在多項式空間判定的問題）。再一次，我們面對**P**是否等於**PSPACE**的未知問題。整理一下上述問題：

\[\mbox{L} \subseteq \mbox{AL} = \mbox{P} \subseteq \mbox{NP} \subseteq \mbox{PSPACE} \subseteq \mbox{EXPTIME}\]

**[EXPTIME](../Page/EXPTIME.md "wikilink")**指的是可在指數時間解答的問題類別。在上列的類別關係中，只有兩個嚴格包含關係是確定的：

  - **P**嚴格包含於**EXPTIME**之中。因此所有**EXPTIME**-hard問題在**P**集合之外，且最少一個**P**右方的包含關係是嚴格的（事實上，大部分人認為**P**右邊三個集合都是嚴格包含**P**）。
  - **L**嚴格包含於**PSPACE**集合中。

在P問題中最困難的是[P完備問題](../Page/P完全.md "wikilink")。

另一個**P**的擴大集合是**P/poly**，或**非統一多項式時間**。若一個問題落於**P\\poly**，則它可以在依據輸入內容的長度下給予[提示字串](../Page/提示_\(複雜度\).md "wikilink")（[advice
string](../Page/建議_\(複雜度\).md "wikilink")）的情況下，以確定性多項式時間解決。然而，不像**NP**，此多項式時間機器不需要偵測偽造提示字串；因為它不是一個驗證機器。**P/poly**是一個幾乎包含所有實際[演算法的巨大類別](../Page/演算法.md "wikilink")，包含所有**[BPP](../Page/BPP.md "wikilink")**。如果**P/poly**包含了**NP**，則整個[多項式階層將會下降到第二階層](../Page/多項式階層.md "wikilink")。另一方面，它也包含一些不切實際的演算法，包含一些[可決定問題](../Page/決定型問題.md "wikilink")，例如一元版的任何非決定性問題。

## 性質

多項式時間演算法擁有**組裝封閉性**。換句話說，若我寫了一個內容是多項式時間的函數（若視函數呼叫為固定時間），且其它被本函數呼叫的副函數也屬於多項式時間，則整個組合起來的演算法也會是多項式時間。因此**P**是[自我低陷的](../Page/低陷_\(複雜度\).md "wikilink")，這也是**P**被認為是無關機器類型的主要理由：任何機器特徵（例如[隨機存取](../Page/隨機存取.md "wikilink")）可以用多項式時間演算法模仿的話，可在一些更簡單的機器以其他多項式時間演算法組合並化約而成，且時間複雜度依然是P。

## 歷史

Kozen\[3\]指出Cobham與Edmonds是最可信，最早創造**多項式時間**這個名詞的人。

## 註釋

## 參考資料

  - C. Papadimitriou. Computational Complexity. Addison-Wesley, 1994.
    ISBN 978-0-201-53082-7.

  - Complexity Zoo:
    [P](https://web.archive.org/web/20061128071923/http://qwiki.caltech.edu/wiki/Complexity_Zoo#p)，[P/poly](https://web.archive.org/web/20061128071923/http://qwiki.caltech.edu/wiki/Complexity_Zoo#pslashpoly)

  - [Thomas H. Cormen](../Page/Thomas_H._Cormen.md "wikilink")，[Charles
    E. Leiserson](../Page/Charles_E._Leiserson.md "wikilink")，[Ronald L.
    Rivest](../Page/Ronald_L._Rivest.md "wikilink")，and [Clifford
    Stein](../Page/Clifford_Stein.md "wikilink")。*[Introduction to
    Algorithms](../Page/Introduction_to_Algorithms.md "wikilink")*,
    Second Edition. MIT Press and McGraw-Hill, 2001. ISBN
    978-0-262-03293-3. Section 34.1: Polynomial time, pp.971–979.

  - Section 7.2: The Class P, pp.234–241.

[Category:複雜度類](https://zh.wikipedia.org/wiki/Category:複雜度類 "wikilink")
[Category:最优化](https://zh.wikipedia.org/wiki/Category:最优化 "wikilink")

1.  Manindra Agrawal, Neeraj Kayal, Nitin Saxena, "[PRIMES is in
    P](http://www.cse.iitk.ac.in/users/manindra/algebra/primality_v6.pdf)",
    *Annals of Mathematics* 160 (2004), no. 2, pp. 781–793.
2.  Johnsonbaugh, Richard; Schaefer, Marcus, *Algorithms*, 2004 Pearson
    Education, page 458, ISBN 978-0-02-360692-2
3.