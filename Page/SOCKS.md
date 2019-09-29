**SOCKS**是一种[网络传输协议](../Page/网络传输协议.md "wikilink")，主要用于客户端与外网服务器之间通讯的中间传递。SOCKS是"SOCKetS"的[缩写](https://zh.wikipedia.org/wiki/缩写 "wikilink")。

当[防火墙后的客户端要访问外部的服务器时](https://zh.wikipedia.org/wiki/防火墙_\(网络\) "wikilink")，就跟SOCKS[代理服务器](../Page/代理服务器.md "wikilink")连接。这个代理服务器控制客户端访问外网的资格，允许的话，就将客户端的请求发往外部的服务器。

这个协议最初由David Koblas开发，而后由NEC的Ying-Da Lee将其扩展到版本4。最新协议是版本5，与前一版本相比，增加支持[UDP](../Page/用户数据报协议.md "wikilink")、验证，以及[IPv6](../Page/IPv6.md "wikilink")。

根据[OSI模型](../Page/OSI模型.md "wikilink")，SOCKS是[会话层](../Page/会话层.md "wikilink")的协议，位于[表示层与](https://zh.wikipedia.org/wiki/表示层 "wikilink")[传输层](../Page/传输层.md "wikilink")之间。

## 与HTTP代理的对比

*SOCKS*工作在比[HTTP代理更低的层次](../Page/代理服务器.md "wikilink")：SOCKS使用握手协议来通知代理软件其客户端试图进行的连接SOCKS，然后尽可能透明地进行操作，而常规代理可能会解释和重写报头（例如，使用另一种底层协议，例如[FTP](../Page/文件传输协议.md "wikilink")；然而，HTTP代理只是将HTTP请求转发到所需的HTTP服务器）。虽然HTTP代理有不同的使用模式，[CONNECT方法允许转发TCP连接](../Page/超文本传输协议.md "wikilink")；然而，SOCKS代理还可以转发[UDP流量和](../Page/用户数据报协议.md "wikilink")[反向代理](../Page/反向代理.md "wikilink")，而HTTP代理不能。HTTP代理通常更了解HTTP协议，执行更高层次的过滤（虽然通常只用于GET和POST方法，而不用于CONNECT方法）。

### SOCKS

Bill希望通过互联网与Jane沟通，但他们的网络之间存在一个[防火墙](../Page/防火墙.md "wikilink")，Bill不能直接与Jane沟通。所以，Bill连接到他的网络上的SOCKS代理，告知它他想要与Jane建立连接；SOCKS代理打开一个能穿过防火墙的连接，并促进Bill和Jane之间的通信。

有关SOCKS协议的技术细节的更多信息，请参阅下面的部分。

### HTTP

Bill希望从Jane的Web服务器下载一个网页。Bill不能直接连接到Jane的服务器，因为在他的网络上设置了防火墙。为了与该服务器通信，Bill连接到其网络的HTTP代理。他的网页浏览器与代理通信的方式与他直接连接Jane的服务器的方式相同；也就是说，网页浏览器会发送一个标准的HTTP请求头。HTTP代理连接到Jane的服务器，然后将Jane的服务器返回的任何数据传回Bill。\[1\]

## 版本分支

### SOCKS 4

下面是客户端向SOCKS 4代理服务器，发送的连接请求包的格式（以字节为单位）：

|    |    |         |       |          |      |
| -- | -- | ------- | ----- | -------- | ---- |
| VN | CD | DSTPORT | DSTIP | USERID   | NULL |
| 1  | 1  | 2       | 4     | variable | 1    |

  - VN是SOCK版本，应该是4；
  - CD是SOCK的命令码，1表示CONNECT请求，2表示BIND请求；
  - DSTPORT表示目的主机的端口；
  - DSTIP指目的主机的IP地址；
  - NULL是0；

代理服务器而后发送回应包（以字节为单位）：

|    |    |         |       |
| -- | -- | ------- | ----- |
| VN | CD | DSTPORT | DSTIP |
| 1  | 1  | 2       | 4     |

  - VN是回应码的版本，应该是0；
  - CD是代理服务器答复，有几种可能：

:\*90，请求得到允许；

:\*91，请求被拒绝或失败；

:\*92，由于SOCKS服务器无法连接到客户端的identd（一个验证身份的进程），请求被拒绝；

:\*93，由于客户端程序与identd报告的用户身份不同，连接被拒绝。

  - DSTPORT与DSTIP与请求包中的内容相同，但被忽略。

如果请求被拒绝，SOCKS服务器马上与客户端断开连接；如果请求被允许，代理服务器就充当客户端与目的主机之间进行双向传递，对客户端而言，就如同直接在与目的主机相连。

### SOCKS4a

**SOCKS 4A**是SOCKS 4协议的简单扩展，允许客户端对无法解析的目的主机，进行自行规定。

客户端对DSTIP的头三个字节设定为NULL，最后一个字节为非零；对应的IP地址就是0.0.0.x，其中x是非零，这当然不可能是目的主机的地址，这样即使客户端可以解析域名，对此也不会发生冲突。USERID以紧跟的NULL字节作结尾，客户端必须发送目的主机的域名，并以另一个NULL字节作结尾。CONNECT和[BIND](../Page/BIND.md "wikilink")请求的时候，都要按照这种格式（以字节为单位）：

|    |    |         |               |          |      |          |      |
| -- | -- | ------- | ------------- | -------- | ---- | -------- | ---- |
| VN | CD | DSTPORT | DSTIP 0.0.0.x | USERID   | NULL | HOSTNAME | NULL |
| 1  | 1  | 2       | 4             | variable | 1    | variable | 1    |

使用4a协议的服务器必须检查请求包里的DSTIP字段，如果表示地址0.0.0.x，x是非零结尾，那么服务器就得读取客户端所发包中的域名字段，然后服务器就得解析这个[域名](../Page/域名.md "wikilink")，可以的话，对目的主机进行连接。

### SOCKS5

SOCKS5比SOCKS4a多了鉴定、IPv6、UDP支持。建立与SOCKS5服务器的TCP连接后客户端需要先发送请求来协议版本及认证方式，格式为（以字节为单位）：

|     |          |         |
| --- | -------- | ------- |
| VER | NMETHODS | METHODS |
| 1   | 1        | 1-255   |

  - VER是SOCKS版本，这里应该是0x05；
  - NMETHODS是METHODS部分的长度；
  - METHODS是客户端支持的认证方式列表，每个方法占1字节。当前的定义是：

:\* 0x00 不需要认证

:\* 0x01 GSSAPI

:\* 0x02 用户名、密码认证

:\* 0x03 - 0x7F由IANA分配（保留）

:\* 0x80 - 0xFE为私人方法保留

:\* 0xFF 无可接受的方法

服务器从客户端提供的方法中选择一个并通过以下消息通知客户端（以字节为单位）：

|     |        |
| --- | ------ |
| VER | METHOD |
| 1   | 1      |

  - VER是SOCKS版本，这里应该是0x05；
  - METHOD是服务端选中的方法。如果返回0xFF表示没有一个认证方法被选中，客户端需要关闭连接。

之后客户端和服务端根据选定的认证方式执行对应的认证。

认证结束后客户端就可以发送请求信息。如果认证方法有特殊封装要求，请求必须按照方法所定义的方式进行封装。

SOCKS5请求格式（以字节为单位）：

|     |     |      |      |          |          |
| --- | --- | ---- | ---- | -------- | -------- |
| VER | CMD | RSV  | ATYP | DST.ADDR | DST.PORT |
| 1   | 1   | 0x00 | 1    | 动态       | 2        |

  - VER是SOCKS版本，这里应该是0x05；
  - CMD是SOCK的命令码

:\* 0x01表示CONNECT请求

:\* 0x02表示BIND请求

:\* 0x03表示UDP转发

  - RSV 0x00，保留
  - ATYP DST.ADDR类型

:\* 0x01 IPv4地址，DST.ADDR部分4字节长度

:\* 0x03 域名，DST.ADDR部分第一个字节为域名长度，DST.ADDR剩余的内容为域名，没有\\0结尾。

:\* 0x04 IPv6地址，16个字节长度。

  - DST.ADDR 目的地址
  - DST.PORT 网络字节序表示的目的端口

服务器按以下格式回应客户端的请求（以字节为单位）：

|     |     |      |      |          |          |
| --- | --- | ---- | ---- | -------- | -------- |
| VER | REP | RSV  | ATYP | BND.ADDR | BND.PORT |
| 1   | 1   | 0x00 | 1    | 动态       | 2        |

  - VER是SOCKS版本，这里应该是0x05；
  - REP应答字段

:\* 0x00表示成功

:\* 0x01普通SOCKS服务器连接失败

:\* 0x02现有规则不允许连接

:\* 0x03网络不可达

:\* 0x04主机不可达

:\* 0x05连接被拒

:\* 0x06 TTL超时

:\* 0x07不支持的命令

:\* 0x08不支持的地址类型

:\* 0x09 - 0xFF未定义

  - RSV 0x00，保留
  - ATYP BND.ADDR类型

:\* 0x01 IPv4地址，DST.ADDR部分4字节长度

:\* 0x03域名，DST.ADDR部分第一个字节为域名长度，DST.ADDR剩余的内容为域名，没有\\0结尾。

:\* 0x04 IPv6地址，16个字节长度。

  - BND.ADDR 服务器绑定的地址
  - BND.PORT 网络字节序表示的服务器绑定的端口

#### SOCKS5 用户名密码认证方式

在客户端、服务端协商使用用户名密码认证后，客户端发出用户名密码，格式为（以字节为单位）：

|        |       |     |      |    |
| ------ | ----- | --- | ---- | -- |
| 鉴定协议版本 | 用户名长度 | 用户名 | 密码长度 | 密码 |
| 1      | 1     | 动态  | 1    | 动态 |

鉴定协议版本目前为 0x01 。

服务器鉴定后发出如下回应：

|  |
|  |
|  |
|  |
|  |

其中鉴定状态 0x00 表示成功，0x01 表示失败。

## SOCKS服务器

部分SOCKS服务器软件：

  - Dante Socks Server，http://www.inet.no/dante
  - Java Socks Server，http://jsocks.sourceforge.net
  - Socks4 Server，https://archive.is/20130502024508/http://www.alhem.net/project/socks4
  - SS5 Socks Server，http://ss5.sourceforge.net
  - TcpToute2，https://github.com/GameXG/TcpRoute2

## SOCKS客户端

一般情况下应用程序会内嵌对SOCKS协议的支持。但**socksify**软件可强制使不支持SOCKS的应用通过代理联网。

|                                                                                                                        |                                                     |        |         |                                          |        |
| ---------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------- | ------ | ------- | ---------------------------------------- | ------ |
| 客户端                                                                                                                    | 许可证                                                 | 版本     | 发布日期    | 平台                                       | 支持协议   |
| **[Dante client](http://www.inet.no/dante/)**                                                                          | [BSD/CMU](../Page/BSD许可证.md "wikilink")             | 1.1.18 | 09/2005 | Linux                                    | v4, v5 |
| **[FreeCap](http://www.freecap.ru/eng/)**                                                                              | [GPL](https://zh.wikipedia.org/wiki/GPL "wikilink") | 3.18   | 02/2005 | Windows                                  | \-     |
| **[Hummingbird socks](http://www.hummingbird.com/products/nc/socks/install_now.html)**                                 | \-                                                  | \-     | \-      | Windows                                  | \-     |
| **[ProxyCap](http://proxylabs.netwu.com/)**                                                                            | \-                                                  | 2.03   | \-      | Windows                                  | \-     |
| **[SocksCap](https://web.archive.org/web/20051106104123/http://socks.permeo.com/Download/SocksCapDownload/index.asp)** | Non-Comercial home use                              | \-     | \-      | \-                                       | v5     |
| **[Super Socks5Cap](http://www.networktunnel.net/)**                                                                   | \-                                                  | 1.5.3  | \-      | Windows                                  | \-     |
| **[tsocks](http://tsocks.sourceforge.net/about.php)**                                                                  | GPL                                                 | 1.8    | 10/2002 | \-                                       | \-     |
| **[nylon](https://web.archive.org/web/20051106034218/http://monkey.org/~marius/pages/?page=nylon)**                    | \-                                                  | \-     | 06/2003 | [OpenBSD](../Page/OpenBSD.md "wikilink") | \-     |
| [Win2Socks](https://win2socks.com)                                                                                     | \-                                                  | 1.1    | 09/2019 | Windows                                  | v5     |

## 注释

1.  详见：http://www.hummingbird.com/products/nc/socks/faq.html\#stand

2.  sockify定义请见：http://mindprod.com/jgloss/socksify.html

## 参见

  - [SOCKS 4A](https://zh.wikipedia.org/wiki/SOCKS_4A "wikilink") - SOCKS协议4A版
  - [SocksCap](https://zh.wikipedia.org/wiki/SocksCap "wikilink")

## 外部链接

  - RFC 3089 - A SOCKS-based IPv6/IPv4 Gateway Mechanism
  - RFC 1961 - GSS-API Authentication Method for SOCKS Version 5
  - RFC 1929 - Username/Password Authentication for SOCKS V5
  - RFC 1928 - SOCKS Protocol Version 5
  - Ying-Da Lee，[SOCKS 4A: A Simple Extension to SOCKS 4 Protocol](https://web.archive.org/web/20070311092531/http://public.www.planetmirror.com/pub/smartftp/RFC/socks4a.protocol)（SOCKS 4A：SOCKS 4协议的一个简单扩展）
  - Michel Arboi，[Vulnerability - Too long hostname kills the SOCKS4A server](http://www.nessus.org/plugins/index.php?view=single&id=11126)（易受攻击性：域名过长导致SOCKS4A服务器死机）
  - [SOCKS: A protocol for TCP proxy across firewalls, SOCKS Protocol Version 4 (NEC)](http://ftp.icm.edu.pl/packages/socks/socks4/SOCKS4.protocol) SOCKS:一个用于穿越防火墙的TCP代理协议，SOCKS协议版本4（NEC）
  - [Socks5协议中文文档](http://blog.csdn.net/testcs_dn/article/details/7915505)

[Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink") [Category:网络隐私](https://zh.wikipedia.org/wiki/Category:网络隐私 "wikilink")

1.