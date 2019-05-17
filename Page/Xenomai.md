**Xenomai**是一个[Linux内核的实时](../Page/Linux内核.md "wikilink")[开发框架](https://zh.wikipedia.org/wiki/軟體框架 "wikilink")。它希望通过无缝地集成到[Linux环境中来给](../Page/Linux.md "wikilink")[用户空间](https://zh.wikipedia.org/wiki/使用者空間 "wikilink")[应用程序提供全面的](../Page/应用程序.md "wikilink")，与接口无关的硬实时性能。

Xenomai项目始于2001年8月。2003年它和[RTAI项目合并推出了RTAI](https://zh.wikipedia.org/wiki/RTAI "wikilink")/fusion。RTAI/fusion是[Linux平台上的具有工业生产级别的实时](../Page/Linux.md "wikilink")[自由软件开发平台](../Page/自由软件.md "wikilink")，它基于Xenomai的抽象[实时操作系统内核](../Page/实时操作系统.md "wikilink")。2005年的时候RTAI/fusion项目又从[RTAI中独立出来作为Xenomai项目](https://zh.wikipedia.org/wiki/RTAI "wikilink")。

Xenomai基于一个抽象的[实时操作系统核心](../Page/实时操作系统.md "wikilink")，它可以被用来在一个有通用[实时操作系统调用的核心上构建任意的实时接口](https://zh.wikipedia.org/wiki/实时操作系统调 "wikilink")。用来给用户程序提供接口的任意多个（可以是不同的）[实时操作系统的接口被构建在同一个核心上](../Page/实时操作系统.md "wikilink")。所有通用的系统调用都是由这个核心来实现的。这些用户接口又被称作“皮肤”。

## Xenomai vs. RTAI

虽然这两个项目有不少共同的想法，而且都支持RTDM实时驱动模块，但是实际上他们有很多不同之处。这些不同之处主要是由他们不同的目标和各自不同的实现方式造成的。RTAI项目致力于技术上可行的最低延迟；Xenomai除此之外还很看重扩展性，可移植性以及可维护性。Xenoami项目将对[Ingo
Molnar的](https://zh.wikipedia.org/wiki/Ingo_Molnar "wikilink")[PREEMPT
RT实时抢占补丁提供支持](https://zh.wikipedia.org/wiki/PREEMPT_RT "wikilink")，这又是与RTAI项目的一个显著的不同。
\[1\]

## 参见

  -
  -
## 参考资料

## 外部链接

  -
  -
  - [Radboud Univ. - Xenomai](http://www.cs.ru.nl/lab/xenomai/) see the
    Xenomai exercises

[Category:实时操作系统](https://zh.wikipedia.org/wiki/Category:实时操作系统 "wikilink")

1.  [Article:Xenomai-help WG: Xenomai vs.
    RTAI](https://mail.gna.org/public/xenomai-help/2006-08/msg00115.html)