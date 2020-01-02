> 本文内容由[Ext函子](https://zh.wikipedia.org/wiki/Ext函子)转换而来。


在[同調代數](../Page/同調代數.md "wikilink")中，**Ext 函子**是 Hom 函子的導函子。此函子首見於[代數拓撲](https://zh.wikipedia.org/wiki/代數拓撲 "wikilink")，但其應用遍佈許多領域。

## 定義

設 \(\mathcal{C}\) 為有充足內射元的[阿貝爾範疇](../Page/阿貝爾範疇.md "wikilink")，例如一個[環](https://zh.wikipedia.org/wiki/環 "wikilink") \(R\) 上的左[模](../Page/模.md "wikilink")範疇 \(R-\mathbf{Mod}\)。固定一對象 \(A\)，定義函子 \(T_A(-) := \mathrm{Hom}_\mathcal{C}(A,-)\)，此為左[正合函子](../Page/正合函子.md "wikilink")，故存在右[導函子](https://zh.wikipedia.org/wiki/導函子 "wikilink") \(R^\bullet T_A(-)\)，記為 \(\mathrm{Ext}_\mathcal{C}^\bullet(A,-)\)。當 \(\mathcal{C}=R-\mathbf{Mod}\) 時，常記之為 \(\mathrm{Ext}_R^\bullet(A,-)\)。

根據定義，取 \(B\) 的[內射分解](https://zh.wikipedia.org/wiki/內射分解 "wikilink")

  -
    \(J(B)\longleftarrow B\longleftarrow 0\)

並取 \(\mathrm{Hom}_\mathcal{C}(A,-)\)，得到

  -
    \(\mathrm{Hom}_\mathcal{C}(A,J(B))\longleftarrow \mathrm{Hom}_\mathcal{C}(A,B) \longleftarrow 0\)

去掉首項 \(\mathrm{Hom}_\mathcal{C}(A,B)\)，最後取上同調群，便得到 \(\mathrm{Ext}_\mathcal{C}^\bullet(A,B)\)。

另一方面，若 \(\mathcal{C}\) 中也有充足射影元（例如 \(R-\mathbf{Mod}\)），則可考慮右正合函子 \(G_B(-) := \mathrm{Hom}_\mathcal{C}(-,B)\) 及其左導函子 \(L_\bullet G_B(-)\)，可證明存在自然同構 \(L_\bullet G_B(A) = \mathrm{Ext}^\bullet_\mathcal{C}(A,B)\)。換言之，對 \(A\) 取[射影分解](https://zh.wikipedia.org/wiki/射影分解 "wikilink")：

  -
    \(P(A) \longrightarrow A \longrightarrow 0\)

並取 \(\mathrm{Hom}_\mathcal{C}(-,B)\)，得到

  -
    \(\mathrm{Hom}_\mathcal{C}(P(A), B) \longrightarrow \mathrm{Hom}_\mathcal{C}(A,B) \longrightarrow 0\)

去掉尾項 \(\mathrm{Hom}_\mathcal{C}(A,B)\)，其同調群同構於 \(\mathrm{Ext}^\bullet_\mathcal{C}(A,B)\)。

## 基本性質

  - 若 \(A\) 是[射影對象或](https://zh.wikipedia.org/wiki/射影對象 "wikilink") \(B\) 是[內射對象](https://zh.wikipedia.org/wiki/內射對象 "wikilink")，則對所有 \(i>0\) 有 \(\mathrm{Ext}^i_\mathcal{C}(A,B) = 0\)。
  - 反之，若 \(\mathrm{Ext}^1_\mathcal{C}(A,-)=0\)，則 \(A\) 是[射影對象](https://zh.wikipedia.org/wiki/射影對象 "wikilink")。若 \(\mathrm{Ext}^1_\mathcal{C}(-,B)=0\)，則 \(B\) 是[內射對象](https://zh.wikipedia.org/wiki/內射對象 "wikilink")。
  - \(\mathrm{Ext}^\bullet_\mathcal{C}(\bigoplus_i A_i, B) = \coprod_i \mathrm{Ext}^\bullet_\mathcal{C}(A_i, B)\)
  - \(\mathrm{Ext}^\bullet_\mathcal{C}(A, \prod_j B_j) = \prod_j \mathrm{Ext}^\bullet_\mathcal{C}(A, B_j)\)
  - 根據[導函子性質](https://zh.wikipedia.org/wiki/導函子 "wikilink")，對每個[短正合序列](https://zh.wikipedia.org/wiki/短正合序列 "wikilink") \(0 \to B' \to B \to B'' \to 0\)，有[長正合序列](https://zh.wikipedia.org/wiki/長正合序列 "wikilink")：

<!-- end list -->

  -
    \(\cdots \to \mathrm{Ext}^{n-1}_\mathcal{C}(A, B'') \to \mathrm{Ext}^n_\mathcal{C}(A, B') \to \mathrm{Ext}^n_\mathcal{C}(A, B) \to \mathrm{Ext}^n_\mathcal{C}(A, B'') \to \mathrm{Ext}^{n+1}_\mathcal{C}(A, B'') \to \cdots\)

<!-- end list -->

  - 承上，若 \(\mathcal{C}\) 有充足的射影元，則對第一個變數也有長正合序列；換言之，對每個短正合序列 \(0 \to A' \to A \to A'' \to 0\)，有長正合序列

<!-- end list -->

  -
    \(\cdots \to \mathrm{Ext}^{n-1}_\mathcal{C}(A', B) \to \mathrm{Ext}^n_\mathcal{C}(A'', B) \to \mathrm{Ext}^n_\mathcal{C}(A, B) \to \mathrm{Ext}^n_\mathcal{C}(A', B) \to \mathrm{Ext}^{n+1}_\mathcal{C}(A'', B) \to \cdots\)

## 譜序列

今設 \(A,B\) 為含單位元的[環](https://zh.wikipedia.org/wiki/環 "wikilink")，並固定一環同態 \(A \to B\)。則由雙函子的自然同構

  -
    \(\mathrm{Hom}_B(-, \mathrm{Hom}_A(B,-)) \simeq \mathrm{Hom}_A(-, -)\)

導出[格羅滕迪克譜序列](https://zh.wikipedia.org/wiki/格羅滕迪克譜序列 "wikilink")：對每個 \(B\)-模 \(M\) 及 \(A\)-模 \(N\)，有[譜序列](../Page/譜序列.md "wikilink")

  -
    \(E_2^{pq} = \mathrm{Ext}_B^p(M, \mathrm{Ext}^q_A(B, N)) \Rightarrow \mathrm{Ext}_A^{p+q}(M, N)\)

這個關係稱為**換底**。

## Ext函子與擴張

Ext 函子得名於它與群擴張的聯繫。抽象地說，給定兩個對象 \(A, B \in \mathcal{C}\)，在擴張

  -
    \(0\rightarrow B\rightarrow C\rightarrow A\rightarrow 0\)

的等價類與 \(\mathrm{Ext}_\mathcal{C}^1(A,B)\) 之間有一一對應，下將詳述。

對任兩個擴張

\[0\rightarrow B\rightarrow C\rightarrow A\rightarrow 0\] 與

\[0\rightarrow B\rightarrow C'\rightarrow A\rightarrow 0\]

可以構造其 **Baer 和** 為 \(0 \rightarrow B \rightarrow C \times_A C' / \Delta \rightarrow A \rightarrow 0\)，其中 \(\Delta := (1,-1)(C \sqcup_B C')\)（*反對角線*）。這在等價類上構成一個群運算，可證明此群自然地同構於 \(\mathrm{Ext}^1_\mathcal{C}(A,B)\)。

對更高階的擴張，同樣可定義等價類；對任兩個 n-擴張（n\>1）

\[0\rightarrow B\rightarrow X_n\rightarrow\cdots\rightarrow X_1\rightarrow A\rightarrow 0\] 與

\[0\rightarrow B\rightarrow X'_n\rightarrow\cdots\rightarrow X'_1\rightarrow A\rightarrow 0\]

此時的 Baer 和定為

  -
    \(0 \rightarrow B \rightarrow Y_n\rightarrow X_{n-1}\oplus X'_{n-1}\rightarrow\cdots\rightarrow X_2\oplus X'_2\rightarrow X''_1\rightarrow A\rightarrow 0\)

其中 \(A := X_1 \times_A X_1'/\Delta_1\)（反對角線 \(\Delta_1\) 之定義同上），\(Y_n := X_n \sqcup_B X_n'\)。這也在 n-擴張的等價類上構成一個群運算，此群自然同構於 \(\mathrm{Ext}^n_\mathcal{C}(A,B)\)。藉此，能在任何阿貝爾範疇上定義 Ext 函子。

## 重要例子

  - 設 \(G\) 為群，取環 \(R :=\Z G\)，可以得到[群上同調](../Page/群上同調.md "wikilink")：\(\mathrm{Ext}_{\Z G}^\bullet (\Z, M ) = H^\bullet(G,M)\)。
  - 設 \(\mathcal{C}\) 為[局部賦環空間](https://zh.wikipedia.org/wiki/局部賦環空間 "wikilink") \(X\) 上的 \(\mathcal{O}_X\)-模範疇，可以得到[層上同調](https://zh.wikipedia.org/wiki/層上同調 "wikilink")：\(\mathrm{Ext}_\mathcal{C}^\bullet(\mathcal{O}_X, \mathcal{F}) = H^\bullet(X, \mathcal{F})\)。
  - 設 \(\mathfrak{g}\) 為[李代數](../Page/李代數.md "wikilink")，取環 \(R := U(\mathfrak{g})\) 為其[泛包絡代數](../Page/泛包絡代數.md "wikilink")，可以得到[李代數上同調](https://zh.wikipedia.org/wiki/李代數上同調 "wikilink")：\(\mathrm{Ext}_R^\bullet(R, M) = H^\bullet(\mathfrak{g}, M)\)。
  - 設 \(k\) 為域，\(A\) 為 \(k\)-[代數](https://zh.wikipedia.org/wiki/交換環上的代數 "wikilink")，取環 \(R := A \times A^\mathrm{op}\)，\(A\) 帶有自然的 \(R\)-模結構，此時得到 Hochschild 上同調：\(\mathrm{Ext}^\bullet_R(A, M) = HH^\bullet(A, M)\)。

## 文獻

  - Charles A. Weibel, *An introduction to homological algebra*, Cambridge University Press. ISBN 0-521-55987-1

[Category:同調代數](https://zh.wikipedia.org/wiki/Category:同調代數 "wikilink") [Category:交換代數](https://zh.wikipedia.org/wiki/Category:交換代數 "wikilink") [Category:函子](https://zh.wikipedia.org/wiki/Category:函子 "wikilink")