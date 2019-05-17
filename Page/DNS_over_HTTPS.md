（缩写：）是一個进行安全化的[域名解析的方案](https://zh.wikipedia.org/wiki/域名解析 "wikilink")，目前尚處於實驗性階段。其意義在於以加密的[HTTPS协议进行DNS解析请求](https://zh.wikipedia.org/wiki/HTTPS "wikilink")，避免原始[DNS协议中用戶的DNS解析請求被竊聽或者修改的问题](https://zh.wikipedia.org/wiki/DNS "wikilink")（例如[中間人攻擊](https://zh.wikipedia.org/wiki/中間人攻擊 "wikilink")）来达到保护用户隐私的目的。\[1\]
[Google及](../Page/Google.md "wikilink")[Mozilla基金会正在测试这一协议](https://zh.wikipedia.org/wiki/Mozilla基金会 "wikilink")，作为其提高网络安全性的努力的一部分。\[2\]\[3\]

目前，該方案由[IETF支持](https://zh.wikipedia.org/wiki/IETF "wikilink")，其規範文檔以
RFC 8484 的名義發佈。2018年9月5日发布的[Firefox](../Page/Firefox.md "wikilink")
62正式版加入了这项功能，但需要用户手动开启。\[4\]

## 特性

DNS over
HTTPS利用HTTP協議的GET命令发出經由[JSON等編碼的DNS解析請求](../Page/JSON.md "wikilink")。\[5\]較於傳統的DNS協議，此處的HTTP協議通訊處於具有加密作用的[SSL/TLS協議](https://zh.wikipedia.org/wiki/SSL "wikilink")（兩者統稱作HTTPS）的保護之下。但是，由於其基於HTTPS，而HTTPS本身需要經由多次數據來回傳遞才能完成協議初始化，其域名解析耗時較原DNS協議會顯著增加。

傳統的DNS協議形成於互聯網早期，直接基於[UDP或](../Page/用户数据报协议.md "wikilink")[TCP協議](../Page/传输控制协议.md "wikilink")，且彼時未慮及現代安全性的需要，未利用[密碼學等手段進行加密或驗證](https://zh.wikipedia.org/wiki/密碼學 "wikilink")。因而，其無法抵禦現代互聯網常見的[DNS投毒污染等攻擊手段或監聽](https://zh.wikipedia.org/wiki/DNS投毒污染 "wikilink")。雖然後來的[DNSSEC方案通過](https://zh.wikipedia.org/wiki/DNSSEC "wikilink")[電子簽名進行驗證](../Page/電子簽名.md "wikilink")，強化了DNS的安全性，並能夠抵禦DNS投毒污染等篡改通訊的手段，但其對於中間網絡設備進行的監聽仍然沒有抵禦能力（隨後，監聽者可以通過獲取的通訊數據知曉用戶訪問了哪一[域名](../Page/域名.md "wikilink")，而域名往往與具體的[網站相關聯](../Page/網站.md "wikilink")）。此外，DNSSEC的起效要求現有的大量DNS解析服務的提供商（常爲[互聯網服務供應商或第三方大型互聯網機構](https://zh.wikipedia.org/wiki/互聯網服務供應商 "wikilink")）對已有的DNS服務器進行大範圍修改等問題，其推進進程並不理想。而對於DNS
over
HTTPS，在正確部署服務端並妥善配置客戶端的前提下，互聯網服務供應商或其它中間網路設備無法解密（亦即無法獲知請求的實際內容）或者篡改已經[加密的HTTPS通訊](https://zh.wikipedia.org/wiki/加密 "wikilink")，故其能夠有效保護互聯網使用者的安全及隱私；另一方面，其基於已經成熟並已廣泛部署的HTTPS協議，客戶端進行利用較爲方便。

## 支持

### 公共DNS

**DNS over HTTPS** 功能已由部分公共DNS支持。\[6\]\[7\]列表如下：

<table>
<thead>
<tr class="header">
<th><p>提供商</p></th>
<th><p>网址</p></th>
<th><p>协议</p></th>
<th><p>屏蔽</p></th>
<th><p>功能</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>| <a href="https://zh.wikipedia.org/wiki/Cloudflare" title="wikilink">Cloudflare</a></p></td>
<td><p><a href="https:-">https:-</a>{}-//cloudflare-dns.com/dns-query[8]<br />
<a href="https:-">https:-</a>{}-//1.1.1.1/dns-query<br />
<a href="https:-">https:-</a>{}-//1.0.0.1/dns-query<br />
<a href="https:-">https:-</a>{}-//[2606:4700:4700::1111]/dns-query<br />
<a href="https:-">https:-</a>{}-//[2606:4700:4700::1001]/dns-query</p></td>
<td><p>IETF草案</p></td>
<td><p>无</p></td>
<td><p>DoH 端点[9]</p></td>
</tr>
<tr class="even">
<td><p>| <a href="../Page/Google_Public_DNS.md" title="wikilink">Google Public DNS</a></p></td>
<td><p><a href="https:-">https:-</a>{}-//dns.google.com/resolve[10]</p></td>
<td><p>Google实验室</p></td>
<td><p>无</p></td>
<td><p>DoH 端点[11]</p></td>
</tr>
<tr class="odd">
<td><p>| <strong><a href="https://zh.wikipedia.org/wiki/CleanBrowsing" title="wikilink">CleanBrowsing</a></strong></p></td>
<td><p>185.228.168.168<br />
185.228.168.169<br />
2a0d:2a00:1::<br />
2a0d:2a00:2::</p></td>
<td></td>
<td><p>成人内容</p></td>
<td><p>DoH端点[12]</p></td>
</tr>
</tbody>
</table>

### 软件

  - **Argo Tunnel(Cloudflared)** — 操作系统支持：Linux/MacOS/Windows\[13\]
  - **Firefox** — 浏览器支持\[14\]
  - **DNSCrypt-proxy** — Local DNS → DNS over HTTPS
    [proxy](https://zh.wikipedia.org/wiki/proxy "wikilink").\[15\]
  - **doh-php-client** — [PHP](../Page/PHP.md "wikilink") 实现。\[16\]
  - **dns-over-https** — [Go](../Page/Go.md "wikilink") 實現。\[17\]
  - **1.1.1.1(应用程序) — 操作系统支持
    [iOS](https://itunes.apple.com/us/app/1-1-1-1-faster-internet/id1423538627?mt=8)
    /
    [Android](https://play.google.com/store/apps/details?id=com.cloudflare.onedotonedotonedotone&hl=en_US&referrer=utm_source%3Dgoogle%26utm_medium%3Dorganic%26utm_term%3D1.1.1.1+googleplay&pcampaignid=APPU_1_0G3zW46gB-uP0wKR_oLQAQ)**

<!-- end list -->

  - 在 Firefox 62 及以上版本中开启 DNS over HTTPS

一：在浏览器地址栏输入 <about:config> 然后打开，并同意警告信息。

二：搜索 network.trr

三：设置 network.trr.mode 值为 2

四：在 network.trr.uri 中填入服务器：https://mozilla.cloudflare-dns.com/dns-query

设置好后，在地址栏输入 <about:networking> 可以看到具体通信情况\[18\]

## 参见

  - [DNS over
    TLS](https://zh.wikipedia.org/wiki/DNS_over_TLS "wikilink")

## 参考资料

[Category:域名](https://zh.wikipedia.org/wiki/Category:域名 "wikilink")
[Category:互联网域名](https://zh.wikipedia.org/wiki/Category:互联网域名 "wikilink")
[Category:密码学](https://zh.wikipedia.org/wiki/Category:密码学 "wikilink")

1.

2.
3.

4.

5.    Public DNS {{\!}} Google Developers|website=Google
    Developers|language=en|access-date=2018-03-21}}

6.

7.

8.

9.  [Running a DNS over HTTPS - Cloudflare
    Resolver](https://developers.cloudflare.com/1.1.1.1/dns-over-https/cloudflared-proxy/)

10.
11. [Google Public DNS](https://dns.google.com)

12. <https://doh.cleanbrowsing.org/doh/family-filter/>

13.

14.

15.

16.

17.

18.