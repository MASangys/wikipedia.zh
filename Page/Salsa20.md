**Salsa20**是一种[流加密算法](https://zh.wikipedia.org/wiki/流加密 "wikilink")，由提交到。它建立在基于add-rotate-xor（ARX）操作的[伪随机函数之上](https://zh.wikipedia.org/wiki/伪随机 "wikilink")——32位模加、[异或](https://zh.wikipedia.org/wiki/异或 "wikilink")（XOR）和[循环移位操作](../Page/位操作.md "wikilink")。Salsa20映射一个256[位密钥](../Page/位元.md "wikilink")、一个64位[nonce以及一个](https://zh.wikipedia.org/wiki/nonce "wikilink")64位流位置到一个512位的输出（也存在一个128位密钥的版本）。这使Salsa20具有了不同寻常的优势，用户可以在恒定时间内寻求输出流中的任何位置。它可以在现代[x86处理器中提供约每](https://zh.wikipedia.org/wiki/x86 "wikilink")4–14次循环周期一字节的速度\[1\]，并具有合理的硬件性能。它没有注册专利，并且Bernstein还撰写了几篇对常见[架构优化的](https://zh.wikipedia.org/wiki/架构 "wikilink")[公有领域](../Page/公有领域.md "wikilink")实现。\[2\]

一个相关的[密码算法](https://zh.wikipedia.org/wiki/密碼_\(密碼學\) "wikilink")**ChaCha**，具有类似的特点，但有不同的循环移位函数，已在2008年由Bernstein发布。

## 结构

在其内部，该算法采用模加⊕（[逻辑异或](../Page/逻辑异或.md "wikilink")），32位模加2<sup>32</sup> ⊞，和在一个内部十六个32位word的state上进行恒定距离循环移位操作（\<\<\<）。只使用[add-rotate-xor操作避免了软件实现中](../Page/分组密码.md "wikilink")[计时攻击的可能性](https://zh.wikipedia.org/wiki/计时攻击 "wikilink")。基本的Salsa20循环函数 `R(a,b,c,k)`是

`b ⊕= (a ⊞ c) <<< k;`

初始状态是根据密钥的8个word、流位置的2个word、nonce的两个word（基本上是额外的流位置）和4个固定word制成。20轮循环混合制成16个word的流密码输出。

一个quarter-round会使用四个word的输入并制成四个word的输出。内部的16-word状态被布置为一个4x4矩阵；偶数循环应用quarter-round操作到四行的每项，奇数循环应用quarter-round操作到四列的每项。连续两轮循环（一次行循环和一次列循环）被称为double-round。

更精确的规范已在下方呈现为[伪代码](../Page/伪代码.md "wikilink")，尽管这种行/列模式更难看出⊞是模加2<sup>32</sup>，\<\<\<是左旋操作，及⊕是[异或](../Page/逻辑异或.md "wikilink")。`x ⊕= y`是`x = x ⊕ y`的缩写。

`x[ 4] ⊕= (x[ 0] ⊞ x[12])<<<7;    x[ 9] ⊕= (x[ 5] ⊞ x[ 1])<<<7;`
`x[14] ⊕= (x[10] ⊞ x[ 6])<<<7;    x[ 3] ⊕= (x[15] ⊞ x[11])<<<7;`
`x[ 8] ⊕= (x[ 4] ⊞ x[ 0])<<<9;    x[13] ⊕= (x[ 9] ⊞ x[ 5])<<<9;`
`x[ 2] ⊕= (x[14] ⊞ x[10])<<<9;    x[ 7] ⊕= (x[ 3] ⊞ x[15])<<<9;`
`x[12] ⊕= (x[ 8] ⊞ x[ 4])<<<13;   x[ 1] ⊕= (x[13] ⊞ x[ 9])<<<13;`
`x[ 6] ⊕= (x[ 2] ⊞ x[14])<<<13;   x[11] ⊕= (x[ 7] ⊞ x[ 3])<<<13;`
`x[ 0] ⊕= (x[12] ⊞ x[ 8])<<<18;   x[ 5] ⊕= (x[ 1] ⊞ x[13])<<<18;`
`x[10] ⊕= (x[ 6] ⊞ x[ 2])<<<18;   x[15] ⊕= (x[11] ⊞ x[ 7])<<<18;`

`x[ 1] ⊕= (x[ 0] ⊞ x[ 3])<<<7;    x[ 6] ⊕= (x[ 5] ⊞ x[ 4])<<<7;`
`x[11] ⊕= (x[10] ⊞ x[ 9])<<<7;    x[12] ⊕= (x[15] ⊞ x[14])<<<7;`
`x[ 2] ⊕= (x[ 1] ⊞ x[ 0])<<<9;    x[ 7] ⊕= (x[ 6] ⊞ x[ 5])<<<9;`
`x[ 8] ⊕= (x[11] ⊞ x[10])<<<9;    x[13] ⊕= (x[12] ⊞ x[15])<<<9;`
`x[ 3] ⊕= (x[ 2] ⊞ x[ 1])<<<13;   x[ 4] ⊕= (x[ 7] ⊞ x[ 6])<<<13;`
`x[ 9] ⊕= (x[ 8] ⊞ x[11])<<<13;   x[14] ⊕= (x[13] ⊞ x[12])<<<13;`
`x[ 0] ⊕= (x[ 3] ⊞ x[ 2])<<<18;   x[ 5] ⊕= (x[ 4] ⊞ x[ 7])<<<18;`
`x[10] ⊕= (x[ 9] ⊞ x[ 8])<<<18;   x[15] ⊕= (x[14] ⊞ x[13])<<<18;`

Salsa20在其输入上实行20轮混合，然后添加最终数组到原数数组来获得64字节输出块。\[3\]但是，使用8轮和12轮的缩减循环的变体Salsa20/8和Salsa20/12也已分别被引入。这些变体被引入以补充原有的Salsa20，但不是取代它，甚至在eSTREAM的基准测量中比Salsa20表现更好<sup>\[*[<span title="This term requires quantification. (November 2012)">quantify</span>](https://zh.wikipedia.org/wiki/Wikipedia:格式手册/日期和数字 "wikilink")*\]</sup>，尽管它相应有着较低的安全余量。

## eSTREAM选用

Salsa20已被选择作为eSTREAM项目“Profile 1”（软件）的第三阶段设计，其在第二阶段结束时得到了Profile 1中算法中的最高投票得分。\[4\] Salsa20先前被选择为Profile 1（软件）的第二阶段设计重点，并作为eSTREAM项目Profile 2（硬件）的第二阶段，\[5\]但最终没有晋级到“Profile 2”的第三阶段，因为eSTREAM觉得这对于极其资源受限的硬件环境可能不是一个好的候选。\[6\]

## 密码分析

截至2015年，没有已知的对Salsa20/12或完整Salsa20/20的攻击被发布；已知的最佳攻击\[7\]是打破12轮或20轮循环中的8轮。

在2005年，Paul Crowley报告了一个对Salsa20/5的攻击，预计时间复杂度2<sup>165</sup>，并赢得Bernstein的1000[美金](https://zh.wikipedia.org/wiki/美金 "wikilink") “最有趣Salsa20密码分析”奖励。\[8\]此次攻击及所有后续的攻击都是基于[截断差分分析](https://zh.wikipedia.org/wiki/截断差分分析 "wikilink")。<span class="cx-segment" data-segmentid="128"></span>在2006年，Fischer、Meier、Berbain、Biasse和Robshaw报告了一个对Salsa20/6的攻击，预计时间复杂度2<sup>177</sup>，以及一个对Salsa20/7的相关密钥攻击，预计时间复杂度2<sup>217</sup>。\[9\]

在2007年，Tsunoo 等人公布了一个Salsa20的密码分析，在2<sup>255</sup>次操作中，使用2<sup>11.37</sup>对密钥流，打破8/20轮来恢复256位的私钥。\[10\]但是，这种攻击似乎没有比[蛮力攻击更好](https://zh.wikipedia.org/wiki/暴力破解法 "wikilink")。<span class="cx-segment" data-segmentid="133"></span>

在2008年，Aumasson、Fischer、Khazaei、Meier和Rechberger报告了一个追对Salsa20/7的密码分析攻击，时间复杂度2<sup>153</sup>，并且他们报告了首个对Salsa20/8用预计时间复杂度2<sup>251</sup>的攻击。此攻击使用了对中性密钥位进行截断差分概率检测的新概念。此攻击可以打破使用128位密钥的Salsa20/7。\[11\]

在2012年，Aumasson 等人的攻击使Shi 等人将Salsa20/7（128位密钥，[时间复杂度](../Page/时间复杂度.md "wikilink")2<sup>109</sup>）改进为Salsa20/8（256位密钥，时间复杂度2<sup>250</sup>）。\[12\]

在2013年，Mouha和Preneel发布了一则证明\[13\]，叙述使用15轮循环的Salsa20在128位的安全差分分析。具体来说，它没有比2<sup>−130</sup>更高概率的差分特征，因此差分分析会比用尽128位密钥更困难。<span class="cx-segment" data-segmentid="143"></span>

## ChaCha变种

在2008年，发布了一个密切相关的“**ChaCha**”密码家族，其目的是增加每一轮的扩散以实现相同或稍微提升的性能。\[14\] Aumasson et al. paper也攻击过ChaCha，实现了少一轮循环：256位ChaCha6有复杂性2<sup>139</sup>，ChaCha7有复杂性2<sup>248</sup>。128位ChaCha6在2<sup>107</sup>以内，但据称攻击128位的ChaCha7失败。\[15\]

ChaCha替换了基本的Salsa20循环函数`R(a,b,c,k)`

`b ⊕= (a ⊞ c) <<< k;`

修改后的计算方法：

`b ⊞= c;`
`a ⊕= b;`
`a <<<= k;`

循环移位量也被更新。一个完整的quarter-round，`QR (a,b,c,d)`变为：

`a ⊞= b; d ⊕= a; d <<<= 16;`
`c ⊞= d; b ⊕= c; b <<<= 12;`
`a ⊞= b; d ⊕= a; d <<<= 8;`
`c ⊞= d; b ⊕= c; b <<<= 7;`

这除了使其在双[操作数](https://zh.wikipedia.org/wiki/操作数 "wikilink")[指令集](https://zh.wikipedia.org/wiki/指令集 "wikilink")（如[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")）上更有效率，也使其在每次quarter-round中更新每个word两次。

在事实上，8轮的两次循环允许一些优化。\[16\]此外，输入格式可以被重新布置，以支持高效的[SSE](../Page/SSE.md "wikilink")实现优化，这对Salsa20已被发现。相比逐行、逐列下移[置换](../Page/置換.md "wikilink")，还可以沿对角线进行。\[17\]这样ChaCha中的两轮循环是：

`QR (0, 4, 8, 12)`
`QR (1, 5, 9, 13)`
`QR (2, 6, 10, 14)`
`QR (3, 7, 11, 15)`
`QR (0, 5, 10, 15)`
`QR (1, 6, 11, 12)`
`QR (2, 7, 8, 13)`
`QR (3, 4, 9, 14)`

其中的数字是十六个32位state word。ChaCha20使用两轮10次迭代。\[18\]

ChaCha是BLAKE哈希算法的基础，NIST哈希算法竞争的一个入围者，并且继任者BLAKE2调整为更高的速度。它还定义了一个使用16个64位word（state的1024位）的变种，具有相应调整的循环移位常数。

### ChaCha20

[Google](../Page/Google.md "wikilink")选择了设计的，带[Poly1305](../Page/Poly1305.md "wikilink")[訊息鑑別碼的ChaCha](https://zh.wikipedia.org/wiki/訊息鑑別碼 "wikilink")20作为[OpenSSL](../Page/OpenSSL.md "wikilink")中[RC4](../Page/RC4.md "wikilink")的替代品，用以完成互联网的安全通信。\[19\]Google最初实现了[https](../Page/超文本传输安全协议.md "wikilink") ([TLS/SSL](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink"))流量在[Chrome浏览器](https://zh.wikipedia.org/wiki/Chrome浏览器 "wikilink")（[Android](../Page/Android.md "wikilink")手机版）与Google网站之间的通信。\[20\]

不久之后，Google在TLS中采用它，ChaCha20和[Poly1305](../Page/Poly1305.md "wikilink")算法也以 `chacha20-poly1305@openssh.com` 成为[OpenSSH](../Page/OpenSSH.md "wikilink")中的一个新密码套件。\[21\]\[22\]后来，通过编译时选项避免它依赖于[OpenSSL](../Page/OpenSSL.md "wikilink")也成为可能。\[23\]

ChaCha20也被用在[OpenBSD](../Page/OpenBSD.md "wikilink")\[24\]和[NetBSD](../Page/NetBSD.md "wikilink")\[25\]操作系统中的arc4random随机数生成器，取代已经脆弱的[RC4](../Page/RC4.md "wikilink")，在[DragonFly BSD](../Page/DragonFly_BSD.md "wikilink")\[26\]中内核的[CSPRNG子程序中也是如此](../Page/密码学安全伪随机数生成器.md "wikilink")。\[27\]\[28\]

ChaCha20已经在中标准化。它在[IKE和](../Page/網際網路金鑰交換.md "wikilink")[IPsec](../Page/IPsec.md "wikilink")中的使用已在中标准化。在中，Chacha20-Poly1305已经被加入[TLS扩展标准](https://zh.wikipedia.org/wiki/TLS "wikilink")。

## 另见

  - Speck – [美国国家安全局](../Page/美国国家安全局.md "wikilink")开发的一个add-rotate-xor密码算法

## 参考资料

## 外部链接

  - [Salsa20 首页](https://cr.yp.to/snuffle.html)
  - [Specification](https://cr.yp.to/snuffle/spec.pdf) ([PDF](https://zh.wikipedia.org/wiki/便携式文档格式 "wikilink"))
  - [Salsa20/8 and Salsa20/12](https://cr.yp.to/snuffle/812.pdf) ([PDF](https://zh.wikipedia.org/wiki/便携式文档格式 "wikilink"))
  - [eStream page on Salsa20](http://www.ecrypt.eu.org/stream/salsa20pf.html)
  - [The ChaCha family of stream ciphers](https://cr.yp.to/chacha.html)
  - [Salsa20 Usage & Deployment](https://ianix.com/pub/salsa20-deployment.html)

[Category:互联网标准](https://zh.wikipedia.org/wiki/Category:互联网标准 "wikilink") [Category:流密码](https://zh.wikipedia.org/wiki/Category:流密码 "wikilink") [Category:带有源代码的公共领域软件](https://zh.wikipedia.org/wiki/Category:带有源代码的公共领域软件 "wikilink")

1.  [Salsa20 home page](https://cr.yp.to/snuffle.html)
2.  [Speed of Salsa20](https://cr.yp.to/salsa20/speed.html)
3.  <https://cr.yp.to/snuffle/salsafamily-20071225.pdf>
4.  <http://www.ecrypt.eu.org/stream/endofphase2.html>
5.  <http://www.ecrypt.eu.org/stream/endofphase1.html>
6.  <http://www.ecrypt.eu.org/stream/PhaseIIreport.pdf>
7.  Jean-Philippe Aumasson, Simon Fischer, Shahram Khazaei, Willi Meier, and Christian Rechberger, [New Features of Latin Dances](https://eprint.iacr.org/2007/472.pdf)
8.  Paul Crowley, [Truncated differential cryptanalysis of five rounds of Salsa20](http://www.ciphergoth.org/crypto/salsa20)
9.  Simon Fischer, Willi Meier, Côme Berbain, Jean-Francois Biasse, Matt Robshaw, *Non-Randomness in eSTREAM Candidates Salsa20 and TSC-4*, Indocrypt 2006
10.
11. Jean-Philippe Aumasson, Simon Fischer, Shahram Khazaei, Willi Meier, and Christian Rechberger, [New Features of Latin Dances](https://eprint.iacr.org/2007/472.pdf)
12. Zhenqing Shi, Bin Zhang, Dengguo Feng, Wenling Wu (2012): „Improved Key Recovery Attacks on Reduced-Round Salsa20 and ChaCha“.
13.
14. [ChaCha home page](https://cr.yp.to/chacha.html)
15. Jean-Philippe Aumasson, Simon Fischer, Shahram Khazaei, Willi Meier, and Christian Rechberger, [New Features of Latin Dances](https://eprint.iacr.org/2007/472.pdf)
16.
17.
18. [ChaCha20 and Poly1305 for IETF protocols](https://datatracker.ietf.org/doc/draft-irtf-cfrg-chacha20-poly1305/?include_text=1), Internet-Draft , Y. Nir, Check Point, A. Langley, Google Inc., November 9, 2014
19. \[//tools.ietf.org/html/draft-ietf-tls-chacha20-poly1305 draft-ietf-tls-chacha20-poly1305 The ChaCha20-Poly1305 AEAD Cipher for Transport Layer Security\]
20. [Google Swaps Out Crypto Ciphers in OpenSSL](http://www.infosecurity-magazine.com/news/google-swaps-out-crypto-ciphers-in-openssl/), InfoSecurity, April 24, 2014
21.
22.
23.
24.
25.
26.
27.
28.