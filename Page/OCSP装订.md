**OCSP装订**（），正式名称为[TLS](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")[证书状态查询扩展](https://zh.wikipedia.org/wiki/数字证书 "wikilink")，可代替[在线证书状态协议](../Page/在线证书状态协议.md "wikilink")（OCSP）来查询[X.509](../Page/X.509.md "wikilink")证书的状态。\[1\]服务器在TLS握手时发送事先缓存的OCSP响应，用户只需验证该响应的有效性而不用再向[数字证书认证机构](https://zh.wikipedia.org/wiki/数字证书认证机构 "wikilink")（CA）发送请求。\[2\]\[3\]

## 动机

OCSP装订解决了在线证书协议中的大多数问题。\[4\]CA给网站颁发证书之后，网站的每个访问者都会进行OCSP查询。因此使用在线证书协议时，高并发的请求会给CA的服务器带来很大的压力。\[5\]同时由于必须和CA建立连接，OCSP查询还会影响浏览器打开页面的速度并泄漏用户隐私。\[6\]此外，当OCSP查询无法得到响应时，浏览器必须选择是否在无法确认证书状态的情况下继续连接，造成安全性和可用性二选一的困局。\[7\]

## 标准

RFC 6066第8章中规定了TLS证书状态查询扩展的标准。

RFC 6961定义了多证书状态查询扩展，允许TLS握手中发送多个证书的OCSP响应。

## 发展

对OCSP装订的支持正在逐步落实。[OpenSSL](../Page/OpenSSL.md "wikilink")在[Mozilla基金会的协助下发布了支持OCSP装订的](https://zh.wikipedia.org/wiki/Mozilla基金会 "wikilink")0.9.8g版本。

服务器端的支持情况：

| 软件名                                               | 版本                                                                     |
| ------------------------------------------------- | ---------------------------------------------------------------------- |
| [Httpd](../Page/Apache_HTTP_Server.md "wikilink") | 2.3.3\[8\]                                                             |
| [Nginx](../Page/Nginx.md "wikilink")              | 1.3.7\[9\]                                                             |
| [IIS](../Page/網際網路資訊服務.md "wikilink")             | [Windows Server 2008](../Page/Windows_Server_2008.md "wikilink")\[10\] |
| [HAProxy](../Page/HAProxy.md "wikilink")          | 1.5.0\[11\]                                                            |
| LiteSpeed Web Server                              | 4.2.4\[12\]                                                            |
| F5 Networks BIG-IP                                | 11.6.0\[13\]                                                           |

浏览器的支持情况：

| 软件名                                           | 版本                                                             |
| --------------------------------------------- | -------------------------------------------------------------- |
| [Firefox](../Page/Firefox.md "wikilink")      | 26\[14\]                                                       |
| [IE](../Page/Internet_Explorer.md "wikilink") | [Vista及以上的Windows](../Page/Windows_Vista.md "wikilink")。\[15\] |
| [Chrome](../Page/Google_Chrome.md "wikilink") | Linux、Chrome OS、Vista及以上的Windows\[16\]                         |

SMTP方面，[Exim在客户端](https://zh.wikipedia.org/wiki/Exim "wikilink")\[17\]和服务器端\[18\]都支持OCSP装订。

## 局限性

OCSP装订可以降低OCSP验证的成本，特别针对有很多用户的大型网站。但是OCSP装订在同一时间只能发送一个OCSP响应，对有中级证书的证书链来说并不足够。\[19\]\[20\]RFC 6961中提出的多证书状态查询扩展解决了这个问题，允许同时发送多个OCSP响应。\[21\]

## 参考资料

<references />

[Category:加密协议](https://zh.wikipedia.org/wiki/Category:加密协议 "wikilink") [Category:互联网标准](https://zh.wikipedia.org/wiki/Category:互联网标准 "wikilink") [Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink") [Category:傳輸層安全協議](https://zh.wikipedia.org/wiki/Category:傳輸層安全協議 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.  [Apache HTTP Server mod_ssl documentation - SSLUseStapling directive](https://httpd.apache.org/docs/trunk/mod/mod_ssl.html#sslusestapling)
9.  [nginx-announce mailing list - nginx-1.3.7](http://mailman.nginx.org/pipermail/nginx-announce/2012/000095.html)
10.
11. [HAProxy website](http://www.haproxy.org/)
12. [Release Log - Litespeed Tech](http://www.litespeedtech.com/products/litespeed-web-server/release-log).
13. [Release Note: BIG-IP LTM and TMOS 11.6.0](https://support.f5.com/kb/en-us/products/big-ip_ltm/releasenotes/product/relnote-ltm-11-6-0.html)
14. [Improving Revocation - MozillaWiki](https://zh.wikipedia.org/wiki/mozillawiki:CA:ImprovingRevocation#OCSP_Stapling "wikilink"), retrieved 2014-04-28
15.
16.
17. [The smtp transport](http://exim.org/exim-html-4.85/doc/html/spec_html/ch-the_smtp_transport.html), retrieved 2015-01-24
18. [Main configuration](http://exim.org/exim-html-4.85/doc/html/spec_html/ch-main_configuration.html#SECTalomo), retrieved 2015-01-24
19. [Mozilla NSS Bug 360420](https://bugzilla.mozilla.org/show_bug.cgi?id=360420#c10), Comment by Adam Langley
20. [Mozilla NSS Bug 611836 - Implement multiple OCSP stapling extension](https://bugzilla.mozilla.org/show_bug.cgi?id=611836)
21.