**futex**（快速用户区[互斥的简称](https://zh.wikipedia.org/wiki/互斥 "wikilink")）是一个在[Linux](../Page/Linux.md "wikilink")上实现[锁定和构建高级抽象锁如](https://zh.wikipedia.org/wiki/锁定 "wikilink")[信号量](../Page/信号量.md "wikilink")和[POSIX互斥的基本工具](https://zh.wikipedia.org/wiki/POSIX "wikilink")。它们第一次出现在内核开发的2.5.7版；其语义在2.5.40固定下来，然后在2.6.x系列稳定版内核中出现。

Futex 是由[Hubertus Franke](https://zh.wikipedia.org/wiki/Hubertus_Franke "wikilink")（[IBM](../Page/IBM.md "wikilink") [Thomas J. Watson 研究中心](https://zh.wikipedia.org/wiki/Thomas_J._Watson_研究中心 "wikilink")）, [Matthew Kirkwood](https://zh.wikipedia.org/wiki/Matthew_Kirkwood "wikilink")，[Ingo Molnar](https://zh.wikipedia.org/wiki/Ingo_Molnar "wikilink")（[Red Hat](https://zh.wikipedia.org/wiki/Red_Hat "wikilink")）和 [Rusty Russell](https://zh.wikipedia.org/wiki/Rusty_Russell "wikilink")（[IBM Linux 技术中心](https://zh.wikipedia.org/wiki/IBM_Linux_技术中心 "wikilink")）等人创建的。

Futex 由一块能够被多个[进程共享的](https://zh.wikipedia.org/wiki/进程 "wikilink")[内存空间](https://zh.wikipedia.org/wiki/计算机_存储 "wikilink")（一个对齐后的[整型变量](https://zh.wikipedia.org/wiki/整型 "wikilink")）组成；这个整型变量的值能够通过[汇编语言](../Page/汇编语言.md "wikilink")调用CPU提供的[原子操作指令来增加或减少](https://zh.wikipedia.org/wiki/原子操作 "wikilink")，并且一个进程可以等待直到那个值变成正数。Futex 的操作几乎全部在[用户空间完成](https://zh.wikipedia.org/wiki/用户空间 "wikilink")；只有当操作结果不一致从而需要仲裁时，才需要进入操作系统[内核空间执行](https://zh.wikipedia.org/wiki/内核空间 "wikilink")。这种机制允许使用 futex 的锁定原语有非常高的执行效率：由于绝大多数的操作并不需要在多个进程之间进行仲裁，所以绝大多数操作都可以在应用程序空间执行，而不需要使用（相对高代价的）内核[系统调用](https://zh.wikipedia.org/wiki/系统调用 "wikilink")。

## 參考資料

  - Hubertus Franke, Rusty Russell, Matthew Kirkwood, *fuss, futexes and furwocks: Fast Userlevel Locking in Linux*, Ottawa Linux Symposium 2002, [online](https://web.archive.org/web/20060922034808/http://www.linux.org.uk/~ajh/ols2002_proceedings.pdf.gz)

## 外部链接

  - [Futex manpages](http://ds9a.nl/futex-manpages/)
  - *[Futexes Are Tricky](http://people.redhat.com/drepper/futex.pdf)* ([PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")，11 pages), a paper explaining futexes and how to use them（[Ulrich Drepper](https://zh.wikipedia.org/wiki/Ulrich_Drepper "wikilink") of [Red Hat](https://zh.wikipedia.org/wiki/Red_Hat "wikilink")）

[Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink") [Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")