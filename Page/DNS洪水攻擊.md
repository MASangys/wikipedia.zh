[Dns_flood.svg](https://zh.wikipedia.org/wiki/File:Dns_flood.svg "fig:Dns_flood.svg")
**DNS洪水攻擊**（）是一种针对[DNS的](../Page/域名系统.md "wikilink")[拒绝服务攻击](../Page/阻斷服務攻擊.md "wikilink")，目的是令該[网络的资源耗盡](../Page/计算机网络.md "wikilink")，導致務暫時中斷或停止。攻击者发出的大量请求到該资源或伺服器，使其正常用戶無法存取。在[DNS洪水攻擊中](../Page/域名系统.md "wikilink")，由于超负荷的流量，受影響的主机连接到該DNS時連綫會中斷。它可以阻止大部分網站流量。黑客可利用[殭屍網絡向DNS發出大量請求](../Page/殭屍網絡.md "wikilink")，使透過[域名存取網站的用戶無法到訪網站](../Page/域名.md "wikilink")，而多數情況下依然可以透過[IP存取網站](https://zh.wikipedia.org/wiki/IP位址 "wikilink")\[1\]。

這類攻击是主要由[黑客](../Page/黑客.md "wikilink")从被攻击的资源或伺服器得益。發動DDoS攻击的動機有很多，其中包括勒索网站的所有者为勒索金钱发动攻击，尤其是高流量的网站，例如大型银行的网站。\[2\]

## 攻擊方法

黑客透過[殭屍網絡](../Page/殭屍網絡.md "wikilink")，向DNS伺服器發出隨意生成的DNS請求，如123.example.com和asdf.example.com。由於伺服器找不到相關子域名，但要處理請求，從而做成DNS癱瘓。\[3\]

## 預防

多种方法可用于防止此类攻击，其中包括不處理有格式問題的[封包](https://zh.wikipedia.org/wiki/封包 "wikilink")，过滤具有潜在威脅的來源等。\[4\]\[5\]

## 参考文献

[Category:阻斷服務攻擊](https://zh.wikipedia.org/wiki/Category:阻斷服務攻擊 "wikilink")

1.   Cloudflare|publisher=Cloudflare|accessdate=2018-03-03}}
2.
3.
4.
5.