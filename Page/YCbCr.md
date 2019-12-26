[Barns_grand_tetons_YCbCr_separation.jpg](https://zh.wikipedia.org/wiki/File:Barns_grand_tetons_YCbCr_separation.jpg "fig:Barns_grand_tetons_YCbCr_separation.jpg")

YCbCr或Y'CbCr有的時候會被寫作：YC<small>B</small>C<small>R</small>或是Y'C<small>B</small>C<small>R</small>，是[色彩空間](../Page/色彩空間.md "wikilink")的一種，通常會用于影片中的影像連續處理，或是數字攝影系統中。Y'和Y是不同的，Y就是所謂的[流明](../Page/流明.md "wikilink")（[luminance](https://zh.wikipedia.org/wiki/luminance "wikilink")），Y'表示光的濃度且為非線性，使用[伽馬修正](https://zh.wikipedia.org/wiki/伽玛校正 "wikilink")（gamma correction）編碼處理，而C<small>B</small>和C<small>R</small>則為藍色和紅色的濃度偏移量成份。

Y'CbCr不是一種絕對的色彩空間，是一種針對[RGB資訊所做的編碼](https://zh.wikipedia.org/wiki/RGB "wikilink")。真正的顏色顯示是根據實際RGB色盤（[colorant](https://zh.wikipedia.org/wiki/colorant "wikilink")）來決定的。因此Y'CbCr所表示的值只有在標準RGB色盤或是ICC數據（[ICC profile](https://zh.wikipedia.org/wiki/ICC_Profile "wikilink")）有提供的時候才能計算。

**YCbCr**不是一種[絕對色彩空間](https://zh.wikipedia.org/wiki/絕對色彩空間 "wikilink")，是[YUV](../Page/YUV.md "wikilink")壓縮和偏移的版本。YCbCr的Y與YUV中的Y含义一致，Cb和Cr與UV同样都指色彩，Cb指蓝色色度，Cr指红色色度，在应用上很广泛，JPEG、MPEG、DVD、[攝影機](../Page/攝影機.md "wikilink")、[數位電視等皆採此一格式](https://zh.wikipedia.org/wiki/數位電視 "wikilink")。因此一般俗稱的YUV大多是指YCbCr。

YCbCr格式有：

  - 4∶4∶4
  - 4∶2∶2
  - 4∶1∶1
  - 4∶2∶0

## 名稱

YCbCr有時會稱為YCC. Y'CbCr在模拟分量影像（analog component video）中也常被稱為YPbPr。

## 技術細節

Y'CbCr訊號（prior to scaling and offsets to place the signals into digital form）被稱為[YPbPr](https://zh.wikipedia.org/wiki/YPbPr "wikilink")，而且產生時必須合乎gamma-adjusted [RGB](https://zh.wikipedia.org/wiki/RGB "wikilink") source有二個不同的常數Kb和Kr如下：

`YPbPr (analog version of Y'CbCr) from R'G'B'`

-----

`Y' =  Kr * R'        + (1 - Kr - Kb) * G' + Kb * B'`
`Pb = 0.5 * (B' - Y') / (1 - Kb)`
`Pr = 0.5 * (R' - Y') / (1 - Kr)`
`....................................................`
`R', G', B' in [0; 1]`
`Y' in [0; 1]`
`Pb in [-0.5; 0.5]`
`Pr in [-0.5; 0.5]`


\(Y' =  Kr * R' + (1 - Kr - Kb) * G' + Kb * B' \,\)

\(Pb =\frac12 * \frac{B' - Y'}{1 - Kb}\)

\(Pr =\frac12 * \frac{R' - Y'}{1 - Kr}\)

where Kb and Kr are ordinarily derived from the definition of the corresponding RGB space. (The equivalent [matrix](https://zh.wikipedia.org/wiki/matrix_\(mathematics\) "wikilink") manipulation is often referred to as the "color matrix.")

## 外部連結

  - [Charles Poynton - Color FAQ](http://www.poynton.com/ColorFAQ.html)
  - [Charles Poynton - Video engineering](http://www.poynton.com/Poynton-video-eng.html)
  - [YCrCb to RGB converter](https://web.archive.org/web/20090111035713/http://www.dvd-replica.com/DVD/colorrgb2.php)
  - [Color Space Visualization](https://web.archive.org/web/20081207014820/http://www.couleur.org/index.php?page=transformations#YCbCr)
  - [PC Magazine Encyclopedia: YCbCr](http://www.pcmag.com/encyclopedia_term/0,2542,t=YCbCr&i=55147,00.asp)