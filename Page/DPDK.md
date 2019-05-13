**DPDK**（Data Plane Development
Kit），是一组快速處理[数据包的开发平台及接口](../Page/数据包.md "wikilink")。\[1\]\[2\]
，运行于[Intel
X86平台上](../Page/x86.md "wikilink")（最新版本也开始支持[PowerPC](../Page/PowerPC.md "wikilink")\[3\]）。该平台采用[BSD许可证发布](../Page/BSD许可证.md "wikilink")。

## 概述

在[X86结构中](../Page/X86.md "wikilink")，处理数据包的传统方式是[CPU中断方式](../Page/中央处理器.md "wikilink")，即网卡驱动接收到数据包后通过中断通知CPU处理，然后由CPU拷贝数据并交给协议栈。在数据量大时，这种方式会产生大量CPU中断，导致CPU无法运行其他程序。

而DPDK则采用[轮询方式实现数据包处理过程](../Page/輪詢.md "wikilink")：DPDK重载了网卡驱动，该驱动在收到数据包后不中断通知CPU，而是将数据包通过[零拷贝技术存入](../Page/零拷贝.md "wikilink")[内存](../Page/内存.md "wikilink")，这时应用层程序就可以通过DPDK提供的接口，直接从内存读取数据包。

这种处理方式节省了CPU中断时间、内存拷贝时间，并向应用层提供了简单易行且高效的数据包处理方式，使得网络应用的开发更加方便。但同时，由于需要重载网卡驱动，因此该开发包目前只能用在部分采用[Intel网络处理芯片的](../Page/英特尔.md "wikilink")[网卡中](../Page/网卡.md "wikilink")。

## 参考资料

<references />

## 外部链接

  - [DPDK发布页](http://www.dpdk.org)

[Category:自由路由軟體](https://zh.wikipedia.org/wiki/Category:自由路由軟體 "wikilink")
[Category:網路結構](https://zh.wikipedia.org/wiki/Category:網路結構 "wikilink")
[Category:虛擬化軟體](https://zh.wikipedia.org/wiki/Category:虛擬化軟體 "wikilink")
[Category:乙太網路](https://zh.wikipedia.org/wiki/Category:乙太網路 "wikilink")
[Category:Linux基金会项目](https://zh.wikipedia.org/wiki/Category:Linux基金会项目 "wikilink")

1.  Simon Stanley,[All Change for Packet
    Processing](http://www.heavyreading.com/commchip/document.asp?doc_id=228565),
    Heavy Reading, 2013
2.  Shamus McGillicudy, [Intel DPDK, switch and server ref designs push
    SDN ecosystem
    forward](http://searchsdn.techtarget.com/news/2240182264/Intel-DPDK-switch-and-server-ref-designs-push-SDN-ecosystem-forward),
    SearchSDN, April 2013
3.  <http://dev.dpdk.narkive.com/717EdZ0r/dpdk-dev-dpdk-announce-dpdk-1-8-0-released>