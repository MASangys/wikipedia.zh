> 本文内容由[GLib](https://zh.wikipedia.org/wiki/GLib)转换而来。


**GLib**是一个跨平台的、用[C语言编写的五个底层](https://zh.wikipedia.org/wiki/C语言 "wikilink")[库的集合](../Page/函式庫.md "wikilink")，为[GNOME](../Page/GNOME.md "wikilink")所使用。

## 历史

GLib起初是[GTK+的一部分](https://zh.wikipedia.org/wiki/GTK+ "wikilink")，但到了GTK+第二版，开发者决定把跟图形界面无关的代码分开，这些代码于是就组装成了GLib。

因为GLib具有跨平台特性，所以用它编写的程序可以无需进行大幅度修改就可以在其他程序上编译和运行。\[1\]

## 功能

GLib提供了多种高级的数据结构，如内存块、双向和单向[链表](../Page/链表.md "wikilink")、[哈希表](../Page/哈希表.md "wikilink")、动态字符串以及字符串工具（例如[词法分析器](https://zh.wikipedia.org/wiki/词法分析 "wikilink")，字符串切分等）、动态数组，平衡[二叉树](../Page/二叉树.md "wikilink")、n-叉树、[键值存储](https://zh.wikipedia.org/wiki/键值存储 "wikilink")、关系和[元组](https://zh.wikipedia.org/wiki/元组 "wikilink")，还有带有[缓存](../Page/缓存.md "wikilink")的内存管理。

Glib还实现了[线程](../Page/线程.md "wikilink")相关的函数、多线程编程以及相关的工具，例如原始变量访问，[互斥锁](../Page/互斥锁.md "wikilink")，异步[队列](../Page/队列.md "wikilink")，安全内存池，[消息传递和日志](https://zh.wikipedia.org/wiki/訊息傳遞_\(軟體\) "wikilink")，[钩子函数和计时器](https://zh.wikipedia.org/wiki/钩子 "wikilink")，同时消息传递还包含了字节序转换和IO channel

### 组成

GLib由五个库组成：

  - [GObject](../Page/GObject.md "wikilink") –对象系统，包括类型系统GType
  - Glib
  - [GModule](https://zh.wikipedia.org/wiki/GModule "wikilink")
  - [GThread](https://zh.wikipedia.org/wiki/GThread "wikilink")
  - [GIO](https://zh.wikipedia.org/wiki/GIO_\(software\) "wikilink")

## 参考文献

## 外部链接

  -
  - [GLib文档](http://developer.gnome.org/glib/stable/)

  - [GLib Git Source Tree](https://gitlab.gnome.org/GNOME/glib)

[Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink") [Category:使用LGPL许可证的软件](https://zh.wikipedia.org/wiki/Category:使用LGPL许可证的软件 "wikilink") [Category:GTK](https://zh.wikipedia.org/wiki/Category:GTK "wikilink") [Category:GNOME](https://zh.wikipedia.org/wiki/Category:GNOME "wikilink") [Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink")

1.