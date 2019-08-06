[Linux_kernel_unified_hierarchy_cgroups_and_systemd.svg](https://zh.wikipedia.org/wiki/File:Linux_kernel_unified_hierarchy_cgroups_and_systemd.svg "fig:Linux_kernel_unified_hierarchy_cgroups_and_systemd.svg").\]\] **cgroups**，其名稱源自**控制群組**（control groups）的簡寫，是[Linux内核](../Page/Linux内核.md "wikilink")的一个功能，用来限制、控制與分離一个[行程群組的](https://zh.wikipedia.org/wiki/行程群組 "wikilink")[资源](https://zh.wikipedia.org/wiki/資源_\(計算機科學\) "wikilink")（如CPU、内存、磁盘输入输出等）。

這個專案最早是由[Google](../Page/Google.md "wikilink")的工程師（主要是Paul Menage和Rohit Seth）在2006年發起，最早的名稱為**进程容器**（process containers）\[1\]。在2007年時，因為在[Linux內核中](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")，容器（container）這個名詞有許多不同的意義，為避免混亂，被重新命名為cgroup，並且被合併到2.6.24版的内核中去\[2\]。自那以后，又添加了很多功能。

## 功能

cgroups的一个设计目标是为不同的应用情况提供统一的接口，从控制单一进程（像[nice](https://zh.wikipedia.org/wiki/nice "wikilink")）到[作業系統層虛擬化](../Page/作業系統層虛擬化.md "wikilink")（像[OpenVZ](../Page/OpenVZ.md "wikilink")，[Linux-VServer](https://zh.wikipedia.org/wiki/Linux-VServer "wikilink")，[LXC](../Page/LXC.md "wikilink")）。cgroups提供：

  - **资源限制：**组可以被设置不超过设定的[内存限制](https://zh.wikipedia.org/wiki/内存 "wikilink")；这也包括[虚拟内存](../Page/虚拟内存.md "wikilink")。\[3\] \[4\]
  - **优先级：**一些组可能会得到大量的CPU\[5\] 或磁盘IO吞吐量。\[6\]
  - **结算：**用来衡量系统确实把多少资源用到适合的目的上。\[7\]
  - **控制：**冻结组或检查点和重启动。\[8\]

## 参见

  - [Linux Containers](https://zh.wikipedia.org/wiki/Linux_Containers "wikilink") （LXC）
  - [systemd](https://zh.wikipedia.org/wiki/systemd "wikilink")

## 引用

## 外部連結

  - [Linux kernel documentation on cgroups](https://web.archive.org/web/20120618145303/http://www.kernel.org/doc/Documentation/cgroups/)

[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink") [Category:操作系统技术](https://zh.wikipedia.org/wiki/Category:操作系统技术 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.