> 本文内容由[Ncurses](https://zh.wikipedia.org/wiki/Ncurses)转换而来。


**`ncurses`**（**n**ew **curses**）是一个[程序库](https://zh.wikipedia.org/wiki/库_\(计算机\) "wikilink")，它提供了[API](../Page/应用程序接口.md "wikilink")，可以允许程序员编写独立于终端的。它是一个[虚拟终端](../Page/虚拟终端.md "wikilink")中的“类[GUI](../Page/图形用户界面.md "wikilink")”[应用软件工具箱](https://zh.wikipedia.org/wiki/应用软件 "wikilink")。它还优化了屏幕刷新方法，以减少使用远程[shell时遇到的](../Page/Unix_shell.md "wikilink")[延迟](../Page/延迟_\(工程学\).md "wikilink")。

## 历史

**n**curses中的*n*来源于单词***n**ew*。这是因为ncurses是System V第4.0版（SVr4）中[`curses`](https://zh.wikipedia.org/wiki/curses_\(库\) "wikilink")的[自由软件](../Page/自由软件.md "wikilink")克隆, 而那又是停止开发的4.4 BSD curses的增强版。\[1\]System V严格遵守了[X/Open发布的XSI](https://zh.wikipedia.org/wiki/X/Open "wikilink") Curses标准。

### curses

1980年左右，加州大学伯克利分校为[BSD](../Page/BSD.md "wikilink")操作系统开发了最初的curses库，以支持面向屏幕的游戏。它最初使用了[termcap库](https://zh.wikipedia.org/wiki/termcap "wikilink")，其他程序，如[vi编辑器中也使用了这个库](https://zh.wikipedia.org/wiki/vi "wikilink")。\[2\]

BSD curses库的成功促使贝尔实验室在他们的System III和System V第1版[Unix系统中](https://zh.wikipedia.org/wiki/Unix "wikilink")，发布增强的curses库。这个库功能更强大，而且它用[terminfo代替了termcap](https://zh.wikipedia.org/wiki/terminfo "wikilink")。然而，由于[AT\&T的源代码分发政策](https://zh.wikipedia.org/wiki/美国电话电报公司 "wikilink")，改进的curses库并没有被BSD社区广泛接受。\[3\]

### pcurses

约1982年时，帕维尔·柯蒂斯（Pavel Curtis）开发了贝尔实验室curses的[免费软件克隆](https://zh.wikipedia.org/wiki/免费软件 "wikilink")，名为**pcurses**。它由其他人维护到了1986年。\[4\]

### ncurses

1991年年底时，在Zeyd Ben-Halim的努力下，pcurses库得到了进一步改善。\[5\]\[6\]\[7\] 1993年11月，新库以名字**ncurses**发布了，它的首个主版本为1.8.1。 随后版本1.8.8（1995）的工作由[埃里克·雷蒙](../Page/埃里克·雷蒙.md "wikilink")主导，他添加了Juergen Pfeifer编写的表单和菜单库。\[8\]1996年起，它一直由[Thomas E. Dickey维护](https://zh.wikipedia.org/wiki/Thomas_Dickey "wikilink")。\[9\]

大多数ncurses调用可以很方便地移植到旧的curses上。只需[重新编译](https://zh.wikipedia.org/wiki/编译器 "wikilink")，System V的curses实现就可以支持BSD的curses程序。\[10\]然而，一些地方却存在问题，如在处理终端缩放上，因为旧的curses没有对应的功能。

## 终端数据库

Ncurses可以使用[terminfo](https://zh.wikipedia.org/wiki/terminfo "wikilink")（与可扩展数据）或[termcap](https://zh.wikipedia.org/wiki/termcap "wikilink")。其它[curses的实现一般使用terminfo](https://zh.wikipedia.org/wiki/Curses_\(库\) "wikilink")；少数使用termcap。有极少数实现（mytinfo是一个时间较久的例外\[11\]）都可以使用。

## 许可

Ncurses是[GNU计划的一部分](https://zh.wikipedia.org/wiki/GNU计划 "wikilink")。 它是极少数不在[GNU GPL或](../Page/GNU通用公共许可证.md "wikilink")[LGPL下分发的GNU文件](../Page/GNU宽通用公共许可证.md "wikilink")；它是在一个类似于[MIT许可证的](https://zh.wikipedia.org/wiki/MIT许可证 "wikilink")[宽自由软件许可证下分发的](https://zh.wikipedia.org/wiki/宽自由软件许可证 "wikilink")。\[12\] 这是由于在开发者指定版权时，协议是由[自由软件基金会](../Page/自由软件基金会.md "wikilink")起草的。

在签署协议以将权利交给FSF时，有条款写道：

> The Foundation promises that all distribution of the Package, or of any work "based on the Package", that takes place under the control of the Foundation or its agents or assignees, shall be on terms that explicitly and perpetually permit anyone possessing a copy of the work to which the terms apply, and possessing accurate notice of these terms, to redistribute copies of the work to anyone on the same terms.\[13\]

> 本基金会承诺，在本基金会、或其控制的代理人或受让人中，所分发的任何本软件包，或“基于本软件包”的任何作品，应在条款中明确，永久允许任何人拥有一份适用此条款的作品副本，且在条款中明确声明，以相同条款重分发此作品。

据维护者Thomas E. Dickey说，这排除了以任何版本的GPL重授权程序，因为它会对链接到这个库的程序产生限制。\[14\]

## 使用ncurses的程序

有成百的程序使用ncurses。\[15\]\[16\]一些程序，如[GNU Screen和](../Page/GNU_Screen.md "wikilink")[w3m](https://zh.wikipedia.org/wiki/w3m "wikilink")，只使用termcap接口执行屏幕管理。另一些，如[GNU Midnight Commander和](https://zh.wikipedia.org/wiki/Midnight_Commander "wikilink")[YaST](../Page/YaST.md "wikilink")，使用curses编程接口。

## 参见

  - [SMG$](https://zh.wikipedia.org/wiki/SMG$ "wikilink")。[OpenVMS中可用的屏幕管理](https://zh.wikipedia.org/wiki/OpenVMS "wikilink")[库](../Page/应用程序接口.md "wikilink")。
  - [conio](https://zh.wikipedia.org/wiki/conio.h "wikilink")。一个C头文件，用于在MS-DOS编译器中创建文本用户界面。
  - [Curses Development Kit](https://zh.wikipedia.org/wiki/Curses_Development_Kit "wikilink")
  - [Dialog (软件)](https://zh.wikipedia.org/wiki/Dialog_\(软件\) "wikilink")

## 参考资料

## 外部链接

  -
  - [NCURSES — Frequently Asked Questions (FAQ)](http://invisible-island.net/ncurses/ncurses.faq.html)，Thomas Dickey

### 编程介绍

  - “[Writing Programs with NCURSES](http://invisible-island.net/ncurses/ncurses-intro.html)”，[埃里克·雷蒙](../Page/埃里克·雷蒙.md "wikilink")和[Zeyd M. Ben-Halim](https://zh.wikipedia.org/wiki/Zeyd_M._Ben-Halim "wikilink")
  - [ncurses Programming HOWTO](http://tldp.org/HOWTO/NCURSES-Programming-HOWTO/)（[PDF版本](http://www.ibiblio.org/pub/Linux/docs/HOWTO/other-formats/pdf/NCURSES-Programming-HOWTO.pdf)）
  - [ncurses Beginner's Tutorial](http://www.writeka.com/ed/ncurses_library.html)
  - [A Hacker's Guide to NCURSES](http://invisible-island.net/ncurses/hackguide.html)

### 工具箱

  - [NDK++](http://ndk-xx.sourceforge.net/) C++开发工具包

### 语言绑定

  - [**Ada95**绑定](http://invisible-island.net/ncurses/Ada95.html)
  - [**C\#**绑定](https://zh.wikipedia.org/wiki/:sourceforge:projects/curses-sharp/ "wikilink")
  - [ANSI **Common Lisp**绑定](http://common-lisp.net/project/cl-ncurses/)
  - [**Free Pascal**绑定](https://web.archive.org/web/20130313160546/http://www.freepascal.org/packages/ncurses.html)
  - [**Go**绑定](https://web.archive.org/web/20121226064552/http://logik.li/projects/gocurses)
  - [GNU **Guile**绑定](http://www.gnu.org/software/guile-ncurses/)
  - [**Haskell**绑定](http://hackage.haskell.org/cgi-bin/hackage-scripts/package/hscurses/)
  - [**Java**绑定](https://zh.wikipedia.org/wiki/:sourceforge:projects/javacurses/ "wikilink")
  - [**JavaScript**绑定](http://SpiderApe.sourceforge.net/plugins/ncurses/)
  - [**Lua**绑定](http://www.t2-project.org/packages/lua-curses.html)
  - [**Node.js**绑定](http://github.com/mscdex/node-ncurses/)
  - [**Perl**绑定](http://search.cpan.org/~giraffed/Curses-1.28/)
  - [**PHP**终端屏幕控制功能](http://www.php.net/manual/en/ref.ncurses.php)
      - [在PHP中使用Ncurses](http://devzone.zend.com/173/using-ncurses-in-php/)
  - [**Python**绑定](https://web.archive.org/web/20080914134336/http://docs.python.org/lib/module-curses.html)
  - [**Ruby**模块](https://web.archive.org/web/20121014012701/http://ncurses-ruby.berlios.de/)

### 分发和-{zh-hans:包;zh-hant:封裝}-

  - [Ncurses package for Windows](http://gnuwin32.sourceforge.net/packages/ncurses.htm) – [GnuWin32](https://zh.wikipedia.org/wiki/GnuWin32 "wikilink")

[Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink") [Category:Ncurses](https://zh.wikipedia.org/wiki/Category:Ncurses "wikilink") [Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink") [Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink") [Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink")

1.
2.
3.
4.
5.
6.
7.  The [README](https://zh.wikipedia.org/wiki/README "wikilink") file in ncurses 1.8.1 states "v0.1 July 31, 1992" and "v1.8.1 November 5, 1993", which agrees with the [NEWS (changelog) file](http://invisible-island.net/ncurses/NEWS.gz)
8.  [NCURSES - Frequently Asked Questions (FAQ): Who wrote NCURSES?](http://invisible-island.net/ncurses/ncurses.faq.html#who_did_it)
9.
10. [A Hacker's Guide to Ncurses Internals](http://invisible-island.net/ncurses/hackguide.html#abstract)
11.
12. [NCURSES - Frequently Asked Questions (FAQ): Is it GPL'd?](http://invisible-island.net/ncurses/ncurses.faq.html#is_it_gpl)
13.
14.
15.
16.