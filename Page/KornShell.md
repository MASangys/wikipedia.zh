**KornShell**（**`ksh`**）是一款由于二十世纪八十年代早期在[贝尔实验室](../Page/贝尔实验室.md "wikilink")开发的[Unix shell](../Page/Unix_shell.md "wikilink")，并在1983年7月14日的上发布。\[1\]\[2\]起初此软件基于[Bourne shell的源代码编写](../Page/Bourne_shell.md "wikilink")。\[3\]其他贡献者有贝尔实验室的开发者，如迈克·维奇（Mike Veach）和帕特·沙利文（Pat Sullivan）；他们分别编写了[Emacs](../Page/Emacs.md "wikilink")和[vi风格的行编辑模式代码](../Page/Vi.md "wikilink")。\[4\]KornShell向后兼容Bourne shell，同时还根据贝尔实验室用户的需求添加了诸多[C shell的功能](../Page/C_Shell.md "wikilink")。

## 设计

KornShell实现了[POSIX.2](../Page/可移植操作系统接口.md "wikilink")，同时拥有壳层及实用工具、命令解释器（IEEE Std 1003.2-1992.）。KornShell与传统的Bourne shell的主要差别有：

  - 根据[C shell所设计的](../Page/C_Shell.md "wikilink")、[命令别名及](../Page/Alias_\(命令\).md "wikilink")[命令历史特性](https://zh.wikipedia.org/wiki/命令行历史记录 "wikilink")。作业控制功能于1989年才添加至Bourne Shell。\[5\]
  - 提供基于[vi](../Page/Vi.md "wikilink")、[Emacs](../Page/Emacs.md "wikilink")和[XEmacs的三种命令行编辑风格](https://zh.wikipedia.org/wiki/XEmacs "wikilink")。
  - [关联数组](../Page/关联数组.md "wikilink")及内置的[浮点运算操作](../Page/浮点数.md "wikilink")（仅在版KornShell中可用）。
  - 内置指令的动态可扩展（截至版本）。

## 历史

[OpenBSD_ksh_Interaction.png](https://zh.wikipedia.org/wiki/File:OpenBSD_ksh_Interaction.png "fig:OpenBSD_ksh_Interaction.png")默认壳层（）的交互界面\]\]

KornShell起初是一款[专有软件](../Page/专有软件.md "wikilink")。2000年，其源代码以AT\&T独有的许可发布；但在2005年年初，93q版本使用[Eclipse公共许可证](../Page/Eclipse公共许可证.md "wikilink")发布。由于KornShell起初为私有授权软件，在那时的人们创造了自由开源的替代品（、、[GNU](../Page/GNU.md "wikilink") 及）。 \[6\]KornShell被收录进了AT\&T软件技术（AST）开源软件集。

KornShell的原始版本（）被当做[POSIX.2](../Page/可移植操作系统接口.md "wikilink")、壳层及实用工具、命令解释器（IEEE Std 1003.2-1992.）的基础。

部分供应商有时会提供其自己根据老版本改编的变体，有时还会在其基础上添加扩展。现仍被作者维护，并通过在其后添加字母的方式命名发布版本；的最新版本为（及的更新版）；仍处于测试阶段（）。\[7\]

作为“桌面版KornShell”（），作为[通用桌面环境的一部分发布](../Page/CDE.md "wikilink")。\[8\]此版本同时提供了对[Motif](../Page/Motif.md "wikilink")挂件的壳层级映射。它的目的是成为[Tcl](../Page/Tcl.md "wikilink")/[Tk](../Page/Tk.md "wikilink")的竞争对手。\[9\]

原版KornShell（）成为了[AIX第四版的默认壳层](../Page/IBM_AIX.md "wikilink")，\[10\]\[11\]但同时也可使用ksh93。\[12\]

7中既包括，也包括。默认的Kornshell版本为（），老版本则在下可用。\[13\]UnixWare同时在安装了[CDE](../Page/CDE.md "wikilink")的情况下提供{{mono|dtksh}。

## 变体

下列为多个与KornShel相关的软件产品：

  -  – 的分支，为[CDE](../Page/CDE.md "wikilink")的一部分。

  -  – 的分支，提供对[Tk](../Page/Tk.md "wikilink")[部件工具箱](../Page/部件工具箱.md "wikilink")的访问。

  -  – [OpenBSD](../Page/OpenBSD.md "wikilink")风味KornShell的Linux版分支，为的默认壳层。

  -  – KornShell语言的[自由软件](../Page/自由软件.md "wikilink")实现，为的分支。其起初为开发，以[宽松的授权条款发布](../Page/寬鬆自由軟體授權條款.md "wikilink")（）。\[14\]除了用在BSD上外，此变体还替代了Debian上的，\[15\]更是Android的默认壳层。

  -  – [AmigaOS](../Page/AmigaOS.md "wikilink")风味的版本，提供了多个Amiga的特有功能（如互用性）

  - 的MKS Korn shell – 来自（SFU）对KornShell语言的专有实现（版本2.0及以下）；据大卫·科恩所述，MKS Korn shell与1998年时的Kornshell不完全兼容。\[16\]\[17\]在SFU版本3.0中，[微软](../Page/微软.md "wikilink")使用中的POSIX.2兼容版壳层替换了MKS Korn shell。\[18\]

  - 大卫·科恩的Unix兼容包中含有KornShell。\[19\]

## 另请参阅

  -
  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")

  - 软件

## 参考文献

## 延伸阅读

  -
  - David G. Korn, Charles J. Northrup and Jeffery Korn [The New KornShell—ksh93](http://www.linuxjournal.com/article/1273), , Issue 27, July 1996

## 外部链接

  - [Korn shell主页（AT\&T ksh）](http://www.kornshell.com)

  - [AT\&T软件技术的（AST）GitHub页](https://github.com/att/ast)，其中有ksh源代码。

  - [KSH官方邮件列表](https://github.com/att/ast#mailing-lists)（ast-developers及ast-users）

  -
  -
  - [Public Domain Korn shell (pdksh)](https://web.archive.org/web/20040216045828/http://web.cs.mun.ca/~michael/pdksh/)

  - [MirBSD Korn Shell（mksh）](http://www.mirbsd.org/mksh.htm)

  -
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink") [Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink") [Category:使用Meson的软件](https://zh.wikipedia.org/wiki/Category:使用Meson的软件 "wikilink") [Category:Unix_shells](https://zh.wikipedia.org/wiki/Category:Unix_shells "wikilink")

1.
2.
3.

4.

5.

6.
7.

8.

9.

10.

11.

12.

13.

14.
15.

16.

17.

18.

19.