[安全传输层协议](https://zh.wikipedia.org/wiki/Transport_Layer_Security "wikilink")
(TLS) 保障网络间的通信安全。 本文比较几种最常用的TLS应用
[软件库](https://zh.wikipedia.org/wiki/software_library "wikilink")。市面上存在许多种
[免费](https://zh.wikipedia.org/wiki/free_software "wikilink") and
[开源](https://zh.wikipedia.org/wiki/open_source "wikilink") TLS应用软件。

所有类目的比较均使用下列概述部分中列出软件的稳定版本。该比较仅限于与TLS协议直接相关的功能。

## 概述

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p>开发商</p></th>
<th><p>开源</p></th>
<th><p>软件证书</p></th>
<th><p>版权拥有</p></th>
<th><p>编辑语言</p></th>
<th><p>最新版本，日期</p></th>
<th><p>源于</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS项目</a></p></td>
<td><p>是</p></td>
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Free_Software_Foundation" title="wikilink">自由软件基金会</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/C语言" title="wikilink">C(编程语言)</a></p></td>
<td></td>
<td><p>欧洲 (希腊和瑞典)</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL 项目</a></p></td>
<td><p>是</p></td>
<td></td>
<td><p>Eric Young, Tim Hudson, Sun, OpenSSL 项目, 及其他</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/C_(programming_language)" title="wikilink">C</a>, <a href="https://zh.wikipedia.org/wiki/Assembly_language" title="wikilink">汇编语言</a></p></td>
<td></td>
<td><p>澳大利亚/欧洲</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a> (曾名为 CyaSSL)</p></td>
<td><p>wolfSSL[1]</p></td>
<td><p>是</p></td>
<td><p>and commercial license</p></td>
<td><p>wolfSSL 公司.[2]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/C_(programming_language)" title="wikilink">C</a></p></td>
<td></td>
<td><p>美国</p></td>
</tr>
<tr class="even">
<td></td>
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

## 协议支持

TLS协议存在几种版本。 SSL 2.0是一个被弃用的\[3\] 协议版本，具有明显的缺陷。 SSL 3.0（1996）和TLS
1.0（1999）是具有两个CBC-填充弱点的版本——在2001年由Serge Vaudenay解析.\[4\] 。 TLS
1.1（2006）通过将CBC块密码切换到随机初始化矢量（IV）解决了其中一个问题，RFC7366\[5\]强调了
更严重的mac-pad-encrypt使用问题而不是使pad-mac-encrypt更安全的问题。

在2011年底，一种用于SSL 3.0和TLS 1.0的解决方法，基本等同于TLS 1.1的随机的IV被很多应用软件广泛采用\[6\]
。所以从安全角度来看，所有现有TLS
1.0，1.1和1.2版本在2030年前均在基本协议中提供相同的强度协议并适用于128位，据
NIST SP800-57。在2014年，SSL
3.0的POODLE漏洞被发现，其利用在CBCd的已知漏洞，以及浏览器中不安全的回退协商。\[7\]

TLS 1.2（2008）是最新发布的基本协议，引入了一种用于识别数字签名的散​​列方法。虽然在SSL 3.0保守选择（rsa，sha1 +
md5）上允许将来使用更强大的散列函数进行数字签名（rsa，sha256 / sha384 / sha512），但TLS
1.2协议不经意间变化并大大削弱了默认数字签名并提供（rsa，sha1）甚至（rsa，md5）。\[8\]

数据报传输层安全性（DTLS或数据报TLS）1.0是针对面向数据包的传输层的TLS
1.1修改，其中必须容忍数据包丢失和数据包重新排序。基于TLS
1.2的修订版DTLS 1.2于2012年1月发布\[9\]

在SSL 2.0和SSL 3.0中存在已知的漏洞。除了可预测的IV（存在简单的解决方法）之外，所有当前已知的漏洞都会影响所有版本的TLS 1.0
/ 1.1 / 1.2。\[10\]

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Transport_Layer_Security" title="wikilink">SSL 2.0</a> (不安全)[11]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Transport_Layer_Security" title="wikilink">SSL 3.0</a> (不安全)[12]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Transport_Layer_Security" title="wikilink">TLS 1.0</a>[13]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Transport_Layer_Security" title="wikilink">TLS 1.1</a>[14]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Transport_Layer_Security" title="wikilink">TLS 1.2</a>[15]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Transport_Layer_Security" title="wikilink">TLS 1.3</a><br />
<small>(Draft)</small>[16][17]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Datagram_Transport_Layer_Security" title="wikilink">DTLS 1.0</a>[18]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Datagram_Transport_Layer_Security" title="wikilink">DTLS 1.2</a>[19]</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
<td><p>[20]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td><p>[21]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
<td><p>[22]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
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

\[23\]

## NSA Suite B 密码学

[NSA Suite B
密码学](https://zh.wikipedia.org/wiki/NSA_Suite_B_Cryptography "wikilink")
(RFC 6460) 的必须部分:

  - [高级加密标准](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")
    (AES)，
    密钥大小为128和256位。对于业务流量，AES应与低带宽流量的计数器模式（CTR）或高带宽流量的伽罗瓦/计数器模式（GCM）操作模式一起使用（请参阅分块密码模式操作）
    - 对称加密
  - 椭圆曲线数字签名算法（ECDSA） - 数字签名
  - 椭圆曲线 Diffie-Hellman（ECDH） - 密钥协议
  - [安全散列算法2](../Page/SHA-2.md "wikilink") (SHA-256 和 SHA-384) —
    [消息摘要](https://zh.wikipedia.org/wiki/message_digest "wikilink")

根据CNSSP-15，256位椭圆曲线（FIPS 186-2中），SHA-256和AES
128位密钥足以保护机密信息达到Secret级别，而384位椭圆曲线（在FIPS
186-2中指定），SHA-384和带有256位密钥的AES是保护最高机密信息所必需的。

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Transport_Layer_Security" title="wikilink">TLS 1.2</a> <a href="https://zh.wikipedia.org/wiki/NSA_Suite_B_Cryptography" title="wikilink">Suite B</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td><p>[24]</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 证书

请注意，某些认证已受到实际参与研发人的严重负面批评。\[25\]

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/FIPS_140-1" title="wikilink">FIPS 140-1</a>, <a href="https://zh.wikipedia.org/wiki/FIPS_140-2" title="wikilink">FIPS 140-2</a>[26]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Common_Criteria" title="wikilink">通用标准</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Embedded_FIPS_Solution" title="wikilink">Embedded FIPS Solution</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>第一层面</p></td>
<td><p>Level 2</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a>[27]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a>[28]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a>[29]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 密钥交换算法（仅限于证书）

本节列出了在不同应用软件中中可用的证书验证功能。

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/RSA_(cryptosystem)" title="wikilink">RSA</a>[30]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/RSA_(cryptosystem)" title="wikilink">RSA</a>-EXPORT (不安全)[31]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Diffie–Hellman_key_exchange" title="wikilink">DHE</a>-<a href="https://zh.wikipedia.org/wiki/RSA_(cryptosystem)" title="wikilink">RSA</a> (<a href="https://zh.wikipedia.org/wiki/forward_secrecy" title="wikilink">forward secrecy</a>)[32]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Diffie–Hellman_key_exchange" title="wikilink">DHE</a>-<a href="https://zh.wikipedia.org/wiki/Digital_Signature_Algorithm" title="wikilink">DSS</a> (<a href="https://zh.wikipedia.org/wiki/forward_secrecy" title="wikilink">forward secrecy</a>)[33]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Elliptic_curve_Diffie–Hellman" title="wikilink">ECDH</a>-<a href="https://zh.wikipedia.org/wiki/Elliptic_Curve_DSA" title="wikilink">ECDSA</a>[34]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Elliptic_curve_Diffie–Hellman" title="wikilink">ECDHE</a>-<a href="https://zh.wikipedia.org/wiki/Elliptic_Curve_DSA" title="wikilink">ECDSA</a> (<a href="https://zh.wikipedia.org/wiki/forward_secrecy" title="wikilink">forward secrecy</a>)[35]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Elliptic_curve_Diffie–Hellman" title="wikilink">ECDH</a>-<a href="https://zh.wikipedia.org/wiki/RSA_(cryptosystem)" title="wikilink">RSA</a>[36]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Elliptic_curve_Diffie–Hellman" title="wikilink">ECDHE</a>-<a href="https://zh.wikipedia.org/wiki/RSA_(cryptosystem)" title="wikilink">RSA</a> (<a href="https://zh.wikipedia.org/wiki/forward_secrecy" title="wikilink">forward secrecy</a>)[37]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/GOST" title="wikilink">GOST</a> R 34.10-94, 34.10-2001[38]</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
<td></td>
<td></td>
<td><p>[39]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td></td>
<td><p>[40]</p></td>
<td></td>
<td><p>[41]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
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

## 密钥交换算法（备选密钥交换）

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Secure_Remote_Password_protocol" title="wikilink">SRP</a>[42]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Secure_Remote_Password_protocol" title="wikilink">SRP</a>-<a href="https://zh.wikipedia.org/wiki/Digital_Signature_Algorithm" title="wikilink">DSS</a>[43]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Secure_Remote_Password_protocol" title="wikilink">SRP</a>-<a href="https://zh.wikipedia.org/wiki/RSA_(cryptosystem)" title="wikilink">RSA</a>[44]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Pre-shared_key" title="wikilink">PSK</a>-<a href="https://zh.wikipedia.org/wiki/RSA_(cryptosystem)" title="wikilink">RSA</a>[45]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Pre-shared_key" title="wikilink">PSK</a>[46]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Diffie–Hellman_key_exchange" title="wikilink">DHE</a>-<a href="https://zh.wikipedia.org/wiki/Pre-shared_key" title="wikilink">PSK</a> (<a href="https://zh.wikipedia.org/wiki/forward_secrecy" title="wikilink">前向保密</a>)[47]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Elliptic_curve_Diffie–Hellman" title="wikilink">ECDHE</a>-<a href="https://zh.wikipedia.org/wiki/Pre-shared_key" title="wikilink">PSK</a> (<a href="https://zh.wikipedia.org/wiki/forward_secrecy" title="wikilink">前向保密</a>)[48]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Kerberos_(protocol)" title="wikilink">KRB5</a>[49]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Diffie–Hellman_key_exchange" title="wikilink">DH</a>-ANON[50] (不安全)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Elliptic_curve_Diffie–Hellman" title="wikilink">ECDH</a>-ANON[51] (不安全)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>[52]</p></td>
<td><p>[53]</p></td>
<td><p>[54]</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>[55]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
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

## 证书验证算法

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p>应用程序定义</p></th>
<th><p>PKIX path validation[56]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Revocation_list" title="wikilink">CRL</a>[57]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Online_Certificate_Status_Protocol" title="wikilink">OCSP</a>[58]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/DNS-based_Authentication_of_Named_Entities" title="wikilink">DANE</a> (DNSSEC)[59]</p></th>
<th><p>首用信任 (TOFU)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
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

## 加密算法

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Block_cipher" title="wikilink">分组密码</a> 的 <a href="https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation" title="wikilink">操作模式</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Stream_cipher" title="wikilink">流密码</a></p></th>
<th><p>None</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard" title="wikilink">AES</a> <a href="https://zh.wikipedia.org/wiki/Galois/Counter_Mode" title="wikilink">GCM</a><br />
[60]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard" title="wikilink">AES</a> <a href="https://zh.wikipedia.org/wiki/CCM_mode" title="wikilink">CCM</a><br />
[61]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard" title="wikilink">AES</a> <a href="https://zh.wikipedia.org/wiki/Cipher_block_chaining" title="wikilink">CBC</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Camellia_(cipher)" title="wikilink">Camellia</a> <a href="https://zh.wikipedia.org/wiki/Galois/Counter_Mode" title="wikilink">GCM</a><br />
[62]</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
<td><p>[63]</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td><p>[64]</p></td>
<td><p>[65]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 废弃算法

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Block_cipher" title="wikilink">分组密码</a> 的 <a href="https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation" title="wikilink">操作模式</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Stream_cipher" title="wikilink">流密码</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/International_Data_Encryption_Algorithm" title="wikilink">IDEA</a> <a href="https://zh.wikipedia.org/wiki/Cipher_block_chaining" title="wikilink">CBC</a><br />
(不安全)[66]<a href="https://sweet32.info">https://sweet32.info</a></ref></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Data_Encryption_Standard" title="wikilink">DES</a> <a href="https://zh.wikipedia.org/wiki/Cipher_block_chaining" title="wikilink">CBC</a><br />
(不安全)<br />
[67]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Data_Encryption_Standard" title="wikilink">DES</a>-40 <a href="https://zh.wikipedia.org/wiki/Cipher_block_chaining" title="wikilink">CBC</a><br />
(EXPORT, 不安全)<br />
[68]</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td><p>[69]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td><p>[70]</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

;

## 支持的椭圆曲线

<table>
<thead>
<tr class="header">
<th><p>应用</p></th>
<th><p>sect163k1<br />
<br />
(1)[71]</p></th>
<th><p>sect163r1<br />
(2)[72]</p></th>
<th><p>sect163r2<br />
<br />
(3)[73]</p></th>
<th><p>sect193r1<br />
(4)[74]</p></th>
<th><p>sect193r2<br />
(5)[75]</p></th>
<th><p>sect233k1<br />
<br />
(6)[76]</p></th>
<th><p>sect233r1<br />
<br />
(7)[77]</p></th>
<th><p>sect239k1<br />
(8)[78]</p></th>
<th><p>sect283k1<br />
<br />
(9)[79]</p></th>
<th><p>sect283r1<br />
<br />
(10)[80]</p></th>
<th><p>sect409k1<br />
<br />
(11)[81]</p></th>
<th><p>sect409r1<br />
<br />
(12)[82]</p></th>
<th><p>sect571k1<br />
<br />
(13)[83]</p></th>
<th><p>sect571r1<br />
<br />
(14)[84]</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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

<table>
<thead>
<tr class="header">
<th><p>Implementation</p></th>
<th><p>secp160k1<br />
(15)[85]</p></th>
<th><p>secp160r1<br />
(16)[86]</p></th>
<th><p>secp160r2<br />
(17)[87]</p></th>
<th><p>secp192k1<br />
(18)[88]</p></th>
<th><p>secp192r1<br />
prime192v1<br />
<br />
(19)[89]</p></th>
<th><p>secp224k1<br />
(20)[90]</p></th>
<th><p>secp224r1<br />
<br />
(21)[91]</p></th>
<th><p>secp256k1<br />
(22)[92]</p></th>
<th><p>secp256r1<br />
prime256v1<br />
<br />
(23)[93]</p></th>
<th><p>secp384r1<br />
<br />
(24)[94]</p></th>
<th><p>secp521r1<br />
<br />
(25)[95]</p></th>
<th><p>arbitrary prime curves<br />
(0xFF01)[96][97]</p></th>
<th><p>arbitrary char2 curves<br />
(0xFF02)[98][99]</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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

<table>
<thead>
<tr class="header">
<th><p>应用</p></th>
<th><p>brainpoolP256r1<br />
(26)[100]</p></th>
<th><p>brainpoolP384r1<br />
(27)[101]</p></th>
<th><p>brainpoolP512r1<br />
(28)[102]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/X25519" title="wikilink">X25519</a><br />
[103]</p></th>
<th><p>Curve448<br />
<br />
[104]</p></th>
<th><p>M221<br />
Curve2213<br />
[105]</p></th>
<th><p>E222<br />
[106]</p></th>
<th><p>Curve1174<br />
[107]</p></th>
<th><p>E382<br />
[108]</p></th>
<th><p>M383<br />
[109]</p></th>
<th><p>Curve383187<br />
[110]</p></th>
<th><p>Curve41417<br />
Curve3617<br />
[111]</p></th>
<th><p>M511<br />
Curve511187<br />
[112]</p></th>
<th><p>E521<br />
[113]</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
<td></td>
<td></td>
<td><p>[114]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td><p>[115]</p></td>
<td><p>[116]</p></td>
<td><p>[117]</p></td>
<td><p><ref name="openssl-1.1.0x-changelog">{{cite web</p></td>
<td><p>url = <a href="https://www.openssl.org/news/cl110.txt">https://www.openssl.org/news/cl110.txt</a></p></td>
<td><p>title = OpenSSL 1.1.0x Release Notes</p></td>
<td><p>date = 25 August 2016</p></td>
<td><p>access-date = 18 May 2018 }}</ref><ref name="openssl-x25519-github-tracker">{{cite web</p></td>
<td><p>url = <a href="https://github.com/openssl/openssl/issues/487">https://github.com/openssl/openssl/issues/487</a></p></td>
<td><p>title = OpenSSL  GitHub Issue #487 Tracker</p></td>
<td><p>date = 2 December 2015</p></td>
<td><p>access-date = 18 May 2018 }}</ref></p></td>
<td><p><ref name="openssl-1.1.1x-changelog">{{cite web</p></td>
<td><p>url = <a href="https://www.openssl.org/news/cl111.txt">https://www.openssl.org/news/cl111.txt</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td><p>[118]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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

## 数据完整性

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/HMAC" title="wikilink">HMAC</a>-<a href="../Page/MD5.md" title="wikilink">MD5</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/HMAC" title="wikilink">HMAC</a>-<a href="../Page/SHA-1.md" title="wikilink">SHA1</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/HMAC" title="wikilink">HMAC</a>-<a href="../Page/SHA-2.md" title="wikilink">SHA256/384</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Authenticated_encryption" title="wikilink">AEAD</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/GOST_28147-89" title="wikilink">GOST 28147-89 IMIT</a>[119]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/GOST_(hash_function)" title="wikilink">GOST R 34.11-94</a>[120]</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>[121]</p></td>
<td><p>[122]</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
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

## 压缩

请注意，[CRIME
安全漏洞](https://zh.wikipedia.org/wiki/CRIME_\(security_exploit\) "wikilink")
利用了TLS压缩的优势，因此传统应用不会在TLS层启用压缩。 [HTTP
压缩是不相关的且不受此漏洞攻击的影响](https://zh.wikipedia.org/wiki/HTTP_compression "wikilink")，但会被[BREACH相关的攻击利用](https://zh.wikipedia.org/wiki/BREACH_\(security_exploit\) "wikilink")。

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p>DEFLATE[123]<br />
(不安全)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 扩展

在本节中列出了每个应用支持的扩展。请注意，安全重新协商扩展对于HTTPS客户端安全至关重要。不执行TLS协议的客户端很容易受到攻击，无论客户端是否实施TLS重新协商。

<table>
<thead>
<tr class="header">
<th><p>Implementation</p></th>
<th><p>Secure Renegotiation<br />
[124]</p></th>
<th><p>Server Name Indication<br />
[125]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Application-Layer_Protocol_Negotiation" title="wikilink">ALPN</a><br />
[126]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/OCSP_stapling" title="wikilink">Certificate Status Request</a><br />
[127]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/OpenPGP" title="wikilink">OpenPGP</a><br />
[128]</p></th>
<th><p>Supplemental Data<br />
[129]</p></th>
<th><p>Session Ticket<br />
[130]</p></th>
<th><p>Keying Material Exporter<br />
[131]</p></th>
<th><p>Maximum Fragment Length<br />
[132]</p></th>
<th><p>Truncated <a href="https://zh.wikipedia.org/wiki/HMAC" title="wikilink">HMAC</a><br />
[133]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Encrypt-then-MAC" title="wikilink">Encrypt-then-MAC</a><br />
[134]</p></th>
<th><p>TLS Fallback SCSV<br />
[135]</p></th>
<th><p>Extended Master Secret<br />
[136]</p></th>
<th><p>ClientHello Padding<br />
[137]</p></th>
<th><p>Raw Public Keys<br />
[138]</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
<td><p>[139]</p></td>
<td></td>
<td><p>[140]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>[141]</p></td>
<td><p>[142]</p></td>
<td><p>[143]</p></td>
<td><p>[144]</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td></td>
<td></td>
<td><p>[145]</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
<td></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td><p>[146]</p></td>
<td><p>[147]</p></td>
<td><p>[148]</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
<td></td>
<td><p>[149]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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

## 辅助加密

本节列出了已知的利用CPU指令集优化加密，或利用系统特定允许访问底层加密硬件加速或分离数据的设备。

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/PKCS11" title="wikilink">PKCS #11 device</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/AES_instruction_set" title="wikilink">Intel AES-NI</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/VIA_PadLock" title="wikilink">VIA PadLock</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/ARM_architecture#ARMv8-A" title="wikilink">ARMv8-A</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Intel_SGX" title="wikilink">Intel SGX</a></p></th>
<th><p><a href="http://www.intel.com/content/www/us/en/embedded/technology/quickassist/overview.html">Intel QAT</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
<td></td>
<td></td>
<td><p>[150]</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td><p>[151]</p></td>
<td></td>
<td></td>
<td><p>[152]</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>[153]</p></td>
</tr>
<tr class="even">
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

## 系统特定的后端

本节列出了已知利用可用操作系统特定后端或另一个提供的后端的应用。

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p><a href="https://web.archive.org/web/20120320070655/http://home.gna.org/cryptodev-linux/">/dev/crypto</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Cryptographic_Service_Provider" title="wikilink">Windows CSP</a></p></th>
<th><p>一般加密<a href="https://developer.apple.com/library/mac/#documentation/Darwin/Reference/ManPages/man3/Common%20Crypto.3cc.html">CommonCrypto</a></p></th>
<th><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 加密模块/令牌支持

<table>
<thead>
<tr class="header">
<th><p>Implementation</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Trusted_Platform_Module" title="wikilink">TPM</a> support</p></th>
<th><p>Hardware token support</p></th>
<th><p>Objects identified via</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td></td>
<td></td>
<td><p>RFC7512 PKCS #11 URLs[154]</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td></td>
<td><p>[155]</p></td>
<td><p>RFC7512 PKCS #11 URLs[156]</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 代码属性

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p>属性</p></th>
<th><p>可选属性</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td><p>libc<br />
nettle<br />
gmp</p></td>
<td><p>zlib (compression)<br />
p11-kit (PKCS #11)<br />
trousers (TPM)</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td><p>libc</p></td>
<td><p>zlib (压缩)<br />
</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td><p>None</p></td>
<td><p>libc, zlib (压缩)</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 发展环境

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p>Namespace</p></th>
<th><p>建设工具</p></th>
<th><p>API 手册</p></th>
<th><p>加密后端</p></th>
<th><p>OpenSSL 兼容层</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td><p>gnutls_*</p></td>
<td><p>Autoconf, automake, libtool</p></td>
<td><p>Manual and API reference (HTML, PDF)</p></td>
<td><p>External, <a href="https://zh.wikipedia.org/wiki/libnettle" title="wikilink">libnettle</a></p></td>
<td><p>(部分)</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td><p>SSL_*<br />
SHA1_*<br />
MD5_*<br />
EVP_*<br />
...</p></td>
<td><p>Makefile</p></td>
<td><p>Man pages</p></td>
<td><p>Included (monolithic)</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td><p>CyaSSL_*<br />
SSL_*</p></td>
<td><p>Autoconf, automake, libtool, MSVC project workspaces, XCode projects, CodeWarrior projects, MPLAB X projects, Keil, IAR, Clang, GCC</p></td>
<td><p>Manual and API Reference (HTML, PDF)</p></td>
<td><p>Included (monolithic)</p></td>
<td><p>(大约 10% of API)</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 移植问题

<table>
<thead>
<tr class="header">
<th><p>应用软件</p></th>
<th><p>平台要求奥球</p></th>
<th><p>网络要求</p></th>
<th><p>线程安全</p></th>
<th><p>随机速度</p></th>
<th><p>能够交叉编译</p></th>
<th><p>No OS (bare metal)</p></th>
<th><p>可支持的操作系统</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/GnuTLS.md" title="wikilink">GnuTLS</a></p></td>
<td><p>C89</p></td>
<td><p>POSIX send() and recv(). API 支持所找的替代品.</p></td>
<td></td>
<td><p>取决于平台</p></td>
<td></td>
<td></td>
<td><p>基本任何 POSIX 平台 or Windows, 一般已测试的平台包含 GNU/Linux, Win32/64, OS X, Solaris, OpenWRT, FreeBSD, NetBSD, OpenBSD.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/OpenSSL.md" title="wikilink">OpenSSL</a></p></td>
<td><p>C89?</p></td>
<td><p>?</p></td>
<td></td>
<td><p>通过原始API设置</p></td>
<td></td>
<td></td>
<td><p>Unix, DOS (with djgpp), Windows, OpenVMS, MacOS, NetWare, eCos</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/wolfSSL" title="wikilink">wolfSSL</a></p></td>
<td><p>C89</p></td>
<td><p>POSIX send() and recv(). API 支持所找的替代品.</p></td>
<td></td>
<td><p>通过 wolfCrypt设置随机速度</p></td>
<td></td>
<td></td>
<td><p>Win32/64, Linux, OS X, Solaris, ThreadX, VxWorks, FreeBSD, NetBSD, OpenBSD, embedded Linux, Haiku, OpenWRT, iPhone (iOS), Android, Nintendo Wii and Gamecube through DevKitPro, QNX, MontaVista, OpenCL, NonStop, TRON/ITRON/µITRON, Micrium's µC OS, FreeRTOS, SafeRTOS, Freescale MQX, Nucleus, TinyOS, HP/UX, Keil RTX, TI-RTOS</p></td>
</tr>
<tr class="even">
<td></td>
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

## 其他

  - [SCTP](https://zh.wikipedia.org/wiki/SCTP "wikilink") — 含DTLS 支持
  - [DCCP](https://zh.wikipedia.org/wiki/DCCP "wikilink") — 含 DTLS 支持
  - [SRTP](https://zh.wikipedia.org/wiki/Secure_Real-time_Transport_Protocol "wikilink")
    — 含 DTLS 支持 (DTLS-SRTP) 安全实时传输控制协议 (SRTCP)

## 参考文献

[Category:Cryptographic_software](https://zh.wikipedia.org/wiki/Category:Cryptographic_software "wikilink")
[Category:Security_software_comparisons](https://zh.wikipedia.org/wiki/Category:Security_software_comparisons "wikilink")
[Category:Transport_Layer_Security_implementation](https://zh.wikipedia.org/wiki/Category:Transport_Layer_Security_implementation "wikilink")

1.

2.

3.  \[rfc:6176 RFC6176: Prohibiting Secure Sockets Layer (SSL) Version
    2.0\]

4.

5.  \[rfc:7366 RFC7366: Encrypt-then-MAC for Transport Layer Security
    (TLS) and Datagram Transport Layer Security\]

6.

7.

8.  [TLSv1.2's Major Differences from
    TLSv1.1](https://zh.wikipedia.org/wiki/rfc:5246#section-1.2 "wikilink")

9.  RFC 6347

10.

11.

12. RFC 6101

13. RFC 2246

14. RFC 4346

15.
16. \[//tools.ietf.org/html/draft-ietf-tls-tls13-11
    draft-ietf-tls-tls13-11 - The Transport Layer Security (TLS)
    Protocol Version 1.3\]

17.

18. RFC 4347

19.
20.

21.
22.

23.

24.
25. ["Secure or Compliant, Pick One" Steve Marquess
    blog](http://veridicalsystems.com/blog/secure-or-compliant-pick-one/)


26.

27. "While, as a free software project, we are not actively pursuing
    this kind of certification, GnuTLS has been FIPS-140-2 certified in
    several systems by third parties." [GnuTLS 3.5.6 B.5
    Certification](http://www.gnutls.org/manual/gnutls.html#Certification)

28.

29.

30. RFC 5246

31.
32.
33.
34. RFC 4492

35.
36.
37.
38. \[//tools.ietf.org/html/draft-chudov-cryptopro-cptls-04
    draft-chudov-cryptopro-cptls-04 - GOST 28147-89 Cipher Suites for
    Transport Layer Security (TLS)\]

39.
40.
41.
42. RFC 5054

43.
44.
45. RFC 4279

46.
47.
48. RFC 5489

49. RFC 2712

50.
51.
52.

53.

54.
55.

56. RFC 5280

57. RFC 3280

58. RFC 2560

59. RFC 6698, RFC 7218

60. RFC 5288, RFC 5289

61. RFC 6655, RFC 7251

62. RFC 6367

63.
64.

65.
66.
67.
68. 40 bits strength of cipher suites were designed to operate at
    reduced key lengths in order to comply with US regulations about the
    export of cryptographic software containing certain strong
    encryption algorithms (see [Export of cryptography from the United
    States](https://zh.wikipedia.org/wiki/Export_of_cryptography_from_the_United_States "wikilink")).
    These weak suites are forbidden in TLS 1.1 and later.

69.
70.

71.
72.
73.
74.
75.
76.
77.
78.
79.
80.
81.
82.
83.
84.
85.
86.
87.
88.
89.
90.
91.
92.
93.
94.
95.
96.
97. Negotiation of arbitrary curves has been shown to be insecure for
    certain curve sizes

98.
99.
100. RFC 7027

101.
102.
103.

104.

105.

106.
107.
108.
109.
110.
111.
112.
113.
114.

115.
116.
117.
118.

119.
120.
121.
122.
123. RFC 3749

124. RFC 5746

125. RFC 6066

126. RFC 7301

127.
128. RFC 6091

129. RFC 4680

130. RFC 5077

131. RFC 5705

132.
133.
134. RFC 7366

135. RFC 7507

136. RFC 7627

137. RFC 7685

138. RFC 7250

139.

140. <https://lists.gnupg.org/pipermail/gnutls-devel/2017-February/008309.html>

141.
142.

143.
144.

145.
146. <http://www.openssl.org/news/secadv_20141015.txt>

147.

148.

149.
150. <https://lists.gnupg.org/pipermail/gnutls-devel/2016-October/008194.html>

151. <https://habrahabr.ru/post/134725/>,
     <http://forum.rutoken.ru/topic/1639/>,
     <https://dev.rutoken.ru/pages/viewpage.action?pageId=18055184>

152.

153.

154. \[//tools.ietf.org/html/rfc7512 RFC 7512\]

155.

156.