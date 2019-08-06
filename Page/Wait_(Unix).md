**`wait`**（意指“等待”）为[类UNIX](https://zh.wikipedia.org/wiki/类UNIX "wikilink")[操作系统](../Page/操作系统.md "wikilink")[系统调用](https://zh.wikipedia.org/wiki/系统调用 "wikilink")。

## 功能

多进程系统内的[进程](https://zh.wikipedia.org/wiki/进程 "wikilink")（或[任务](../Page/作業_\(電腦\).md "wikilink")）有时需要等待其他进程以完成自己的执行过程，而在包含父-子进程机制的类UNIX系统中，[父进程](../Page/父进程.md "wikilink")能创建可独立运行的[子进程](../Page/子进程.md "wikilink")，并在需要时调用**`wait`**（函数声明为`pid_t wait(int *stat_loc)`）以使自己在子进程执行过程中保持休眠状态。当任一子进程结束后，该子进程会向操作系统返回一个[退出状态](https://zh.wikipedia.org/wiki/退出状态 "wikilink")，而后系统即向休眠中的父进程发送一个[SIGCHLD](https://zh.wikipedia.org/wiki/SIGCHLD "wikilink")[信号以提醒之](https://zh.wikipedia.org/wiki/信号_\(计算机科学\) "wikilink")，至此父进程“复苏”并从内核获取子进程的退出状态，而后内核释放原有子进程所占用的资源，父进程也继续执行。

## 衍生

对于带有线程机制的类UNIX系统来说，对于线程调度也有对应**`wait`**的实现：`pthread_join`会让当前进程强制休眠，等待指定线程执行完毕后再继续执行。

[类UNIX系统还提供多种](https://zh.wikipedia.org/wiki/类UNIX "wikilink")`wait`的衍生调用（如`waitpid`和`waitid`）以扩展适用范围。借助于这些变种，父进程可以休眠至任一子进程结束，也可以等待满足指定条件（如匹配给定的[进程标识符](https://zh.wikipedia.org/wiki/进程标识符 "wikilink")）的子进程结束后再继续执行。另外，若利用额外选项做参数，`waitpid`和`waitid`在指定进程继续运行或暂停执行时也会返回。

## “僵尸进程”

即使没有提前调用`wait`，在任一进程终止后，系统内核都会向其父进程发送SIGCHLD，这时父进程可以选择使用SIG_IGN作为处理函数，令内核知晓自己不需获得状态，并直接交由init进程处理；亦可调用`wait`，则立即返回子进程退出状态。若两者皆不做，则子进程在进程表中占用的资源就无法得到释放，进而成为[僵尸进程](../Page/僵尸进程.md "wikilink")，持续浪费资源\[1\]。为解决这一问题，系统常以特殊进程reaper（“收割者”）定位僵尸进程，并获取其状态以使系统可以解除资源分配，从而“收割”之\[2\]。

## 参见

  -
  - [fork (操作系统)](https://zh.wikipedia.org/wiki/fork_\(操作系统\) "wikilink")

  -
  -
  - [wait (Shell)](https://zh.wikipedia.org/wiki/wait_\(Shell\) "wikilink")

  -
## 参考来源

  -
  -
  -
  -
[Category:进程](https://zh.wikipedia.org/wiki/Category:进程 "wikilink") [Category:Unix](https://zh.wikipedia.org/wiki/Category:Unix "wikilink")

1.
2.