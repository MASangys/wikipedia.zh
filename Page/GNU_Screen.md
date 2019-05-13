**GNU
Screen**是一款由[GNU计划开发的用于](../Page/GNU计划.md "wikilink")[命令行](../Page/命令行界面.md "wikilink")[终端切换的](../Page/终端.md "wikilink")[自由软件](../Page/自由软件.md "wikilink")。用户可以通过该软件同时连接多个本地或远程的命令行[会话](../Page/会话_\(计算机科学\).md "wikilink")，并在其间自由切换。

## 功能

GNU
Screen可以看作是[窗口管理器的命令行界面版本](../Page/窗口管理器.md "wikilink")。它提供了统一的管理多个会话的界面和相应的功能。

  - **会话恢复**

<!-- end list -->

  -
    只要Screen本身没有终止，在其内部运行的会话都可以恢复。这一点对于远程登录的用户特别有用——即使网络连接中断，用户也不会失去对已经打开的命令行会话的控制。只要再次登录到主机上执行**screen
    -r**就可以恢复会话的运行。同样在暂时离开的时候，也可以执行分离命令**detach**，在保证里面的程序正常运行的情况下让Screen[挂起](../Page/挂起.md "wikilink")（切换到[后台](../Page/后台.md "wikilink")）。这一点和[图形界面下的](../Page/图形界面.md "wikilink")[VNC很相似](../Page/VNC.md "wikilink")。

<!-- end list -->

  - **多窗口**

<!-- end list -->

  -
    在Screen环境下，所有的会话都独立的运行，并拥有各自的编号、输入、输出和窗口缓存。用户可以通过[快捷键在不同的窗口下切换](../Page/快捷键.md "wikilink")，并可以自由的重定向各个窗口的输入和输出。Screen实现了基本的文本操作，如复制粘贴等；还提供了类似滚动条的功能，可以查看窗口状况的历史记录。窗口还可以被分割和命名，还可以监视后台窗口的活动。

<!-- end list -->

  - **会话共享**

<!-- end list -->

  -
    Screen可以让一个或多个用户从不同终端多次登录一个会话，并共享会话的所有特性（比如可以看到完全相同的输出）。它同时提供了窗口[访问权限的机制](../Page/访问权限.md "wikilink")，可以对窗口进行密码保护。

## 其他多页面终端工具

具有类似功能的软件还有：

  - [dtach](../Page/dtach.md "wikilink")：Screen的一个最小化子集实现。
  - [Text Windows](../Page/Text_Windows.md "wikilink")：一个文本模式的窗口环境。
  - [splitvt](../Page/splitvt.md "wikilink")：一个终端分割工具。
  - [Window
    (BSD)](../Page/Window_\(BSD\).md "wikilink")：一个基于[BSD的文本窗口环境](../Page/BSD.md "wikilink")。

## 参看

  - [Ratpoison](../Page/Ratpoison.md "wikilink")：受Screen启发的无需鼠标的窗口管理器。

## 外部链接

### 官方资源

  - [GNU's Screen 官方站点](http://www.gnu.org/software/screen)

  - [GNU Screen](http://savannah.gnu.org/projects/screen/) 运行于
    [Savannah](../Page/GNU_Savannah.md "wikilink")

  - [GNU
    Screen](http://www.linuxmanpages.com/man1/screen.1.php)[手册](../Page/手册.md "wikilink")

  - [Screen用户手册](http://www.delorie.com/gnu/docs/screen/screen_toc.html)

### 第三方资源

  - [GNU Screen Wiki](http://aperiodic.net/screen/)

  - [Screenie——一个Screen会话处理器（前端）](https://web.archive.org/web/20060408210957/http://freshmeat.net/projects/screenie)

  - [GNU
    Screen：初学者入门](http://jmcpherson.org/screen.html)（原文发表于[Kuro5hin](../Page/Kuro5hin.md "wikilink")）

  - [GNU
    Screen快速入门](https://web.archive.org/web/20070502201148/http://gustaf.symbiandiaries.com/weblog/comp/Screen-quickstart.html)

  - [SSH-Agent forwarding and GNU
    Screen](http://deadman.org/sshscreen.html)

  - [用Screen运行irssi指引](http://lizzie.spod.cx/screenirssi.shtml)

  - [Screen
    FAQ](http://www4.informatik.uni-erlangen.de/~jnweiger/screen-faq.html)

  - [Screen
    tutorial](http://linux.talkera.org/multiple-workspaces-on-a-single-terminal-in-linux/)

[Category:GNU計劃軟體](https://zh.wikipedia.org/wiki/Category:GNU計劃軟體 "wikilink")