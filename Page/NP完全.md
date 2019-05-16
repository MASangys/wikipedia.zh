**NP完全**或**NP完備**（**NP-Complete**，縮寫為**NP-C**或**NPC**），是[計算複雜度理論中](https://zh.wikipedia.org/wiki/計算複雜度理論 "wikilink")，[決定性問題的等級之一](../Page/決定性問題.md "wikilink")。NP完备是[NP与](../Page/NP_\(複雜度\).md "wikilink")[NP困难的](../Page/NP困难.md "wikilink")[交集](../Page/交集.md "wikilink")，是NP中最難的[決定性問題](../Page/決定性問題.md "wikilink")。因此NP完備問題應該是最不可能被化簡為[P](../Page/P_\(複雜度\).md "wikilink")（多項式時間可決定）的決定性問題的集合。若**任何**NPC問題得到多項式時間的解法，那此解法就可應用在所有NP問題上。更詳細的定義容下敘述。

一個NPC問題的例子是[子集合加總問題](https://zh.wikipedia.org/wiki/子集合加總問題 "wikilink")，題目為

  -
    給予一個有限數量的整數集合，找出任何一個此集合的非空子集且此子集內整數和為零。
    意即：\(S\)是一個包括若干整數的集合，找出任一一个\(S'\subset S\)且\(\sum_{x\in S'} x = 0\)

這個問題的答案非常容易驗證，但目前沒有任何一個夠快的方法可以在合理的時間內（意即多項式時間）找到答案。只能一個個將它的子集取出來一一測試，它的時間複雜度是Ο(2<sup>n</sup>)，n是此集合的元素數量。

## NPC的正式定義

[Complexity_classes.svg](https://zh.wikipedia.org/wiki/File:Complexity_classes.svg "fig:Complexity_classes.svg")

一個決定性問題*C*若是為NPC，則代表它對NP是[完備的](../Page/完備_\(複雜度\).md "wikilink")，這表示：

1.  它是一個NP問題，且
2.  其他屬於NP的問題都可在多項式時間內[归约成它](https://zh.wikipedia.org/wiki/归约 "wikilink")。

**可归约**在此意指對每個問題*L*，總有一個[多項式時間多對一變換](https://zh.wikipedia.org/wiki/多項式時間多對一變換 "wikilink")，即一個決定性的演算法可以將實例*l*
∈ *L*轉化成實例*c* ∈ *C*，並讓*c*回答Yes[-{zh-hans:当且仅当;
zh-hant:若且唯若;}-此答案對](../Page/当且仅当.md "wikilink")*l*也是Yes。為了證明某個NP問題*A*實際上是NPC問題，證明者必須找出一個已知的NPC問題可以變換成*A*。

本定義得到一個結論，就是若上述的*C*有一個多項式時間可解的演算法，則我們可以將所有的NP問題降到P之中。

這個定義是[史提芬·古克](https://zh.wikipedia.org/wiki/史提芬·古克 "wikilink")所提出。雖然NPC這個詞並沒有出現在這篇論文上任何地方。在這個資訊科學會議上，資訊科學家激動地討論NPC問題是否可以在一個確定型[圖靈機上以多項式時間求解](https://zh.wikipedia.org/wiki/圖靈機 "wikilink")。[John
Hopcroft總結與會眾人的共識](https://zh.wikipedia.org/wiki/John_Hopcroft "wikilink")，認為由於沒有人能對某一命題提出駁倒對方的證明，此問題不會於現在解決。此命題就是知名的

  -
    [**P和NP相等嗎?**](https://zh.wikipedia.org/wiki/P/NP問題 "wikilink")。尚未有人能提出證明，說明NPC問題是否能在多項式時間中解決，使得此問題成為著名的[数学中未解决的问题](https://zh.wikipedia.org/wiki/数学中未解决的问题 "wikilink")。位于[美国麻省剑桥市的](../Page/剑桥_\(马萨诸塞州\).md "wikilink")「[克雷數學研究所](https://zh.wikipedia.org/wiki/克雷數學研究所 "wikilink")」（Clay
    Mathematics
    Institute，簡稱CMI）提供了一百萬[美元獎金給任何可以證明P](../Page/美元.md "wikilink")=NP或P≠NP的人。

一開始很難相信NPC問題是實際存在的，但著名的[古克-李芬定理說明了一切](../Page/Cook-Levin理論.md "wikilink")（由與Cook獨立證出[SAT問題是NPC問題](https://zh.wikipedia.org/wiki/布爾可滿足性問題 "wikilink")，簡化過但依舊艱深的[證明在此](../Page/Cook-Levin理論.md "wikilink")）。

在1972年，[理查德·卡普證明有好幾個問題也是NPC](../Page/理查德·卡普.md "wikilink")（請見[卡普的二十一個NP-完全問題](../Page/卡普的二十一個NP-完全問題.md "wikilink")），因此除了SAT問題外，的確存在著一整類NPC問題。從古克開始，數千個問題藉由從其他NPC問題變換而證實也是NPC問題，其中很多問題被蒐集在[Garey與](https://zh.wikipedia.org/wiki/Garey "wikilink")[Johnson於](https://zh.wikipedia.org/wiki/David_S._Johnson "wikilink")1979年出版的書之中。

滿足條件2（无论是否满足条件1）的問題集合被稱為[NP困难](https://zh.wikipedia.org/wiki/NP-hard "wikilink")。一個NP困难問題至少跟NPC問題一樣難。有一类问题已经被证明属于NP困难但不属于NP，即，这类问题至少与NP-complete一样难，但这类问题又不属于NP（自然也不属于NP-complete）。例如[圍棋的必勝下法](https://zh.wikipedia.org/wiki/圍棋 "wikilink")，就是这样一个問題。\[1\]

## 範例問題

另一個有趣的例是[圖同構（isomorphism）問題](https://zh.wikipedia.org/wiki/圖同構 "wikilink")，即以[圖論方法決定兩個圖是否為同構](https://zh.wikipedia.org/wiki/圖論 "wikilink")。兩圖同構的直覺條件是若其中一圖可以經由移動[頂點使它與另一個圖重合](https://zh.wikipedia.org/wiki/图#基本术语 "wikilink")，則為同構。思考下列兩問題：

  - 圖同構：圖G<sub>1</sub>是否與圖G<sub>2</sub>同構？
  - [子圖同構](https://zh.wikipedia.org/wiki/圖同構 "wikilink")：圖G<sub>1</sub>是否與圖G<sub>2</sub>的**某一子圖**同構？

子圖同構問題是NPC，而圖同構問題一般認為不是P也不是NPC問題，雖然它明顯是一個NP問題。這是一個典型被認為很難卻還不是NPC問題的例子。

想要證明一個問題是NPC，最簡單的方法是先證明它屬於NP，然後將「某個已知是NPC的問題」變換成它。因此在學習變換技巧前，先熟悉各種不同類型的NPC問題是很有用的。下表列出了一些以[決定性命題表示的著名NPC問題](../Page/決定性問題.md "wikilink")：

[Relative_NPC_chart.svg](https://zh.wikipedia.org/wiki/File:Relative_NPC_chart.svg "fig:Relative_NPC_chart.svg")

  - [-{zh-hans:布尔可满足性问题;
    zh-hant:布林滿足問題;}-](https://zh.wikipedia.org/wiki/布爾可滿足性問題 "wikilink")
  - [N-puzzle問題](../Page/數字推盤遊戲.md "wikilink")（[華容道問題](../Page/華容道_\(遊戲\).md "wikilink")）
  - [背包問題](https://zh.wikipedia.org/wiki/背包問題 "wikilink")
  - [漢彌爾頓迴圈問題](https://zh.wikipedia.org/wiki/漢彌爾頓迴圈問題 "wikilink")
  - [旅行推销员问题](../Page/旅行推销员问题.md "wikilink")
  - [子圖同構問題](https://zh.wikipedia.org/wiki/子圖同構問題 "wikilink")：（）
  - [子集合加總問題](https://zh.wikipedia.org/wiki/子集合加總問題 "wikilink")
  - [分團問題](https://zh.wikipedia.org/wiki/分團問題 "wikilink")
  - [頂點涵蓋問題](https://zh.wikipedia.org/wiki/覆蓋_\(圖論\) "wikilink")：（Vertex
    cover）
  - [獨立頂點集問題](https://zh.wikipedia.org/wiki/獨立頂點集問題 "wikilink")：（）
  - [圖著色問題](https://zh.wikipedia.org/wiki/圖著色問題 "wikilink")
  - [踩地雷](../Page/踩地雷.md "wikilink")\[2\]

更多NPC問題的例子，請見。

右邊是一些NPC問題及證明其為NPC問題的變換流程圖。在流程圖中，箭頭代表的是從何問題變換成另一問題的過程，要注意的是這張圖並不代表這些問題的數學關係，事實上任兩個本質為NPC的問題都可以以多項式時間變換，這圖僅指示可以讓研究者較為簡單地變換問題的順序。

通常一個P與NPC問題的敘述看起來只有一些不同的地方，例如3SAT問題（SAT問題的限制版本）仍然是NPC問題，但更限制的[2SAT問題則是個P問題](https://zh.wikipedia.org/wiki/2SAT "wikilink")（準確的說，是[NL-complete問題](https://zh.wikipedia.org/wiki/NL-complete "wikilink")），而條件較為寬鬆的MAX
2SAT問題卻又成了NPC問題。決定一個圖是否能被兩色塗滿是P問題，但三色圖是NPC問題，即使我們將它限制在[平面圖上](../Page/平面图_\(图论\).md "wikilink")。決定一個圖有無[迴圈或它是兩分圖很容易](https://zh.wikipedia.org/wiki/图#基本术语 "wikilink")（在[log空間等級](../Page/L_\(複雜度\).md "wikilink")），但是發現一個最大二分圖或最大迴圈子圖則是NPC。以一固定百分比來求郊遊打包問題的最佳解可以在多項式時間解決，但是求最佳解是NPC。

## 折衷的解法

目前為止，所有已知解NPC問題的[演算法需要依照資料數量而定的](https://zh.wikipedia.org/wiki/演算法 "wikilink")**超多項式**（superpolynomial）時間，目前也不知道是否有任何更快的演算法存在。因此要在輸入資料量大的時候解決一個NPC問題，通常我們使用下列的手段來解：

  - [近似演算法](https://zh.wikipedia.org/wiki/近似演算法 "wikilink")：這類演算法可以快速發現離最佳解在一定差距內的次佳解。
  - [亂數演算法](https://zh.wikipedia.org/wiki/随机化算法 "wikilink")：此類演算法可提供一亂數產生的輸入資料，讓**本質上解答分佈均勻**的受測程式可以有良好的求解效率。對於解答分佈不均勻的程式，則可以降低亂數程度以改變輸入資料。
  - 特例：此演算法可以在題目呈獻某些特殊情況時快速得解。[參數化複雜度](https://zh.wikipedia.org/wiki/參數化複雜度 "wikilink")（）可視為廣義的此類演算法。
  - [啟發式演算法](../Page/启发式搜索.md "wikilink")：這種演算法在許多時候可以產生**理性解答**（即運用評比或線索找出解），但無法保證它效率的良莠與解答的好壞程度。一個啟發式演算法的例子是用在[圖著色問題以O](https://zh.wikipedia.org/wiki/圖著色問題 "wikilink")（*n*
    log
    *n*）的[貪婪演算法找次佳解](https://zh.wikipedia.org/wiki/貪婪演算法 "wikilink")，用在某些編譯器的[暫存器配置階段上](../Page/暫存器配置.md "wikilink")，此技術又叫[圖著色全域暫存器配置](https://zh.wikipedia.org/wiki/圖著色全域暫存器配置 "wikilink")（graph-coloring
    global register
    allocation）。每頂點視為一變數，每邊代表兩變數同時使用的情況，顏色則代表配置給每一變數的[暫存器編號](https://zh.wikipedia.org/wiki/暫存器 "wikilink")。由於大多數的[RISC機器擁有大量通用暫存器](https://zh.wikipedia.org/wiki/RISC "wikilink")，因此啟發式演算法很適合用來解這類題目。

## 其他變換法

依照上述NPC的定義，所謂的變換其實是[多項式時間多對一變換的簡稱](https://zh.wikipedia.org/wiki/多項式時間多對一變換 "wikilink")。

另一種化約法稱為[多项式时间图灵归约](https://zh.wikipedia.org/wiki/多项式时间图灵归约 "wikilink")（）。若我們提供一個副函式（subroutine）可以在多項式時間解出"Y"，**又**可寫出呼叫此副函式的程式並在多項式時間解出問題"X"，代表我們可以將"X"多項式時間圖靈變換成"Y"。相較起來，不同處在於多對一變換只能呼叫上述副函式**一次**，且副函式的回傳值必須**就是**整個變換程式回傳的值。

如果有人使用圖靈變換而非多對一變換來解析NPC，此問題的解答集合不一定會小於NPC。孰大孰小其實是個開放問題。如果兩個概念相同，則可導出NP=[反NP](../Page/反NP.md "wikilink")（[co-NP](../Page/反NP.md "wikilink")）。此結論成立的道理在於NPC與反NPC的定義以图灵归约來看是相等的，且圖靈變換定義的NPC包含多對一變換定義的NPC，反NPC也是相同情況。所以若是兩種變換定義的NPC一樣大的話，反NPC也會比照辦理（在兩者的定義之下）。例如SAT的反問題也會是NPC（在兩者的定義之下）。因此推得NP
=
反NP（證明在[反NP條目中](../Page/反NP.md "wikilink")）。雖然NP是否等於反NP是個開放問題，但一般認為這似乎不大可能，也因此那兩類的NPC定義也不大可能相等。

另一種很常用於NPC證明的變換手法是[對數空間多對一變換](https://zh.wikipedia.org/wiki/對數空間多對一變換 "wikilink")（[logarithmic-space
many-one
reduction](https://zh.wikipedia.org/wiki/Log-空间规约 "wikilink")），它是一種可以在對數量級空間運用的多對一變換法。由於每道可以在對數空間完成的運算也可以在多項式時間做完，因此能使用對數空間多對一變換的場合也可以使用多項式時間多對一變換。本方法較多項式時間多對一變換優雅，它也可以讓我們對演算法複雜度細分出更多分類，例如[P完備複雜度](https://zh.wikipedia.org/wiki/P完備 "wikilink")。而NPC的定義是否會因為使用不同變換手法而產生差異，仍是一個未知的問題。

## 参见

  - [NP-complete問題列表](https://zh.wikipedia.org/wiki/NP-complete問題列表 "wikilink")
  - [幾乎完備](https://zh.wikipedia.org/wiki/幾乎完備 "wikilink")（）問題與[弱完備](https://zh.wikipedia.org/wiki/弱完備 "wikilink")（）問題
  - [ASR-complete](https://zh.wikipedia.org/wiki/ASR-complete "wikilink")
  - [Ladner理論](https://zh.wikipedia.org/wiki/Ladner理論 "wikilink")
  - [NP困难](../Page/NP困难.md "wikilink")
  - [P/NP问题](https://zh.wikipedia.org/wiki/P/NP问题 "wikilink")

## 参考文献

### 引用

### 书籍

  -
  - （此書是發展此理論及集多種問題的經典）

  -
  -
  -
  -
  -
### 网页

  - [Computational Complexity of Games and
    Puzzles](http://www.ics.uci.edu/~eppstein/cgt/hard.html)
  - [Tetris is Hard, Even to
    Approximate](http://arxiv.org/abs/cs.CC/0210020)
  - [Minesweeper is
    NP-complete\!](https://web.archive.org/web/20061216121200/http://for.mat.bham.ac.uk/R.W.Kaye/minesw/ordmsw.htm)

{{-}}

[Category:複雜度類](https://zh.wikipedia.org/wiki/Category:複雜度類 "wikilink")
[Category:最优化](https://zh.wikipedia.org/wiki/Category:最优化 "wikilink")
[Category:NP完全问题](https://zh.wikipedia.org/wiki/Category:NP完全问题 "wikilink")

1.  此段原称NP-Hard问题为“一個滿足條件2但不滿足條件1的問題”，应是有误。改为现版本，依据为《Introduction to
    Algorithms》3rd By Thomas H. Cormen英文版1078页，引理1
2.  [How Complicated is Minesweeper? - Richard
    Kaye](http://web.mat.bham.ac.uk/R.W.Kaye/minesw/ASE2003.pdf)