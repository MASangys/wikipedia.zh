**DNS证书颁发机构授权**（，简称**CAA**）是一项借助[互联网的](../Page/互联网.md "wikilink")[域名系统](../Page/域名系统.md "wikilink")（DNS），使域持有人可以指定允许为其域签发证书的[数字证书认证机构](https://zh.wikipedia.org/wiki/数字证书认证机构 "wikilink")（CA）的技术。这项技术并非意在对支持[傳輸層安全協議](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")（TLS）连接的客户端进行额外检查（不过，，缩写DANE，旨在用于此目的），而是要作为CA签发流程中检查的一部分。CAA记录旨在使CA避免在某些情况下错误签发证书，而DANE记录旨在允许依赖的应用程序（TLS客户端）避免信赖在某些情况下错误签发的证书。\[1\]

“DNS证书颁发机构授权”在RFC
6844中被规定。它定义了一个新的“CAA”DNS资源记录类型，这是一个名称-值对，可以携带已被授权签发证书的CA的范围信息。证书评估器也可以使用CAA记录来检测可能被错误颁发的证书。但是，证书评估器应该考虑CAA记录可能在证书颁发与评估者观察到证书的期间发生过变化。\[2\]

## 基本原理

根据RFC 6844，每个CAA资源记录包含一个标志（flags）字节和一个属性。CAA记录由下列三个元素表示：

  - flag<span>（标签）</span>
    0-255之间的一个无符号整数。它目前用于表示关键标志，在各RFC中指定具体含义。
  - tag（标志）
    一个ASCII字符串，表示记录代表的属性的标识符。
  - value<span>（值）</span>
    与标签相关联的值。

标志（flag）字节包含可影响记录解释的标志。属性包含的“tag”允许在数种CAA记录之间选择，而“value”字符串的含义取决于tag的选择。目前定义了一个标志：签发者关键（*issuer
critical*）标志，由flags字节的最高有效位表示。如果签发者关键为1（即标志字节为128），则表示不了解或未实现该记录中的属性标签的CA应拒绝为该域颁发证书。这类似[X.509证书体系中的关键扩展](../Page/X.509.md "wikilink")。

除了标志之外，还定义了三个属性标签：

  - issue
    此属性授权在“值”字段中指定的域的持有人为该属性的发布域颁发证书。
  - issuewild
    此属性类似 *issue* ，但允许通配符证书。
  - iodef
    此属性指定CA颁发证书时向域持有者报告的方法。并不是所有CA都支持此标签，所以不能保证所有的证书颁发都被报告。

## 支持

### 服务支持

，CAA记录在下列软件中已获支持：[BIND](../Page/BIND.md "wikilink")
DNS服务器（自版本9.10.1B起）\[3\]、[NSD权威DNS服务器](https://zh.wikipedia.org/wiki/NSD "wikilink")（自版本4.0.1起）\[4\]、[Knot
DNS服务器](https://zh.wikipedia.org/wiki/Knot_DNS "wikilink")（自2.2.0版本起）\[5\]以及[PowerDNS](https://zh.wikipedia.org/wiki/PowerDNS "wikilink")（自4.0.0版本）。\[6\]

### CA支援

，CAA记录已得到\[7\]亚马逊、Chunghwa
Telecom(中華電信)、Certum、Comodo、DigiCert、Entrust、GlobalSign、GoDaddy、Izenpe、QuoVadis、Starfield
GoDaddy、StartCom WoSign、Let's
Encrypt、Symantec、GeoTrust、Thawte、T-Telesec、Trustwave、WoSign（沃通）和
GDCA（数安时代）的支援。

## 标准

  - RFC 6844
  - RFC 3597

## 强制检查

最初CAA为自愿实施：CA可以决定是否检查该记录。但是，2017年3月，CA/浏览器论坛投票赞成一项规则，将使所有证书颁发机构强制施行CAA。\[8\]自2017年9月起，所有证书颁发机构都必须实施CAA检查。\[9\]\[10\]

## 参考资料

## 参见

  -
  - [HTTP公钥固定](../Page/HTTP公钥固定.md "wikilink")

  - [域名伺服器記錄類型列表](../Page/域名伺服器記錄類型列表.md "wikilink")

[Category:域名](https://zh.wikipedia.org/wiki/Category:域名 "wikilink")
[Category:傳輸層安全協議](https://zh.wikipedia.org/wiki/Category:傳輸層安全協議 "wikilink")

1.

2.
3.

4.

5.

6.

7.

8.  [\[cabfpub\] Results on Ballot 187 - Make CAA Checking
    Mandatory](https://cabforum.org/pipermail/public/2017-March/009988.html)

9.

10.