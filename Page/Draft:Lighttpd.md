**lighttpd** (pronounced "lighty")\[1\] is an open-source [web
server](../Page/網頁伺服器.md "wikilink") optimized for speed-critical
environments while remaining standards-compliant, secure and flexible.
It was originally written by Jan Kneschke as a
[proof-of-concept](https://zh.wikipedia.org/wiki/概念验证 "wikilink") of the
 – how to handle 10,000 connections in parallel on one server,\[2\] but
has gained worldwide popularity.\[3\] Its name is a
[portmanteau](../Page/混成詞.md "wikilink") of "light" and "".

## Premise

The low memory footprint (compared to other web servers),\[4\] small
[CPU](../Page/中央处理器.md "wikilink") load and speed optimizations\[5\]
make lighttpd suitable for servers that are suffering load problems, or
for serving static media separately from dynamic content. lighttpd is
[free and open-source software](../Page/自由及开放源代码软件.md "wikilink") and is
distributed under the [BSD
license](https://zh.wikipedia.org/wiki/BSD_license "wikilink"). It runs
natively on [Unix-like](../Page/类Unix系统.md "wikilink") operating
systems, as well as [Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink").\[6\]

## Application support

lighttpd supports the [FastCGI](../Page/FastCGI.md "wikilink"),
[SCGI](../Page/简单通用网关接口.md "wikilink") and
[CGI](../Page/通用网关接口.md "wikilink") interfaces to external
programs, allowing web applications written in any programming language
to be used with the server. As a particularly popular language,
[PHP](../Page/PHP.md "wikilink") performance has received special
attention. Lighttpd's FastCGI can be configured to support PHP with
[opcode caches](../Page/PHP加速軟件.md "wikilink") (like ) properly and
efficiently. Additionally, it has received attention from its popularity
within the [Python](../Page/Python.md "wikilink"),
[Perl](../Page/Perl.md "wikilink"), [Ruby](../Page/Ruby.md "wikilink")
and [Lua](../Page/Lua.md "wikilink") communities. Lighttpd also supports
, the resilient [in-memory
database](https://zh.wikipedia.org/wiki/内存数据库 "wikilink")
system designed to build database-driven websites. It is a popular web
server for the [Catalyst](../Page/Catalyst.md "wikilink") and [Ruby on
Rails](../Page/Ruby_on_Rails.md "wikilink") web frameworks. Lighttpd
does not support
[ISAPI](https://zh.wikipedia.org/wiki/ISAPI "wikilink").

## Features

  - [Load balancing](../Page/负载均衡.md "wikilink")
    [FastCGI](../Page/FastCGI.md "wikilink"),
    [SCGI](../Page/简单通用网关接口.md "wikilink") and [HTTP
    proxy](../Page/代理服务器.md "wikilink") support
  - [`chroot`](../Page/Chroot.md "wikilink") support
  - Web server event mechanism performance – `select()`, `poll()`, and
    `epoll()`\[7\]
  - Support for more efficient  schemes like
    [`kqueue`](https://zh.wikipedia.org/wiki/Kqueue "wikilink") and
    [`epoll`](../Page/Epoll.md "wikilink")
  - Conditional [URL rewriting](../Page/URL重寫.md "wikilink")
    (mod_rewrite)
  - [TLS/SSL](../Page/傳輸層安全性協定.md "wikilink") with
    [SNI](../Page/服务器名称指示.md "wikilink") support, via
    [OpenSSL](../Page/OpenSSL.md "wikilink").
  - Authentication against an [LDAP](../Page/轻型目录访问协议.md "wikilink")
    server
  - [RRDtool](../Page/RRDtool.md "wikilink") statistics
  - Rule-based downloading with possibility of a script handling only
    authentication
  - [Server Side Includes](../Page/服务器端内嵌.md "wikilink") support (but
    not server-side CGI)\[8\]
  - Flexible [virtual hosting](../Page/虚拟主机.md "wikilink")
  - Modules support
  - Cache Meta Language (currently being replaced by mod_magnet)\[9\]
    using the [Lua programming language](../Page/Lua.md "wikilink")
  - Minimal [WebDAV](../Page/基于Web的分布式编写和版本控制.md "wikilink") support
  - Servlet () support (in versions 1.5.x and up)
  - [HTTP compression](../Page/HTTP压缩.md "wikilink") using mod_compress
    and the newer mod_deflate (1.4.42)
  - Light-weight (less than 1
    [MB](https://zh.wikipedia.org/wiki/百萬位元組 "wikilink"))<ref>

</ref>

  - Single-process design with only several threads. No processes or
    threads started per connection.

## Limitations

  - Versions below 1.4.40 do not officially support sending large files
    from CGI, FastCGI, or proxies\[10\] unless X-Sendfile is used. This
    limitation has been removed in lighttpd 1.4.40.\[11\]
  - No SPDY or [HTTP/2](https://zh.wikipedia.org/wiki/HTTP/2 "wikilink")
    support

## Usage

Lighttpd is used by a number of high-traffic websites, among them are
[Bloglines](../Page/Bloglines.md "wikilink") and
[xkcd](../Page/Xkcd.md "wikilink").\[12\] It was used in the past by
[Meebo](../Page/Meebo.md "wikilink") and
[YouTube](../Page/YouTube.md "wikilink").\[13\] The [Wikimedia
Foundation](../Page/维基媒体基金会.md "wikilink") also runs Lighttpd
servers.\[14\]\[15\]\[16\]\[17\]

## See also

  - [Comparison of web server software](../Page/網頁伺服器比較.md "wikilink")

  -
  - [Proxy server](../Page/代理服务器.md "wikilink") which discusses
    client-side proxies

  - [Reverse proxy](../Page/反向代理.md "wikilink") which discusses
    origin-side proxies

  - [Traffic
    Server](https://zh.wikipedia.org/wiki/Traffic_Server "wikilink")

  - which discusses host-based HTTP acceleration

## References

## Further reading

  -
## External links

  -
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:自由网络服务器软件](https://zh.wikipedia.org/wiki/Category:自由网络服务器软件 "wikilink")
[Category:Unix网络相关软件](https://zh.wikipedia.org/wiki/Category:Unix网络相关软件 "wikilink")
[Category:Web_server_software_for_Linux](https://zh.wikipedia.org/wiki/Category:Web_server_software_for_Linux "wikilink")
[Category:Windows_Internet_software](https://zh.wikipedia.org/wiki/Category:Windows_Internet_software "wikilink")

1.  .
2.
3.
4.  .
5.  Gabriel Kerneis and Juliusz Chroboczek. [*Are events
    fast?*](http://www.pps.jussieu.fr/~jch/research/cpc-bench.pdf). PPS
    technical report, University of Paris 7. 2009.
6.  .
7.
8.  [Lighttpd - Bug \#1101: SSI include virtual does not run
    cgi](http://redmine.lighttpd.net/issues/show/1101) – lighty labs
9.  <http://redmine.lighttpd.net/projects/lighttpd/wiki/Docs:ModMagnet>
10.
11.
12.
13.
14.
15.
16.
17.