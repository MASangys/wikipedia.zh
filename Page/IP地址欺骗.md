[IP_spoofing_en.svg](https://zh.wikipedia.org/wiki/File:IP_spoofing_en.svg "fig:IP_spoofing_en.svg") 在[-{zh-cn:计算机网络; zh-tw:電腦網路;}-里面](../Page/计算机网络.md "wikilink")，**IP地址欺骗**或**IP欺骗**是指带有假的源[IP地址](../Page/IP地址.md "wikilink")的[IP协议](../Page/网际协议.md "wikilink")[分组](https://zh.wikipedia.org/wiki/分组 "wikilink")（数据报），目的是冒充另一个计算系统身份。\[1\] 使发送方可以保持匿名的一种技术是使用[代理服务器](../Page/代理服务器.md "wikilink")。

## 背景

通过互联网网络和许多其他-{zh-cn:计算机网络; zh-tw:電腦網路;}-发送-{zh-cn:数据; zh-tw:資料;}-的基本协议是[IP协议](../Page/网际协议.md "wikilink")。该协议规定，每个IP数据报必须有一个包括-{zh-cn:数据包; zh-tw:封包;}-发送者IP地址的[报头](https://zh.wikipedia.org/wiki/信头 "wikilink")。源IP地址通常是数据报发送的地址，但报头中的发送者地址可以被改变，这样对收件人看来，该数据报来自另一个源。

该协议要求接收计算机发回对源地址的响应，因此，欺骗主要用在当发送方期望网络响应或不关心响应的情况。

源IP地址仅提供有关发件人的有限信息。 它可以在发送数据包时提供有关地区，城市和城镇的一般信息。 它不提供有关发件人或正在使用的计算机的身份的信息。

## 应用

IP地址欺骗涉及使用一个受信任的IP地址,被网络入侵者用于突破网络安全措施，如基于IP地址的[身份验证](https://zh.wikipedia.org/wiki/身份验证 "wikilink")。这种类型的攻击在存在信任关系的机器之间最为有效。例如，在一些企业网络中，内部系统相互信任是很常见的，这样用户就可以在没有用户名或密码的情况下登录，因为它们已经链接了内部网络上的另一台机器（因此必须已经登录）。通过欺骗来自可信机器的连接，同一网络上的攻击者可以不经身份验证访问目标机器。

IP地址欺骗最常用在[拒绝服务攻击](https://zh.wikipedia.org/wiki/拒绝服务攻击 "wikilink")，其目的是使目标接受压倒性的流量以过载，攻击者不关心接收到攻击数据报的响应。伪造IP地址的数据报过滤更困难，因为每个伪造数据报是来自一个不同的地址，他们隐藏攻击的真正来源。使用欺骗方法的拒绝服务攻击通常是随机选择整个IP地址空间的任意地址，但更复杂的欺骗机制可以避免选择到不可路由的地址或IP地址空间的未使用部分。大型[僵尸网络的增殖使欺骗手段在拒绝服务攻击中并不重要](https://zh.wikipedia.org/wiki/僵尸网络 "wikilink")，但攻击者通常可以选择欺骗可以作为工具，如果他们使用它，依赖的攻击包中的源IP地址的合法性来防御拒绝服务攻击会遇上很大麻烦。[后向散射是一种用于观察拒绝服务攻击活动的技术](https://zh.wikipedia.org/wiki/后向散射 "wikilink")，依赖于攻击者使用IP欺骗的有效性。

## 合法用途

使用具有错误源IP地址的数据包并不总是用于恶意企图。例如，在网站性能测试，成百上千的“用户”（虚拟用户）可能被创建，每个都在执行测试网站的测试脚本，以模拟当系统上线和大量用户立刻登录时会发生什么事。

由于每个用户都会有自己的IP地址，商业测试产品（如、[WebLOAD](../Page/WebLOAD.md "wikilink")等）可以使用IP欺骗，同样允许每个用户自己的“返回地址”。

## 易受IP欺骗的服务

易受IP欺骗的配置和服务：

  - RPC（[远程过程调用服务](https://zh.wikipedia.org/wiki/远程过程调用 "wikilink")）
  - 使用IP地址认证的任何服务
  - [X Window系统](https://zh.wikipedia.org/wiki/X窗口系统 "wikilink")
  - “R”服务套件（、[remote shell（rsh）等](../Page/远程外壳.md "wikilink")）

## 欺骗攻击防御手段

[-{zh-cn:数据报过滤; zh-tw:防火牆;}-是一种防御IP欺骗攻击的手段](../Page/防火墙.md "wikilink")。对网络的网关通常执行，用内网的源地址来阻止外网的数据包。这可以防止外部攻击者欺骗内部机器的地址。理想情况下，网关也将对传出的数据包执行，用外网的源地址阻止内网数据包。这样可以防止网络内的攻击者对来自外部机器进行IP欺骗攻击并进行过滤。 另外建议设计网络协议和服务，使他们不依赖于源IP地址进行身份验证。

### 上层

一些[上层协议提供了自己的防御IP欺骗攻击](https://zh.wikipedia.org/wiki/封裝_\(網路\) "wikilink")。例如，[TCP协议](../Page/传输控制协议.md "wikilink")（TCP）使用与远程机器协商的序列号，以确保到达的数据报是已建立连接的一部分。由于攻击者通常不能看到任何响应数据报，必须猜测序列号以劫持连接。然而，在许多旧的操作系统和网络设备中可以预测TCP序列号。

## 其他定义

术语***IP地址欺骗***有时也用来指“报头伪造”，在[电子邮件](../Page/电子邮件.md "wikilink")或[Usenet](../Page/Usenet.md "wikilink")数据报头插入虚假或误导性信息。伪造的报头用于误导收件人或网络应用程序，以了解消息的来源。这是[濫發電子訊息和](https://zh.wikipedia.org/wiki/濫發電子訊息 "wikilink")的一种常见的技术，某些人想掩盖他们的消息来源来避免被追查。

## 参见

  -
  -
  - [网络地址转换](../Page/网络地址转换.md "wikilink")

  - [逆向转发](../Page/逆向转发.md "wikilink")

  - RFC 1948，Defending Against Sequence Number Attacks，May 1996

  - [路由器](../Page/路由器.md "wikilink")（包括制造商名单）

  -
  - [MAC欺骗](../Page/MAC欺骗.md "wikilink")

## 参考书目

## 外部链接

  - [ANA Spoofer Project: State of IP Spoofing and Client Test](http://spoofer.csail.mit.edu/summary.php)

[Category:互联网安全](https://zh.wikipedia.org/wiki/Category:互联网安全 "wikilink") [Category:欺瞒](https://zh.wikipedia.org/wiki/Category:欺瞒 "wikilink") [Category:IP地址](https://zh.wikipedia.org/wiki/Category:IP地址 "wikilink") [Category:Types_of_cyberattacks](https://zh.wikipedia.org/wiki/Category:Types_of_cyberattacks "wikilink")

1.