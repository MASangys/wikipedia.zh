</ref>|operating system=[Android](../Page/Android.md "wikilink")，[BSD
variants](../Page/BSD.md "wikilink")，[Linux](../Page/Linux.md "wikilink")，[OS
X及](https://zh.wikipedia.org/wiki/OS_X "wikilink")[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")|genre=[Web服务器](https://zh.wikipedia.org/wiki/Web服务器 "wikilink"),
[反向代理服务器](../Page/代理服务器.md "wikilink") |license=[Apache
2](https://zh.wikipedia.org/wiki/Apache_License "wikilink") |website=}}

**Caddy服务器**（或稱**Caddy Web**）是一个开源的，使用
[Golang](../Page/Go.md "wikilink") 编写，支持
[HTTP/2](https://zh.wikipedia.org/wiki/HTTP/2 "wikilink") 的 Web 服务端。它使用
[Golang](../Page/Go.md "wikilink") 标准库提供
[HTTP](../Page/超文本传输协议.md "wikilink") 功能。

Caddy 一个显著的特性是默认启用
[HTTPS](../Page/超文本传输安全协议.md "wikilink")。\[1\]\[2\]它是第一个无需额外配置即可提供
[HTTPS](../Page/超文本传输安全协议.md "wikilink") 特性的 Web 服务器。\[3\]

作者 Matt Holt 于 2014 年 12 月开始开发 Caddy ，并于 2015 年 4 月发布第一个版本。\[4\]
在发布后的一年里，它的下载量超过了 20000 次，并在
[GitHub](../Page/GitHub.md "wikilink") 上获得了 4500 关注。\[5\]

Caddy 支持各种 Web 技术，提供静态编译的二进制文件，支持
[i386](../Page/Intel_80386.md "wikilink")、[amd64](../Page/X86-64.md "wikilink")
和 [ARM](https://zh.wikipedia.org/wiki/ARM架構 "wikilink") 架构上的
[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[Mac](../Page/MacOS.md "wikilink")、[Linux](../Page/Linux.md "wikilink")、[Android](../Page/Android.md "wikilink")
和 [BSD](../Page/BSD.md "wikilink") 操作系统。

## 功能

Caddy 可以提供各种网站技术，它也可以作为反向代理和负载均衡器。Caddy 的大部分功能都实现为中间件，并通过 Caddyfile
中的指令（用于配置 Caddy 的文本文件）进行控制。\[6\]

  - HTTP/1.1 (原始的HTTP) and
    [HTTP/2](https://zh.wikipedia.org/wiki/HTTP/2 "wikilink")
    (HTTPS的推荐连接方案)
  - [HTTPS](../Page/超文本传输安全协议.md "wikilink")，同时接受自动签发和手动管理
      - TLS 1.2 临时性支持（旧协议）\[7\]
      - [SNI](../Page/服务器名称指示.md "wikilink")
      - [OCSP证书交换验证](../Page/OCSP装订.md "wikilink")
  - [虚拟主机](../Page/虚拟主机.md "wikilink") (多个站点工作在单个端口上)\[8\]
  - 原生[IPv4和](../Page/IPv4.md "wikilink")[IPv6支持](../Page/IPv6.md "wikilink")
  - 静态文件分发
  - 平滑重启/重载
  - 反向代理 (HTTP或[WebSocket](../Page/WebSocket.md "wikilink"))
  - 负载均衡和健康性检查
  - [FastCGI支持](../Page/FastCGI.md "wikilink")\[9\]\[10\]
  - 配置文件模板
  - [Markdown渲染](https://zh.wikipedia.org/wiki/Markdown "wikilink")
  - [CGI通过WebSocket](../Page/通用网关接口.md "wikilink")
  - [Gzip压缩](../Page/Gzip.md "wikilink")
  - 简单服务器鉴权
  - URL重写
  - 重定向
  - 文件浏览服务
  - 访问日志
  - 实验性[QUIC支持](https://zh.wikipedia.org/wiki/QUIC "wikilink")

## 安全

Caddy
免于很多已知的 [CVEs](https://zh.wikipedia.org/wiki/通用漏洞披露 "wikilink") 攻击 （包括
[Heartbleed](../Page/心脏出血漏洞.md "wikilink")， DROWN， POODLE，
和 [BEAST](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")）\[11\]，另外，
Caddy 使用 TLS_FALLBACK_SCSV 以防止协议降级攻击。

2015 年 6 月 2 日，版本 0.7.1 修复了 Caddy 简单服务器鉴权中间件中时间欺诈攻击的漏洞。\[12\]

关于协议和密码套件，Caddy 使用 TLS 1.0-1.2，并且倾向于 ECDHE ECDSA 与
[AES256](../Page/高级加密标准.md "wikilink")-GCM-SHA384，支持十几种不同的加密方式。[Cloudflare](https://zh.wikipedia.org/wiki/Cloudflare "wikilink")
已经使用了 Caddy 作为 TLS 1.3 的实现方案。\[13\]

传统的特权降级无法工作在 Golang 程序上。\[14\] 为了绑定低于 1024 的端口， Caddy 必须使用 root 账户运行
(不建议) 或通过 `setcap` 给予低位端口使用权限 (建议的) 。
并且，在将来的版本中会尝试使用非特级子进程运行。\[15\]

Caddy 没有自动启动 [HTTP Strict Transport
Security](../Page/HTTP严格传输安全.md "wikilink")，推荐通过 Caddy 的
`header` 配置启用 HSTS。\[16\]

### 自动签发 HTTPS

Caddy 默认通过检查域名来启用 HTTPS (通过 ACME protocol 检查域名并签发证书)， 并且重定向 HTTP 请求到
HTTPS。\[17\] 它在启动期间根据需要签发证书，并在服务器的使用期间自动重签发。 [Let's
Encrypt](../Page/Let's_Encrypt.md "wikilink") 是默认的证书颁发机构，但用户可以自定义所使用的
ACME CA，这在测试配置时是必要的。在 2016 年第一季度， 有百分之二的 Let's Encrypt 证书是由 Caddy 签发的。

一个可选的配置允许 Caddy 在需要时签发一个证书 "按需 TLS"\[18\] 使用这种方案时，用户必须指定可通过该方案配置的证书数量。 当
Caddy 收到一个没有配置证书的请求时， 它会自动通过 ACME 签发并配置， 然后将证书存储于内存和硬盘。
这个过程通常需要几秒钟的时间，并且受到限制。

当使用 TLS， Caddy 会自动切换会话密钥以保证安全性。\[19\]

## 參考資料

## 外部連結

  -
  -
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:自由网络服务器软件](https://zh.wikipedia.org/wiki/Category:自由网络服务器软件 "wikilink")
[Category:反向代理](https://zh.wikipedia.org/wiki/Category:反向代理 "wikilink")

1.
2.
3.
4.
5.  [Is Caddy Free?](https://caddyserver.com/blog/is-caddy-free)
6.
7.
8.
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.