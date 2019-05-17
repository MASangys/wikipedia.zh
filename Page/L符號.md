**L符號**是個類似[大O符號的](https://zh.wikipedia.org/wiki/大O符號 "wikilink")[漸近符號](https://zh.wikipedia.org/wiki/漸近分析 "wikilink")，標記為\(L_n[\alpha,c]\)，多用於表示特定[演算法的](https://zh.wikipedia.org/wiki/演算法 "wikilink")[計算複雜性](../Page/計算複雜性理論.md "wikilink")。

## 定義

L符號的定義如下：

\[L_n[\alpha,c]=e^{(c+o(1))(\ln n)^\alpha(\ln\ln n)^{1-\alpha}}\]

其中，*c*為一正實數，且\(\alpha\)為一實數\(0 \leq \alpha \leq 1\)。

L符號主要用於，表示困難[數論問題之演算法的複雜性](https://zh.wikipedia.org/wiki/數論 "wikilink")，如[整數分解的篩法及](https://zh.wikipedia.org/wiki/整數分解 "wikilink")[離散對數的解法](https://zh.wikipedia.org/wiki/離散對數 "wikilink")。L符號可簡化對這些演算法的分析，以\(e^{c(\ln n)^\alpha(\ln\ln n)^{1-\alpha}}\)表示主要項，\(e^{o(1)(\ln n)^\alpha(\ln\ln n)^{1-\alpha}}\)則用以表示其他較小的項。

當\(\alpha\)為0時，

\[L_n[\alpha,c] = L_n[0, c] = e^{(c + o(1)) \ln\ln n} = (\ln n)^{c + o(1)}\,\]

是個ln *n*的[多項式函數](https://zh.wikipedia.org/wiki/多項式函數 "wikilink")；而當\(\alpha\)為1時，

\[L_n[\alpha,c] = L_n[1, c] = e^{(c + o(1)) \ln n} = n^{c + o(1)}\,\]

則會是ln *n*的[指數函數](https://zh.wikipedia.org/wiki/指數函數 "wikilink")（即*n*的多項式函數）。

當\(\alpha\)介於0與1之間時，L符號為ln *n*的[次指數](https://zh.wikipedia.org/wiki/时间复杂度#次指數時間 "wikilink")（與[超越多項數](https://zh.wikipedia.org/wiki/时间复杂度#超越多项式时间 "wikilink")）函數。

## 例子

許多通用的[整數分解演算法都具有次指數複雜度](https://zh.wikipedia.org/wiki/整數分解 "wikilink")，其中目前已知最快的為[普通數域篩選法](https://zh.wikipedia.org/wiki/普通數域篩選法 "wikilink")，其時間複雜度估算為

\[L_n[1/3, c] = e^{(c+o(1))(\ln n)^{1/3}(\ln \ln n)^{2/3}}\]

其中，\(c = (64/9)^{1/3} \approx 1.923\)。在普通數域篩法出現前，最快的整數分析演算法為，其時間複雜度估算為

\[L_n[1/2, 1] = e^{(1+o(1))(\ln n)^{1/2}(\ln \ln n)^{1/2}}.\,\]

對[橢圓曲線](https://zh.wikipedia.org/wiki/橢圓曲線 "wikilink")[離散對數問題而言](https://zh.wikipedia.org/wiki/離散對數 "wikilink")，目前已知最快的通用演算法為，其時間複雜估算為[群階的開平方](../Page/階_\(群論\).md "wikilink")。以L符號表示為

\[L_n[1, 1/2] = n^{1/2+o(1)}.\,\]

目前已知最快測試一個數是否為[質數的演算法為](https://zh.wikipedia.org/wiki/質數 "wikilink")[AKS質數測試](../Page/AKS質數測試.md "wikilink")，其時間複雜度為[多項式時間](../Page/多項式時間.md "wikilink")，以L符號表示為

\[L_n[0, c] = (\ln n)^{c+o(1)}\,\]

其中，*c*已被證明至多為6\[1\]。

## 歷史

最早出現L符號的文獻為所著的論文《一些整數分解演算法的分析與比較》（Analysis and comparison of some
integer factoring
algorithms）\[2\]。在此論文中，L符號的參數只有\(c\)，其中的\(\alpha\)則因其所分析的演算法而設為\(1/2\)。

具有兩個參數的L符號則由及[亨德里克·倫斯特拉在其論文](https://zh.wikipedia.org/wiki/亨德里克·倫斯特拉 "wikilink")《數論中的演算法》（Algorithms
in Number
Theory）\[3\]中首次引入，用以分析的[離散對數演算法](https://zh.wikipedia.org/wiki/離散對數 "wikilink")，為現在數學文獻中最常使用的形式。

## 參考資料

[分類:漸近分析](https://zh.wikipedia.org/wiki/分類:漸近分析 "wikilink")
[分類:計算複雜性理論](https://zh.wikipedia.org/wiki/分類:計算複雜性理論 "wikilink")

1.
2.
3.