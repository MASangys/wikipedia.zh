Polipo是一个轻量级的[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[代理服务器](../Page/代理服务器.md "wikilink")。可以实现[HTTP和](https://zh.wikipedia.org/wiki/HTTP "wikilink")[SOCKS代理](../Page/SOCKS.md "wikilink")。为了最小化延迟，Polipo[管线化多个资源请求](https://zh.wikipedia.org/wiki/HTTP管線化 "wikilink")，在同一个[TCP/IP连接上](../Page/传输控制协议.md "wikilink")[多路复用](https://zh.wikipedia.org/wiki/时分多路复用 "wikilink")。\[1\]Polipo具有[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")
1.1兼容，支持[IPv4](../Page/IPv4.md "wikilink")、[IPv6](../Page/IPv6.md "wikilink")，流量过滤和隐私增强。Polipo是[自由软件](../Page/自由软件.md "wikilink")\[2\]，使用[MIT许可证](https://zh.wikipedia.org/wiki/MIT许可证 "wikilink")。\[3\]

## 设计

Polipo被设计为用于个人网页缓存或网页快照，在许多用户中共享以加速网络访问。\[4\]\[5\]Polipo快速、轻量、小型，当系统资源不足以运行较大代理时，这非常有用。因此，Polipo已被用于[OpenWrt的网络共享工具](../Page/OpenWrt.md "wikilink")。

## 图形用户界面包装

Polipo具有一个专用的[命令行界面](../Page/命令行界面.md "wikilink")（CLI）的应用程序，需要使用键盘键入命令，并将参数存储在配置文件中。作为替代，Polipo允许自动化和非交互地运行，例如使用[Shell脚本](https://zh.wikipedia.org/wiki/Shell "wikilink")。通过[图形用户界面用户可以直观地和Polipo进行](../Page/图形用户界面.md "wikilink")[交互](../Page/人机交互.md "wikilink")
, 通过图标和视觉指示器开始和停止运行、改变工作参数。

一些独立的图形界面项目：

  - Solipo\[6\] - Windows上的图形界面包装
  - Dolipo\[7\] - OS X上的图形界面包装
  - Polipoid\[8\] - Android上的图形界面包装

## 特性

快速、轻量、小内存占用的代理服务器使用许多技术：\[9\]

  - Polipo将客户端请求升级到HTTP/1.1，即使请求为HTTP/1.0格式。
  - Polipo能够很好地进行HTTP 1.1管线化，可降低网络通讯延迟。
  - Polipo使网页浏览更快，或者至少有更短的延迟。
  - Polipo缓存下载的起始段，使用Range请求在以后完成，以防中断。
  - Polipo在一定程度上能代替过滤、增强隐私的代理，例如[Privoxy或者](../Page/Privoxy.md "wikilink")[WWWOFFLE](https://zh.wikipedia.org/wiki/WWWOFFLE "wikilink")。它能够拦截或重定向请求，检查HTTP请求头和引用信息。\[10\]
  - Polipo同时支持IPv4和IPv6，所以Polipo可作为IPv4和IPv6网络之间的桥梁。
  - Polipo支持[SOCKS 4和SOCKS 5协议](../Page/SOCKS.md "wikilink")。
  - Polipo用作[网页快照](https://zh.wikipedia.org/wiki/网页快照 "wikilink")。

### 限制

Polipo在32位系统上只能处理2G或4G以下的文件，在处理大型请求时会导致问题。

## 参见

  - [反向代理](../Page/反向代理.md "wikilink")
  - [網頁伺服器比較](../Page/網頁伺服器比較.md "wikilink")

## 外部链接

  - [Polipo官方网站](http://www.pps.jussieu.fr/~jch/software/polipo/)
  - [Polipo开发日志](https://web.archive.org/web/20150502230823/https://gitorious.org/polipo)

## 参考资料

[Category:代理服务器](https://zh.wikipedia.org/wiki/Category:代理服务器 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:反向代理](https://zh.wikipedia.org/wiki/Category:反向代理 "wikilink")
[Category:Unix互联网软件](https://zh.wikipedia.org/wiki/Category:Unix互联网软件 "wikilink")
[Category:正向代理](https://zh.wikipedia.org/wiki/Category:正向代理 "wikilink")

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