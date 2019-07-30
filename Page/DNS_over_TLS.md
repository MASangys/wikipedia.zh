（缩写：）是通过[传输层安全协议](https://zh.wikipedia.org/wiki/传输层安全协议 "wikilink")（TLS）來加密並打包[域名系统](../Page/域名系统.md "wikilink")（DNS）的安全协议。此協議旨在防止[中间人攻击](../Page/中间人攻击.md "wikilink")与控制DNS数据以保护用户隐私。

及定义了DNS over TLS。\[1\]\[2\] ，[Cloudflare](../Page/CloudFlare.md "wikilink")、[Quad9与](https://zh.wikipedia.org/wiki/Quad9 "wikilink")[CleanBrowsing均向大众提供支持DNS](https://zh.wikipedia.org/wiki/CleanBrowsing "wikilink") over TLS的[公共DNS解析服务](https://zh.wikipedia.org/wiki/公共DNS解析服务 "wikilink")。\[3\]\[4\]\[5\]\[6\]2018年4月，[Google](../Page/Google.md "wikilink")宣布[Android P将包含对DNS](https://zh.wikipedia.org/wiki/Android_P "wikilink") over TLS的支持。\[7\][PowerDNS的](https://zh.wikipedia.org/wiki/PowerDNS "wikilink")[DNSDist也宣布在其最新的](https://zh.wikipedia.org/wiki/DNSDist "wikilink")1.3.0版本中添加了对DNS over TLS的支持。\[8\][BIND](../Page/BIND.md "wikilink")用户也可以通过stunnel代理提供DNS over TLS服务。\[9\]

## 公共DNS服务器列表

已有一些公共DNS服务提供商提供免費**DNS over TLS**服务器，参见下表。

<table>
<caption>提供 DNS over TLS 的廠家</caption>
<thead>
<tr class="header">
<th><p>提供商</p></th>
<th><p>IP</p></th>
<th><p>封锁</p></th>
<th><p>特性</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/CloudFlare.md" title="wikilink">Cloudflare</a></p></td>
<td><p>1.1.1.1<br />
1.0.0.1<br />
2606:4700:4700::1111<br />
2606:4700:4700::1001</p></td>
<td><p>无</p></td>
<td><p>DNS over TLS 于 853 端口、[10]DNSSEC认证</p></td>
</tr>
<tr class="even">
<td><p>Google</p></td>
<td><p>8.8.8.8 8.8.4.4</p></td>
<td><p>无</p></td>
<td><p>DNS over TLS 于 853 端口。</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Quad9" title="wikilink">Quad9</a></p></td>
<td><p>9.9.9.9<br />
149.112.112.112<br />
2620:fe::fe<br />
2620:fe::9</p></td>
<td><p>恶意域名</p></td>
<td><p>DNS over TLS 于 853 端口、[11]DNSSEC认证</p></td>
</tr>
<tr class="even">
<td><p><strong><a href="https://zh.wikipedia.org/wiki/CleanBrowsing" title="wikilink">CleanBrowsing</a></strong></p></td>
<td><p>185.228.168.168<br />
185.228.168.169<br />
2a0d:2a00:1::<br />
2a0d:2a00:2::</p></td>
<td><p>成人内容</p></td>
<td><p>DNS over TLS 于 853 端口、[12]DNSSEC认证</p></td>
</tr>
<tr class="odd">
<td><p>CleanBrowsing</p></td>
<td><p>185.228.168.9 185.228.169.9</p>
<p>2a0d:2a00:1::2</p>
<p>2a0d:2a00:2::2</p></td>
<td><p>惡意域名</p></td>
<td><p>DNS over TLS 于 853 端口、DNSSEC 認證</p></td>
</tr>
<tr class="even">
<td><p><strong>Quadrant Information Security</strong></p></td>
<td><p>12.159.2.159 2001:1890:140c::159</p></td>
<td><p>無</p></td>
<td><p>DNS over TLS 于 853 端口、DNSSEC 認證</p></td>
</tr>
</tbody>
</table>

## 另请参阅

  - [DNS over HTTPS](../Page/DNS_over_HTTPS.md "wikilink")
  - [DNSCrypt](../Page/DNSCrypt.md "wikilink")

## 参考文献

[Category:含有缺少标题的引用的页面](https://zh.wikipedia.org/wiki/Category:含有缺少标题的引用的页面 "wikilink") [Category:含有裸露网址的引用的页面](https://zh.wikipedia.org/wiki/Category:含有裸露网址的引用的页面 "wikilink") [Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink") [Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink") [Category:域名](https://zh.wikipedia.org/wiki/Category:域名 "wikilink") [Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink") [Category:网络小作品](https://zh.wikipedia.org/wiki/Category:网络小作品 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.  缺少或`|title=`为空 ([帮助](https://zh.wikipedia.org/wiki/Help:引文格式1错误#citation_missing_title "wikilink"))
9.
10.
11.
12.