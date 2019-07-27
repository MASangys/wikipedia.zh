在[类Unix](https://zh.wikipedia.org/wiki/类Unix "wikilink")
[操作系统](../Page/操作系统.md "wikilink")上，**`at`**命令用于在当前系统时间后的某个时刻，执行某个命令**一次**。更确切的说，`at`命令从[标准输入读取一系列命令](https://zh.wikipedia.org/wiki/标准输入 "wikilink")，把它们收集成一个计划任务，在此后的某个时刻执行。这个任务仍使用当前的环境，并在与计划制定时相同的[工作目录和](https://zh.wikipedia.org/wiki/工作目录 "wikilink")[环境变量](../Page/环境变量.md "wikilink")里执行。

它和[`cron`](https://zh.wikipedia.org/wiki/cron "wikilink")不同，后者用于定期运行，比如每个小时、每天、每个礼拜三或每年的某个日子执行。但和`cron`相似，许多Unix系统的管理员会限制`at`命令的使用。

`at`可用于在用户的计划任务完成后发送电子邮件进行通知，可以执行多个排队的任务，也可以从文件而非标准输入读取一系列任务来执行。比如，可以使用以下命令，在一月三十一日上午11：45编译一个[C语言程序](https://zh.wikipedia.org/wiki/C语言 "wikilink")：

``` bash
 $ echo "cc -o foo foo.c" | at 1145 jan 31
```

或

``` bash
 $ at 1145 jan 31
 at> cc -o foo foo.c
 at> ^D #（光标在行首时使用Control-D退出任务编辑状态）
```

`atq`命令列出当前队列里的任务，`atrm`命令则从队列里删除任务：

``` bash
 $ atq
1234 2011-08-12 11:45 cc -o foo foo.c user
 $ atrm 1234
 $ atq
 $
```

某些类Unix操作系统使用守护进程`atd`在后台定期检查任务列表，以在计划的时刻执行`at`命令的任务。

`batch`命令可代替`at`命令，在系统负载低于指定值的时候执行任务。

[Windows
NT](../Page/Windows_NT.md "wikilink")/[2000](../Page/Windows_2000.md "wikilink")/[XP](../Page/Windows_XP.md "wikilink")/[7也有一个类似](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")`cron`的`at`命令，但已逐渐被计划任务代替。

## 参见

  - [cron](https://zh.wikipedia.org/wiki/cron "wikilink")，定期执行指定任务
  - [systemd](https://zh.wikipedia.org/wiki/systemd "wikilink")，集成了`atd`
  - [Launchd](https://zh.wikipedia.org/wiki/Launchd "wikilink")，[Mac
    OS上的](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")`at`命令替代
  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")

## 外部链接

  -
  -
[Category:Unix](https://zh.wikipedia.org/wiki/Category:Unix "wikilink")