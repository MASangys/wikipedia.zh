**FCEUX**是一个[开放源代码](../Page/开放源代码.md "wikilink")的[红白机](../Page/红白机.md "wikilink")和[FC磁碟機](../Page/FC磁碟機.md "wikilink")的模拟器。它由多个FCE Ultra的多个版本合并而成。

## 历史

### FCE诞生

最初，Bero编写了名为[FCE](http://www.geocities.co.jp/Playtown/2004/fce.htm)的FC/NES模拟器，原本打算该名称仅作临时使用，但却一直沿用了下来。Xodnizel使用[SVGA](https://zh.wikipedia.org/wiki/SVGA "wikilink")[运行库将其扩展到了](https://zh.wikipedia.org/wiki/运行库 "wikilink")[Linux](../Page/Linux.md "wikilink")系统，并做了简单的开发。此时的代码后遭遗弃，并替换成了可在[DOS](../Page/DOS.md "wikilink")下运行的新代码。直到1998年11月30日，[FCE Ultra](https://zh.wikipedia.org/wiki/FCE_Ultra "wikilink") Beta 1发布。

### FCE Ultra时期

FCE Ultra最初只能运行于DOS系统，直到0.18版才使用SVGA运行库作为[静态链接](https://zh.wikipedia.org/wiki/静态链接 "wikilink")[可执行文件扩展到Linux系统](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")。第一个Windows版本则是0.25。 2000年11月12日，0.40版的[源代码](../Page/源代码.md "wikilink")发布，在之后很长一段时间里，它的授权信息和FCE相同，直到2002年6月，0.80发布时将授权移至[GNU](../Page/GNU.md "wikilink")下。 FCE Ultra由Xodnizel开发，在0.98.12发布后，开发进程中断，官方网站停止更新，论坛也被关闭，只留下2004年8月发布的0.98.12预览版源码。

### 混乱时期

由于缺乏官方监管，在此期间，FCE Ultra产生了诸多改版，如*FCEU-MM*\[1\]、*FCEU Rerecording*\[2\]和*FCEUXD SP*\[3\]

#### FCEU Rerecording

该版本是blip根据FCE Ultra 0.98.10修改而来，添加了录制电影功能，用于[TAS竞速](https://zh.wikipedia.org/wiki/TAS竞速 "wikilink")。 FCEU Rerecording作为分支，在此后的0.98.12版本里加入了更多与录制电影有关的功能。2006年，nitsuja和luke发布了FCEU 0.98.16，添加了只读切换、定义[快捷键](../Page/快捷键.md "wikilink")和[内存监视器功能](https://zh.wikipedia.org/wiki/内存 "wikilink")。 2008年，mz、maximus、adelikat和nitsujrehtona重拾FCEU Rerecording并作为FCEU 0.98.17-0.98.28版本发布。

#### FCEUD、FCEUXD、FCEUXDSP和FCEUXDSPCE

##### FCEUD

由Parasyte于2002年按照当时的FCE Ultra最新版本0.81.3修改而来，添加了[调试器和一些其他功能](https://zh.wikipedia.org/wiki/调试器 "wikilink")，并起名FCE Ultra Debugger

##### FCEUXD

由bbitmaster于2004年1月根据FCEUD修改而来，并起名FCE Ultra Extended Debugger。添加了更多调试功能，如追踪记录器、[十六进制](../Page/十六进制.md "wikilink")编辑器、命名表查看器、代码/数据记录器、行内[汇编器和](https://zh.wikipedia.org/wiki/汇编 "wikilink")[金手指](https://zh.wikipedia.org/wiki/金手指 "wikilink")。最后一个版本是 FCEUXD 1.0a

##### FCEUXDSP

由sp于2006年根据FCEUXD修改而来，进一步扩展了调试工具的功能和可用性。最后一个版本是1.07，添加了[RAM过滤功能](https://zh.wikipedia.org/wiki/隨機存取記憶體 "wikilink")。

##### FCEUXDSPCE

根据FCEUXDSP修改而来，添加了文本钩，它是FCEUD分支的最后一个子支，CE是“Champion Edition”的缩写。

#### FCEU-MM

*FCEU-MM*由CaH4e3根据FCE Ultra修改而来的非官方版本，可支持各种偏难怪[Mapper](https://zh.wikipedia.org/wiki/Mapper "wikilink")，包括那些[未授权的NES游戏](https://zh.wikipedia.org/wiki/未授权 "wikilink")。该版本现已并入FCEUX。

### FCEUX

2006年3月，Anthony Giorgio和Mark Doliner接手了FCE Ultra的开发并命名为FCEUX，X意味着它是之前多个版本的合并。该项目从2006年起，由Zeromus和Rheiny开发，2008年8月之前加入的开发者有mz、adelikat、nitsujrehtona、maximus、CaH4e3、qFox、punkrockguy318、Sebastian Porst和AnS.

## 联网游戏功能

FCEUX的Win32版本目前不支持[TCP](https://zh.wikipedia.org/wiki/TCP "wikilink")/[IP联网游戏](https://zh.wikipedia.org/wiki/IP "wikilink")，支持该功能的最新版本是FCE Ultra 0.98.9\[4\]，但[SDL版本支持](https://zh.wikipedia.org/wiki/SDL "wikilink")。

## 跨平台

FCE Ultra曾有可运行在[UNIX](../Page/UNIX.md "wikilink")平台上的版本，名为GFCE Ultra，[图形化](https://zh.wikipedia.org/wiki/图形化 "wikilink")[终端使用](https://zh.wikipedia.org/wiki/终端 "wikilink")[GTK2](https://zh.wikipedia.org/wiki/GTK2 "wikilink")[用户图形界面库以](https://zh.wikipedia.org/wiki/用户图形界面库 "wikilink")[Python](../Page/Python.md "wikilink")语言写成。该版本后来于FCEUX 2.1.3中添加\[5\]。 该模拟器目前已经支持[DOS](../Page/DOS.md "wikilink")、[Linux](../Page/Linux.md "wikilink")、[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、各种Unix平台（如[FreeBSD](../Page/FreeBSD.md "wikilink")、[Solaris](../Page/Solaris.md "wikilink")和[IRIX](../Page/IRIX.md "wikilink")）、[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[GP2X](https://zh.wikipedia.org/wiki/GP2X "wikilink")\[6\]、[PlayStation](../Page/PlayStation_\(遊戲機\).md "wikilink")\[7\]\[8\]、[任天堂](../Page/任天堂.md "wikilink")[GameCube](https://zh.wikipedia.org/wiki/GameCube "wikilink")、[Wii](../Page/Wii.md "wikilink")\[9\]和[Pepper Pad](https://zh.wikipedia.org/wiki/Pepper_Pad "wikilink")。

## 参考资料

## 参见

  - [模拟器](https://zh.wikipedia.org/wiki/模拟器 "wikilink")
  - [游戏机模拟器列表](https://zh.wikipedia.org/wiki/游戏机模拟器列表 "wikilink")

## 外部链接

  - [FCEUX主页](http://fceux.com)

  -
  -
  -
[Category:遊戲機模擬器](https://zh.wikipedia.org/wiki/Category:遊戲機模擬器 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.