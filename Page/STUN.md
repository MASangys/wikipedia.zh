**STUN**（**Session Traversal Utilities for
NAT**，NAT会话穿越应用程序）是一种[网络协议](https://zh.wikipedia.org/wiki/网络协议 "wikilink")，它允许位于[NAT](../Page/网络地址转换.md "wikilink")（或多重NAT）后的客户端找出自己的公网地址，查出自己位于哪种类型的NAT之后以及NAT为某一个本地端口所绑定的Internet端端口。这些信息被用来在两个同时处于NAT路由器之后的主机之间建立UDP通信。该协议由RFC
5389定义。

## 方案

一旦客户端得知了Internet端的UDP端口，通信就可以开始了。如果NAT是完全圆锥型的，那么双方中的任何一方都可以发起通信。如果NAT是受限圆锥型或端口受限圆锥型，双方必须一起开始传输。

需要注意的是，要使用STUN RFC中描述的技术并不一定需要使用STUN协议——还可以另外设计一个协议并把相同的功能集成到运行该协议的服务器上。

[SIP之类的协议是使用UDP分组在Internet上传输音频和](../Page/会话发起协议.md "wikilink")／或视频数据的。不幸的是，由于通信的两个末端往往位于NAT之后，因此用传统的方法是无法建立连接的。这也就是STUN发挥作用的地方。

STUN是一个[客户机－服务器协议](https://zh.wikipedia.org/wiki/客户机－服务器 "wikilink")。一个VoIP电话或软件包可能会包括一个STUN客户端。这个客户端会向STUN服务器发送请求，之后，服务器就会向STUN客户端报告NAT路由器的公网IP地址以及NAT为允许传入流量传回内网而开通的端口。

以上的响应同时还使得STUN客户端能够确定正在使用的[NAT类型](../Page/网络地址转换.md "wikilink")——因为不同的NAT类型处理传入的UDP分组的方式是不同的。四种主要类型中有三种是可以使用的：[完全圆锥型NAT](https://zh.wikipedia.org/wiki/完全圆锥型NAT "wikilink")、[受限圆锥型NAT和](https://zh.wikipedia.org/wiki/受限圆锥型NAT "wikilink")[端口受限圆锥型NAT](https://zh.wikipedia.org/wiki/端口受限圆锥型NAT "wikilink")——但大型公司网络中经常采用的对称型NAT（又称为双向NAT）则不能使用。

## 演算法

STUN使用下列的[演算法](https://zh.wikipedia.org/wiki/演算法 "wikilink")（取自RFC
3489）來發現NAT gateways以及防火牆（firewalls）:

[STUN_Algorithm3.svg](https://zh.wikipedia.org/wiki/File:STUN_Algorithm3.svg "fig:STUN_Algorithm3.svg")

一旦路經通過紅色箱子的終點時，UDP的溝通是沒有可能性的。一旦通過黃色或是綠色的箱子，就有連線的可能。

## 參見

  - [NAT穿越](https://zh.wikipedia.org/wiki/NAT穿越 "wikilink")
  - [TURN](../Page/TURN.md "wikilink")
  - [ICE](https://zh.wikipedia.org/wiki/ICE "wikilink")

## 外部链接

  - RFC 3489, STUN - Simple Traversal of User Datagram Protocol (UDP)
    Through Network Address Translators (NATs)
  - [Latest revision (bis) to the
    RFC](https://web.archive.org/web/20070910020339/http://ietfreport.isoc.org/idref/draft-ietf-behave-rfc3489bis/)
    - draft-ietf-behave-rfc3489bis-09
  - [NAT traversal White
    Paper](http://www.newport-networks.com/whitepapers/nat-traversal1.html)
    comparing STUN with other NAT traversal techniques such as TURN,
    ICE, ALGs and Session Border Controllers - Source: Newport Networks
  - [STUNT](http://nutss.gforge.cis.cornell.edu/stunt.php) - "STUN and
    TCP too", which extends STUN to include TCP functionality
  - [Yahoo\! - Director of Engineering explaining STUN and TURN
    (Video)](http://www.youtube.com/watch?v=9MWYw0fltr0&eurl=http%3A%2F%2Fwww%2Evoip%2Dnews%2Ecom%2Ffeature%2Ftop%2Dvoip%2Dvideos%2D051707%2F)

### 實現

  - [STUN Client and Server
    library](http://sourceforge.net/projects/stun/)
  - [JSTUN - A Java STUN implementation](http://jstun.javawi.de/)
  - [Java STUN library "stun4j"](https://stun4j.dev.java.net/)

[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")
[Category:网络地址转换](https://zh.wikipedia.org/wiki/Category:网络地址转换 "wikilink")