[Chebyshev_s_plane.svg](https://zh.wikipedia.org/wiki/File:Chebyshev_s_plane.svg "fig:Chebyshev_s_plane.svg")在*s*平面下的極點和零點，後續要用離離散濾波器來近似\]\]

[Chebyshev_mapped_z_plane.svg](https://zh.wikipedia.org/wiki/File:Chebyshev_mapped_z_plane.svg "fig:Chebyshev_mapped_z_plane.svg")

**匹配Z变换方法**（matched Z-transform method）也稱為**極點-零點映射**（pole–zero
mapping）\[1\]\[2\]或**極點－零點匹配法**（pole–zero matching
method）\[3\]，簡稱**MPZ**或**MZT**\[4\]，是將濾波器轉換到離散時間濾波器（[数字滤波器](../Page/数字滤波器.md "wikilink")）設計的技巧。

其作法是將所有的[s平面設計時的極點和零點轉換到](https://zh.wikipedia.org/wiki/拉普拉斯变换 "wikilink")[z平面的位置](https://zh.wikipedia.org/wiki/Z轉換 "wikilink")\(z=e^{sT}\)，其中取樣週期\(T=1 / f_\mathrm{s}\)\[5\]。因此以下傳遞函數的類比濾波器：

\[H(s) = k_{\mathrm a} \frac{\prod_{i=1}^M (s-\xi_i) }{\prod_{i=1}^N (s-p_i) }\]

會轉換為以下的數位傳遞函數

\[H(z) = k_{\mathrm d} \frac{ \prod_{i=1}^M (1 - e^{\xi_iT}z^{-1})}{ \prod_{i=1}^N (1 - e^{p_iT}z^{-1})}\]

其增益\(k_{\mathrm d}\)需調整，使結果為其理想的增益，一般會和類比濾波器的直流增益匹配，透過[設定\(s=0\)及\(z=1\)](../Page/终值定理.md "wikilink")，並且求解\(k_{\mathrm d}\).\[6\]\[7\]。

因為此映射會將*s*平面的\(j\omega\)軸反覆的映射到*z*平面的單位圓上，若零點或是極點超過[奈奎斯特頻率](https://zh.wikipedia.org/wiki/奈奎斯特頻率 "wikilink")，其映射後的位置會有混疊的情形\[8\]。

一般情形下，類比濾波器的極點會比零點多，在\(s=\infty\)處的零點可以移到奈奎斯特頻率，作法是放在\(z=-1\)的位置
\[9\]\[10\]\[11\]\[12\]。

此轉換方式可以保持[有界輸入有界輸出穩定性以及](../Page/有界輸入有界輸出穩定性.md "wikilink")[最小相位](https://zh.wikipedia.org/wiki/最小相位 "wikilink")，但不會保持時域或是頻域的響應，因此不常使用\[13\]\[14\]。較常使用的方式有[雙線性轉換及](../Page/雙線性轉換.md "wikilink")[冲激不变法](../Page/冲激不变法.md "wikilink")\[15\]。匹配Z变换方法的高頻響應誤差比雙線性轉換要小，因此比較容易透過加入額外的零點來修正其特性，此方式稱為MZTi（i表示改良版improved）\[16\]。

在數位控制中，匹配Z变换方法有一個特別的應用，就是，可以調整[可控制性系統的極點](https://zh.wikipedia.org/wiki/可控制性 "wikilink")，一般會將不穩定（或接近不穩定）的極點調整到穩定的位置。

[Chebyshev_responses.svg](https://zh.wikipedia.org/wiki/File:Chebyshev_responses.svg "fig:Chebyshev_responses.svg")

## 參考資料

[Category:控制理论](https://zh.wikipedia.org/wiki/Category:控制理论 "wikilink")
[Category:数字信号处理](https://zh.wikipedia.org/wiki/Category:数字信号处理 "wikilink")
[Category:滤波器理论](https://zh.wikipedia.org/wiki/Category:滤波器理论 "wikilink")

1.

2.

3.

4.

5.

6.
7.

8.

9.
10.
11.
12.
13.

14.
15.
16.