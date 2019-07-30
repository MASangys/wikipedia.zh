在[計算複雜度理論內](https://zh.wikipedia.org/wiki/計算複雜度理論 "wikilink")，**Cook–Levin理論**或者**Cook理論**，證明了[布尔可满足性问题](../Page/布尔可满足性问题.md "wikilink")（SAT）是[NP完全](../Page/NP完全.md "wikilink")問題。換句話說，任何[NP裡面的問題可以在多項式時間內](../Page/NP_\(複雜度\).md "wikilink")，使用[圖靈機](https://zh.wikipedia.org/wiki/圖靈機 "wikilink")，將之[歸約](../Page/歸約.md "wikilink")成「一個布林方程式是否存在解」這個問題。

這理論一個非常重要的結果是，如果存在一個決定型多項式時間演算法，可以解決SAT的話，則對於*所有的*[NP裡面的問題都存在決定型多項式時間演算法](../Page/NP_\(複雜度\).md "wikilink")。而且，非常重要的，這對其他的[NP完全](../Page/NP完全.md "wikilink")問題也都成立。

有關以上這個演算法存在與否的問題，又被稱為[P/NP問題](https://zh.wikipedia.org/wiki/P/NP問題 "wikilink")。而且廣泛認為這是現在的理論電腦科學裡面，最重要的未解問題。**Cook–Levin理論**是以[史提芬·古克和](https://zh.wikipedia.org/wiki/史提芬·古克 "wikilink")[利奥尼德·李文為名](https://zh.wikipedia.org/wiki/利奥尼德·李文 "wikilink")。

## 貢獻

NP-完備的概念是在1960晚期和1970初期，被美國和蘇聯的研究者於同一時期分別建立起來。

在1971年的美國，[史提芬·古克發表了他的論文](https://zh.wikipedia.org/wiki/史提芬·古克 "wikilink")"The complexity of theorem proving procedures"\[1\]於新成立的ACM [Symposium on Theory of Computing內](https://zh.wikipedia.org/wiki/Symposium_on_Theory_of_Computing "wikilink")。[理查德·卡普](../Page/理查德·卡普.md "wikilink")接續的論文"Reducibility among combinatorial problems"\[2\]則藉由提出了[二十一個NP-完全問題的列表](../Page/卡普的二十一個NP-完全問題.md "wikilink")，讓古克之前的論文重新受到了注意。古克和卡普因為這個成就得到了[圖靈獎](https://zh.wikipedia.org/wiki/圖靈獎 "wikilink")。

Theodore P. Baker, [John Gill](https://zh.wikipedia.org/wiki/John_Gill_\(climber\) "wikilink")，和[Robert Solovay於](https://zh.wikipedia.org/wiki/Robert_Solovay "wikilink")1975年證明了使用[諭示機模型解決NP](https://zh.wikipedia.org/wiki/諭示機 "wikilink")-問題需要指數時間，因此對於NP-完備性的興趣又再次被提高。\[3\]

在蘇聯，M. Dekhtiar於1969年發表了與Baker，Gill，和Solovay等同的研究。\[4\]過後[利奧尼德·李文的論文](https://zh.wikipedia.org/wiki/利奧尼德·李文 "wikilink")"Universal search problems"\[5\]翻譯過後出版於1973年。不過在更早的幾年之前，這論文的內容就有在演講中提到並且付印過。

李文的研究與古克和卡普些微的不同，在於他考慮的議題專注在[搜尋型問題](https://zh.wikipedia.org/wiki/搜尋型問題 "wikilink")。這類問題不僅僅是找到解答存在與否，還必須要輸出解答。他提出了六個NP-完全的搜尋型問題，並且還附加證明了一個能在最佳時間內解決這問題的演算法。

## 定義

对于一個[決定性問題](../Page/決定性問題.md "wikilink")，如果我們可以使用[非決定型圖靈機在](https://zh.wikipedia.org/wiki/非決定型圖靈機 "wikilink")[多項式時間](../Page/多項式時間.md "wikilink")之內解決它，我们称它*在[NP內](../Page/NP_\(複雜度\).md "wikilink")*。

一個*布爾可滿足性問題的成員（instance）*是一個布爾表達式，或者說，一些布爾變數跟布爾[邏輯運算符的組合](https://zh.wikipedia.org/wiki/邏輯運算符 "wikilink")。

对于一個表達式，如果存在某些給予布爾變數[真值的方式使得這個表達式的值為真](https://zh.wikipedia.org/wiki/真值 "wikilink")，我们称它*可滿足的*。

## 概念

給定任何NP的決定性問題，建立一個可以在多項式時間內解決此問題的非決定型圖靈機。然後，對每個輸入，建立一個布爾表示式，告訴我們這個輸入進去「是否會正確運作，停止，並且回傳答案為真」。那麼，這個表示式就是可滿足的，若且唯若這個機器正確的跑完這個輸入，並且會停止，回答這個輸入是正確的。這樣，問題「這個我們建立的表示式是否可滿足」，與問題「這個圖靈機是否會回傳"真"」就會變成等價的問題。

## 結果

這個定理的證明展現了任何NP問題都可以在多項式時間內歸約成（另外事實上，只需要對數空間）轉換成一個布爾可滿足性問題。這代表如果布爾可滿足性問題可以用[圖靈機在多項式時間內解決](https://zh.wikipedia.org/wiki/圖靈機 "wikilink")，那麼所有NP內的問題都可以在多項式時間內解決，因此[複雜度類NP就會等於複雜度類P](https://zh.wikipedia.org/wiki/複雜度類 "wikilink")。

NP-完全的重要性在1972年因為[理察·卡普的論文](https://zh.wikipedia.org/wiki/理察·卡普 "wikilink")"Reducibility among combinatorial problems"而清楚的表現出來。裡面列出了二十一個有關組合和圖論的問題（[卡普的二十一個NP-完全問題](../Page/卡普的二十一個NP-完全問題.md "wikilink")），證明裡面的每個均因為其難以解決而惡名昭彰的問題都是NP-完全。\[6\]

## 相關資料

[Category:計算複雜性理論](https://zh.wikipedia.org/wiki/Category:計算複雜性理論 "wikilink") [Category:數學定理](https://zh.wikipedia.org/wiki/Category:數學定理 "wikilink") [Category:包含證明的條目](https://zh.wikipedia.org/wiki/Category:包含證明的條目 "wikilink")

1.
2.
3.
4.
5.   由
6.