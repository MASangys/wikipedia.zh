**IPv6转换机制**指那些用来促进[Internet从](https://zh.wikipedia.org/wiki/Internet "wikilink")[IPv4架构向下一代地址系统](../Page/IPv4.md "wikilink")——[IPv6转换的技术](../Page/IPv6.md "wikilink")。具体来说，就是那些允许仅与IPv4或IPv6网络连接的主机能够访问与之不同协议下资源的方法。

[互联网工程任务组](../Page/互联网工程任务组.md "wikilink")（IETF）通过IETF的[Internet草案和](https://zh.wikipedia.org/wiki/Internet草案 "wikilink")[RFC来指导相关工作组讨论开发这些方法](../Page/RFC.md "wikilink")。一些基础的IPv6转换机制定义在RFC
4213中。

## 无状态IP/ICMP转换(SIIT)

**无状态IP/ICMP转换**是在[IPv6和](../Page/IPv6.md "wikilink")[IPv4报文头格式之间进行转换](../Page/IPv4.md "wikilink")。SIIT方法定义一类被称为*IPv4翻译*（IPv4-translated）地址的IPv6地址。这类地址的前缀为`::ffff:0:0/96`，也可被写作`::ffff:a.b.c.d`，其中IPv4格式的地址`a.b.c.d`表示一个“使能IPv6”（IPv6-enabled）的节点。选择这个前缀是为了生成一个为0的校验值，以此来避免改变传输协议头中的校验值。\[1\]

此算法可以使IPv6主机无需拥有一个永久的IPv4地址就能与只使用IPv4的主机通信。地址分配和路由的细节并没有在此规范中被提及。

这个规范由NGTRANS IETF工作组制订，草案由[Sun
Microsystems的E](https://zh.wikipedia.org/wiki/Sun_Microsystems "wikilink").
Nordmark于2000年2月作为RFC 2765发布。2011年，RFC 2765被RFC 6145代替\[2\]。RFC
2765的地址格式化部分被定义在RFC 6052中\[3\]。

RFC 6144定义IPv4/IPv6转换的框架\[4\]。

## 6rd

6rd是一个用于促进快速部署IPv6服务穿越[ISP的](https://zh.wikipedia.org/wiki/ISP "wikilink")[IPv4架构的实现机制](../Page/IPv4.md "wikilink")。它使用[IPv4与](../Page/IPv4.md "wikilink")[IPv6之间的无状态地址映射](../Page/IPv6.md "wikilink")，在用户节点之间建立自动隧道，以[IPv4报文的形式传输](../Page/IPv4.md "wikilink")[IPv6报文](../Page/IPv6.md "wikilink")。

此方案第一次被大规模部署是在2007年末（RFC 5569 \[5\]）。 RFC 5969\[6\]详述了此协议。

## 传输中继转换(TRT)

RFC
3142定义*[传输中继转换](https://zh.wikipedia.org/wiki/传输中继转换 "wikilink")*（TRT）方法。这是最常见的NAT-PT/NAPT-PT形式，只不过其依赖于在AAAA与A记录之间的DNS翻译，这种翻译机制被称为*DNS-ALG*，定义在RFC
2694。

## 網站

### SixXS

SixXS（Six
Access）是一个免费的、非盈利性、提供零成本服务的网站。SixXS提供[IPv6通道](../Page/IPv6.md "wikilink")，通过IPv6服务访问网站，因通讯数据被加密，因此可以避免遭到[互联网审查](../Page/互联网审查.md "wikilink")。后缀“.sixxs.org”代表使用sixxs.org提供的IPv6[网关](../Page/网关.md "wikilink")，该网关将来自IPv6网络的[http访问请求转换成](https://zh.wikipedia.org/wiki/http "wikilink")[IPv4的http请求](../Page/IPv4.md "wikilink")，访问任何其他IPv4的http都可以使用这个网关，在地址后面加上“.sixxs.org”即可。不过该项目已于2017-06-06停止服务，2017-07-01正式结束。

## 参考文献

  - *IPv6 in Practice*, Benedikt Stockebrand (2006), ISBN 3-540-24524-3
  - RFC 2767, *Bump-in-the-Stack*
  - RFC 3338, *Bump-in-the-API*
  - RFC 3089, *Socks-based Gateway*
  - RFC 6219, *The China Education and Research Network (CERNET) IVI
    Translation Design and Deployment for the IPv4/IPv6 Coexistence and
    Transition*

[Category:IPv6](https://zh.wikipedia.org/wiki/Category:IPv6 "wikilink")
[Category:IPv6转换机制](https://zh.wikipedia.org/wiki/Category:IPv6转换机制 "wikilink")

1.  RFC 2765 - *无状态IP/ICMP转换算法(SIIT)*, E. Normark (February 2000)
2.  RFC 6145 IP/ICMP Translation Algorithm
3.  RFC 6052 - *IPv6 Addressing of IPv4/IPv6 Translators*
4.  RFC 6144 - *Framework for IPv4/IPv6 Translation*
5.  RFC 5569 IPv6 Rapid Deployment on IPv4 Infrastructures (6rd)
6.  RFC 5969 IPv6 Rapid Deployment on IPv4 Infrastructures (6rd) --
    Protocol Specification