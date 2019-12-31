> 本文内容由[Fork-join模型](https://zh.wikipedia.org/wiki/Fork-join模型)转换而来。


[Fork_join.svg](https://zh.wikipedia.org/wiki/File:Fork_join.svg "fig:Fork_join.svg")

在[并行计算](../Page/并行计算.md "wikilink")中，**fork–join**模型是设置和执行并行程序的一种方式，使得程序在指定一点上“分叉”（fork）而开始并行执行，在随后的一点上“合并”（join）并恢复顺序执行。并行区段可以[递归](../Page/递归.md "wikilink")的fork，直到达到特定的任务粒度（granularity）。Fork–join可以被视为是一种并行[设计模式](../Page/设计模式_\(计算机\).md "wikilink")\[1\]，它最早由[马尔文·康威](../Page/马尔文·康威.md "wikilink")公式化于1963年\[2\]\[3\]。

通过递归的嵌套fork–join计算，你可以获得并行版本的[分治范型](https://zh.wikipedia.org/wiki/分治算法 "wikilink")，表达为如下一般性[伪码](https://zh.wikipedia.org/wiki/伪码 "wikilink")\[4\]：

**`解决(问题)`**`:`
`    `**`if`**` 问题足够小:`
`        直接解决问题 (顺序算法)`
`    `**`else`**`:`
`        `**`for`**` 部份 `**`in`**` 细分(问题)`
`            `**`fork`**` 子任务来`**`解决(部份)`**
`        `**`join`**` 在前面的循环中生成的所有子任务`
`        `**`return`**` 合并的结果`

## 例子

简单的并行[归并排序](../Page/归并排序.md "wikilink")是一种fork–join算法\[5\]：

`mergesort(A, lo, hi):`
`    `**`if`**` lo < hi:                     // 至少有一个输入元素`
`        mid = ⌊lo + (hi - lo) / 2⌋`
`        `**`fork`**` mergesort(A, lo, mid)  // 分叉出子任务处理第一个递归调用，它(潜在的) 并行于主任务`
`        mergesort(A, mid, hi)       // 主任务处理第二个递归调用`
`        `**`join`**
`        merge(A, lo, mid, hi)`

第一个递归调用是“分叉出”的（forked off），这意味着它可以在单独的线程中的执行，从而并行于这个函数的后续部份，直到导致所有线程同步化。尽管看起来很像一个[屏障](https://zh.wikipedia.org/wiki/同步屏障 "wikilink")（barrier），但二者并不相同，因为各个线程在一个屏障之后将继续工作，而在之后只有一个线程继续工作。

在上述伪码中第二个递归调用不是分叉的；这是故意为之的，因为分叉任务是要付出代价的。如果把二个递归调用都设置为子任务，主任务在被阻塞在之前将没有任何额外的工作可以进行\[6\]。

## 实现

在fork–join模型的实现中，fork的典型的是[任务](../Page/任务并行.md "wikilink")、[纤程即轻量级线程](https://zh.wikipedia.org/wiki/纤程 "wikilink")，而非操作系统级别的“重量级”[线程](../Page/线程.md "wikilink")或[进程](https://zh.wikipedia.org/wiki/进程 "wikilink")，并使用[线程池](../Page/线程池.md "wikilink")来执行这些任务：fork原语（primitive）允许编程者指定“潜在的”并行，由实现机制接着把它们映射（map）到实际的并行执行之上\[7\]。这么设计的原因是建立新线程趋于导致很大的开销。

在fork–join编程中用到的轻量级线程，典型的有它们自己的调度器，调度器典型的采用[工作抢断策略](https://zh.wikipedia.org/wiki/工作抢断 "wikilink")，并将这些线程映射到底层的线程池。这种调度器比全特征的[抢占式操作系统调度器要简单的](https://zh.wikipedia.org/wiki/抢占式多任务处理 "wikilink"): 通用的线程[调度器必须处理针对](../Page/调度_\(计算机\).md "wikilink")[锁的阻塞](https://zh.wikipedia.org/wiki/锁_\(计算机科学\) "wikilink")，而在fork–join范型中，线程只阻塞在join点上\[8\]。

在[OpenMP](../Page/OpenMP.md "wikilink")框架中，Fork–join是主要的并行执行模型，尽管OpenMP实现可以支持也可以不支持并行段落的嵌套\[9\]。支持它的还有：框架\[10\]、微软.NET的\[11\]和Intel的（TBB）\[12\]。[Cilk](../Page/Cilk.md "wikilink")编程语言有对fork和join的语言级别支持，其形式为`spawn`和`sync`关键字\[13\]或[Cilk Plus中的](https://zh.wikipedia.org/wiki/Cilk_Plus "wikilink")`cilk_spawn`和`cilk_sync`\[14\]。

## 参见

  - [并行编程模型](../Page/并行编程模型.md "wikilink")

  - [Fork (系统调用)](../Page/Fork_\(系统调用\).md "wikilink")

  -
  - [工作抢断](https://zh.wikipedia.org/wiki/工作抢断 "wikilink")

## 引用

## 外部链接

  - [A Primer on Scheduling Fork–Join Parallelism with Work Stealing](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2014/n3872.pdf)

[Category:并行计算](https://zh.wikipedia.org/wiki/Category:并行计算 "wikilink")

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
12.
13.
14.