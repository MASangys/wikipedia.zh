**MD5訊息摘要演算法**（），一種被廣泛使用的[密碼雜湊函數](https://zh.wikipedia.org/wiki/密碼雜湊函數 "wikilink")，可以產生出一個128位元（16[位元組](https://zh.wikipedia.org/wiki/位元組 "wikilink")）的散列值（hash value），用于确保信息传输完整一致。MD5由美國密碼學家[罗纳德·李维斯特](../Page/罗纳德·李维斯特.md "wikilink")（）設計，於1992年公開，用以取代[MD4演算法](https://zh.wikipedia.org/wiki/MD4 "wikilink")。這套演算法的程序在 RFC 1321 中被加以規範。

将[数据](https://zh.wikipedia.org/wiki/数据 "wikilink")（如一段文字）运算变为另一固定长度值，是雜湊算法的基础原理。

1996年後被證實存在弱點，可以被加以[破解](https://zh.wikipedia.org/wiki/破解 "wikilink")，對於需要高度安全性的資料，專家一般建議改用其他演算法，如[SHA-2](../Page/SHA-2.md "wikilink")。2004年，證實MD5演算法無法防止碰撞（collision），因此不適用於安全性認證，如[SSL](https://zh.wikipedia.org/wiki/SSL "wikilink")[公開金鑰認證](../Page/公開金鑰認證.md "wikilink")或是[數位簽章](../Page/數位簽章.md "wikilink")等用途。

## 历史与密码学

1992年8月，罗纳德·李维斯特向[互联网工程任务组](../Page/互联网工程任务组.md "wikilink")（IETF）提交了一份重要文件，描述了这种算法的原理。由于这种算法的公开性和安全性，在90年代被广泛使用在各种程序语言中，用以確保资料傳遞無誤等。\[1\]

MD5由MD4、[MD3](https://zh.wikipedia.org/wiki/MD3 "wikilink")、[MD2改进而来](https://zh.wikipedia.org/wiki/MD2 "wikilink")，主要增强算法复杂度和不可逆性。

目前，MD5算法因其普遍、稳定、快速的特点，仍广泛应用于普通数据的错误检查领域。例如在一些[BitTorrent下载中](https://zh.wikipedia.org/wiki/BitTorrent "wikilink")，软件将通过计算MD5检验下载到的文件片段的完整性。

## 应用

MD5已经广泛使用在为文件传输提供一定的可靠性方面。例如，服务器预先提供一个MD5校验和，用户下载完文件以后，用MD5算法计算下载文件的MD5校验和，然后通过检查这两个校验和是否一致，就能判断下载的文件是否出错。

## 算法

[MD5.png](https://zh.wikipedia.org/wiki/File:MD5.png "fig:MD5.png")

MD5是輸入不定長度信息，輸出固定長度128-bits的演算法。经过程序流程，生成四个32位数据，最后联合起来成为一个128-bits[散列](../Page/散列.md "wikilink")。基本方式为，求餘、取餘、调整长度、与链接变量进行循环运算。得出结果。

\[F(X,Y,Z) = (X\wedge{Y}) \vee (\neg{X} \wedge{Z})\]

\[G(X,Y,Z) = (X\wedge{Z}) \vee (Y \wedge \neg{Z})\]

\[H(X,Y,Z) = X \oplus Y \oplus Z\]

\[I(X,Y,Z) = Y \oplus (X \vee \neg{Z})\]

\(\oplus, \wedge, \vee, \neg\) 是 *XOR*, *AND*, *OR* , *NOT* 的符号。

## 伪代码

``` pascal
//Note: All variables are unsigned 32 bits and wrap modulo 2^32 when calculating
var int[64] r, k

//r specifies the per-round shift amounts
r[ 0..15]：= {7, 12, 17, 22,  7, 12, 17, 22,  7, 12, 17, 22,  7, 12, 17, 22}
r[16..31]：= {5,  9, 14, 20,  5,  9, 14, 20,  5,  9, 14, 20,  5,  9, 14, 20}
r[32..47]：= {4, 11, 16, 23,  4, 11, 16, 23,  4, 11, 16, 23,  4, 11, 16, 23}
r[48..63]：= {6, 10, 15, 21,  6, 10, 15, 21,  6, 10, 15, 21,  6, 10, 15, 21}

//Use binary integer part of the sines of integers as constants:
for i from 0 to 63
    k[i] := floor(abs(sin(i + 1)) × 2^32)

//Initialize variables:
var int h0 := 0x67452301
var int h1 := 0xEFCDAB89
var int h2 := 0x98BADCFE
var int h3 := 0x10325476

//Pre-processing:
append "1" bit to message
append "0" bits until message length in bits ≡ 448 (mod 512)
append bit length of message as 64-bit little-endian integer to message

//Process the message in successive 512-bit chunks:
for each 512-bit chunk of message
    break chunk into sixteen 32-bit little-endian words w[i], 0 ≤ i ≤ 15

    //Initialize hash value for this chunk:
    var int a := h0
    var int b := h1
    var int c := h2
    var int d := h3

    //Main loop:
    for i from 0 to 63
        if 0 ≤ i ≤ 15 then
            f := (b and c) or ((not b) and d)
            g := i
        else if 16 ≤ i ≤ 31
            f := (d and b) or ((not d) and c)
            g := (5×i + 1) mod 16
        else if 32 ≤ i ≤ 47
            f := b xor c xor d
            g := (3×i + 5) mod 16
        else if 48 ≤ i ≤ 63
            f := c xor (b or (not d))
            g := (7×i) mod 16

        temp := d
        d := c
        c := b
        b := leftrotate((a + f + k[i] + w[g]),r[i]) + b
        a := temp
    Next i
    //Add this chunk's hash to result so far:
    h0 := h0 + a
    h1 := h1 + b
    h2 := h2 + c
    h3 := h3 + d
End ForEach
var int digest := h0 append h1 append h2 append h3 //(expressed as little-endian)
```

## MD5散列

一般128位的MD5散列被表示为32位[十六进制](../Page/十六进制.md "wikilink")数字。以下是一个43位长的仅[ASCII](../Page/ASCII.md "wikilink")字母列的MD5散列：

`MD5("The quick brown fox jumps over the lazy dog")`
`= 9e107d9d372bb6826bd81d3542a419d6`

即使在原文中作一个小变化（比如用c取代d）其散列也会发生巨大的变化：

`MD5("The quick brown fox jumps over the lazy `**`c`**`og")`
`= 1055d3e698d289f2af8663725127bd4b`

空文的散列为：

`MD5("")`
`= d41d8cd98f00b204e9800998ecf8427e`

## 缺陷

2009年，[中國科學院的謝濤和馮登國仅用了](https://zh.wikipedia.org/wiki/中國科學院 "wikilink")2<sup>20.96</sup>的碰撞算法複雜度，破解了MD5的[碰撞抵抗](https://zh.wikipedia.org/wiki/碰撞抵抗 "wikilink")，该攻击在普通计算机上运行只需要数秒钟\[2\]。

## 参见

  - [MD2](https://zh.wikipedia.org/wiki/MD2 "wikilink")
  - [MD4](https://zh.wikipedia.org/wiki/MD4 "wikilink")
  - [SHA](../Page/SHA家族.md "wikilink")
  - [AES](../Page/高级加密标准.md "wikilink")

## 参考文献

<div class="references-small">

<references />

  -
  -
  - Hans Dobbertin, Cryptanalysis of MD5 compress. Announcement on Internet, May 1996 [1](http://citeseer.ist.psu.edu/dobbertin96cryptanalysis.html).

  -
  -

</div>

## 外部链接

  - [W3C关于MD5的建议](http://www.w3.org/TR/1998/REC-DSig-label/MD5-1_0)

[Category:密码散列函数](https://zh.wikipedia.org/wiki/Category:密码散列函数 "wikilink") [Category:校验和算法](https://zh.wikipedia.org/wiki/Category:校验和算法 "wikilink") [Category:已攻破的散列函数](https://zh.wikipedia.org/wiki/Category:已攻破的散列函数 "wikilink")

1.
2.