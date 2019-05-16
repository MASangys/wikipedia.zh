**SYN cookie** 是一种用于阻止 [SYN flood](../Page/SYN_flood.md "wikilink")
攻击的技术。这项技术的主要发明人 [Daniel J.
Bernstein](https://zh.wikipedia.org/wiki/Daniel_J._Bernstein "wikilink")
将 SYN cookies 定义为“TCP
服务器进行的对开始[TCP数据包序列数字的特定选择](../Page/传输控制协议.md "wikilink")”。举例来说，SYN
Cookies 的应用允许服务器当 SYN 队列被填满时避免丢弃连接。相反，服务器会表现得像 SYN 队列扩大了一样。服务器会返回适当的
[SYN+ACK](https://zh.wikipedia.org/wiki/SYN+ACK "wikilink") 响应，但会丢弃 SYN
队列条目。如果服务器接收到客户端随后的ACK响应，服务器能够使用编码在 TCP 序号内的信息重构 SYN 队列条目。

## 实现

发起一个 TCP 连接时，客户端将一个 TCP SYN 包发送给服务器。作为响应，服务器将 TCP SYN + ACK
包返回给客户端。此数据包中有一个[序号](https://zh.wikipedia.org/wiki/传输控制协议#.E5.BA.8F.E5.88.97.E5.8F.B7.E5.92.8C.E7.A1.AE.E8.AE.A4 "wikilink")（sequence
number，TCP头中的第二个32 bit），它被 TCP 用来重新组装数据流。根据 TCP
规范，由端点发送的第一个序号可以是由该端点决定的任何值。SYN
Cookies 是根据以下规则构造的初始序号：

  - 令 **t** 为一个缓慢递增的时间戳（通常为
    [`time()`](https://zh.wikipedia.org/wiki/time.h "wikilink")`
     `[`>>`](https://zh.wikipedia.org/wiki/位操作#逻辑移位 "wikilink")`  6 `，提供
    64 秒的解析度）；
  - 令 **m** 为服务器会在 SYN
    队列条目中存储的[最大分段大小](https://zh.wikipedia.org/wiki/最大分段大小 "wikilink")（maximum
    segment size，简称为 MSS）；
  - 令 **s**
    为一个加密[散列函数对服务器和客户端各自的](https://zh.wikipedia.org/wiki/散列算法 "wikilink")
    IP 地址和端口号以及 **t** 进行运算的结果。返回得到的数值 **s** 必须是一个24位值。

初始 TCP 序号，也就是所谓的 *SYN cookie*，按照如下算法得到：

  - 头五位：**t** [mod](https://zh.wikipedia.org/wiki/同余 "wikilink") 32；
  - 中三位：**m** 编码后的数值；
  - 末24位：**s** 本身；

根据 TCP 规范，当客户端发回 TCP ACK 包给服务器以响应服务器的 SYN + ACK
包时，客户端必须使用由服务器发送的初始序号加1作为数据包中的。服务器接着从确认号中减去
1 以便还原向客户端发送的原始 SYN Cookie。

接下来服务器进行以下检查：

  - 根据当前的时间以及 **t** 来检查连接是否过期。
  - 重新计算 **s** 来确认这是不是一个有效的 SYN Cookie。
  - 从 3 位编码中解码 **m**，以便之后用来重建 SYN 队列条目。在此之后，连接照常进行。

## 缺陷

SYN Cookies 的使用不与任何协议定义冲突，照理来说它该和所有的 TCP 实现兼容。然而，当 SYN Cookies
使用的时候，会发生两种值得注意的变化：首先，服务器只能编码八种 MSS 数值，因为只有 3
位二进制空间可用。其次，这个服务器必须拒绝所有的 [TCP
选用项](https://zh.wikipedia.org/wiki/传输控制协议#TCP封包結構 "wikilink")，例如大型窗口和时间戳，<span title="because the server discards the SYN queue entry where that information would otherwise be stored.">因为服务器会在信息被用其他方式存储时丢弃
SYN 队列条目。 </span>\[1\]

尽管这些限制将不可避免地导致一个不如最佳的体验，它们的效果很少被客户端注意到——这些改变只在被攻击时值得注意。在这样的情况下，牺牲 TCP
选项来保护连接一般被认为是合乎情理的。

[Linux内核](../Page/Linux内核.md "wikilink") 从 2.6.26 版本开始为 TCP
选用项加入了有限的支持，通过把它们编码在时间戳内实现。\[2\]

较新的 [TCP Cookie 传输](../Page/TCP_Cookie_传输.md "wikilink")（TCPCT）标准被设计用来克服
SYN Cookies 的这些问题，并且在各种方面改进这套机制。不像 SYN Cookies，TCPCT 是一个 TCP
拓展并且要求两端点都支持 TCPCT。

## 安全考量

被设置为允许所有**出站**连接但对**入站**连接有限制（例如在 Web 服务器上只允许 80
端口）的简单[防火墙一般是这样实现的](../Page/防火墙.md "wikilink")：只阻断不必要端口的
SYN 请求。如果 SYN Cookies 被启动了，应当小心以保证攻击者不能使用伪造 ACK、尝试随机序列号的方式来绕过这样的防火墙。因此
SYN cookies 应该按照**每个端口单独处理**的方式来调节开关，这样的话一个公共端口上的 SYN Cookies
并不会在一个私有端口上被认可。\[3\]

## 历史

[Daniel J.
Bernstein](https://zh.wikipedia.org/wiki/Daniel_J._Bernstein "wikilink")
和 [Eric Schenk](https://zh.wikipedia.org/wiki/Eric_Schenk "wikilink") 于
1996 年九月创造了这个技术。[Jeff
Weisberg](https://zh.wikipedia.org/wiki/Jeff_Weisberg "wikilink")
在一个月后发布了最早的实现（在 [SunOS](../Page/SunOS.md "wikilink")
上），[Eric
Schenk](https://zh.wikipedia.org/wiki/Eric_Schenk "wikilink") 随后在 1997
年二月发布了他的 [Linux](../Page/Linux.md "wikilink") 实现（目前的实现使用，例如
[net.ipv4.tcp_syncookies](http://www.frozentux.net/ipsysctl-tutorial/ipsysctl-tutorial.html#AEN485)）。

## 参见

  - [TCP Cookie 传输](../Page/TCP_Cookie_传输.md "wikilink")

## 参考资料

  - [D. J. Bernstein's own explanation of SYN
    cookies](http://cr.yp.to/syncookies.html)

<references/>

[Category:计算机网络安全](https://zh.wikipedia.org/wiki/Category:计算机网络安全 "wikilink")
[Category:TCP/IP](https://zh.wikipedia.org/wiki/Category:TCP/IP "wikilink")

1.  [1](http://cr.yp.to/syncookies/archive), cr.yp.to September 1996
2.  Patrick McManus, [Improving
    Syncookies](http://lwn.net/Articles/277146/), lwn.net April 2008
3.