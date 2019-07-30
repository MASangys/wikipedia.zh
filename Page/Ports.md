**Ports collections** （又称 **ports trees** 或直接简称 **ports**）是一系列由[BSD](../Page/BSD.md "wikilink")系列操作系统（比如 [FreeBSD](../Page/FreeBSD.md "wikilink")，[NetBSD](../Page/NetBSD.md "wikilink")，和 [OpenBSD](../Page/OpenBSD.md "wikilink")）提供的一些 [makefile](https://zh.wikipedia.org/wiki/makefile "wikilink") 和 [patch (Unix)](https://zh.wikipedia.org/wiki/Patch "wikilink")，以作为一种简单的[安装以及创建](https://zh.wikipedia.org/wiki/安装 "wikilink")[二进制包的方法](https://zh.wikipedia.org/wiki/二进制包 "wikilink")。它们通常基于[软件包管理系统](../Page/软件包管理系统.md "wikilink")，并带有 ports  创建以及附加工具以对软件包删除、增添或进行其他操作。除了BSD，一些[Linux发行版](../Page/Linux发行版.md "wikilink")有类似的软件。包括 [Gentoo的](https://zh.wikipedia.org/wiki/Gentoo "wikilink") [Portage](../Page/Portage.md "wikilink")，[Archlinux](https://zh.wikipedia.org/wiki/Archlinux "wikilink") 的 [Arch编译系统](https://zh.wikipedia.org/wiki/Arch编译系统 "wikilink")(ABS) ， 的以及 [Void Linux](../Page/Void_Linux.md "wikilink") 的 Ports。

Ports 的主要优点是使用现有的硬件资源对软件安装的微调与优化。例如，管理员可以容易地在64位系统安装一个64位软件，而如果还没有64位软件那就会安装一个未对64位优化的32位软件。

另一方面，它的主要缺点是需要额外花时间在包的编译上。举个例子，安装一份全部通过 ports 编译的 FreeBSD 需要几天，当然，这取决与你的硬件。编译GNOME等大型软件也需要花费大量时间。

## NetBSD 的 pkgsrc

[NetBSD](../Page/NetBSD.md "wikilink") 的 *pkgsrc ports collection* 与众不同，它致力于保证和便携性，以及对除 [NetBSD](../Page/NetBSD.md "wikilink") 外的 BSD 系统的通用性，包括其他BSD，Linux和其他[类Unix系统](../Page/类Unix系统.md "wikilink")。在 1997年8月，pkgsrc 被基于已经存在的 FreeBSD ports 系统被创建。它遵循每季度发布，而在2006年7月包含了超过6000个包。 在[DragonFly BSD](../Page/DragonFly_BSD.md "wikilink") 的1.4版本，他们宣称会采纳 pkgsrc 作为他们的官方包管理系统。\[1\]但后来但后来DragonFly BSD又很快地创建了他们自己的 *ports*，称为 *dports*，在3,4版本发行并在3.6版本完全更换\[2\]，*dports* 是通过git运转的。\[3\]

## OpenBSD 的 ports

相反，[FreeBSD Ports](../Page/FreeBSD_Ports.md "wikilink") 是它最初的基础，[OpenBSD](../Page/OpenBSD.md "wikilink") 的ports系统的目的是作为来源，以创建最终包：安装 ports 时首先创建一个包，然后进行安装。Ports 包含 [Makefile](https://zh.wikipedia.org/wiki/Makefile "wikilink") ，带有说明信息的 [文本文件](../Page/文本文件.md "wikilink")，让这个程序在 OpenBSD 运行的补丁以及一个列出本包中的文件的包列表。这个 ports 使用一系列标准的 Makefile，其中一些和[源代码](../Page/源代码.md "wikilink")树共享，这些共共享的基础部分常常包括用于给 ports 开发者的公共的功能，以保证 ports 可以十分简洁。为安全起见，或为开发新的 ports 的辅助，ports 编译可能在 [systrace](https://zh.wikipedia.org/wiki/systrace "wikilink") 下运行，并提供了一个默认的策略。

在2007年10月下旬, OpenBSD 开发者 Nikolay Sturm 宣布稳定版本的 ports 应被看作无人维护的，因为缺乏资源。这强烈地驱使用户运行current版本的 ports/base tree 以保持安全更新。在2009年，stable 版本的 ports tree 在 Robert Nagy 和 Jasper Lievisse Adriaanse 的管理下复用。\[4\]

此处有两个非官方的网页，上有一 OpenBSD 的 ports 和包列表：

  - [OpenPorts.se](http://OpenPorts.se)（原网站是 ports.openbsd.nu， 于 2006年\[5\]）是是一个自定义编写的网站，进行 ports tree 的结构和更新的解析，并具有跟踪变化特定 port 的功能。有一个缺点，就是不支持一些更丰富的 Makefile 逻辑，因此失去了15%的包，因为这些包需要更复杂的 ports tree 结构和官方工具。\[6\]
  - [ports.su](http://ports.su)，在2013年2月发布，基于 sqlports 数据库；\[7\] 因此，它具有所有可用于AMD64平台的包和习惯。 因为基于官方工具， "虚拟的" （无主）类都是可用的，并包含关于库的讯息，编译 run-time 依赖。 该网站的源码基于 ports-readmes port,并已经在 [GitHub](../Page/GitHub.md "wikilink") 上可用。

## 参考

## 参见

  - [Arch编译系统](https://zh.wikipedia.org/wiki/Arch编译系统 "wikilink")

  - [FreeBSD Ports](../Page/FreeBSD_Ports.md "wikilink")

  - [Portage](../Page/Portage.md "wikilink")

  - [MacPorts](../Page/MacPorts.md "wikilink")

  -
## 外链

  - [OpenBSD 的 Porter 手册](http://www.openbsd.org/faq/ports/)
  - [OpenBSD ports](http://ports.su/)
  - [The OpenBSD ports manpage](http://www.openbsd.org/cgi-bin/man.cgi?query=ports)
  - [FreeBSD Ports](http://www.freebsd.org/ports/)
  - [pkgsrc: NetBSD 包收集](http://www.netbsd.org/Documentation/software/packages.html)
  - [编译之后的想法](https://web.archive.org/web/20060102221915/http://www.gobolinux.org/?page=doc%2Farticles%2Fcompile)

[Category:BSD](https://zh.wikipedia.org/wiki/Category:BSD "wikilink") [Category:自由软件包管理系统](https://zh.wikipedia.org/wiki/Category:自由软件包管理系统 "wikilink")

1.
2.
3.
4.
5.
6.