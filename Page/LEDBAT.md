> 本文内容由[LEDBAT](https://zh.wikipedia.org/wiki/LEDBAT)转换而来。


**低额外时延背景传输**（，简称**LEDBAT**）是一种在[互联网](../Page/互联网.md "wikilink")上快速传输而不拥塞网络的方法。\[1\]LEDBAT由Stanislav Shalunov发明\[2\]\[3\]，并被[苹果公司用于软件更新](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")，和被[BitTorrent用于大多数传输](../Page/BitTorrent_\(协议\).md "wikilink")。\[4\]该算法预计被13%–20%的互联网流量使用。\[5\]\[6\]LEDBAT是一个基于[拥塞控制](../Page/拥塞控制.md "wikilink")的算法，它尽可能使用所有可用[带宽](../Page/带宽.md "wikilink")并限制[时延](../Page/时延.md "wikilink")增加；\[7\]\[8\]其测量单向时延，并在网络中使用LEDBAT流本身诱导网络的拥塞测量结果发生变化，从而做到拥塞控制。

## 设计目标

LEDBAT拥塞控制有如下目标：\[9\]

1.  使用所有可用带宽，在没有其他流量时维持低排队时延；
2.  限制因其他流量增加的排队时延；
3.  应快速让位给其他共享同一有限链路的标准[TCP](https://zh.wikipedia.org/wiki/TCP "wikilink")。

## 实现和部署

两个主要实现是BitTorrent的[uTP和苹果公司的TCP部分](../Page/Micro_Transport_Protocol.md "wikilink")。BitTorrent使用uTP处理大多数流量，并且代码在[开源许可证下可用](https://zh.wikipedia.org/wiki/开源许可证 "wikilink")。苹果公司将LEDBAT用于软件更新，因此[Mac OS X计算机和](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[iOS设备的大体积软件下载不会干扰正常的用户活动](https://zh.wikipedia.org/wiki/iOS "wikilink")；苹果公司也已将代码开源。\[10\]

## 例子

假设：

1.  发送方与接收方的时钟不同步
2.  发送方以固定速率发送

发送方每10个时钟周期发送5个数据包：10, 20, 30, 40, 50。单位是不重要的。接收方不仅接受此发送方的数据，还接收其他来源的数据。对于这5个被发送的数据包，接收方在下列时钟节点收到数据：112, 135, 176, 250, 326。因此第一阶段发送与接收方的单向时延如下：102, 115, 146, 210, 276。第二阶段（因单向时延改变后）：13 (115 - 102), 31, 64, 66。接收方将根据可能在增加的单向时延推断拥塞增加并相应地调整传输速率。

## 参考资料

[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")

1.  <http://www.wired.com/wiredenterprise/2013/06/open-garden/>
2.  [<http://tools.ietf.org/html/rfc6817>](https://zh.wikipedia.org/wiki/rfc:6817 "wikilink")
3.  By Tammy Parker, [Open Garden to enable channel bonding over Wi-Fi, 3G and 4G](http://www.fiercewireless.com/tech/story/open-garden-enable-channel-bonding-over-wi-fi-3g-and-4g/2012-12-10), December 10, 2012, Retrieved November 24, 2013
4.  [This Is How Your BitTorrent Downloads Move So Fast](http://www.fastcolabs.com/3014951/why-your-bittorrent-downloads-move-so-fast), July 29, 2013, Retrieved November 24, 2013
5.  [This Is How Your BitTorrent Downloads Move So Fast](http://www.fastcolabs.com/3014951/why-your-bittorrent-downloads-move-so-fast), July 29, 2013, Retrieved November 24, 2013
6.  By Gabe Stein, [Former BitTorrent Engineer Thinks He Can Fix Your Wi-Fi--For Good](http://www.fastcolabs.com/3014782/former-bittorrent-engineer-thinks-he-can-fix-your-wifi-for-good), July 24, 2013, Retrieved November 24, 2013
7.  [<http://tools.ietf.org/html/rfc6817>](https://zh.wikipedia.org/wiki/rfc:6817 "wikilink")
8.  BY ROBERT MCMILLAN, [THE INTERNET OF THINGS](http://www.wired.com/wiredenterprise/2013/06/open-garden/), July 21, 2013, Retrieved November 24, 2013
9.  [<http://tools.ietf.org/html/rfc6817>](https://zh.wikipedia.org/wiki/rfc:6817 "wikilink")
10. <https://opensource.apple.com/source/xnu/xnu-1699.32.7/bsd/netinet/tcp_ledbat.c>