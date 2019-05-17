**高級Z轉換**（英語：Advanced z-transform，或 modified
z-transform）是[Z轉換的延伸](https://zh.wikipedia.org/wiki/Z轉換 "wikilink")，是[數學及](https://zh.wikipedia.org/wiki/數學 "wikilink")[信號處理領域中的工具](https://zh.wikipedia.org/wiki/信號處理 "wikilink")，它將不是[取樣週期整數倍的延遲考慮進去](https://zh.wikipedia.org/wiki/取樣週期 "wikilink")。具有以下形式

\[F(z, m) = \sum_{k=0}^{\infty} f(k T + m)z^{-k}\]

其中

  - T為取樣週期

<!-- end list -->

  - m為延遲參數（delay parameter），\(0 \leq m < T\)

## 性質

如果延遲參數m固定，則Z轉換具有的性質在高級Z轉換也都成立。

### 線性

\[\mathcal{Z} \left\{ \sum_{k=1}^{n} c_k f_k(t) \right\} = \sum_{k=1}^{n} c_k F_k(z, m)\]

### 時移

\[\mathcal{Z} \left\{ u(t - n T)f(t - n T) \right\} = z^{-n} F(z, m)\]

### Z域的尺度性質

\[\mathcal{Z} \left\{ f(t) e^{-a\, t} \right\} = e^{-a\, m} F(e^{a\, T} z, m)\]

### 微分

\[\mathcal{Z} \left\{ t^y f(t) \right\} = \left(-T z \frac{d}{dz} + m \right)^y F(z, m)\]

### 終值定理

\[\lim_{k \to \infty} f(k T + m) = \lim_{z \to 1} (1-z^{-1})F(z, m)\]

## 範例

以下計算 \(f(t) = \cos(\omega t)\)的高級Z轉換：

\[\begin{align}
F(z, m) & = \mathcal{Z} \left\{ \cos \left(\omega \left(k T + m \right) \right) \right\} \\
        & = \mathcal{Z} \left\{ \cos (\omega k T) \cos (\omega m) - \sin (\omega k T) \sin (\omega m) \right\} \\
        & = \cos(\omega m) \mathcal{Z} \left\{ \cos (\omega k T) \right\} - \sin (\omega m) \mathcal{Z} \left\{ \sin (\omega k T) \right\} \\
        & = \cos(\omega m) \frac{z \left(z - \cos (\omega T) \right)}{z^2 - 2z \cos(\omega T) + 1} - \sin(\omega m) \frac{z \sin(\omega T)}{z^2 - 2z \cos(\omega T) + 1} \\
        & = \frac{z^2 \cos(\omega m) - z \cos(\omega(T - m))}{z^2 - 2z \cos(\omega T) + 1}
\end{align}\]

若 \(m=0\)，則\(F(z, m)\)簡化為

\[F(z, 0) = \frac{z^2 - z \cos(\omega T)}{z^2 - 2z \cos(\omega T) + 1}\]

正是\(f(t) = \cos(\omega t)\)的Z轉換

## 參考文獻

  - Eliahu Ibrahim Jury, *Theory and Application of the z-Transform
    Method*, Krieger Pub Co, 1973. .

[分類:變換](https://zh.wikipedia.org/wiki/分類:變換 "wikilink")