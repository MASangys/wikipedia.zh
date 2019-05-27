在[電腦運算中](https://zh.wikipedia.org/wiki/電腦運算 "wikilink")，**`kill`**是一个在多种流行[操作系统上都可见到的](../Page/操作系统.md "wikilink")[命令](../Page/命令_\(计算机\).md "wikilink")，可向运行中的[行程发送信号](../Page/行程.md "wikilink")，以请求进程终止。

## 实现

### Unix和类Unix

在[Unix和](https://zh.wikipedia.org/wiki/Unix "wikilink")[类Unix操作系统中](../Page/类Unix系统.md "wikilink")，`kill`是用于向进程发送[信号的](../Page/Unix信号.md "wikilink")[命令](../Page/命令_\(计算机\).md "wikilink")。默认发送的消息是[终止信号](https://zh.wikipedia.org/wiki/SIGTERM "wikilink")，会要求该进程[退出](https://zh.wikipedia.org/wiki/退出_\(系统调用\) "wikilink")。但*kill*（杀）可能会引起误解，发送的信号可能与进程杀死无关。`kill`命令是一个包装了**`kill()`**[系统调用的](https://zh.wikipedia.org/wiki/系统调用 "wikilink")[包裝函式](https://zh.wikipedia.org/wiki/包裝函式 "wikilink")，该系统调用按[进程ID](../Page/进程ID.md "wikilink")（PID）或[进程组ID](https://zh.wikipedia.org/wiki/进程组 "wikilink")（PGID）数，向系统上的进程或进程组发送[信号](../Page/Unix信号.md "wikilink")。[POSIX标准规定](https://zh.wikipedia.org/wiki/POSIX "wikilink")`kill`应作为独立工具提供。然而，大部分[shell都内置了](../Page/Unix_shell.md "wikilink")`kill`的命令，用法可能与标准略有不同\[1\]\[2\]。

可以发送多种不同的信号（参见[信号中的完整列表](../Page/Unix信号.md "wikilink")），而一般用户是最感兴趣的是[SIGTERM和](https://zh.wikipedia.org/wiki/SIGTERM "wikilink")[SIGKILL](../Page/SIGKILL.md "wikilink")。默认发送的信号是SIGTERM。处理这个信号的程序在退出前可以做一些有用的清理操作（如保存配置信息到文件中）。然而，许多程序并没有专门处理此信号的处理程序，因此会调用默认的信号处理函数。而其他情况下，有特殊处理程序的程序也会出错，从而无法正确处理信号。

除[SIGKILL和](../Page/SIGKILL.md "wikilink")[SIGSTOP之外的所有信号可以为进程所](https://zh.wikipedia.org/wiki/SIGSTOP "wikilink")“截获”，这意味着程序在接收到这些信号时，可以调用特殊函数。两个例外SIGKILL和SIGSTOP只能由主机系统[内核处理](../Page/内核.md "wikilink")，由其负责提供可靠的控制进程执行的方法。SIGKILL会杀死进程，而SIGSTOP可暂停它，直至[SIGCONT](https://zh.wikipedia.org/wiki/SIGCONT "wikilink")。\[3\]

UNIX提供了安全机制，以防止未授权用户杀死其他进程。实质上，若进程欲向另一个进程发送信号，发信进程的所有者必须与收信进程的所有者相同，或是[超级用户](../Page/超级用户.md "wikilink")。

可用信号有着不同的名称，且映射到特定的数字。注意在不同的Unix实现中，数字和信号之间的映射关系可以不同。SIGTERM往往为15，而SIGKILL通常编为9。

#### 示例

可通过以下四种方式发送[SIGTERM信号](https://zh.wikipedia.org/wiki/SIGTERM "wikilink")（示例进程ID为“1234”）：

``` bash
kill 1234
kill -s TERM 1234
kill -TERM 1234
kill -15 1234
```

可通过三种方式发送[SIGKILL信号](../Page/SIGKILL.md "wikilink")：

``` bash
kill -s KILL 1234
kill -KILL 1234
kill -9 1234
```

其它有用的信号包括HUP、TRAP、INT、[SEGV及ALRM](../Page/SIGSEGV.md "wikilink")。HUP发送[SIGHUP信号](https://zh.wikipedia.org/wiki/SIGHUP "wikilink")。一些守护程序，包括[Apache和](https://zh.wikipedia.org/wiki/Apache "wikilink")[Sendmail的](../Page/Sendmail.md "wikilink")，在接收到SIGHUP时重新读取[配置文件](../Page/配置文件.md "wikilink")，因此可用kill命令执行这个功能。在大多数[Unix外壳中](../Page/Unix_shell.md "wikilink")，只需按下[{{keypress便可以产生](https://zh.wikipedia.org/wiki/Control-C "wikilink")[SIGINT信号](https://zh.wikipedia.org/wiki/SIGINT_\(POSIX\) "wikilink")。[{{keypress也常映射至](https://zh.wikipedia.org/wiki/Control-Z "wikilink")[SIGTSTP](https://zh.wikipedia.org/wiki/SIGTSTP "wikilink")，[{{keypress](https://zh.wikipedia.org/wiki/Control-/ "wikilink")（反斜杠）映射至[SIGQUIT](https://zh.wikipedia.org/wiki/SIGQUIT "wikilink")，这可强制程序进行[核心转储](https://zh.wikipedia.org/wiki/核心转储 "wikilink")。

#### 相关程序

  - [killall](https://zh.wikipedia.org/wiki/killall "wikilink") -
    一些Unix变种如[Solaris](https://zh.wikipedia.org/wiki/Solaris_\(操作系统\) "wikilink")，在[关机时会自动调用该实用程序](../Page/关机.md "wikilink")。它的功能类似上面的kill命令，但不是向单个进程发送信号，而是发送到系统中的所有进程。然而在其它的操作系统中，如[IRIX](../Page/IRIX.md "wikilink")、[Linux及](../Page/Linux.md "wikilink")[FreeBSD](../Page/FreeBSD.md "wikilink")，允许通过参数指定要杀死的进程名称。例如，为了杀死一个进程，如[XMMS音乐播放器调用的一个](../Page/XMMS.md "wikilink")`xmms`实例，用户可以运行命令`killall
    xmms`。这将杀死所有名为`xmms`的进程，在Solaris系统上等同于`` kill `pidof xmms` ``。
  - [pkill](https://zh.wikipedia.org/wiki/pkill "wikilink") -
    根据名称和其他属性向进程发送信号。它最早出现在Solaris
    7中，之后又重新为Linux、[NetBSD及](../Page/NetBSD.md "wikilink")[OpenBSD实现](../Page/OpenBSD.md "wikilink")。pkill使得基于名称杀死进程更加方便：如，要杀死名为*firefox*的进程，若不使用pkill（及[pgrep](https://zh.wikipedia.org/wiki/pgrep "wikilink")），必须键入`` kill
    `ps --no-headers -C firefox -o pid` ``，而有pkill，只需`pkill firefox`。
  - [xkill](https://zh.wikipedia.org/wiki/xkill "wikilink") -
    如果不带任何参数调用，鼠标光标将从箭头变为“x”图标，用户可以单击一个窗口，强制X服务器关闭与该窗口客户端的连接。这往往会导致进程在检测到它与X服务器的连接已关闭后终止。

### Microsoft Windows

在微软的命令行解释器[Windows
PowerShell中](../Page/Windows_PowerShell.md "wikilink")，预定义的`kill`是一个`Stop-Process`
cmdlet的[命令别名](../Page/Alias_\(命令\).md "wikilink")。

[Microsoft Windows
XP](../Page/Windows_XP.md "wikilink")、[Vista和](../Page/Windows_Vista.md "wikilink")[7中附带了](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")`taskkill`命令\[4\]以终止进程。常见用法为`taskkill
/im "IMAGENAME"`。在[Microsoft
Windows提供给Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
98[资源工具包中有一个](https://zh.wikipedia.org/wiki/资源工具包 "wikilink")“不受支持”的`kill`版本\[5\]。

[GNU版的](../Page/GNU.md "wikilink")`kill`已通过[Cygwin移植](../Page/Cygwin.md "wikilink")，并可以运行在[Microsoft
Windows Services for
UNIX的Unix子环境中](https://zh.wikipedia.org/wiki/Microsoft_Windows_Services_for_UNIX "wikilink")（微软于1999年9月17日通过购买Softway
Systems及其[Interix产品获得了Windows](https://zh.wikipedia.org/wiki/Interix "wikilink")
Services for UNIX）。\[6\]

#### 示例

寻找并杀死所有以字母“P”开头、由微软开发、使用内存超过10 MB的进程：

``` ps1con
PS C:\>ps p* | where { $_.Company -like "Microsoft*" -and $_.WorkingSet -gt 10MB } | kill -confirm

Confirm
Are you sure you want to perform this action?
Performing operation "Stop-Process" on Target "powershell (6832)".
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "Y"): A
PS C:\>
```

下面是一个简单的例子，它要求[explorer.exe进程终止](../Page/檔案總管.md "wikilink")：

``` ps1con
PS C:\>taskkill /im explorer.exe
```

强制终止进程：

``` ps1con
PS C:\>taskkill /f /im explorer.exe
```

还可按[PID号杀死进程](../Page/进程ID.md "wikilink")，如下所示：

``` ps1con
PS C:\>taskkill /pid 3475
```

### Microsoft Singularity

[微軟研究院的](../Page/微軟研究院.md "wikilink")[微內核操作系统](../Page/微內核.md "wikilink")[Singularity的标准外壳](../Page/Singularity.md "wikilink")[Singularity
shell包含用以终止后台进程的](../Page/Singularity.md "wikilink")`kill`命令。

#### 示例

停止名为“SampleProcess”的进程：

``` text
Singularity>kill SampleProcess
```

停止进程标识符为“42”的进程：

``` text
Singularity>kill 42
```

### 贝尔实验室九号计划

在[貝爾實驗室九號計畫](../Page/貝爾實驗室九號計畫.md "wikilink")，kill程序不实际执行终止操作，也不需要给予进程ID。相反，它需要进程的实际名称，并输出为[rc](https://zh.wikipedia.org/wiki/rc "wikilink")（九号计划所使用的[殼層](../Page/殼層.md "wikilink")）的命令来杀死进程。\[7\]

有一个类似命令`slay`执行类似操作，但是用于拒绝被这样杀死的进程。\[8\]

#### 示例

杀死所有[troff的实例](https://zh.wikipedia.org/wiki/troff "wikilink")：

`kill troff | rc`

## 参见

  - [信号](../Page/Unix信号.md "wikilink")
  - [Xkill](https://zh.wikipedia.org/wiki/Xkill "wikilink")
  - [Killall](https://zh.wikipedia.org/wiki/Killall "wikilink")
  - [Pkill](https://zh.wikipedia.org/wiki/Pkill "wikilink")
  - [signal.h](https://zh.wikipedia.org/wiki/signal.h "wikilink")

## 参考

## 外部链接

  - 命令：
  - 系统调用：

[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")
[Category:Unix进程和任务管理相关软件](https://zh.wikipedia.org/wiki/Category:Unix进程和任务管理相关软件 "wikilink")
[Category:进程](https://zh.wikipedia.org/wiki/Category:进程 "wikilink")
[Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.