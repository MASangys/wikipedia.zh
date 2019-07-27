在大多数[类Unix](../Page/类Unix系统.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")中，**`ps`**程序（“**p**rocess
**s**tatus”的简称）可以显示当前运行的[进程](https://zh.wikipedia.org/wiki/进程 "wikilink")。一个相关的Unix工具[top则可以查看运行进程的实时信息](https://zh.wikipedia.org/wiki/Top_\(Unix\) "wikilink")。

在[Windows
PowerShell中](../Page/Windows_PowerShell.md "wikilink")，`ps`是`Get-Process`
cmdlet的预定义[命令别名](https://zh.wikipedia.org/wiki/alias_\(命令\) "wikilink")，它和Unix中的`ps`本质上是相同的。

## 示例

输出示例：

``` bash
# ps
  PID TTY          TIME CMD
 7431 pts/0    00:00:00 su
 7434 pts/0    00:00:00 bash
18585 pts/0    00:00:00 ps
```

用户还可以利用`ps`命令和[`grep`](https://zh.wikipedia.org/wiki/grep "wikilink")结合（参见[`pgrep`](https://zh.wikipedia.org/wiki/pgrep "wikilink")和[`pkill`](https://zh.wikipedia.org/wiki/pkill "wikilink")命令）来查找一个进程的信息，例如它的进程ID：

``` bash
$ # 查找`firefox-bin`的PID为2701
$ ps -A | grep firefox-bin
2701 ?        22:16:04 firefox-bin
```

或直接使用[`pgrep`](https://zh.wikipedia.org/wiki/pgrep "wikilink")：

``` bash
$ pgrep -l firefox-bin
2701 firefox-bin
```

查看以root用户运行的进程：

``` bash
# ps -U root -u
USER   PID  %CPU %MEM    VSZ   RSS TT  STAT STARTED        TIME COMMAND
root     1   0.0  0.0   9436   128  -  ILs  Sun00AM     0:00.12 /sbin/init --
```

## 分解

| 列名             | 内容              |
| -------------- | --------------- |
| %CPU           | 进程正在使用多少个CPU    |
| %MEM           | 进程正在使用多少内存      |
| ADDR           | 进程的内存地址         |
| C或CP           | CPU使用率和调度信息     |
| COMMAND\*      | 进程名，包括参数（如果有的话） |
| NI             | nice值           |
| F              | 标志              |
| PID            | 进程ID            |
| PPID           | 父进程ID           |
| PRI            | 进程优先级           |
| RSS            | 真实内存用量          |
| S or STAT      | 进程状态码           |
| START or STIME | 进程启动时间          |
| SZ             | 虚拟内存用量          |
| TIME           | 总CPU用量          |
| TT或TTY         | 与进程相关的终端        |
| UID或USER       | 进程所有者的用户名       |
| WCHAN          | 进程所等待事件的内存地址    |

\* = 通常被简写

## 选项

ps有很多选项。在支持[SUS和](https://zh.wikipedia.org/wiki/单一UNIX规范 "wikilink")[POSIX标准的](https://zh.wikipedia.org/wiki/POSIX "wikilink")[操作系统](../Page/操作系统.md "wikilink")上，ps常以选项**-ef**运行，其中“-e”选择每一个（**e**very）进程，“-f”指定“完整”（**f**ull）输出格式。这些系统上的另一个常见选项是**-l**，它指定“长”（**l**ong）输出格式。

由于历史原因，大多数源自BSD的系统无法接受SUS和POSIX的标准选项（例如，“e”或“-e”选项将显示[环境变量](../Page/环境变量.md "wikilink")）。在这样的系统中，ps常使用辅助非标准选项**aux**，其中“a”列出了一个[终端上的所有进程](https://zh.wikipedia.org/wiki/终端 "wikilink")，包括其他用户运行的，“x”列出所有没有控制终端的进程，“u”添加了一列显示每个进程的控制用户。需要注意的是，为了最大的兼容性，使用此语法时“aux”前没有“-”。此外，在aux之后添加“ww”可以显示进程的完整信息，包括所有的参数，例如“ps
auxww”。

## 参见

  - [任务管理器](../Page/任务管理器.md "wikilink")
  - [`kill`](https://zh.wikipedia.org/wiki/kill_\(命令\) "wikilink")
  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [`nmon`](https://zh.wikipedia.org/wiki/nmon "wikilink") —
    AIX和Linux操作系统的系统监视工具。
  - [`pgrep`](https://zh.wikipedia.org/wiki/pgrep "wikilink")
  - [`pstree`](https://zh.wikipedia.org/wiki/pstree_\(Unix\) "wikilink")
  - [`top`](https://zh.wikipedia.org/wiki/top_\(Unix\) "wikilink")
  - [`lsof`](https://zh.wikipedia.org/wiki/lsof "wikilink")

## 外部链接

  -
  - [Show all running processes in Linux using ps
    command](http://www.cyberciti.biz/faq/show-all-running-processes-in-linux/)

  -
  - [In Unix, what do the output fields of the ps command
    mean?](http://kb.iu.edu/data/afnv.html)

[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")
[Category:Unix进程和任务管理相关软件](https://zh.wikipedia.org/wiki/Category:Unix进程和任务管理相关软件 "wikilink")