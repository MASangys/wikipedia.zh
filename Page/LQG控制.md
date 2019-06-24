**LQG控制**（linear–quadratic–Gaussian
control）的全名是**線性二次高斯控制**，是[控制理论中的基礎](../Page/控制理论.md "wikilink")[最优控制問題之一](https://zh.wikipedia.org/wiki/最优控制 "wikilink")。此問題和存在[加性高斯白噪声的](../Page/加性高斯白噪声.md "wikilink")[線性系統有關](../Page/線性系統.md "wikilink")。此問題是要找到最佳的輸出回授律，可以讓二次[費用函數的期望值最小化](../Page/最优化.md "wikilink")。其輸出量測假設受到高斯噪声的影響，其初值也是高斯隨機向量。

在「使用線性控制律」的最佳控制假設下，可以用completion-of-squares論述進行推導\[1\]。此控制律即為**LQG控制器**，就是[卡尔曼滤波](../Page/卡尔曼滤波.md "wikilink")（線性二次狀態估測器，LQE）和[LQR控制器的結合](../Page/LQR控制器.md "wikilink")。[分離原理指出狀態估測器和狀態回授可以獨立設計](../Page/分離原理.md "wikilink")。LQG控制可以應用在[线性时不变系统及线性](../Page/线性时不变系统理论.md "wikilink")[時變系統](../Page/時變系統.md "wikilink")，產生容易計算以及實現的線性動態回授控制器。LQG控制器本身是一個類似其受控系統的動態系統，兩者有相同的維度。

根據分離原理，在一些範圍較寬可能是非線性的控制器中，LQG控制器仍然是最佳的。也就是說「使用非線性控制架構不一定可以改善費用泛函的期望值」。這個版本的分離原理是[隨機控制的分離原理](https://zh.wikipedia.org/wiki/隨機控制的分離原理 "wikilink")（separation
principle of stochastic
control）提到就算過程及輸出雜訊源可能是非高斯[鞅](../Page/鞅_\(概率论\).md "wikilink")，只要其系統動態是線性的，其最佳控制仍可以分離為最佳狀態估測器（不再是卡尔曼滤波器）及LQR控制器\[2\]\[3\]。LQR控制器也有用來控制擾動的非線性系統\[4\]。

## 問題和解的數學描述

### 連續時間

考慮連續時間的線性動態系統

  -
    \(\dot{\mathbf{x}}(t) = A(t) \mathbf{x}(t) + B(t) \mathbf{u}(t) +  \mathbf{v}(t),\)
    \(\mathbf{y}(t) = C(t) \mathbf{x}(t) + \mathbf{w}(t),\)

其中\({\mathbf{x}}\)是系統狀態變數的向量，\({\mathbf{u}}\)是控制輸入向量，\({\mathbf{y}}\)是輸出量測值的向量，可用在回授上。系統受到加成性的高斯系統雜訊\(\mathbf{v}(t)\)及加成性的高斯量測雜訊\(\mathbf{w}(t)\)所影響。給定一系統，其目標是找到一控制輸入\({\mathbf{u}}(t)\)，此控制輸入在每個時間\({\mathbf{}}t\)下，和以往的量測量\({\mathbf{y}}(t'), 0 \leq t' < t\)有線性關係，而且此控制輸入可以讓以下的費用函數有最小值：

  -
    \(J = \mathbb{E}\left[{\mathbf{x}^\mathrm T}(T)F{\mathbf{x}}(T)+ \int_{0}^{T} {\mathbf{x}^\mathrm T}(t)Q(t){\mathbf{x}}(t) + {\mathbf{u}^\mathrm T}(t)R(t){\mathbf{u}}(t)\,dt \right],\)

<!-- end list -->

  -
    \(F \ge 0,\quad Q(t) \ge 0,\quad R(t) > 0,\)

其中\(\mathbb{E}\)為[期望值](../Page/期望值.md "wikilink")。最終時間（）\({\mathbf{}}T\)可能是有限值或是無限值。若最
終時間為無限，則費用函數的第一項\({\mathbf{x}}^\mathrm T(T)F{\mathbf{x}}(T)\)可以忽略，和問題無關。而為了要讓費用函數為有限值，會定義費用函數為\({\mathbf{}}J/T\)。

求解上述LQG問題的LQG控制器可以用以下方程表示：

  -
    \(\dot{\hat{\mathbf{x}}}(t) = A(t)\hat{\mathbf{x}}(t) + B(t){\mathbf{u}}(t)+L(t) \left( {\mathbf{y}}(t)-C(t)\hat{\mathbf{x}}(t) \right),  \quad \hat{\mathbf{x}}(0) = \mathbb{E} \left[ {\mathbf{x}}(0) \right],\)

<!-- end list -->

  -
    \({\mathbf{u}}(t)= -K(t) \hat{\mathbf{x}}(t).\)

矩陣\({\mathbf{}}L(t)\)稱為卡尔曼增益（Kalman
gain），和第一個方程[卡尔曼滤波有關](../Page/卡尔曼滤波.md "wikilink")。在時間\({\mathbf{}}t\)，濾波器會根據過去量測及輸入來產生狀態\({\mathbf{x}}(t)\)的估測值\(\hat{\mathbf{x}}(t)\)。卡尔曼增益\({\mathbf{}}L(t)\)是根據\({\mathbf{}}A(t), C(t)\)、二個和白色高斯雜訊有關密度矩陣\(\mathbf{v}(t)\)、\(\mathbf{w}(t)\)及最後的\(\mathbb{E}\left[{\mathbf{x}}(0){\mathbf{x}}^\mathrm T(0) \right]\)來計算。這五個矩陣會透過以下的矩陣Riccati微分方程來決定卡尔曼增益：

  -
    <math> \\dot{P}(t) = A(t)P(t)+P(t)A^\\mathrm T(t)-P(t)C^\\mathrm
    T(t){\\mathbf{}}W^{-1}(t)

C(t)P(t)+V(t),</math>

  -
    \(P(0)= \mathbb{E} \left[{\mathbf{x}}(0){\mathbf{x}}^\mathrm T(0) \right].\)

假設其解\(P(t), 0 \leq t \leq T\)，則卡尔曼增益等於

  -
    \({\mathbf{}}L(t) = P(t)C^\mathrm T(t)W^{-1}(t).\)

矩陣\({\mathbf{}}K(t)\)稱為回授增益（feedback
gain）矩陣，是由\({\mathbf{}}A(t), B(t), Q(t), R(t)\)及\({\mathbf{}}F\)矩陣，透過以下的矩陣Riccati微分方程來決定

  -
    \(-\dot{S}(t) = A^\mathrm T(t)S(t)+S(t)A(t)-S(t)B(t)R^{-1}(t)B^\mathrm T(t)S(t)+Q(t),\)

<!-- end list -->

  -
    \({\mathbf{}}S(T) = F.\)

假設其解\({\mathbf{}}S(t), 0 \leq t \leq T\)，回授增益等於

  -
    \({\mathbf{}}K(t) = R^{-1}(t)B^\mathrm T(t)S(t).\)

觀察上述二個矩陣Riccati微分方程，第一個沿時間從前往後算，而第二個是沿時間從後往前算，這稱為「對偶性」。第一個矩陣Riccati微分方程解了線性平方估測問題（LQE），第一個矩陣Riccati微分方程解了[LQR控制器問題](../Page/LQR控制器.md "wikilink")。這二個問題是對偶的，合起來就解了線性平方高斯控制問題（LQG)，因此LQG問題分成了LQE問題以及LQR問題，且可以獨立求解，因此LQG問題是「可分離的」。

當\({\mathbf{}}A(t), B(t), C(t), Q(t), R(t)\)和雜訊密度矩陣\(\mathbf{}V(t)\),
\(\mathbf{}W(t)\)不隨時間變化\({\mathbf{}}t\)，且\({\mathbf{}}T\)趨於無限大時，LQG控制器會變成非時變動態系統。此時上述二個矩陣Riccati微分方程會變成。

### 離散時間

離散時間的LQG控制問題和連續時間下的問題相近，因此以下只關注其數學式。

離散時間的線性系統方程為

  -
    \({\mathbf{x}}_{i+1} = A_i\mathbf{x}_i + B_i \mathbf{u}_i +  \mathbf{v}_i,\)

<!-- end list -->

  -
    \(\mathbf{y}_{i} = C_{i} \mathbf{x}_i + \mathbf{w}_i.\)

其中\(\mathbf{}i\)是離散時間，\(\mathbf{v}_{i}, \mathbf{w}_{i}\)是離散時間高斯白雜訊過程，其共變異數矩陣為\(\mathbf{}V_{i}, W_{i}\)。

要最小化的二次費用函數為

  -
    \(J = \mathbb{E}\left[{\mathbf{x}}^\mathrm T_{N}F{\mathbf{x}}_{N}+ \sum_{i=0}^{N-1}( \mathbf{x}_i^\mathrm T Q_i \mathbf{x}_i + \mathbf{u}_i^\mathrm T R_i \mathbf{u}_i )\right],\)

<!-- end list -->

  -
    \(F \ge 0, Q_i \ge 0, R_i > 0. \,\)

離散時間的LQG控制器為

\[\hat{\mathbf{x}}_{i+1}=A_i\hat{\mathbf{x}}_i+B_i{\mathbf{u}}_i+L_{i+1} \left({\mathbf{y}}_{i+1}-C_{i+1} \left\{ A_i \hat{\mathbf{x}}_i + B_i u_i \right\} \right), \hat{\mathbf{x}}_0=\mathbb{E}[{\mathbf{x}}_0]\],

\[\mathbf{u}_i=-K_i\hat{\mathbf{x}}_i. \,\]

卡尔曼增益等於

  -
    \({\mathbf{}}L_i = P_iC ^\mathrm T _i(C_iP_iC ^\mathrm T _i + W_i)^{-1},\)

其中\({\mathbf{}}P_i\)是由以下依時間往前進的矩陣Riccati差分方程所決定：

  -
    \(P_{i+1} = A_i \left( P_i - P_i C ^\mathrm T _i \left( C_i P_i C ^\mathrm T _i+W_i \right)^{-1} C_i P_i \right) A ^\mathrm T _i+V_i, P_0=\mathbb{E} \left( {\mathbf{x}}_0 - \hat{\mathbf{x}}_0\right)\left({\mathbf{x}}_0- \hat{\mathbf{x}}_0\right)^\mathrm T.\)

回授增益矩陣為

  -
    \({\mathbf{}}K_i = (B^\mathrm T_iS_{i+1}B_i + R_i)^{-1}B^\mathrm T_iS_{i+1}A_i\)

\\ 其中\({\mathbf{}}S_i\)是由以下時間從後往前算的矩陣Riccati差分方程所決定：

  -
    \(S_i = A^\mathrm T_i \left( S_{i+1} - S_{i+1}B_i \left( B^\mathrm T_iS_{i+1}B_i+R_i \right)^{-1} B^\mathrm T_i S_{i+1} \right) A_i+Q_i, \quad S_N=F.\)

若問題中所有的矩陣都是非時變的，且時間長度\({\mathbf{}}N\)趨近無窮大，則離散時間的LQG控制器就是非時變的。此時矩陣Riccati差分方程可以用離散時間的取代。可以決定非時變的離散線性二次估測器，以及非時變的離散[LQR控制器](../Page/LQR控制器.md "wikilink")。為了讓費用是有限值，會用\({\mathbf{}}J/N\)來代替\({\mathbf{}}J\)。

## 降階LQG問題

在傳統LQG設定中，當系統維度很大時，實現LQG控制器會有困難。**降階LQG問題**（reduced-order LQG
problem）也稱為**固定階數LQG問題**（fixed-order LQG
problem）先設定了LQG控制的狀態數。因為分離原理已不適用，此問題會更不容易求解，而且其解也不唯一。即使如此，降階LQG問題已有不少的數值演算法\[5\]\[6\]\[7\]\[8\]可以求解相關的\[9\]\[10\]，其中建構了局部最佳化的降階LQG問題的充份及必要條件\[11\]。

## LQG控制的強健性

LQG最佳化本身不確保有良好的[強健性](https://zh.wikipedia.org/wiki/強健控制 "wikilink")\[12\]，需要在設計好LQG控制後，另外確認閉迴路系統的強健穩定性。為了提昇系統的強健性，可能會將一些系統參數由確定值改假設是隨機值。相關的控制問題會更加複雜，會得到一個類似的最佳控制器，只有控制器參數不同\[13\]。

## 相關條目

  - [隨機控制](../Page/隨機控制.md "wikilink")
  - [Witsenhausen反例](../Page/Witsenhausen反例.md "wikilink")

## 參考資料

## 延伸閱讀

  -
[Category:最佳控制](https://zh.wikipedia.org/wiki/Category:最佳控制 "wikilink")
[Category:控制理论](https://zh.wikipedia.org/wiki/Category:控制理论 "wikilink")
[Category:隨機控制](https://zh.wikipedia.org/wiki/Category:隨機控制 "wikilink")

1.  .

2.  .

3.  .

4.

5.   [Associated software download from Matlab
    Central](http://www.mathworks.com/matlabcentral/fileexchange/loadFile.do?objectId=19948&objectType=file).

6.   [Associated software download from Matlab
    Central](http://www.mathworks.com/matlabcentral/fileexchange/loadFile.do?objectId=20014&objectType=FILE).

7.

8.

9.

10.

11.
12.

13.