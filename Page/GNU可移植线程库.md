**GNU Pth**（Portable Threads）是用于[UNIX](../Page/UNIX.md "wikilink")平台的基于[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")/[ANSI](https://zh.wikipedia.org/wiki/ANSI "wikilink")-[C的](https://zh.wikipedia.org/wiki/C语言 "wikilink")[用户空间](https://zh.wikipedia.org/wiki/用户空间 "wikilink")[线程](../Page/线程.md "wikilink")库\[1\]，它为[多线程应用提供基于优先级的调度](../Page/线程.md "wikilink")。GNU Pth以高度[可移植性为目标](https://zh.wikipedia.org/wiki/可移植性 "wikilink")。它是[GNU计划的一部分](https://zh.wikipedia.org/wiki/GNU计划 "wikilink")\[2\]。

Pth还提供模仿[POSIX线程](../Page/POSIX线程.md "wikilink")的[API用于后向兼容](../Page/应用程序接口.md "wikilink")。

GNU Pth使用到内核空间线程的N:1映射，就是说调度是完全由GNU Pth库进行的，内核自身不了解在用户空间内的N个线程。故而不可能利用到[SMP](https://zh.wikipedia.org/wiki/对称多处理 "wikilink")，因为那必须由内核派遣。

## 参见

  - [纤程](https://zh.wikipedia.org/wiki/纤程 "wikilink")
  - [UPthreads](http://upthread.sourceforge.net)

## 引用

## 外部链接

  -
  - [a collection of references to all known multithreading libraries for Unix operating systems.](https://www.gnu.org/software/pth/related.html)

[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink") [Category:C函式库](https://zh.wikipedia.org/wiki/Category:C函式库 "wikilink") [Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink") [Category:执行绪](https://zh.wikipedia.org/wiki/Category:执行绪 "wikilink")

1.  [Norm Matloff's GNU Pth Web Page](http://heather.cs.ucdavis.edu/~matloff/pth.html).
2.