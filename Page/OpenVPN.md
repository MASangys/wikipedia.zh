**OpenVPN**是一个用于创建[虚拟专用网络加密通道的软件包](https://zh.wikipedia.org/wiki/虚拟专用网络 "wikilink")，最早由James
Yonan编写。OpenVPN允许建立的VPN使用[公开密钥](https://zh.wikipedia.org/wiki/公开密钥 "wikilink")、[電子證書](https://zh.wikipedia.org/wiki/電子證書 "wikilink")、或者用户名／密碼来进行身份验证。

它大量使用了[OpenSSL加密库中的](../Page/OpenSSL.md "wikilink")[SSLv](https://zh.wikipedia.org/wiki/SSL "wikilink")3/[TLSv](https://zh.wikipedia.org/wiki/TLS "wikilink")1协议函数库。

目前OpenVPN能在[Solaris](../Page/Solaris.md "wikilink")、[Linux](../Page/Linux.md "wikilink")、[OpenBSD](../Page/OpenBSD.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[NetBSD](../Page/NetBSD.md "wikilink")、[Mac
OS X与](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Microsoft
Windows以及](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Android和](../Page/Android.md "wikilink")[iOS上运行](https://zh.wikipedia.org/wiki/iOS "wikilink")，並包含了许多安全性的功能。它并不是一个基于Web的VPN软件，也不与[IPsec及其他VPN软件包兼容](../Page/IPsec.md "wikilink")。

## 原理

OpenVPN的技术核心是虚拟网卡，其次是[SSL协议实现](https://zh.wikipedia.org/wiki/SSL "wikilink")。

### OpenVPN中的虚拟网卡

[虚拟网卡是使用网络底层编程技术实现的一个驱动软件](https://zh.wikipedia.org/wiki/虚拟网卡 "wikilink")。安装此类程序后主机上会增加一个非真实的[网卡](../Page/网卡.md "wikilink")，并可以像其它网卡一样进行配置。服务程序可以在应用层打开虚拟网卡，如果应用软件（如[网络浏览器](https://zh.wikipedia.org/wiki/网络浏览器 "wikilink")）向虚拟网卡发送数据，则服务程序可以读取到该数据。如果服务程序写合适的数据到虚拟网卡，应用软件也可以接收得到。虚拟网卡在很多的操作系统中都有相应的实现，这也是OpenVPN能够跨平台使用的一个重要原因。

在OpenVPN中，如果用户访问一个远程的虚拟地址（属于虚拟网卡配用的地址系列，区别于真实地址），则操作系统会通过路由机制将数据包（[TUN模式](../Page/TUN与TAP.md "wikilink")）或数据帧（[TAP模式](../Page/TUN与TAP.md "wikilink")）发送到虚拟网卡上，服务程序接收该数据并进行相应的处理后，会通过[SOCKET从外网上发送出去](https://zh.wikipedia.org/wiki/网络套接字 "wikilink")。这完成了一个单向传输的过程，反之亦然。当远程服务程序通过SOCKET从外网上接收到数据，并进行相应的处理后，又会发送回给虚拟网卡，则该应用软件就可以接收到。

## 加密

OpenVPN使用[OpenSSL库来加密数据与控制信息](../Page/OpenSSL.md "wikilink")。这意味着，它能够使用任何OpenSSL支持的算法。它提供了可选的数据包[HMAC功能以提高连接的安全性](https://zh.wikipedia.org/wiki/HMAC "wikilink")。此外，OpenSSL的硬件加速也能提高它的性能。2.3.0以後版本引入[PolarSSL](https://zh.wikipedia.org/wiki/PolarSSL "wikilink")。

## 身份验证

OpenVPN提供了多种[身份验证方式](https://zh.wikipedia.org/wiki/身份验证方式 "wikilink")，用以确认连接双方的身份，包括：

  - 预享私钥
  - 第三方证书
  - 用户名／密碼组合

预享密钥最为简单，但同时它只能用于建立点对点的VPN；基于[PKI的第三方证书提供了最完善的功能](https://zh.wikipedia.org/wiki/PKI "wikilink")，但是需要额外维护一个PKI证书系统。OpenVPN2.0后引入了用户名／口令组合的身份验证方式，它可以省略客户端证书，但是仍需要一份服务器证书用作加密。

## 功能与端口

  - OpenVPN所有的通信都基于一个单一的[IP](https://zh.wikipedia.org/wiki/IP "wikilink")[端口](https://zh.wikipedia.org/wiki/端口 "wikilink")，默认且推荐使用UDP协议通讯，同时也支持TCP。[IANA](https://zh.wikipedia.org/wiki/IANA "wikilink")（Internet
    Assigned Numbers Authority）指定给OpenVPN的官方端口为1194。OpenVPN
    2.0以后版本每个进程可以同时管理数个并发的隧道。OpenVPN使用通用网络协议（[TCP与](https://zh.wikipedia.org/wiki/TCP "wikilink")[UDP](https://zh.wikipedia.org/wiki/UDP "wikilink")）的特点使它成为[IPsec等协议的理想替代](../Page/IPsec.md "wikilink")，尤其是在[ISP](https://zh.wikipedia.org/wiki/ISP "wikilink")（Internet
    service
    provider）过滤某些特定[VPN协议的情况下](https://zh.wikipedia.org/wiki/VPN "wikilink")。
  - OpenVPN连接能通过大多数的[代理服务器](../Page/代理服务器.md "wikilink")，并且能够在[NAT的环境中很好地工作](https://zh.wikipedia.org/wiki/NAT "wikilink")。
  - 服务端具有向客户端“推送”某些网络配置信息的功能，这些信息包括：IP地址、[路由设置等](../Page/路由.md "wikilink")。
  - OpenVPN提供了两种虚拟网络接口：[通用Tun/Tap驱动](../Page/TUN与TAP.md "wikilink")，通过它们，可以建立三层IP隧道，或者虚拟二层[以太网](../Page/以太网.md "wikilink")，后者可以传送任何类型的二层以太网络数据。
  - 传送的数据可通过[LZO算法压缩](https://zh.wikipedia.org/wiki/LZO "wikilink")。

## 安全

OpenVPN与生俱来便具备了许多安全特性：它在用户空间运行，无须对内核及网络协议栈作修改；初始完毕后以[chroot方式运行](https://zh.wikipedia.org/wiki/chroot "wikilink")，放弃root权限；使用[mlockall](http://www.opengroup.org/onlinepubs/009695399/functions/mlockall.html)以防止敏感数据交换到磁盘。

OpenVPN通过[PKCS\#11支持硬件加密标识](https://zh.wikipedia.org/wiki/PKCS11 "wikilink")，如[智能卡](https://zh.wikipedia.org/wiki/智能卡 "wikilink")。

## 对比

  - **OpenVPN**，能实现二／三层的基于隧道的VPN。
  - [stunnel](https://zh.wikipedia.org/wiki/stunnel "wikilink")，使用SSL向任何单一端口的TCP服务提供安全保护。

## 受中国大陆的限制

[防火长城会针对](../Page/防火长城.md "wikilink")**OpenVPN**服务器回送证书完成握手创建有效加密连接时干扰连接，在使用TCP协议模式时握手会被连接重置，而使用UDP协议时含有服务器认证证书的数据包会被故意丢弃，使OpenVPN无法创建有效加密连接而连接失败。而在中国大陆内部的连接不受这种限制。

## 参考文献

## 外部链接

  - [OpenVPN 项目主页](http://openvpn.net/)
  - [Windows的OpenVPN-GUI](http://openvpn.se/)
  - [Tunnelblick, Mac OS
    X的GUI](https://web.archive.org/web/20070225173533/http://www.tunnelblick.net/)
  - [Android的OpenVPN-Settings](http://code.google.com/p/android-openvpn-settings/)
  - [Vpntaiwan](http://vpntaiwan.com/)

## 参见

  - [虚拟私人网络](https://zh.wikipedia.org/wiki/虚拟私人网络 "wikilink")

{{-}}

[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")
[Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink")
[Category:安全软件](https://zh.wikipedia.org/wiki/Category:安全软件 "wikilink")
[Category:Unix软件](https://zh.wikipedia.org/wiki/Category:Unix软件 "wikilink")
[Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink")