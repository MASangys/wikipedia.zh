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
    `epoll()`<ref>{{cite web |url= |title= Comparing and Evaluating
    epoll, select, and poll Event Mechanisms |first1= Louay |last1=
    Gammo |first2= T

<!-- end list -->

1.  .
2.
3.
4.  .
5.  Gabriel Kerneis and Juliusz Chroboczek. [*Are events
    fast?*](http://www.pps.jussieu.fr/~jch/research/cpc-bench.pdf). PPS
    technical report, University of Paris 7. 2009.
6.  .