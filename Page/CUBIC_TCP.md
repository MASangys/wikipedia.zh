**CUBIC**是一个为具有高带宽和高延迟的[长胖网络](https://zh.wikipedia.org/wiki/长胖网络 "wikilink")（LFN）优化的[TCP](../Page/传输控制协议.md "wikilink")[拥塞控制实现](../Page/拥塞控制.md "wikilink")。\[1\]

它相比更加平缓和具有数学上的意义，其中的窗口大小是一个自上次拥塞事件以来的时间的[三次函数](https://zh.wikipedia.org/wiki/三次函数 "wikilink")，[拐点被设置为拥塞事件发生时的窗口大小](../Page/拐点.md "wikilink")。因为它是一个三次函数，所以它有两个阶段进行窗口增加。第一部分是一个[凹函数](../Page/凹函数.md "wikilink")，将窗口大小快速提升至最后拥塞事件发生时的大小。第二个部分为一个[凸函数](../Page/凸函数.md "wikilink")，CUBIC探针以较缓和的速度寻求更大的带宽。CUBIC会在凹凸增长区域花费大量时间，以允许网络在CUBIC开始寻求更多带宽前达到稳定。

CUBIC与标准的TCP流的另一个主要区别是，它不依赖于ACK的接收来增加窗口大小，CUBIC的窗口大小只依赖于最后的拥塞事件。在标准的TCP中，极短的[RTT将更快的收到ACK](https://zh.wikipedia.org/wiki/來回通訊延遲 "wikilink")，它们的拥塞窗口将比其他较长RTT的流更快增长。CUBIC使数据流之间更加公平，因为窗口的增长与RTT（往返时延）无关。

CUBIC TCP在[Linux内核](../Page/Linux.md "wikilink")2.6.19及更高版本中被实现并默认使用。

## 参见

  -
  - [传输控制协议（TCP） -
    发展过程](https://zh.wikipedia.org/wiki/传输控制协议#發展過程 "wikilink")

  - [SCTP](../Page/流控制传输协议.md "wikilink")

  -
## 参考资料

## 外部链接

  - [BIC & CUBIC Home Page at NC State
    University](https://archive.is/20121212100254/http://research.csc.ncsu.edu/netsrv/?q=content/bic-and-cubic).
  - [网络拥塞控制(九)
    CUBIC](http://www.cnblogs.com/fll/archive/2009/11/29/1613201.html)

[Category:TCP拥塞控制](https://zh.wikipedia.org/wiki/Category:TCP拥塞控制 "wikilink")

1.  [1](http://www4.ncsu.edu/~rhee/export/bitcp/cubic-paper.pdf) S. Ha,
    I. Rhee, & L. Xu, "CUBIC: A New TCP-Friendly High-Speed TCP
    Variant", PDF copy of journal article