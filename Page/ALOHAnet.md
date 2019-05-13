**ALOHA网络**（，或），也称为**ALOHA系统**（），是由美国[夏威夷大学所开发的实验性](../Page/夏威夷大学.md "wikilink")[电脑网络系统](../Page/电脑网络.md "wikilink")。在1971年6月开始成功运作，是世界上第一个无线资料网络。

## 歷史

1968年，在夏威夷大学，由[诺曼·艾布拉姆森与其同事领导开发ALOHAnet](../Page/诺曼·艾布拉姆森.md "wikilink")。于1971年成功建立。

ALOHAnet使用新的介质访问技术，称为ALOHA随机存取（ALOHA random
access）。因为在1970年代，美国尚未批准供电脑网路通讯用的无线电频带，所以最初ALOHAnet是以
UHF
频段来运作。在此之外，ALOHAnet还可以使用以有线宽频为基础的[以太网](../Page/以太网.md "wikilink")，以及梅莉莎（Marisat）卫星网路（现称为Inmarsat）来通讯。

在1980年代初期，移动电话网络兴起。1985年后，[Wifi网络也开始建立](../Page/Wifi.md "wikilink")，ALOHA随机存取技术也能够通过这两种介质来通讯。

在1980年代，ALOHA频段只能够使用 1G
移动电话的频段来进行有限的控制与信号传输。1990年代，[马帝·马柯能与芬兰电信](../Page/马帝·马柯能.md "wikilink")（Telecom
Finland）的工程师，为了在 2G
行动电路中发展[短信功能](../Page/短信.md "wikilink")，大幅度扩展了ALOHA频段。

## ALOHA协议

**ALOHA协议**处于[OSI模型中的](../Page/OSI模型.md "wikilink")[数据链路层](../Page/数据链路层.md "wikilink")。它属于[随机存取协议](../Page/随机存取协议.md "wikilink")（Random
Access Protocol）中的一种。它分为纯ALOHA协议和分段ALOHA协议。

## 纯ALOHA协议（Pure ALOHA）

[Pure_ALOHA1.svg](https://zh.wikipedia.org/wiki/File:Pure_ALOHA1.svg "fig:Pure_ALOHA1.svg")

  - 当传输点有数据需要传送的时候，它会立即向通讯频道传送。
  - 接收点在收到数据后，会ACK传输点。
  - 如果接收的数据有错误，接收点会向传输点发送NACK。
  - 当网络上的两个传输点同时向频道传输数据的时候，会发生冲突，这种情况下，两个点各自等待一段随机长度的时间后，再次尝试传送。

因为有太多的传输冲突，对纯ALOHA协议进行了改进。

## 分段ALOHA(Slotted ALOHA)

[Slotted_ALOHA.svg](https://zh.wikipedia.org/wiki/File:Slotted_ALOHA.svg "fig:Slotted_ALOHA.svg")
这是对纯ALOHA协议的一个改进。改进之处在于，它把频道在时间上分段，每个传输点只能在一个分段的开始处进行传送。每次传送的数据必须少于或者等于一个频道的一个时间分段。这样大大的减少了传输频道的冲突。

## 计算

### 通过量

如果假设传输点对频道的使用是符合[泊松分布的话](../Page/泊松分布.md "wikilink")，我们可以得以下公式：

纯ALOHA协议：

\(S=Ge^{-2G}\)

分段ALOHA协议：

\(S=Ge^{-G}\)

S是通过量，G是提供的流量（每单位时间通过的数据包数量）.

从这个公式我们可以看出，对纯ALOHA来说，当G = 0.5 的时候，S 达到最大值 18.4%.
只有当\(G\le0.5\)的时候，纯ALOHA系统才处于稳定状态。对分段ALOHA来说，当G = 1
的时候，S 达到最大值 36.79%.只有当\(G\le1\)的时候，分段ALOHA系统才处于稳定状态。

### 平均数据包延迟

纯ALOHA协议：

\(\bar{D} = e^{2G} + ( e^{2G} - 1 )\bar{B}\)

分段ALOHA协议：

\(\bar{D} = 0.5 + e^{G} + ( e^{G} - 1 )\bar{B}\)

\(\bar{D}\)是平均数据包延迟。它是频道接通延迟和数据包传输时间之和（不包括系统排队等待延迟）.\(\bar{B}\)是平均回退延时。它取决于统计函数的选择。当它为0的时候，\(\bar{D}\)达到最小值。0.5是等待到时间段开始点的平均等待时间。

## 应用

在实际应用当中，分段ALOHA协议主要应用在手机网络通信中。而纯ALOHA协议因为其较高的频道冲突很少被使用。但是ALOHA的仍然是很多新的无线通信标准比如[Wi-Fi的理论基础](../Page/Wi-Fi.md "wikilink")。

[Category:网络技术](https://zh.wikipedia.org/wiki/Category:网络技术 "wikilink")
[Category:计算机技术](https://zh.wikipedia.org/wiki/Category:计算机技术 "wikilink")
[Category:介质访问控制](https://zh.wikipedia.org/wiki/Category:介质访问控制 "wikilink")