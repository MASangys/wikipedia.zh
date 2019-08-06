**DHCPv6**是一个用来配置工作在[IPv6](../Page/IPv6.md "wikilink")网络上的IPv6[主机所需的](https://zh.wikipedia.org/wiki/主机 "wikilink")[IP地址](../Page/IP地址.md "wikilink")、IP前缀和/或其他配置的[网络协议](https://zh.wikipedia.org/wiki/网络协议 "wikilink")。

IPv6主机可以使用[无状态地址自动配置](https://zh.wikipedia.org/wiki/无状态地址自动配置 "wikilink")（SLAAC）或DHCPv6来获得IP地址。DHCP倾向于被用在需要集中管理主机的站点，而无状态自动配置不需要任何集中管理，因此后者更多地被用在典型家庭网络这样的场景下。

使用无状态自动配置的IPv6主机可能会需要除了IP地址以外的其他信息。DHCPv6可被用来获取这样的信息，哪怕这些信息对于配置IP地址毫无用处。配置[DNS服务器无需使用DHCPv](../Page/域名系统.md "wikilink")6，它们可以使用无状态自动配置所需的[邻居发现协议来进行配置](https://zh.wikipedia.org/wiki/邻居发现协议 "wikilink")\[1\]。

IPv6路由器，如家庭路由器，必须在无需人工干预的情况下被自动配置。这样的路由器不仅需要一个IPv6地址用来与上游路由器通信，还需要一个IPv6前缀用来配置下游的设备。DHCPv6 [前缀代理](../Page/前缀代理.md "wikilink")提供了配置此类路由器的机制。

## 实现

### 端口号

DHCPv6客户端使用UDP端口号546，服务器使用端口号547。

### DHCP唯一标识符

DHCP唯一标识符（DUID）用于客户端从DHCPv6服务器获得IP地址。最小长度为12个字节（96位），最大长度为20字节（160位）。实际长度取决于其类型。服务器将DUID与其数据库进行比较，并将配置数据（地址、租期、DNS服务器，等等）发送给客户端。DUID的前16位包含了DUID的三种类型之一。剩余的96位取决于DUID类型。

### 举例

本例中，服务器的链路本地地址是`fe80::0011:22ff:fe33:5566`，客户端的链路本地地址是`fe80::aabb:ccff:fedd:eeff`。

  - DHCPv6客户端从`[fe80::aabb:ccff:fedd:eeff]:546`发送**Solicit**至`[ff02::1:2]:547`。
  - DHCPv6服务器从`[fe80::0011:22ff:fe33:5566]:547`回应一个**Advertise**给`[fe80::aabb:ccff:fedd:eeff]:546`。
  - DHCPv6客户端从`[fe80::aabb:ccff:fedd:eeff]:546`回应一个**Request**给`[ff02::1:2]:547`。（依照[RFC 3315](http://tools.ietf.org/html/rfc3315)的[section 13](http://tools.ietf.org/html/rfc3315#section-13)，所有客户端消息都发送到多播地址)
  - DHCPv6服务器以`[fe80::0011:22ff:fe33:5566]:547`到`[fe80::aabb:ccff:fedd:eeff]:546`的**Reply**结束。

## IETF标准

  - RFC 3315, "Dynamic Host Configuration Protocol for IPv6 (DHCPv6)"
  - RFC 3319, "Dynamic Host Configuration Protocol (DHCPv6) Options for Session Initiation Protocol (SIP) Servers"
  - RFC 3633, "IPv6 Prefix Options for Dynamic Host Configuration Protocol (DHCP) version 6"
  - RFC 3646, "DNS Configuration options for Dynamic Host Configuration Protocol for IPv6 (DHCPv6)"
  - RFC 3736, "Stateless Dynamic Host Configuration Protocol (DHCP) Service for IPv6"
  - RFC 5007, "DHCPv6 Leasequery"
  - RFC 6221, "Lightweight DHCPv6 Relay Agent"

## 参考资料

## 外部链接

  - [IPv6 Intelligence: DHCPv6](http://ipv6int.net/software/index.html#dhcpv6), comparison of DHCPv6 packages and implementations (Last updated: April, 2009)
  - [IPv6 Ready: DHCPv6](https://www.ipv6ready.org/db/index.php/public/search/?l=&c=&ds=&de=&pc=&ap=2&oem=&etc=D&fw=&vn=&do=1&o=6), list of IPv6 Phase II Certified DHCPv6 implementations (Last updated: December, 2012)

[de:Dynamic Host Configuration Protocol\#DHCPv6](https://zh.wikipedia.org/wiki/de:Dynamic_Host_Configuration_Protocol#DHCPv6 "wikilink")

[Category:IPv6](https://zh.wikipedia.org/wiki/Category:IPv6 "wikilink") [Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink")

1.  RFC 4339, *IPv6 Host Configuration of DNS Server Information Approaches*, J. Jeong (February 2006)