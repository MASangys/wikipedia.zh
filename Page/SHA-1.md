**SHA-1**（，中文名：安全散列算法1）是一种[密码散列函数](https://zh.wikipedia.org/wiki/密码散列函数 "wikilink")，[美国国家安全局设计](../Page/美国国家安全局.md "wikilink")，并由美国[國家標準技術研究所](../Page/國家標準技術研究所.md "wikilink")（NIST）发布为[聯邦資料處理標準](https://zh.wikipedia.org/wiki/聯邦資料處理標準 "wikilink")（FIPS）\[1\]。SHA-1可以生成一个被称为消息摘要的160[位](https://zh.wikipedia.org/wiki/位 "wikilink")（20[字节](../Page/字节.md "wikilink")）散列值，散列值通常的呈现形式为40个[十六进制数](../Page/十六进制.md "wikilink")。

SHA-1已经不再视为可抵御有充足资金、充足计算资源的攻击者。2005年，密码分析人员发现了对SHA-1的有效攻击方法，这表明该算法可能不够安全，不能继续使用\[2\]，自2010年以来，许多组织建议用[SHA-2或](../Page/SHA-2.md "wikilink")[SHA-3来替换SHA](../Page/SHA-3.md "wikilink")-1\[3\]\[4\]\[5\]。[Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink")\[6\]、[Google](../Page/Google.md "wikilink")\[7\]以及[Mozilla](../Page/Mozilla.md "wikilink")\[8\]\[9\]\[10\]都宣布，它们旗下的浏览器将在2017年前停止接受使用SHA-1算法签名的[SSL证书](https://zh.wikipedia.org/wiki/電子證書 "wikilink")。

2017年2月23日，与[Google宣布了一个成功的SHA](../Page/Google.md "wikilink")-1\[11\]\[12\]，发布了两份内容不同但SHA-1散列值相同的[PDF文件作为概念证明](https://zh.wikipedia.org/wiki/PDF "wikilink")。\[13\]

## SHA-0和SHA-1

[SHA-1.svg](https://zh.wikipedia.org/wiki/File:SHA-1.svg "fig:SHA-1.svg")

最初載明的演算法於1993年發佈，稱做安全雜湊標準（Secure Hash
Standard），[FIPS](https://zh.wikipedia.org/wiki/联邦资料处理标准 "wikilink")
PUB 180。這個版本現在常被稱為SHA-0。它在發佈之後很快就被NSA撤回，並且由1995年發佈的修訂版本FIPS PUB
180-1（通常稱為SHA-1）取代。SHA-1和SHA-0的演算法只在壓縮函數的訊息轉換部份差了一個位元的循環位移。根據NSA的說法，它修正了一個在原始演算法中會降低雜湊安全性的弱點。然而NSA並沒有提供任何進一步的解釋或證明該弱點已被修正。而後SHA-0和SHA-1的弱點相繼被攻破，SHA-1似乎是顯得比SHA-0有抵抗性，這多少證實了NSA當初修正演算法以增進安全性的聲明。

SHA-0和SHA-1可將一個最大2<sup>64</sup>位元的訊息，轉換成一串160位元的訊息摘要；其設計原理相似於MIT教授[Ronald
L.
Rivest所設計的密碼學雜湊演算法](https://zh.wikipedia.org/wiki/Ron_Rivest "wikilink")[MD4和](https://zh.wikipedia.org/wiki/MD4 "wikilink")[MD5](../Page/MD5.md "wikilink")。

### SHA-0的破解

在[CRYPTO](https://zh.wikipedia.org/wiki/CRYPTO "wikilink")
98上，兩位法國研究者提出一種對SHA-0的攻擊方式\[14\]：在2<sup>61</sup>的計算複雜度之內，就可以發現一次碰撞（即兩個不同的訊息對應到相同的訊息摘要）；這個數字小於[生日攻擊法所需的](https://zh.wikipedia.org/wiki/生日攻擊 "wikilink")2<sup>80</sup>，也就是說，存在一種演算法，使其安全性不到一個理想的雜湊函數抵抗攻擊所應具備的計算複雜度。

2004年時，[Biham和Chen也發現了SHA](https://zh.wikipedia.org/wiki/Eli_Biham "wikilink")-0的近似碰撞，也就是兩個訊息可以雜湊出幾乎相同的數值；其中162位元中有142位元相同。他們也發現了SHA-0的完整碰撞（相對於近似碰撞），將本來需要80次方的複雜度降低到62次方。

2004年8月12日，Joux, Carribault,
Lemuet和Jalby宣佈找到SHA-0演算法的完整碰撞的方法，這是歸納Chabaud和Joux的攻擊所完成的結果。發現一個完整碰撞只需要2<sup>51</sup>的計算複雜度。他們使用的是一台有256顆[Itanium2處理器的](https://zh.wikipedia.org/wiki/Itanium#Itanium2 "wikilink")[超級電腦](https://zh.wikipedia.org/wiki/超級電腦 "wikilink")，約耗80,000
CPU工時。

2004年8月17日，在[CRYPTO](https://zh.wikipedia.org/wiki/CRYPTO "wikilink")
2004的Rump會議上，[王小雲](../Page/王小雲.md "wikilink")，[馮登國](https://zh.wikipedia.org/wiki/馮登國 "wikilink")（Feng）、[來學嘉](https://zh.wikipedia.org/wiki/來學嘉 "wikilink")（Lai），和[于紅波](https://zh.wikipedia.org/wiki/于紅波 "wikilink")（Yu）宣佈了攻擊[MD5](../Page/MD5.md "wikilink")、SHA-0和其他[雜湊函數的初步結果](https://zh.wikipedia.org/wiki/雜湊函數 "wikilink")。他們攻擊SHA-0的計算複雜度是2<sup>40</sup>，這意謂的他們的攻擊成果比Joux還有其他人所做的更好。請參見[MD5安全性](https://zh.wikipedia.org/wiki/MD5#Security "wikilink")。

2005年二月，[王小雲和](../Page/王小雲.md "wikilink")[殷益群](https://zh.wikipedia.org/wiki/殷益群 "wikilink")、[于紅波再度發表了對SHA](https://zh.wikipedia.org/wiki/于紅波 "wikilink")-0破密的演算法，可在2<sup>39</sup>的計算複雜度內就找到碰撞。

### SHA-1的破解

鑒於SHA-0的破密成果，專家們建議那些計劃利用SHA-1實作密碼系統的人們也應重新考慮。在2004年[CRYPTO會議結果公佈之後](https://zh.wikipedia.org/wiki/CRYPTO "wikilink")，NIST即宣布他們將逐漸減少使用SHA-1，改以SHA-2取而代之。

2005年，[Rijmen和](https://zh.wikipedia.org/wiki/Rijmen "wikilink")[Oswald發表了對SHA](https://zh.wikipedia.org/wiki/Oswald "wikilink")-1較弱版本（53次的加密迴圈而非80次）的攻擊：在2<sup>80</sup>的計算複雜度之內找到碰撞。

2005年二月，[王小雲](../Page/王小雲.md "wikilink")、[殷益群及](https://zh.wikipedia.org/wiki/殷益群 "wikilink")[于紅波發表了對完整版SHA](https://zh.wikipedia.org/wiki/于紅波 "wikilink")-1的攻擊，只需少於2<sup>69</sup>的計算複雜度，就能找到一組碰撞。（利用[生日攻擊法找到碰撞需要](https://zh.wikipedia.org/wiki/生日攻擊 "wikilink")2<sup>80</sup>的計算複雜度。）

這篇論文的作者們寫道；「我們的破密分析是以對付SHA-0的[差分攻擊](https://zh.wikipedia.org/wiki/差分攻擊 "wikilink")、近似碰撞、多區塊碰撞技術、以及從[MD5演算法中尋找碰撞的訊息更改技術為基礎](../Page/MD5.md "wikilink")。沒有這些強力的分析工具，SHA-1就無法破解。」此外，作者還展示了一次對58次加密迴圈SHA-1的破密，在2<sup>33</sup>個單位操作內就找到一組碰撞。完整攻擊方法的論文發表在2005年八月的[CRYPTO會議中](https://zh.wikipedia.org/wiki/CRYPTO "wikilink")。

殷益群在一次面談中如此陳述：「大致上來說，我們找到了兩個弱點：其一是前置處理不夠複雜；其二是前20個迴圈中的某些數學運算會造成不可預期的安全性問題。」

2005年8月17日的[CRYPTO會議尾聲中](https://zh.wikipedia.org/wiki/CRYPTO "wikilink")[王小雲](../Page/王小雲.md "wikilink")、[姚期智](../Page/姚期智.md "wikilink")、[姚儲楓再度發表更有效率的SHA](https://zh.wikipedia.org/wiki/姚儲楓 "wikilink")-1攻擊法，能在2<sup>63</sup>個計算複雜度內找到碰撞。

2006年的[CRYPTO會議上](https://zh.wikipedia.org/wiki/CRYPTO "wikilink")，[Christian
Rechberger和](https://zh.wikipedia.org/wiki/Christian_Rechberger "wikilink")[Christophe
De
Cannière宣布他們能在容許攻擊者決定部分原訊息的條件之下](https://zh.wikipedia.org/wiki/Christophe_De_Cannière "wikilink")，找到SHA-1的一個碰撞。

在密碼學的學術理論中，任何攻擊方式，其計算複雜度若少於暴力搜尋法所需要的計算複雜度，就能被視為針對該密碼系統的一種破密法；但這並不表示該破密法已經可以進入實際應用的階段。

就應用層面的考量而言，一種新的破密法出現，暗示着將來可能會出現更有效率、足以實用的改良版本。雖然這些實用的破密法版本根本還沒誕生，但確有必要發展更強的雜湊演算法來取代舊的演算法。在「碰撞」攻擊法之外，另有一種反譯攻擊法（Pre-image
attack），就是由雜湊出的字串反推原本的訊息；反譯攻擊的嚴重性更在碰撞攻擊之上，但也更困難。在許多會應用到密碼雜湊的情境（如用戶密碼的存放、文件的[數位簽章等](../Page/數位簽章.md "wikilink")）中，碰撞攻擊的影響並不是很大。舉例來說，一個攻擊者可能不會只想要偽造一份一模一樣的文件，而會想改造原來的文件，再附上合法的簽章，來愚弄持有公钥的驗證者。另一方面，如果可以從密文中反推未加密前的使用者密碼，攻擊者就能利用得到的密碼登入其他使用者的帳戶，而這種事在密碼系統中是不能被允許的。但若存在反譯攻擊，只要能得到指定使用者密碼雜湊過後的字串（通常存在影檔中，而且可能不會透露原密碼資訊），就有可能得到該使用者的密碼。

2017年2月23日，Google公司公告宣称他们与CWI
Amsterdam合作共同创建了两个有着相同的SHA-1值但内容不同的PDF文件，这代表SHA-1演算法已被正式攻破。\[15\]

## SHA-1演算法

以下是SHA-1演算法的[伪代码](../Page/伪代码.md "wikilink")：

<span style="color: green;">*`Note:``   ``All``   ``variables``
 ``are``   ``unsigned``   ``32``   ``bits``   ``and``   ``wrap``
 ``modulo``   ``2`<sup>`32`</sup>`   ``when``   ``calculating`*</span>

<span style="color: green;">*`Initial``   ``variables:`*</span>
`h0 := 0x67452301`
`h1 := 0xEFCDAB89`
`h2 := 0x98BADCFE`
`h3 := 0x10325476`
`h4 := 0xC3D2E1F0`

<span style="color: green;">*`Pre-processing:`*</span>
`append the bit '1' to the message`
`append k bits '0', where k is the minimum number >= 0 such that the resulting message`
`    length (in `*`bits`*`) is congruent to 448(mod 512)`
`append length of message (before pre-processing), in `*`bits`*`, as 64-bit big-endian integer`

<span style="color: green;">*`Process``   ``the``   ``message``
 ``in``   ``successive``   ``512-bit``   ``chunks:`*</span>
`break message into 512-bit chunks`
**`for`**` each chunk`
`    break chunk into sixteen 32-bit big-endian words w[i], 0 ≤ i ≤ 15`

`    `<span style="color: green;">*`Extend``   ``the``   ``sixteen``
 ``32-bit``   ``words``   ``into``   ``eighty``   ``32-bit``
 ``words:`*</span>
`    `**`for`**` i `**`from`**` 16 to 79`
`        w[i] := (w[i-3] `**`xor`**` w[i-8] `**`xor`**` w[i-14] `**`xor`**` w[i-16]) `**`leftrotate`**` 1`

`    `<span style="color: green;">*`Initialize``   ``hash``   ``value``
 ``for``   ``this``   ``chunk:`*</span>
`    a := h0`
`    b := h1`
`    c := h2`
`    d := h3`
`    e := h4`

`    `<span style="color: green;">*`Main``   ``loop:`*</span>
`    `**`for`**` i `**`from`**` 0 to 79`
`        `**`if`**` 0 ≤ i ≤ 19 `**`then`**
`            f := (b `**`and`**` c) `**`or`**` ((`**`not`**` b) `**`and`**` d)`
`            k := 0x5A827999`
`        `**`else``   ``if`**` 20 ≤ i ≤ 39`
`            f := b `**`xor`**` c `**`xor`**` d`
`            k := 0x6ED9EBA1`
`        `**`else``   ``if`**` 40 ≤ i ≤ 59`
`            f := (b `**`and`**` c) `**`or`**` (b `**`and`**` d) `**`or`**`(c `**`and`**` d)`
`            k := 0x8F1BBCDC`
`        `**`else``   ``if`**` 60 ≤ i ≤ 79`
`            f := b `**`xor`**` c `**`xor`**` d`
`            k := 0xCA62C1D6`

`        temp := (a `**`leftrotate`**` 5) + f + e + k + w[i]`
`        e := d`
`        d := c`
`        c := b `**`leftrotate`**` 30`
`        b := a`
`        a := temp`

`    `<span style="color: green;">*`Add``   ``this``   ``chunk's``
 ``hash``   ``to``   ``result``   ``so``   ``far:`*</span>
`    h0 := h0 + a`
`    h1 := h1 + b`
`    h2 := h2 + c`
`    h3 := h3 + d`
`    h4 := h4 + e`

<span style="color:green;">*`Produce``   ``the``   ``final``   ``hash``
 ``value``   ``(big-endian):`*</span>
`digest = hash = h0 `**`append`**` h1 `**`append`**` h2 `**`append`**` h3 `**`append`**` h4`

上述關於`f`運算式列於FIPS PUB 180-1中，以下替代運算式也許也能在主要迴圈裡計算`f`：

`(0  ≤ i ≤ 19): f := d `**`xor`**` (b `**`and`**` (c `**`xor`**` d))         `<span style="color: green;">*`(alternative)`*</span>
` `
`(40 ≤ i ≤ 59): f := (b `**`and`**` c) `**`or`**` (d `**`and`**` (b `**`or`**` c))   `<span style="color: green;">*`(alternative``
 ``1)`*</span>
`(40 ≤ i ≤ 59): f := (b `**`and`**` c) `**`or`**` (d `**`and`**` (b `**`xor`**` c))  `<span style="color: green;">*`(alternative``
 ``2)`*</span>
`(40 ≤ i ≤ 59): f := (b `**`and`**` c) + (d `**`and`**` (b `**`xor`**` c))   `<span style="color: green;">*`(alternative``
 ``3)`*</span>

## 参考文献

[Category:密码散列函数](https://zh.wikipedia.org/wiki/Category:密码散列函数 "wikilink")
[Category:密码学](https://zh.wikipedia.org/wiki/Category:密码学 "wikilink")

1.  <http://csrc.nist.gov/publications/fips/fips180-4/fips-180-4.pdf>
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14. Chabaud and Joux, 1998
15.