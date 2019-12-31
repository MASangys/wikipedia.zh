> 本文内容由[NP \(複雜度\)](https://zh.wikipedia.org/wiki/NP_\(複雜度\))转换而来。


[P_np_np-complete_np-hard.svg](https://zh.wikipedia.org/wiki/File:P_np_np-complete_np-hard.svg "fig:P_np_np-complete_np-hard.svg") for [P](https://zh.wikipedia.org/wiki/P_\(complexity\) "wikilink"), NP, [NP-complete](https://zh.wikipedia.org/wiki/NP-complete "wikilink"), and [NP-hard](https://zh.wikipedia.org/wiki/NP-hard "wikilink") set of problems. Under the assumption that P≠NP, the existence of problems within NP but outside both **P** and NP-complete was [established by Ladner](https://zh.wikipedia.org/wiki/Ladner's_theorem "wikilink").\[1\]\]\]

**非決定性多项式集合**（，缩写：**NP**）是[计算理论](../Page/计算理论.md "wikilink")中最重要的集合之一。它包含[P和](https://zh.wikipedia.org/wiki/P "wikilink")[NP-complete](https://zh.wikipedia.org/wiki/NP-complete "wikilink")。 P集合的問題即在多项式时间内可以找出解的決策性問題(decision problem)集合。注意NP包含P和[NP-complete问题](https://zh.wikipedia.org/wiki/NP-complete "wikilink"), 因此NP集合中有簡單的問題和不容易快速得到解的難題。\[NP等不等於P?\]是一個電腦界一個知名的大難題。

## 定义与推論

### NP, NP-hard, NP-complete的定義及推論

決策問題:一個決策問題(decision problem)是指其輸出，只有「是」或「否」的問題。例如，搜尋問題為詢問 x 是否出現在一個集合 A 中?若有則輸出「是」，否則輸出「否」。
P集合: 當一個決策問題存在一個 O (n<sup>k</sup>)時間複雜度的演算法時，則稱此問題落在P 的集合中。
有一些決策問題，人類目前尚無法將他們歸入集合 P 中。為了思考這些問題，於是在一般演算法可採用的功能上，擴增以下虛構的新指令。這些新指令雖然不存在於現實中，但是對探討這些難題的性質及彼此的關係，有很大的幫助。以下是這些虛構的新指令：
1\. choice(S )：自集合 S 中，選出會導致正確解的一個元素。當集合 S 中無此元素時，則可任意選擇一個元素。
2\. failure()：代表失敗結束。
3\. success()：代表成功結束。
其中 choice(S)可以解釋成，在求解的過程中，神奇地猜中集合 S 中其中一個元素，使其結果是成功的；並且這三個指令只需要 O(1)時間來執行。當然，choice(S) 是如何快速猜中的，在此是不需討論的，因為畢竟它只是虛構的。在添加這些虛構功能後，所設計出的演算法，被稱為非決定性演算法(non-deterministic algorithm)；相較之下，原來一般的演算法，就稱為決定性演算法(deterministic algorithm)。利用非決定性演算法，我們定義出另一個集合 NP：
NP: 當一個決策問題存在一個 O (n<sup>k</sup>)時間複雜度的演算法時，則稱此問題落在NP 的集合中。

滿足問題 (satisfiability problem，簡稱 SAT )，就是一個NP 中的典型難題。

滿足問題:令 x <sub>1</sub>，x <sub>2</sub>，…，x <sub>n</sub> 代表布林變數(boolean variables)(其值非真(true)即假(false)的變數)。令-x<sub>i</sub> 代表 x<sub>i</sub> 的相反數(negation)。一個布林公式是將一些布林變數及其相反數利用而且(and)和或(or)所組成的表達式。滿足問題是判斷是否存在一種指定每個布林變數真假值的方式，使得一個布林公式為真。
輸入:一個 n 個變數的布林公式

例如: (-x <sub>1</sub>∨ -x <sub>2</sub> ∨ x <sub>3</sub>)∧ (x <sub>1</sub> ∨ x <sub>4</sub>)∧(x <sub>2</sub> ∨ -x <sub>1</sub>)

輸出:是否存在一種指定每個布林變數真假值的方式，使得此公式為真？ 例如: 是(當 x <sub>1</sub>=真，x <sub>2</sub>=真，x <sub>3</sub>=真，x <sub>4</sub>=真時，此公式為真)

利用滿足問題可以定義出NP-hard和NP-complete。但是我們需要一個問題轉換的概念。 問題轉換技巧，其所需要轉換的時間皆需在多項式時間(即 O (n<sup>k</sup>))內完成。利用此多項式時間的轉換，我們可以將 NP中的難題建立起一些有趣的關係。

問題轉換:針對兩個問題 A 和 B ，如果存在一個 O (n<sup>k</sup>)時間的(決定性)演算法，將每一個問題 A 的輸入轉換成問題 B 的輸入，使得問題 A 有解時，若且惟若，問題 B 有解。此關係被稱為，問題 A 轉換成(reduce to)問題 B ，可表示成 A ∝ B 。

一個問題 L 被稱為是 NP-hard，若且惟若，滿足問題轉換成 L(即滿足問題∝L)。 滿足問題是 NP 中的難題，而 NP-hard 的問題則是滿足問題衍生(轉換)出來的。

一個問題 L 被稱為是 NP-complete，若且惟若，L ∈NP 而且 L ∈NP-hard。

史蒂芬庫克(Stephen Cook)證明了一個十分重要的性質：
性質(A)：「任一個 NP 內的問題都可以，在多項式時間內，被轉換成滿足問題。」

性質(B)：「任一個 NP 內的問題都可以，在多項式時間內，被轉換成任一個 NP-complete 問題。」

性質(C)：「任一個 NP 內的問題都可以，在多項式時間內，被轉換成任一個 NP-hard 問題。」

性質(D)：「滿足問題在集合 P 中，若且唯若，P=NP。」

## 例子

比如說，一個決策性問題:輸入一個整數x, 請回答x是否為偶數(even number)。我們利用一個程式判斷x除以2是否整除即可得到最後結果 。此程式是決定性演算法, 並且其時間複雜度為O(1)=O(n<sup>0</sup>), 因此此問題落入P集合中。

再舉一個例子，下面是滿足問題的一個非決定性演算法。
Algorithm satisfiability (E (x <sub>1</sub>, … , x<sub>n</sub> ))
{ Step 1: for i =1 to n do
x<sub>i</sub> ←choice (true, false) /\*利用 choice 直接猜中 x<sub>i</sub> 的真假值\*/
Step 2: if E (x <sub>1</sub>, … , x <sub>n</sub>) is true then success () /\*計算此布林公式是否為真\*/
　　　 else failure ();
}

上述的非決定性演算法的時間複雜度為O(n<sup>1</sup>)即代表滿足問題落入NP集合中。

## 参考文献

### 引用

### 来源

  - [Thomas H. Cormen](https://zh.wikipedia.org/wiki/Thomas_H._Cormen "wikilink"), [Charles E. Leiserson](https://zh.wikipedia.org/wiki/Charles_E._Leiserson "wikilink"), [Ronald L. Rivest](https://zh.wikipedia.org/wiki/Ronald_L._Rivest "wikilink"), and [Clifford Stein](https://zh.wikipedia.org/wiki/Clifford_Stein "wikilink"). *[Introduction to Algorithms](https://zh.wikipedia.org/wiki/Introduction_to_Algorithms "wikilink")*, Second Edition. MIT Press and McGraw-Hill, 2001. . Section 34.2: Polynomial-time verification, pp. 979–983.

  -
  - [David Harel](https://zh.wikipedia.org/wiki/David_Harel "wikilink"), [Yishai Feldman](https://zh.wikipedia.org/wiki/Yishai_Feldman "wikilink"). Algorithmics: The Spirit of Computing, Addison-Wesley, Reading, MA, 3rd edition, 2004.

<!-- end list -->

  - 俞征武, 發現演算法, 旗標出版股份有限公司, 2017.

## 外部連結

  -
  - [Graph of NP-complete Problems](http://page.mi.fu-berlin.de/aneumann/npc.html)

  - [American Scientist](../Page/American_Scientist.md "wikilink") primer on traditional and recent complexity theory research: ["Accidental Algorithms"](http://www.americanscientist.org/issues/pub/accidental-algorithms/)

{{-}}

[Category:複雜度類](https://zh.wikipedia.org/wiki/Category:複雜度類 "wikilink") [Category:计算机科学中未解决的问题](https://zh.wikipedia.org/wiki/Category:计算机科学中未解决的问题 "wikilink")

1.  R. E. Ladner "On the structure of polynomial time reducibility," J.ACM, 22, pp. 151–171, 1975. Corollary 1.1. [ACM site](http://portal.acm.org/citation.cfm?id=321877&dl=ACM&coll=&CFID=15151515&CFTOKEN=6184618).