在[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")
兼容的平台上，**SIGKILL**是发送给一个[进程](../Page/行程.md "wikilink")
来导致它立即终止的[信号](https://zh.wikipedia.org/wiki/信号_\(计算机科学\) "wikilink")。SIGKILL的[符号常量在](https://zh.wikipedia.org/wiki/C语言预处理器 "wikilink")[头文件](../Page/头文件.md "wikilink")
[`signal.h`](https://zh.wikipedia.org/wiki/signal.h "wikilink")中定义。因为在不同平台上，信号数字可能变化，因此符号信号名被使用，然而在大量主要的系统上，SIGKILL是信号\#9。\[1\]

## 语源

*SIG*是信号名的通用[前缀](../Page/詞綴.md "wikilink")
。*KILL*是指让一个[进程](../Page/行程.md "wikilink")
立即终止的动作的[计算机行话](https://zh.wikipedia.org/wiki/计算机行话 "wikilink")
。

## 使用

当SIGKILL被发送给一个程序时，它使程序立即终止。与[SIGTERM和](https://zh.wikipedia.org/wiki/SIGTERM "wikilink")[SIGINT相比](https://zh.wikipedia.org/wiki/SIGINT_\(POSIX\) "wikilink")，这个信号不能被捕获或忽略，同时接收这个信号的进程在收到这个信号时不能执行任何清理。

  - [僵尸进程不能被杀死](../Page/僵尸进程.md "wikilink")，因为它们已经死亡，只等待它们的父进程回收 它们。

<!-- end list -->

  - 处于阻塞状态的进程不会死亡，直到它们再次醒来。

<!-- end list -->

  - ''[init](https://zh.wikipedia.org/wiki/init "wikilink")
    ''进程是特殊的：它不获得它不想处理的信号，因此它可以忽略SIGKILL。

<!-- end list -->

  - 因为SIGKILL不给进程任何在终止时做清理操作的机会，在大部分系统关闭过程中，在采取
    SIGKILL之前，使用信号SIGTERM使进程终止的尝试先被作出。

<!-- end list -->

  - 为了加速计算机关闭过程，Mac OS X
    10.6，也称为[雪豹](../Page/Mac_OS_X_Snow_Leopard.md "wikilink")
    ，会将SIGKILL发送给已经标记它们自己为“干净”的应用程序，以加快关机速度 ，同时，很可能地，没有坏作用。\[2\]

<!-- end list -->

  - 即使SIGKILL被发送给它，一个正在的进程也可能不会终止（并且释放它的资源）。这是少数几个一个UNIX系统可能需要被重新启动来解决临时软件问题的例子中的一个。

## 参考

1.  {{ cite web | url =
    <http://sourceware.org/git/?p=glibc.git;a=blob;f=bits/signum.h> |
    title = sourceware.org Git - glibc.git/blob - bits/signum.h |
    accessdate = 2009-11-18 | date = 2001-07-06 }}
2.  {{ cite web | url =
    <http://developer.apple.com/mac/library/releasenotes/MacOSX/WhatsNewInOSX/Articles/MacOSX10_6.html#//apple_ref/doc/uid/TP40008898-SW22>
    | title = Mac Dev Center: What's New in Mac OS X: Mac OS X v10.6 |
    date = 2009-08-28 | accessdate = 2009-11-18 }}