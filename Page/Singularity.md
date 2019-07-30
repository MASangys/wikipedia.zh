**Singularity**，一種實驗性[操作系统](../Page/操作系统.md "wikilink")，在2003年至2010年間由[微软研究院設計](https://zh.wikipedia.org/wiki/微软研究院 "wikilink")、發展出來。该操作系统的[核心](https://zh.wikipedia.org/wiki/內核 "wikilink")、[驅動程式以及应用程序都以](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")「[受控代碼](../Page/受控代碼.md "wikilink")」写成。系统“Singularity”在设计上完全改头换面，不再以其性能為標準，而以系統稳定性作为首要标准。

Singularity操作系统會在系统构建、編寫程式等应用微软最先进的技术，例如Singularity的核心技术之一：软件独立进程（Software Isolated Processes，SIP）将采用“Type-safe”编程语言以及精简的指令完成，保证系统運作之间的高度独立性。SIP保证每个程序、驅動程式以及系统扩展组件都在獨立的SIP内运行，並不允许互相共享内存或修改自身代码，能夠使系统的稳定性增強。

微软将會在近期公布更多Singularity的详细技术资料。

Singularity的低级[x86](https://zh.wikipedia.org/wiki/x86 "wikilink")[中断以](https://zh.wikipedia.org/wiki/中断 "wikilink")[汇编语言](../Page/汇编语言.md "wikilink")和[C语言写成](https://zh.wikipedia.org/wiki/C语言 "wikilink")。一旦这些代码完成工作，它将调用核心，核心的[运行时代码和](https://zh.wikipedia.org/wiki/运行时 "wikilink")[垃圾收集器用](https://zh.wikipedia.org/wiki/垃圾收集器_\(计算机科学\) "wikilink")[C♯语言写成并在非安全模式下运行](https://zh.wikipedia.org/wiki/C＃ "wikilink")。Singularity的[硬件抽象层用](https://zh.wikipedia.org/wiki/硬件抽象层 "wikilink")[C++](../Page/C++.md "wikilink")语言写成并运行在安全模式下。并且也有部分C代码负责调试工作。计算机的[BIOS](../Page/BIOS.md "wikilink")只在16位元[真實模式](../Page/真實模式.md "wikilink")[自举阶段被调用](https://zh.wikipedia.org/wiki/自举 "wikilink")；一旦系统进入32位元模式，Singularity将永远不再调用BIOS，而改以调用以[Sing♯写出的设备驱动代码](https://zh.wikipedia.org/wiki/Sing＃ "wikilink")。当安装时，[CIL形态的](https://zh.wikipedia.org/wiki/CIL "wikilink")将藉由[Bartok](http://research.microsoft.com/act/)编译为x86形态的opcode。Bartok是一种以C\#写成的早期优化[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")。

[源代码](../Page/源代码.md "wikilink")和／或磁盘镜像将在工程完成时可用。

## 设计

Singularity是一个[微内核操作系统](https://zh.wikipedia.org/wiki/微内核 "wikilink")；无论如何，不似过去的微内核，Singularity的不同组件不在单独的地址空间（进程）内运行，而是每個软件独立进程（SIP）分配到一个独立的单一地址空间。这些SIP的行为类似普通进程，但SIP将不会在任务调度时请求开销惩罚（overhead penalty）。系统的保护由[不变式](https://zh.wikipedia.org/wiki/不变式 "wikilink")（[invariants](https://zh.wikipedia.org/wiki/invariants "wikilink")）集提供，比如内存不变式将维护内存内两个SIP间没有[交互參照](https://zh.wikipedia.org/wiki/交互參照 "wikilink")（或循环的内存指针）。这项规则将在应用程序安装阶段进行检查，并且不得违反，否则Singularity将禁止安装（注意：Singularity系统中安装完全由操作系统管理）。

大部分不变式依赖于带有安全机制语言的使用，如[Java语言或C](https://zh.wikipedia.org/wiki/Java语言 "wikilink")\#，这些语言拥有垃圾收集机制，没有专断指针并且代码可以辑由某种[计算机安全策略得以验证](https://zh.wikipedia.org/wiki/计算机安全策略 "wikilink")。

## 版本歷史

  - 2007年：Singularity 1.0
  - 2007年3月：Singularity 1.1
  - 2008年12月14日：Singularity 2.0

## 参见

  - [Sing♯](https://zh.wikipedia.org/wiki/Sing＃ "wikilink")
  - [Spec♯](https://zh.wikipedia.org/wiki/Spec＃ "wikilink")

## 外部链接

  - [官方主页](http://research.microsoft.com/os/singularity/)
  - [Singularity Design Motivation (pdf)](ftp://ftp.research.microsoft.com/pub/tr/TR-2004-105.pdf)
  - [Detailed overview of the Singularity project (pdf)](ftp://ftp.research.microsoft.com/pub/tr/TR-2005-135.pdf)
  - [Channel9 thread, with interview of Jim Larus and Galen Hunt](http://channel9.msdn.com/ShowPost.aspx?PostID=68302)
  - [The JX Operating System (pdf)](http://www.jxos.org/publications/jx-usenix.pdf)，another operating system similar in concept

[Category:微软研究院](https://zh.wikipedia.org/wiki/Category:微软研究院 "wikilink") [Category:微軟操作系統](https://zh.wikipedia.org/wiki/Category:微軟操作系統 "wikilink") [Category:微內核](https://zh.wikipedia.org/wiki/Category:微內核 "wikilink") [Category:組合語言軟體](https://zh.wikipedia.org/wiki/Category:組合語言軟體 "wikilink")