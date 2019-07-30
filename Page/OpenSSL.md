在-{zh-tw:[電腦網路](https://zh.wikipedia.org/wiki/電腦網路 "wikilink");zh-cn:[计算机网络](../Page/计算机网络.md "wikilink")}-上，**OpenSSL**是一個[開放原始碼的](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[軟體](https://zh.wikipedia.org/wiki/軟體 "wikilink")[函式庫](../Page/函式庫.md "wikilink")套件，應用程式可以使用這個套件來進行安全通訊，避免竊聽，同時確認另一端連線者的身份。這個套件廣泛被應用在網際網路的網頁伺服器上。

其主要[函式庫](../Page/函式庫.md "wikilink")是以[C語言所寫成](https://zh.wikipedia.org/wiki/C語言 "wikilink")，實作了基本的[加密功能](https://zh.wikipedia.org/wiki/加密 "wikilink")，實作了[SSL與TLS協定](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")。OpenSSL可以運行在[OpenVMS](https://zh.wikipedia.org/wiki/OpenVMS "wikilink")、 [Microsoft Windows以及絕大多數](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[類Unix作業系統上](https://zh.wikipedia.org/wiki/類Unix "wikilink")（包括[Solaris](../Page/Solaris.md "wikilink")，[Linux](../Page/Linux.md "wikilink")，[Mac OS X與各種版本的開放原始碼](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[BSD](../Page/BSD.md "wikilink")作業系統）。它也提供了一個移植版本，可以在[IBM i](https://zh.wikipedia.org/wiki/IBM_i "wikilink")（OS/400）上運作。

雖然此軟體是開放原始碼的，但其授權書條款與[GPL有衝突之處](https://zh.wikipedia.org/wiki/GPL "wikilink")，故GPL軟體使用OpenSSL時（如[Wget](../Page/Wget.md "wikilink")）必須對OpenSSL給予例外。

## 歷史

OpenSSL計劃在1998年開始，其目標是發明一套自由的加密工具，在網際網路上使用。OpenSSL以Eric Young以及Tim Hudson兩人開發的[SSLeay為基礎](https://zh.wikipedia.org/wiki/SSLeay "wikilink")，隨著兩人前往[RSA公司任職](https://zh.wikipedia.org/wiki/RSA "wikilink")，SSLeay在1998年12月停止開發。因此在1998年12月，社群另外分支出OpenSSL，繼續開發下去。

OpenSSL管理委員會目前由7人組成\[1\] 有13個開發人員\[2\]具有提交權限（其中許多人也是OpenSSL管理委員會的一部分）。只有兩名全職員工（研究員），其餘的是志願者。

該項目每年的預算不到100萬美元，主要依靠捐款。 TLS 1.3的開發由[Akamai贊助](https://zh.wikipedia.org/wiki/Akamai "wikilink")。\[3\]

## 主要版本发布

<table>
<caption>OpenSSL版本历史[4][5]</caption>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>发布时间</p></th>
<th><p>备注</p></th>
<th><p>最后一个更新</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>1998年12月23日</p></td>
<td><ul>
<li>OpenSSL项目的正式开启</li>
</ul></td>
<td><p>0.9.1c（1998年12月23日）</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>1999年3月22日</p></td>
<td><ul>
<li>取代0.9.1c</li>
</ul></td>
<td><p>0.9.2b（1999年4月6日）</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>1999年5月25日</p></td>
<td><ul>
<li>取代0.9.2b</li>
</ul></td>
<td><p>0.9.3a（1999年5月27日）</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>1999年8月9日</p></td>
<td><ul>
<li>取代0.9.3a</li>
</ul></td>
<td><p>0.9.4（1999年4月9日）</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2000年2月28日</p></td>
<td><ul>
<li>取代0.9.4</li>
</ul></td>
<td><p>0.9.5a（2000年4月1日）</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2000年9月24日</p></td>
<td><ul>
<li>取代0.9.5a</li>
</ul></td>
<td><p>0.9.6m（2004年3月17日）</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2002年12月31日</p></td>
<td><ul>
<li>取代0.9.6m</li>
</ul></td>
<td><p>0.9.7m（2007年2月23日）</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2005年7月5日</p></td>
<td><ul>
<li>取代0.9.7m</li>
</ul></td>
<td><p>0.9.8zh（2015年12月3日）</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2010年3月29日</p></td>
<td><ul>
<li>取代0.9.8n</li>
</ul></td>
<td><p>1.0.0t（2015年12月3日）</p></td>
</tr>
<tr class="even">
<td><p>[6]</p></td>
<td><p>2012年3月14日</p></td>
<td><ul>
<li>取代1.0.0</li>
<li>维护至2016年12月31日</li>
<li>支持RFC 6520 TLS/DTLS心跳</li>
<li>支持<a href="../Page/流控制传输协议.md" title="wikilink">SCTP</a></li>
<li>RFC 5705 TLS key material exporter</li>
<li>RFC 5764 DTLS-SRTP协商</li>
<li>Next Protocol Negotiation</li>
<li>PSS signatures in certificates, requests and <a href="https://zh.wikipedia.org/wiki/证书吊销列表" title="wikilink">证书吊销列表</a></li>
<li>Support for password based recipient info for CMS</li>
<li>支持TLS v1.2以及TLS v1.1</li>
<li>Preliminary FIPS capability for unvalidated 2.0 FIPS module</li>
<li>支持（SRP）</li>
</ul></td>
<td><p>1.0.1u（2016年9月22日）</p></td>
</tr>
<tr class="odd">
<td><p>[7]</p></td>
<td><p>2015年1月22日</p></td>
<td><ul>
<li>取代1.0.1</li>
<li>维护至2019年12月31日（长期维护）</li>
<li>Suite B支持TLS 1.2和DTLS 1.2</li>
<li>支持DTLS 1.2</li>
<li>TLS自动选择<a href="../Page/椭圆曲线.md" title="wikilink">椭圆曲线</a>（EC）</li>
<li>用於設置TLS支持的簽名算法和曲線的API</li>
<li>SSL_CONF配置API</li>
<li>支持TLS </li>
<li>支持<a href="../Page/应用层协议协商.md" title="wikilink">应用层协议协商</a></li>
<li>CMS支持、、<a href="https://zh.wikipedia.org/wiki/ECDH" title="wikilink">ECDH及X</a>9.42 DH</li>
</ul></td>
<td><p>1.0.2q（）</p></td>
</tr>
<tr class="even">
<td><p>[8]</p></td>
<td><p>2016年8月25日</p></td>
<td><ul>
<li>取代1.0.2h</li>
<li>預計維護到2019年9月[9]</li>
<li>支持<a href="https://zh.wikipedia.org/wiki/BLAKE#BLAKE2" title="wikilink">BLAKE</a> (RFC 7693)</li>
<li>支持<a href="https://zh.wikipedia.org/wiki/ChaCha20" title="wikilink">ChaCha20</a>-<a href="../Page/Poly1305.md" title="wikilink">Poly1305</a>（RFC 7539）</li>
<li>支持<a href="https://zh.wikipedia.org/wiki/X25519" title="wikilink">X25519</a>（RFC 7748）</li>
<li>支持和<a href="../Page/证书透明度.md" title="wikilink">证书透明度</a></li>
<li>支持扩密碼套件</li>
<li>支持扩展主密钥</li>
<li>移除SSLv2</li>
<li>移除对Kerberos密码包的支持</li>
<li>将RC4和3DES從libssl从DEFAULT密碼套件中移除</li>
<li>将DSS、SEED、IDEA、CAMELLIA以及AES-CCM从DEFAULT密碼套件中移除</li>
<li>将40和56位密码从libssl中移除</li>
</ul></td>
<td><p>1.1.0j（）</p></td>
</tr>
<tr class="odd">
<td><p>[10]</p></td>
<td></td>
<td><ul>
<li>將持續維護至少五年（預計到2023年9月）[11]</li>
<li>支持<a href="https://zh.wikipedia.org/wiki/傳輸層安全性協定#TLS_1.3" title="wikilink">TLS1.3</a>[12][13]</li>
<li>支持<a href="../Page/SHA-3.md" title="wikilink">SHA-3</a></li>
<li>支持以及（RFC 7748）</li>
<li>支持</li>
<li>支持</li>
<li>支持多素數<a href="../Page/RSA加密演算法.md" title="wikilink">RSA</a>（RFC 8017）</li>
<li>支持<a href="../Page/SM2.md" title="wikilink">SM2</a>、<a href="../Page/SM3.md" title="wikilink">SM3</a>以及<a href="../Page/SM4.md" title="wikilink">SM4</a></li>
<li>移除<a href="../Page/心脏出血漏洞.md" title="wikilink">Heartbleed</a></li>
<li>移除对QNX支持的支持</li>
</ul></td>
<td><p>1.1.1b（）</p></td>
</tr>
<tr class="even">
<td><p><small></small></p></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 算法

OpenSSL支持许多不同的加密算法：

  - [加密](https://zh.wikipedia.org/wiki/加密 "wikilink"):
    [AES](../Page/高级加密标准.md "wikilink")、[Blowfish](https://zh.wikipedia.org/wiki/Blowfish_\(密码学\) "wikilink")、[Camellia](../Page/Camellia.md "wikilink")、[Chacha20](https://zh.wikipedia.org/wiki/Salsa20#ChaCha20 "wikilink")、[Poly1305](../Page/Poly1305.md "wikilink")、、、[DES](../Page/資料加密標準.md "wikilink")、[IDEA](../Page/國際資料加密演算法.md "wikilink")、、[RC4](../Page/RC4.md "wikilink")、[RC5](../Page/RC5.md "wikilink")、[TDES](https://zh.wikipedia.org/wiki/三重資料加密演算法 "wikilink")、\[14\]、[SM4](../Page/SM4.md "wikilink")
  - [密碼雜湊函數](https://zh.wikipedia.org/wiki/密碼雜湊函數 "wikilink"):
    [MD5](../Page/MD5.md "wikilink")、[MD4](https://zh.wikipedia.org/wiki/MD4 "wikilink")、、[SHA-1](../Page/SHA-1.md "wikilink")、[SHA-2](../Page/SHA-2.md "wikilink")、[SHA-3](../Page/SHA-3.md "wikilink")、[RIPEMD-160](https://zh.wikipedia.org/wiki/RIPEMD-160 "wikilink")、、\[15\]、[BLAKE2](https://zh.wikipedia.org/wiki/BLAKE#BLAKE2 "wikilink")、\[16\]、[SM3](../Page/SM3.md "wikilink")
  - [公开密钥加密](../Page/公开密钥加密.md "wikilink"):
    [RSA](../Page/RSA加密演算法.md "wikilink")、、[迪菲-赫爾曼密鑰交換](../Page/迪菲-赫爾曼密鑰交換.md "wikilink")、[椭圆曲线](../Page/椭圆曲线密码学.md "wikilink")、[X25519](../Page/Curve25519.md "wikilink")、、、、[GOST R 34.10-2001](https://zh.wikipedia.org/wiki/GOST_R_34.10-2001 "wikilink")\[17\]、[SM2](../Page/SM2.md "wikilink")

（从1.0版开始，[橢圓曲線迪菲-赫爾曼金鑰交換](../Page/橢圓曲線迪菲-赫爾曼金鑰交換.md "wikilink")用于支持[前向安全性](https://zh.wikipedia.org/wiki/前向安全性 "wikilink")）\[18\])

## 心脏出血漏洞

OpenSSL 1.0.1版本（不含1.0.1g）含有一个严重漏洞，可允许攻击者读取服务器的内存信息。该漏洞影响三分之二的活跃网站\[19\]。

## 分支

### Agglomerated SSL

在2009年，OpenSSL API受挫之后，当时的OpenBSD开发人员Marco Peereboom创建了分支Agglomerated SSL（assl），它重新使用OpenSSL API，但提供了更简单的外部接口。\[20\]

### LibreSSL

2014年4月的[心脏出血漏洞](../Page/心脏出血漏洞.md "wikilink")事件之后，[OpenBSD](../Page/OpenBSD.md "wikilink")项目成员以OpenSSL 1.0.1g作为分支，创建一个名为[LibreSSL](../Page/LibreSSL.md "wikilink")的项目。\[21\]在缩减OpenSSL的代码库的第一周，将超过90,000行的[C语言代码从分支中删除](https://zh.wikipedia.org/wiki/C语言 "wikilink")。\[22\]

### BoringSSL

2014年6月，[Google](../Page/Google.md "wikilink")发布了自己的OpenSSL分支BoringSSL\[23\]，计划与OpenSSL和LibreSSL的开发者合作。\[24\]\[25\]\[26\]

### GmSSL

支持SM2/SM3/SM4/SM9/ZUC等[商用密码](../Page/商用密码.md "wikilink")，主要使用[SM2](../Page/SM2.md "wikilink")替代[RSA](https://zh.wikipedia.org/wiki/RSA "wikilink")/[Diffie-Hellman](https://zh.wikipedia.org/wiki/Diffie-Hellman "wikilink")/[ECDSA](https://zh.wikipedia.org/wiki/ECDSA "wikilink")/[ECDH](https://zh.wikipedia.org/wiki/ECDH "wikilink")，[SM3](../Page/SM3.md "wikilink")替代[MD5](../Page/MD5.md "wikilink")/[SHA-1](../Page/SHA-1.md "wikilink")/[SHA-256](https://zh.wikipedia.org/wiki/SHA-256 "wikilink")，[SM4](../Page/SM4.md "wikilink")替代[DES](https://zh.wikipedia.org/wiki/DES "wikilink")/[AES](https://zh.wikipedia.org/wiki/AES "wikilink")，[SM9](../Page/SM9.md "wikilink")替代[PKI](https://zh.wikipedia.org/wiki/PKI "wikilink")/[CA体系](https://zh.wikipedia.org/wiki/CA "wikilink")，所有代码在[GitHub](../Page/GitHub.md "wikilink")上开源\[27\]，并由[北京大学](../Page/北京大学.md "wikilink")信息安全实验室开发和维护\[28\]。此项目获得2015年度中国Linux软件大赛二等奖（一等奖空缺）\[29\]。

## 参见

  - [加密](https://zh.wikipedia.org/wiki/加密 "wikilink")
  - [OpenSSH](../Page/OpenSSH.md "wikilink")

## 参考

## 外部連結

  - [OpenSSL官方網站](https://www.openssl.org/)
  - [SSLeay文件庫](https://web.archive.org/web/20060115145739/http://www.columbia.edu/~ariel/ssleay/)
  - [OpenSSL License vs GPL](http://www.gnome.org/~markmc/openssl-and-the-gpl.html)
  - [wget's readme file](https://web.archive.org/web/20070304090407/http://svn.dotsrc.org/repo/wget/trunk/README)，including the GPL with exception
  - [mICQ COPYING file](https://web.archive.org/web/20060924233706/http://www.micq.org/source/micq-cvs-stable/COPYING)，citing the GPL and including the exception
  - [OpenSSL FAQ entry on interaction between the OpenSSL and GNU licenses](https://www.openssl.org/support/faq.html#LEGAL2)

[Category:加密软件](https://zh.wikipedia.org/wiki/Category:加密软件 "wikilink") [Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink") [Category:自由安全软件](https://zh.wikipedia.org/wiki/Category:自由安全软件 "wikilink")

1.  ，

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

14.

15.
16.

17.
18.

19.

20.

21.

22.

23. <https://boringssl.googlesource.com/boringssl/> BoringSSL

24.

25.

26. <https://nakedsecurity.sophos.com/2014/06/24/boringssl-wants-kill-the-excitement-that-led-to-heartbleed/>

27.

28.

29.