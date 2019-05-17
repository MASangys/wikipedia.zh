在[计算机领域中](https://zh.wikipedia.org/wiki/電腦運算 "wikilink")，尤其是[Unix及](../Page/UNIX.md "wikilink")[类Unix系统操作系统中](../Page/类Unix系统.md "wikilink")，**fork**是一种创建自身[行程副本的操作](../Page/行程.md "wikilink")。它通常是[内核实现的一种](../Page/内核.md "wikilink")[系统调用](https://zh.wikipedia.org/wiki/系统调用 "wikilink")。Fork是类Unix操作系统上创建进程的一种主要方法，甚至历史上是唯一方法。

## 概述

在多任务操作系统中，[行程](../Page/行程.md "wikilink")（运行的程序）需要一种方法来创建新进程，例如运行其他程序。Fork及其变种在类Unix系统中通常是这样做的唯一方式。如果进程需要启动另一个程序的可执行文件，它需要先Fork来创建一个自身的副本。然后由该副本即“[子进程](../Page/子进程.md "wikilink")”调用系统调用，用其他程序覆盖自身：停止执行自己之前的程序并执行其他程序。

Fork操作会为子进程创建一个单独的[定址空間](https://zh.wikipedia.org/wiki/定址空間 "wikilink")。子进程拥有父进程所有内存段的精确副本。在现代的UNIX变种中，这遵循出自SunOS-4.0的[虚拟内存模型](../Page/虚拟内存.md "wikilink")，根据[寫入時複製语义](https://zh.wikipedia.org/wiki/寫入時複製 "wikilink")，物理内存不需要被实际复制。取而代之的是，两个进程的可能指向[物理内存中的同一个页](../Page/電腦數據存貯器.md "wikilink")，直到它们写入该页时，写入才会发生。在用fork配合exec来执行新程序的情况下，此优化很重要。通常来说，子进程在停止程序运行前会执行一小组有利于其他程序的操作，它可能用到少量的其父进程的[数据结构](../Page/数据结构.md "wikilink")。

当一个进程调用fork时，它被认为是[父进程](../Page/父进程.md "wikilink")，新创建的进程是它的孩子（子进程）。在fork之后，两个进程还运行着相同的程序，都像是调用了该系统调用一般恢复执行。然后它们可以检查调用的确定其状态：是父进程还是子进程，以及据此行事。

fork系统调用在第一个版本的Unix就已存在\[1\]，它借用于更早的
[分時系統](https://zh.wikipedia.org/wiki/分時系統 "wikilink")。\[2\]Fork是标准化的[POSIX的一部分](https://zh.wikipedia.org/wiki/POSIX "wikilink")。\[3\]

## 通信

子进程从父进程的[文件描述符副本开始](../Page/文件描述符.md "wikilink")。对于进程间通信，父进程通常会创建一个或多个[管道](../Page/管道_\(Unix\).md "wikilink")，在fork进程之后，进程关闭它们不需要的管道端。\[4\]

## 变种

### Vfork

Vfork是与fork具有相同[调用约定和很多相同语义的一个变种](https://zh.wikipedia.org/wiki/调用约定 "wikilink")，但只能在有限的情况下使用它。它起源于Unix的[3BSD版本](https://zh.wikipedia.org/wiki/3BSD "wikilink")\[5\]\[6\]，这是首个支持[虚拟内存的Unix版本](../Page/虚拟内存.md "wikilink")。它已按[POSIX标准化](https://zh.wikipedia.org/wiki/POSIX "wikilink")，这使得vfork能具有与fork完全相同的行为。但这已在2004年的版本中被标为过时\[7\]，并在后续版本中被[posix_spawn](https://zh.wikipedia.org/wiki/posix_spawn "wikilink")()取代（其通常通过vfork实现）。

在发出一个vfork系统调用时，父进程被暂停，直至子进程完成执行或被新的可执行映像取代（通过系统调用之“”家族中的一项）。子进程借用父进程的MMU设置和内存页面，在父进程与子进程之间共享，不进行复制，尤其是没有[寫入時複製语义](https://zh.wikipedia.org/wiki/寫入時複製 "wikilink")；\[8\]因此，如果子进程在任何共享页面中进行修改，不会创建新的页面，并且修改的页面对父进程同样可见。因为没有页面复制（消耗额外的内存），此技术在纯复制环境中使用exec时较普通fork更优化。在POSIX中，除非是将立即调用exec家族（及其他几个操作）的函数，其他任何目的会导致[未定义行为](../Page/未定义行为.md "wikilink")。\[9\]使用vfork时，子进程借用而非复制数据结构，所以vfork仍比使用写时复制语义的fork更快。

[System V在System](../Page/UNIX_System_V.md "wikilink")
VR4被引入前不支持此系统函数，因为它的内存共享容易出错：同样，Linux对vfork的手册页面强烈不鼓励它的使用：\[10\]使用vfork的其他问题包括[死锁](../Page/死锁.md "wikilink")
，它可能发生在[多线程程序中](../Page/线程.md "wikilink")，由于与[动态链接交互](https://zh.wikipedia.org/wiki/Ld.so "wikilink")。
作为vfork接口的替代品，POSIX引入了posix_spawn函数家族，它结合了fork和exec的动作。这些函数可以实现为fork的程序库例程，就像Linux那样，或者为了更好的性能实现为vfork
，就像Solaris那样\[11\]\[12\]。不过，POSIX规范中注明它是“为[内核操作设计](https://zh.wikipedia.org/wiki/系统调用 "wikilink")”，尤其是用于运行在受限硬件和[实时系统上的操作系统](../Page/实时计算.md "wikilink")。\[13\]

虽然4.4BSD的实现中摆脱了vfork的实现，使vfork做到与fork相同的行为，它在[NetBSD操作系统中因性能原因而恢复](../Page/NetBSD.md "wikilink")。\[14\]

一些嵌入式操作系统（例如[uClinux](../Page/ΜClinux.md "wikilink")）省略fork并只实现vfork，因为它们需要在由于缺乏[内存管理单元](../Page/内存管理单元.md "wikilink")（MMU）而不可能实现写时复制的设备上操作。

### Rfork

[Plan
9操作系统由Unix的设计者创造](../Page/貝爾實驗室九號計畫.md "wikilink")，包括fork，但也有一个名为“rfork”的变种，它允许父进程与子进程之间资源的细粒度共享，包括地址空间（除了[调用栈段](https://zh.wikipedia.org/wiki/调用栈 "wikilink")，那是每个进程独有的）、[环境变量和](../Page/环境变量.md "wikilink")[文件系统](../Page/文件系统.md "wikilink")[命名空间](../Page/命名空间.md "wikilink")；\[15\]这使它成为了创建进程和其中的[线程的一个统一接口](../Page/线程.md "wikilink")。\[16\]
在[FreeBSD](../Page/FreeBSD.md "wikilink")\[17\]和[IRIX中采用了来自Plan](../Page/IRIX.md "wikilink")
9的rfork，后者将其更名为“sproc”。

### Clone

“clone”（克隆）是[Linux内核中的一个系统调用](../Page/Linux内核.md "wikilink")，它创建一个可以与其父共享“执行[上下文](https://zh.wikipedia.org/wiki/上下文 "wikilink")”的子进程。类似FreeBSD的rfork和IRIX的sproc，Linux的clone受到了Plan
9的rfork启发，并可用于实现线程（尽管应用程序的程序员通常使用更高级的接口，例如[pthreads](../Page/POSIX线程.md "wikilink")，实现在clone的顶层）。出自Plan
9和IRIX的“separate stacks”（单独堆栈）特性已被省略，因为其导致了太多开销（据[Linus
Torvalds](../Page/林纳斯·托瓦兹.md "wikilink")）。\[18\]

## 其他操作系统中的Fork

在[VMS操作系统](https://zh.wikipedia.org/wiki/OpenVMS "wikilink")（1977年）的原始设计中，新进程根据当前一些特定地址进行复制来创建被认为是有风险的。当前进程中的错误状态可能被复制给子进程。因此在这里使用了进程“产卵”（spawning）之隐喻：新进程的每个组件的内存布局都是重新创建的。后来被微软的操作系统采用（1993年）。

[VM/CMS](https://zh.wikipedia.org/wiki/VM/CMS "wikilink")（OpenExtensions）的POSIX兼容组件提供了一个非常有限的fork实现，其中的父进程在子进程执行时被暂停，并且子与父共享同一地址空间。\[19\]这本质上是一个名为fork的vfork。（注意，这只适用于CMS客户机操作系统，其他VM客户机操作系统如Linux提供标准的fork功能。）

## 应用程序范例

下列[Hello
World程序的变种以](../Page/Hello_World.md "wikilink")[C语言展示了fork系统调用的机理](https://zh.wikipedia.org/wiki/C语言 "wikilink")。该程序为两个进程，每个都基于系统调用的返回值决定它们执行什么功能。中的[头文件等已被省略](../Page/头文件.md "wikilink")。

``` c
int main(void)
{
   pid_t pid = fork();

   if (pid == -1) {
      perror("fork failed");
      exit(EXIT_FAILURE);
   }
   else if (pid == 0) {
      printf("Hello from the child process!\n");
      _exit(EXIT_SUCCESS);
   }
   else {
      int status;
      (void)waitpid(pid, &status, 0);
   }
   return EXIT_SUCCESS;
}
```

下面是该程序的解析：

``` c
   pid_t pid = fork();
```

调用中的第一句是调用系统调用来分割执行为两个进程。的返回值被记录在类型为pid_t的变量中，其中是POSIX类型的进程标识符（PID）。

在[计算机领域](https://zh.wikipedia.org/wiki/電腦運算 "wikilink")，尤其是[Unix及](../Page/UNIX.md "wikilink")[类Unix系统操作系统中](../Page/类Unix系统.md "wikilink")，**fork**是一种创建自身[行程副本的操作](../Page/行程.md "wikilink")。它通常是[内核实现的一种](../Page/内核.md "wikilink")[系统调用](https://zh.wikipedia.org/wiki/系统调用 "wikilink")。Fork是在类Unix操作系统上创建进程的一种主要方法，甚至历史上曾是唯一方法。

\-1错误表示出错：没有新进程被创建。因此要印出一条错误消息。

如果成功，那么现在有两个进程。两者都从返回时开始执行函数。为了使进程执行不同的任务，程序必须基于的返回值决定其作为子进程或父进程执行某个[分支](https://zh.wikipedia.org/wiki/分支_\(計算機科學\) "wikilink")。

``` c
   else if (pid == 0) {
      printf("Hello from the child process!\n");
      _exit(EXIT_SUCCESS);
   }
```

Fork操作会为子进程创建一个单独的[定址空間](https://zh.wikipedia.org/wiki/定址空間 "wikilink")。子进程拥有父进程所有内存段的精确副本。在现代的UNIX变种中，这遵循出自SunOS-4.0的[虚拟内存模型](../Page/虚拟内存.md "wikilink")，根据[寫入時複製语义](https://zh.wikipedia.org/wiki/寫入時複製 "wikilink")，物理内存不需要被实际复制。取而代之的是，两个进程的可能指向[物理内存中的同一个页](https://zh.wikipedia.org/wiki/物理内存 "wikilink")，直至它们写入该页时，写入才会发生。在用配合来执行新程序的情况下，此优化很重要。通常，子进程在停止程序运行前会执行一小组有利于其他程序的操作，它可能用到少量的其父进程的[数据结构](../Page/数据结构.md "wikilink")。

``` c
   else {
      int status;
      (void)waitpid(pid, &status, 0);
   }
```

其他进程——即父进程，会收到传来的子进程的进程标识符，其始终为一个正数。父进程将此标识符传递给 waitpid
系统调用来暂停执行，直至子进程退出。当此情况发生后，父进程继续执行并按return语句的含义退出。

## 参见

  - [fork炸弹](../Page/Fork炸弹.md "wikilink")

  -
  -
  - [Wait](https://zh.wikipedia.org/wiki/Wait "wikilink")

## 参考资料

[Category:C_POSIX_library](https://zh.wikipedia.org/wiki/Category:C_POSIX_library "wikilink")
[Category:进程](https://zh.wikipedia.org/wiki/Category:进程 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.
9.
10.
11.

12. The OpenSolaris posix_spawn() implementation:
    <https://sourceforge.net/p/schillix-on/schillix-on/ci/default/tree/usr/src/lib/libc/port/threads/spawn.c>

13.

14.

15.

16.

17.

18.

19.