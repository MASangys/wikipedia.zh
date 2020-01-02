> 本文内容由[TACACS+](https://zh.wikipedia.org/wiki/TACACS+)转换而来。


在[计算机网络](../Page/计算机网络.md "wikilink")中，**TACACS+** (Terminal Access Controller Access-Control System Plus)是一种为路由器、网络访问服务器和其他互联计算设备通过一个或多个集中的服务器提供访问控制的协议。TACACS+提供了独立的认证、授权和记账服务。

## 历史

TACACS+基于[TACACS](../Page/TACACS.md "wikilink")，但是，尽管名字如此，它是一个全新的协议，与之前的TACACS并不兼容，在最近构建或更新的网络中，TACACS+和[RADIUS已经广泛地取代了早先的协议](https://zh.wikipedia.org/wiki/RADIUS "wikilink")，而在一些旧的系统中，仍然还运行着一些TACACS和XTACACS的系统。

## 认证、授权与记账(Authentication, Authorization and Accounting, AAA)

尽管RADIUS在用户配置文件中集成了认证和授权，TACACS+分离了这两种操作，另外的不同在于TACACS+使用[传输控制协议](../Page/传输控制协议.md "wikilink") (TCP)而RADIUS使用[用户报文协议](https://zh.wikipedia.org/wiki/用户报文协议 "wikilink")(UDP).多数管理员建议使用TACACS+，因为TCP被认为是更可靠的协议。

TACACS+协议的扩展为最初的协议规范提供了更多的认证请求类型和更多的响应代码。

## 协议细节

TACACS+ 使用[TCP端口](https://zh.wikipedia.org/wiki/Transmission_control_protocol "wikilink")49，包括三种独立的协议，如果需要，能够在独立的服务器上实现。\[1\]

TACACS+提供了多协议支持，如IP和AppleTalk.一般操作都对数据包进行全部加密，以提供更安全的通信，这是一个Cisco对最初的TACACS协议提供的专有的改进。

TACACS+ 操作中使用APPLETALK和 NETBIOS.

## 参见

  - [Kerberos](https://zh.wikipedia.org/wiki/Kerberos_\(protocol\) "wikilink")
  - [RADIUS](https://zh.wikipedia.org/wiki/RADIUS "wikilink")
  - [Diameter](https://zh.wikipedia.org/wiki/Diameter_\(protocol\) "wikilink")

## 参考

## 外部链接

  - [Cisco's TACACS+ RFC draft](http://tools.ietf.org/html/draft-grant-tacacs-02)
  - <http://www.shrubbery.net/tac_plus/>
  - <https://archive.is/20121222025636/http://www.gazi.edu.tr/tacacs> Database supported tacacs+
  - <https://web.archive.org/web/20090106145514/http://rubyforge.org/projects/tacacs-plus/> A pure Ruby implementation of TACACS+

[Category:认证方法](https://zh.wikipedia.org/wiki/Category:认证方法 "wikilink") [Category:身份管理系统](https://zh.wikipedia.org/wiki/Category:身份管理系统 "wikilink")

1.  [Cisco - TACACS+](http://www.cisco.com/warp/public/614/7.html)