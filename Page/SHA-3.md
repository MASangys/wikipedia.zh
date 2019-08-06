**SHA-3**第三代安全雜湊演算法(Secure Hash Algorithm 3)，之前名為**Keccak**（唸作或)）演算法，\[1\]\[2\]\[3\]設計者宣稱在 [Intel Core 2](https://zh.wikipedia.org/wiki/Intel_Core_2 "wikilink") 的CPU上面，此演算法的效能是12.5cpb（[每位元組周期數](https://zh.wikipedia.org/wiki/每位元組周期數 "wikilink")，cycles per byte）。\[4\]不過，在[-{zh-cn:硬件实现; zh-tw:硬體實做}-上面](../Page/特殊應用積體電路.md "wikilink")，這個演算法比起其他演算法明顯的快上很多。\[5\]

SHA-3 在2015年8月5日由 NIST 通过 FIPS 202 正式发表。\[6\]\[7\]

## 历史

  - Keccak 是一個[加密雜湊演算法](https://zh.wikipedia.org/wiki/加密雜湊演算法 "wikilink")，由 [Guido Bertoni](https://zh.wikipedia.org/wiki/Guido_Bertoni "wikilink")，[Joan Daemen](https://zh.wikipedia.org/wiki/Joan_Daemen "wikilink")，[Michaël Peeters](https://zh.wikipedia.org/wiki/Michaël_Peeters "wikilink")，以及[Gilles Van Assche在](https://zh.wikipedia.org/wiki/Gilles_Van_Assche "wikilink")[RadioGatún上设计](https://zh.wikipedia.org/wiki/RadioGatún "wikilink")。

<!-- end list -->

  - 2012年10月2日，Keccak 被選為[NIST雜湊函式競賽的勝利者](https://zh.wikipedia.org/wiki/NIST雜湊函式競賽 "wikilink")\[8\]。SHA-3並不是要取代[SHA-2](../Page/SHA-2.md "wikilink")，因為SHA-2目前並沒有出現明顯的弱點。由於對[MD5](../Page/MD5.md "wikilink")、[SHA-0和](https://zh.wikipedia.org/wiki/SHA-0 "wikilink")[SHA-1](../Page/SHA-1.md "wikilink")出現成功的破解，NIST感覺需要一個與之前演算法不同的，可替換的加密雜湊演算法，也就是現在的 SHA-3。

<!-- end list -->

  - 2014年，[NIST](https://zh.wikipedia.org/wiki/NIST "wikilink") 发布了 [FIPS](https://zh.wikipedia.org/wiki/FIPS "wikilink") 202 的草案 "SHA-3 Standard: Permutation-Based Hash and Extendable-Output Functions"。\[9\]

<!-- end list -->

  - 2015年8月5日，FIPS 202 最终被 NIST 批准。\[10\]

## 设计

Keccak 使用[海綿函數](../Page/海綿函數.md "wikilink")\[11\]\[12\]，此函數會將資料與初始的內部狀態做XOR運算，這是無可避免可置換的(inevitably permuted)。在最大的版本，演算法使用的內存狀態是使用一個5×5的二維陣列，資料型態是64位元的字節，總計1600位元 。縮版的演算法使用比較小的，以2為冪次的字節大小*w*為1位元，總計使用25位元。除了使用較小的版本來研究加密分析攻擊，比較適中的大小(例如從*w*=4使用100位元，到*w*=32使用800位元)則提供了比較實際且輕量的替代方案。

## Keccak 的置換

置換方法是先定義[字的長度為二的某次方](https://zh.wikipedia.org/wiki/字_\(計算機\) "wikilink")，*w* = 2<sup>ℓ</sup>位元。SHA-3的主要應用使用64位元的字長，ℓ = 6。

內存狀態可以被視為5×5×*w*的三維陣列。令*a*\[*i*\]\[*j*\]\[*k*\]代表內存狀態的第(*i*×5 + *j*)×*w* + *k*個位元（使用小端序，little-endian，參見[位元組序](https://zh.wikipedia.org/wiki/位元組序 "wikilink")）。

置換函數是五個子段落(sub-round)作12+2ℓ次的迴圈，每一個子段落都相當簡單：

## 修改

在整個 NIST 雜湊函數比賽裡面，參賽者允許稍微修改演算法解決已經出現的問題。Keccak 的修改有：

  - 迴圈的數目從12+ℓ變成12+2ℓ，以增加安全度。
  - 填充函式使用比起上述10<sup>\*</sup>1的方式更加複雜的作法。
  - 吸收比率*r*增加到安全限制，而非向下捨入到最接近某個2的冪次。

## SHA-3 範例

  - 空字串的雜湊值：

<span style="color: green;">`SHA3-224("")`</span>
`6b4e03423667dbb73b6e15454f0eb1abd4597f9a1b078e3f5b5a6bc7`
<span style="color: green;">`SHA3-256("")`</span>
`a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a`
<span style="color: green;">`SHA3-384("")`</span>
`0c63a75b845e4f7d01107d852e4c2485c51a50aaaa94fc61995e71bbee983a2ac3713831264adb47fb6bd1e058d5f004`
<span style="color: green;">`SHA3-512("")`</span>
`a69f73cca23a9ac5c8b567dc185a756e97c982164fe25859e0d1dcc1475c80a615b2123af1f5f94c11e3e9402c3ac558f500199d95b6d3e301758586281dcd26`
<span style="color: green;">`SHAKE128("", 256)`</span>
`7f9c2ba4e88f827d616045507605853ed73b8093f6efbc88eb1a6eacfa66ef26`
<span style="color: green;">`SHAKE256("", 512)`</span>
`46b9dd2b0ba88d13233b3feb743eeb243fcd52ea62b81b82b50c27646ed5762fd75dc4ddd8c0f200cb05019d67b592f6fc821c49479ab48640292eacb3b7c4be`

  - 由於[雪崩效应](../Page/雪崩效应.md "wikilink")，即使一個很小的改變都會產出幾乎完全不同的雜湊值。舉例來說，把 dog 改成 dof：

<span style="color: green;">`SHAKE128("The quick brown fox jumps over the lazy dog", 256)`</span>
`f4202e3c5852f9182a0430fd8144f0a74b95e7417ecae17db0f8cfeed0e3e66e`
<span style="color: green;">`SHAKE128("The quick brown fox jumps over the lazy dof", 256)`</span>
`853f4538be0db9621a6cea659a06c1107b1f83f02b13d18297bd39d7411cf10c`

## SHA 家族函数的比较

在下面的表格中，“内部状态”指的是传递到下一个块的位数。

<table>
<caption>SHA 家族函数的比较</caption>
<thead>
<tr class="header">
<th><p>算法及其变体</p></th>
<th><p>输出长度<br />
(位)</p></th>
<th><p>内部状态大小<br />
(位)</p></th>
<th><p>块大小<br />
(位)</p></th>
<th><p>最大消息长度<br />
(位)</p></th>
<th><p>循环</p></th>
<th><p>操作</p></th>
<th><p>安全性<br />
(位)</p></th>
<th><p>示例的性能<br />
(<a href="../Page/Mebibyte.md" title="wikilink">MiB</a>/s)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><a href="../Page/MD5.md" title="wikilink">MD5</a></strong><br />
(作为参考)</p></td>
<td><p>128</p></td>
<td><p>128<br />
(4 × 32)</p></td>
<td><p>512</p></td>
<td><p>2<sup>64</sup> − 1</p></td>
<td><p>64</p></td>
<td><p>按位与, 按位异或, 循环移位, 填充(求模 2<sup>32</sup>), 按位或</p></td>
<td></td>
<td><p>335</p></td>
</tr>
<tr class="even">
<td><p><strong><a href="https://zh.wikipedia.org/wiki/SHA-0" title="wikilink">SHA-0</a></strong></p></td>
<td><p>160</p></td>
<td><p>160<br />
(5 × 32)</p></td>
<td><p>512</p></td>
<td><p>2<sup>64</sup> − 1</p></td>
<td><p>80</p></td>
<td><p>按位与, 按位异或, 循环移位, 填充(求模 2<sup>32</sup>),按位或</p></td>
<td></td>
<td><p>-</p></td>
</tr>
<tr class="odd">
<td><p><strong><a href="../Page/SHA-1.md" title="wikilink">SHA-1</a></strong></p></td>
<td><p>160</p></td>
<td><p>160<br />
(5 × 32)</p></td>
<td><p>512</p></td>
<td><p>2<sup>64</sup> − 1</p></td>
<td><p>80</p></td>
<td><p>)</p></td>
<td><p>192</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><a href="../Page/SHA-2.md" title="wikilink">SHA-2</a></strong></p></td>
<td><p><em>SHA-224</em><br />
<em>SHA-256</em></p></td>
<td><p>224<br />
256</p></td>
<td><p>256<br />
(8 × 32)</p></td>
<td><p>512</p></td>
<td><p>2<sup>64</sup> − 1</p></td>
<td><p>64</p></td>
<td><p>按位与, 按位异或, 循环移位, 填充(求模 2<sup>32</sup>), 按位或, 移位</p></td>
<td><p><br />
112/128</p></td>
</tr>
<tr class="odd">
<td><p><em>SHA-384</em><br />
<em>SHA-512</em><br />
<em>SHA-512/224</em><br />
<em>SHA-512/256</em></p></td>
<td><p>384<br />
512<br />
224<br />
256</p></td>
<td><p>512<br />
(8 × 64)</p></td>
<td><p>1024</p></td>
<td><p>2<sup>128</sup> − 1</p></td>
<td><p>80</p></td>
<td><p>按位与, 按位异或, 循环移位, 填充(求模 2<sup>64</sup>), 按位或, 移位</p></td>
<td><p><br />
192/256/112/128</p></td>
<td><p>154</p></td>
</tr>
<tr class="even">
<td><p><strong>SHA-3</strong></p></td>
<td><p><em>SHA3-224</em><br />
<em>SHA3-256</em><br />
<em>SHA3-384</em><br />
<em>SHA3-512</em></p></td>
<td><p>224<br />
256<br />
384<br />
512</p></td>
<td><p>1600<br />
(5 × 5 × 64)</p></td>
<td><p>1152<br />
1088<br />
832<br />
576</p></td>
<td><p>无限制</p></td>
<td><p>24</p></td>
<td><p>按位与, 按位异或, 循环移位, 取反</p></td>
<td><p><br />
112/128/192/256</p></td>
</tr>
<tr class="odd">
<td><p><em>SHAKE128</em><br />
<em>SHAKE256</em></p></td>
<td><p><em>d</em> (可变长)<br />
<em>d</em> (可变长)</p></td>
<td><p>1344<br />
1088</p></td>
<td><p><br />
min (<em>d</em>/2, 128)<br />
min (<em>d</em>/2, 256)</p></td>
<td><p>-</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 參考資料

## 外部連結

  - [Keccak網站(英文)](http://keccak.noekeon.org/)
  - [Keccak官方C语言代码包](https://github.com/gvanas/KeccakCodePackage)
  - [Keccak官方C++语言工具集](https://github.com/gvanas/KeccakTools)
  - [A Java implementation of Keccak](https://github.com/kocakosm/pitaya/blob/master/src/org/kocakosm/pitaya/security/Keccak.java)
  - [A Cryptol implementation of Keccak](https://web.archive.org/web/20130407154409/http://plaintext.crypto.lo.gy/article/495/untwisted-a-cryptol-implementation-of-keccak-part-1)
  - [A VHDL source codes developed in the Cryptographic Engineering Research Group (CERG) at George Mason University](http://cryptography.gmu.edu/athena/index.php?id=source_codes)

[Category:密码散列函数](https://zh.wikipedia.org/wiki/Category:密码散列函数 "wikilink") [Category:密碼學理論](https://zh.wikipedia.org/wiki/Category:密碼學理論 "wikilink") [Category:带有源代码的公共领域软件](https://zh.wikipedia.org/wiki/Category:带有源代码的公共领域软件 "wikilink") [Category:NIST散列函数竞赛](https://zh.wikipedia.org/wiki/Category:NIST散列函数竞赛 "wikilink")

1.
2.
3.
4.  Keccak implementation overview Version 3.2 <http://keccak.noekeon.org/Keccak-implementation-3.2.pdf>
5.  Keccak is second only to Luffa, which did not advance to the final round.
6.  <http://www.nist.gov/itl/csd/201508_sha3.cfm>
7.  <http://www.nist.gov/manuscript-publication-search.cfm?pub_id=919061>
8.
9.
10.
11.
12.