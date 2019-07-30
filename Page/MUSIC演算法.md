**MUSIC**（多信號分類）是一種用於[頻率估計](https://zh.wikipedia.org/wiki/譜密度 "wikilink")\[1\]和[無線電測向](https://zh.wikipedia.org/wiki/無線電測向 "wikilink")\[2\] 的算法。

## 發展歷史

現實生活中有許多根據測量結果估計接收信號所依賴的一組常數參數信號處理問題。已經有幾種解決這些問題的方法，包括Capon（1969）的最大似然（ML）方法和Burg的最大熵（ME）方法。雖然這些方法經常成功並且被廣泛使用，但是它們具有某些基本限制（尤其是參數估計中的偏差和靈敏度），主要是因為它們使用測量的不正確模型（例如[自迴歸模型](../Page/自迴歸模型.md "wikilink")而不是特殊[ARMA模型](../Page/ARMA模型.md "wikilink")）。

Pisarenko（1973）是最早利用數據模型結構的人之一，在使用協方差方法估計加性噪聲中復雜[平面波的參數的情況下這樣做](../Page/正弦曲線.md "wikilink")。 Schmidt（1977）在Northrop Grumman工作時獨立（1979）是第一個在任意形式的傳感器陣列情況下正確利用測量模型的人。特別是施密特通過首先在沒有噪聲的情況下推導出完整的幾何解決方案來實現這一目標，然後巧妙地擴展幾何概念以在存在噪聲的情況下獲得合理的近似解。得到的算法稱為MUSIC（多重信號分類）並且已被廣泛研究。

在基於數千次模擬的詳細評估中，麻省理工學院的林肯實驗室得出結論，在目前公認的高分辨率算法中，MUSIC是最有前途的，也是進一步研究和實際硬件實現的主要候選者\[3\]。然而，雖然MUSIC的性能優勢很大，但它們是以計算（搜索參數空間）和存儲（陣列校準數據）為代價的。\[4\]

## 頻率估算的應用

MUSIC使用[特徵值和特徵向量方法估計](https://zh.wikipedia.org/wiki/特徵空間 "wikilink")[信號或](https://zh.wikipedia.org/wiki/信號 "wikilink")[Autocorrelation matrix的頻率內容](https://zh.wikipedia.org/wiki/自相關矩陣 "wikilink")。該方法假設信號\(x(n)\)由存在高斯白噪聲的 \(p\)複指數組成。給定\(M \times M\)次M自相關矩陣，\(\mathbf{R}_x\)，如果特徵值按降序排序，對應於 \(p\)個最大特徵值（即最大可變性的方向）的特徵向量跨越信號子空間。其餘的 \(M-p\) 特徵向量跨越正交空間，其中只有噪聲。注意，對於 \(M = p + 1\)，MUSIC與[Pisarenko harmonic decomposition相同](https://zh.wikipedia.org/wiki/Pisarenko諧波分解 "wikilink")。一般的想法是使用平均來改善Pisarenko估計的性能。

MUSIC的頻率估算功能是

\[\hat P_{MU}(e^{j \omega}) = \frac{1}{\sum_{i=p+1}^{M} |\mathbf{e}^{H} \mathbf{v}_i|^2},\]

where \(\mathbf{v}_i\) are the noise eigenvectors and

\[\mathbf{e} = \begin{bmatrix}1 & e^{j \omega} & e^{j 2 \omega} & \cdots & e^{j (M-1) \omega}\end{bmatrix}^T\]

被稱為導向矢量，在這種情況下表示為均勻[陣列](https://zh.wikipedia.org/wiki/線性陣列 "wikilink")。

估計函數的 \(p\)個最大峰值的位置給出了 \(p\)信號分量的頻率估計。

MUSIC是[Pisarenko harmonic decomposition的推廣和計算](https://zh.wikipedia.org/wiki/Pisarenko方法 "wikilink")。在該方法中，僅使用單個特徵向量並將其視為一組[自回歸係數](https://zh.wikipedia.org/wiki/自回歸係數 "wikilink")，其零值可以通過分析或多項式根尋找算法找到。相比之下，MUSIC假設已將幾個此類函數添加在一起，因此可能不存在零。相反地，存在可利用計算，搜尋估計函數的局部最小值。

## 與其他方法比較

當預先知道組件的數量時，MUSIC優於簡單的方法，例如:存在噪聲的情況下選取DFT譜的峰值，因為它利用該數字的知識來忽略其最終報告中的噪聲。

與DFT不同，它能夠以高於一個樣本的精度估計頻率，因為可以針對任何頻率評估其估計函數，而不僅僅是DFT頻段的頻率。這是一種[超解析度成像](../Page/超解析度成像.md "wikilink")的形式。

它的主要缺點是它需要事先知道組件的數量，因此原始方法不能用於更一般的情況。存在用於僅從自相關矩陣的統計特性估計源分量的數量的方法。例如， \[5\] 此外，MUSIC假設共存源不相關，這限制了其實際應用。

最近的迭代半參數方法提供了強大的[超解析度成像](../Page/超解析度成像.md "wikilink")，儘管有高度相關的來源，例如:[SAMV (algorithm)](https://zh.wikipedia.org/wiki/SAMV_\(algorithm\) "wikilink") \[6\]\[7\]

## 其他應用

MUSIC的修改版本，表示為"時間反轉-MUSIC"（TR-MUSIC），最近已應用於計算時間反轉成像。\[8\]\[9\]。 MUSIC算法也被實現用於以C library快速檢測DTMF頻率（雙音多頻信令） - libmusic \[10\]。

## 参见

  - [譜密度](https://zh.wikipedia.org/wiki/譜密度 "wikilink")
  - [週期圖法](https://zh.wikipedia.org/wiki/週期圖法 "wikilink")
  - [Welch's method](https://zh.wikipedia.org/wiki/Welch's_method "wikilink")
  - [Bartlett's method](https://zh.wikipedia.org/wiki/Bartlett's_method "wikilink")
  - [SAMV演算法](https://zh.wikipedia.org/wiki/SAMV演算法 "wikilink")
  - [無線電測向](https://zh.wikipedia.org/wiki/無線電測向 "wikilink")
  - [基音檢測算法](../Page/基音檢測算法.md "wikilink")
  - [超高解析度顯微鏡學](../Page/超高解析度顯微鏡學.md "wikilink")

## 参考文献

## 延伸閱讀

  - The estimation and tracking of frequency, Quinn and Hannan, Cambridge University Press 2001.

[Category:數位訊號處理](https://zh.wikipedia.org/wiki/Category:數位訊號處理 "wikilink")

1.  Hayes, Monson H., *Statistical Digital Signal Processing and Modeling*, John Wiley & Sons, Inc., 1996. .
2.  Schmidt, R.O, "Multiple Emitter Location and Signal Parameter Estimation," IEEE Trans. Antennas Propagation, Vol. AP-34 (March 1986), pp.276-280.
3.
4.  R. Roy and T. Kailath, "ESPRIT-estimation of signal parameters via rotational invariance techniques," in IEEE Transactions on Acoustics, Speech, and Signal Processing, vol. 37, no. 7, pp. 984-995, Jul 1989.
5.  Fishler, Eran, and H. Vincent Poor. "Estimation of the number of sources in unbalanced arrays via information theoretic criteria." IEEE Transactions on Signal Processing 53.9 (2005): 3543-3553.
6.
7.
8.
9.
10.