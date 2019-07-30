'''Nix '''是一个操作系统包管理器。同 [RPM](../Page/RPM套件管理員.md "wikilink")、[APT](https://zh.wikipedia.org/wiki/高级包装工具 "wikilink") 和许多其它的[软件包管理系统](../Page/软件包管理系统.md "wikilink")一样，它可以用来控制软件包的安装，或已命名的，带版本号的文件组，例如软件应用及其相关的配置数据等。\[1\]\[2\]\[3\]

## Nix

Nix 包采用一种专门设计的，[惰性求值](../Page/惰性求值.md "wikilink")的[纯函数式语言进行配置](https://zh.wikipedia.org/wiki/Purely_functional_language "wikilink")；[Shell 脚本或其它外部程序](https://zh.wikipedia.org/wiki/Shell_脚本 "wikilink")（如 [Make](../Page/Make.md "wikilink")）可用于从源码构建包。此系统的纯函数式性质能够保证非常精准的依赖跟踪。例如，一个二进制包依赖于对应的源码包、编译器和其它用于构建的包。[密码散列函数确定了每个包的精确构建和运行时依赖](https://zh.wikipedia.org/wiki/密碼雜湊函數 "wikilink")，而每个源码或二进制包都以一个这样的散列值表示。其结果就是，二进制包仓库成为了包管理器基本操作透明性的优化（类似于通过密码散列函数来“缓存”）。

依赖问题通过功能上等价于硬链接的一套系统来解决，若软件的某个版本被某个包所依赖，那么仅当没有包依赖于它之前，它都不会被[移除](../Page/垃圾回收_\(計算機科學\).md "wikilink")。这会导致需要更多的存储空间，但可以保证所有升级的安全性（保证不会破坏现有的应用）和[原子性](../Page/线性一致性.md "wikilink")。它也允许任何包的多个版本，包括参数化地包含某一特性的包同时存在而没有冲突。

Nix 在安装包时依赖于自身的目录结构。所有的包均会被安装到 nix 目录的子目录中。在命名文件夹时，一个包的不同版本会根据包的 hash 加以区分。

此外，Nix 可作为现有系统（例如 GNU/Linux 发行版）的包管理器使用。除了严格意义上的软件包外，Nix 也可被用于维护任何类型的文件配置，如服务器的配置等。

## NixOS

[NixOS](https://zh.wikipedia.org/wiki/NixOS "wikilink")\[4\] 是一个 [Linux发行版](../Page/Linux发行版.md "wikilink")，它采用 Nix 来管理操作系统中包括 Linux 内核的所有部分。\[5\]

## 参见

  - [Maak](https://zh.wikipedia.org/wiki/Maak "wikilink") -  一个类似于 [make](https://zh.wikipedia.org/wiki/make "wikilink") 的[自动化构建工具](../Page/組建自動化.md "wikilink")，它被设计用于构建复杂的软件系统。
  - [脚本语言](../Page/脚本语言.md "wikilink")
  - [软件包（软件包管理系统）](../Page/软件包管理系统.md "wikilink")
  - [GNU Guix](https://zh.wikipedia.org/wiki/GNU_Guix "wikilink") - 另一个 GNU/Linux 发行版的声明式包管理器，基于 Nix 构建，不过采用了更加普及的 [GNU Guile](../Page/GNU_Guile.md "wikilink") 语言而非 Nix 的[领域特定语言进行配置和定制](https://zh.wikipedia.org/wiki/领域特定语言 "wikilink")。
  - [批处理](https://zh.wikipedia.org/wiki/批处理任务 "wikilink")
  - [办公自动化](../Page/办公自动化.md "wikilink")
  - [运维自动化](https://zh.wikipedia.org/wiki/Runbook#Runbook_Automation "wikilink") - 包管理器的潜在应用场景
  - [软件工程](../Page/软件工程.md "wikilink")

## 参考文献

## 外部链接

  -
  - [零安装和](https://zh.wikipedia.org/wiki/Zero_Install "wikilink") Nix 这类系统的[比较](http://0install.net/links.html)

  - [Debian 开发者的批评](http://lists.debian.org/debian-devel/2008/12/msg01027.html) (2008)

  - 介绍：[Purely Functional Configuration Management with Nix and NixOS](http://www.infoq.com/articles/configuration-management-with-nix)

[Category:2012年软件](https://zh.wikipedia.org/wiki/Category:2012年软件 "wikilink") [Category:數據管理軟件](https://zh.wikipedia.org/wiki/Category:數據管理軟件 "wikilink") [Category:自由電腦程式設計工具](https://zh.wikipedia.org/wiki/Category:自由電腦程式設計工具 "wikilink") [Category:自由软件包管理系统](https://zh.wikipedia.org/wiki/Category:自由软件包管理系统 "wikilink") [Category:函數式編程](https://zh.wikipedia.org/wiki/Category:函數式編程 "wikilink") [Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink") [Category:Linux软件包管理相关软件](https://zh.wikipedia.org/wiki/Category:Linux软件包管理相关软件 "wikilink") [Category:Unix软件](https://zh.wikipedia.org/wiki/Category:Unix软件 "wikilink")

1.  Prins, P., Suresh, J. and Dolstra, E., ["Nix fixes dependency hell on all Linux distributions,"](http://www.linux.com/feature/155922) \[//en.wikipedia.org/wiki/Linux.com linux.com\], December 22, 2008
2.  Dolstra, E., de Jonge, M. and Visser, E. ["Nix: A Safe and Policy-Free System for Software Deployment."](http://www.st.ewi.tudelft.nl/~dolstra/pubs/nspfssd-lisa2004-final.pdf)  In Damon, L. (Ed.), *[18th Large Installation System Administration Conference (LISA '04)](http://www.usenix.org/events/lisa04/)*, pages 79–92, Atlanta, Georgia, USA. USENIX, November 2004.
3.  Dolstra, E. [*The Purely Functional Software Deployment Model.*](http://www.st.ewi.tudelft.nl/~dolstra/pubs/phd-thesis.pdf)  PhD thesis, Faculty of Science, Utrecht, The Netherlands. January 2006. .
4.  <http://nixos.org/>
5.  Dolstra, E. and Löh, A. ["NixOS: A Purely Functional Linux Distribution](http://www.st.ewi.tudelft.nl/~dolstra/pubs/nixos-icfp2008-final.pdf) ." In *[ICFP 2008: 13th ACM SIGPLAN International Conference on Functional Programming](http://www.icfpconference.org/icfp2008/),* pages 367–378, Victoria, British Columbia, Canada. September 2008.