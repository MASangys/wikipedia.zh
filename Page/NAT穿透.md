在[计算机科学中](../Page/计算机科学.md "wikilink")，**NAT穿越**（NAT
traversal）涉及[TCP/IP](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")[网络中的一个常见问题](https://zh.wikipedia.org/wiki/网络 "wikilink")，即在处于使用了[NAT设备的私有TCP](https://zh.wikipedia.org/wiki/NAT "wikilink")/IP网络中的主机之间建立连接的问题。

会遇到这个问题的通常是那些客户端网络交互应用程序的开发人员，尤其是在[对等网络和](https://zh.wikipedia.org/wiki/对等网络 "wikilink")[VoIP领域中](../Page/VoIP.md "wikilink")。[IPsec](../Page/IPsec.md "wikilink")
[VPN客户普遍使用](https://zh.wikipedia.org/wiki/VPN "wikilink")[NAT-T来达到使](https://zh.wikipedia.org/wiki/NAT-T "wikilink")[ESP包通过](https://zh.wikipedia.org/wiki/ESP "wikilink")[NAT的目的](https://zh.wikipedia.org/wiki/NAT "wikilink")。

尽管有许多穿越NAT的技术，但没有一项是完美的，这是因为NAT的行为是非标准化的。这些技术中的大多数都要求有一个公共服务器，而且这个服务器使用的是一个众所周知的、从全球任何地方都能访问得到的IP地址。一些方法仅在建立连接时需要使用这个服务器，而其它的方法则通过这个服务器中继所有的数据——这就引入了带宽开销的问题。

两种常用的NAT穿越技术是：[UDP路由验证和](https://zh.wikipedia.org/wiki/UDP路由验证 "wikilink")[STUN](../Page/STUN.md "wikilink")。除此之外，還有[TURN](../Page/TURN.md "wikilink")、[ICE](../Page/互動式連接建立.md "wikilink")、[ALG](https://zh.wikipedia.org/wiki/應用層閘道 "wikilink")，以及[SBC](../Page/會談邊界控制器.md "wikilink")。

## NAT穿透與IPsec

為了於NAT之上實現[IPsec](../Page/IPsec.md "wikilink")，下列的協議必須在防火墙中實作：

  - Internet Key Exchange (IKE) -
    [UDP端口](../Page/用户数据报协议.md "wikilink")500
  - Encapsulating Security Payload (ESP) - IP协议号50

或者是NAT-T之例：

  - IPsec NAT-T - UDP端口4500

在家庭路由器上，这通常通过启用“IPsec穿透”来实现。

## IETF文獻

  - RFC 1579 - Firewall Friendly FTP
  - RFC 2663 - IP Network Address Translator (NAT) Terminology and
    Considerations
  - RFC 2709 - Security Model with Tunnel-mode IPsec for NAT Domains
  - RFC 2993 - Architectural Implications of NAT
  - RFC 3022 - Traditional IP Network Address Translator (Traditional
    NAT)
  - RFC 3027 - Protocol Complications with the IP Network Address
    Translator (NAT)
  - RFC 3235 - Network Address Translator (NAT)-Friendly Application
    Design Guidelines
  - RFC 3715 - IPsec-Network Address Translation (NAT) Compatibility
  - RFC 3947 - Negotiation of NAT-Traversal in the IKE
  - RFC 5128 - State of Peer-to-Peer (P2P) Communication across Network
    Address Translators (NATs)

## 相關技術

### NAT穿透技術與NAT行為

  - [Session Traversal Utilities for
    NAT](../Page/STUN.md "wikilink")（STUN）

  - [Traversal Using Relay NAT](../Page/TURN.md "wikilink")（TURN）

  - [NAT-T](https://zh.wikipedia.org/wiki/NAT-T "wikilink") Negotiation
    of NAT-Traversal in the IKE

  - [Teredo
    tunneling](https://zh.wikipedia.org/wiki/Teredo_tunneling "wikilink")
    uses NAT traversal to provide [IPv6](../Page/IPv6.md "wikilink")
    connectivity.

  - [Session Border
    Controller](https://zh.wikipedia.org/wiki/Session_Border_Controller "wikilink")（SBC）

  - [UDP打洞](https://zh.wikipedia.org/wiki/UDP打洞 "wikilink")（）

  - （）

  - （）

### NAT穿透基於NAT控制

  - [Realm-Specific
    IP](https://zh.wikipedia.org/wiki/Realm-Specific_IP "wikilink")（RSIP）
  - [Middlebox](https://zh.wikipedia.org/wiki/Middlebox "wikilink")
    Communications（MIDCOM）
  - [SOCKS](../Page/SOCKS.md "wikilink")
  - [NAT Port Mapping
    Protocol](https://zh.wikipedia.org/wiki/NAT_Port_Mapping_Protocol "wikilink")（NAT
    PMP）
  - [Internet Gateway
    Device](https://zh.wikipedia.org/wiki/Internet_Gateway_Device_Protocol "wikilink")（IGD）協定，由[通用即插即用](../Page/UPnP.md "wikilink")（UPnP）論壇所定義。
  - [Application Layer
    Gateway](https://zh.wikipedia.org/wiki/Application_Layer_Gateway "wikilink")（ALG）

### NAT穿透整合技術

  - [Interactive Connectivity
    Establishment](../Page/互動式連接建立.md "wikilink")（ICE）

### University research papers

  - [Cornell University - Characterization and Measurement of TCP
    Traversal through NATs and
    Firewalls](http://nutss.gforge.cis.cornell.edu/pub/imc05-tcpnat/)
  - [Columbia University - An Analysis of the Skype Peer-to-Peer
    Internet
    Telephony](http://www1.cs.columbia.edu/~library/TR-repository/reports/reports-2004/cucs-039-04.pdf)
  - [Peer to peer communication across Network Address Translators (UDP
    Hole Punching)](http://www.brynosaurus.com/pub/net/p2pnat/)
  - [Internet By All Means - An article on how to maximize your chances
    to get around
    firewalls](http://blog.sebastien.raveau.name/2009/06/internet-by-all-means.html)

## 外部連結

  - [NAT-Traversal
    Test](https://web.archive.org/web/20180817001123/http://nattest.net.in.tum.de/)
  - [How Skype & Co. get round
    firewalls](http://www.heise-online.co.uk/security/How-Skype-Co-get-round-firewalls--/features/82481)
  - [NAT
    Traversal](https://web.archive.org/web/20130521103027/http://nattraversal.com.cn/)

[Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink")
[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")
[Category:网络地址转换](https://zh.wikipedia.org/wiki/Category:网络地址转换 "wikilink")