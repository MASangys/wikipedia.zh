**TACACS**，全稱**终端访问控制器访问控制系统**（），是一种用于[认证的](https://zh.wikipedia.org/wiki/认证 "wikilink")[计算机协议](https://zh.wikipedia.org/wiki/计算机协议 "wikilink")，在[UNIX网络中与认证服务器进行通信](https://zh.wikipedia.org/wiki/Unix "wikilink")，TACACS允许远程访问服务器与认证服务器通信，以决定用户是否有权限访问网络。

TACACS允许客户端接受用户名和口令，并发往通常称作TACACS守护进程（或者简单地称作TACACSD）的TACACS认证服务器，这个服务器一般是在主机上运行的一个程序。主机将决定是否接受或拒绝请求，并发回一个响应。 TIP（用户想要登录的接受拨入链接的路由节点）将基于这个响应接受或拒绝访问。这样，做出决定的过程是"向上开放"(opened up)的，做出决定所用的算法和数据完全由TACACS守护进程的运行者控制。

Cisco在1990引进的最近的TACACS版本称作XTACACS（扩展 TACACS）。在较新的或更新过的网络中，这两个版本大多被 [TACACS+](../Page/TACACS+.md "wikilink")和[RADIUS取代了](https://zh.wikipedia.org/wiki/RADIUS "wikilink")。 TACACS+ 是一个全新的协议，与TACACS和XTACACS并不兼容。

TACACS在RFC 1492中定义，默认使用[TCP或](https://zh.wikipedia.org/wiki/Transmission_Control_Protocol "wikilink")[UDP](https://zh.wikipedia.org/wiki/User_Datagram_Protocol "wikilink")）协议的 49 端口。

软件实现：

  - [TACACS+](http://www.shrubbery.net/tac_plus/)
  - [tac_plus](https://web.archive.org/web/20061004062254/http://networkforums.net/)
  - [DialWays 3.0](http://www.mastersoft-usa.com/products/dialways_std.asp)
  - [TacacsPlus](https://web.archive.org/web/20090106145514/http://rubyforge.org/projects/tacacs-plus/)

## 替代RFC

  - RFC 1492 - An Access Control Protocol, sometimes called TACACS
  - RFC 0927 - TACACS user identification Telnet option

## 参见

  - [RADIUS](https://zh.wikipedia.org/wiki/RADIUS "wikilink")
  - [TACACS+](../Page/TACACS+.md "wikilink")

[Category:認證方法](https://zh.wikipedia.org/wiki/Category:認證方法 "wikilink") [Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink") [Category:计算机访问控制协议](https://zh.wikipedia.org/wiki/Category:计算机访问控制协议 "wikilink") [Category:Cisco协议](https://zh.wikipedia.org/wiki/Category:Cisco协议 "wikilink")