**DNSCurve**是设计的一种[域名系统](../Page/域名系统.md "wikilink")（DNS）的新安全协议。

## 描述

DNSCurve使用[Curve25519](../Page/Curve25519.md "wikilink")\[1\][椭圆曲线加密算法建立](https://zh.wikipedia.org/wiki/椭圆曲线加密算法 "wikilink")[Salsa20](../Page/Salsa20.md "wikilink")使用的密钥，配以MAC函数[Poly1305](../Page/Poly1305.md "wikilink")，用来加密和验证[解析器与身份验证服务器之间的DNS](../Page/域名系统.md "wikilink")[網路封包](https://zh.wikipedia.org/wiki/網路封包 "wikilink")。远端验证服务器的[公钥放在NS记录中](../Page/公开密钥加密.md "wikilink")，以便递归解析器了解服务器是否支持DNSCurve。键值以[魔术字](../Page/魔术字.md "wikilink")符串`uz5`开头，后随51字节的编码的服务器的255位公钥。例如，以[BIND](../Page/BIND.md "wikilink")格式来看：

`example.com. IN NS uz5bcx1nh80x1r17q653jf3guywz7cmyh5jv0qjz0unm56lq7rpj8l.example.com.`

解析器然后向服务器发送一个包含DNSCurve公钥、96位[nonce和一个包含查询的加密箱的数据包](https://zh.wikipedia.org/wiki/nonce "wikilink")。加密箱为采用解析器的私钥、服务器的公钥和nonce创建。服务器的响应包含不同的96位nonce及其自身的加密箱，其中包含查询的答案。

DNSCurve中使用的加密工具也在**CurveCP**中使用，它是基于[UDP而非](../Page/用户数据报协议.md "wikilink")[TCP协议](../Page/传输控制协议.md "wikilink")，使用[椭圆曲线加密算法来加密和认证数据](https://zh.wikipedia.org/wiki/椭圆曲线加密算法 "wikilink")。一个类比是，[DNSSEC像使用](../Page/域名系统安全扩展.md "wikilink")[PGP加密一个网页](https://zh.wikipedia.org/wiki/良好隱私密碼法 "wikilink")，而CurveCP和DNSCurve像是使用[SSL来加密和身份验证信道](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")。正如PGP签名的网页可以通过SSL加密的信道发送，DNSSEC的数据也可通过DNSCurve保护。

DNSCurve声称优于以前的DNS服务：\[2\]

  - 保密——普通的DNS请求和响应不会加密，并且任何攻击者都可窥视内容。
  - 完整——普通的DNS有一些保护，但有耐心并嗅探的攻击者可以伪造DNS记录。DNSCurve加密并验证的数据则防止这些情况。
  - 可用——普通的DNS没有防护嗅探攻击者发送的一些伪造数据包制造[阻斷服務攻擊](../Page/阻斷服務攻擊.md "wikilink")（DoS）攻击。DNSCurve识别并丢弃伪造的DNS数据包，并为容易受到DoS攻击的SMTP、HTTP和HTTPS提供一些保护。

## 安全

DNSCurve使用256位[椭圆曲线加密算法](https://zh.wikipedia.org/wiki/椭圆曲线加密算法 "wikilink")，[NIST估计大致相当于](../Page/國家標準技術研究所.md "wikilink")3072比特[RSA](../Page/RSA加密演算法.md "wikilink")。\[3\]ECRYPT报告了类似的估计。\[4\]它为每个查询都使用公钥加密（类似SSH和SSL），以及96比特nonces以防止重放攻击。Google安全官Adam Langley称：“很大概率上，没有人能在不使用一台大型的[量子计算机](../Page/量子计算机.md "wikilink")的情况下解决curve25519的单个实例。”\[5\]

## 速度

Adam Langley在他的个人网站上展示了DNSCurve所使用的curve25519的速度测试，它是测试中最快的椭圆曲线加密法。\[6\]根据[NSA所说](../Page/美国国家安全局.md "wikilink")，椭圆曲线加密法在增加密钥大小的同时，几何速率方面的性能优于RSA和Diffie-Hellman。\[7\]

## 实现

DNSCurve通过\[8\]Matthew Dempsky为dnscache的一个补丁取得了首个递归支持。Dempsky也有一个[GitHub](../Page/GitHub.md "wikilink")代码库，里面包括Python DNS查询工具和一个C语言编写的转发器。\[9\]Adam Langley同样有一个GitHub代码库。\[10\]有一个权威转发器名为CurveDNS\[11\]，它允许DNS管理员保护现有的安装而无须打补丁。OpenDNS已发布DNSCrypt\[12\]来保护OpenDNS用户与其递归解析器之间的信道。Jan Mojžíš发布了curveprotect\[13\]，这是一个实现DNSCurve和CurveCP的套件，保护DNS、SSH、HTTP和[SMTP等常见服务](https://zh.wikipedia.org/wiki/SMTP "wikilink")。

## 部署

[OpenDNS](../Page/OpenDNS.md "wikilink") 服务超过5000万用户的于2010年2月23日宣布其递归解析器支持DNSCurve。\[14\]2011年12月6日，OpenDNS宣布名为[DNSCrypt](../Page/DNSCrypt.md "wikilink")的新工具\[15\]该工具能保护OpenDNS与其用户之间的信道。\[16\]尚无其他类似的权威DNS提供商部署DNSCurve。

## 参见

  - [域名系统安全扩展](../Page/域名系统安全扩展.md "wikilink")（DNSSEC）
  - [椭圆曲线密码学](../Page/椭圆曲线密码学.md "wikilink")
  - [OpenDNS](../Page/OpenDNS.md "wikilink")

## 备注

## 外部链接

  - [Official website](https://dnscurve.org)
  - [DNSCurve.io: a community for DNSCurve users](https://dnscurve.io)
  - [High-speed cryptography and DNSCurve](http://cr.yp.to/talks/2009.06.27/slides.pdf)，2009年6月作者的介绍
  - [DNSCurve: Usable security for DNS](http://cr.yp.to/talks/2008.08.22/slides.pdf)，2008年8月作者的介绍
  - [draft-dempsky-dnscurve-01](http://tools.ietf.org/html/draft-dempsky-dnscurve-01) 提议标准：“DNSCurve: Link-Level Security for the Domain Name System”，M. Dempsky（来自[OpenDNS](../Page/OpenDNS.md "wikilink")）发送给[IETF](../Page/互联网工程任务组.md "wikilink") （更新于2010年2月）
  - [OpenDNS adopts DNSCurve](http://blog.opendns.com/2010/02/23/opendns-dnscurve/)，OpenDNS官方博文
  - [CurveDNS](http://curvedns.on2it.net/)，DNSCurve转发名称服务器
  - [NaCl](http://nacl.cr.yp.to/)，网络和加密程序库

[Category:域名](https://zh.wikipedia.org/wiki/Category:域名 "wikilink") [Category:橢圓曲線密碼學](https://zh.wikipedia.org/wiki/Category:橢圓曲線密碼學 "wikilink")

1.
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