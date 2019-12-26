**快速UDP網路連-{zh-hans:接;zh-hant:線}-**（，缩写：**QUIC**\[1\]）是一種實驗性的[網路傳輸協定](https://zh.wikipedia.org/wiki/網路傳輸協定 "wikilink")，位于[OSI模型](../Page/OSI模型.md "wikilink")的[傳輸層](https://zh.wikipedia.org/wiki/傳輸層 "wikilink")。由[Google](../Page/Google.md "wikilink")開發，在2013年實作。QUIC使用[UDP协议](../Page/用户数据报协议.md "wikilink")，它在兩個端點間建立連線，且支援[多路複用連線](https://zh.wikipedia.org/wiki/多路複用 "wikilink")。\[2\]在設計之初，QUIC希望能夠提供等同於[SSL/TLS層級的網路安全保護](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")，減少資料傳輸及建立連線時的延遲時間，雙向控制頻寬，以避免網路擁塞。Google希望使用這個協定來取代[TCP協定](../Page/传输控制协议.md "wikilink")，使網頁傳輸速度加快，計劃將QUIC提交至網際網路工程任務小組（[IETF](https://zh.wikipedia.org/wiki/IETF "wikilink")），讓它成為下一代的正式網路規範\[3\]。2015 年 6 月，QUIC的被正式提交至[互联网工程任务组](../Page/互联网工程任务组.md "wikilink")。\[4\]2018 年 10 月，互联网工程任务组 HTTP 及 QUIC 工作小组正式将基于 QUIC 协议的 HTTP () 重命名为 [HTTP/3](https://zh.wikipedia.org/wiki/HTTP/3 "wikilink") 以为确立下一代规范做准备。\[5\]

## 介绍

QUIC旨在提供几乎等同于TCP连接的[可靠性](https://zh.wikipedia.org/wiki/可靠性_\(计算机网络\) "wikilink")，但[延迟大大减少](https://zh.wikipedia.org/wiki/來回通訊延遲 "wikilink")。它主要通过两个理解[HTTP流量的行为来实现这一点](https://zh.wikipedia.org/wiki/HTTP "wikilink")。\[6\]

第一个变化是在连接建立期间大大减少。由于大多数HTTP连接都需要[TLS](https://zh.wikipedia.org/wiki/TLS "wikilink")，因此QUIC使协商[密钥和支持的协议成为初始](https://zh.wikipedia.org/wiki/傳輸層安全性協定#密钥交换和密钥协商 "wikilink")[握手过程的一部分](https://zh.wikipedia.org/wiki/握手_\(技术\) "wikilink")。 当客户端打开连接时，[服务器](../Page/服务器.md "wikilink")响应的[数据包包括将来的数据包](https://zh.wikipedia.org/wiki/数据包 "wikilink")[加密](../Page/加密.md "wikilink")所需的数据。这消除了TCP上的先连接并通过附加数据包协商安全协议的需要。其他协议可以以相同的方式进行服务，并将多个步骤组合到一个请求中。 然后，这些数据既可用于初始设置中的后续请求，也可用于未来的请求。\[7\]

QUIC使用UDP协议作为其基础，不包括[丢失恢复](https://zh.wikipedia.org/wiki/丢包 "wikilink")。相反，每个QUIC流是单独控制的，并且在QUIC级别而不是UDP级别重传丢失的数据。这意味着如果在一个流中发生错误，[协议栈](../Page/协议栈.md "wikilink")仍然可以独立地继续为其他流提供服务。 这在提高易出错链路的性能方面非常有用，因为在大多数情况下TCP协议通知数据包丢失或损坏之前可能会收到大量的正常数据，但是在纠正错误之前其他的正常请求都会等待甚至重发。 QUIC在修复单个流时可以自由处理其他数据，也就是说即使一个请求发生了错误也不会影响到其他的请求。\[8\]

QUIC包括许多其他更普通的更改，这些更改也可以优化整体延迟和[吞吐量](../Page/吞吐量.md "wikilink")。例如，每个数据包是单独加密的，因此加密数据时不需要等待部分数据包。 在TCP下通常不可能这样做，其中加密记录在[字节流中](https://zh.wikipedia.org/wiki/字节流 "wikilink")，并且协议栈不知道该流中的更高层边界。这些可以由运行在更上层的协议进行协商，但QUIC旨在通过单个握手过程完成这些。\[9\]

QUIC的另一个目标是提高网络切换期间的性能，例如当移动设备的用户从[WiFi热点切换到](../Page/Wi-Fi.md "wikilink")[移动网络时发生的情况](https://zh.wikipedia.org/wiki/移动网络 "wikilink")。 当这发生在TCP上时，一个冗长的过程开始了：每个现有连接一个接一个地，然后根据需要重新建立。期间存在较高延迟，因为新连接需要等待旧连接超时后才会建立。 为解决此问题，QUIC包含一个连接标识符，该标识符唯一地标识客户端与服务器之间的连接，而无论源[IP地址](../Page/IP地址.md "wikilink")是什么。这样只需发送一个包含此ID的数据包即可重新建立连接，因为即使用户的IP地址发生变化，原始连接ID仍然有效。\[10\]

QUIC在中实现，而不是在[操作系统内核中实现](../Page/内核.md "wikilink")。当数据在应用程序之间移动时，这通常会由于上下文切换而调用额外的开销。 但是在QUIC下协议栈旨在由单个应用程序使用，每个应用程序使用QUIC在UDP上托管自己的连接。最终差异可能非常小，因为整个[HTTP/2堆栈的大部分已经存在于应用程序](https://zh.wikipedia.org/wiki/HTTP/2 "wikilink")（或更常见的库）中。 将剩余部分放在这些库中，基本上是纠错，对HTTP/2堆栈的大小或整体复杂性几乎没有影响。\[11\]

QUIC允许更容易地进行未来更改，因为它不需要更改内核就可以进行更新。 QUIC的长期目标之一是添加[前向纠错和改进的](https://zh.wikipedia.org/wiki/前向纠错 "wikilink")[拥塞控制](../Page/拥塞控制.md "wikilink")。\[12\]

关于从TCP迁移到UDP的一个问题是TCP被广泛采用，并且互联网基础设施中的许多中间设备被调整为UDP速率限制甚至阻止UDP。 Google进行了一些探索性实验来描述这一点，发现只有少数连接存在此问题。\[13\]所以Chromium的网络堆栈同时打开QUIC和传统TCP连接，并在QUIC连接失败时以零延迟回退到TCP连接。\[14\]

### gQUIC与iQUIC

由Google创建并以QUIC的名称提交给IETF的协议与随后在IETF中创建的QUIC完全不同（尽管名称相同）。 最初的Google QUIC（也称为gQUIC）严格来说是通过加密UDP发送HTTP/2帧的协议，而IETF创建的QUIC是通用传输协议，也就是说HTTP以外的其他协议（如[SMTP](https://zh.wikipedia.org/wiki/SMTP "wikilink")、[DNS](https://zh.wikipedia.org/wiki/DNS "wikilink")、[SSH](../Page/Secure_Shell.md "wikilink")、[Telnet](../Page/Telnet.md "wikilink")、[NTP](../Page/網路時間協定.md "wikilink")）也可以使用它。重要的是要注意并记住其差异。 自2012年以来，Google在其服务及Chrome中使用的QUIC版本（直到2019年2月）为Google QUIC。随着时间的推移，它正在逐渐变得类似于IETF QUIC（也称为iQUIC）。

## 实现

### 客户端

[Google Chrome于](../Page/Google_Chrome.md "wikilink")2012年开始开发QUIC协议并且于[Chromium](../Page/Chromium.md "wikilink")版本 29 (2013年8月20日释出) 发布。QUIC协议在当前Chrome版本中被默认开启，活跃的会话列表在*<chrome://net-internals/#quic>*中可见。

### 服务端

截至2017年，有三种活跃维护中的实现。谷歌的服务器及谷歌发布的[原型服务器](https://code.google.com/p/chromium/codesearch#chromium/src/net/tools/quic/quic_server.cc)使用Go语言编写的[quic-go](https://github.com/lucas-clemente/quic-go)及[Caddy](../Page/Caddy.md "wikilink")的试验性QUIC支持。在2017年7月11日，LiteSpeed科技正式在他们的[负载均衡](../Page/负载均衡.md "wikilink")（[WebADC](https://www.litespeedtech.com/products/litespeed-web-adc)）及 LiteSpeed 服务器中支持QUIC。截止 17 年 12 月， 97.5%的使用 QUIC 协议的网站在 LiteSpeed 服务器中运行\[15\]。

另有几种不再维护的社区产品，基于Chromium实现并且减少使用依赖的[libquic](https://github.com/devsisters/libquic)、提供libquic的Go语言绑定的[goquic](https://github.com/devsisters/goquic)、打包为[Docker](../Page/Docker.md "wikilink")镜像的用来转换为普通HTTP请求的反向代理[quic-reverse-proxy](https://hub.docker.com/r/devsisters/quic-reverse-proxy/)。

## 参见

  - [HTTP/2](https://zh.wikipedia.org/wiki/HTTP/2 "wikilink")

  - [SPDY](../Page/SPDY.md "wikilink")

  - [-{zh-tw:串流控制傳輸協定; zh-cn:流控制传输协议;}-](../Page/流控制传输协议.md "wikilink")

  - [UDT](https://zh.wikipedia.org/wiki/UDT "wikilink")

  -
  - [三方交握](https://zh.wikipedia.org/wiki/握手_\(技术\) "wikilink")

## 参考资料

## 外部連結

  - [Chromium](../Page/Chromium.md "wikilink"): [QUIC, a multiplexed stream transport over UDP](https://www.chromium.org/quic)

  - [QUIC: Design Document and Specification Rationale](https://docs.google.com/document/d/1RNHkx_VvKWyWg6Lr8SZ-saqsQx7rFV-ev2jRFUoVD34/edit), Jim Roskind's original document (2012/2013)

  - : [HTTP/3 explained](https://http3-explained.haxx.se/en/)

  - [Linux Weekly News](../Page/LWN.net.md "wikilink"): [Connecting on the QUIC](https://lwn.net/Articles/558826/) (2013)

  - [QUIC:](https://www.ietf.org/proceedings/88/slides/slides-88-tsvarea-10.pdf), IETF-88 TSV Area Presentation (2013-11-07)

  - Chromium Blog: [Experimenting with QUIC](https://blog.chromium.org/2013/06/experimenting-with-quic.html) (2013)

  - [QUIC: next generation multiplexed transport over UDP](https://www.youtube.com/watch?v=hQZ-0mXFmk8) (Google Developers, 2014)

  - [HTTP over UDP: an Experimental Investigation of QUIC](http://c3lab.poliba.it/images/3/3b/QUIC_SAC15.pdf)

  - [Multipath QUIC](http://www.multipath-quic.org) (extension to QUIC)

  - [Innovating Transport with QUIC: Design Approaches and Research Challenges](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=7867726) (2017)

[Category:传输层协议](https://zh.wikipedia.org/wiki/Category:传输层协议 "wikilink") [Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink") [Category:Google軟體](https://zh.wikipedia.org/wiki/Category:Google軟體 "wikilink")

1.  [Innovating Transport with QUIC: Design Approaches and Research Challenges](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=7867726)，2017
2.  [MULTIPLEXED STREAM TRANSPORT OVER UDP](https://docs.google.com/document/d/1RNHkx_VvKWyWg6Lr8SZ-saqsQx7rFV-ev2jRFUoVD34/mobilebasic?pli=1)，Google
3.  [Google推動QUIC新協定，讓網頁瀏覽、影片播放更快速](http://www.techbang.com/posts/23287-google-quic-technology-so-online-fast)，T客邦，2015-04-22
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
14.
15.