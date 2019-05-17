***H*<sub>∞</sub>**（***H*-infinity**）**控制法**是[控制理論中用來設計](https://zh.wikipedia.org/wiki/控制理論 "wikilink")[控制器](https://zh.wikipedia.org/wiki/控制器 "wikilink")，可以達到穩定性，並且可以保證性能的設計方式。要使用*H*<sub>∞</sub>方法，控制器的設計者需將控制問題表示為[數學最佳化問題](../Page/最优化.md "wikilink")，並且找到使最佳化成立的控制器。

*H*<sub>∞</sub>較傳統控制技術好的優點是可以應用在包括多個變數，各頻道之間有互相耦合的問題，而*H*<sub>∞</sub>的缺點是其因為技巧以及其中的數學，若要成功的應用，需要對需控制的系統有很好的建模。很重要的是所得的控制器只是在規定的成本函數下是最佳的，若用一般評估控制器性能方式來評比（例如整定時間、使用能量等），不一定是最佳的。而且像飽和之類的非線性特性也很不好處理。*H*<sub>∞</sub>是在1970年代末及1980年代初由（靈敏度最小化、sensitivity
minimization）\[1\]、J. William Helton（宽带匹配、broadband
matching）\[2\]及（增益裕度最佳化、gain margin
optimization）\[3\]等人提出。

*H*<sub>∞</sub>控制的名稱是因為最佳化所在的數學空間：*H*<sub>∞</sub>是由在[複平面開放右半邊Re](https://zh.wikipedia.org/wiki/複平面 "wikilink")(*s*) \> 0
內[解析及有界的](../Page/解析函数.md "wikilink")[矩陣函數形成的](https://zh.wikipedia.org/wiki/矩陣 "wikilink")[哈代空間](../Page/哈代空間.md "wikilink")。the
*H*<sub>∞</sub>模是函數在此空間內的最大單一值。（可以解釋為在不同頻率、不同方向下的最大增益，若針對[SISO系統](https://zh.wikipedia.org/wiki/SISO系統 "wikilink")，就是頻率響應的最大值）。*H*<sub>∞</sub>技術可以用來使擾動對閉迴路的影響最小化，依照問題的陳述方式，影響可以用穩定性或是性能來表示。

同時要針對性能強健性以及穩定性強健性進行最佳化很不容易。有一個比較類似的作法是[*H*<sub>∞</sub>迴路整形](https://zh.wikipedia.org/wiki/H-infinity迴路整形 "wikilink")，可以讓控制器的設計者應用經典的迴路整形概念到多變數的頻率響應中，以得到性能強健性，再在系統頻寬附近再微調響應，讓穩定性強健性也可以最佳化。

目前已有可以合成*H*<sub>∞</sub>控制器的商業軟體。

## 問題敘述

首先，處理問題時，會用以下的標準組態來進行：

[Image:H-infty plant
representation.png](https://zh.wikipedia.org/wiki/File:H-infty_plant_representation.png "fig:Image:H-infty plant representation.png")

受控體*P*有二個輸入，外來輸入*w*包括了參考信號以及干擾，以及控制變數*u*。有二個輸出，誤差信號*z*是希望可以最小化的值，以及用來控制系統的量測訊號*v*。在方塊*K*中會利用*v*來計算控制變數*u*。注意以上的**P**和**K**是[矩陣](https://zh.wikipedia.org/wiki/矩陣 "wikilink")，其餘的都是[向量](../Page/向量.md "wikilink")。

若配合公式，系統為

\[\begin{bmatrix} z\\ v \end{bmatrix} = \mathbf{P}(s)\, \begin{bmatrix} w\\ u\end{bmatrix} = \begin{bmatrix}P_{11}(s) & P_{12}(s)\\P_{21}(s) & P_{22}(s)\end{bmatrix} \, \begin{bmatrix} w\\ u\end{bmatrix}\]

\[u = \mathbf{K}(s) \, v\]

因此可以用下式表示*z*對*w*的相依性：

\[z=F_\ell(\mathbf{P},\mathbf{K})\,w\]

稱為下線性分式轉換（lower linear fractional
transformation），\(F_\ell\)定義為（其下標表示「較低的」）

\[F_\ell(\mathbf{P},\mathbf{K}) = P_{11} + P_{12}\,\mathbf{K}\,(I-P_{22}\,\mathbf{K})^{-1}\,P_{21}\]

因此\(\mathcal{H}_\infty\)控制設計的目標是找到控制器\(\mathbf{K}\)使用\(F_\ell(\mathbf{P},\mathbf{K})\)依照\(\mathcal{H}_\infty\)計算時有最小值。相同的定義也可以用在\(\mathcal{H}_2\)控制器設計。\(F_\ell(\mathbf{P},\mathbf{K})\)的無限模定義為：

\[||F_\ell(\mathbf{P},\mathbf{K})||_\infty = \sup_\omega \bar{\sigma}(F_\ell(\mathbf{P},\mathbf{K})(j\omega))\]

其中\(\bar{\sigma}\)是矩陣\(F_\ell(\mathbf{P},\mathbf{K})(j\omega)\)的最大。

閉迴路控制器可以達到的*H*<sub>∞</sub>模主要和*D*<sub>11</sub>有關（系統的表示方式為(*A*,
*B*<sub>1</sub>, *B*<sub>2</sub>, *C*<sub>1</sub>, *C*<sub>2</sub>,
*D*<sub>11</sub>, *D*<sub>12</sub>, *D*<sub>22</sub>,
*D*<sub>21</sub>)）。有以下幾種方式可以設計*H*<sub>∞</sub>控制器：

  - 針對閉迴路進行[Youla-Kucera參數化](../Page/Youla-Kucera參數化.md "wikilink")，但結果常常會得到非常高階數的控制器。
  - 以[Riccati方程為基礎的作法](../Page/Riccati方程.md "wikilink")，要求解二個Riccati方程來找到控制器，不過需要較多簡化的假設。
  - 以最佳化為基礎的Riccati方程重整，會用到[線性矩陣不等式](https://zh.wikipedia.org/wiki/線性矩陣不等式 "wikilink")，但需要的假設較少。

## 相關條目

  - [哈代空間](../Page/哈代空間.md "wikilink")
  - [H square](https://zh.wikipedia.org/wiki/H_square "wikilink")
  - [H-infinity迴路整形](https://zh.wikipedia.org/wiki/H-infinity迴路整形 "wikilink")
  - [線性平方高斯控制](https://zh.wikipedia.org/wiki/線性平方高斯控制 "wikilink")（LQG）
  - [羅森布魯克系統矩陣](https://zh.wikipedia.org/wiki/羅森布魯克系統矩陣 "wikilink")

## 參考資料

## 參考文獻

  - .

<!-- end list -->

  - .

<!-- end list -->

  - .

<!-- end list -->

  - .

<!-- end list -->

  - .

<!-- end list -->

  - .

[Category:控制理論](https://zh.wikipedia.org/wiki/Category:控制理論 "wikilink")
[Category:哈代空間](https://zh.wikipedia.org/wiki/Category:哈代空間 "wikilink")

1.
2.
3.