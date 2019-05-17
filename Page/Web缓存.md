**Web缓存**（或**HTTP缓存**）是用于临时存储（[缓存](../Page/缓存.md "wikilink")）[Web文档](../Page/網頁.md "wikilink")（如[HTML页面和](../Page/網頁.md "wikilink")[图像](../Page/数字图像.md "wikilink")），以减少[服务器延迟的一种](https://zh.wikipedia.org/wiki/带宽_\(计算机\) "wikilink")[信息技术](../Page/信息技术.md "wikilink")。Web缓存系统会保存下通过这套系统的文档的副本；如果满足某些条件，则可以由缓存满足后续请求。\[1\]
Web缓存[系統既可以指](../Page/系統.md "wikilink")，也可以指计算机程序。

## 系统

Web缓存可以用于各种系统（从Web内容的传输方向来看）：

### 前向位置系统（接受者或客户端）

前向缓存是[Web服务器网络外部的缓存](../Page/網頁伺服器.md "wikilink")，例如在客户电脑、ISP或公司网络上。\[2\]
网络感知前向缓存就像一个前向缓存，但只缓存大量访问的项目。\[3\]
客户端（如[网页浏览器](../Page/网页浏览器.md "wikilink")）也可以存储网络内容以供重用。例如，如果按下后退按钮，则可以显示本地缓存版本的页面，而不是发送到Web服务器的新请求。位于客户端和服务器之间的[Web代理可以通过评估](../Page/代理服务器.md "wikilink")[HTTP头来选择是否存储网页内容](../Page/HTTP头字段.md "wikilink")。

### 反向位置系统（内容提供者或Web服务器端）

反向缓存位于一个或多个Web服务器和[Web应用的前端](../Page/网络应用程序.md "wikilink")，加速来自互联网的请求，\[4\]
从而减少Web服务器的高峰负载。[內容傳遞網路](../Page/內容傳遞網路.md "wikilink")（CDN）可以在整个网络的各个点上保留网页内容的副本。[搜索引擎也可能会缓存一个网站](https://zh.wikipedia.org/wiki/网络搜索引擎 "wikilink")；它提供了一种从最近停机的网站检索信息的方法，或者比点击直接链接更快地检索数据的方式。例如，[Google就是这么做的](../Page/Google搜索.md "wikilink")。Google搜索结果中可以找到缓存内容的链接。

## 缓存控制

[HTTP定义了三种控制缓存的基本机制](https://zh.wikipedia.org/wiki/HTTP "wikilink")：新鲜度，验证和失效。\[5\]

  - 新鲜度 :
    允许在不在源服务器上重新检查的情况下使用一个响应，并且可以由服务器和客户端来控制。例如，Expires响应头给出文档过期的日期，而Cache-Control:
    max-age指示告诉缓存该响应在多少秒内保持新鲜。
    验证 :
    可用于检查缓存的响应是否过时之后仍然有效。例如，若响应有一个Last-Modified头，缓存可以使用If-Modified-Since头来发出一个条件请求，来查看它是否已经改变。[ETag](../Page/HTTP_ETag.md "wikilink")（实体标签）机制还允许强弱验证。
    失效 :
    通常是另一个请求通过缓存的一个结果。例如，如果与缓存的响应关联的URL随后获得POST、PUT或DELETE请求，则缓存的响应将失效。

许多[CDN和网络设备制造商已经用动态缓存取代了这个标准的HTTP缓存控制](../Page/內容傳遞網路.md "wikilink")。

## 法律问题

1998年，[DMCA增加了](../Page/數字千年版權法.md "wikilink")[美国法典](../Page/美国法典.md "wikilink")（[17
U.S.C. §:
512](https://zh.wikipedia.org/wiki/Online_Copyright_Infringement_Liability_Limitation_Act "wikilink")）的规定，放弃追究以缓存为目的的系统运营商的版权责任。

## Web缓存软件

以下是专门的Web缓存服务器软件列表：

<table>
<thead>
<tr class="header">
<th><p>名称</p></th>
<th><p>操作系统</p></th>
<th><p>前向模式</p></th>
<th><p>反向模式</p></th>
<th><p>协议</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/Apache_HTTP_Server.md" title="wikilink">Apache HTTP Server</a></p></td>
<td><p>Windows, OS X, Linux, Unix, FreeBSD, Solaris, Novell NetWare, OS/2, TPF, OpenVMS and eComStation</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/aiScaler" title="wikilink">aiScaler</a> Dynamic Cache Control</p></td>
<td><p>Linux</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/ApplianSys" title="wikilink">ApplianSys CACHEbox</a></p></td>
<td><p>Linux</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Blue_Coat_Systems" title="wikilink">Blue Coat</a> ProxySG</p></td>
<td><p>SGOS</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Nginx.md" title="wikilink">Nginx</a></p></td>
<td><p><a href="../Page/Linux.md" title="wikilink">Linux</a>, <a href="../Page/BSD.md" title="wikilink">BSD variants</a>, <a href="../Page/MacOS.md" title="wikilink">OS X</a>, <a href="https://zh.wikipedia.org/wiki/Solaris_(消歧义)" title="wikilink">Solaris</a>, <a href="../Page/IBM_AIX.md" title="wikilink">AIX</a>, <a href="../Page/HP-UX.md" title="wikilink">HP-UX</a>, other <a href="../Page/类Unix系统.md" title="wikilink">*nix</a> flavors</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Microsoft_Forefront_Threat_Management_Gateway" title="wikilink">Microsoft Forefront Threat Management Gateway</a></p></td>
<td><p>Windows</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Polipo.md" title="wikilink">Polipo</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Microsoft_Windows" title="wikilink">Windows</a>, <a href="../Page/MacOS.md" title="wikilink">OS X</a>, <a href="../Page/Linux.md" title="wikilink">Linux</a>, <a href="../Page/OpenWrt.md" title="wikilink">OpenWrt</a>, <a href="../Page/FreeBSD.md" title="wikilink">FreeBSD</a></p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Squid_(软件).md" title="wikilink">Squid</a></p></td>
<td><p>Linux, Unix, Windows</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Traffic_Server" title="wikilink">Traffic Server</a></p></td>
<td><p>Linux, Unix</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Untangle" title="wikilink">Untangle</a></p></td>
<td><p>Linux</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Varnish_cache.md" title="wikilink">Varnish</a></p></td>
<td><p>Linux, Unix</p></td>
<td><p>(possible with a VMOD)</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/WinGate" title="wikilink">WinGate</a></p></td>
<td><p>Windows</p></td>
<td></td>
<td></td>
<td><p>/ Free for 3 users</p></td>
</tr>
<tr class="odd">
<td><p>Nuster</p></td>
<td><p>Linux| Linux, Unix</p></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 参见

  - [內容傳遞網路](../Page/內容傳遞網路.md "wikilink")（CDN）

  - [代理服务器](../Page/代理服务器.md "wikilink")

  -
## 注释

## 延伸阅读

  - Ari Luotonen, *Web Proxy Servers* (Prentice Hall, 1997)
  - Duane Wessels, *Web Caching* (O'Reilly and Associates, 2001).
  - Michael Rabinovich and Oliver Spatschak, *Web Caching and
    Replication* (Addison Wesley, 2001).

## 外部链接

  - Caching Tutorial for Web Authors and Webmasters
  - Web Caching and Content Delivery Resources
  - [Web
    Caching](http://www.visolve.com/squid/whitepapers/ViSolve_Web_Caching.pdf),
    Web caching in general with some references to SQUID

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink")
[Category:缓存](https://zh.wikipedia.org/wiki/Category:缓存 "wikilink")
[Category:代理服务器](https://zh.wikipedia.org/wiki/Category:代理服务器 "wikilink")

1.
2.
3.
4.
5.