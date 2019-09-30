** Live**是由国际[用户组](../Page/TeX.md "wikilink")（ Users Group，TUG）整理和发布的软件发行套装，包含与系统相关的各种程序、编辑与查看工具、常用宏包及文档、常用字体及多国语言支持。 Live是许多[Linux](../Page/Linux.md "wikilink")/[Unix系统](https://zh.wikipedia.org/wiki/Unix "wikilink")（比如[Fedora](../Page/Fedora.md "wikilink")\[1\]、[Debian](../Page/Debian.md "wikilink")\[2\]</ref>、[Ubuntu](../Page/Ubuntu.md "wikilink")\[3\]、[Gentoo](https://zh.wikipedia.org/wiki/Gentoo "wikilink")\[4\]以及[OpenBSD](../Page/OpenBSD.md "wikilink")\[5\]、[FreeBSD](../Page/FreeBSD.md "wikilink")\[6\]、[NetBSD](../Page/NetBSD.md "wikilink")\[7\]等）默认或推荐的套装，同时也支持包括[Windows和](https://zh.wikipedia.org/wiki/Windows "wikilink")[Mac OS X等在内的其它操作系统](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")。 Live是开发状态最为活跃的发行版之一，保持着每年一版的更新频率。 Live属于免费软件。

## 历史

1993年末荷兰用户组开始为[MS-DOS](../Page/MS-DOS.md "wikilink")用户开发4All CD时，TUG就开始讨论为所有操作系统提供一张统一的套装发行CD。由TUG技术委员会工作组设计的目录架构（ Directory Structure，TDS）草案于1995年底正式出版，同时4All CD的成功也刺激了Unix等系统用户对于类似套装系统的需求， Live即由此发端。1995年秋，TUG开始开发基于TDS的套装CD，并决定采用Thomas Esser的[te作为](https://zh.wikipedia.org/wiki/teTeX "wikilink")[内核](../Page/内核.md "wikilink")（te已于2006年停止更新\[8\]），因为te当时就已解决了跨[文件系统](../Page/文件系统.md "wikilink")的兼容问题。在Thomas Esser的协助下，Sebastian Rahtz等人于1996年5月完成并发布了第1版 Live。1997年初，Karl Berry完成了一个[Web2C](../Page/Web2C.md "wikilink")的重大改进版本，它集合了相关程序，囊括了te当时几乎所有的特性，因此从1997年发布的第2版开始， Live一直以Web2C作为内核。自1997年至今， Live保持了每年一版的更新频率，其中重大更新版本包括\[9\]：

  - 第5版（2000年）：移除了所有的非[自由软件](../Page/自由软件.md "wikilink")

  - 第6版（2001年）：允许用户自定义安装所需软件集合

  - 第7版（2002年）：添加了对Mac OS X的支持

  - Live 2003：开始以发布年份作为版本号；由于软件规模的增长，从该版本起 Live被切分为三套不同的发行版

  - Live 2007：添加了对[的支持](../Page/XeTeX.md "wikilink")

  - Live 2008：添加了对[Lua的支持](../Page/LuaTeX.md "wikilink")；允许用户通过网络在线更新已安装的 Live

  - Live 2009：为Windows和Mac OS X用户提供了图形化的前端编辑界面[TeXworks](https://zh.wikipedia.org/wiki/TeXworks "wikilink")

  - Live 2010：不再允许从DVD直接运行，原因是单张DVD已不足以容纳该套件的全部内容

  - Live 2011：添加了对Biber的支持

## 内容

以最新版本的 Live为例，此套件中包含以下内容：

  - Web2C：集合了及其扩展版本、[MetaPost](../Page/MetaPost.md "wikilink")、[MetaFont与](https://zh.wikipedia.org/wiki/MetaFont "wikilink")[BIB等](../Page/BibTeX.md "wikilink")，是整个 Live的核心
  - DVIOUT DVI viewer：查看.dvi文件的工具
  - PS_View：查看.ps和.eps文件的工具
  - TeX Live Manager：管理和更新 Live的工具
  - TeXworks：文本编辑工具，是 Live的前端界面
  - 文档系统：包括宏包文档和 Live文档

## 安装

Live可以通过网络或DVD安装，二者所提供的安装文件是完全一致的，其区别在于通过网络安装可得到当前可用的最新宏包\[10\]，另外通过网络安装时用户可自行选择可用镜像站点。Windows用户可通过执行`install-tl.bat`启动安装程序，Linux/Unix用户可以通过命令行终端执行`perl install-tl`启动安装程序，Mac OS X用户则推荐使用[Mac](https://zh.wikipedia.org/wiki/MacTeX "wikilink")。

## 同类软件

除了 Live之外，常见的发行套装还有：

  - [MiK](https://zh.wikipedia.org/wiki/MiKTeX "wikilink")：由Christian Schenk开发，包含TeXworks，支持Windows操作系统，目前最新版本是2.9.7152（2019年8月）\[11\]
  - [te](https://zh.wikipedia.org/wiki/teTeX "wikilink")：由Thomas Esser开发，支持类Unix操作系统，已于2006年停止更新\[12\]
  - [fp](https://zh.wikipedia.org/wiki/fpTeX "wikilink")：te在Windows操作系统中的移植版，已停止更新\[13\]
  - [prot](https://zh.wikipedia.org/wiki/proTeXt "wikilink")：由Thomas Feuerstack开发，支持Windows操作系统，实际上是对MiK的再次封装，目前最新版本是3.1.3（2013年6月）\[14\]
  - [Mac](https://zh.wikipedia.org/wiki/MacTeX "wikilink")：支持Mac OS X操作系统，实际上是对 Live的封装，加入了很多与Mac OS X系统相关的特性，目前最新版本是MacTeX 2013（2013年5月）\[15\]
  - [C](https://zh.wikipedia.org/wiki/CTeX "wikilink")：由CTeX学会开发，实际上是对MiK的封装，支持Windows操作系统，集成了[WinEdt编辑器](https://zh.wikipedia.org/wiki/WinEdt "wikilink")，强化了对中文的处理，目前最新版本是2.9.2.164（2012年3月）\[16\]
  - [China](https://zh.wikipedia.org/wiki/ChinaTeX "wikilink")：由李树均开发，实际上是对MiK的封装，支持Windows操作系统，与C类似，主要强化了中文处理，目前已停止更新\[17\]
  - [cw](https://zh.wikipedia.org/wiki/cwTeX "wikilink")：由台湾大学吴聪敏、吴聪慧及翁鸿翎共同开发，支持Windows、Linux及Mac OS X操作系统，实际上是对已有的系统分别进行再封装：cw-Windows是对MiK的封装\[18\]，cw-Linux是对原生的封装\[19\]，cw-Mac是对Mac的封装\[20\]，目前最新版本是cw4和cw34（2013年）

## 相关条目

  - [](../Page/TeX.md "wikilink")
  - [](https://zh.wikipedia.org/wiki/LaTeX "wikilink")
  - [Cont](https://zh.wikipedia.org/wiki/ConTeXt "wikilink")
  - [](../Page/XeTeX.md "wikilink")
  - [Lua](../Page/LuaTeX.md "wikilink")
  - [BIB](../Page/BibTeX.md "wikilink")
  - [MetaFont](https://zh.wikipedia.org/wiki/MetaFont "wikilink")
  - [MetaPost](../Page/MetaPost.md "wikilink")

## 参考资料

## 外部链接

  - [ Live官方网站](https://www.tug.org/texlive/)

[Category:TeX](https://zh.wikipedia.org/wiki/Category:TeX "wikilink") [Category:排版软件](https://zh.wikipedia.org/wiki/Category:排版软件 "wikilink") [Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")

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
20.