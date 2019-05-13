**柏克萊封包過濾器**（Berkeley Packet Filter，縮寫
BPF），是[类Unix系统上](../Page/类Unix.md "wikilink")[数据链路层的一种原始接口](../Page/数据链路层.md "wikilink")，提供原始链路层[封包的收发](../Page/封包.md "wikilink")，除此之外，如果网卡驱动支持[洪泛模式](../Page/洪泛.md "wikilink")，那么它可以让网卡处于此种模式，这样可以收到[网络上的所有包](../Page/网络.md "wikilink")，不管他们的目的地是不是所在[主机](../Page/主机.md "wikilink")。

另外，BPF支持「过滤」封包，这样BPF会只把「感兴趣」的封包到上层软件，可以避免从[操作系统](../Page/操作系统.md "wikilink")[内核向用户态复制其他封包](../Page/内核.md "wikilink")，降低抓包的[CPU的负担以及所需的](../Page/CPU.md "wikilink")[缓冲区空间](../Page/缓冲区.md "wikilink")，从而减少丢包率。BPF的过滤功能是以BPF[虚拟机](../Page/虚拟机.md "wikilink")[机器语言的](../Page/机器语言.md "wikilink")[解释器的形式实现的](../Page/解释器.md "wikilink")，这种语言的程序可以抓取封包数据，对封包中的数据采取算术操作，并将结果与常量或封包中的数据或结果中的测试位比较，根据比较的结果决定接受还是拒绝封包。在一些平台上，包括[FreeBSD和WinPcap](../Page/FreeBSD.md "wikilink")，[即时编译技术用于把虚拟机指令转换为原始码](../Page/JIT.md "wikilink")，以进一步减少开销。

在其他操作系统上，此虚拟机语言的内核态解释器也被用于原始数据链路机制，例如[Tru64
Unix系统](../Page/Tru64_Unix.md "wikilink")，以及[Linux中的](../Page/Linux.md "wikilink")[套接字解释器](../Page/套接字.md "wikilink")，和[WinPcap封包抓取机制](../Page/WinPcap.md "wikilink")。

用户态解释器由[pcap](../Page/pcap.md "wikilink")
[API的libpcap](../Page/API.md "wikilink")/WinPcap实现提供，因此，在对此过滤机制没有内核态支持的系统上抓取封包时，封包可以在内核态过滤，使用pcap
API的代码可以工作于此两种模式；在使用用户态过滤的系统上，所有分包由内核态复制到用户态，包括将被过滤出去的封包。这种解释器也可以用于包含由pcap抓取的封包的文件。

BPF有时也只表示过滤机制，而不是整个接口。

BSD 内核实现例程如 `bpf_mtap()`和 `bpf_tap()`，以`BPF_MTAP()`和
`BPF_TAP()`等[宏定义的形式进行包裹由网卡驱动](../Page/宏定义.md "wikilink")(以及伪驱动pseudo-drivers)
向BPF机制发送进出的封包。

2007年，与Christian
Peron为[FreeBSD操作系统中BPF的实现加入了zero](../Page/FreeBSD.md "wikilink")-copy
buffer
extension，使得驱动程序中断处理器中的内核封包抓取能直接向用户内存写，以避免BPF设备收到的所有封包数据的两次复制需要，一份副本存在于用户进程的接收路径中，这保证了不同BPF设备调用者的独立性，同时使得只把封包头部放入BPF缓冲区，而不是复制整个封包数据。

## 外部链接

  - [讲述BPF的一份1993年的USENIX论文](http://www.tcpdump.org/papers/bpf-usenix93.pdf)
    (PDF)
  - [FreeBSD开发者大会上讲述BPF中Zero-copy的材料](http://www.watson.org/~robert/freebsd/2007asiabsdcon/20070309-devsummit-zerocopybpf.pdf)
    (PDF)
  - [FreeBSD 8.x BPF(4)手册,包含 zero-copy
    BPF缓冲区的描述](http://www.FreeBSD.org/cgi/man.cgi?query=bpf&apropos=0&sektion=0&manpath=FreeBSD+8-current&format=html)

[Category:网络软件](https://zh.wikipedia.org/wiki/Category:网络软件 "wikilink")
[Category:封包](https://zh.wikipedia.org/wiki/Category:封包 "wikilink")