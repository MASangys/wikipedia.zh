****
是[Google于](../Page/Google.md "wikilink")2009年12月5日起提供的一个免费域名解析服务（[DNS](../Page/DNS.md "wikilink")）。

以下为此服务的DNS地址：

  - [IPv4](../Page/IPv4.md "wikilink") 位址

<!-- end list -->

  - **`8.8.8.8`** (`google-public-dns-a.google.com`)
  - **`8.8.4.4`** (`google-public-dns-b.google.com`)

<!-- end list -->

  - [IPv6](../Page/IPv6.md "wikilink") 位址 \[1\]

<!-- end list -->

  - **`2001:4860:4860::8888`**
  - **`2001:4860:4860::8844`**

## 介绍

Google Public DNS
是Google面对大众推出的一个公共免费域名解析服务。而Google表示推出免费DNS服务的主要目的就是为了改进网络浏览速度、改善网络用户的浏览体验，为此Google並不使用[BIND等廣為使用的DNS程式](../Page/BIND.md "wikilink")，而是以自行開發的軟體对DNS服务器技术进行了改进，在兩層[計算機叢集上](../Page/計算機叢集.md "wikilink")，[缓存DNS服务器](../Page/缓存.md "wikilink")[平衡負載以提升性能](../Page/負載均衡_\(計算機\).md "wikilink")，同时保证了DNS服务的安全性和准确性\[2\]\[3\]。

## 服务

该服务并不使用诸如[BIND那样的第三方](../Page/BIND.md "wikilink")[DNS管理软件](../Page/DNS管理软件.md "wikilink")，而是以自行开发的软件实现，并提供有限的IPv6支持，依照[IETF提供的DNS服务标准设计](../Page/IETF.md "wikilink")。同时部分支持[DNSSEC协议](../Page/DNSSEC.md "wikilink")。\[4\]

许多主要DNS提供商处理查询
时实施[域名劫持](../Page/域名劫持.md "wikilink")，导致浏览器进入未注册域名时重定向到广告提供商的页面，此举明显破坏了DNS规范，\[5\]像中国电信在此情况下一般直接弹出充满广告的114页面，\[6\]又如[OpenDNS会显示一个有广告或搜索引擎的域名解析错误提示页面](../Page/OpenDNS.md "wikilink")。\[7\]
相比之下，Google的服务会正确回复至NXDOMAIN页面。\[8\]

在第三方服务商以合法途径用DNS服务试图将用户重定向至恶意网站的情况之下，Google还特别重视处理域名服务的安全问题。他们还证实他们的成果可抵御[域名服务器缓存污染](../Page/域名服务器缓存污染.md "wikilink")，以及[分布式拒绝服务攻击](../Page/分布式拒绝服务攻击.md "wikilink")。\[9\]

Google声称有各类性能和速度上的优势，\[10\]诸如使用选播路由
将用户导入最近的全球数据中心，为服务器预留空间到句柄即使遭遇恶意通路，以及使用两个缓冲层保证服务器负载平衡，使用小型单机[缓存包含多数常用域名及其他按域名区分的设备缓冲池以锁定](../Page/缓存.md "wikilink")。第二层缓存可降低能造成服务器增多的破损缓存失败的几率。

## 隐私

Google声称为了性能及安全,
只有用户的[IP地址](../Page/IP地址.md "wikilink")（24小时后删除）、[ISP和地理位置信息](../Page/互联网服务提供商.md "wikilink")（永久保存）会被服务器留存。\[11\]\[12\]\[13\]

## 历史

2009年12月，Google通过产品经理Prem Ramaswami从官方博客宣布启动Google Public
DNS\[14\]，同时在[Google
Code发布了这个消息](../Page/Google_Code.md "wikilink")。\[15\]

### 中国大陆的封锁

Google Public DNS
曾经在2010年9月17日遭到[防火长城的IP地址屏蔽](../Page/防火长城.md "wikilink")，使其无法从[中国大陆境内正常访问](../Page/中国大陆.md "wikilink")。\[16\]现在封锁已经解除，在中国大陆境内也能正常访问和解析绝大部分域名，但由于
Google Public DNS
的服务器并不在中国境内，故在中国大陆境内所有使用其进行域名解析的请求都会经过防火长城的过滤，从而易被防火长城所干扰，致使在中国大陆境内的客户端不一定能获得正确的解析结果。\[17\]

自2015年起，原有的干扰手段疑似更换为随机丢包，依靠大量丢包导致Google Public DNS使用体验严重不佳迫使用户更换其他DNS。

### DNSSEC

2013年5月6日，Google Public
DNS默认启用[DNSSEC验证](../Page/DNSSEC.md "wikilink")，意味着即使客户端未启用，所有的域名解析请求都将接受验证
。\[18\]

Google Public DNS起初不直接支持DNSSEC。即使RRSIG不可被查询，AD flag（Authenticated
Data，意味着服务器可以验证所有数据的签名）在最初版本中从未设置过。2013年1月28日这种情况得到改进，当时Google的DNS服务器静默启动DNSSEC验证信息的供应，\[19\]但是只有客户端启动DNSSEC
OK (DO) flag时生效。\[20\]这一服务需要的client-side
flag在2013年5月6日被替换成默认启用的完整的DNSSEC验证。

## 参考文献

## 外部链接

  - [Public DNS | Google
    Developers](https://developers.google.com/speed/public-dns/)

[Category:Google](https://zh.wikipedia.org/wiki/Category:Google "wikilink")
[Category:域名解析服务](https://zh.wikipedia.org/wiki/Category:域名解析服务 "wikilink")

1.  [Get Started | Public DNS | Google
    Developers](https://developers.google.com/speed/public-dns/docs/using)
2.
3.
4.
5.
6.  提示信息：“尊敬的用户：您访问的域名不存在，您可尝试重新访问\!”
7.
8.
9.
10.
11.
12.
13. [Google Public DNS and your
    privacy](http://www.pcworld.com/article/183671/google_public_dns_and_your_privacy.html)
    PC World, 4 December 2009
14. [Introducing Google Public
    DNS](http://googleblog.blogspot.com/2009/12/introducing-google-public-dns.html)
    Official Google Blog, 3 December 2009
15.
16.
17.
18.
19.
20.