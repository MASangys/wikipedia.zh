**DNSCrypt**是由Frank Denis及付业成（Yecheng
Fu）主導设计的[网络协议](https://zh.wikipedia.org/wiki/网络协议 "wikilink")，用于用户[计算机与递归](https://zh.wikipedia.org/wiki/计算机 "wikilink")[域名服务器之间的](https://zh.wikipedia.org/wiki/域名服务器 "wikilink")[域名系统](../Page/域名系统.md "wikilink")（DNS）通信的身份验证。\[1\]

DNSCrypt将未修改的DNS查询与响应以密码学结构打包来检测是否被伪造。它儘管未使用[端對端加密](https://zh.wikipedia.org/wiki/端對端加密 "wikilink")，但也足夠抵禦針對DNS的[中間人攻擊](https://zh.wikipedia.org/wiki/中間人攻擊 "wikilink")、[DNS快取投毒攻擊](https://zh.wikipedia.org/wiki/DNS快取侵害 "wikilink")、[DNS劫持等](https://zh.wikipedia.org/wiki/DNS劫持 "wikilink")，尤其是在[區域網路中](https://zh.wikipedia.org/wiki/區域網路 "wikilink")。\[2\]除此以外還缓解了基于[UDP的请求查询至少与回应一样大的放大攻击](../Page/用户数据报协议.md "wikilink")。DNSCrypt也可以用于[访问控制](https://zh.wikipedia.org/wiki/访问控制 "wikilink")。

尽管已有数个客户端及服务器实现，这一协议从未以[征求意见稿](../Page/RFC.md "wikilink")（RFC）形式提交到[互联网工程任务组](../Page/互联网工程任务组.md "wikilink")（IETF）。目前DNSCrypt協定已發展至第二個版本。\[3\]\[4\]

## 协议概略

DNSCrypt可以使用UDP端口或TCP端口。尽管与[HTTPS完全不同](https://zh.wikipedia.org/wiki/HTTPS "wikilink")，但两种情况下的默认[-{zh-cn:端口号;zh-tw:通訊埠;}-均为](../Page/通訊埠.md "wikilink")443。

DNSCrypt客户端必须明确信任所选提供者的[公钥](https://zh.wikipedia.org/wiki/公钥 "wikilink")，而不依赖于常规[浏览器中使用的](https://zh.wikipedia.org/wiki/浏览器 "wikilink")[证书颁发机构](../Page/证书颁发机构.md "wikilink")。

公钥将用于验证一整套以传统DNS查询接收的证书。这些证书包含用于[密钥交换的短期公钥](../Page/密钥交换.md "wikilink")，以及即将使用的密码本标识符。客户端被鼓励为每次查询新建密钥，而服务器被鼓励为每24小时更换短期密钥对。

查询与回应都使用同一算法加密，并使用64字节的倍数填充来防止泄漏封包大小。当使用UDP端口且回应多于查询产生的数据量时，服务器可以使用标记TC（，截短）位元的短封包回应。客户端此时应使用TCP端口重试，并增加后续查询的填充量。

该协议的第一、第二版采用X25519算法（[Curve25519](../Page/Curve25519.md "wikilink")）进行密钥交换，算法进行签名，以及使用[XSalsa20](../Page/Salsa20.md "wikilink")-或[XChaCha20](https://zh.wikipedia.org/wiki/ChaCha20 "wikilink")-Poly1305算法认证加密。

## 基于公钥的客户端认证

DNSCrypt协议也可以用于访问控制与审计，方法是仅接受一组预先定义的公钥。这可在商用DNS服务中辨识客户而不必依赖于其[IP地址](../Page/IP地址.md "wikilink")。

## 部署實作

### 伺服器端

DNSCrypt-Wrapper是伺服器端程式，需要搭配[BIND](../Page/BIND.md "wikilink")、等DNS系統方可運行。\[5\]

除了私有部署，DNSCrypt协议已经被数个公共DNS解析服务器接纳，现存最大的成员是网络，它同时提供[虚拟专用网](https://zh.wikipedia.org/wiki/虚拟专用网 "wikilink")（VPN）服务。

[OpenDNS](../Page/OpenDNS.md "wikilink")（現思科系統的子公司）在2011年12月宣布其公共DNS服務部署DNSCrypt，\[6\]緊接著奧地利的CloudNS也宣布部署。

2016年3月29日，[Yandex宣布在其](../Page/Yandex.md "wikilink")及[网络浏览器上支持DNSCrypt协议](https://zh.wikipedia.org/wiki/网络浏览器 "wikilink")。\[7\]隨後，[Infoblox宣布旗下的ActiveTrust](https://zh.wikipedia.org/wiki/Infoblox "wikilink")
Cloud將部署DNSCrypt服務。

2016年10月，AdGuard宣布為其提供阻擋電信業者追踪廣告推播服務的公共DNS伺服器部署了DNSCrypt。\[8\]\[9\]

2017年DNSCrypt v2協定公佈，隨後相關的開放原始碼實作專案相繼出現，同時也有更多的公共DNS伺服器加入（包括[Google
Public
DNS](../Page/Google_Public_DNS.md "wikilink")），所有部署DNSCrypt的DNS伺服器清單可在DNSCrypt的[GitHub](../Page/GitHub.md "wikilink")、[Bitbucket等原始碼託管站上找到](../Page/Bitbucket.md "wikilink")。\[10\]

### 客户端

DNSCrypt-Proxy
v1/v2、Pcap_DNSProxy、YourFriendlyDNS是[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink")、[命令列界面的客户端程式](https://zh.wikipedia.org/wiki/命令列 "wikilink")，起到將本機或區域網路內的DNS請求加密轉發至部署了DNSCrypt的伺服器之功用。其中DNSCrypt-Proxy的v2版還支援[DoH](../Page/DNS_over_HTTPS.md "wikilink")、[DoT](../Page/DNS_over_TLS.md "wikilink")，還可以實現類似[dnsmasq的DNS指定轉發](https://zh.wikipedia.org/wiki/dnsmasq "wikilink")、黑名單及白名單、[hosts特性](https://zh.wikipedia.org/wiki/hosts "wikilink")；Pcap_DNSProxy額外支援[DNSSEC](https://zh.wikipedia.org/wiki/DNSSEC "wikilink")。\[11\]\[12\]\[13\]\[14\]

[Simple
DNSCrypt](https://simplednscrypt.org)是一個[圖形界面](https://zh.wikipedia.org/wiki/图形界面 "wikilink")、基建於DNSCrypt-Proxy的[前端](https://zh.wikipedia.org/wiki/前端 "wikilink")，運行於Windows作業系統。\[15\]也有類似的實作專案，如macOS的dnscrypt-osx-client等。\[16\]

Yandex則在其[自家的瀏覽器產品上內建了自有的DNSCrypt客户端支援](../Page/Yandex_Browser.md "wikilink")。\[17\]

## 参见

  - [Curve25519](../Page/Curve25519.md "wikilink")
  - [DNSCurve](../Page/DNSCurve.md "wikilink")
  - [DNS over HTTPS](../Page/DNS_over_HTTPS.md "wikilink")（DoH）
  - [DNS over TLS](../Page/DNS_over_TLS.md "wikilink")（DoT）
  - [域名系统安全扩展](../Page/域名系统安全扩展.md "wikilink")（DNSSEC）
  - [椭圆曲线密码学](../Page/椭圆曲线密码学.md "wikilink")

## 資料來源

## 外部链接

  -
  - [GitHub專案頁面](https://github.com/DNSCrypt)

  - [DNSCrypt协议详述](https://github.com/DNSCrypt/dnscrypt-protocol/blob/master/DNSCRYPT-V2-PROTOCOL.txt)

  - [DNSCrypt - ArchWiki](https://wiki.archlinux.org/index.php/DNSCrypt)

  - [一套適用於中國大陸境內網路的DNSCrypt-Proxy
    v2轉發最佳化規則](https://github.com/CNMan/dnscrypt-proxy-config)

[Category:域名](https://zh.wikipedia.org/wiki/Category:域名 "wikilink")
[Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink")

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
14. [在Ubuntu上使用DNSCrypt加密DNS通信 - Web
    Upd8](http://www.webupd8.org/2014/08/encrypt-dns-traffic-in-ubuntu-with.html)
15.
16.
17. [Yandex浏览器中的DNSCrypt](https://habrahabr.ru/company/yandex/blog/280380/)