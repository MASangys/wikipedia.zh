> 本文内容由[Protothreads](https://zh.wikipedia.org/wiki/Protothreads)转换而来。


**Protothreads**是一种低开销的[并发编程机制](../Page/并发计算.md "wikilink")。Protothreads充当[无栈的轻量级](https://zh.wikipedia.org/wiki/调用栈 "wikilink")[线程](../Page/线程.md "wikilink")或[协程](../Page/协程.md "wikilink")，它使用了极小的每protothread内存：一个短整数保存执行位置，一个字节作为让步标志。

## 简介

Protothreads可用于实现叫做[协作式多任务的](https://zh.wikipedia.org/wiki/协作式多任务 "wikilink")[非抢占形式的](https://zh.wikipedia.org/wiki/抢占式多任务处理 "wikilink")[并发计算](../Page/并发计算.md "wikilink")，故而在一个线程yield（让步）给另一个线程的时候不会招致[上下文切换](https://zh.wikipedia.org/wiki/上下文切换 "wikilink")。为了在一个protothread内达成yield，在线程函数内利用了[达夫设备](../Page/达夫设备.md "wikilink")并在其[switch语句内使用一个函数外部的变量](https://zh.wikipedia.org/wiki/switch语句 "wikilink")。这允许在另一次函数调用时跳转（恢复）到上次的yield的地方。为了[阻塞线程](https://zh.wikipedia.org/wiki/阻塞_\(计算\) "wikilink")，这些yield要通过等待[条件来守卫](https://zh.wikipedia.org/wiki/条件表达式 "wikilink")，使得后续的对同样这个函数的调用仍然yield，直到这个条件表达式是为真值为止。

protothread的概念是和Oliver Schmidt开发的\[1\]，基于了[Simon Tatham](https://zh.wikipedia.org/wiki/Simon_Tatham "wikilink")\[2\]和\[3\]此前的工作。

## 评价

Protothreads与其他[协程](../Page/协程.md "wikilink")或纯线程实现有关的特征是它们都是无栈的。这有好处也有坏处。坏处是在protothread内的[局部变量](https://zh.wikipedia.org/wiki/局部变量 "wikilink")，在经历了yield而再恢复执行之后，不能信任它们仍保留了原来的值。它们要保持自己的状态，就必须通过使用[静态变量](../Page/静态变量.md "wikilink")或函数外部的变量，经常是[全局变量](../Page/全局变量.md "wikilink")\[4\]。好处是它们是非常轻量级的，因而可用于很多内存受限的系统，就像对于小型[微控制器](https://zh.wikipedia.org/wiki/微控制器 "wikilink")，其他解决方案可能是不现实的或不是真想要的。

知名于[达夫设备](../Page/达夫设备.md "wikilink")的，曾评价这种方法的缺点：“探究一种类似在中断驱动的状态机中所用到的技巧太恐怖了。\[...\] 我从来都不认为它是胜任的通用协程实现，因为要拥有一个协程的多个同时活动是不容易的，并且使用这种方法要使协程在除了在顶层例程内以外任何地方放弃控制权都是不可能的。简单的汇编语言栈交换库就能让你做到这二者。”\[5\]

## 参见

  - [协程](../Page/协程.md "wikilink")
  - [纤程](https://zh.wikipedia.org/wiki/纤程 "wikilink")
  - [Microthread](https://zh.wikipedia.org/wiki/Microthread "wikilink")

## 引用

## 外部连接

  - [Protothread library in C](http://dunkels.com/adam/pt/)，用于[Contiki](../Page/Contiki.md "wikilink")操作系统
  - [Using Protothreads for Sensor Node Programming](http://dunkels.com/adam/dunkels05using.pdf)，PDF版论文中有对使用Protothreads的一些深入讨论
  - [Protothread library](http://code.google.com/p/protothread/)，要求[GCC](../Page/GCC.md "wikilink")，包括了建模在[UNIX](../Page/UNIX.md "wikilink")[内核](../Page/内核.md "wikilink")上的一个[线程调度器](../Page/调度_\(计算机\).md "wikilink")（一种简化形式的[POSIX](../Page/POSIX线程.md "wikilink")[条件变量](https://zh.wikipedia.org/wiki/監視器_\(程序同步化\)#条件变量 "wikilink")），这个源代码也包括对多CPU核心（处理器）的支持。
  - [Protothreads (coroutines) in C99. Highly portable, but work best in low-end embedded systems.](https://github.com/zserge/pt)

[Category:执行绪](https://zh.wikipedia.org/wiki/Category:执行绪 "wikilink")

1.
2.  <https://www.chiark.greenend.org.uk/~sgtatham/coroutines.html>
3.
4.  A. Dunkels, O. Schmidt, T. Voigt, and M. Ali, [*Protothreads: Simplifying Event-Driven Programming of Memory-Constrained Embedded Systems*](http://doi.acm.org/10.1145/1182807.1182811), Proc. ACM [SenSys](https://zh.wikipedia.org/wiki/SenSys "wikilink"), Boulder, CO, USA, Nov 2006. ([PDF](http://dunkels.com/adam/dunkels06protothreads.pdf), [Presentation slides](http://dunkels.com/adam/dunkels06protothreads.ppt))
5.  <https://brainwagon.org/2005/03/05/coroutines-in-c/#comment-1878>