在[計算複雜度理論內](https://zh.wikipedia.org/wiki/計算複雜度理論 "wikilink")，**NSPACE(*f*(*n*))**這個[複雜度類是一個](https://zh.wikipedia.org/wiki/複雜度類 "wikilink")[決定性問題的集合](../Page/決定性問題.md "wikilink")，裡面的問題可以以[非確定型圖靈機使用](https://zh.wikipedia.org/wiki/非確定型圖靈機 "wikilink")*O*(*f*(*n*))這麼多空間，不限制時間來解決。或者，換句話說，這是[DSPACE的非確定型版本](https://zh.wikipedia.org/wiki/DSPACE "wikilink")。

有一些重要的複雜度類可以使用**NSPACE**來定義。這些複雜度類包括了：

  - **[REG](https://zh.wikipedia.org/wiki/正則語言 "wikilink")** =
    **DSPACE**(*O*(1)) = **NSPACE**(*O*(1))，這裡
    **REG**是[正則語言](https://zh.wikipedia.org/wiki/正則語言 "wikilink")(regular
    language)的複雜度類(非確定的特性在常數空間之內並沒有增加計算的能力)。
  - **[NL](https://zh.wikipedia.org/wiki/NL_\(複雜度\) "wikilink")** =
    **NSPACE**(*O*(log *n*))
  - **[CSL](https://zh.wikipedia.org/wiki/上下文有關語言 "wikilink")** =
    **NSPACE**(*O*(*n*))，這裡**CSL**是[上下文有關語言](https://zh.wikipedia.org/wiki/上下文有關語言 "wikilink")(context-sensitive
    language)的複雜度類。
  - **[PSPACE](../Page/PSPACE.md "wikilink")** = **NPSPACE** =
    \(\bigcup_{k\in\mathbb{N}} \mbox{NSPACE}(n^k)\)
  - **[EXPSPACE](../Page/EXPSPACE.md "wikilink")** = **NEXPSPACE** =
    \(\bigcup_{k\in\mathbb{N}} \mbox{NSPACE}(2^{n^k})\)

最後兩個結論是從[薩維奇定理導出](https://zh.wikipedia.org/wiki/薩維奇定理 "wikilink")，這定理指出對任何*f*(*n*)
≥ log(*n*)，

  -
    **NSPACE**(*f*(*n*)) ⊆ **DSPACE**(*f*<sup>2</sup>(*n*))。

[Immerman–Szelepcsényi定理則指出對任何](https://zh.wikipedia.org/wiki/Immerman–Szelepcsényi定理 "wikilink")，**NSPACE**(*s*(*n*))在補集運算下封閉(closed
under complement)。

**NSPACE**可以與[DTIME作連接如下](../Page/DTIME.md "wikilink")： 對任何[space
constructible
function](https://zh.wikipedia.org/wiki/space_constructible_function "wikilink")
*s*(*n*),

\[\mbox{NSPACE}(s(n)) \subseteq \bigcup_{k \geq 1} \mbox{DTIME}(2^{k \cdot s(n)})\]

## 參考資料

.

[Category:複雜度類](https://zh.wikipedia.org/wiki/Category:複雜度類 "wikilink")
[Category:計算資源](https://zh.wikipedia.org/wiki/Category:計算資源 "wikilink")