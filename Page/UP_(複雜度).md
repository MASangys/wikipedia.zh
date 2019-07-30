在[計算複雜度理論內](https://zh.wikipedia.org/wiki/計算複雜度理論 "wikilink")，**UP**（"Unambiguous Non-deterministic Polynomial-time"，非模糊非決定型多項式時間）是一個[決定型問題的複雜度類](https://zh.wikipedia.org/wiki/決定型問題 "wikilink")，能以[非決定型圖靈機在](https://zh.wikipedia.org/wiki/非決定型圖靈機 "wikilink")[多項式時間](../Page/多項式時間.md "wikilink")內解決，且對任何輸入只有至多一條接受的路徑。**UP**包含了**[P](../Page/P_\(複雜度\).md "wikilink")**，而且被包含在**[NP](../Page/NP_\(複雜度\).md "wikilink")**內。

一個常見有關**NP**的另一定義是一個語言在**NP**內，若且唯若一個給定的回答可以被決定型圖靈機在多項式時間內驗證。與之類似的說法是，一個語言在**UP**裡面，若一個給定的回答可以在多項式時間內被檢證，並且這個驗證的機器對任何給定的問題至多只接受*一個*答案。更正式的說法是，一個語言*L*屬於**UP**內，若存在多項式時間演算法*A*以及一個常數c，使得

  -
    若字串x屬於L，則存在唯一一個y，使得|y| = O(|x|<sup>c</sup>)，且A(x,y) = 1
    若字串x不屬於L，則不存在y使得|y| = O(|x|<sup>c</sup>)，且A(x,y) = 1

則此演算法A在多項式時間內驗證*L*。

**UP**尚未被找出有任何*完全問題*（complete problems）。\[1\]

## 參考資料

[Category:複雜度類](https://zh.wikipedia.org/wiki/Category:複雜度類 "wikilink")

1.