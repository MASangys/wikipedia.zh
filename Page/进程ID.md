在[计算机领域](https://zh.wikipedia.org/wiki/计算机 "wikilink")，**进程标识符**（，又略称为**进程ID**（）、**PID**）是大多数[操作系统的](../Page/操作系统.md "wikilink")[内核用于唯一标识](../Page/内核.md "wikilink")[进程的一个数值](https://zh.wikipedia.org/wiki/进程 "wikilink")。这一数值可以作为许多函数调用的参数，以使调整进程优先级、[杀死进程之类的进程控制行为成为可能](https://zh.wikipedia.org/wiki/Kill_\(命令\) "wikilink")。

## 类UNIX系统

在[类UNIX操作系统中](https://zh.wikipedia.org/wiki/类UNIX "wikilink")，新进程都衍自[系统调用](https://zh.wikipedia.org/wiki/系统调用 "wikilink")[`fork()`](https://zh.wikipedia.org/wiki/fork_\(系统调用\) "wikilink")。`fork()`调用会将子进程的PID返回给[父进程](../Page/父进程.md "wikilink")，使其可以之指代子进程，从而在需要时以之为函数参数。例如，若以子进程PID为参数调用[`waitpid()`](https://zh.wikipedia.org/wiki/waitpid "wikilink")，可使父进程以休眠状态等待子进程结束；若以之为参数调用[`kill()`](https://zh.wikipedia.org/wiki/Kill_\(命令\) "wikilink")，便可结束对应子进程。

在各PID中，较为特别的是0号PID和1号PID。PID为0者为交换进程（），属于内核进程，负责[分页任务](https://zh.wikipedia.org/wiki/分页 "wikilink")；PID为1者则常为[init进程](../Page/init.md "wikilink")，主要负责启动与关闭系统。值得一提的是，1号PID本来并非是特意为init进程预留的，而init进程之所以拥有这一PID，则是因为init即是内核创建的第一个进程。不过，现今的许多UNIX/类UNIX系统内核也有以进程形式存在的其他组成部分，而在这种情况下，1号PID则仍为init进程保有，以与之前系统保持一致\[1\]。

PID的分配机制则因系统而异，一般从0开始，然后顺序分配，直到达到一个最大值（亦因系统而异），而后又从300开始重新分配；在[Mac OS
X和](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[HP-UX下](../Page/HP-UX.md "wikilink")，则是由100开始重分配。在分配PID时，若遇到已分配的PID，则直接跳过，继续递增查找下一个可分配PID。

## Microsoft Windows

[Microsoft
Windows系列操作系统提供了一系列API](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，以使开发者可以获取相关PID，如用于获取当前进程PID`GetCurrentProcessId()`\[2\]、返回其他进程PID的`GetProcessId()`\[3\]。在操作系统内部，进程ID与线程ID在同一个命名空间中，因此二者不会重合。

## PID文件

有些长时间运行的进程（如[MySQL的守护进程](../Page/MySQL.md "wikilink")）会将自己的PID写入一个文件，以使其他进程可寻获之。

## 参见

  - [`pidof`](https://zh.wikipedia.org/wiki/pidof "wikilink")

  - [用户标识符](https://zh.wikipedia.org/wiki/用户标识符 "wikilink")（UID）

  - （GID）

## 参考资料

[Category:进程](https://zh.wikipedia.org/wiki/Category:进程 "wikilink")

1.
2.
3.