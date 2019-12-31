> 本文内容由[Youla-Kucera參數化](https://zh.wikipedia.org/wiki/Youla-Kucera參數化)转换而来。


**Youla-Kucera参數化**（Youla–Kučera parametrization）也稱為**Youla参數化**（Youla parametrization）或是**YK参數化**，是[控制理论](../Page/控制理论.md "wikilink")中一個的公式，描述所有針對一受控體P的所有可能穩定回授控制器，表示為單一參數Q的函數。

## 細節

YK参數化是通用的結果，是控制理論的基礎結果，不過在新的研究領域（如最佳控制及強健控制中）也有其應用\[1\]。

為了方便瞭解其概念，先用簡單的例子舉例，再慢慢擴展，這也是Kučera的作法。

### 穩定的SISO系統

令\(P(s)\)為穩定[單一輸入單一輸出](https://zh.wikipedia.org/wiki/單一輸入單一輸出 "wikilink")（SISO）系統的傳遞函數。再令Ω是*s*的穩定proper函數的集合。則所有可以讓系統\(P(s)\)穩定的proper控制器可以定義如下：

\(\left\{ \frac{Q(s)}{1 - P(s)Q(s)}, Q(s)\in \Omega \right\}\),

其中\(Q(s)\)是任意*s*的穩定proper函數。也可以說\(Q(s)\)參數化了所有可以讓系統\(P(s)\)穩定的控制器。

### 一般SISO系統

考慮一系統其傳遞函數為\(P(s)\)，且此傳遞函數可以分解為

\(P(s)=\frac{N(s)}{M(s)}\)，其中M(s)和N(s)是*s*的穩定proper函數。

求解下式的[貝祖等式](../Page/貝祖等式.md "wikilink")

**\(\mathbf{N(s)X(s)} + \mathbf{M(s)Y(s)} = \mathbf{1}\)**,

其中待解的變數（X(s), Y(s)）也要是穩定proper函數。

在找到穩定proper的X和Y後，可以定義穩定化控制器為\(C(s)=\frac{X(s)}{Y(s)}\)。在找到一個穩定化控制器後，可以用一個穩定proper的參數Q(s)來定義所有穩定化控制器，其集合為 \(\left\{ \frac{X(s)+M(s)Q(s)}{Y(s) - N(s)Q(s)}, Q(s) \in \Omega \right\}\),

### 一般MIMO系統

在多重輸入多重輸出（MIMO）系統中，考慮傳遞矩陣\(\mathbf{P(s)}\)。可以用右互質因式\(\mathbf{P(s)=N(s)D^{-1}(s)}\)或左因式\(\mathbf{P(s)=\tilde{D}^{-1}(s)\tilde{N}(s)}\)來分解。因式需要是穩定、proper及雙重互質，因此確保系統**P**(s)是可控制且可觀察的。可以用貝祖等式寫成下式

\(\left[ \begin{matrix}
   \mathbf{X} & \mathbf{Y}  \\
   -\mathbf{\tilde{N}} & {\mathbf{\tilde{D}}}  \\
\end{matrix} \right]\left[ \begin{matrix}
   \mathbf{D} & -\mathbf{\tilde{Y}}  \\
   \mathbf{N} & {\mathbf{\tilde{X}}}  \\
\end{matrix} \right]=\left[ \begin{matrix}
   \mathbf{I} & 0  \\
   0 & \mathbf{I}  \\
\end{matrix} \right]\).

在找到穩定proper的\(\mathbf{X, Y, \tilde{X}, \tilde{Y}}\)後，可以用左因式或是右因式定義所有可穩定的控制器**K(s)**（假設存在負回授）：

\(\begin{align}
  & \mathbf{K(s)}={{\left( \mathbf{X}-\mathbf{\Delta\tilde{N}} \right)}^{-1}}\left( \mathbf{Y}+\mathbf{\Delta\tilde{D}} \right) \\
 & =\left( \mathbf{\tilde{Y}}+\mathbf{D\Delta} \right){{\left( \mathbf{\tilde{X}}-\mathbf{N\Delta} \right)}^{-1}}
\end{align}\)

其中\(\Delta\)是任意的穩定proper參數。

令\(P(s)\)是系統的傳遞函數，且\(K_0(s)\)是一個穩定化的控制器，其右互質分解為：

\[\mathbf{P(s)}= \mathbf{N} \mathbf{M}^{-1}\]

\[\mathbf{K_0(s)} = \mathbf{U} \mathbf{V}^{-1}\] 則所有的穩定控制器可以寫成

\[\mathbf{K(s)} = (\mathbf{U}+\mathbf{M} \mathbf{Q}) (\mathbf{V}+\mathbf{N} \mathbf{Q})^{-1}\] 其中Q是穩定且proper的函數\[2\]

YK公式在工程上的重要性是若要找到符合特定準則的可穩定控制器，可以調整Q來符合想要的準則。

## 參考資料

  - D. C. Youla, H. A. Jabri, J. J. Bongiorno: Modern Wiener-Hopf design of optimal controllers: part II, IEEE Trans. Automat. Contr., AC-21 (1976) pp319–338
  - V. Kučera: Stability of discrete linear feedback systems. In: Proceedings of the 6th IFAC. World Congress, Boston, MA, USA, (1975).
  - C. A. Desoer, R.-W. Liu, J. Murray, R. Saeks. Feedback system design: the fractional representation approach to analysis and synthesis. IEEE Trans. Automat. Contr., AC-25 (3), (1980) pp399–412
  - John Doyle, Bruce Francis, Allen Tannenbaum. Feedback control theory. (1990). [2](http://www.gest.unipd.it/~oboe/psc/testi/dft.pdf)

[Category:控制理论](https://zh.wikipedia.org/wiki/Category:控制理论 "wikilink")

1.  V. Kučera. A Method to Teach the Parameterization of All Stabilizing Controllers. 18th IFAC World Congress. Italy, Milan, 2011.[1](http://www.nt.ntnu.no/users/skoge/prost/proceedings/ifac11-proceedings/data/html/papers/1148.pdf)
2.  [Cellier: Lecture Notes on Numerical Methods for control, Ch. 24](http://www.inf.ethz.ch/personal/cellier/Lect/NMC/Lect_nmc_index.html)