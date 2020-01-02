> 本文内容由[Tor函子](https://zh.wikipedia.org/wiki/Tor函子)转换而来。


在[交換代數](../Page/交換代數.md "wikilink")中，**Tor 函子**是[張量積的](https://zh.wikipedia.org/wiki/張量積 "wikilink")[導函子](https://zh.wikipedia.org/wiki/導函子 "wikilink")。此函子起初是為了表述[代數拓撲中的](https://zh.wikipedia.org/wiki/代數拓撲 "wikilink") Künneth 定理與[普遍係數定理而定義](https://zh.wikipedia.org/wiki/普遍係數定理 "wikilink")。

## 定義

設 \(R\) 為[環](https://zh.wikipedia.org/wiki/環 "wikilink")。令 \(R-\mathbf{Mod}\) 為左 \(R\)-模範疇、 \(\mathbf{Mod}-R\) 為右 \(R\)-模範疇（若 \(R\) 為[交換環](https://zh.wikipedia.org/wiki/交換環 "wikilink")，則兩者等價）。固定一對象 \(B \in R-\mathbf{Mod}\)，考慮函子

  -
    \(T_B(-) := - \otimes_R B\)

這是從 \(\mathbf{Mod}-R\) 至[阿貝爾群範疇](https://zh.wikipedia.org/wiki/阿貝爾群 "wikilink") \(\mathbf{Ab}\) 的右[正合函子](../Page/正合函子.md "wikilink")（若 \(R\) 為交換環，則它是映至 \(R-\mathbf{Mod}\) 的右正合函子），因此能考慮其左[導函子](https://zh.wikipedia.org/wiki/導函子 "wikilink") \(L_\bullet T_B\)，記為 \(\mathrm{Tor}_\bullet^R(-,B)\)。

換言之，對任一左 \(R\)-模 \(A\) 取[射影分解](https://zh.wikipedia.org/wiki/射影分解 "wikilink")

  -
    \(\cdots\rightarrow P_3 \rightarrow P_2 \rightarrow P_1 \rightarrow A\rightarrow 0\)

去掉尾項 \(A\)，並對 \(B\) 取張量積，得到鏈複形

  -
    \(\cdots \rightarrow P_3\otimes B \rightarrow P_2\otimes B \rightarrow P_1\otimes B \rightarrow 0\)

並取其同調群，則得到 \(\mathrm{Tor}_\bullet^R(-,B)\)

此外，Tor 函子也能以 \(A \otimes_R -\) 的左導函子定義，兩種定義給出自然同構的函子。

## 性質

  - Tor 函子與直和交換：

<!-- end list -->

  -
    \(\mathrm{Tor}_n^R(\bigoplus_i A_i, \bigoplus_j B_j) \simeq \bigoplus_i \bigoplus_j \mathrm{Tor}_n^R(A_i,B_j)\)

<!-- end list -->

  - 對任何 \(n \geq 1\)，\(\mathrm{Tor}_n^R\) 是從 \((\mathbf{Mod}-R) \times (R-\mathbf{Mod})\) 到 \(\mathbf{Ab}\) 的[加法函子](https://zh.wikipedia.org/wiki/加法函子 "wikilink")。若 \(R\) 是交換環，則它是從 \((R-\mathbf{Mod}) \times (R-\mathbf{Mod})\) 到 \(R-\mathbf{Mod}\) 的加法函子。
  - 依據導函子性質，每個[短正合序列](https://zh.wikipedia.org/wiki/短正合序列 "wikilink") \(0\rightarrow K\rightarrow L\rightarrow M\rightarrow 0\) 導出[長正合序列](https://zh.wikipedia.org/wiki/長正合序列 "wikilink")：

<!-- end list -->

  -
    \(\cdots\rightarrow\mathrm{Tor}_{n+1}^R (M,B) \rightarrow \mathrm{Tor}_n^R (K,B) \rightarrow \mathrm{Tor}_n^R (L,B) \rightarrow\mathrm{Tor}_n^R (M,B)\rightarrow \mathrm{Tor}_{n-1}^R(K,B) \rightarrow \cdots\)
    對第二個變數亦同。

<!-- end list -->

  - 若 \(R\) 為交換環，\(r \in R\) 非零因子，則

<!-- end list -->

  -
    \(\mathrm{Tor}_1^R(R/(r),B)=\{b\in B:rb=0\}\)
    這是 Tor 函子的詞源。

<!-- end list -->

  - 由於[阿貝爾群皆有長度不超過二的](https://zh.wikipedia.org/wiki/阿貝爾群 "wikilink")[自由分解](https://zh.wikipedia.org/wiki/自由分解 "wikilink")（因為自由阿貝爾群的子群皆為自由的），此時對所有 \(n \geq 2\)，有 \(\mathrm{Tor}_n^\Z(-,-) = 0\)。

## 譜序列

設 \(A, B\) 為交換環，\(M\) 為 \(B\)-模，並固定一個環同態 \(A \to B\)。我們有雙函子的自然同構：

  -
    \((- \otimes_A B) \otimes_B M = - \otimes_A M\)

由此導出[格羅滕迪克譜序列](https://zh.wikipedia.org/wiki/格羅滕迪克譜序列 "wikilink")：對任何 \(A\)-模 \(N\)，有[譜序列](../Page/譜序列.md "wikilink")

  -
    \(E^2_{pq} = \mathrm{Tor}_p^B(\mathrm{Tor}_q^A (N,B), M) \Rightarrow \mathrm{Tor}_{p+q}^A(N, M)\)

## 與平坦模的關係

一個右 \(R\)-模是[平坦模](../Page/平坦模.md "wikilink")的充要條件是 \(\mathrm{Tor}_1^R(M,-)=0\)。此時可推出 \(\forall n \geq 1, \; \mathrm{Tor}_n^R(M,-)=0\)。左 \(R\)-模的情況準此可知。事實上，計算 Tor 函子時可以用[平坦分解代替射影分解](https://zh.wikipedia.org/wiki/平坦分解 "wikilink")；凡射影分解必為平坦分解，反之則不然；平坦分解在技術上較富彈性。

## 文獻

  - Charles A. Weibel, *An introduction to homological algebra*, Cambridge University Press. ISBN 0-521-55987-1

[Category:同調代數](https://zh.wikipedia.org/wiki/Category:同調代數 "wikilink") [Category:交換代數](https://zh.wikipedia.org/wiki/Category:交換代數 "wikilink") [Category:函子](https://zh.wikipedia.org/wiki/Category:函子 "wikilink")