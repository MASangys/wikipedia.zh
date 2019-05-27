**Kalman–Yakubovich–Popov引理**（Kalman–Yakubovich–Popov
lemma）是及[控制理论的結果](../Page/控制理论.md "wikilink")，其中提到：給定一數\(\gamma > 0\)，二個n維向量B,
C，及n x n的[赫維茲穩定矩陣](../Page/赫維茲矩陣.md "wikilink")
A（所有特徵值的實部都為負值），若\((A,B)\)具有完全[可控制性](../Page/可控制性.md "wikilink")，則滿足下式的對稱矩陣P和向量Q

\[A^T P + P A = -Q Q^T\]

\[P B-C = \sqrt{\gamma}Q\]

存在的充份必要條件是

\[\gamma+2 Re[C^T (j\omega I-A)^{-1}B]\ge 0\]
而且，集合\(\{x: x^T P x = 0\}\)是\((C,A)\)的不可觀測子空間。

此引理可以視為是穩定性理論[李亞普諾夫方程的推廣](../Page/李亞普諾夫方程.md "wikilink")。建構了由[狀態空間A](../Page/狀態空間_\(計算機科學\).md "wikilink"),
B,
C建構的[线性矩阵不等式以及其](../Page/线性矩阵不等式.md "wikilink")[頻域條件的關係](../Page/頻域.md "wikilink")。

Kalman–Popov–Yakubovich引理最早是在1962年由寫出且證明\[1\]，當時列的是嚴格的頻率不等式。允許等於的不等式是由[鲁道夫·卡尔曼在](../Page/鲁道夫·卡尔曼.md "wikilink")1963年提出\[2\]。在該文中也建立了Lur'e方程可解性的關係。兩篇都是針對純量輸入系統。其控制維度的限制是在1964年被Gantmakher和Yakubovich放寬的\[3\]，而也獨立得到相同結論\[4\]。在\[5\]中有針對此一主題的廣泛探討。

## 多變數Kalman–Yakubovich–Popov引理

給定\(A \in \R^{n \times n}, B \in \R^{n \times m}, M = M^T \in \R^{(n+m) \times (n+m)}\)，其中
\(\det(j\omega I - A) \ne 0\)針對所有\(\omega \in \R\)，且\((A, B)\)有可控制性，則以下的敘述是等價的：

1.  針對所有\(\omega \in \R \cup \{\infty\}\)
    \[\left[\begin{matrix} (j\omega I - A)^{-1}B \\ I \end{matrix}\right]^*   M   \left[\begin{matrix} (j\omega I - A)^{-1}B \\ I \end{matrix}\right] \le 0\]
2.  存在一矩陣\(P \in \R^{n \times n}\)使得\(P = P^T\)且
    \[M + \left[\begin{matrix} A^T P + PA & PB \\ B^T P & 0 \end{matrix}\right] \le 0.\]

即使\((A, B)\)不具有可控制性，對應上式的嚴格不等式仍成立\[6\]。

## 參考資料

[Category:引理](https://zh.wikipedia.org/wiki/Category:引理 "wikilink")
[Category:稳定性理论](https://zh.wikipedia.org/wiki/Category:稳定性理论 "wikilink")

1.
2.
3.
4.
5.
6.