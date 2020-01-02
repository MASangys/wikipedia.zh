> 本文内容由[TCP Cookie 传输](https://zh.wikipedia.org/wiki/TCP_Cookie_传输)转换而来。


**TCP Cookie 传输**（[英文](https://zh.wikipedia.org/wiki/英文 "wikilink")：**TCP C**ookie **T**ranscations）是一个实验性的[传输控制协议](../Page/传输控制协议.md "wikilink")拓展，在RFC 6013中定义，用于保护TCP连接免于[拒绝服务攻击](https://zh.wikipedia.org/wiki/拒绝服务攻击 "wikilink")，例如通过[SYN Flood和第三方的恶意连接中止耗尽目标资源](https://zh.wikipedia.org/wiki/SYN_Flood "wikilink")。\[1\]不像原有的 [SYN cookies](https://zh.wikipedia.org/wiki/SYN_cookies "wikilink") 方法，\[2\] TCPCT 不会和其它 TCP 拓展冲突, 但是要求客户端（发起者）和服务器（响应者）都支持这一拓展。\[3\]

开发 这个拓展的直接原因是 [DNSSEC](https://zh.wikipedia.org/wiki/DNSSEC "wikilink") 协议的部署。在 DNSSEC 出现前，[DNS](https://zh.wikipedia.org/wiki/DNS "wikilink") 请求主要使用小型 [UDP](../Page/用户数据报协议.md "wikilink") 数据包，但是由于 DNSSEC 数据交换的大小和[IP分片的缺点](https://zh.wikipedia.org/wiki/IP分片 "wikilink")，UDP 对 DNSSEC 来说并不怎么现实。\[4\]\[5\]于是采用 DNSSEC 的请求会创建极多的短寿命 TCP 连接。\[6\]\[7\]

TCPCT 避免了服务器端资源耗尽，因为它在完成[三步握手之前不会申请](https://zh.wikipedia.org/wiki/三步握手 "wikilink")资源。除此之外，TCPCT 允许服务器在连接关闭之后立即释放内存，此时连接还在 TIME-WAIT 状态持续。\[8\]

2009 年十二月，TCPCT 支持被部分并入了 [Linux 内核](https://zh.wikipedia.org/wiki/Linux_内核 "wikilink")，\[9\]\[10\]但是在 2013 年五月被移除因为它从来没有被完整实现，还会造成性能消耗。\[11\]

## 参见

  - [SYN cookies](https://zh.wikipedia.org/wiki/SYN_cookies "wikilink")
  - [T/TCP](https://zh.wikipedia.org/wiki/T/TCP "wikilink")（事务 TCP）
  - [TCP 快速打开](https://zh.wikipedia.org/wiki/TCP_快速打开 "wikilink")

## 参考资料

[Category:TCP/IP](https://zh.wikipedia.org/wiki/Category:TCP/IP "wikilink") [Category:计算机网络安全](https://zh.wikipedia.org/wiki/Category:计算机网络安全 "wikilink")

1.
2.
3.
4.  B. Carpenter and S. Brim, “Middleboxes: Taxonomy and Issues,” RFC 3234, February 2002.
5.  P. Srisuresh and K. Egevang, “Traditional IP Network Address Translator (Traditional NAT),” RFC 3022, January 2001
6.
7.
8.
9.
10. <http://kernelnewbies.org/Linux_2_6_33#head-2c3c3a8cb87d5b7a6f1182e418abf071cda22c8c>
11.