**SHA-2**，名稱來自於**安全散列演算法2**（）的縮寫，一種[密碼雜湊函數演算法標準](https://zh.wikipedia.org/wiki/密碼雜湊函數 "wikilink")，由[美國國家安全局研發](https://zh.wikipedia.org/wiki/美國國家安全局 "wikilink")\[1\]，由[美國國家標準與技術研究院](https://zh.wikipedia.org/wiki/美國國家標準與技術研究院 "wikilink")（NIST）在2001年發布。屬於[SHA演算法之一](../Page/SHA家族.md "wikilink")，是[SHA-1](../Page/SHA-1.md "wikilink")的後繼者。其下又可再分為六個不同的演算法標準，包括了：SHA-224、SHA-256、SHA-384、SHA-512、SHA-512/224、SHA-512/256。

## 开发

[SHA-2.svg](https://zh.wikipedia.org/wiki/File:SHA-2.svg "fig:SHA-2.svg")

NIST發佈了三個額外的SHA變體，這三個函數都將訊息對應到更長的訊息摘要。以它們的摘要長度（以[位元](../Page/位元.md "wikilink")計算）加在原名後面來命名：SHA-256，SHA-384和SHA-512。它們發佈於2001年的FIPS PUB 180-2草稿中，隨即通過審查和評論。包含SHA-1的FIPS PUB 180-2，於2002年以官方標準發佈。2004年2月，發佈了一次FIPS PUB 180-2的變更通知，加入了一個額外的變種SHA-224，這是為了符合雙金鑰[3DES](../Page/3DES.md "wikilink")所需的金鑰長度而定義\[2\]。

SHA-256和SHA-512是很新的雜湊函數，前者以定義一個word為32位元，後者則定義一個word為64位元。它們分別使用了不同的偏移量，或用不同的常數，然而，實際上二者結構是相同的，只在迴圈執行的次數上有所差異。SHA-224以及SHA-384則是前述二種雜湊函數的截短版，利用不同的初始值做計算。

這些新的雜湊函數並沒有接受像SHA-1一樣的公眾密碼社群做詳細的檢驗，所以它們的密碼安全性還不被大家廣泛的信任。Gilbert和Handschuh在2003年曾對這些新變種作過一些研究，聲稱他們沒有找到弱點。

## 演算法

以下是SHA-256演算法的[虛擬碼](https://zh.wikipedia.org/wiki/虛擬碼 "wikilink")。注意，64個word `w[16..63]`中的位元比起SHA-1演算法，混合的程度大幅提升。

<span style="color: green;">*`Note:``   ``All``   ``variables``   ``are``   ``unsigned``   ``32``   ``bits``   ``and``   ``wrap``   ``modulo``   ``2`<sup>`32`</sup>`   ``when``   ``calculating`*</span>

<span style="color:green;">*`Initialize``   ``variables`*</span>
<span style="color:green;">`(first 32 bits of the `<em>`fractional parts`</em>` of the square roots of the first 8 primes 2..19):`</span>
`h0 := 0x6a09e667`
`h1 := 0xbb67ae85`
`h2 := 0x3c6ef372`
`h3 := 0xa54ff53a`
`h4 := 0x510e527f`
`h5 := 0x9b05688c`
`h6 := 0x1f83d9ab`
`h7 := 0x5be0cd19`

<span style="color:green;">*`Initialize``   ``table``   ``of``   ``round``   ``constants`*</span>
<span style="color:green;">`(first 32 bits of the `*`fractional``   ``parts`*` of the cube roots of the first 64 primes 2..311):`</span>
`k[0..63] :=`
`   0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,`
`   0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,`
`   0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,`
`   0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,`
`   0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,`
`   0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,`
`   0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,`
`   0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2`

<span style="color:green;">*`Pre-processing:`*</span>
`append the bit '1' to the message`
`append k bits '0', where k is the minimum number >= 0 such that the resulting message`
`    length (in `*`bits`*`) is `[`congruent`](https://zh.wikipedia.org/wiki/同余 "wikilink")` to 448(mod 512)`
`append length of message (before pre-processing), in `*`bits`*`, as 64-bit big-endian integer`

<span style="color:green;">*`Process``   ``the``   ``message``   ``in``   ``successive``   ``512-bit``   ``chunks:`*</span>
`break message into 512-bit chunks`
**`for`**` each chunk`
`    break chunk into sixteen 32-bit big-endian words w[0..15]`

`    `<span style="color:green;">*`Extend``   ``the``   ``sixteen``   ``32-bit``   ``words``   ``into``   ``sixty-four``   ``32-bit``   ``words:`*</span>
`    `**`for`**` i `**`from`**` 16 to 63`
`        s0 := (w[i-15] `**`rightrotate`**` 7) `**`xor`**` (w[i-15] `**`rightrotate`**` 18) `**`xor`**`(w[i-15] `**`rightshift`**` 3)`
`        s1 := (w[i-2] `**`rightrotate`**` 17) `**`xor`**` (w[i-2] `**`rightrotate`**` 19) `**`xor`**`(w[i-2] `**`rightshift`**` 10)`
`        w[i] := w[i-16] `**`+`**` s0 `**`+`**` w[i-7] `**`+`**` s1`

`    `<span style="color:green;">*`Initialize``   ``hash``   ``value``   ``for``   ``this``   ``chunk:`*</span>
`    a := h0`
`    b := h1`
`    c := h2`
`    d := h3`
`    e := h4`
`    f := h5`
`    g := h6`
`    h := h7`

`    `<span style="color:green;">*`Main``   ``loop:`*</span>
`    `**`for`**` i `**`from`**` 0 to 63`
`        s0 := (a `**`rightrotate`**` 2) `**`xor`**` (a `**`rightrotate`**` 13) `**`xor`**`(a `**`rightrotate`**` 22)`
`        maj := (a `**`and`**` b) `**`xor`**` (a `**`and`**` c) `**`xor`**`(b `**`and`**` c)`
`        t2 := s0 + maj`
`        s1 := (e `**`rightrotate`**` 6) `**`xor`**` (e `**`rightrotate`**` 11) `**`xor`**`(e `**`rightrotate`**` 25)`
`        ch := (e `**`and`**` f) `**`xor`**` ((`**`not`**` e) `**`and`**` g)`
`        t1 := h + s1 + ch + k[i] + w[i]`
`        h := g`
`        g := f`
`        f := e`
`        e := d + t1`
`        d := c`
`        c := b`
`        b := a`
`        a := t1 + t2`

`    `<span style="color:green;">*`Add``   ``this``   ``chunk's``   ``hash``   ``to``   ``result``   ``so``   ``far:`*</span>
`    h0 := h0 + a`
`    h1 := h1 + b`
`    h2 := h2 + c`
`    h3 := h3 + d`
`    h4 := h4 + e`
`    h5 := h5 + f`
`    h6 := h6 + g`
`    h7 := h7 + h`

<span style="color:green;">*`Produce``   ``the``   ``final``   ``hash``   ``value``   ``(big-endian):`*</span>
`digest = hash = h0 `**`append`**` h1 `**`append`**` h2 `**`append`**` h3 `**`append`**` h4 `**`append`**` h5 `**`append`**` h6 `**`append`**` h7`

其中`ch`函數及`maj`函數可利用前述SHA-1的優化方式改寫。

SHA-224和SHA-256基本上是相同的，除了：

  - `h0`到`h7`的初始值不同，以及
  - SHA-224輸出時截掉`h7`的函數值。

SHA-512和SHA-256的結構相同，但：

  - SHA-512所有的數字都是64位元，
  - SHA-512執行80次加密迴圈而非64次，
  - SHA-512初始值和常數拉長成64位元，以及
  - 二者位元的偏移量和循環位移量不同。

SHA-384和SHA-512基本上是相同的，除了：

  - `h0`到`h7`的初始值不同，以及
  - SHA-384輸出時截掉`h6`和`h7`的函數值。

## 实现

Windows操作系统的System32目录下有certutil.exe，可以直接调用，例如：

`certutil -hashfile yourfilename.ext SHA256`

## 参考文献

[Category:密码散列函数](https://zh.wikipedia.org/wiki/Category:密码散列函数 "wikilink") [Category:密码学](https://zh.wikipedia.org/wiki/Category:密码学 "wikilink")

1.
2.