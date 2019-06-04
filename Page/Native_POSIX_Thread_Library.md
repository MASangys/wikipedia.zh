****（****）是[Linux内核中實踐](../Page/Linux内核.md "wikilink")[POSIX
Threads標準的函式庫](https://zh.wikipedia.org/wiki/POSIX_Threads "wikilink")。

测试表明，NPTL能够成功地在[IA-32平台上在两秒鐘内生成](https://zh.wikipedia.org/wiki/IA-32 "wikilink")100,000个[线程](../Page/多线程.md "wikilink")；相应的没有的内核将耗费15分钟左右。\[1\]\[2\]

## 历史

在内核2.6出现之前进程是(最小)可调度的对象，当时的不真正支持线程。但是内核有一个[系统调用指令](https://zh.wikipedia.org/wiki/系统调用 "wikilink")，这个指令产生一个呼叫调用的進程的复件，而且这个复件与原進程使用同一地址空间。计划使用这个系统调用来提供一个内核级的线程支持。但是这个解决方法与真正的标准有一些不相容的地方，尤其是在信号处理、进程调度和进程间同步原语方面。

要提高的效应很明显需要提供内核支持以及必须重写线程函式库。为了解决这个问题出现了两个互相竞争的项目：一个的组的项目叫做（，下一代线程），另一个组是由程序员组成的。2003年中被放弃，几乎与此同时公布了。

首次是随发表的。此前老式的线程偶尔会发生系统无法产生线程的毛病，这个毛病的原因是因为在新线程开始的时候系统没有借机先占。当时的系统对这个问题的解决比较好。在关于上的的网页上发表了一篇文章称解决了这个问题\[3\]。

从第3版开始是的一部分，从内核2.6开始它被纳入内核。目前它完全被结合入[GNU C
函式庫](https://zh.wikipedia.org/wiki/GNU_C_函式庫 "wikilink")。

## 设计

的解决方法与类似，内核看到的首要抽象依然是一个進程，新线程是通过系统调用产生的。但是需要特殊的内核支持来解决同步的原始类型之间互相竞争的状况。在这种情况下线程必须能够入眠和再复苏。用来完成这个任务的原始类型叫做。

是一个所谓的1×1线程函式库。用户产生的线程与内核能够分配的物件之间的联系是一对一的。这是所有线程程式中最简单的。

## 参考资料

<references />

## 外部链接

  - [NPTL设计论文](http://people.redhat.com/drepper/nptl-design.pdf)
  - [NPTL跟踪工具](http://nptltracetool.sourceforge.net/)
    可以同来跟踪和调试NPTL程式的开源工具

[Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink")

1.  [引入2.6内核](http://www.linuxjournal.com/article/6530)
2.  [The Native POSIX Thread Library for
    Linux](http://people.redhat.com/drepper/nptl-design.pdf)
3.  [Red Hat Linux 9 and Java 2 Platform, Standard Edition 1.4.2: A
    Winning
    Combination](http://java.sun.com/developer/technicalArticles/JavaTechandLinux/RedHat/)