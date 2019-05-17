**\(\mathcal{K}\)類函數**（Class kappa
function）也稱為是在[控制理論中判斷非](https://zh.wikipedia.org/wiki/控制理論 "wikilink")[自治系統](https://zh.wikipedia.org/wiki/自治系統 "wikilink")（nonautonomous
system）是否穩定時會用到的一類函數，會將其他函數和\(\mathcal{K}\)類函數比較，以確認系統的[穩定性](https://zh.wikipedia.org/wiki/穩定性 "wikilink")。

[連續函數](https://zh.wikipedia.org/wiki/連續函數 "wikilink")\(\alpha : [0, a) \rightarrow [0, \infty)\)若滿足以下條件，則屬於\(\mathcal{K}\)類函數：

  - 函數嚴格[遞增](https://zh.wikipedia.org/wiki/递增函数 "wikilink")。
  - 函數滿足\(\alpha(0) = 0\)。

連續函數\(\alpha : [0, a) \rightarrow [0, \infty)\)若滿足以下條件，則屬於**\(\mathcal{K}_{\infty}\)類函數**：

  - 函數屬於\(\mathcal{K}\)類函數。
  - 函數的[定義域範圍可以到](../Page/定义域.md "wikilink")[無限大](https://zh.wikipedia.org/wiki/無限大 "wikilink")，\(a = \infty\).
  - 函數滿足\(\lim_{r \rightarrow \infty} \alpha(r) = \infty\).

若一非遞減的[正定函數](https://zh.wikipedia.org/wiki/正定函數 "wikilink")\(\beta\)滿足所有\(\mathcal{K}\)類（或\(\mathcal{K}_{\infty}\)類）函數的條件，只有嚴格遞增條件不滿足，可以用以下的方式讓此函數的上下界用\(\mathcal{K}\)類（或\(\mathcal{K}_{\infty}\)類）函數來表示：

\[\beta(x)\frac{x}{x+1}< \beta(x)<\beta(x)\left(\frac{x}{x+1}+1\right)=\beta(x)\frac{2x+1}{x+1}, \qquad x\in(0,a). \,\]

## \(\mathcal{KL}\)類函數

連續函數\(\beta : [0, a) \times [0, \infty) \rightarrow [0, \infty)\)若滿足以下條件，則屬於**\(\mathcal{KL}\)類函數**：

  - 對於每一個固定的\(s\)，函數\(\beta(r,s)\)屬於\(\mathcal{K}_{\infty}\)類函數
  - 對於每一個固定的\(r\)，函數\(\beta(r,s)\)會隨著\(s\)遞減，而且當\(s \rightarrow \infty\)時，\(\beta(r,s) \rightarrow 0\)。

## 參考資料

  - H. K. Khalil, Nonlinear systems, Prentice-Hall 2001. Sec. 4.4 - Def.
    4.2.

[Category:控制理論](https://zh.wikipedia.org/wiki/Category:控制理論 "wikilink")