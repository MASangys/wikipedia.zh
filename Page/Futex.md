**futex**（快速用户区[互斥的简称](../Page/互斥.md "wikilink")）是一个在[Linux上实现](../Page/Linux.md "wikilink")[锁定和构建高级抽象锁如](../Page/锁定.md "wikilink")[信号量和](../Page/信号量.md "wikilink")[POSIX互斥的基本工具](../Page/POSIX.md "wikilink")。它们第一次出现在内核开发的2.5.7版；其语义在2.5.40固定下来，然后在2.6.x系列稳定版内核中出现。

Futex 是由[Hubertus
Franke](../Page/Hubertus_Franke.md "wikilink")（[IBM](../Page/IBM.md "wikilink")
[Thomas J. Watson 研究中心](../Page/Thomas_J._Watson_研究中心.md "wikilink")）,
[Matthew Kirkwood](../Page/Matthew_Kirkwood.md "wikilink")，[Ingo
Molnar](../Page/Ingo_Molnar.md "wikilink")（[Red
Hat](../Page/Red_Hat.md "wikilink")）和 [Rusty
Russell](../Page/Rusty_Russell.md "wikilink")（[IBM Linux
技术中心](../Page/IBM_Linux_技术中心.md "wikilink")）等人创建的。

Futex
由一块能够被多个[进程共享的](../Page/进程.md "wikilink")[内存空间](../Page/计算机_存储.md "wikilink")（一个对齐后的[整型变量](../Page/整型.md "wikilink")）组成；这个整型变量的值能够通过[汇编语言调用CPU提供的](../Page/汇编语言.md "wikilink")[原子操作指令来增加或减少](../Page/原子操作.md "wikilink")，并且一个进程可以等待直到那个值变成正数。Futex
的操作几乎全部在[用户空间完成](../Page/用户空间.md "wikilink")；只有当操作结果不一致从而需要仲裁时，才需要进入操作系统[内核空间执行](../Page/内核空间.md "wikilink")。这种机制允许使用
futex
的锁定原语有非常高的执行效率：由于绝大多数的操作并不需要在多个进程之间进行仲裁，所以绝大多数操作都可以在应用程序空间执行，而不需要使用（相对高代价的）内核[系统调用](../Page/系统调用.md "wikilink")。

## 參考資料

  - Hubertus Franke, Rusty Russell, Matthew Kirkwood, *fuss, futexes and
    furwocks: Fast Userlevel Locking in Linux*, Ottawa Linux Symposium
    2002,
    [online](https://web.archive.org/web/20060922034808/http://www.linux.org.uk/~ajh/ols2002_proceedings.pdf.gz)

## 外部链接

  - [Futex manpages](http://ds9a.nl/futex-manpages/)
  - *[Futexes Are Tricky](http://people.redhat.com/drepper/futex.pdf)*
    ([PDF](../Page/PDF.md "wikilink")，11 pages), a paper explaining
    futexes and how to use them（[Ulrich
    Drepper](../Page/Ulrich_Drepper.md "wikilink") of [Red
    Hat](../Page/Red_Hat.md "wikilink")）

[Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink")
[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")