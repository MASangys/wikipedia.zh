**lighttpd**（读作lighty）\[1\]
是一款以[BSD許可證](https://zh.wikipedia.org/wiki/BSD許可證 "wikilink")[开源的](../Page/开放源代码.md "wikilink")[網頁伺服器](../Page/網頁伺服器.md "wikilink")，在确保兼容常见标准、安全性及灵活性的情况下专为需要处理速度的环境优化。此软件起初为扬·克内施克对（如何同时并行处理10000条连接的问题）的[概念验证](https://zh.wikipedia.org/wiki/概念验证 "wikilink")，但随后受到了大众欢迎。\[2\]其名称是“light”（轻量）与[httpd的](https://zh.wikipedia.org/wiki/httpd "wikilink")[混成詞](../Page/混成詞.md "wikilink")。相較於其他的網頁伺服器，lighttpd僅需少量的内存及[CPU資源即可達到同樣的效能](../Page/中央处理器.md "wikilink")。

## 前言

相比其他网页服务器软件而言，lighthttpd的低内存占用、\[3\]低[CPU负载及速度优化](../Page/中央处理器.md "wikilink")\[4\]使其成为负载过重或提供静态媒体服务器的合适之选。lighttpd是一款[自由及开放源代码软件](../Page/自由及开放源代码软件.md "wikilink")，以[BSD许可证发布](../Page/BSD许可证.md "wikilink")。它可原生运行在[类Unix系统操作系统及](../Page/类Unix系统.md "wikilink")[Microsoft
Windows上](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。\[5\]

## 应用程序支持

lighttpd支持向外部程序开放[FastCGI](../Page/FastCGI.md "wikilink")、[SCGI及](https://zh.wikipedia.org/wiki/简单通用网关接口 "wikilink")[CGI](../Page/通用网关接口.md "wikilink")，允许以任意编程语言编写的程序与服务器通信。
[PHP作为一门特别流行的语言](../Page/PHP.md "wikilink")，其性能受到了广泛关注。lighttpd的FastCGI可配置为使用[操作码缓存的方式来有效支持PHP](../Page/PHP加速軟件.md "wikilink")（如[Alternative
PHP
Cache](https://zh.wikipedia.org/wiki/PHP加速軟件#Alternative_PHP_Cache "wikilink")）除此之外，lighttpd还获得了[Python](../Page/Python.md "wikilink")、[Perl](../Page/Perl.md "wikilink")、[Ruby和](../Page/Ruby.md "wikilink")[Lua社区的关注](../Page/Lua.md "wikilink")。lighttpd还支持和弹性[内存数据库系统](https://zh.wikipedia.org/wiki/内存数据库 "wikilink")。此软件是一款流行的、支持[Catalyst和](../Page/Catalyst.md "wikilink")[Ruby
on
Rails网页框架的网页服务器](../Page/Ruby_on_Rails.md "wikilink")，但并不支持[ISAPI](https://zh.wikipedia.org/wiki/ISAPI "wikilink")。

## 特性

  - 支持[负载均衡](../Page/负载均衡.md "wikilink")、[FastCGI](../Page/FastCGI.md "wikilink")、[SCGI及](https://zh.wikipedia.org/wiki/SCGI "wikilink")[HTTP代理服务器](../Page/代理服务器.md "wikilink")
  - 支援[`chroot`](../Page/Chroot.md "wikilink")
  - 网页服务器事件机制性能优化 – `select()`、`poll()`及`epoll()`\[6\]
  - 支持更高效的
  - 支持[URL条件重写](../Page/URL重寫.md "wikilink")（mod_rewrite）
  - 通过[OpenSSL可提供支持](../Page/OpenSSL.md "wikilink")[SNI的](../Page/服务器名称指示.md "wikilink")[TLS/SSL](../Page/傳輸層安全性協定.md "wikilink")
  - 透過[LDAP服务器認證](../Page/轻型目录访问协议.md "wikilink")
  - [RRDtool狀態輸出](https://zh.wikipedia.org/wiki/RRDtool "wikilink")
  - 基于规则的下载
  - [服务器端内嵌支持](https://zh.wikipedia.org/wiki/服务器端内嵌 "wikilink")（不包括服务侧CGI）\[7\]
  - 灵活的[虚拟主机](../Page/虚拟主机.md "wikilink")
  - 模块支持
  - 缓存元语言（现已被mod_magnet替代）\[8\] using the [Lua programming
    language](../Page/Lua.md "wikilink")
  - 对[WebDAV最小支持](../Page/基于Web的分布式编写和版本控制.md "wikilink")
  - Servlet（）支持（1.5.x版後）
  - 使用mod_compress及新版mod_deflate（1.4.42）的[HTTP压缩](../Page/HTTP压缩.md "wikilink")
  - 软件轻量（小于1[MB](https://zh.wikipedia.org/wiki/百萬位元組 "wikilink")）<ref>

</ref>

  - 仅有若干线程的单进程设计。开始每条连接时不产生新进程或新线程。

## 局限性

  - 低于1.4.40以下的版本不官方支持从CGI、FastCGI或代理发送大文件，\[9\]除非使用X-Sendfile。此问题已于lighttpd
    1.4.40版中解决。\[10\]
  - 不支持SPDY或[HTTP/2](https://zh.wikipedia.org/wiki/HTTP/2 "wikilink")

## 用法

lighttpd被多个业务量极大的网站使用，如[Bloglines和](../Page/Bloglines.md "wikilink")[xkcd](../Page/Xkcd.md "wikilink")。\[11\]在过去，[Meebo和](../Page/Meebo.md "wikilink")[YouTube也曾使用lighttpd](../Page/YouTube.md "wikilink")。\[12\][维基媒体基金会也在服务器上运行lighttpd](../Page/维基媒体基金会.md "wikilink")。\[13\]\[14\]\[15\]\[16\]

## 操作系统支持

  - lighttpd至少为下列平台定期构建和发布
  - Linux（在Fedora
    Core、SuSE、OpenSUSE、Debian、Ubuntu、Gentoo、PLD-Linux、OpenWRT等發行版中可直接使用[套件包](https://zh.wikipedia.org/wiki/軟體套件 "wikilink")）
  - 原始碼安裝（[CentOS等](../Page/CentOS.md "wikilink")）
  - BSD（FreeBSD、NetBSD、OpenBSD、Mac OS X）
  - SGIIRIX
  - Windows（[Cygwin](../Page/Cygwin.md "wikilink")、[MinGW等](../Page/MinGW.md "wikilink")）
  - Solaris
  - AIX

## 参考文献

## 另请参阅

  - [網頁伺服器比較](../Page/網頁伺服器比較.md "wikilink")

  -
  - 讨论客户端代理的[代理服务器](../Page/代理服务器.md "wikilink")

  - 讨论源站代理的[反向代理](../Page/反向代理.md "wikilink")

  - [Traffic
    Server](https://zh.wikipedia.org/wiki/Traffic_Server "wikilink")

  - 讨论基于主机的HTTP加速的

## 延伸阅读

  -
## 外部連結

  -
  - [lighttpd
    forum](https://web.archive.org/web/20051207024505/http://forum.lighttpd.net/)，lighttpd的論壇。

  - [lighty's
    life](http://blog.lighttpd.net/)，lighttpd的[網誌](../Page/網誌.md "wikilink")。

  - [1](http://www.oschina.net/p/lighttpd), Open Source China 的介绍

[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:自由网络服务器软件](https://zh.wikipedia.org/wiki/Category:自由网络服务器软件 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:Unix网络相关软件](https://zh.wikipedia.org/wiki/Category:Unix网络相关软件 "wikilink")
[Category:Linux网络服务器软件](https://zh.wikipedia.org/wiki/Category:Linux网络服务器软件 "wikilink")
[Category:Windows互联网软件](https://zh.wikipedia.org/wiki/Category:Windows互联网软件 "wikilink")

1.  .
2.
3.  .
4.  Gabriel Kerneis and Juliusz Chroboczek. [*Are events
    fast?*](http://www.pps.jussieu.fr/~jch/research/cpc-bench.pdf). PPS
    technical report, University of Paris 7. 2009.
5.  .
6.
7.  [lighttpd - Bug \#1101: SSI include virtual does not run
    cgi](http://redmine.lighttpd.net/issues/show/1101) – lighty labs
8.  <http://redmine.lighttpd.net/projects/lighttpd/wiki/Docs:ModMagnet>
9.
10.
11.
12.
13.
14.
15.
16.