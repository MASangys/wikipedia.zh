[缩略图](https://zh.wikipedia.org/wiki/File:CIExy1931_ProPhoto.svg "fig:缩略图")。三角形中不包含彩色範圍的部分則為人眼一般不可見的不存在色彩。\]\]
**ProPhoto RGB**色彩空間，也被稱爲ROMM RGB色彩空間（Reference Output Medium Metric RGB
Color
Space），該色彩空間由[Kodak專爲攝影輸出而所開發設計](../Page/伊士曼柯达公司.md "wikilink")，相較一般的RGB色彩空間來説，該色彩空間所提供的[色域十分寬裕](../Page/色域.md "wikilink")，甚至包含[CIE](https://zh.wikipedia.org/wiki/CIE "wikilink")
[Lab色彩空間中](../Page/Lab色彩空间.md "wikilink")90%以上的表面色彩和1980年Pointer所記錄的可能出現的100%的表面色彩。\[1\]該色域的表現範圍甚至較[寬色域RGB色彩空間還要大](https://zh.wikipedia.org/wiki/寬色域RGB色彩空間 "wikilink")。ProPhoto
RGB色域也被用於非綫性相關[色階操作最小](https://zh.wikipedia.org/wiki/色階 "wikilink")[色調而使用](https://zh.wikipedia.org/wiki/色调 "wikilink")。不過這種色彩空間的缺點之一是該色彩空間包含有大約13%的通常[不存在色彩](https://zh.wikipedia.org/wiki/禁色_\(顏色\) "wikilink")。
[缩略图](https://zh.wikipedia.org/wiki/File:CIE1931xy_gamut_comparison.svg "fig:缩略图")
由於該[色彩空間十分巨大](../Page/色彩空間.md "wikilink")，所以一般建議采用16位[色深工作模式以防止出現過於明顯的](../Page/色彩深度.md "wikilink")[色調分離現象](https://zh.wikipedia.org/wiki/色調分離 "wikilink")。在通常的8位色深工作模式中該問題會非常顯著，因爲在該模式下[色彩的梯度會非常大而且明顯](../Page/色彩梯度.md "wikilink")。

在該色彩空間之下有兩種相應的場景空間顏色編碼，一種為[RIMM
RGB](https://zh.wikipedia.org/wiki/RIMM_RGB "wikilink")，其被用於編碼標準動態範圍場景空間圖像，另一種[ERIMM
RGB則用於編碼擴展的動態範圍場景空間圖像](https://zh.wikipedia.org/wiki/ERIMM_RGB "wikilink")。

## 開發

ProPhoto
RGB和其他色彩空間的開發記錄在一篇文章\[2\]中，該文章總結了其現任澳大利亞佳能信息系統研究部高級研究經理的開發人員Geoff
Wolfe博士在柯達公司IS＆T / SPIE彩色成像2011年會議的演講。

## ProPhoto RGB (ROMM RGB)的初級編碼

| 色彩    | CIE x  | CIE y  |
| ----- | ------ | ------ |
| Red   | 0.7347 | 0.2653 |
| Green | 0.1596 | 0.8404 |
| Blue  | 0.0366 | 0.0001 |
| White | 0.3457 | 0.3585 |

## 觀察環境

  - 亮度水平在164-640cd/m²之内。
  - 觀察環境光氛圍平衡。
  - Viewing Flare在0.5-1.0%之間。
  - 標準[參考白點由CIE標準光源D](https://zh.wikipedia.org/wiki/白点 "wikilink")50的色度（x
    = 0.3457, y = 0.3585）決定。
  - 使用基於CIE 1931標準色度觀察器的無眩光（或耀斑校正）比色測量來編碼圖像顏色值。

## 編碼方程

  -
    <math>

X'_\\mathrm{ROMM} = I_\\mathrm{MAX} \\cdot \\begin{cases} 0; &
X_\\mathrm{ROMM} \< 0.0 \\\\ 16\\cdot X_\\mathrm{ROMM}; & 0.0 \\le
X_\\mathrm{ROMM} \< E_t \\\\ X_\\mathrm{ROMM}^{1/1.8}; & E_t \\le
X_\\mathrm{ROMM}\<1.0 \\\\ 1; & X_\\mathrm{ROMM} \\ge 1.0 \\end{cases}
</math>

其中

  -
    \(X = R,\, G,\, or\, B\)

并且

  -
    \(I_\mathrm{MAX}\)是編碼函數中使用的最大整數值（例如，對於8位配置，為255）

有

  -
    \(E_t = 16^{1.8/(1-1.8)} = 2^{-9} = 1/512 = 0.001953125\)

## 參考

<references />

## 外部連結

  - [ROMM RGB規制（英文）](http://www.color.org/ROMMRGB.pdf)
  - [ROMM RGB詳細訊息（英文）](http://www.color.org/chardata/rgb/rommrgb.xalter)
  - [瞭解ProPhoto
    RGB（英文）](https://luminous-landscape.com/understanding-prophoto-rgb/)
  - [超越Adobe
    RGB的色彩空間（英文）](http://www.naturephotographers.net/articles1203/mh1203-1.html)
  - [爲何選擇ProPhoto色彩空間（英文）](http://www.outbackphoto.com/color_management/cm_06/essay.html)

<!-- end list -->

1.
2.