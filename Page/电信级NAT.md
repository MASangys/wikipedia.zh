[缩略图](https://zh.wikipedia.org/wiki/File:CGN_IPv4.svg "fig:缩略图")
**电信级NAT**或**运营商级NAT**（**Carrier-grade
NAT**，缩写**CGN**），也称**大规模NAT**（**large-scale
NAT**，缩写**LSN**）是一种为[IPv4网络端点](../Page/IPv4.md "wikilink")（尤其是住宅网络）设计的方法，通过嵌入在网络运营商网络中的[网络地址转换](../Page/网络地址转换.md "wikilink")（NAT）设备，将已配置的[专用网络地址翻译到](../Page/专用网络.md "wikilink")[公网IPv4地址](../Page/IP地址.md "wikilink")，允许许多终端站点共享一个小型公共地址池。这将NAT功能及配置从客户端驻地转移到互联网服务提供商网络。

电信级NAT已被提议作为一种[IPv4位址枯竭的缓解方法](https://zh.wikipedia.org/wiki/IPv4位址枯竭 "wikilink")。\[1\]

电信级NAT的批评者批评以下几个方面：

  - 与任何形式的NAT一样，它损害。\[2\]
  - 它有显著的安全性、[可扩展性和](https://zh.wikipedia.org/wiki/可扩展性 "wikilink")[可靠性问题](https://zh.wikipedia.org/wiki/可靠性_\(计算机网络\) "wikilink")，因为其属性。
  - 它使保留记录供执法行动更加困难，除非也记录地址的翻译。
  - 它使托管服务变成不可能。
  - 当需要公网IP地址时（例如托管Web主机），它不解决IPv4地址耗尽问题。

CGN的一种使用场景可以描述为**NAT444**\[3\]，因为一些客户与公共服务器的连接将通过三个不同的IPv4寻址域：客户自己的私有网络，运营商的私有网络，以及公共互联网。

另一种CGN场景是[双栈精简版](../Page/IPv6转换机制.md "wikilink")（Dual-Stack
Lite，也称DS-Lite），其中运营商的网络使用[IPv6](../Page/IPv6.md "wikilink")，因此只需要两个IPv4寻址域。

## 共享地址空间

如果一个ISP部署CGN并使用RFC 1918地址空间给他们的用户，那么已经使用RFC
1918空间的客户设备存在停止工作的风险。原因是如果网络接口的内部与外部地址相同，路由和NAT将不工作。

这促使一些ISP在内制定策略，为CGN分配新的私有地址空间，但ARIN推迟它，直至[IETF实现策略表明这个问题不是典型的分配但是为技术目的保留](../Page/互联网工程任务组.md "wikilink")（根据RFC
2860）。

IETF创建了RFC 6598，详述了为ISP
CGN部署使用的共享地址空间，以及NAT设备可以处理在入站和出站接口上出现的相同地址。ARIN根据此分配的需要将空间返还给[IANA](../Page/互联网号码分配局.md "wikilink")。\[4\]分配的地址块为`100.64.0.0/10`。\[5\]

### 问题

  - 试图找出IPv4地址是否为公网的设备或软件必须更新以识别新的空间。
  - 为NAT设备分配更多私有IPv4地址空间可能会延长到IPv6的过渡。

## 缺点

电信级NAT通常会阻止ISP客户使用[端口映射](https://zh.wikipedia.org/wiki/端口映射 "wikilink")，因为[网络地址转换](../Page/网络地址转换.md "wikilink")（NAT）通常通过将网络中NAT设备的端口映射到外部接口的其他[端口来实现](../Page/通訊埠.md "wikilink")，这样[路由器才能映射响应到正确的设备](../Page/路由器.md "wikilink")。在电信级NAT网络中，即使消费者端的路由器可能已配置为端口转发，ISP处运行CGN的“主路由器”仍将阻止端口转发，因此实际的端口将不是消费者配置的端口。\[6\]为了克服前者的缺点，（PCP）已在RFC
6887中标准化。

此外，在极少数情况下，可能遇到基于IP地址的封禁问题。以[维基百科为例](../Page/维基百科.md "wikilink")，系统可能封禁发送垃圾信息的用户的IP。如果该用户在一个电信级NAT后面，其他与垃圾发送者共享使用同一公网[IP地址的正常用户也将被错误阻止](../Page/IP地址.md "wikilink")。\[7\]

## 参见

  - [NAT64](https://zh.wikipedia.org/wiki/NAT64 "wikilink")

## 参考资料

## 外部链接

  - [Understanding Carrier Grade
    NAT](http://www.networkworld.com/community/node/44989)
  - [IETF Internet-Draft: Common requirements for Carrier Grade NAT
    (CGN)](http://tools.ietf.org/html/draft-ietf-behave-lsn-requirements)
  - [CGN :: Observations &
    Recommendations](http://chrisgrundemann.com/index.php/2012/cgn-observations-recommendations/)

<!-- end list -->

  - [CGN在IPv6演进过程中的关键作用](http://www.c114.net/tech/166/a759847.html)，C114(中国通信网)，2013年4月16日
  - [北京电信宽带部署 CGN
    割接的通告](http://www.189.cn/bj/sy_ycgg/90691.html)，中国电信，2016年12月29日

[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")
[Category:网络地址转换](https://zh.wikipedia.org/wiki/Category:网络地址转换 "wikilink")
[Category:互联网协议](https://zh.wikipedia.org/wiki/Category:互联网协议 "wikilink")

1.
2.
3.
4.
5.
6.  <http://stakeholders.ofcom.org.uk/binaries/research/technology-research/2013/cgnat.pdf>
7.  <http://stakeholders.ofcom.org.uk/binaries/research/technology-research/2013/cgnat.pdf>