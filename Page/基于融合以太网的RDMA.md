**基于融合以太网的RDMA**（，缩写**RoCE**）是一个网络协议，允许在一个[以太网](../Page/以太网.md "wikilink")网络上使用[远程直接内存访问](../Page/远程直接内存访问.md "wikilink")（RDMA）。RoCE有RoCE v1和RoCE v2两个版本。RoCE v1是一个以太网协议，因此允许同一个以太网[广播域中的任意两台主机间进行通信](https://zh.wikipedia.org/wiki/广播域 "wikilink")。RoCE v2是一个[网络层](../Page/网络层.md "wikilink")协议，因而RoCE v2数据包可以被路由。虽然RoCE协议受益于的特征，但该协议也可用于传统或非融合的以太网网络。\[1\]\[2\]\[3\]\[4\]

## 背景

网络密集型应用程序（如网络存储或群集计算）需要具有高带宽且低[延迟的网络基础架构](../Page/延迟_\(工程学\).md "wikilink")。RDMA相比其他网络[应用程序接口](../Page/应用程序接口.md "wikilink")（诸如[Berkeley套接字](../Page/Berkeley套接字.md "wikilink")）的优势是更低的延迟、更低的CPU占用，以及更高的带宽。\[5\]RoCE协议有着比其前身协议更低的延迟。\[6\]现有的RoCE HCA（主机通道适配器）的延迟低至1.3微秒\[7\]\[8\]，而在2011年已知的最低的iWARP HCA的延迟为3微秒。\[9\] [缩略图](https://zh.wikipedia.org/wiki/File:RoCE_Header_format.png "fig:缩略图")

## RoCE v1

RoCE v1协议是一个以太网链路层协议，Ethertype为0x8915。它要符合以太网协议的帧长度限制：常规[以太网帧为](../Page/以太网帧格式.md "wikilink")1500字节，[巨型帧](../Page/巨型帧.md "wikilink")为9000字节。

## RoCE v2

RoCEv2协议构筑于UDP/IPv4或UDP/IPv6协议之上。UDP目标端口号4791已保留给RoCE v2。\[10\]因为RoCEv2数据包是可路由的，所以RoCE v2协议有时被称为Routable RoCE\[11\]或RRoCE。虽然一般不保证UDP数据包的传达顺序，但RoCEv2规范要求，有相同UDP源端口及目标地址的数据包不得改变顺序。除此之外，RoCEv2定义了一种拥塞控制机制，使用IP ECN位用于标记，CNP\[12\]帧用于送达通知。\[13\]软件对RoCE v2的支持在不断涌现。Mellanox OFED 2.3或更高版本支持RoCE v2，Linux内核v4.5也提供支持。\[14\]

## RoCE与InfiniBand相比

RoCE定义了如何在[以太网](../Page/以太网.md "wikilink")上执行RDMA，[InfiniBand](../Page/InfiniBand.md "wikilink")架构规范则定义了如何在一个[InfiniBand](../Page/InfiniBand.md "wikilink")网络上执行RDMA。RoCE预期为将主要面向群集的InfiniBand应用程序带入到一个寻常的以太网融合结构。\[15\]认为，InfiniBand将会继续提供比以太网更高的带宽以及更低的延迟。\[16\]

RoCE与InfiniBand协议之间的技术差异：

  - 链路级流量控制：InfiniBand使用一个积分算法来保证无损的HCA到HCA通信。RoCE运行在以太网之上，其实现可能需要“无损以太网”以达到类似于InfiniBand的性能特征，无损以太网一般通过[以太网流量控制或优先流量控制](../Page/IEEE_802.3x.md "wikilink")（PFC）配置。配置一个（DCB）以太网网络可能比配置InfiniBand网络更为复杂。\[17\]
  - 拥塞控制：Infiniband定义了基于FECN/BECN标记的拥塞控制，RoCEv2则定义了一个拥塞控制协议，它使用ECN标记在标准交换机中的实现，以及CNP帧用于送达确认。
  - 可用的InfiniBand交换机始终有比以太网交换机更低的延迟。一台特定类型以太网交换机的端口至端口延迟为230纳秒\[18\]，而有相同端口数量的一台InfiniBand交换机为100纳秒\[19\]。

## RoCE与iWARP相比

相比RoCE协议定义了如何使用以太网和UDP/IP帧执行RDMA，iWARP协议定义了如何基于一个面向连接的传输（如[传输控制协议](../Page/传输控制协议.md "wikilink")，TCP）执行RDMA。RoCE v1受限于单个[广播域](https://zh.wikipedia.org/wiki/广播域 "wikilink")，RoCE v2和iWARP封包则可以路由。在大规模数据中心和大规模应用程序（即大型企业、云计算、Web 2.0应用程序等\[20\]）中使用iWARP时，大量连接的内存需求，以及TCP的流量和可靠性控制，将会导致可扩展性和性能问题。此外，RoCE规范中定义了多播，而当前的iWARP规范中没有定义如何执行多播RDMA。\[21\]\[22\]\[23\]

iWARP中的可靠性由协议本身提供，因为TCP/IP为可靠传输。相比而言，RoCEv2采用UDP/IP，这使它有更小的开销和更好的性能，但不提供固有的可靠性，因此可靠性必须搭配RoCEv2实现。其中一种解决方案是，使用融合以太网交换机使局域网变得可靠。这需要局域网内的所有交换机支持融合以太网，并防止RoCEv2数据包通过诸如互联网等不可靠的广域网传输。另一种解决方案是增加RoCE协议的可靠性（即可靠的RoCE），向RoCE添加握手，通过牺牲性能为代价提供可靠性。

两种协议哪种更好的问题取决于供应商。英特尔和Chelsio建议并独家支持iWARP。Mellanox、Xilinx以及Broadcom推荐并独家支持RoCE/RoCEv2。思科同时支持RoCE\[24\]与自家的VIC RDMA协议。网络行业中的其他供应商则同时提供两种协议的支持，这些供应商如[Marvell](https://zh.wikipedia.org/wiki/Marvell "wikilink")、[微软](../Page/微软.md "wikilink")、[Linux](../Page/Linux.md "wikilink")和Kazan。\[25\]

两种协议都经过了标准化，iWARP是[IETF定义的基于以太网的RDMA](../Page/互联网工程任务组.md "wikilink")，RoCE是定义的基于以太网的RDMA  \[26\]

## 供应商

支持RoCE的设备的主要供应商包括：

  -
  - （已被[博通 (公司)收购](../Page/博通_\(公司\).md "wikilink")）

  - [博通](../Page/博通_\(公司\).md "wikilink")（Broadcom）

  - （已被[Cavium收购](../Page/凱為半導體.md "wikilink")）

  - [凱為半導體](../Page/凱為半導體.md "wikilink")（Cavium）

  - [华为](../Page/华为.md "wikilink")

## 参考文献

[Category:CS1_maint:_Multiple_names:_authors_list](https://zh.wikipedia.org/wiki/Category:CS1_maint:_Multiple_names:_authors_list "wikilink") [Category:乙太網路](https://zh.wikipedia.org/wiki/Category:乙太網路 "wikilink") [Category:操作系统技术](https://zh.wikipedia.org/wiki/Category:操作系统技术 "wikilink") [Category:并行计算](https://zh.wikipedia.org/wiki/Category:并行计算 "wikilink")

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
15.
16.
17.
18.
19.
20.
21.
22.
23.
24. <https://www.cisco.com/c/dam/en/us/products/collateral/switches/nexus-9000-series-switches/white-paper-c11-741091.pdf>
25.
26. CS1 maint: Multiple names: authors list (\[//en.wikipedia.org/wiki/Category:CS1_maint:_Multiple_names:_authors_list link\])