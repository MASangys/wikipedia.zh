**`time`**是一个[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")[操作系统上的命令](../Page/操作系统.md "wikilink")。它可以用于确定执行特定[命令持续的时间](../Page/命令_\(计算机\).md "wikilink")。

## 用法

要使用该命令，只需在任何命令前加上`time`，如：

``` bash
time ls
```

当命令完成时，`time`
将计算并报告执行[`ls`](https://zh.wikipedia.org/wiki/ls "wikilink")命令所花费的用户[CPU时间](https://zh.wikipedia.org/wiki/CPU时间 "wikilink")、系统CPU时间和真实时间。不同版本的命令输出格式不一，有的会给予额外的统计数据，如下面的例子：

``` bash
 $ time host wikipedia.org
 wikipedia.org has address 207.142.131.235
 0.000u 0.000s 0:00.17 0.0%      0+0k 0+0io 0pf+0w
 $
```

time(1) 可以作为一个独立的程序存在（如[GNU](../Page/GNU.md "wikilink")
time）或作为[shell内建命令](../Page/Unix_shell.md "wikilink")（例如在[tcsh或](https://zh.wikipedia.org/wiki/tcsh "wikilink")[zsh中](https://zh.wikipedia.org/wiki/zsh "wikilink")）。

## 用户时间与系统时间

第一次看到时，术语“用户CPU时间”可以会有点误导。需要明确的是，总CPU时间是指CPU花费在程序执行操作的时间，及CPU花费在[内核为该程序执行](../Page/内核.md "wikilink")[系统调用的时间组合](https://zh.wikipedia.org/wiki/系统调用 "wikilink")。当程序在数组中循环时，将累加到用户CPU时间。相反，当一个程序执行如`exec`或`fork`[系统调用时](https://zh.wikipedia.org/wiki/系统调用 "wikilink")，将累加到系统CPU时间。

## 真实时间与CPU时间

在这里，术语“真实时间”指的是“挂钟”经过的时间，就像用秒表计时一样。总CPU时间（用户时间+系统时间）可能会大于或小于该值。因为一个程序可能会花时间来等待，并且不执行操作（无论是在用户还是系统模式中），实际时间可能大于总CPU时间。因为程序可能会fork子程序，而他们的CPU时间（用户和系统）会被加到`time`报告的值，总CPU时间可能大于实际的时间。

## 操作方法

根据`time`的GNU实现源代码，大多数显示的信息是从`wait3`系统调用派生的。在没有`wait3`调用返回状态信息的系统中，将使用`times`调用代替。

## 参见

  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [系统时间](../Page/系统时间.md "wikilink")
  - [UNIX时间](../Page/UNIX时间.md "wikilink")
  - [Cron](../Page/Cron.md "wikilink") 调度作业在特定时间执行的进程。
  - [TIME](https://zh.wikipedia.org/wiki/TIME_\(命令\) "wikilink") DOS命令

## 参考

  -
  -
[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")
[Category:Unix进程和任务管理相关软件](https://zh.wikipedia.org/wiki/Category:Unix进程和任务管理相关软件 "wikilink")