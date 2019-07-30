**Tk**是一[開放原始碼的](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[图形用户界面](../Page/图形用户界面.md "wikilink")[开发工具](../Page/部件工具箱.md "wikilink")，提供許多常用的圖形介面元件（像是[選單](../Page/選單.md "wikilink")、[按鈕之類](https://zh.wikipedia.org/wiki/按鈕 "wikilink")），具有[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink")、輕量化等特色。

Tk最初發展於1991年，是以[Tcl](../Page/Tcl.md "wikilink")[腳本語言撰寫的擴充套件](https://zh.wikipedia.org/wiki/腳本語言 "wikilink")，目前另有[Perl](../Page/Perl.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")、[Common Lisp等多種版本](../Page/Common_Lisp.md "wikilink")，並可在[Linux](../Page/Linux.md "wikilink")、[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")、[Apple Macintoch](https://zh.wikipedia.org/wiki/麥金塔電腦 "wikilink")、[Windows等平臺上運行](https://zh.wikipedia.org/wiki/Windows "wikilink")。

从Tcl/Tk 8开始，软件搭建的图形界面看起来将“与本地系统一致”\[1\]。8.5版引入了一个新的主题引擎，它在字体渲染方面也有改进。该引擎最初叫Tk Tile\[2\]，但现在通常被称为"themed Tk"\[3\]。8.6版的更新则支持了[PNG](../Page/PNG.md "wikilink")格式，以及倾斜文字\[4\]。

## 架构

在Tk中，运用[Tcl](../Page/Tcl.md "wikilink")脚本编写跨平台[图形用户界面](../Page/图形用户界面.md "wikilink")框架。使用Tcl Shell(Tclsh)，以命令`package require Tk`调用Tk。在图形操作系统下，提供了包含Tclsh和Tk的图形窗口环境\[5\]。

Tk有以下特性：

  - **平台独立**：与Tcl一样，Tk也是解释型的。各种平台下的Tcl实现是统一的，因此Tk程序可无需修改地移植至各种平台\[6\]。
  - **可定制**：Tcl中几乎所有的特性都是可以修改的，可通过初始化选项或运行时的命令修改\[7\]。
  - **可保存**：很多选项出存在数据库中，例如界面的颜色设置。这些选项能保存下来，在再次载入程序时读取\[8\]。

### 语言绑定

通过[语言绑定](https://zh.wikipedia.org/wiki/语言绑定 "wikilink")，以Tcl实现的Tk可在其他编程语言中调用。已有多种语言支持Tk，完整的列表见于Tk的网站\[9\]。 例如Ada中的TASH模块\[10\] [Haskell](../Page/Haskell.md "wikilink")中的HTk\[11\]，Perl，Python中的模块，Ruby，[REXX](../Page/REXX.md "wikilink"), 以及[Common Lisp](../Page/Common_Lisp.md "wikilink")。

在[Perl](../Page/Perl.md "wikilink")中调用Tk用多种方法: Tcl::Tk模块以及Tkx模块\[12\]均适用Tcl作为桥梁；而Perl/Tk\[13\]直接使用Perl实现Tk。Python的Tkinter模块使用与Tcl的语言绑定实现Tk\[14\]。

## 特性

Tk提供了多种部件\[15\]。基本部件整合在`toplevel`部件里，作为可移动的浮动窗口，通常由操作系统管理\[16\]。

### 基本特性

### 顶层部件

  - `tk_chooseColor` – 弹出一个颜色选择窗口
  - `tk_chooseDirectory` – 弹出一个文件目录选择窗口
  - `tk_dialog` – 弹出一个对话框，等待用户回应
  - `tk_getOpenFile` – 弹出一个对话框，供用户选择并打开一个文件
  - `tk_getSaveFile` – 弹出一个对话框，供用户选择目录储存文件
  - `tk_messageBox` – 弹出一个消息框，等待用户回应
  - `tk_popup` – 显示弹出菜单
  - `toplevel` – 创建并复制顶层部件

### 图形管理器

列于`toplevel`的基本部件使用图形管理器管理\[17\]。

  - `place` – 定位部件至给定的绝对位置
  - `grid` – 将部件按网格排列
  - `pack` – 将部件打包

## 参考资料

## 外部連結

  - [Tcl/Tk官方網頁](http://www.tcl.tk/)
  - [ASPN的Perl/Tk線上說明](https://web.archive.org/web/20060426113513/http://aspn.activestate.com/ASPN/docs/ActivePerl/5.8/site/lib/Tk.html)
  - [Ruby/Tk線上說明](https://web.archive.org/web/20060615054422/http://www.rubycentral.com/book/ext_tk.html)
  - [TkInter](http://wiki.python.org/moin/TkInter) — Python版本的Tk
  - [LTK](http://www.peter-herth.de/ltk/) — Common Lisp版本的Tk

[Category:部件工具箱](https://zh.wikipedia.org/wiki/Category:部件工具箱 "wikilink") [Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink")

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
13. *Perl/Tk Concepts*, Chapter 1 in *Mastering Perl/Tk*, ISBN 978-1565927162
14. *Tkinter*, Chapter 2.4 in *Modern Tkinter for Busy Python Developers*,
15.
16. ''Widgets', Chapter 17.2 in ''Tcl and the Tk Toolkit '', ISBN 978-0321336330
17. ''Geometry Managers', Chapter 17.6 in ''Tcl and the Tk Toolkit '', ISBN 978-0321336330