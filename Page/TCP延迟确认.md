**TCP延迟确认**（）是[传输控制协议](../Page/传输控制协议.md "wikilink")的一些实现所使用的技术，用于改善[网络性能](../Page/网络性能.md "wikilink")。该技术可以在本质上将若干[ACK报文组合在一起成为单个报文](../Page/传输控制协议.md "wikilink")，从而减少协议开销。 但是，在某些情况下，该技术可能会降低应用程序性能。

## 方法和优点

如[RFC1122](https://tools.ietf.org/html/rfc1122)所说，一个主机可以延迟发送ACK报文高达500毫秒。 此外，以每完整的数据包为一段，ACK报文必须每两段发送一次。

延迟的ACK可以使应用程序有机会更新[TCP接收窗口](../Page/传输控制协议.md "wikilink") ，也可以立即发送ACK报文。 对于某些协议（如[Telnet](../Page/Telnet.md "wikilink")） ，通过将ACK、窗口更新和响应数据组合到一个段中，可以将服务器发送的响应数量减少3倍。 \[1\]

## 问题

延迟ACK引入的额外等待时间在与某些应用程序和配置交互时可能导致进一步的延迟。如果发送方正在使用[Nagle的算法](../Page/納格算法.md "wikilink")，则数据将由发送方排队，直到收到ACK。如果发送方未发送足够的数据来填充[最大段大小](https://zh.wikipedia.org/wiki/Maximum_segment_size "wikilink")（例如，如果它执行两次小的写操作，然后执行阻塞读取），则传输将暂停到ACK延迟超时。Linux内核从版本2.4.4开始支持禁用延迟ACK的`TCP_QUICKACK`套接字选项。 \[2\]由此可以得知，如果发送方的套接字层的数据少于一个完整数据包，根据Nagle的算法，在收到已发送数据的ACK之前，是不会发送这段数据的。 与此同时，接收方方的应用层在获取所有数据之前不会发送响应。如果接收方启用了延迟的ACK，则它的套接字层将不会发送ACK，直到达到超时。

如果应用程序以较小的块发送数据并期望定期ACK，则可能发生这种负面交互。 为防止此延迟，应用程序层需要连续发送数据而无需等待ACK。 或者，Nagle的算法可能被发送方的应用程序禁用。

## 参考

<references group="" responsive="">

</references>

[Category:TCP协议](https://zh.wikipedia.org/wiki/Category:TCP协议 "wikilink") [Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.  <http://tools.ietf.org/html/rfc1122#page-96>
2.