在计算机科学中，**信号**（）是[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")、[类Unix以及其他](https://zh.wikipedia.org/wiki/类Unix "wikilink")[POSIX兼容的操作系统中](https://zh.wikipedia.org/wiki/POSIX "wikilink")[进程间通讯的一种有限制的方式](https://zh.wikipedia.org/wiki/进程间通讯 "wikilink")。它是一种[异步的通知机制](https://zh.wikipedia.org/wiki/异步 "wikilink")，用来提醒[进程一个事件已经发生](https://zh.wikipedia.org/wiki/进程 "wikilink")。当一个信号发送给一个进程，操作系统中断了进程正常的[控制流程](../Page/控制流程.md "wikilink")，此时，任何非[原子操作都将被中断](https://zh.wikipedia.org/wiki/原子操作 "wikilink")。如果进程定义了信号的处理函数，那么它将被执行，否则就执行默认的处理函数。

## 发送信号

  - 在一个运行的程序的[控制终端键入特定的组合键可以向它发送某些信号](https://zh.wikipedia.org/wiki/控制终端 "wikilink")：
      - [Ctrl-C发送INT信号](https://zh.wikipedia.org/wiki/Ctrl-C "wikilink")（[SIGINT](https://zh.wikipedia.org/wiki/SIGINT_\(POSIX\) "wikilink")）；默认情况下，这会导致进程终止。
      - [Ctrl-Z发送TSTP信号](https://zh.wikipedia.org/wiki/Ctrl-Z "wikilink")（[SIGTSTP](https://zh.wikipedia.org/wiki/SIGTSTP "wikilink")）；默认情况下，这会导致进程[挂起](https://zh.wikipedia.org/wiki/挂起 "wikilink")。
      - [Ctrl-\\发送QUIT信号](https://zh.wikipedia.org/wiki/Ctrl-/ "wikilink")（[SIGQUIT](https://zh.wikipedia.org/wiki/SIGQUIT "wikilink")）；默认情况下，这会导致进程终止并且将内存中的信息转储到硬盘（[核心转储](https://zh.wikipedia.org/wiki/核心转储 "wikilink")）。
      - （这些组合键可以通过[stty命令来修改](https://zh.wikipedia.org/wiki/stty "wikilink")。）
  - `kill()`[系统调用会在权限允许的情况下向进程发送特定的信号](https://zh.wikipedia.org/wiki/系统调用 "wikilink")，类似地，[`kill`](https://zh.wikipedia.org/wiki/kill_\(命令\) "wikilink")命令允许用户向进程发送信号。`raise(3)`库函数可以将特定信号发送给当前进程。
  - 像除数为零、段错误这些[异常也会产生信号](https://zh.wikipedia.org/wiki/异常 "wikilink")（这里分别是[SIGFPE](../Page/SIGFPE.md "wikilink")和[SIGSEGV](../Page/SIGSEGV.md "wikilink")，默认都会导致进程终止和核心转储).
  - 内核可以向进程发送信号以告知它一个事件发生了。例如当进程将数据写入一个已经被关闭的[管道是将会收到](https://zh.wikipedia.org/wiki/管道 "wikilink")[SIGPIPE信号](https://zh.wikipedia.org/wiki/SIGPIPE "wikilink")，默认情况下会使进程关闭。

## 处理信号

信号处理函数可以通过[`signal()`](https://zh.wikipedia.org/wiki/Sigaction_\(Unix\) "wikilink")系统调用来设置。如果没有为一个信号设置对应的处理函数，就会使用默认的处理函数，否则信号就被进程截获并调用相应的处理函数。在没有处理函数的情况下，程序可以指定两种行为：忽略这个信号（SIG_IGN）或者用默认的处理函数（SIG_DFL）。但是有两个信号是无法被截获并处理的：[SIGKILL](../Page/SIGKILL.md "wikilink")和[SIGSTOP](https://zh.wikipedia.org/wiki/SIGSTOP "wikilink")。

### 风险

因为[竞态条件的存在](https://zh.wikipedia.org/wiki/竞态条件 "wikilink")，信号的处理是有弱点的。因为信号是异步的，所以在处理一个信号的过程中，进程可能收到另一个信号（甚至是相同的信号）。[`sigprocmask()`](https://zh.wikipedia.org/wiki/sigprocmask_\(Unix\) "wikilink")系统调用可以用来阻塞和恢复信号的传递。信号可以造成进程中系统调用的中断，并在信号处理完后重新开始未完成的系统调用。信号处理函数应该没有任何不想要的副作用，比如，[errno的改变](https://zh.wikipedia.org/wiki/errno "wikilink")、信号掩码的改变、信号处理方法的改变，以及其他全局[进程性质的改变](https://zh.wikipedia.org/wiki/进程 "wikilink")。在信号处理函数内使用不[可重入](../Page/可重入.md "wikilink")函数，如[malloc和](https://zh.wikipedia.org/wiki/malloc "wikilink")[printf](https://zh.wikipedia.org/wiki/printf "wikilink")，也是不安全的。

## 与硬件异常的关系

[进程的运行也可能导致硬件异常](https://zh.wikipedia.org/wiki/进程 "wikilink")，例如，将一个数[除以零](../Page/除以零.md "wikilink")，或者出现[TLB不命中](https://zh.wikipedia.org/wiki/TLB "wikilink")。在[类Unix系统中](https://zh.wikipedia.org/wiki/类Unix "wikilink")，这会自动运行[内核](../Page/内核.md "wikilink")的异常处理程序。对于某些异常如[页缺失](https://zh.wikipedia.org/wiki/页缺失_（计算机科学） "wikilink")，内核有足够的信息来处理完并恢复进程的运行。但是对于另外一些异常，内核不能处理而只能通过发送信号把异常交给进程自己处理。例如在[x86架构的](https://zh.wikipedia.org/wiki/x86 "wikilink")[CPU上](https://zh.wikipedia.org/wiki/CPU "wikilink")，如果一个进程尝试将一个数除以零，将会产生*divide error*异常，并使内核向出错的进程发送[SIGFPE](../Page/SIGFPE.md "wikilink")信号。相似地，如果一个进程尝试访问[虚拟地址空间以外的内存](https://zh.wikipedia.org/wiki/虚拟地址空间 "wikilink")，内核将向进程发送[SIGSEGV](../Page/SIGSEGV.md "wikilink")信号。异常与信号的具体对应关系在不同的CPU架构上是不同的。

## 信号列表

[单一UNIX规范规定了在](https://zh.wikipedia.org/wiki/单一UNIX规范 "wikilink")`<`[`signal.h`](https://zh.wikipedia.org/wiki/signal.h "wikilink")`>`中定义的信号有：

备注：打星号的部分表示这是X/Open System Interfaces (XSI)扩充的部分。使用引号的文字是引用自SUS[1](http://www.opengroup.org/onlinepubs/007904975)。

## 参考文献

## 外部链接

  - [Introduction to Unix Signals Programming](https://web.archive.org/web/20071101082659/http://users.actcom.co.il/~choo/lupg/tutorials/signals/signals-programming.html#the_what)
  - [Another Introduction to Unix Signals Programming](http://www.linuxprogrammingblog.com/all-about-linux-signals)
  - [UNIX and Reliable POSIX Signals](http://www.enderunix.org/docs/signals.pdf) by Baris Simsek
  - [Signal Handlers](http://www.openbsd.org/papers/opencon04/index.html) by Henning Brauer

## 参见

  - `<`[`signal.h`](https://zh.wikipedia.org/wiki/signal.h "wikilink")`>`

{{-}}

[Category:控制流程](https://zh.wikipedia.org/wiki/Category:控制流程 "wikilink") [Category:Unix](https://zh.wikipedia.org/wiki/Category:Unix "wikilink")