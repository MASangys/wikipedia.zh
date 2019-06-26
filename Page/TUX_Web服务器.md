**TUX
Web服务器**是一种适用于[Linux的](../Page/Linux.md "wikilink")，以[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")（GPL）许可，由[英格·蒙內维护](https://zh.wikipedia.org/wiki/英格·蒙內 "wikilink")。

它目前局限于提供，并协调内核空间[模块](https://zh.wikipedia.org/wiki/可載入核心模組 "wikilink")、[使用者空間模块和常规用户空间的Web服务器](https://zh.wikipedia.org/wiki/使用者空間 "wikilink")[守护进程来提供动态内容](../Page/守护进程.md "wikilink")。常规用户空间的Web服务器不需进行修改就可与TUX协调，但用户空间的代码必须使用基于`tux(2)`系统调用的新接口。

TUX和其他Web服务器的主要区别包括：

  - TUX部分在定制版本的[Linux内核中运行](../Page/Linux内核.md "wikilink")，部分以用户空间守护进程运行。
  - 搭配支持的[network
    card时](../Page/网卡.md "wikilink")，TUX可以将页面缓存以[DMA直接发到网络](../Page/直接記憶體存取.md "wikilink")。
  - TUX仅能提供静态网页。

## 参见

  - [網頁伺服器比較](../Page/網頁伺服器比較.md "wikilink")
  - [網頁伺服器](../Page/網頁伺服器.md "wikilink")
  - [Httpd](https://zh.wikipedia.org/wiki/Httpd "wikilink")

## 外部链接

  - [TUX 2.0
    Documentation](http://www.stllinux.org/meeting_notes/2001/0719/tux/index.html)
  - [TUX 2.0 Reference
    Manual](http://www.redhat.com/docs/manuals/tux/TUX-2.0-Manual/index.html)
  - [TUX downloads](http://people.redhat.com/~mingo/TUX-patches/)
  - [kHTTPd - Linux HTTP Accelerator](http://www.fenrus.demon.nl/)
  - [Example of tuning kernel parameters for maximum performance of a
    userspace webserver
    (Apache/BSD)](http://httpd.apache.org/docs/1.3/misc/perf-bsd44.html)

[Category:自由网络服务器软件](https://zh.wikipedia.org/wiki/Category:自由网络服务器软件 "wikilink")
[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")
[Category:第三方Linux内核模块](https://zh.wikipedia.org/wiki/Category:第三方Linux内核模块 "wikilink")