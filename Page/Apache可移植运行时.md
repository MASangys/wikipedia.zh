{{ Infobox software | developer =
[Apache软件基金会](../Page/Apache软件基金会.md "wikilink") |
status = 活跃 | latest release version = 1.5.2 | latest release date =
2015-04-29 | operating system =
[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") |
programming language =
[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink") | genre =
开发[库](https://zh.wikipedia.org/wiki/库_\(计算机\) "wikilink") | license
= [Apache许可证](../Page/Apache许可证.md "wikilink") 2.0 | website =  }}

**Apache可移植运行时**（**Apache Portable
Runtime**，简称APR）是[Apache](https://zh.wikipedia.org/wiki/Apache "wikilink")
[HTTP服务器的支持库](https://zh.wikipedia.org/wiki/Web服务器 "wikilink")，提供了一组映射到下层操作系统的[API](../Page/应用程序接口.md "wikilink")。如果操作系统不支持某个特定的功能，APR将提供一个模拟的实现。这样程序员使用APR编写真正可在不同平台上移植的程序。

最初，APR是作为[Apache
HTTP服务器的一部分而存在的](https://zh.wikipedia.org/wiki/Apache "wikilink")，但是[Apache软件基金会将其延伸成一个单独的项目](../Page/Apache软件基金会.md "wikilink")。其他的应用程序可以使用APR来实现平台无关性。

## 功能特性

Apache可移植运行时提供的一系列平台无关的功能特性包括：

  - [内存管理和](../Page/記憶體管理.md "wikilink")[内存池功能](../Page/記憶池.md "wikilink")

  - [原子操作](https://zh.wikipedia.org/wiki/原子操作 "wikilink")（Linearizability）

  - 动态[库处理](https://zh.wikipedia.org/wiki/库_\(计算机\) "wikilink")

  - 文件[I/O](https://zh.wikipedia.org/wiki/I/O "wikilink")

  - 命令参数解析

  - [锁机制](https://zh.wikipedia.org/wiki/锁_\(计算机科学\) "wikilink")

  - [散列表和](https://zh.wikipedia.org/wiki/散列表 "wikilink")[数组](../Page/数组.md "wikilink")

  - 功能

  - [网络套接字和协议](../Page/Berkeley套接字.md "wikilink")

  - [线程](../Page/线程.md "wikilink")，[进程和](https://zh.wikipedia.org/wiki/进程 "wikilink")[互斥锁功能](../Page/互斥锁.md "wikilink")

  - [共享内存功能](https://zh.wikipedia.org/wiki/共享内存 "wikilink")

  - 时间子程序

  - 用户和组ID服务

## 类似的项目

  - [Glib提供类似的功能特性](https://zh.wikipedia.org/wiki/Glib "wikilink")。
    支持更多的数据结构和操作系统无关的函数，但[进程间通信相关的函数要少一些](https://zh.wikipedia.org/wiki/进程间通信 "wikilink")（Glib缺少本地和全局锁机制以及共享内存管理）。

  - （NSPR）是[Mozilla项目所使用的跨平台抽象库](../Page/Mozilla.md "wikilink")。也被[Mozilla应用程序框架](../Page/Mozilla应用程序框架.md "wikilink")（XPFE）的其他子项目所使用，以提供跨平台[图形用户界面](../Page/图形用户界面.md "wikilink")（GUI）功能特性。

  - [自适配通信环境](../Page/ACE自适配通信环境.md "wikilink")
    （ACE）是用C++编写的功能与APR相似的面向对象库，广泛应用于商业产品。\[1\]

  - [commonc++](https://web.archive.org/web/20110323034144/http://www.hyperrealm.com/main.php?s=commoncpp)
    是系统编程的跨平台C++类库，具有许多与APR的相同的特性。

  - 是概念上与APR类似的现代C++框架，但比APR具有更好的扩展性。

  - [WxWidgets是面向对象的跨平台GUI库](../Page/WxWidgets.md "wikilink")，也提供数据库通讯，[进程间通信和网络的抽象类](https://zh.wikipedia.org/wiki/进程间通信 "wikilink")。

  - [Qt是具有类似功能的应用开发框架](https://zh.wikipedia.org/wiki/Qt_\(toolkit\) "wikilink"),
    同时支持[图形用户界面开发](../Page/图形用户界面.md "wikilink")。

## 参考文献

## 外部链接

  -
  - [Apache软件基金会网站](http://apache.org/)

  - [APR编程教程](http://dev.ariel-networks.com/apr/apr-tutorial/html/apr-tutorial.html)

[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink")
[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")

1.