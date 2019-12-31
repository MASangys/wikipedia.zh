> 本文内容由[UDP tracker](https://zh.wikipedia.org/wiki/UDP_tracker)转换而来。


**UDP tracker**[协议是一个高性能](../Page/网络传输协议.md "wikilink")、低开销的[BitTorrent tracker协议](https://zh.wikipedia.org/wiki/BitTorrent_tracker "wikilink")。它使用无状态的[用户数据报协议](../Page/用户数据报协议.md "wikilink")（UDP）而非通过[传输控制协议](../Page/传输控制协议.md "wikilink")（TCP）的[HTTP传输与Tracker通信的数据](https://zh.wikipedia.org/wiki/HTTP "wikilink")，且数据采用自定义的二进制格式而不是BitTorrent标准的用于大多数通信的[bencode算法](https://zh.wikipedia.org/wiki/bencode "wikilink")。

此协议的[URL为下列格式](../Page/统一资源定位符.md "wikilink")：<udp://tracker:port>。

## 与HTTP Tracker的比较

UDP tracker有着更好的优化，降低了跟踪服务器的运行压力。两种跟踪器均不影响文件传输速度。

## 实现该协议的客户端

  - [比特彗星](https://zh.wikipedia.org/wiki/比特彗星 "wikilink")

  -
  -
  - [比特精灵](../Page/比特精灵.md "wikilink")

  - [Deluge](../Page/Deluge.md "wikilink")

  - [网际快车](https://zh.wikipedia.org/wiki/网际快车 "wikilink")

  - [KTorrent](../Page/KTorrent.md "wikilink")

  -
  -
  - [qBittorrent](https://zh.wikipedia.org/wiki/qBittorrent "wikilink")

  - [rtorrent](https://zh.wikipedia.org/wiki/RTorrent "wikilink")（实现有）

  - [µTorrent](https://zh.wikipedia.org/wiki/µTorrent "wikilink")\[1\]

  -
  - [Vuze](../Page/Vuze.md "wikilink")

  -
  - [MLDonkey](../Page/MLDonkey.md "wikilink")

  - [Transmission](../Page/Transmission.md "wikilink")

  -
## 批评

  - 有限的[IPv6](../Page/IPv6.md "wikilink")支持（协议为IP地址指定了一个32位整数，支持[伪报头的](../Page/用户数据报协议.md "wikilink")128位IPv6地址）。
  - 没有[索引站点爬取整个跟踪服务器的机制](../Page/BitTorrent_\(协议\).md "wikilink")。
      - 这可以由传统的TCP爬取机制支持，因此不是一个性能问题。
  - 没有跟踪服务器实施客户端限制的机制。
  - UDP tracker协议没有表明用户代理（user agent），而HTTP协议有。不过，在peer_id中编入user agent和version仍然适用。
  - 没有跟踪服务器发送警告消息的机制。
  - 没有压缩，尤其不易应对较大的宣告响应。

## 参考资料

<references />

[Category:BitTorrent](https://zh.wikipedia.org/wiki/Category:BitTorrent "wikilink")

1.