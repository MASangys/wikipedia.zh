在许多类 [Unix](https://zh.wikipedia.org/wiki/Unix "wikilink") 计算机系统中，
**procfs** 是 [进程](https://zh.wikipedia.org/wiki/进程 "wikilink")
[文件系统](../Page/文件系统.md "wikilink") (file system)
的缩写，包含一个伪文件系统（启动时动态生成的文件系统），用于通过[内核访问进程信息](../Page/内核.md "wikilink")。这个文件系统通常被挂载到
`/proc` [目录](../Page/目录_\(文件系统\).md "wikilink")。由于 `/proc`
不是一个真正的文件系统，它也就不占用存储空间，只是占用有限的内存。

以下操作系统支持 procfs :

  - [Solaris](../Page/Solaris.md "wikilink")
  - [BSD](https://zh.wikipedia.org/wiki/Berkeley_Software_Distribution "wikilink")
  - [Linux](../Page/Linux.md "wikilink")（将此概念扩展到了非进程相关数据）
  - [IBM AIX](../Page/IBM_AIX.md "wikilink") （其实现基于Linux以提高兼容性）
  - [QNX](../Page/QNX.md "wikilink")
  - [貝爾實驗室九號計畫](../Page/貝爾實驗室九號計畫.md "wikilink")（此概念之源头）

## 历史

### UNIX 8th Edition

[Tom J.
Killian](https://zh.wikipedia.org/wiki/Tom_J._Killian "wikilink") 实现了
[UNIX 8th
Edition](https://zh.wikipedia.org/wiki/Version_8_Unix "wikilink") 版本的
`/proc`：他1984年6月向 [USENIX](../Page/USENIX.md "wikilink") 提交了一份题为
"Processes as Files" 的论文。procfs 的设计目标是用来替代进行进程跟踪的
*[ptrace](https://zh.wikipedia.org/wiki/ptrace "wikilink")* 系统调用。
详细文档请参考 [proc(4) manual
page](http://man.cat-v.org/unix_8th/4/proc)。

### SVR4

[Roger
Faulkner](https://zh.wikipedia.org/wiki/Roger_Faulkner "wikilink") 和
[Ron Gomes](https://zh.wikipedia.org/wiki/Ron_Gomes "wikilink") 将 V8 的
`/proc` 移植到了
[SVR4](https://zh.wikipedia.org/wiki/System_V_Release_4 "wikilink")，并在1991年1月的
[USENIX](../Page/USENIX.md "wikilink") 上发表了一篇题为 "The Process File System
and Process Model in UNIX System V" 的论文。此类 procfs 支持
[`ps`](https://zh.wikipedia.org/wiki/ps_\(Unix\) "wikilink")
的创建，但是文件只能由如下函数访问： `read()`, `write()`,
[`ioctl`](https://zh.wikipedia.org/wiki/ioctl "wikilink")`()`.

### 九號計畫

[九號計畫](../Page/貝爾實驗室九號計畫.md "wikilink") 实现了一个进程文件系统，但比 V8 做得更多。V8
的进程文件系统中，对一个进程相关的所有函数都在一个文件进行操作。九號計畫使用单独的文件，提供这些函数，使得／proc
成为文件系统真正的一部分。

### 4.4BSD

[4.4BSD](https://zh.wikipedia.org/wiki/4.4BSD "wikilink") 基于九號計畫 克隆得到了其
`/proc` 系统。注意，在 FreeBSD 中 procfs 已被放弃\[1\]。默认安装的 base 系统不依赖
procfs，FreeBSD 原生 ports 也不再依赖 procfs。

### Solaris

Solaris 2.6 的 `/proc`（完成于 1996）也克隆了九號計畫.

### Linux

[Linux中的](../Page/Linux.md "wikilink") `/proc`实现也克隆了
[九號計畫](../Page/貝爾實驗室九號計畫.md "wikilink") 中对应的部分。

每个正在运行的进程对应于`/proc`下的一个目录，目录名就是进程的PID，每个目录包含:

  - , 启动该进程的命令行.

  - ,
    当前[工作目录的](https://zh.wikipedia.org/wiki/工作目录 "wikilink")[符号链接](../Page/符号链接.md "wikilink").

  - 影响进程的环境变量的名字和值.

  - , 最初的[可执行文件的符号链接](https://zh.wikipedia.org/wiki/可执行文件 "wikilink"),
    如果它还存在的话。

  - , 一个目录，包含每个打开的[文件描述符的符号链接](../Page/文件描述符.md "wikilink").

  - , 一个目录，包含每个打开的[文件描述符的位置和标记](../Page/文件描述符.md "wikilink")

  - , 一个文本文件包含文件与块的信息。

  - , 一个二进制图像(image)表示进程的[虚拟内存](../Page/虚拟内存.md "wikilink"), 只能通过化进程访问.

  - ,
    该进程所能看到的根路径的符号链接。如果没有[chroot监狱](https://zh.wikipedia.org/wiki/chroot "wikilink")，那么进程的根路径是/.

  - 包含了进程的基本信息，包括运行状态、内存使用。

  - , 一个目录包含了到该进程启动的任何任务

(用户可以获得[PID使用工具如](../Page/进程ID.md "wikilink")[pgrep](https://zh.wikipedia.org/wiki/pgrep "wikilink"),
[pidof或](https://zh.wikipedia.org/wiki/pidof "wikilink")[ps](https://zh.wikipedia.org/wiki/ps_\(Unix\) "wikilink"):

``` console
$ ls -l /proc/$(pgrep -n python)/fd        # List all file descriptors of the most recently started `python' process
samtala 0
lrwx------ 1 baldur baldur 64 2011-03-18 12:31 0 -> /dev/pts/3
lrwx------ 1 baldur baldur 64 2011-03-18 12:31 1 -> /dev/pts/3
lrwx------ 1 baldur baldur 64 2011-03-18 12:31 2 -> /dev/pts/3
$ readlink /proc/$(pgrep -n python)/exe    # List executable used to launch the most recently started `python' process
/usr/bin/python3.1
```

)

[Linux](https://zh.wikipedia.org/wiki/Linux_kernel "wikilink") 2.6把
`/proc` 下大量的非進程相關的系统信息移動到一個专门的偽文件系統，稱為
[sysfs](https://zh.wikipedia.org/wiki/sysfs "wikilink")（該文件系統是掛載到 `/sys`
上面）:

  - 电源管理系统（如果有的话）对应的目录或

  - , 信息关于用于处理内存碎片。\[2\]

  - , 包含对应于计算机上各种总线的目录,
    如input/[PCI](https://zh.wikipedia.org/wiki/PCI "wikilink")/[USB](../Page/USB.md "wikilink").
    在/sys/bus下包含更丰富的信息。

  - , 可利用的帧缓冲的列表

  - , 传递给内核的启动选项。

  - , 包含[CPU信息](https://zh.wikipedia.org/wiki/CPU "wikilink"),
    诸如厂商（vendor），型号 (family, model，model names), 速度, 缓存大小,
    逻辑核数 , 物理核数, [CPU
    flags](https://zh.wikipedia.org/wiki/CPU_flags "wikilink")，以及[BogoMips](../Page/BogoMips.md "wikilink").对于多核CPU，/proc/cpuinfo的逻辑核数"siblings"与物理核数"cpu
    cores"分别表示:\[3\]

<!-- end list -->

    "siblings" = (HT per CPU package) * (# of cores per CPU package)
    "cpu cores" = (# of cores per CPU package)

CPU
package是指单独封装的一颗CPU。这可以区分[超线程与双核](https://zh.wikipedia.org/wiki/超线程 "wikilink")，例如每颗CPU超线程数量为*siblings
/ CPU cores*. 如果二者的值相等，则CPU不支持超线程.\[4\]

  - , 可利用的加密模块列表

  - , 字符设备与块设备列表，按照设备ID排序，但给出了名字的主要部分

  - , 给出了每一块逻辑磁盘设备的一些信息

  - , 当前时刻内核支持的文件系统的列表

  - , , , , 设备的一些与中断、内存访问有关的信息

  - , 内核输出的一些信息 <ref>

</ref>

  - , 包含内核管理内存的一些汇总信息

  - , 是最重要的文件之一, 包含了当前载入的内核模块列表

  - , 包含了当前安装设备及安装点的符号链接

  - ,
    一个目录包含了当前网络栈的信息，特别是列出了存在的网络连接(对跟踪路由特别有用，因为[iptables转发被用于重定向网络连接](https://zh.wikipedia.org/wiki/iptables "wikilink"))

  - , 一个设备号、尺寸与名的列表，内核用于辨别已存在的[硬盘分区](../Page/硬盘分区.md "wikilink")

  - ,
    给出任何通过[SCSI或](https://zh.wikipedia.org/wiki/SCSI "wikilink")[RAID控制器挂接的设备的信息](../Page/RAID.md "wikilink")

  - (即其中[进程ID是当前进程的](../Page/进程ID.md "wikilink")) 为当前进程的符号链接

  - , Linux内核频繁使用的对象的统计信息

  - , 活动交换分区的信息，如尺寸、优先级等。

  - ，动态可配置的内核选项. 其下的目录对应与内核区域，包含了可读与可写的虚拟文件（virtual file）.

  - , 包括共享内存与[进程间通信](https://zh.wikipedia.org/wiki/进程间通信 "wikilink")
    (IPC)信息

  - , 包含当前终端信息;
    是可利用的[tty类型列表](https://zh.wikipedia.org/wiki/终端 "wikilink")，其中的每一个是该类型的可用设备列表。

  - , 内核启动后经过的秒数与idle模式的秒数

  - , 包含Linux内核版本，发布号（distribution number）,
    编译内核的[gcc版本](https://zh.wikipedia.org/wiki/gcc "wikilink")，其他相关的版本

  - 其他文件依赖于不同的硬件，模块配置与内核改变

Linux下使用 `/proc` 的基本工具是
[procps](https://zh.wikipedia.org/wiki/procps "wikilink") (`/proc`
processes) 中的程序，這個程序只對 procfs 具有意義。procfs
對部分功能從[核心態移到](https://zh.wikipedia.org/wiki/核心態 "wikilink")[用戶態的過程中產生重大的意義](https://zh.wikipedia.org/wiki/用戶態 "wikilink")。像是
GNU 版本的 ps 只需在[用戶態底下運作透過](https://zh.wikipedia.org/wiki/用戶態 "wikilink")
procfs 取得資料便可以完成所有的工作。

相关命令：

  - sysctl
  - lsdev 收集相关设备的DMA, IRQ, I/O端口信息并汇总显示
  - procinfo

### Cobalt

## /proc/cpuinfo

## /proc/meminfo

## 外部链接

  - [A MacFUSE-Based Process File System for Mac OS
    X](http://osxbook.com/book/bonus/chapter11/procfs/)
  - [Access the Linux kernel using the
    Procfs](http://www.ibm.com/developerworks/library/l-proc.html) An
    IBM developerWorks article by M. Tim Jones
  - [Linux-Filesystem-Hierarchy](http://tldp.org/LDP/Linux-Filesystem-Hierarchy/html/proc.html)
    Linux Documentation Project

## 参考

  - [Red Hat, Inc. *Tips & Tricks Featured Article: /proc/meminfo
    Explained*, March
    2003.](http://www.redhat.com/advice/tips/meminfo.html)

[Category:Unix](https://zh.wikipedia.org/wiki/Category:Unix "wikilink")
[Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink")
[Category:文件系统](https://zh.wikipedia.org/wiki/Category:文件系统 "wikilink")
[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")

1.  [procfs：已是过去式但仍未被遗忘](http://www.freebsd.org/doc/zh_CN.GB2312/articles/linux-users/procfs.html)

2.
3.
4.