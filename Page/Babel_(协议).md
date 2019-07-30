Babel 是为 [互联网](../Page/网际协议.md "wikilink")[分组交换](../Page/分组交换.md "wikilink")网络 所制作的 [距离矢量路由协议](https://zh.wikipedia.org/wiki/距离矢量路由协议 "wikilink")。它被设计在无线mesh网络与有线网络下高效且可靠的工作。

Babel基于[目的地序的距离矢量的路由](https://zh.wikipedia.org/wiki/目的节点序列距离矢量协议 "wikilink") (DSDV)和[特设在需距离矢量的路由](../Page/AODV.md "wikilink") (AODV)还有 [Cisco](../Page/思科系统.md "wikilink")'s [加强内部网关由协议](../Page/加強型閘道間選徑協定.md "wikilink") (EIGRP)的设计思想，但使用不同的技术来避免环路生成。

Babel使用多种方式来计算动态跃点；默认情况下，它在有线网络下使用跳数，在无线网络下使用[期望传输次数](https://zh.wikipedia.org/wiki/期望传输次数 "wikilink")（ETX）的变体；也可以手动配置，来适配无线传输方式之间的差异 \[1\] 或自动计算链路延时并将其加入到跃点计算的条件中\[2\]。

Babel工作在 [IPv4](../Page/IPv4.md "wikilink") 和 [IPv6](../Page/IPv6.md "wikilink") 网络。 它已被称为是一个可靠且拥有快速收敛特性的协议。\[3\]\[4\]

Babel已有四个开源实现：

1.  FRR项目\[5\]
2.  一个在Python中的最小实现\[6\]
3.  Bird\[7\]
4.  Quagga\[8\]

在2015年十月，Babel被IETF家庭网络工作组选为推广实施协议，尽管仍在试验性。\[9\] 在2016年六月，IETF建立了一个工作组来制定Babel协议标准\[10\]。

## 参考文献

## 外部联系

  - [Babel —— 一个环路避免的距离矢量路由协议](https://www.irif.univ-paris-diderot.fr/~jch/software/babel/)
  - [J. Chroboczek (2011), The Babel Routing Protocol,RFC 6126](https://tools.ietf.org/html/rfc6126)

[Category:路由协议](https://zh.wikipedia.org/wiki/Category:路由协议 "wikilink") [Category:无线网络](https://zh.wikipedia.org/wiki/Category:无线网络 "wikilink")

1.  <https://tools.ietf.org/html/draft-chroboczek-babel-diversity-routing-01>
2.  Baptiste Jonglez and Juliusz Chroboczek. *A delay-based routing metric*. <http://arxiv.org/abs/1403.3488>
3.
4.
5.
6.
7.
8.  D. Ovsienko, " [Babel HMAC Cryptographic Authentication](http://tools.ietf.org/html/rfc7298) "
9.
10.