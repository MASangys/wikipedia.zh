**Hautus引理**（Hautus
lemma）是在[控制理论以及](../Page/控制理论.md "wikilink")[狀態空間下分析](../Page/狀態空間_\(計算機科學\).md "wikilink")[线性时不变系统時](../Page/线性时不变系统理论.md "wikilink")，相當好用的工具，得名自Malo
Hautus\[1\]，最早出現在1968年的《Classical Control Theory》及1973年的《Hyperstability
of Control Systems》中 \[2\]\[3\]，現今在許多的控制教科書上可以看到此引理。

## 主要結果

有許多有關引理的不同型式。

### 可控制性Hautus引理

可控制性Hautus引理提到若給定一方陣\(\mathbf{A}\in M_n(\Re)\)及\(\mathbf{B}\in M_{n\times m}(\Re)\)，以下幾個式子等效：

1.  \((\mathbf{A},\mathbf{B})\)對具有[可控制性](https://zh.wikipedia.org/wiki/可控制性 "wikilink")
2.  針對所有的\(\lambda\in\mathbb{C}\)，下式都成立
    \(\operatorname{rank}[\lambda \mathbf{I}-\mathbf{A},\mathbf{B}]=n\)
3.  針對所有\(\mathbf{A}\)的特徵值\(\lambda\in\mathbb{C}\)，下式都成立
    \(\operatorname{rank}[\lambda \mathbf{I}-\mathbf{A},\mathbf{B}]=n\)

### 可穩定性Hautus引理

可穩定性Hautus引理提到若給定一方陣\(\mathbf{A}\in M_n(\Re)\)及\(\mathbf{B}\in M_{n\times m}(\Re)\)，以下幾個式子等效：

1.  \((\mathbf{A},\mathbf{B})\)對具有[可穩定性](https://zh.wikipedia.org/wiki/可穩定性 "wikilink")
2.  針對所有\(\mathbf{A}\)的特徵值\(\lambda\in\mathbb{C}\)，而且滿足\(\Re(\lambda)\ge 0\)，下式都成立\(\operatorname{rank}[\lambda \mathbf{I}-\mathbf{A},\mathbf{B}]=n\)

### 可偵測性Hautus引理

可偵測性Hautus引理提到若給定一方陣\(\mathbf{A}\in M_n(\Re)\)及\(\mathbf{C}\in M_{m\times n}(\Re)\)，以下幾個式子等效：

1.  \((\mathbf{A},\mathbf{B})\)對具有[可偵測性](https://zh.wikipedia.org/wiki/可偵測性 "wikilink")
2.  針對所有\(\mathbf{A}\)的特徵值\(\lambda\in\mathbb{C}\)，而且滿足\(\Re(\lambda)\ge 0\)，下式都成立\(\operatorname{rank}[\lambda \mathbf{I}-\mathbf{A},\mathbf{C}]=n\)

## 參考資料

## 延伸閱讀

  -
  -
[Category:控制理论](https://zh.wikipedia.org/wiki/Category:控制理论 "wikilink")
[Category:引理](https://zh.wikipedia.org/wiki/Category:引理 "wikilink")

1.  [Malo Hautus](http://www.win.tue.nl/~wscomalo/)
2.
3.