在[計算複雜度理論裡面](https://zh.wikipedia.org/wiki/計算複雜度理論 "wikilink")，[複雜度類](https://zh.wikipedia.org/wiki/複雜度類 "wikilink")**ELEMENTARY**是所有[指數譜系裡面的複雜度類聯集](https://zh.wikipedia.org/wiki/指數譜系 "wikilink")：

  -
    <math> \\begin{matrix}

` \mathrm{ELEMENTARY}  & = & \mathrm{EXP}\cup\mathrm{2EXP}\cup\mathrm{3EXP}\cup\cdots \\`
`                  & = & \mathrm{DTIME}(2^{n})\cup\mathrm{DTIME}(2^{2^{n}})\cup`
`                        \mathrm{DTIME}(2^{2^{2^{n}}})\cup\cdots`
` \end{matrix}`

</math>

這名稱最早是為了探討[可計算函數和](https://zh.wikipedia.org/wiki/可計算函數 "wikilink")[不可判定問題](https://zh.wikipedia.org/wiki/不可判定問題 "wikilink")，由[László
Kalmár所提出](https://zh.wikipedia.org/wiki/László_Kalmár "wikilink")；most
problems in it are far from elementary。Some natural recursive problems
lie outside ELEMENTARY, and are thus
[NONELEMENTARY](https://zh.wikipedia.org/wiki/NONELEMENTARY "wikilink")。相當值得注意的，有一些[原始遞歸函數問題不在ELEMENTARY內](https://zh.wikipedia.org/wiki/原始遞歸函數 "wikilink")。我們已知：

LOWER-ELEMENTARY \(\subsetneq\) [EXPTIME](../Page/EXPTIME.md "wikilink")
\(\subsetneq\) ELEMENTARY \(\subsetneq\)
[PR](https://zh.wikipedia.org/wiki/PR_\(complexity\) "wikilink")

與ELEMENTARY僅包含有限的[冪](../Page/冪.md "wikilink")（例如，\(O(2^{2^n})\)）比較，[PR使用的](https://zh.wikipedia.org/wiki/PR_\(複雜度\) "wikilink")
[超運算更一般化](https://zh.wikipedia.org/wiki/超運算 "wikilink")（例如，[tetration](https://zh.wikipedia.org/wiki/tetration "wikilink")），因此PR不包含於ELEMENTARY。

[Category:複雜度類](https://zh.wikipedia.org/wiki/Category:複雜度類 "wikilink")