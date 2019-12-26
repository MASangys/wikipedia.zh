**libuv**（[Unicorn](../Page/独角兽.md "wikilink") [Velociraptor](../Page/伶盜龍屬.md "wikilink")—独角伶盗龙\[1\]）库是多平台[C库](https://zh.wikipedia.org/wiki/C语言 "wikilink")，提供对基于[事件循环的](https://zh.wikipedia.org/wiki/事件循环 "wikilink")[异步I/O的支持](https://zh.wikipedia.org/wiki/异步I/O "wikilink")。它支持[`epoll(4)`](../Page/Epoll.md "wikilink")、[`kqueue(2)`](https://zh.wikipedia.org/wiki/Kqueue "wikilink")、Windows的[IOCP](../Page/IOCP.md "wikilink")和[Solaris](../Page/Solaris.md "wikilink")的[事件端口](https://zh.wikipedia.org/wiki/事件端口 "wikilink")。它主要设计用于[Node.js](../Page/Node.js.md "wikilink")，但也可用于其他软件项目如[Julia或](../Page/Julia_\(编程语言\).md "wikilink")[pyuv](https://github.com/saghul/pyuv)等\[2\]。它最初是[libev或Microsoft](https://zh.wikipedia.org/wiki/libev "wikilink") [IOCP](../Page/IOCP.md "wikilink")上的抽象，[libev只支持Unix系统而不支持Windows上的IOCP](https://zh.wikipedia.org/wiki/libev "wikilink")，在node-v0.9.0的libuv版本中去除了对libev的依赖\[3\]。

## 特征

下述特征取自代码仓库介绍\[4\]：

  - 全特征事件循环以epoll、kqueue、IOCP、事件端口为后端
  - 异步[TCP和](../Page/传输控制协议.md "wikilink")[UDP套接字](../Page/用户数据报协议.md "wikilink")
  - 异步[DNS解析](../Page/域名系统.md "wikilink")
  - 异步文件和[文件系统](../Page/文件系统.md "wikilink")操作
  - 文件系统事件
  - [ANSI转义序列](../Page/ANSI转义序列.md "wikilink")控制的[TTY](https://zh.wikipedia.org/wiki/终端 "wikilink")
  - [IPC经由套接字共享](https://zh.wikipedia.org/wiki/进程间通信 "wikilink")，使用[Unix域套接字或](https://zh.wikipedia.org/wiki/Unix域套接字 "wikilink")[命名管道](../Page/命名管道.md "wikilink")（Windows）
  - [子进程](../Page/子进程.md "wikilink")
  - [线程](../Page/线程.md "wikilink")池
  - 信号处理
  - 高解析度时钟
  - 线程和同步原语（primitive）

## 参见

  - [libevent](https://zh.wikipedia.org/wiki/libevent "wikilink")
  - [libev](https://zh.wikipedia.org/wiki/libev "wikilink")
  - [反应器模式](../Page/反应器模式.md "wikilink")

## 引用

## 外部链接

  -
  -
  - [An Introduction to libuv](https://nikhilm.github.io/uvbook/)

  - [libuv API documentation](http://docs.libuv.org/)

  - [libuv design overview](http://docs.libuv.org/en/latest/design.html)

[Category:C函式库](https://zh.wikipedia.org/wiki/Category:C函式库 "wikilink") [Category:事件_(计算机)](https://zh.wikipedia.org/wiki/Category:事件_\(计算机\) "wikilink") [Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink")

1.
2.
3.  [An introduction to libuv](https://nikhilm.github.io/uvbook/introduction.html#background)
4.