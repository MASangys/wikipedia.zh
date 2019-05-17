[最优控制理論主要探討的是讓](https://zh.wikipedia.org/wiki/最优控制 "wikilink")[动力系统以在最小成本來運作](../Page/动力系统.md "wikilink")，若系統動態可以用一組[线性微分方程表示](../Page/线性微分方程.md "wikilink")，而其成本為[二次](../Page/二次函数.md "wikilink")[泛函](../Page/泛函.md "wikilink")，這類的問題稱為線性二次（LQ）問題。此類問題的解即為**線性二次調節器**（），簡稱**LQR**。

LQR是回授控制器，方程式在後面會提到。LQR是[LQG（線性二次高斯）問題解當中重要的一部份](https://zh.wikipedia.org/wiki/線性二次高斯控制 "wikilink")。而LQG問題和LQR問題都是[控制理论中最基礎的問題之一](../Page/控制理论.md "wikilink")。

## 簡介

控制機器（例如飛機）的控制器，或是控制製程（例如化學反應）的控制器，可以進行[最佳控制](https://zh.wikipedia.org/wiki/最佳控制 "wikilink")，方式是先設定[成本函數](https://zh.wikipedia.org/wiki/損失函數 "wikilink")，再由工程師設定加權，利用數學[演算法來找到使成本函數最小化的設定值](https://zh.wikipedia.org/wiki/演算法 "wikilink")。成本函數一般會定義為主要量測量（例如飛行高度或是制程溫度）和理想值的偏差的和。演算法會設法調整[參數](https://zh.wikipedia.org/wiki/参数 "wikilink")，讓這些不希望出現的偏差降到最小。而控制量的大小本身也會包括在成本函數中。

LQR演算法減少了工程師為了讓控制器最佳化，而需付出的心力。不過工程師仍然要列出成本函數的相關參數，並且將結果和理想的設計目標比較。因此控制器的建構常會是[迭代的](../Page/迭代.md "wikilink")，工程師在[模擬過程中決定最佳控制器](https://zh.wikipedia.org/wiki/模擬 "wikilink")，再去調整參數讓結果更接近設計目標。

在本質上，LQR演算法是找尋合適[狀態回授控制器的](../Page/状态空间.md "wikilink")[自動化方式](https://zh.wikipedia.org/wiki/自動化 "wikilink")。因此也常會有[控制工程師用其他替代方式](../Page/控制工程.md "wikilink")，例如[全狀態回授](https://zh.wikipedia.org/wiki/全狀態回授 "wikilink")（也稱為極點安置）的作法，此作法對控制器參數和控制器性能之間的關係比較明確。而LQR演算法的困難之處在找合適的[加權因子](https://zh.wikipedia.org/wiki/加權 "wikilink")，這也限制了以LQR控制器合成的相關應用。

## 有限時間長度，連續時間的LQR

方程式如下的連續時間線性系統，\(t\in[t_0,t_1]\)：

\[\dot{x} = Ax + Bu\]

其二次成本泛函為

\[J =  x^T(t_1)F(t_1)x(t_1)  + \int\limits_{t_0}^{t_1} \left( x^T Q x + u^T R u + 2 x^T N u \right) dt\]

其中F、Q和R都是正定[矩陣](https://zh.wikipedia.org/wiki/矩陣 "wikilink")。

可以讓成本最小化的回授控制律為

\[u = -K x \,\]

其中\(K\)為

\[K = R^{-1} (B^T P(t) + N^T) \,\]

而\(P\)是連續時間[Riccati方程的解](../Page/Riccati方程.md "wikilink")：

\[A^T P(t) + P(t) A - (P(t) B + N) R^{-1} (B^T P(t) + N^T) + Q = - \dot{P}(t) \,\]

邊界條件如下

\[P(t_1) = F(t_1).\]

J<sub>min</sub>的一階條件如下

**(i) 狀態方程**

\[\dot{x} = Ax + Bu\]

**(ii) [協態方程](../Page/協態方程.md "wikilink")**

\[-\dot{\lambda} = Qx + Nu + A^T \lambda\]

**(iii) 靜止方程**

\[0 = Ru + N^Tx + B^T \lambda\]

**(iv) 邊界條件**

\[x(t_0) = x_0\] 且 \(\lambda(t_1) = F(t_1) x(t_1)\)

## 無限時間長度，連續時間的LQR

考慮以下的連續時間線性系統

\[\dot{x} = Ax + Bu\]

其成本泛函為

\[J = \int_{0}^\infty \left( x^T Q x + u^T R u + 2 x^T N u \right) dt\]

可以讓成本最小化的回授控制律為

\[u = -K x \,\]

其中\(K\)定義為

\[K = R^{-1} (B^T P + N^T) \,\]

而\(P\)是的解

\[A^T P + P A - (P B + N) R^{-1} (B^T P + N^T) + Q = 0 \,\]

也可以寫成下式

\[\mathcal A^T P + P \mathcal A - P B R^{-1} B^T P + \mathcal Q = 0 \,\]

其中

\[\mathcal A = A - B R^{-1} N^T \qquad  \mathcal Q = Q - N R^{-1} N^T \,\]

## 有限時間長度，離散時間的LQR

考慮離散時間的線性系統，定義如下 \[1\]

\[x_{k+1} = A x_k + B u_k \,\]

其性能指標為

\[J = x_N^T Q x_N + \sum\limits_{k=0}^{N-1} \left( x_k^T Q x_k + u_k^T R u_k + 2 x_k^T N u_k \right)\]

可以讓性能指標最小化的最佳控制序列為

\[u_k = -F_k x_{k} \,\]

其中

\[F_k = (R + B^T P_{k+1} B)^{-1} (B^T P_{k+1} A + N^T) \,\]

而\(P_k\)是由動態Riccati方程倒退時間佚代計算而得

\[P_{k-1} = A^T P_k A - (A^T P_k B + N) \left( R + B^T P_k B \right)^{-1} (B^T P_k A + N^T) + Q\]

從終端條件\(P_N = Q\)開始計算。注意\(u_N\)沒有定義，因為 \(x\)
是由\(A x_{N-1} + B u_{N-1}\)推導到其最終狀態 \(x_N\)。

## 無限時間長度，離散時間的LQR

考慮離散時間的線性系統，定義如下

\[x_{k+1} = A x_k + B u_k \,\]

其性能指標為

\[J = \sum\limits_{k=0}^{\infty} \left( x_k^T Q x_k + u_k^T R u_k + 2 x_k^T N u_k \right)\]

可以讓性能指標最小化的最佳控制序列為

\[u_k = -F x_k \,\]

其中

\[F = (R + B^T P B)^{-1} (B^T P A + N^T) \,\]

而\(P\)是離散（DARE）的唯一正定解。

\[P = A^T P A - (A^T P B + N) \left( R + B^T P B \right)^{-1} (B^T P A + N^T) + Q\].

可以寫成

\[P = \mathcal A^T P \mathcal A - \mathcal A^T P B \left( R + B^T P B \right)^{-1} B^T P \mathcal A + \mathcal Q\]

其中

\[\mathcal A = A - B R^{-1} N^T \qquad \mathcal Q = Q - N R^{-1} N^T\].

而求解代數Riccati方程的一個方式是迭代計算有限時間的動態Riccati方程，直到所得的解收斂為止。

## 參考資料

:\*

:\*

## 外部連結

  - [MATLAB function for Linear Quadratic Regulator
    design](http://www.mathworks.com/help/toolbox/control/ref/lqr.html)
  - [Mathematica function for Linear Quadratic Regulator
    design](http://reference.wolfram.com/mathematica/ref/LQRegulatorGains.html)

[Category:最佳控制](https://zh.wikipedia.org/wiki/Category:最佳控制 "wikilink")

1.