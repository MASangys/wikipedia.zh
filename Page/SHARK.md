在[密碼學裡](https://zh.wikipedia.org/wiki/密碼學 "wikilink")，**SHARK**被認為是一種[Rijndael加密法](../Page/高级加密标准.md "wikilink")（[高級加密標準](https://zh.wikipedia.org/wiki/高級加密標準 "wikilink")）前身的[區塊加密](https://zh.wikipedia.org/wiki/區塊加密 "wikilink")。

SHARK有64位元[區塊大小與](https://zh.wikipedia.org/wiki/區塊大小\(密碼學\) "wikilink")128位元[密鑰長度](../Page/密碼.md "wikilink")。它是個6迴圈[SP網路](https://zh.wikipedia.org/wiki/SPN "wikilink")，利用線性與非線性轉換層輪換[密鑰混合階段](../Page/密碼.md "wikilink")。線性轉換使用[MDS矩陣代表](https://zh.wikipedia.org/wiki/MDS矩陣 "wikilink")[Reed-Solomon](https://zh.wikipedia.org/wiki/Reed-Solomon "wikilink")[錯誤糾正代碼以保證適度](https://zh.wikipedia.org/wiki/錯誤糾正代碼 "wikilink")[散亂](https://zh.wikipedia.org/wiki/散亂 "wikilink")。非線性層是以8個來自函數*F(x) = x<sup>-1</sup>*於*GF(2<sup>8</sup>)*（[有限域](../Page/有限域.md "wikilink")2的8次方）的8×8位元[S-box組成](https://zh.wikipedia.org/wiki/S-box "wikilink")。

5迴圈的 SHARK 修改版可透過[插值攻擊](../Page/插值攻擊.md "wikilink")(Jakobsen and Knudsen, 1997) 破解。

## 參見

  - [KHAZAD](https://zh.wikipedia.org/wiki/KHAZAD "wikilink")
  - [Square](https://zh.wikipedia.org/wiki/Square_\(cipher\) "wikilink")

## 腳註參考

  - {{ cite conference

`    | author = `[`Vincent``   ``Rijmen`](https://zh.wikipedia.org/wiki/Vincent_Rijmen "wikilink")`, `[`Joan``   ``Daemen`](https://zh.wikipedia.org/wiki/Joan_Daemen "wikilink")`, `[`Bart``   ``Preneel`](https://zh.wikipedia.org/wiki/Bart_Preneel "wikilink")`, Anton Bosselaers, Erik De Win`
`    | title = The Cipher SHARK`
`    | booktitle = 3rd International Workshop on `[`Fast``   ``Software``   ``Encryption`](https://zh.wikipedia.org/wiki/Fast_Software_Encryption "wikilink")` (FSE '96)`
`    | pages = pp.99–111`
`    | publisher = `[`Springer-Verlag`](https://zh.wikipedia.org/wiki/Springer-Verlag "wikilink")
`    | date = February 1996`
`    | location = `[`Cambridge`](https://zh.wikipedia.org/wiki/Cambridge "wikilink")
`    | url = `<http://citeseer.ist.psu.edu/rijmen96cipher.html>
`    | format = `[`PDF`](https://zh.wikipedia.org/wiki/PDF "wikilink")`/`[`PostScript`](../Page/PostScript.md "wikilink")
`    | accessdate = 2007-03-06 }}`

  - {{ cite conference

`    | author = `[`T.``   ``Jakobsen`](https://zh.wikipedia.org/wiki/Thomas_Jakobsen "wikilink")`, `[`L.R.``   ``Knudsen`](https://zh.wikipedia.org/wiki/Lars_Knudsen "wikilink")
`    | title = The Interpolation Attack on Block Ciphers`
`    | booktitle = 4th International Workshop on `[`Fast``   ``Software``   ``Encryption`](https://zh.wikipedia.org/wiki/Fast_Software_Encryption "wikilink")` (FSE '97)`
`    | pages = pp.28–40`
`    | publisher = Springer-Verlag`
`    | date = January 1997`
`    | location = `[`Haifa`](https://zh.wikipedia.org/wiki/Haifa "wikilink")
`    | url = `<http://citeseer.ist.psu.edu/jakobsen97interpolation.html>
`    | format = PDF/PostScript`
`    | accessdate = 2007-01-23}}`

  - {{ cite book

`    | author = Joan Daemen, Vincent Rijmen`
`    | title = The Design of Rijndael: AES—The Advanced Encryption Standard`
`    | publisher = Springer-Verlag`
`    | date = 2002`
`    | id = ISBN 3-540-42580-2 }}`

## 外部連結

  - [SCAN's entry for SHARK](http://www.users.zetnet.co.uk/hopwood/crypto/scan/cs.html#SHARK-A)

[Category:區塊加密](https://zh.wikipedia.org/wiki/Category:區塊加密 "wikilink")