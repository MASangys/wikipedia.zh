**HTTP公钥固定**（又称**HTTP公钥钉扎**，，缩写**HPKP**）\[1\]是[HTTPS网站防止攻击者利用](https://zh.wikipedia.org/wiki/HTTPS "wikilink")[数字证书认证机构](https://zh.wikipedia.org/wiki/数字证书认证机构 "wikilink")（CA）错误签发的[证书进行](../Page/公開金鑰認證.md "wikilink")[中间人攻击](../Page/中间人攻击.md "wikilink")的一种安全机制，用于预防CA遭受入侵或其他会造成CA签发未授权证书的情况。采用公钥固定时，网站会提供已授权[公钥的](https://zh.wikipedia.org/wiki/公钥 "wikilink")[哈希列表](https://zh.wikipedia.org/wiki/哈希 "wikilink")，指示客户端在后续通讯中只接受列表上的公钥。

## 工作原理

服务器通过`Public-Key-Pins`（或`Public-Key-Pins-Report-Only`用于监测）HTTP头向浏览器传递HTTP公钥固定信息。

HTTP公钥固定将网站[X.509](../Page/X.509.md "wikilink")证书链中的一个SPKI（和至少一个备用密钥）以`pin-sha256`方式进行[哈希](https://zh.wikipedia.org/wiki/哈希 "wikilink")，由参数`max-age`（单位秒）所指定一段时间，可选参数`includeSubDomains`决定是否包含所有子域名，另一个可选参数`report-uri`决定是否回报违反HTTP公钥固定策略的事例。在`max-age`所指定的时间内，证书链中证书的至少一个公钥须和固定公钥相符，这样客户端才认为该证书链是有效的。\[2\]

RFC 7469规范发布时只允许[SHA-2](../Page/SHA-2.md "wikilink")56算法。HTTP公钥固定中的哈希算法也可通过RFC 7469规范的附录A中所提到的命令行或其他第三方工具来生成。\[3\]

网站维护者可以选择将特定[CA](https://zh.wikipedia.org/wiki/数字证书认证机构 "wikilink")[根证书](../Page/根证书.md "wikilink")公钥固定——只有该CA和其签发的中级证书才视同有效，而且可以选择将一个或多个中级证书固定，或将末端证书固定。但是，至少得固定一个备用密钥以便更换现有的固定密钥。在没有备用密钥（备用密钥须不在现有证书链中）时，HTTP公钥固定并不会生效。\[4\]

HTTP公钥固定在[RFC](../Page/RFC.md "wikilink") 7469规范中成为标准。\[5\]把证书公钥的哈希值硬编码在客户端、浏览器中，这被称为“证书固定”，HTTP公钥固定则是“证书固定”的一种扩展。\[6\]

[Chromium](../Page/Chromium.md "wikilink")浏览器现已经禁止固定自签名根证书的证书链，这样一些内容嗅探、抓包软件如[mitmproxy](https://zh.wikipedia.org/wiki/mitmproxy "wikilink")、[Fiddler](../Page/Fiddler.md "wikilink")便无法再利用自签证书嗅探加密内容。\[7\]RFC 7469规范指出，对于此类证书链，建议禁用HTTP公钥固定的违规回报。\[8\]

## 违规回报

客户端进行HTTP公钥固定验证失败后，将把此次错误详情以[JSON](../Page/JSON.md "wikilink")格式回报给`report-uri`参数中指定的服务器。若发生客户端向同域名的服务器端回报失败（如违规本身就是由连接问题引起的），服务器端也可指定另一个域名或采用其他回报服务。\[9\]\[10\]

## 浏览器支持

[Firefox](../Page/Firefox.md "wikilink")从版本35.0开始支持HPKP\[11\]，[Chrome从版本](../Page/Google_Chrome.md "wikilink")46开始\[12\]支持，但在Chrome 67中终止了对HPKP的支持\[13\] 。[Internet Explorer](../Page/Internet_Explorer.md "wikilink")、[Microsoft Edge目前尚不支持HPKP](../Page/Microsoft_Edge.md "wikilink")。\[14\]

## 应用现状

2016年，在有关SSL的调研中称，只有0.09%的证书在使用HTTP公钥固定，加上实际运作中不当的配置，实际有效的HTTP公钥固定证书数量低于3000。造成这种现象的原因是：该技术尚处于萌芽期，网站技术人员对其缺乏重视和理解，更重要的是，错误的部署可能带来网站方面无法接受的严重后果——用户在相当长一段时间内（取决于`max-age`的配置）因新证书公钥与旧HPKP策略不符，对网站的合法-{zh-hans:访问;zh-hant:訪問}-都将遭拒。\[15\]

因为网站部署率过低，Google在2018年5月29日发布的Chrome 67中终止了对HPKP的支持。\[16\]

由[Google](../Page/Google.md "wikilink")所主导的[Certificate Transparency提供了一个用于监测](https://zh.wikipedia.org/wiki/Certificate_Transparency "wikilink")、审核证书的开放式框架，以保障证书签发流程的安全。\[17\]这是一项和HTTP公钥固定有着相同目标的较新项目。

## 参见

  - [中间人攻击](../Page/中间人攻击.md "wikilink")

  - [HTTP严格传输安全](../Page/HTTP严格传输安全.md "wikilink")（HTTP Strict Transport Security，HSTS）

  -
## 参考资料

## 外部链接

  - [在Apache、nginx、Lighttpd上启用HPKP](https://linux.cn/article-5282-1.html)
  - [安全网站为何对HPKP敬而远之？](https://www.sslchina.com/http-secure-sites-to-avoid-public-fixed/)
  - [Certificate Transparency项目网站](https://www.certificate-transparency.org/)

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink") [Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink")

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
17.