**runit**是一种类Unix操作系统的init方案，可在整个操作系统运行时初始化、[监视及终止进程](https://zh.wikipedia.org/wiki/进程监视 "wikilink")。runit是可在Linux、Mac OS X、\*BSD和Solaris操作系统上运行的、有“开创性”的[daemontools的](https://zh.wikipedia.org/wiki/daemontools "wikilink")“再实现”。\[1\]runit可并行启动系统服务，这样可以加快操作系统的启动。\[2\]

如[System V init](https://zh.wikipedia.org/wiki/init "wikilink")，runit是所有其他进程直接或间接的[父进程](../Page/子进程.md "wikilink")。它是在[启动过程中第一个运行的进程](https://zh.wikipedia.org/wiki/引导程序 "wikilink")，并继续运行直至系统关闭。

## 设计

runit致力于成为一个小型、模块化、[可移植的代码库](https://zh.wikipedia.org/wiki/移植_\(软件\) "wikilink")。runit分为三个阶段：一次性的初始化，进程监视，及停止或重新启动。除了第一和第三阶段必须适应所运行的特定操作系统外，第二阶段在所有[POSIX兼容的操作系统都可方便移植](https://zh.wikipedia.org/wiki/POSIX "wikilink")。\[3\]

## 参考

## 外部链接

  - [runit](http://smarden.org/runit/)

[Category:Unix进程和任务管理相关软件](https://zh.wikipedia.org/wiki/Category:Unix进程和任务管理相关软件 "wikilink")

1.
2.
3.