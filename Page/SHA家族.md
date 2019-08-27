**安全散列演算法**（，縮寫為SHA）是一個[密碼雜湊函數家族](https://zh.wikipedia.org/wiki/密碼雜湊函數 "wikilink")，是[FIPS所認證的安全](https://zh.wikipedia.org/wiki/联邦资料处理标准 "wikilink")[雜湊演算法](https://zh.wikipedia.org/wiki/雜湊函數 "wikilink")。能計算出一個數位訊息所對應到的，長度固定的字串（又稱訊息摘要）的算法。且若輸入的訊息不同，它們對應到不同字串的機率很高。

SHA家族的演算法，由[美國國家安全局](https://zh.wikipedia.org/wiki/美國國家安全局 "wikilink")（NSA）所設計，並由[美國國家標準與技術研究院](https://zh.wikipedia.org/wiki/美國國家標準與技術研究院 "wikilink")（NIST）發佈，是美國的政府標準，其分別是：

  - **[SHA-0](https://zh.wikipedia.org/wiki/SHA-0 "wikilink")**：1993年发布，当时称做安全散列标准（Secure Hash Standard），发布之后很快就被NSA撤回，是SHA-1的前身。

<!-- end list -->

  - **[SHA-1](../Page/SHA-1.md "wikilink")**：1995年发布，SHA-1在許多安全協定中廣為使用，包括[TLS和](https://zh.wikipedia.org/wiki/TLS "wikilink")[SSL](https://zh.wikipedia.org/wiki/SSL "wikilink")、[PGP](../Page/PGP.md "wikilink")、[SSH](https://zh.wikipedia.org/wiki/SSH "wikilink")、[S/MIME和](https://zh.wikipedia.org/wiki/S/MIME "wikilink")[IPsec](../Page/IPsec.md "wikilink")，曾被視為是[MD5](../Page/MD5.md "wikilink")（更早之前被廣為使用的雜湊函數）的後繼者。但SHA-1的安全性在2000年以后已经不被大多数的加密场景所接受。2017年荷兰密码学研究小组CWI和Google正式宣布攻破了SHA-1\[1\]。

<!-- end list -->

  - **[SHA-2](../Page/SHA-2.md "wikilink")**：2001年发布，包括SHA-224、SHA-256、SHA-384、SHA-512、SHA-512/224、SHA-512/256。雖然至今尚未出現對SHA-2有效的攻擊，它的演算法跟SHA-1基本上仍然相似；因此有些人開始發展其他替代的雜湊演算法。

<!-- end list -->

  - **[SHA-3](../Page/SHA-3.md "wikilink")**：2015年正式发布，SHA-3並不是要取代SHA-2，因為SHA-2目前並沒有出現明顯的弱點。由於對MD5出現成功的破解，以及對SHA-0和SHA-1出現理論上破解的方法，[NIST感覺需要一個與之前演算法不同的](https://zh.wikipedia.org/wiki/國家標準暨技術研究院 "wikilink")，可替換的加密雜湊演算法，也就是現在的SHA-3。

## SHA函数对比

下表中的中繼雜湊值（internal state）表示對每個資料區塊壓縮雜湊過後的中繼值（internal hash sum）。

<table>
<caption>SHA函数对比</caption>
<thead>
<tr class="header">
<th><p>算法和变体</p></th>
<th><p>輸出雜湊值長度<br />
（bits）</p></th>
<th><p>中繼雜湊值長度<br />
（bits）</p></th>
<th><p>資料區塊長度<br />
（bits）</p></th>
<th><p>最大輸入訊息長度<br />
（bits）</p></th>
<th><p>迴圈次數</p></th>
<th><p>使用到的運算子</p></th>
<th><p>碰撞攻击<br />
（bits）</p></th>
<th><p>性能示例{{refn|Found on an <a href="https://zh.wikipedia.org/wiki/AMD_Opteron" title="wikilink">AMD Opteron</a> 8354 2.2 GHz processor running 64-bit Linux<ref>{{cite web</p></th>
<th><p>url=<a href="http://www.cryptopp.com/benchmarks-amd64.html">http://www.cryptopp.com/benchmarks-amd64.html</a></p></th>
<th><p>title=Crypto++ 5.6.0 Benchmarks</p></th>
<th><p>accessdate=2013-06-13 }} </ref>}}<br />
(<a href="../Page/Mebibyte.md" title="wikilink">MiB</a>/s)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><a href="../Page/MD5.md" title="wikilink">MD5</a></strong>（作为参考）</p></td>
<td><p>128</p></td>
<td><p>128<br />
</p></td>
<td><p>512</p></td>
<td><p>无限[2]</p></td>
<td><p>64</p></td>
<td><p>And, Xor, Rot,  Or</p></td>
<td></td>
<td><p>335</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong></strong></p></td>
<td><p>160</p></td>
<td><p>160<br />
</p></td>
<td><p>512</p></td>
<td><p>2<sup>64</sup> − 1</p></td>
<td><p>80</p></td>
<td><p>And, Xor, Rot,  Or</p></td>
<td></td>
<td><p>-</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong></strong></p></td>
<td><p>160</p></td>
<td><p>160<br />
</p></td>
<td><p>512</p></td>
<td><p>2<sup>64</sup> − 1</p></td>
<td><p>80</p></td>
<td></td>
<td><p>192</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong></strong></p></td>
<td><p><em>SHA-224</em><br />
<em>SHA-256</em></p></td>
<td><p>224<br />
256</p></td>
<td><p>256<br />
</p></td>
<td><p>512</p></td>
<td><p>2<sup>64</sup> − 1</p></td>
<td><p>64</p></td>
<td><p>And, Xor, Rot,  Or, Shr</p></td>
<td></td>
<td><p>139</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><em>SHA-384</em><br />
<em>SHA-512</em><br />
<em></em><br />
<em></em></p></td>
<td><p>384<br />
512<br />
224<br />
256</p></td>
<td><p>512<br />
</p></td>
<td><p>1024</p></td>
<td><p>2<sup>128</sup> − 1</p></td>
<td><p>80</p></td>
<td><p>And, Xor, Rot,  Or, Shr</p></td>
<td></td>
<td><p>154</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong></strong></p></td>
<td><p><em>SHA3-224</em><br />
<em>SHA3-256</em><br />
<em>SHA3-384</em><br />
<em>SHA3-512</em></p></td>
<td><p>224<br />
256<br />
384<br />
512</p></td>
<td><p>1600<br />
</p></td>
<td><p>1152<br />
1088<br />
832<br />
576</p></td>
<td><p>无限[3]</p></td>
<td><p>24[4]</p></td>
<td><p>And, Xor, Rot, Not</p></td>
<td></td>
<td><p>-</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><em>SHAKE128</em><br />
<em>SHAKE256</em></p></td>
<td><p><br />
</p></td>
<td><p>1344<br />
1088</p></td>
<td></td>
<td><p>-</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## SHA<sub>d</sub>

SHA<sub>d</sub>函數是一個簡單的相同SHA函數的重述：

SHA<sub>d</sub>-256(m)=SHA-256(SHA-256(m))。它會克服有關*延伸長度*攻擊的問題。

## 参考文献

### 引用

### 来源

  - Eli Biham, Rafi Chen, Near-Collisions of SHA-0, Cryptology ePrint Archive, Report 2004/146, 2004 (to appear CRYPTO 2004) [1](http://eprint.iacr.org/2004/146/)
  - Florent Chabaud, Antoine Joux: Differential Collisions in SHA-0. [CRYPTO](https://zh.wikipedia.org/wiki/CRYPTO "wikilink") 1998. pp. 56–71.
  - Henri Gilbert, Helena Handschuh: Security Analysis of SHA-256 and Sisters. Selected Areas in Cryptography 2003: pp. 175–193.

## 外部链接

  - [FIPS PUB 180-2](https://web.archive.org/web/20021212213605/http://csrc.nist.gov/encryption/tkhash.html)，*安全雜湊標準*
  - [RFC 3174](http://www.ietf.org/rfc/rfc3174.txt)，*美國安全雜湊演算法1（SHA1）*
  - [這個Javascript SHA-1計算機會展示計算過程中的中繼值](http://www.cs.eku.edu/faculty/styer/460/Encrypt/JS-SHA1.html)
  - [SHA-256在线格计算工具](https://passwordsgenerator.pro/sha256)

## 參見

  - [编码](https://zh.wikipedia.org/wiki/编码 "wikilink")
  - [密码学](../Page/密码学.md "wikilink")
  - [加密技术](https://zh.wikipedia.org/wiki/加密技术 "wikilink")
  - [演算法](https://zh.wikipedia.org/wiki/演算法 "wikilink")
  - [图灵机](../Page/图灵机.md "wikilink")
  - [图灵归约](https://zh.wikipedia.org/wiki/图灵归约 "wikilink")
  - [交互式证明系统](../Page/交互式证明系统.md "wikilink")
  - [隨機預言機](../Page/隨機預言機.md "wikilink")

[Category:密码散列函数](https://zh.wikipedia.org/wiki/Category:密码散列函数 "wikilink")

1.
2.
3.
4.