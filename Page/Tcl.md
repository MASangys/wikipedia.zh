**Tcl**（发音tickle）是一种[脚本语言](../Page/脚本语言.md "wikilink")。由创建。TCL经常被用于快速原型开发
[RAD](../Page/快速應用程式開發.md "wikilink")、脚本编程、GUI编程和测试等方面。

## 特性

Tcl 的特性包括：

  - 任何东西都是一条命令，包括语法结构（for、if等），以[波兰表示法书写](../Page/波兰表示法.md "wikilink")。
  - 命令通常可变。
  - 任何事物都可以重新定义和重载。
  - 所有的数据类型都可以看作字符串，包括源代码。
  - 拥有完全动态、基于类的对象系统
    TclOO，支持包括元类、过滤器和[mixin在内的高级功能](../Page/mixin.md "wikilink")。
  - 提供[事件驱动给](../Page/事件驱动.md "wikilink")[套接字和](../Page/套接字.md "wikilink")[文件](../Page/文件.md "wikilink")。基于时间或者用户定义的事件也可以。
  - 默认的变量作用域是词法作用域，但 [uplevel](../Page/uplevel.md "wikilink") 和
    [upvar](../Page/upvar.md "wikilink") 允许过程与封闭的函数作用域交互。
  - 所有的内置命令会在误用时产生错误消息。
  - 很容易用 C、C++ 或者 Java 扩展。
  - 解释语言，支持[字节码](../Page/字节码.md "wikilink")。
  - 完全的 [Unicode](../Page/Unicode.md "wikilink") （3.1）支持，1999 年首次发布。
  - 跨平台。支持
    [Win32](../Page/Win32.md "wikilink")、[UNIX](../Page/UNIX.md "wikilink")、[Linux](../Page/Linux.md "wikilink")、[Mac](../Page/Mac.md "wikilink")
    等。
  - 和GUI开发套件 [Tk](../Page/Tk.md "wikilink") 紧密集成。
  - 代码紧凑，易于维护。
  - 存在多种发行版：
      - Batteries-Included 版本，如 ActiveState ActiveTcl
      - tclkit，一种单文件运行时环境，仅有 1 兆大小
      - starpack，脚本/程序的单文件的可执行文件，派生自 tclkit 技术
      - [freewrapTCLSH](http://freewrap.sourceforge.net/) 将 Tcl
        脚本打包为单个可执行二进制文件。
      - [BSD licenses](../Page/BSD_licenses.md "wikilink")，自由可再发行的源代码。

旧版 Tcl 没有内置[面向对象功能](../Page/面向对象编程.md "wikilink")，因此许多 OO 库以扩展形式涌现出来，如
[incr Tcl](../Page/incr_Tcl.md "wikilink") 和
[XOTcl](../Page/XOTcl.md "wikilink")，甚至存在纯脚本编写的 OO 包，如
[Snit](../Page/Snit.md "wikilink") 和
[STOOOP](../Page/STOOOP.md "wikilink")（simple Tcl-only object-oriented
programming），[8.6 版本在内核中提供了 OO
功能](http://www.tcl.tk/man/tcl8.6/TclCmd/class.htm#M13)。

Safe-Tcl 是功能受限的 Tcl
子集。文件系统访问受限，任意系统命令禁止执行。它使用双解释器模型，在“不可信解释器”中运行不可信脚本中的代码。由
[Nathaniel Borenstein](../Page/Nathaniel_Borenstein.md "wikilink") 和
[Marshall Rose](../Page/Marshall_Rose.md "wikilink")
设计，借以在电子邮件中包含活动信息，当支持
*application/safe-tcl* 与 *multipart-enabled-mail* 时，Safe-Tcl
即可包含于电子邮件中。Safe-Tcl 功能已整合在标准 Tcl/Tk 发布中。\[1\]\[2\]

## 扩展包

Tcl 支持扩展包，这些扩展包提供了附加功能（像是GUI，终端程序自动化，数据库访问等）。常用的扩展包有：

  - Tk: [Tk](../Page/Tk.md "wikilink") 工具包是最流行的 Tcl
    扩展，在多种[操作系统上提供](../Page/操作系统.md "wikilink")[图形用户界面](../Page/图形用户界面.md "wikilink")。每个
    GUI 由一个或多个*框架*组成，每个*框架*内含布局管理器。
    Expect: [Expect是另外一种非常流行的](../Page/Expect.md "wikilink") Tcl
    扩展。早期，Expect 对 Tcl 在多种领域的流行居功甚伟，如在测试领域中，时至今日 Expect
    依然被大量使用于 telnet、ssh 与串口会话的重复任务自动化，即对仅有终端交互接口的程序进行编程。Tcl
    是运行 Expect 的唯一方式，因此 Tcl 在此类工业领域中十分流行。
    Tile/Ttk: Tile/Ttk\[3\] 是风格和主题化控件集，可替代 Tk
    中大多数控件，真正调用[操作系统的](../Page/操作系统.md "wikilink")
    [API](../Page/API.md "wikilink") 实现原生界面。这种方式提供的主题包括 [Windows
    XP](../Page/Windows_XP.md "wikilink")、Windows
    Classic、[Qt](../Page/Qt_\(toolkit\).md "wikilink") 和
    [Aqua](../Page/Aqua.md "wikilink")（Mac OS X）。主题也可使用图片
    [pixmap](../Page/pixmap.md "wikilink") 加上一定定义构造，避免调用系统
    API。以这种方式创建的主题有 Classic
    Tk、Step、Alt/Revitalized、Plastik 和 Keramik。Tcl 8.4 中，此包称作 Tile，在
    8.5 中以 Ttk 的名字进入 Tk 核心发布。
    Tix: Tix（Tk Interface eXtension）是一套开源的、用于扩充 Tcl/Tk 和 Python
    应用程序功能的用户界面组件。由 Tix Project Group 维护，以 BSD
    风格许可发布。\[4\]
    Itcl/IncrTcl: [Itcl](../Page/Itcl.md "wikilink") 是 Tcl
    诸多对象系统中的一种，通常称为 \[incr Tcl\]（递增 Tcl
    之意，类似 C++ 之名）。
    Tcllib: [Tcllib](../Page/Tcllib.md "wikilink") 是一套纯脚本 Tcl 包，无需编译。
    TclUDP: TclUDP\[5\] 提供简捷的方式支持 [UDP](../Page/UDP.md "wikilink")
    套接字。
    数据库: Tcl 数据库互联（Tcl Database Connectivity，TDBC）是 Tcl 8.6 的一部分，为 Tcl
    脚本提供常用数据库的访问接口，目前驱动器支持
    [MySQL](../Page/MySQL.md "wikilink")、[ODBC](../Page/ODBC.md "wikilink")、[PostgreSQL](../Page/PostgreSQL.md "wikilink")
    和 [SQLite](../Page/SQLite.md "wikilink")
    数据库。更多数据库已经有了计划。同样，也可使用许许多多数据库专用的扩展包访问数据库。\[6\]

## 範例

下面是TCL程序的例子：

    #!/bin/sh
    # next line restarts using tclsh in path \
    exec tclsh $0 ${1+"$@"}

    # echo server that can handle multiple
    # simultaneous connections.

    proc newConnection { sock addr port } {

         # client connections will be handled in
         # line-buffered, non-blocking mode
         fconfigure $sock -blocking no -buffering line

         # call handleData when socket is readable
         fileevent $sock readable [ list handleData $sock ]
    }

    proc handleData { sock } {
         puts $sock [ gets $sock ]
         if { [ eof $sock ] } {
            close $sock
         }
    }

    # handle all connections to port given
    # as argument when server was invoked
    # by calling newConnection
    set port [ lindex $argv 0 ]
    socket -server newConnection $port

    # enter the event loop by waiting
    # on a dummy variable that is otherwise
    # unused.
    vwait forever

另外一个 Tk 的例子（来自[A simple A/D
clock](https://web.archive.org/web/20020302153228/http://mini.net/tcl/2563.html)）它使用了定时器时间，3行就显示了一个时钟。

```
 proc every {ms body} {eval $body; after $ms [info level 0]}
 pack [label .clock -textvar time]
 every 1000 {set ::time [clock format [clock sec] -format %H:%M:%S]} ;# RS
```

解释：第一行定义了过程every，
每隔ms毫秒，就重新执行body代码。第二行创建了标签其内容由time变量决定。第3行中设置定时器，time变量从当前时间中每秒更新一次。

## 参考资料

## 外部链接

  -
  - [Tcl Sources](http://core.tcl.tk/), main Tcl and Tk source code
    download website

  - [Tcler's Wiki](http://wiki.tcl.tk/)

  - [TkDocs](http://www.tkdocs.com/)

[Category:美国发明](https://zh.wikipedia.org/wiki/Category:美国发明 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:动态类型编程语言](https://zh.wikipedia.org/wiki/Category:动态类型编程语言 "wikilink")
[Category:自由編譯器與直譯器](https://zh.wikipedia.org/wiki/Category:自由編譯器與直譯器 "wikilink")
[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink")
[Category:过程式编程语言](https://zh.wikipedia.org/wiki/Category:过程式编程语言 "wikilink")
[Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink")
[Category:Tcl编程语言家族](https://zh.wikipedia.org/wiki/Category:Tcl编程语言家族 "wikilink")

1.
2.
3.
4.
5.
6.