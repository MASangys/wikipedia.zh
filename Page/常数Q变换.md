> 本文内容由[常数Q变换](https://zh.wikipedia.org/wiki/常数Q变换)转换而来。


**常数Q变换**（）是[数学](../Page/数学.md "wikilink")和[信号处理中的变换](https://zh.wikipedia.org/wiki/信号处理 "wikilink")，将数据变换到频域内。它与[傅里叶变换](../Page/傅里叶变换.md "wikilink")相关\[1\]，而且与[莫萊小波](../Page/莫萊小波.md "wikilink")变换紧密相关\[2\]。

常数Q变换可以視為是許多對數分佈濾波器的組合，其中第*k*個濾波器其頻寬是上一個濾波器頻寬的某個倍數，也就是

\(\begin{align}
\delta f_k &= 2^{ \frac {1}{n} } * \delta f_{k-1}
\\ &= \left ( {2^{ \frac {1}{n} }} \right )^{k} * \delta f_{\mathrm{min}}
\end{align}\)

其中

  -
    δ*f<sub>k</sub>*為第*k*個濾波器的頻寬
    *f*<sub>min</sub>為最低濾波器的中心頻率
    *n* 為每個[Octave的濾波器數](../Page/Octave_\(電子學\).md "wikilink")

## 參考資料

[Category:調和分析](https://zh.wikipedia.org/wiki/Category:調和分析 "wikilink") [Category:积分变换](https://zh.wikipedia.org/wiki/Category:积分变换 "wikilink")

1.  Judith C. Brown, [Calculation of a constant Q spectral transform](http://www.wellesley.edu/Physics/brown/pubs/cq1stPaper.pdf), *J. Acoust. Soc. Am.*, 89(1):425–434, 1991.
2.  [Continuous Wavelet Transform](https://ccrma.stanford.edu/~jos/sasp/Continuous_Wavelet_Transform.html) "When the mother wavelet can be interpreted as a windowed sinusoid (such as the Morlet wavelet), the wavelet transform can be interpreted as a constant-Q Fourier transform. Before the theory of wavelets, constant-Q Fourier transforms (such as obtained from a classic third-octave filter bank) were not easy to invert, because the basis signals were not orthogonal."