> 本文内容由[Chirp-Z轉換](https://zh.wikipedia.org/wiki/Chirp-Z轉換)转换而来。


**啁啾-Z轉換**（Chirp-Z transform）為[離散傅立葉變換](https://zh.wikipedia.org/wiki/離散傅立葉變換 "wikilink")（DFT）的一般化，是一種適合於計算當**取樣頻率間隔**（**sampling frequency interval**）與**取樣時間間隔**（**sampling time interval**）乘積的倒數**不等於**[信號的時頻分佈面積時的](https://zh.wikipedia.org/wiki/信號 "wikilink")**演算法**，其為利用[卷积](../Page/卷积.md "wikilink")來實現任意大小的[離散傅立葉變換](https://zh.wikipedia.org/wiki/離散傅立葉變換 "wikilink")（DFT）的[快速傅立葉變換演算法](https://zh.wikipedia.org/wiki/快速傅立葉變換 "wikilink")。

具體來說，啁啾-Z轉換沿著對數螺旋輪廓，計算出有限數量的點 z<sub>k</sub> 的Z轉換，其定義如下：

\[X_k = \sum_{n=0}^{N-1} x(n) z_{k}^{-n}\]

\[z_k = A\cdot W^{-k}, k=0,1,\dots,M-1\]

其中*A*為起始點，*W*為點與點之間的比率，*M*為需要計算的點的數量。

## 布魯斯坦演算法

離散信號\(x_n\)的離散傅立葉變換可以寫成下列的形式

\[X_k = \sum_{n=0}^{N-1} x_n e^{-\frac{2\pi i}{N} nk }
\qquad
k = 0,\dots,N-1.\]

其中\(e^{-\frac{2\pi i}{N} nk }\qquad\)這項的\(nk\)可以利用平方式展開得到，如下式所示

\[(n-k)^2 = n^2-2nk+k^2\Rightarrow nk=-\frac{(n-k)^2-n^2-k^2}{2}\]

所以

\[e^{-\frac{2\pi i}{N} nk}=e^{\frac{2\pi i}{N} \frac{(n-k)^2-n^2-k^2}{2}} = e^{\frac{\pi i}{N}(n-k)^2} e^{-\frac{\pi i}{N}n^2} e^{-\frac{\pi i}{N} k^2}\]

而將此平方展開式帶回原式我們可以得到

\[X_k = \sum_{n=0}^{N-1} x_n e^{-\frac{2\pi i}{N} nk } = e^{-\frac{\pi i}{N} k^2}\sum_{n=0}^{N-1} ( x_n e^{-\frac{\pi i}{N}n^2} )e^{\frac{\pi i}{N}(n-k)^2}
\qquad
k = 0,\dots,N-1.\]

上面的累加結果恰為兩個序列 *a*<sub>*n*</sub> 及 *b*<sub>*n*</sub> 的卷積，兩序列的定義如下：

\[a_n = x_n e^{-\frac{\pi i}{N} n^2 }\]

\[b_n = e^{\frac{\pi i}{N} n^2 },\]

而產生的卷積結果會再乘上 *N* 個相位的參數 *b*<sub>*k*</sub><sup>\*</sup>：

\[X_k = b_k^* \sum_{n=0}^{N-1} a_n b_{k-n} \qquad k = 0,\dots,N-1.\]

因此離散信號 \(x_n\) 的離散傅立葉變換現在可以分成三個步驟來實現：

  - **STEP 1**：對於信號\(x_n\)的每一個取樣點都乘上\(e^{-\frac{\pi i}{N}n^2}\)
  - **STEP 2**：接著再與\(e^{\frac{\pi i}{N}(n-k)^2}\)做線性卷積
  - **STEP 3**：最後乘上\(e^{-\frac{\pi i}{N}k^2}\)

如此即可得到不同頻率成分的\(X_k\)。

此卷積動作可以透過卷積理論所實現，其中，由於這些快速傅立葉轉換結果的長度 *N* 不同，導致我們必須透過補零的方式，將快速傅立葉轉換的結果補至長度大於或等於 *2N - 1*，才能精確計算其卷積結果。此外，布魯斯坦演算法提供一個時間複雜度為 O(*N* log *N*) 的方式計算質數大小的離散傅立葉轉換。

在布魯斯坦演算法的卷積過程中使用補零的方式是值得討論的。如果我們將訊號補至長度為 *M* ≥ 2*N*–1，代表 *a*<sub>*n*</sub> 被擴展至長度為 *M* 的陣列 *A*<sub>*n*</sub>，其中當 0 ≤ *n* \< *N* 時，*A*<sub>*n*</sub> = *a*<sub>*n*</sub>，否則 *A*<sub>*n*</sub> = 0。然而，基於卷積中的 *b*<sub>*k*–*n*</sub> 項， *b*<sub>*n*</sub> 需要 n 的正值和負值。在陣列中補零的離散傅立葉轉換的周期性邊界，代表著 *-n* 等於 *M - n*。因此，*b*<sub>*n*</sub> 被擴展到長度為 *M* 的陣列 *B*<sub>*n*</sub>，其中 *B*<sub>0</sub> = *b*<sub>0</sub>，*B*<sub>*n*</sub> = *B*<sub>*M*–*n*</sub> = *b*<sub>*n*</sub>(當 0 \< *n* \&lt)，否則，*B*<sub>*n*</sub> = 0。然後根據通常的捲積定理對 *A* 和 *B* 進行快速傅立葉轉換，逐點相乘，並進行逆快速傅立葉轉換以獲得 *a* 和 *b* 的卷積。

讓我們更準確地說明，布魯斯坦演算法的離散傅立葉轉換需要什麼類型的捲積。如果序列 *b*<sub>*n*</sub> 在具有周期 *N* 的 *n* 中是具有周期性的，那麼它將是長度為 *N* 的循環卷積，並且，為了計算上的方便而使用補零的方式。但是，通常情況並非如此：

\[b_{n+N} = e^{\frac{\pi i}{N} (n+N)^2 } = b_n e^{\frac{\pi i}{N} (2Nn+N^2) } = (-1)^N b_n .\]

因此，當 *N* 為偶數時，卷積是具有週期性的，但在這種情況下，人們通常使用更有效率的快速傅立葉轉換演算法，例如Cooley-Tukey演算法；反之，當 *N* 為奇數時，*b*<sub>*n*</sub> 是反週期性的，並且具有長度 *N* 的負循環卷積。然而，當如上所述，使用補零的方式江陣列補到至少 2*N*−1 的長度時，兩者之間的差異消失。

## Z轉換

上述提到的布魯斯坦演算法也可以基於單方面的Z轉換，用以計算更一般化的轉換(Rabiner et al, 1969)，特別是具有以下形式的轉換：

\[X_k = \sum_{n=0}^{N-1} x_n z^{nk}
\qquad
k = 0,\dots,M-1,\]

其中 *z* 為任意複數，*N*以及*M*分別為輸入及輸出的數量。

由前面所提到的布魯斯坦演算法，我們可以進行如此的轉換。例如，獲得訊號某一部分頻譜中的內插值，以及在傳遞函數分析中增加任意極點，皆為其應用之一。

該演算法被稱為啁啾-Z轉換演算法，是因為在傅立葉轉換的情境(|*z*| = 1)下，一序列 *b*<sub>*n*</sub> 是一複數正弦波，而在雷達系統中則被稱作「啁啾」。

## 相關條目

  - [卷积](../Page/卷积.md "wikilink")
  - [離散傅立葉變換](https://zh.wikipedia.org/wiki/離散傅立葉變換 "wikilink")
  - [快速傅立葉變換](https://zh.wikipedia.org/wiki/快速傅立葉變換 "wikilink")
  - [啁啾](../Page/啁啾.md "wikilink")（Chirp）

## 參考文獻

  - Jian-Jiun Ding, class lecture of Time Frequency Analysis and Wavelet transform, Graduate Institute of Communication Engineering, National Taiwan University, Taipei, Taiwan, 2007.
  - Jian-Jiun Ding, class lecture of Time Frequency Analysis and Wavelet transform, Graduate Institute of Communication Engineering, National Taiwan University, Taipei, Taiwan, 2018.
  - <http://cnx.org/content/m12013/latest/>

[Category:信號處理](https://zh.wikipedia.org/wiki/Category:信號處理 "wikilink") [Category:傅里叶分析](https://zh.wikipedia.org/wiki/Category:傅里叶分析 "wikilink")