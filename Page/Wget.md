> 本文内容由[Wget](https://zh.wikipedia.org/wiki/Wget)转换而来。


**GNU Wget**（常简称为**Wget**）是一个在网络上进行下载的简单而强大的[自由软件](../Page/自由软件.md "wikilink")，其本身也是[GNU计划的一部分](https://zh.wikipedia.org/wiki/GNU计划 "wikilink")。它的名字是「****」和「****」的结合，同时也隐含了软件的主要功能。目前它支持通过、，以及这三个最常见的[TCP/IP协议协议下载](https://zh.wikipedia.org/wiki/TCP/IP协议 "wikilink")。

## 特点

[thumb](https://zh.wikipedia.org/wiki/file:Gwget-1.0.4.png "wikilink") 它的主要特点包括：

  - 支持递归下载
  - 恰当的转换页面中的链接
  - 生成可在本地浏览的页面镜像
  - 支持代理服务器

1996年，随着互联网的爆发，Wget出现了。并广泛的被[Unix和主要的](https://zh.wikipedia.org/wiki/Unix "wikilink")[Linux](../Page/Linux.md "wikilink")发行版用户所使用。由于使用移植性非常良好的[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")，所以Wget可以轻松的在任何类似Unix的系统以及其他Unix变种操作系统上[編譯使用](https://zh.wikipedia.org/wiki/編譯 "wikilink")，如[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")\[1\]，和[OpenVMS](https://zh.wikipedia.org/wiki/OpenVMS "wikilink")\[2\]。

由于没有交互式界面，在类Unix平台上Wget可在后台运行，截获并忽略HANGUP信号，因此在用户退出登录以后，仍可继续运行。通常，Wget用于成批量地下载Internet网站上的文件，或制作远程网站的镜像。

在其之上的图形界面应用程序有：[GNOME](../Page/GNOME.md "wikilink")下面的**gwget**[2](http://gnome.org/projects/gwget/index.html)。Windows系统下面的**wGetGUI**[3](http://www.jensroesner.de/wgetgui/)。

## 命令

Wget的命令格式如下：

> ` wget [options] [URL]`

详细的命令和参数可以参照后面的外部链接中的内容。

## 缺點

  - 支持的协议较少，特别是[cURL相比](https://zh.wikipedia.org/wiki/cURL "wikilink")。流行的流媒体协议mms和rtsp没有得到支持，还有广泛使用各种的P2P协议也没有涉及。
  - 支持协议过老。目前HTTP还是使用1.0版本，而HTML中通过JavaScript和CSS引用的文件不能下载。
  - 灵活性不强，扩展性不高。面对复杂的镜像站会出现问题。
  - 命令过于复杂，可选的设置项有上百个。

## 参见

  - [FTP客户端列表](https://zh.wikipedia.org/wiki/FTP客户端列表 "wikilink")
  - [cURL](https://zh.wikipedia.org/wiki/cURL "wikilink")
  - [Teleport](https://zh.wikipedia.org/wiki/Teleport "wikilink")

## 参考文献

## 外部链接

  -
  - [win32 binary wget-1.13.4](http://opensourcepack.blogspot.com/2010/05/wget-112-for-windows.html)

<!-- end list -->

  - [很老的一个Wget FTP站点](https://web.archive.org/web/20140813040637/http://gnjilux.srk.fer.hr/pub/unix/util/wget/)，里面包含了各个历史时期的发布版本，包括在1.0版前发布的Geturl。

[Category:GNU計劃軟體](https://zh.wikipedia.org/wiki/Category:GNU計劃軟體 "wikilink") [Category:FTP客户端](https://zh.wikipedia.org/wiki/Category:FTP客户端 "wikilink") [Category:HTTP客户端](https://zh.wikipedia.org/wiki/Category:HTTP客户端 "wikilink") [Category:下載工具](https://zh.wikipedia.org/wiki/Category:下載工具 "wikilink") [Category:免費軟件](https://zh.wikipedia.org/wiki/Category:免費軟件 "wikilink")

1.  [1](http://xoomer.virgilio.it/hherold/)
2.