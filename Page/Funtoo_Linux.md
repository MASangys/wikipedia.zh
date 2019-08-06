**Funtoo Linux**是一个基于[Gentoo Linux的](../Page/Gentoo_Linux.md "wikilink")[Linux发行版](../Page/Linux发行版.md "wikilink")，在2008年由Gentoo Linux项目的前任领导者[Daniel Robbins启动](https://zh.wikipedia.org/wiki/Daniel_Robbins "wikilink")。\[1\]\[2\]

## 历史

在2008年的早些时候，Gentoo的创建者[Daniel Robbins提议解决](https://zh.wikipedia.org/wiki/Daniel_Robbins "wikilink")\[3\]Gentoo基金会的问题\[4\]。但是他已经在2004年离开了这个项目，他的提议被拒绝了。\[5\] 为了实现他的愿望，旨在分享创新的Funtoo项目就诞生了。

## 特点

Funtoo是一个基于[源代码](../Page/源代码.md "wikilink")的[Linux](../Page/Linux.md "wikilink")[发行版](../Page/Linux发行版.md "wikilink")。它的开发是在[IRC](../Page/IRC.md "wikilink")和一个[邮件列表上讨论进行的](https://zh.wikipedia.org/wiki/邮件列表 "wikilink")。\[6\] 所做的更改有时会通过一个[Atom源提前发布](../Page/Atom_\(標準\).md "wikilink")。

### 核心技术

Funtoo除了默认原生支持UTF-8之外，还包括以下特点：

#### Git

Funtoo使用[Git](../Page/Git.md "wikilink")储存[Portage](../Page/Portage.md "wikilink")树。

#### Metro

Metro\[7\]是一个在安装Funtoo时用于组建stage的自动化软件。

#### boot-update

boot-update\[8\]为设置[GNU GRUB](../Page/GNU_GRUB.md "wikilink")2和GRUB Legacy[引导程序提供了统一的机制](../Page/啟動程式.md "wikilink")。

#### 核心网络

Funtoo拥有自己的核心网络解决方案，让用户基于预先创建的配置文件来简化复杂的网络接口的创建。\[9\]

### 内核

尽管Funtoo是一个基于源代码的发行版，但它也可以使用一个已构建好的[Linux内核](../Page/Linux内核.md "wikilink")。\[10\]Funtoo不再鼓励用户使用[Sabayon内核](../Page/Sabayon_Linux.md "wikilink")，然而，利用许多Funtoo的设计和初始化进程上的的改进，对于一个指定的使用预先编译/设置好内核的发行版，用户是可以装载它的加上了[initrd的内核的](https://zh.wikipedia.org/wiki/initrd "wikilink")。Ubuntu的内核linux-3.2.0-17-generic已被测试可以在Funtoo上运作。这对那些想避免组建自定义内核的人是非常有利的。如果使用[boot-update](http://www.funtoo.org/wiki/Boot-Update)的话，使用其它发行版的通用内核应该会很简单。

## 参见

<references />

## 外部链接

  - [官方网站](http://www.funtoo.org/)

[Category:Gentoo_Linux_derivatives](https://zh.wikipedia.org/wiki/Category:Gentoo_Linux_derivatives "wikilink") [Category:2008_software](https://zh.wikipedia.org/wiki/Category:2008_software "wikilink") [Category:Source-based_Linux_distributions](https://zh.wikipedia.org/wiki/Category:Source-based_Linux_distributions "wikilink") [Category:X86-64_Linux_distributions](https://zh.wikipedia.org/wiki/Category:X86-64_Linux_distributions "wikilink")

1.
2.
3.
4.
5.
6.  [funtoo-dev mailing list](http://groups.google.com/group/funtoo-dev)
7.  [Metro Quick Start Tutorial - Funtoo Linux](http://www.funtoo.org/wiki/Metro_Quick_Start_Tutorial)
8.  [Boot-Update - Funtoo Linux](http://www.funtoo.org/wiki/Boot-Update)
9.  <http://funtoo.org/en/funtoo/core/networking/>
10. [Funtoo Linux Kernels - Funtoo Linux](http://www.funtoo.org/wiki/Funtoo_Linux_Kernels)