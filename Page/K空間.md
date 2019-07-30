[K-space_partial_Fourier.JPG](https://zh.wikipedia.org/wiki/File:K-space_partial_Fourier.JPG "fig:K-space_partial_Fourier.JPG")對稱性。\]\] ***k*空間**是尋常[空間](https://zh.wikipedia.org/wiki/空間 "wikilink")\(\mathbb{R}^n\)在[傅立葉變換下的對偶空間](https://zh.wikipedia.org/wiki/傅立葉變換 "wikilink")，主要應用在[磁振造影的成像分析](https://zh.wikipedia.org/wiki/磁振造影 "wikilink")，其他如[磁振造影中的](https://zh.wikipedia.org/wiki/磁振造影 "wikilink")[射頻](../Page/射頻.md "wikilink")波形設計，以及[量子計算中的初始態準備亦用到](https://zh.wikipedia.org/wiki/量子計算 "wikilink")*k*空間的概念。***k***和出現在[波](../Page/波.md "wikilink")動數學中的[波數](../Page/波數.md "wikilink")相應，可說都是「[空間頻率](https://zh.wikipedia.org/wiki/頻率 "wikilink")」的概念。

## 磁振造影成像分析

*本段落涉及[磁振造影中](https://zh.wikipedia.org/wiki/磁振造影 "wikilink")[造影階段](https://zh.wikipedia.org/wiki/造影 "wikilink")，對於資料取得與重建的分析；可稱為「造影k空間」（imaging k-space）。*

在磁振造影中，*k*空間訊號分布\(S(\mathbf{k} \isin \mathbb{R}^2)=S(k_x,k_y)\)以及正常空間的訊號分布（即可以判讀的磁振[影像](https://zh.wikipedia.org/wiki/影像 "wikilink")）\(S(\mathbf{r} \isin \mathbb{R}^2)=S(x,y)\)符合如下[傅立葉對偶關係](https://zh.wikipedia.org/wiki/傅立葉變換 "wikilink")：

\[S(\mathbf{r}) = A \int S(\mathbf{k})e^{-i\mathbf{k} \cdot \mathbf{r}} d\mathbf{k}\]

  -
    或寫\(S(x,y) = A \int \int S(k_x,k_y)e^{-ik_x x}e^{-ik_y y} dk_x dk_y\)

其中A是個比例常數，含有\(2\pi\)相關的因子。正常空間的訊號（影像），受到[磁化強度](../Page/磁化強度.md "wikilink")（或[自旋密度](https://zh.wikipedia.org/wiki/自旋密度權重影像 "wikilink")）、各種對比權重等等的影響。

## 磁振造影激發設計

*本段落涉及[磁振造影中](https://zh.wikipedia.org/wiki/磁振造影 "wikilink")[激發階段](https://zh.wikipedia.org/wiki/激發 "wikilink")，對於[射頻](../Page/射頻.md "wikilink")與[梯度磁場共同設計的分析](https://zh.wikipedia.org/wiki/梯度磁場 "wikilink")；可稱為「激發k空間」（excitation k-space）。*

磁振造影在某些場合中，需要對某特定體積進行射頻激發，然而一般的射頻激發方法可能又會遇上[疊影問題](https://zh.wikipedia.org/wiki/疊影 "wikilink")，即激发的区域（Excited area）大于成像范围（Field of View）。John Pauly、Dwight Nishimura、Albert Macovski等人於1989年提出在给予小角度射頻磁場\(\mathbf{B_1}\)激发的同时加上梯度磁場\(\mathbf{G}\cdot \mathbf{r}\)，并提出可採用*k*空間分析的方法对该梯度磁场進行設計。這種方法可减小激发的区域面积从而减小成像范围，可用于快速成像，例如在胸腔磁振影像中监测呼吸造成的橫膈膜運動。

此外，這項方法也可用於設計對空間以及對[共振](../Page/共振.md "wikilink")頻率同時做選擇性激發的射頻與梯度磁場。應用場合包括了水影像與脂肪影像的個別取得，或者[磁振頻譜影像](https://zh.wikipedia.org/wiki/磁振頻譜影像 "wikilink")（MRSI）方面的應用。

### 理論

## 量子計算初始態準備分析

## 外部連結

  - MRI成像*k*空間

<!-- end list -->

  - [K-Space formulation of MRI](http://www.ebyte.it/library/educards/mri/K-SpaceMRI.html)（英文）

<!-- end list -->

  - MRI激發*k*空間

<!-- end list -->

  - 量子計算初始態

[Category:磁振造影](https://zh.wikipedia.org/wiki/Category:磁振造影 "wikilink") [Category:磁共振](https://zh.wikipedia.org/wiki/Category:磁共振 "wikilink")