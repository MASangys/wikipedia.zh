在[密碼學裡](../Page/密碼學.md "wikilink")，**SHARK**被認為是一種[Rijndael加密法](../Page/高级加密标准.md "wikilink")（[高級加密標準](../Page/高級加密標準.md "wikilink")）前身的[區塊加密](../Page/區塊加密.md "wikilink")。

SHARK有64位元[區塊大小與](../Page/區塊大小\(密碼學\).md "wikilink")128位元[密鑰長度](../Page/密碼.md "wikilink")。它是個6迴圈[SP網路](../Page/SPN.md "wikilink")，利用線性與非線性轉換層輪換[密鑰混合階段](../Page/密碼.md "wikilink")。線性轉換使用[MDS矩陣代表](../Page/MDS矩陣.md "wikilink")[Reed-Solomon](../Page/Reed-Solomon.md "wikilink")[錯誤糾正代碼以保證適度](../Page/錯誤糾正代碼.md "wikilink")[散亂](../Page/散亂.md "wikilink")。非線性層是以8個來自函數*F(x)
=
x<sup>-1</sup>*於*GF(2<sup>8</sup>)*（[有限域](../Page/有限域.md "wikilink")2的8次方）的8×8位元[S-box組成](../Page/S-box.md "wikilink")。

5迴圈的 SHARK 修改版可透過[插值攻擊](../Page/插值攻擊.md "wikilink")(Jakobsen and
Knudsen, 1997) 破解。

## 參見

  - [KHAZAD](../Page/KHAZAD.md "wikilink")
  - [Square](../Page/Square_\(cipher\).md "wikilink")

## 腳註參考

  - {{ cite conference

`    | author = `[`Vincent``
 ``Rijmen`](../Page/Vincent_Rijmen.md "wikilink")`, `[`Joan``
 ``Daemen`](../Page/Joan_Daemen.md "wikilink")`, `[`Bart``
 ``Preneel`](../Page/Bart_Preneel.md "wikilink")`, Anton Bosselaers, Erik De Win`
`    | title = The Cipher SHARK`
`    | booktitle = 3rd International Workshop on `[`Fast``
 ``Software``
 ``Encryption`](../Page/Fast_Software_Encryption.md "wikilink")` (FSE '96)`
`    | pages = pp.99–111`
`    | publisher = `[`Springer-Verlag`](../Page/Springer-Verlag.md "wikilink")
`    | date = February 1996`
`    | location = `[`Cambridge`](../Page/Cambridge.md "wikilink")
`    | url = `<http://citeseer.ist.psu.edu/rijmen96cipher.html>
`    | format = `[`PDF`](../Page/PDF.md "wikilink")`/`[`PostScript`](../Page/PostScript.md "wikilink")
`    | accessdate = 2007-03-06 }}`

  - {{ cite conference

`    | author = `[`T.``
 ``Jakobsen`](../Page/Thomas_Jakobsen.md "wikilink")`, `[`L.R.``
 ``Knudsen`](../Page/Lars_Knudsen.md "wikilink")
`    | title = The Interpolation Attack on Block Ciphers`
`    | booktitle = 4th International Workshop on `[`Fast``
 ``Software``
 ``Encryption`](../Page/Fast_Software_Encryption.md "wikilink")` (FSE '97)`
`    | pages = pp.28–40`
`    | publisher = Springer-Verlag`
`    | date = January 1997`
`    | location = `[`Haifa`](../Page/Haifa.md "wikilink")
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

  - [SCAN's entry for
    SHARK](http://www.users.zetnet.co.uk/hopwood/crypto/scan/cs.html#SHARK-A)

[Category:區塊加密](https://zh.wikipedia.org/wiki/Category:區塊加密 "wikilink")