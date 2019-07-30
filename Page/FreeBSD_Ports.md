**FreeBSD Ports collection** 是[FreeBSD](../Page/FreeBSD.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")中的[软件包管理系统](../Page/软件包管理系统.md "wikilink")。它使安装软件包体验变得简单、一致。到2018年4月为止，共有超过31,679个\[1\]ports可用。它也是[NetBSD](../Page/NetBSD.md "wikilink")pkgsrc系统的基础组件。

## 以源码安装

[ports collection由整理在文件夹树中的](https://zh.wikipedia.org/wiki/ports_collection "wikilink")[Makefile组成](https://zh.wikipedia.org/wiki/Makefile "wikilink")，这样就可以用**make**命令来[构建](https://zh.wikipedia.org/wiki/软件组建 "wikilink")、安装和卸载软件了。在安装[应用程序](../Page/应用程序.md "wikilink")时，当用户在该软件的ports文件夹中输入诸如**make install**或是**make install clean**之类的初始命令后，就几乎不需要用户干预了。大多数情况下，从[互联网](../Page/互联网.md "wikilink")下载软件、在必要时打[补丁以及configure](https://zh.wikipedia.org/wiki/修补程式 "wikilink")、[编译](https://zh.wikipedia.org/wiki/编译器 "wikilink")、安装、在软件包数据库中注册等工作都是自动完成的。新安装的ports所依赖的[应用或库也会一并安装好](https://zh.wikipedia.org/wiki/应用软件 "wikilink")。

通常人们认为大部分ports的[默认设置适用于多数用户](https://zh.wikipedia.org/wiki/默认选项 "wikilink")。不过，有时用户可以修改这些选项（称作*knobs*）。在安装软件前输入**make config**命令，随后在调出的文本模式界面中修改设置即可。

过去每个port（或是软件包）通过指定一名负责维护port的通用性并解决常见问题的*port维护者*来维护。现在很多port由特别小组或是子项目来维护，有自己的邮件列表（例如：kde@FreeBSD.org、java@FreeBSD.org等）；其余port的维护事务则分配到统一的小组ports@FreeBSD.org中。一般来说，任何提交他们喜爱的软件到ports库中的人都可以成为一名port维护者。通过维护已经无人维护的包来成为维护者也是可行的道路\[2\]。

## 软件包

预编译的ports称作*软件包*（）。软件包可以从对应的port中以**make package**命令构建，也可以从FreeBSD项目提供的仓库中下载。用户把软件包名称传给**pkg install**命令即可安装。这样系统会下载符合本地FreeBSD版本的软件包并安装应用程序及其依赖。软件包默认从FreeBSD主软件源（pkg.freebsd.org）中下载。

所有FreeBSD为其支持的[体系结构和系统](https://zh.wikipedia.org/wiki/体系结构 "wikilink")[版本提供的软件包都由称作](https://zh.wikipedia.org/wiki/软件版本周期 "wikilink")*尖顶帽*的构建农场（编译服务器集群）构建。ports在农场中构建为软件包后其编译[日志和错误信息都能在](../Page/服务器日志.md "wikilink")[数据库](../Page/数据库.md "wikilink")中查到\[3\]，每周的编译日志也可以在邮件列表存档中查到\[4\]。

## 另见

  - [MacPorts](../Page/MacPorts.md "wikilink")

## 参考文献

## 外部链接

  - [Official FreeBSD Ports web page](http://www.freebsd.org/ports/index.html)
  - [FreshPorts](http://www.freshports.org/) - website that tracks port updates
  - [Port-Tags](https://web.archive.org/web/20071115191841/http://www.tobez.org/port-tags/) - Project to add tags to the ports collection
  - [Installing Applications: Packages and Ports](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/ports.html) from the [FreeBSD Handbook](https://zh.wikipedia.org/wiki/FreeBSD_Handbook "wikilink") (Chapter 4)

[Category:FreeBSD](https://zh.wikipedia.org/wiki/Category:FreeBSD "wikilink") [Category:自由软件包管理系统](https://zh.wikipedia.org/wiki/Category:自由软件包管理系统 "wikilink")

1.
2.
3.
4.  <https://lists.freebsd.org/mailman/listinfo/freebsd-pkg-fallout>