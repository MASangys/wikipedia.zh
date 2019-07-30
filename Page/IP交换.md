**IP交换**（IP eXchange，简称：IPX）是一种[电信](../Page/电信.md "wikilink")[网间互联](../Page/互联互通.md "wikilink")（interconnection）模型，用于在各个独立的移动和固定运营商的客户之间，以及与其它类型的服务提供商（service provider，例如 [ISP](../Page/互联网服务供应商.md "wikilink")）的客户之间，通过基于 [IP](../Page/网际协议.md "wikilink") 的[网络到网络接口](../Page/网络到网络接口.md "wikilink")（Network-to-Network Interface，简称：NNI），来交换基于 [IP](../Page/网际协议.md "wikilink") 的数据流量。IPX 由 [GSMA](https://zh.wikipedia.org/wiki/GSMA "wikilink")（GSM 联盟）开发。 IPX 不打算替代[因特网或与其竞争](../Page/互联网.md "wikilink")，但是确实为服务提供商提供了一个替代选项。IPX 的目的是在一个商业架构下，在所有的服务提供商类型之间，为基于 [IP](../Page/网际协议.md "wikilink") 的服务提供可互操作性（interoperability），使得价值链中的所有的参与方都能获得一个商业回报。这些商业关系由[服务水平协议](https://zh.wikipedia.org/wiki/SLA "wikilink")（Service Level Agreement，简称：SLA）来支撑，它确保性能、质量和安全性。 对于最终用户来说，在“他们服务提供商是否使用了 IPX 模型”这一点上可能并不明显，但是服务提供商使用 IPX 模型所提供的灵活性而对服务进行差异化处理的能力，最终为终端用户提供了不同的选择余地。

## 背景

传统上，不同运营商之间的语音流量的[网间互联](../Page/互联互通.md "wikilink")，已经在使用国际上通用的 [SS7](../Page/七号信令系统.md "wikilink")/[TDM](https://zh.wikipedia.org/wiki/时分多路复用 "wikilink") 网络。然而，后来与 [VoIP](https://zh.wikipedia.org/wiki/网际协议通话技术 "wikilink") 一同出现的全 IP 示范（all-IP paradigm）正在迅速地被不同的运营商、以不同的形式而引入，例如 [IMS](../Page/IP多媒体子系统.md "wikilink")。为了最小化[分组交换](../Page/分组交换.md "wikilink")语音和[电路交换](../Page/电路交换.md "wikilink")语音之间的转换次数，就有了这样一个明确的需求，要求部署一个基于 [IP](../Page/网际协议.md "wikilink") 的 [NNI](../Page/网络到网络接口.md "wikilink")，也就是一个基于 [IP](../Page/网际协议.md "wikilink") 的网间互联网络（interconnection network）。 同时有一点非常明确，大量的基于 [IP](../Page/网际协议.md "wikilink") 的业务（例如[在线状态和](https://zh.wikipedia.org/wiki/在线状态 "wikilink")[即时通讯](https://zh.wikipedia.org/wiki/即时通讯 "wikilink")）无法使用一个 [SS7](../Page/七号信令系统.md "wikilink")/[TDM](https://zh.wikipedia.org/wiki/时分多路复用 "wikilink") 网络来实现[网间互联](../Page/互联互通.md "wikilink")，更进一步地增加了对于演进到一个基于 [IP](../Page/网际协议.md "wikilink") 的网间互联网络的需求。 从 2000 年起，[GSM](../Page/GSM.md "wikilink") 运营商已经开始使用 [GRX](../Page/GPRS漫游交换.md "wikilink")（GPRS 漫游交换）网络来在拜访和归属运营商之间对基于 [IP](../Page/网际协议.md "wikilink") 的商业漫游流量进行路由。大部分的 2.5G 和 [3G](../Page/3G.md "wikilink") 数据漫游都已经在使用 [GRX](../Page/GPRS漫游交换.md "wikilink") 了。[GRX](../Page/GPRS漫游交换.md "wikilink") 是一个私有的 [IP](../Page/网际协议.md "wikilink") 网络（独立于互联网），由通过对等点（peering points）相互连接的多个不同的 [GRX](../Page/GPRS漫游交换.md "wikilink") 运营商组成。然而，[GRX](../Page/GPRS漫游交换.md "wikilink") 仅限于 [GSM](../Page/GSM.md "wikilink") 运营商社区，并且并非所有的 [GRX](../Page/GPRS漫游交换.md "wikilink") 都能够满足实时业务的需求。 尽管 [GRX](../Page/GPRS漫游交换.md "wikilink") 环境并不完全适合做为一个用于[网间互联和](../Page/互联互通.md "wikilink")[漫游的公共](https://zh.wikipedia.org/wiki/漫游 "wikilink") [IP](../Page/网际协议.md "wikilink") 网络，它对于 IPX 的开发起了一个很好的头。从 2004 年开始，IPX 的开发已经在各种 [GSMA](https://zh.wikipedia.org/wiki/GSMA "wikilink") 的项目（projects）和工作组（working groups）中被完成。

## 对于一个私有骨干网的需求

基于 [IP](../Page/网际协议.md "wikilink") 的[网间互联可以利用](../Page/互联互通.md "wikilink")[因特网来进行处理](../Page/互联网.md "wikilink")，因为[因特网生来就支持](../Page/互联网.md "wikilink") [IP](../Page/网际协议.md "wikilink") 协议，并且提供所需的全球连通性（global connectivity）。但是当因为这个特定目的而使用[因特网时](../Page/互联网.md "wikilink")，存在一些问题。如 [GSMA](https://zh.wikipedia.org/wiki/GSMA "wikilink") 的 亚历克斯·辛克莱（Alex Sinclair）所说\[1\]：“开放的互联网是一个极好的的东西，但是当它开始要提供得到保证的业务时，尤其是时间要求非常严苛的业务时，还有很长的路要走”。 基本上运营商和其它服务提供商可以自由选择使用哪种[网间互联方式](../Page/互联互通.md "wikilink")。同时使用多个不同的方式也是可行的（尽管这会导致复杂度增加）。

## 架构

IPX 架构由不同的 IPX 提供商组成，这些提供商通过一个 IPX 对等点连接在一起，以便进行流量交换。按照 IPX 规范，信令（例如 [SIP](../Page/会话发起协议.md "wikilink")）和媒体数据（例如 [RTP](../Page/实时传输协议.md "wikilink")）都被端到端传输。如下展示了在一个固网到移动网的[网间互联场景中](../Page/互联互通.md "wikilink")，一个典型的流量传输的端到端路径： 移动电话 \<---UNI---\> 运营商 A \<---NNI---\> IPX 提供商 A \<---对等点 X---\> IPX 提供商 B \<---NNI---\> 运营商 B \<---UNI---\> 固定电话

X 是一个对等点（peering point），IPX 提供商 A 和 IPX 提供商 B 在这里交换数据流量

IPX 同时提供双边和多边的[网间互联](../Page/互联互通.md "wikilink")。双边是指传统的模式，也就是两个运营商在建立一个相互之间的连接之前，签订一个双边的[网间互联合同](../Page/互联互通.md "wikilink")。多边另一方面也就意味着 IPX 提供商在一定程度上，同时负责处理合同并代表运营商处理连通性的建立。与数十个甚至上百个其它运营商建立双边[网间互联合同和连接](../Page/互联互通.md "wikilink")，会是一个很重的负担。因此，允许运营商“通过与 IPX 提供商签订单个合同，并建立单个技术连接来打开多个连接”的多边方式，使得[网间互联的部署变得更容易和快速](../Page/互联互通.md "wikilink")。

## 关键特性

  - **开放** - 对于任何想要采纳必备的公共[IPX 技术和商业原则](https://web.archive.org/web/20080421223431/http://www.gsmworld.com/ipi/)并签约的固网运营商、移动网络运营商以及其它服务提供商都开放
  - **质量** - 通过使用网络中的技术特性的组合，以及能够确保所牵涉的所有参与方的之前的合同的执行的模式（端到端[SLA](https://zh.wikipedia.org/wiki/SLA "wikilink")），来提供对 [QoS](https://zh.wikipedia.org/wiki/QoS "wikilink") 的支持。
  - **级联支付** – IPX 中的级联责任是指，传输链中的每一方都对下一方的性能负责。因为所有的参与者都做出这个承诺，因此，对该服务的提供所涉及的财务收益是顺着这个价值链而级联的，使得所有的前设防都能够因为它们的参与而获得一个商业上的回报。
  - **高效连通性** - 连接到 IPX 的运营商可以选择一个多边[网间互联模式](../Page/互联互通.md "wikilink")，这种模式下，一个多边[网间互联合同可以开放多个](../Page/互联互通.md "wikilink")[网间互联合作伙伴](../Page/互联互通.md "wikilink")
  - **全 IP** - 生来就支持基于 [IP](../Page/网际协议.md "wikilink") 的协议（例如 [SIP](../Page/会话发起协议.md "wikilink")、[RTP](../Page/实时传输协议.md "wikilink")、[GTP](../Page/GPRS隧道协议.md "wikilink")、[SMTP](../Page/简单邮件传输协议.md "wikilink")、[SIGTRAN](https://zh.wikipedia.org/wiki/SIGTRAN "wikilink") 等）
  - **安全** - 不论是逻辑的还是物理的，都完全独立于公共的互联网。IPX 在互联网上无法寻址或可见。
  - **全球性** - 不局限于某一个特定的地理区域
  - **后向兼容** - IPX 规范符合现存的规范和建议。不需要为，例如，一个符合 [3GPP](../Page/3GPP.md "wikilink") 的 [IMS](../Page/IP多媒体子系统.md "wikilink") 核心网，去更新它的接口为一个符合 IPX 的[网络到网络接口](../Page/网络到网络接口.md "wikilink")（NNI）
  - **仅 NNI** - IPX 需求仅处理 [NNI](../Page/网络到网络接口.md "wikilink")。[用户到网络接口](https://zh.wikipedia.org/wiki/用户到网络接口 "wikilink")（User-to-Network Interface，简称：UNI）不在它的范围内。
  - **公共技术规范** 端到端地被使用
  - **网间互联和漫游** - IPX 同时覆盖[网间互联和](../Page/互联互通.md "wikilink")[漫游场景](https://zh.wikipedia.org/wiki/漫游 "wikilink")。
  - **竞争环境Competitive environment** - IPX 服务由很多个相互竞争的国际 [IP](../Page/网际协议.md "wikilink") 运营商来提供，它们通过一个专用的 IPX 对等点来相互连接。

## 现状

IPX 的原则已经由 [GSMA](https://zh.wikipedia.org/wiki/GSMA "wikilink") 成功网地测试和验证。在 2004 年以前， [GSMA](https://zh.wikipedia.org/wiki/GSMA "wikilink") [SIP](../Page/会话发起协议.md "wikilink") 实验局用多个基于 [IMS](../Page/IP多媒体子系统.md "wikilink") 的业务测试了基于 [IP](../Page/网际协议.md "wikilink") 的 [NNI](../Page/网络到网络接口.md "wikilink")。IPX 预商用实现实验局\[2\]从 2007 年 4 月开始运行，特别专注于分组交换语音业务。

2008 年的 [GSMA](https://zh.wikipedia.org/wiki/GSMA "wikilink") 通稿声明\[3\]，IPX 实验局完全成功。很多国际运营商都准备推出 IPX 业务，例如 IPX 语音（IPX Voice）、比利时电信国际运营商业务（Belgacom International Carrier Services）、英国电信（BT）、中信国际电讯（CITIC 1616）、德国电信（Deutsche Telekom ICSS）、iBasis、Reach、SAP 移动服务, Syniverse, 塔塔电信\[4\]等等。这些公司都面向固定和移动运营商和其它服务提供商类型做为 IPX 提供商。

[GSMA](https://zh.wikipedia.org/wiki/GSMA "wikilink") 公开地按需支持进一步的实验\[5\]。

## 参见

  - [网间互联](../Page/互联互通.md "wikilink")（Interconnection）
  - [漫游](https://zh.wikipedia.org/wiki/漫游 "wikilink")（Roaming）
  - [网络到网络接口](../Page/网络到网络接口.md "wikilink")（NNI）
  - [互联网分组交换协议](https://zh.wikipedia.org/wiki/互联网分组交换协议 "wikilink")（IPX）
  - [GPRS漫游交换](../Page/GPRS漫游交换.md "wikilink")（GRX）

## 引用出处

<references />

  - GSMA [IR.34](http://www.gsma.com/go/download/?file=ir3449.pdf) - 服务提供商间 IP 骨干网指导原则
  - GSMA [AA.80](https://web.archive.org/web/20091231100112/http://gsmworld.com/documents/aa80_3_0.pdf) - 用于 IP 分组交换业务的非绑定模板
  - GSMA [IR.77](https://web.archive.org/web/20091122135459/http://www.gsmworld.com/documents/ir77.pdf) - 运营商间 IP 骨干网安全需求
  - GSMA [IR.40](https://web.archive.org/web/20091231014051/http://gsmworld.com/documents/ir4040.pdf) - 用于 GRX/IPX 网络基础设施和用户终端的 IPv4 寻址和 AS 编号的指导原则
  - [Aicent IPX 白皮书](http://www.gsma.com/membership/wp-content/uploads/2012/10/aicent_ipx_wp_071712.pdf)

## 外部链接

  - [IPI and IPX Related Documents](https://web.archive.org/web/20090219005655/http://www.gsmworld.com/our-work/programmes-and-initiatives/ip-networking/ipi_documents.htm) - IPI and IPX 相关的文档，包括白皮书、宣传册，以及技术和商业规范

[Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink") [Category:网络架构](https://zh.wikipedia.org/wiki/Category:网络架构 "wikilink") [Category:網路管理](https://zh.wikipedia.org/wiki/Category:網路管理 "wikilink")

1.  [高质量的全球 IP 网络准备走向商用](http://www.gsmworld.com/newsroom/press-releases/2008/859.htm) ，2008 年 2 月 12 日
2.  [IPX 预商用实现](http://www.gsmworld.com/our-work/programmes-and-initiatives/ip-networking/ipx_pci_trials.htm)  项目信息
3.  [高质量全球 IP 网络准备走向商用](http://www.gsmworld.com/newsroom/press-releases/2008/859.htm)  通讯稿
4.  <http://www.tatacommunications.com/services/service-providers/connectivity/ipx-connect>
5.  [如何加入 IPX 预商用实现实验局](http://www.gsmworld.com/documents/IPX_PCI_Trials_Brief_v3.01.pdf)  文档