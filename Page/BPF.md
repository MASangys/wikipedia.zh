**伯克利包过滤器**（Berkeley Packet Filter，缩写 BPF），是[类Unix系统上](https://zh.wikipedia.org/wiki/类Unix "wikilink")[数据链路层](../Page/数据链路层.md "wikilink")的一种原始接口，提供原始链路层[封包的收发](https://zh.wikipedia.org/wiki/封包 "wikilink")。除此之外，如果网卡驱动支持[混杂模式](https://zh.wikipedia.org/wiki/混杂模式 "wikilink")，那么它可以让网卡处于此种模式，这样可以收到[网络上的所有包](https://zh.wikipedia.org/wiki/网络 "wikilink")，不管他们的目的地是不是所在[主机](https://zh.wikipedia.org/wiki/主机 "wikilink")。

另外，BPF支持过滤数据包——用户态的进程可以提供一个过滤程序来声明它想收到哪些数据包。通过这种过滤可以避免从[操作系统](../Page/操作系统.md "wikilink")[内核](../Page/内核.md "wikilink")向用户态复制其他对用户态程序无用的数据包，从而极大地提高性能。

BPF有时也只表示过滤机制，而不是整个接口。一些系统，比如[Linux](../Page/Linux.md "wikilink")和Tru64 Unix，提供了数据链路层的原始接口，而不是BPF的接口，但使用了BPF的过滤机制。

BSD 内核实现例程如 `bpf_mtap()`和 `bpf_tap()`，以`BPF_MTAP()`和 `BPF_TAP()`等[宏定义的形式进行包裹由网卡驱动](https://zh.wikipedia.org/wiki/宏定义 "wikilink")(以及伪驱动pseudo-drivers) 向BPF机制发送进出的封包。

## 历史

原始的论文由Steven McCanne 和 Van Jacobson于1992年在[劳伦斯伯克利国家实验室](../Page/劳伦斯伯克利国家实验室.md "wikilink")工作时编写，于1993年在San Diego举办的USENIX冬季会议上正式发表。

## 背景

许多版本的Unix操作系统提供了用于捕获数据包的设施，使得监控当前网络情况成为了可能。但是，因为网络监控程序运行在用户态，数据包必须被拷贝来通过内核与用户态之间的边界。可以通过使用一种被称为“数据包过滤器”的内核代理来减少拷贝的数量，它会尽量早地丢弃不想要的数据包。早先的数据包过滤器被实现为基于栈的虚拟机，在RISC CPU上性能不佳。BPF使用了一种新的基于寄存器的虚拟机，在性能上有显著提升。\[1\]

## 过滤

BPF的过滤功能是以对于BPF[虚拟机](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")[机器语言](../Page/机器语言.md "wikilink")的一种[解释器的形式实现的](https://zh.wikipedia.org/wiki/解释器 "wikilink")，使用这种语言编写的程序可以抓取数据包，对数据包中的数据采取算术操作，并将结果与常量或数据包中的数据或结果中的测试位比较，根据比较的结果决定接受还是拒绝封包。

传统的Unix BPF实现能够被用于用户态，尽管它是为内核态编写。这是通过编译时的条件预处理完成的。

## 优化

一些项目使用了不同以往的BPF指令集或者执行方法。

包括[FreeBSD](../Page/FreeBSD.md "wikilink")和WinPcap在内的一些平台，使用[即时编译](https://zh.wikipedia.org/wiki/JIT "wikilink")（JIT）编译器来把BPF指令转换为原始字节码，以进一步提高性能。Linux有一个BPF JIT编译器，但被默认禁用。

此虚拟机语言的内核态解释器则被用于其他操作系统的原始数据链路机制，例如[Tru64 Unix系统](https://zh.wikipedia.org/wiki/Tru64_Unix "wikilink")，以及[Linux](../Page/Linux.md "wikilink")内核中的[套接字过滤器](https://zh.wikipedia.org/wiki/套接字 "wikilink")，和[WinPcap数据包抓取机制](https://zh.wikipedia.org/wiki/WinPcap "wikilink")。

用户态解释器由实现了[pcap](https://zh.wikipedia.org/wiki/pcap "wikilink") [API的libpcap](https://zh.wikipedia.org/wiki/API "wikilink")/WinPcap提供，因此，在对此过滤机制没有内核态支持的系统上抓取数据包时，数据包可以在内核态过滤，使用pcap API的代码可以工作于此两种模式；在使用用户态过滤的系统上，所有数据包由内核态复制到用户态，包括将被过滤出去的封包。这种解释器也可以用于包含由pcap抓取的封包的文件。

2007年，与Christian Peron为[FreeBSD](../Page/FreeBSD.md "wikilink")操作系统中BPF的实现加入了zero-copy buffer extension，使得驱动程序中断处理器中的内核封包抓取能直接向用户内存写，以避免BPF设备收到的所有封包数据的两次复制需要，一份副本存在于用户进程的接收路径中，这保证了不同BPF设备调用者的独立性，同时使得只把封包头部放入BPF缓冲区，而不是复制整个封包数据。

Will Drewry为seccomp（安全计算）系统调用策略添加了BPF过滤器，这也是BPF第一次在网络领域之外的使用。\[2\]

## eBPF

从3.18版本开始，Linux 内核提供了一种扩展的BPF虚拟机，被称为“extended BPF“，简称为eBPF。它能够被用于非网络相关的功能，比如附在不同的tracepoints上，从而获取当前内核运行的许多信息。\[3\]

传统的BPF，现在被称为“classical BPF”。

eBPF由Alexei Starovoitov在PluMgrid工作时设计，这家公司专注于研究新的方法来设计[软件定义网络解决方案](../Page/軟體定義網路.md "wikilink")。在它只是一个提议时，Daniel Borkmann——Red Hat公司的内核工程师，帮助修改使得它能够进入内核代码并完全替代已有的BPF实现。这是二十年来BPF首次主要的更新，使得BPF成为了一个通用的虚拟机。\[4\]

eBPF被Linux内核合并的事件线如下\[5\]：

  - 2014年3月。eBPF补丁被合并到Linux内核。
  - 2014年6月。JIT组件被合并到内核3.15版本。
  - 2014年12月。bpf系统调用被合并到内核3.18版本。
  - 在后来的Linux 4.x系列版本中又添加了对于kprobes、uprobes、tracepoints以及perf_events的支持。

因为eBPF虚拟机使用的是类似于汇编语言的指令，对于程序编写来说直接使用难度非常大。和将C语言生成汇编语言类似，现在的编译器正在逐步完善从更高级的语言生成BPF虚拟机使用的指令。LLVM在3.7版本开始支持BPF作为后端输出。\[6\]GCC 10也将会支持BPF作为后端。\[7\]\[8\]BCC是IOVisor项目下的编译器工具集，用于创建内核跟踪（tracing）工具。\[9\]bpftrace是为eBPF设计的高级跟踪语言，在Linux内核（4.x）中提供。\[10\]

eBPF现在被应用于网络、跟踪、内核优化、硬件建模等领域。\[11\]

## 安全

[Spectre攻击可以利用Linux内核的eBPF](../Page/幽灵漏洞.md "wikilink") JIT编译器来从其它内核进程提取信息。\[12\]

## 参考文献

<references />

## 外部链接

  - [The BSD Packet Filter: A New Architecture for User-level Packet Capture](http://www.tcpdump.org/papers/bpf-usenix93.pdf) (PDF)
  - [FreeBSD开发者大会上讲述BPF中Zero-copy的材料](http://www.watson.org/~robert/freebsd/2007asiabsdcon/20070309-devsummit-zerocopybpf.pdf) (PDF)
  - [FreeBSD 8.x BPF(4)手册,包含 zero-copy BPF缓冲区的描述](http://www.FreeBSD.org/cgi/man.cgi?query=bpf&apropos=0&sektion=0&manpath=FreeBSD+8-current&format=html)
  - [BPF阅读清单](https://qmonnet.github.io/whirl-offload/2016/09/01/dive-into-bpf/)

[Category:网络软件](https://zh.wikipedia.org/wiki/Category:网络软件 "wikilink") [Category:封包](https://zh.wikipedia.org/wiki/Category:封包 "wikilink")

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