**TCP拥塞控制**是[传输控制协议](../Page/传输控制协议.md "wikilink")（，縮寫TCP）避免网络拥塞的算法，是[互联网上主要的一个](../Page/互联网.md "wikilink")[拥塞控制措施](../Page/拥塞控制.md "wikilink")。它使用一套基于的多样化网络拥塞控制方法（包括慢启动和拥塞窗口等模式）来控制拥塞。\[1\]\[2\]\[3\]\[4\]\[5\]在互联网上应用中有相当多的具体实现算法。

## 运作方法

TCP使用多种拥塞控制策略来避免雪崩式拥塞。TCP会为每条连接维护一个“[拥塞窗口](https://zh.wikipedia.org/wiki/#拥塞窗口 "wikilink")”来限制可能在端对端
间传输的未确认分组总数量。这类似TCP流量控制机制中使用的滑动窗口。TCP在一个连接初始化或超时后使用一种“慢启动”机制来增加拥塞窗口的大小。\[6\]它的起始值一般为[最大分段大小](../Page/最大分段大小.md "wikilink")（Maximum
segment
size，MSS）的两倍，虽然名为“慢启动”，初始值也相当低，但其增长极快：当每个分段得到确认时，拥塞窗口会增加一个MSS，使得在每次[往返时间](https://zh.wikipedia.org/wiki/來回通訊延遲 "wikilink")（round-trip
time，RTT）内拥塞窗口能高效地双倍增长。

当拥塞窗口超过慢启动阈值（ssthresh）时，算法就会进入一个名为“拥塞避免”的阶段。在拥塞避免阶段，只要未收到重复确认，拥塞窗口则在每次往返时间内线性增加一个MSS大小。

## 拥塞窗口

在TCP中，**拥塞窗口**（congestion
window）是任何时刻内确定能被发送出去的字节数的控制因素之一，是阻止发送方至接收方之间的链路变得拥塞的手段。他是由发送方维护，通过估计链路的拥塞程度计算出来的，与由接收方维护的接收窗口大小并不冲突。

当一条连接建立后，每个主机独立维护一个拥塞窗口并设置值为连接所能承受的MSS的最小倍数，之后的变化依靠线增积减机制来控制，这意味如果所有分段到达接收方和确认包准时地回到发送方，拥塞窗口会增加一定数量。该窗口会保持指数增大，直到发生超时或者超过一个称为“慢启动阈值（ssthresh）”的限值。如果发送方到达这个阈值时，每收到一个新确认包，拥塞窗口只按照线性速度增加自身值的倒数。

当发生超时的时候，慢启动阈值降为超时前拥塞窗口的一半大小、拥塞窗口会降为1个MSS，并且重新回到慢启动阶段。

系统管理员可以设置窗口最大限值，或者调整拥塞窗口的增加量，来对。

在流量控制中，接收方通过TCP的“窗口”值（Window
Size）来告知发送方，由发送方通过对拥塞窗口和接收窗口的大小比较，来确定任何时刻内需要传输的数据量。

## 慢启动

**慢启动**（Slow-start）是用于结合其他阶段算法，来避免发送过多数据到网络中而导致网络拥塞，算法在中定义。

慢启动初始启动时设置拥塞窗口值（cwnd）为1、2、4或10个MSS。\[7\]\[8\]拥塞窗口在每接收到一个确认包时增加，每个RTT内成倍增加，当然实际上并不完全是指数增长，因为接收方会延迟发送确认，通常是每接收两个分段则发送一次确认包。\[9\]发送速率随着慢启动的进行而增加，直到遇到出现丢失、达到慢启动阈值（ssthresh）、或者接收方的接收窗口进行限制。如果发生丢失，则TCP推断网络出现了拥塞，会试图采取措施来降低网络负载。这些是靠具体使用的TCP拥塞算法来进行测量判断。当达到慢启动阈值（ssthresh）时，慢启动算法就会转换为线性增长的阶段，算法控制每个RTT内拥塞窗口只增加1个分段量。虽然称为“慢启动”，但实际上比拥塞控制阶段的窗口增加更为激进。\[10\]

对于处理报文丢失这个事件上，不同拥塞控制算法表现有所不同：

:;TCP Tahoe

  -

      -
        对于TCP
        Tahoe算法，当发生丢失时，会进入“快速重传”机制，慢启动阈值设为之前拥塞窗口值的一半，拥塞窗口值降为初始值，重新进入慢启动阶段。当拥塞窗口值达到慢启动阈值时，每RTT内拥塞窗口增加值则为“MSS除以CWND”的值，所以拥塞窗口按线性速度增加。

:;TCP Reno

  -

      -
        TCP
        Reno算法实现了一个名为“快速恢复”的机制，慢启动阈值设为之前拥塞窗口值的一半，和作为新的拥塞窗口值，并跳过慢启动阶段，直接进入拥塞控制阶段。

慢启动假设分段的未确认是由于网络拥塞造成的，虽然大部分网络的确如此，但也有其他原因，例如一些链路质量差的网络，会导致分段包丢失。在一些网络环境，例如无线网络，慢启动效率并不好。

慢启动对于一些短暂的连接性能并不好，一些较旧的网页浏览器会建立大量连续的短暂链接，通过快速开启和关闭链接来请求获得文件，这使得大多数链接处于慢启动模式，导致网页响应时间差。所以现在新的网页浏览器，会通过向特殊的服务器，开启一条链接来请求获得全部的文件，而避免频繁新建大量短暂链接。不过这样对一些非请求网站所提供的服务，例如广告跟踪脚本、社交分享功能脚本、网络分析脚本等，并不适用。\[11\]

## 和式增加，积式减少

（additive-increase/multiplicative-decrease，AIMD，这里简称“线增积减”）是一种反馈控制算法，其包含了对拥塞窗口线性增加，和当发生拥塞时对窗口积式减少。多个使用AIMD控制的TCP流最终会收敛到对线路的等量竞争使用。\[12\]

## 快速重传

**快速重传**（Fast
retransmit）是对TCP发送方降低等待重发丢失分段用时的一种改进。TCP发送方在每发送一个分段时会启动一个超时计时器，如果相应的分段确认没在特定时间内被送回，发送方就假设这个分段在网络上丢失了，需要重发。这也是TCP用来估计RTT的测量方法。

重复确认（duplicate cumulative
acknowledgements，DupAcks）就是这个阶段的基础，其基于以下过程：如果接收方接收到一个数据分段，就会将该分段的序列号加上数据字节长的值，作为分段确认的确认号，发送回发送方，表示期望发送方发送下一个序列号的分段。但是如果接收方提前收到更下一个序列号的分段——或者说接收到无序到达的分段，即之前期望确认号对应的分段出现接收丢失——接收方需要立即使用之前的确认号发送分段确认。此时如果发送方收到接收方相同确认号的分段确认超过1次，并且该对应序列号的分段超时计时器仍没超时的话，则这就是出现重复确认，需要进入快速重传。

快送重传就是基于以下机制：如果假设重复阈值为3，当发送方收到4次相同确认号的分段确认（第1次收到确认期望序列号，加3次重复的期望序列号确认）时，则可以认为继续发送更高序列号的分段将会被接受方丢弃，而且会无法有序送达。发送方应该忽略超时计时器的等待重发，立即重发重复分段确认中确认号对应序列号的分段。

## 具体实现算法

“TCP+算法名称”这一TCP算法命名方式最早出在凯文·福尔（Kevin Fall）和莎莉·弗洛伊德（Sally
Floyd）在1996年发布的一篇论文中。\[13\]

### TCP Tahoe 和 Reno

这两个算法是根据其第一次加入到[4.3BSD的时间回溯命名的](../Page/BSD.md "wikilink")，两个名字对应自其第一次出现时BSD的代号，而代号分别取自[太浩湖](../Page/太浩湖.md "wikilink")（Lake
Tahoe）和其附近的城市[雷諾市](../Page/雷諾_\(內華達州\).md "wikilink")。“Tahoe”算法实现在4.3BSD-Tahoe中第一次加入，之后在4.3BSD网络发布第一版实现了脱AT\&T授权版本，使其能更容易被广泛再发布与实现。改进版“Reno”在4.3BSD-Reno中实现，并之后通过“4.3BSD网络发布第二版”和4.4BSD-Lite发布。

两者算法大致一致，对于丢包事件判断都是以重传超时（retransmission
timeout，RTO）和重复确认为条件，但是对于重复确认的处理，两者有所不同：

  - Tahoe：如果收到三次重复确认——即第四次收到相同确认号的分段确认，并且分段对应包无负载分段和无改变接收窗口——的话，Tahoe算法则进入快速重传，将慢启动阈值改为当前拥塞窗口的一半，将拥塞窗口降为1个MSS，并重新进入慢启动阶段。{{\#tag:ref|Kurose
    & Ross 2008\[14\], p. 284.|name=kurose}}
  - Reno：如果收到三次重复确认，Reno算法则进入快速重传，只将拥塞窗口减半来跳过慢启动阶段，将慢启动阈值设为当前新的拥塞窗口值，进入一个称为“快速恢复”的新设计阶段。

对于RTO，两个算法都是将拥塞窗口降为1个MSS，然后进入慢启动阶段。\[15\]

#### 快速恢复

**快速恢复**（Fast
recovery）是Reno算法新引入的一个阶段，在将丢失的分段重传后，启动一个超时定时器，并等待该丢失分段包的分段确认后，再进入拥塞控制阶段。如果仍然超时，则回到慢启动阶段。

### TCP Vegas

至1990年代中期，TCP量度延迟和RTT都是以传输缓存中最后一个被传送的分段包为准。[亚利桑那大学的研究人员拉里](../Page/亚利桑那大学.md "wikilink")·彼得森和提出了新的TCP拥塞算法“TCP
Vegas”，\[16\]\[17\]其实通过度量传输缓存中每个传送分段包来代替只量度一个分段包，通过每次度量的平均值来增加拥塞窗口。\[18\]该算法取名自[内华达州最大的城市](../Page/内华达州.md "wikilink")[拉斯维加斯](../Page/拉斯维加斯.md "wikilink")。不过由于一些资源公平性原因，该算法并没有在彼得森的实验室之外广泛部署。一些研究认为该算法和其他拥塞算法混合使用，可能会导致性能竞争不及其他算法。\[19\]\[20\]\[21\]\[22\]在各种TCP拥塞算法的比较研究中，Vegas被认为是最平滑的控制算法，其次为CUBIC。\[23\]

[DD-WRT在v](../Page/DD-WRT.md "wikilink")24
SP2开始将该算法作为其默认的TCP拥塞控制算法。\[24\]

### TCP New Reno

TCP New Reno是对TCP Reno中快速恢复阶段的重传进行改善的一种改进算法，其定义于，覆盖了原有在和的旧定义。

在Reno的快速恢复中，一旦出现3次重复确认，TCP发送方会重发重复确认对应序列号的分段并设置定时器等待该重发分段包的分段确认包，当该分段确认包收到后，就立即退出快速恢复阶段，进入拥塞控制阶段，但如果某个导致重复确认的分段包到遇到重复确认期间所发送的分段包存在多个丢失的话，则这些丢失只能等待超时重发，并且导致拥塞窗口多次进入拥塞控制阶段而多次下降。而New
Reno的快速恢复中，一旦出现3次重复确认，TCP发送方先记下3次重复确认时已发送但未确认的分段的最大序列号，然后重发重复确认对应序列号的分段包。如果只有该重复确认的分段丢失，则接收方接收该重发分段包后，会立即返回最大序列号的分段确认包，从而完成重发；但如果重复确认期间的发送包有多个丢失，接收方在接收该重发分段后，会返回非最大序列号的分段确认包，从而发送方继续保持重发这些丢失的分段，直到最大序列号的分段确认包的返回，才退出快速恢复阶段。\[25\]

New Reno在低错误率时运行效率和“选择确认”（Selective
ACKnowledgement，SACK）相当，在高错误率仍优于Reno。\[26\]

### TCP Hybla

TCP
Hybla旨在消除由于高延迟地面线路或者卫星无线链路下导致的RTT过长而对TCP链接的影响。它通过对拥塞窗口动态分析来修改，来减少对RTT的性能依赖。\[27\]

### TCP BIC 和 CUBIC

TCP BIC（Binary Increase Congestion
control）旨在优化高速高延迟网络（即根据所定义的“[长肥网络](../Page/带宽时延乘积.md "wikilink")”（long
fat
network，LFN）\[28\]）的拥塞控制，其拥塞窗口算法使用二分搜索算法尝试找到能长时间保持拥塞窗口最大值的值。\[29\][Linux内核在](../Page/Linux内核.md "wikilink")2.6.8至2.6.18使用该算法作为默认TCP拥塞算法。\[30\]

CUBIC则是比BIC更温和和系统化的分支版本，其使用三次函数代替二分算法作为其拥塞窗口算法，并且使用函数拐点作为拥塞窗口的设置值。\[31\]Linux内核在2.6.19后使用该算法作为默认TCP拥塞算法。\[32\]

### TCP Westwood和Westwood+

TCP Westwood改良自New
Reno，不同于以往其他拥塞控制算法使用丢失来测量，其通过对确认包测量来确定一个“合适的发送速度”，并以此调整拥塞窗口和慢启动阈值。其改良了慢启动阶段算法为“敏捷探测（Agile
Probing）”，和设计了一种持续探测拥塞窗口的方法来控制进入“敏捷探测”，使链接尽可能地使用更多的带宽。Westwood+使用更长的带宽估计间隔和优化的滤波器来修正Westwood对ACK压缩场景对带宽估计过高的问题。通过以上改良，TCP
Westwood系列算法在有线网络和无线网络的拥塞控制上取得平衡，尤其研究中针对于无线通信网络上。\[33\]\[34\]

### Compound TCP

复合TCP（Compound
TCP）是微软自己实现的TCP拥塞控制算法，通过同时维护两个拥塞窗口，来实现在长肥网络有较好的性能而又不损失公平性。该算法在[Windows
Vista和](../Page/Windows_Vista.md "wikilink")[Windows Server
2008开始广泛部署](../Page/Windows_Server_2008.md "wikilink")，\[35\]并通过补丁的方式回溯支持到[Windows
XP和](../Page/Windows_XP.md "wikilink")[Windows Server
2003](../Page/Windows_Server_2003.md "wikilink")。\[36\]在Linux上也有一个旧版本的移植实现。\[37\]

### TCP PRR

TCP PRR（TCP Proportional Rate Reduction
）\[38\]是旨在恢复期间提高发送数据的准确性。该算法确保恢复后的拥塞窗口大小尽可能接近慢启动阈值。在Google进行的测试中，能将平均延迟降低3\~10%，恢复的超时减少5%。\[39\]PRR算法之后作为Linux内核3.2版本的默认拥塞算法。\[40\]

### TCP BBR

TCP BBR（Bottleneck Bandwidth and Round-trip propagation
time）是由[Google设计](../Page/Google.md "wikilink")，于2016年发布的拥塞算法。以往大部分拥塞算法是基于丢包来作为降低传输速率的信号，而BBR则基于模型主动探测。该算法使用网络最近出站数据分组当时的最大带宽和往返时间来建立网络的显式模型。数据包传输的每个累积或选择性确认用于生成记录在数据包传输过程和确认返回期间的时间内所传送数据量的采样率。\[41\]该算法认为随着[网络接口控制器逐渐进入](../Page/网卡.md "wikilink")[千兆速度时](https://zh.wikipedia.org/wiki/千兆以太網 "wikilink")，分组丢失不应该被认为是识别拥塞的主要决定因素，所以基于模型的拥塞控制算法能有更高的吞吐量和更低的延迟，可以用BBR来替代其他流行的拥塞算法，例如CUBIC。Google在[YouTube上应用该算法](../Page/YouTube.md "wikilink")，将全球平均的YouTube[网络吞吐量提高了](https://zh.wikipedia.org/wiki/网络吞吐量 "wikilink")4%，在一些国家超过了14%。\[42\]

BBR之后移植入Linux内核4.9版本，\[43\]\[44\]并且对于[QUIC可用](https://zh.wikipedia.org/wiki/QUIC "wikilink")。

## 注脚

## 参考文献

## 外部链接

  -
  - [一些关于拥塞控制的论文](http://www.shivkumar.org/research/cong-papers.html)

  - [TCP Vegas的介绍主页](http://www.cs.arizona.edu/projects/protocols/)

  -
  - [TCP Congestion Handling and Congestion Avoidance
    Algorithms](http://www.tcpipguide.com/free/t_TCPCongestionHandlingandCongestionAvoidanceAlgorit-3.htm)
    The TCP/IP Guide

  - [TCP的NewReno快速重传和快速恢复算法](http://blog.chinaunix.net/uid-127037-id-2919543.html)

  - [TCP拥塞控制：Tahoe、Reno、NewReno与SACK算法概述与比较](http://www.docin.com/p-812428366.html)

[Category:TCP拥塞控制](https://zh.wikipedia.org/wiki/Category:TCP拥塞控制 "wikilink")
[Category:网络性能](https://zh.wikipedia.org/wiki/Category:网络性能 "wikilink")
[Category:计算机科学](https://zh.wikipedia.org/wiki/Category:计算机科学 "wikilink")
[Category:传输层协议](https://zh.wikipedia.org/wiki/Category:传输层协议 "wikilink")

1.  Van Jacobson, Michael J. Karels. [Congestion Avoidance and
    Control](http://citeseer.ist.psu.edu/484335.html)  (1988).
    *Proceedings of the Sigcomm '88 Symposium*, vol.18(4): pp.314–329.
    Stanford, CA. August 1988. This paper originated many of the
    congestion avoidance algorithms used in TCP/IP.

2.   – TCP Slow Start, Congestion Avoidance, Fast Retransmit, and Fast
    Recovery Algorithms

3.   – TCP Congestion Control

4.   – TCP Increasing TCP's Initial Window

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
16.  Computer Science Department at Princeton University
    |accessdate=2018-02-21 |work=www.cs.princeton.edu |language=en
    |deadurl=no
    |archiveurl=<https://web.archive.org/web/20180316191405/http://www.cs.princeton.edu/research/techreps/TR-616-00>
    |archivedate=2018-03-16 }}

17.

18.
19.

20.

21.

22.

23.

24.

25.

26.

27.

28.

29.
30.

31.  Networking Research Lab |accessdate=2017-09-02 |date=2012-12-12
    |archiveurl=<https://archive.is/20121212100254/http://research.csc.ncsu.edu/netsrv/?q=content/bic-and-cubic>
    |archivedate=2012-12-12}}

32.

33.

34.

35.

36.

37.

38.

39.

40.

41.

42.

43.

44.  The source for Linux information |language=en}}