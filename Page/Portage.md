> 本文内容由[Portage](https://zh.wikipedia.org/wiki/Portage)转换而来。


****是[Gentoo Linux所使用的](../Page/Gentoo_Linux.md "wikilink")[包管理器](https://zh.wikipedia.org/wiki/包管理器 "wikilink")，基于[ports collection机制](https://zh.wikipedia.org/wiki/ports_collection "wikilink")。的高度灵活性令Gentoo開發團隊因此稱Gentoo為元发行版\[1\]。计划则关注于如何使用Portage管理如[BSD](../Page/BSD.md "wikilink")、[Mac OS X和](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Solaris](../Page/Solaris.md "wikilink")等其他操作系统。这些移植中最有名的是计划。

Gentoo的软件包管理器规范计划（，）正致力于的行为的记录标准化，这些措施刻意使Paludis和pkgcore等替代包管理器使用[ebuild树和Gentoo系统包](https://zh.wikipedia.org/wiki/ebuild "wikilink")。\[2\]PMS计划的目标是为Portage制定包括特性、ebuild与包管理器行为的权威参考。

## 概述

### 使用Portage

[Porthole-screenshot.png](https://zh.wikipedia.org/wiki/File:Porthole-screenshot.png "fig:Porthole-screenshot.png") Portage与[BSD](../Page/BSD.md "wikilink")风格[包管理器](https://zh.wikipedia.org/wiki/包管理器 "wikilink")[Ports collection相仿并最早参照了](https://zh.wikipedia.org/wiki/Ports_collection "wikilink")[FreeBSD](../Page/FreeBSD.md "wikilink")的portage。\[3\] Portage由[Python](../Page/Python.md "wikilink")写成，是Gentoo最重要的工具之一。Portage包含[ebuild系统与emerge两个主要部分](https://zh.wikipedia.org/wiki/ebuild "wikilink")。ebuild系统构建与安装软件包，emerge为ebuild提供了管理ebuild资源库、解决依赖性与类似问题的接口。（因此这两者的关系与[rpm和](https://zh.wikipedia.org/wiki/RPM_Package_Manager "wikilink")[yum或](https://zh.wikipedia.org/wiki/Yellow_dog_Updater,_Modified "wikilink")[dpkg和](https://zh.wikipedia.org/wiki/dpkg "wikilink")[APT的关系相仿](https://zh.wikipedia.org/wiki/Advanced_Packaging_Tool "wikilink")。）

Portage有基于[GTK+的图形前端Porthole和基于](https://zh.wikipedia.org/wiki/GTK+ "wikilink")[Haskell](../Page/Haskell.md "wikilink")的图形前端Himerge。

### 所提供功能

Portage主要特色是从[源码](https://zh.wikipedia.org/wiki/源码 "wikilink")[编译用户所需要安装的软件包](https://zh.wikipedia.org/wiki/编译 "wikilink")。此过程中用户可以调整编译器和目标程序的选项以符合系统需要或自己的喜好。与系统管理相关的功能包括：允许平行版本安装、追踪跨软件包[依赖](https://zh.wikipedia.org/wiki/耦合性_\(计算机科学\) "wikilink")、维护记录已安装软件的数据库、提供本地ebuild库、使本地库与远程库相同步。与个别软件包安装相关的功能有：为目标机器指定编译选项、定制构成软件包的组件。

Portage将ebuild按照稳定程度分为三个级别：*stable*（如在发行时已无已知的[安全问题](https://zh.wikipedia.org/wiki/软件安全 "wikilink")）、*keyword masked*（主要对未在目标架构上得到充分[测试的包](../Page/软件测试.md "wikilink")）、*hard masked*（损坏或极度不安全的包）。

## 脚注

## 参见

  - [Gentoo Linux](../Page/Gentoo_Linux.md "wikilink")

[Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink") [Category:自动化构建](https://zh.wikipedia.org/wiki/Category:自动化构建 "wikilink") [Category:Python軟體](https://zh.wikipedia.org/wiki/Category:Python軟體 "wikilink")

1.
2.
3.