**SIP 中继链接** ()， 是一种基于[会话发起协议 Initiation Protocol,
SIP)](../Page/会话发起协议.md "wikilink")(Session\[1\]
的[IP电话](https://zh.wikipedia.org/wiki/IP电话 "wikilink") (VoIP)
和流媒体服务。 网络通讯服务提供商（Internet telephony service provider，ITSP）
通过它向配备基于SIP的[IP用户交换机](https://zh.wikipedia.org/wiki/IP-PBX "wikilink")
(IP-PBX)以及统一通信设备的客户提供通信以及统一通信（unified communications）服务。\[2\]
常见的这类软件应用主要提供语音、视频以及其他流媒体服务（比如桌面共享，网络会议以及共享黑板等）。

## 域的概念

根据SIP中继链接的构架将统一通信网络划分成两个部分：\[3\]

  - 个人域：借助电话设备和统一通信服务，为客户提供IP电话解决方案；
  - 公共域：具有向[公共交换电话网](../Page/公共交换电话网.md "wikilink") /
    [公共陆基移动网](../Page/公共陆基移动网.md "wikilink")提供全部VoIP服务接口的属性，并且负责向网络通讯服务提供商提供电话服务。

这两个域的互通需要通过SIP中继链接实现。

二者的通信通过[IP协议实现](https://zh.wikipedia.org/wiki/Internet_Protocol "wikilink")，其过程包括制定具体的通信规范以及支持SIP中继链接中定义的服务和协议。

在公共域内，网络通讯服务提供商对于下列行为具有完全的法律责任和义务：\[4\]

  - 流量跟踪；
  - 用户ID识别；
  - 实现合法拦截（lawful interception）机制。

相对而言，个人域天生是自由并不受法律的约束的，责任可能由通信服务提供商、终端用户（企业）或者涉及通信服务的第三方应用提供商承担。

## 网络构架

在每个域中，提供上述定义中所要求的功能的各组成部分逻辑上被分为两层：

  - 连接控制 (Class 5
    [软交换](https://zh.wikipedia.org/wiki/softswitch "wikilink"));
  - Network-border
    elements\[5\]\[6\]\[7\]，主要负责将公共域与个人域分离并实现所有的ITSP电话安全策略。

个人域由三层组成：

  - Corporate-Border Elements ：将公共域和个人域分隔开并实现适合公司的安全策略。
  - Central Corporate Switching Node;
  - [IP用户交换机](https://zh.wikipedia.org/wiki/IP-PBX "wikilink").

## 另见

  - SIP Trunking wikipedia in English.\[8\]
  - The SIP Trunking Community.\[9\]
  - [會談邊界控制器 border controller)](../Page/會談邊界控制器.md "wikilink")（Session
    (SBC)

## 参考文献

[Category:Web服务](https://zh.wikipedia.org/wiki/Category:Web服务 "wikilink")

1.  <http://www.ietf.org/rfc/rfc3261.txt>
2.
3.
4.
5.
6.
7.
8.
9.