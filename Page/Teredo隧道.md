**Teredo**是一个[IPv6转换机制](../Page/IPv6转换机制.md "wikilink")，它可为运行在[IPv4](../Page/IPv4.md "wikilink")[互联网但没有](../Page/互联网.md "wikilink")[IPv6网络原生连接的支持IPv](../Page/IPv6.md "wikilink")6的主机提供完全的连通性。与其他的类似协议不同，它可以在[网络地址转换](../Page/网络地址转换.md "wikilink")（NAT）设备（例如家庭路由器）后完成功能。

Teredo使用[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[隧道协议提供](../Page/隧道协议.md "wikilink")[IPv6连通性](../Page/IPv6.md "wikilink")，将IPv6[資料包](https://zh.wikipedia.org/wiki/資料包 "wikilink")[封裝在IPv](https://zh.wikipedia.org/wiki/封裝_\(網路\) "wikilink")4[用户数据报协议](../Page/用户数据报协议.md "wikilink")（UDP）数据包内。Teredo路由器将这些数据报在[IPv4互联网上传输及通过NAT设备](../Page/IPv4.md "wikilink")。其他在IPv6网络上的Teredo节点（被称为Teredo中继，英文为**Teredo
relays**）接收数据包，解开它们的封装，以及传递它们。

Teredo是一种临时措施。在长远的未来，所有IPv6主机都应该使用原生的IPv6连接。Teredo应在原生IPv6连接可用时被停用。在[微软开发了Teredo](../Page/微软.md "wikilink")，并且[互联网工程任务组](../Page/互联网工程任务组.md "wikilink")（IETF）将其标准化为RFC
4380。Teredo服务器监听[UDP端口](../Page/用户数据报协议.md "wikilink")[3544](https://zh.wikipedia.org/wiki/TCP/UDP端口列表 "wikilink")。

## 目的

[6to4](../Page/6to4.md "wikilink")，最常用的IPv6通过IPv4的隧道协议，但它需要隧道端点有一个公网IPv4地址。然而，许多主机目前通过一个或多个NAT设备来连接IPv4互联网，原因之一是[IPv4位址枯竭](https://zh.wikipedia.org/wiki/IPv4位址枯竭 "wikilink")。在这种情况下，只有NAT设备有IPv4地址，6to4隧道端点必须在NAT设备上被实现。出于技术或经济原因，目前已被部署的许多NAT设备无法升级为实现6to4。

Teredo通过在UDP/IPv4数据包内封装IPv6数据包来缓解这个问题，大多数NAT可以正确转发此种流量。这样一来，NAT后的IPv6感知主机可以作为Teredo隧道端点，即使它没有专用的公网IPv4地址。实际上，一个实现Teredo的主机可以在没有本地网络环境合作的条件下获得IPv6连通性。

从长远来看，所有IPv6主机都应该使用原生IPv6连接。临时性的Teredo协议包含“落幕程序”规定：Teredo实现应该提供一个方法在当IPv6成熟并且使用一个非脆弱的连通机制时停止Teredo连接的使用。根据IETF89，微软计划在2014年上半年停用他们为Windows准备的Teredo服务器，并鼓励停用公共运行的Teredo中继。

## 概述

  -
    有关完整解释见[外部链接中的Teredo概述](https://zh.wikipedia.org/wiki/Teredo隧道#外部链接 "wikilink")。

Teredo协议执行几种功能：

1.  诊断UDP通过IPv4（UDPv4）的连通性并发现当前的NAT种类（使用[STUN协议的简化版](../Page/STUN.md "wikilink")）
2.  为每个使用它的主机分配一个全局可路由的唯一IPv6地址
3.  将IPv6数据包封装在UDPv4数据报中以通过IPv4网络传输（包括[NAT穿透](../Page/NAT穿透.md "wikilink")）
4.  在Teredo主机与原生（或其他非Teredo）IPv6主机之间路由流量

### 节点类型

Teredo定义了几种不同类型的节点：

  - Teredo客户端
    一个在NAT后具有IPv4互联网连接的主机，并且使用Teredo隧道协议来访问IPv6互联网。Teredo客户端被以Teredo前缀
    (`2001::/32`) 为开头分配一个IPv6地址。\[1\]

<!-- end list -->

  - Teredo服务器
    一个众所周知的主机，用于初始化Teredo隧道的配置。Teredo服务器从不转发任何客户端的流量（除了IPv6
    ping），因此有着适度的带宽限制（大多是每个客户端几百位元每秒），单台服务器就可以支持许多客户端。此外，Teredo服务器可以用完全[无状态的方式实现](https://zh.wikipedia.org/wiki/无状态协议 "wikilink")，因此无论支持多少客户端，它都只占用同样的内存。

<!-- end list -->

  - Teredo中继
    Teredo隧道的远端。Teredo中继必须代表它服务的Teredo客户端转发所有数据，但Teredo客户端直接到Teredo客户端的交换除外。因此，一个中继需要大量的带宽，并且只能同时支持有限数量的客户端。每个Teredo中继服务一定范围内的IPv6主机（例如单个校园/公司，单个[互联网服务供应商或整个运营商网络](../Page/互联网服务供应商.md "wikilink")，或甚至整个[IPv6互联网](../Page/IPv6.md "wikilink")）；它在任何Teredo客户端与任何所述范围内的主机间转发流量。

<!-- end list -->

  - Teredo特定主机中继
    此种Teredo中继只服务于运行它的主机。因此，它没有特别的带宽或路由要求。具有特定主机中继的计算机使用Teredo与其他Teredo客户端通信，但继续用其主IPv6网络提供与其他IPv6互联网的连接。

### IPv6地址

每个Teredo客户端被分配一个公共IPv6地址，其构造如下（高阶位编号为0）：

  - 位0至31保持Teredo前缀（2001::/32）。
  - 位32至63嵌入要使用的Teredo服务器的IPv4主地址。
  - 位64至79保持一些标记位及其他比特。这16位的格式为：首先是MSB——“CRAAAAUG
    AAAAAAAA”。“C”位设为1，如果Teredo客户端位于一个[锥形NAT后面](../Page/网络地址转换.md "wikilink")，否则为0；但RFC
    5991将它改为始终为0以避免向陌生人暴露此情况。“R”位目前未分配，应该设为0发送。“U”和“G”位设为0以模拟[MAC地址中的](../Page/MAC地址.md "wikilink")“通用/本地”和“组/个人”位。第十二个“A”位在原RFC
    4380规范中为0，但在RFC 5991中更改为由Teredo客户端选择的随机位，以额外保护Teredo避免基于IPv6的扫描攻击。
  - 位80至95包含混淆后的UDP端口号。这是NAT映射给Teredo客户端的端口号，将所有比特翻转。
  - 位96至127包含混淆后的IPv4地址。这是NAT的公网IPv4地址，将所有比特翻转。

<center class="">

*Teredo IPv6地址表*

<table>
<thead>
<tr class="header">
<th><p>位</p></th>
<th><p>0 - 31</p></th>
<th><p>32 - 63</p></th>
<th><p>64 - 79</p></th>
<th><p>80 - 95</p></th>
<th><p>96 - 127</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>长度</p></td>
<td><p>32位</p></td>
<td><p>32位</p></td>
<td><p>16位</p></td>
<td><p>16位</p></td>
<td><p>32位</p></td>
</tr>
<tr class="even">
<td><p>描述</p></td>
<td><p>前缀</p></td>
<td><p>Teredo<br />
服务器IPv4</p></td>
<td><p>标记</p></td>
<td><p>混淆的<br />
UDP端口</p></td>
<td><p>混淆的客户端<br />
公网IPv4</p></td>
</tr>
</tbody>
</table>

</center>

举例来说，IPv6地址2001:0000:4136:e378:8000:63bf:3fff:fdd2就是通过一个Teredo中继：

  - 使用地址为65.54.227.120的Teredo地址（[十六进制的](../Page/十六进制.md "wikilink")4136e378）
  - 在锥形NAT后面，并且客户端不完全兼容RFC 5991（设置了第64比特）
  - 很可能（99.98%）不兼容RFC 5991（12个随机位均为0，在兼容时的发生概率小于0.025%）
  - 使用其NAT映射的40000端口（十六进制[取反](../Page/位操作.md "wikilink")（not）63bf等于9c40，即十进制数字40000）
  - NAT公共IPv4地址192.0.2.45（取反3ffffdd2等于c000022d，这就变成了192.0.2.45）

*Teredo IPv6示例表*

<center class="">

<table>
<thead>
<tr class="header">
<th><p>位</p></th>
<th><p>0 - 31</p></th>
<th><p>32 - 63</p></th>
<th><p>64 - 79</p></th>
<th><p>80 - 95</p></th>
<th><p>96 - 127</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>长度</p></td>
<td><p>32位</p></td>
<td><p>32位</p></td>
<td><p>16位</p></td>
<td><p>16位</p></td>
<td><p>32位</p></td>
</tr>
<tr class="even">
<td><p>描述</p></td>
<td><p>前缀</p></td>
<td><p>Teredo<br />
服务器IPv4</p></td>
<td><p>标记</p></td>
<td><p>混淆的<br />
UDP端口</p></td>
<td><p>混淆的客户端<br />
公网IPv4</p></td>
</tr>
<tr class="odd">
<td><p>部分</p></td>
<td><p>2001:0000</p></td>
<td><p>4136:e378</p></td>
<td><p>8000</p></td>
<td><p>63bf</p></td>
<td><p>3fff:fdd2</p></td>
</tr>
<tr class="even">
<td><p>解码后</p></td>
<td></td>
<td><p>65.54.227.120</p></td>
<td><p>锥形NAT</p></td>
<td><p>40000</p></td>
<td><p>192.0.2.45</p></td>
</tr>
</tbody>
</table>

</center>

### 服务器

  -
    有关现有Teredo服务器的列表，见[外部链接中的列表](https://zh.wikipedia.org/wiki/Teredo隧道#外部链接 "wikilink")。

Teredo客户端使用Teredo服务器通过简化的类STUN“鉴别流程”检测客户端是否在任何类型的NAT后面。Teredo客户端也通过定期发送UDP数据包来维护其NAT上对其Teredo服务器的绑定，这样确保服务器始终可以联系到其客户端——正常工作的必要条件。

如果一个Teredo中继（或另一个Teredo客户端）必须发送一个IPv6数据包到一个Teredo客户端，它首先发送一个Teredo气泡（bubble）包到客户端的Teredo服务器（根据Teredo客户端的Teredo
IPv6地址推算）。然后服务器转发“气泡”包到客户端，使Teredo客户端软件了解它必须打孔到Teredo中继。

Teredo服务器也可以将Teredo客户端的ICMPv6包传输到IPv6互联网。在实践中，当一个Teredo客户端想联系一个原生IPv6节点，它必须定位相应的Teredo中继——即公网IPv4和UDP端口号，以发送封装的IPv6包。为做到此目的，客户端制作一个传往IPv6节点的ICMPv6
Echo请求（ping），并经它配置的Teredo服务器发送。Teredo服务器解开封装并将ping传往IPv6互联网，使ping最终抵达IPv6节点。IPv6节点应该在收到ICMPv6
Echo回复后按照RFC 2460应答。这个应答包首先被路由到最近的Teredo中继，然后逐步抵达与其联系的Teredo客户端。

维护一个Teredo服务器所需的带宽很少，因为它们不参与IPv6数据包的实际发送与接收。另外，它不涉及对互联网路由协议的任何访问。Teredo服务器的必备条件仅有：

  - 可以发出源地址属于Teredo前缀的ICMPv6数据包
  - 两个不同的公网IPv4地址。虽然这没有写在官方的规范中，但微软Windows客户端期望两个连续的地址——第二个IPv4地址用于NAT检测

公共Teredo服务器：

  - teredo.remlab.net / teredo-debian.remlab.net (德国)
  - teredo.ngix.ne.kr (韩国)
  - teredo.managemydedi.com (美国芝加哥)
  - teredo.trex.fi (芬兰)
  - win8.ipv6.microsoft.com (隐藏于Windows RT 8.1中的Teredo服务器)，Windows
    7中不存在。
  - win10.ipv6.microsoft.com （Windows10中的Teredo服务器）

### 中继

Teredo中继可能需要大量的网络带宽。另外，它必须输出（宣告）Teredo
IPv6前缀（2001::/32）到其他IPv6主机。这样之后，Teredo中继就能收到其他寻址到Teredo客户端的IPv6主机的流量，然后通过UDP/IPv4转发它们。与此对应，它会收到其他通过UDP/IPv4寻址到IPv6主机的Teredo客户端发来的数据包，将这些数据包注入到IPv6网络。

在实践中，网络管理员可以设置一个只服务于他们公司或校园的私有Teredo中继。这可以为他们的IPv6网络与任何Teredo客户端提供一个短途路径。但是，在超过单个网络的规模上设置一个Teredo中继需要输出[BGP](../Page/边界网关协议.md "wikilink")
IPv6路由到其他[自治系统](../Page/自治系统.md "wikilink")（AS）的能力。

不同于[6to4](../Page/6to4.md "wikilink")，连接中的两个端点可以使用不同的中继，在原生IPv6主机与一个Teredo客户端之间的流量使用同一个Teredo中继，即最靠近原生IPv6主机网络侧的那个。Teredo客户端不能自己定位一个中继，因为它不能自己发送IPv6数据包。如果它需要启动与一个原生IPv6主机的连接，它首先通过Teredo服务器使用客户端的Teredo
IPv6地址发送一个数据包到原生IPv6主机。原生IPv6主机之后照常响应客户端的Teredo
IPv6地址，这能使数据包最终找到Teredo中继，从而启动与客户端的连接（可能使用Teredo服务器进行NAT打孔）。Teredo客户端和原生IPv6主角之后使用中继进行通信，只要它们需要。此设计意味着Teredo服务器与客户端都不需要知道任何Teredo中继的IPv4地址。它们通过全局IPv6路由表自动找到合适的路由，因为所有Teredo中继都宣告网络2001::/32。

  -
    有关Teredo和BGP上的近实时信息见[外部链接](https://zh.wikipedia.org/wiki/Teredo隧道#外部链接 "wikilink")。

2006年3月30日，意大利ISP
[ITGate](http://www.itgate.net/)是第一个在其IPv6互联网上宣告到2001::/32的路由的AS，这使RFC
4380兼容的Teredo实现有望充分可用。但截至2007年2月16日，它已不再有效。

2009年第一季度，IPv6骨干[Hurricane
Electric使用](../Page/Hurricane_Electric.md "wikilink")[任播技术启用了](../Page/任播.md "wikilink")14个Teredo中继\[2\]并全局性宣告2001::/32。这些中继分别位于[西雅图](https://zh.wikipedia.org/wiki/西雅图 "wikilink")、[弗里蒙特](https://zh.wikipedia.org/wiki/弗里蒙特 "wikilink")、[洛杉矶](../Page/洛杉矶.md "wikilink")、[芝加哥](../Page/芝加哥.md "wikilink")、[达拉斯](https://zh.wikipedia.org/wiki/达拉斯 "wikilink")、[多伦多](../Page/多伦多.md "wikilink")、[纽约](../Page/纽约.md "wikilink")、Ashburn、[迈阿密](../Page/迈阿密.md "wikilink")、[伦敦](../Page/伦敦.md "wikilink")、[巴黎](../Page/巴黎.md "wikilink")、[阿姆斯特丹](../Page/阿姆斯特丹.md "wikilink")、[法兰克福和](https://zh.wikipedia.org/wiki/法兰克福 "wikilink")[香港](../Page/香港.md "wikilink")。

预计大型网络运营商将维护Teredo中继。与6to4一样，仍不清楚如果大部分互联网主机通过基于IPv4的Teredo使用IPv6，Teredo将会如何扩展。虽然微软自发布用于Windows
XP的Teredo伪隧道以来运行有一组Teredo服务器，但他们从未为IPv6互联网整体提供Teredo中继服务。

## 限制

Teredo不兼容所有NAT设备。根据RFC
3489的术语，它支持全锥、受限和端口受限的[NAT设备](../Page/网络地址转换.md "wikilink")，但不支持[对称NAT](../Page/网络地址转换.md "wikilink")。[最初的Shipworm规范](http://www.ietf.org/proceedings/51/I-D/draft-huitema-shipworm-00.txt)制作的最终版Teredo协议也支持对称NAT，但最终由于安全考虑而放弃。

台湾的[國立交通大學之后提出了](../Page/國立交通大學.md "wikilink")[SymTeredo](http://ieeexplore.ieee.org/xpl/freeabs_all.jsp?arnumber=1633339&fromcon)，这增强了原有的Teredo协议以支持对称NAT，并且微软和Miredo的实现实施了某些的未规定、非标准的扩展以改进对对称NAT的支持。但是在对称NAT后的Teredo客户端与在对称NAT或端口限制NAT后的Teredo客户端的连通似乎仍然不可能。

另外，Teredo假设两个客户端交换封装的IPv6数据包时，他们使用的映射/外部的UDP端口号与他们联系Teredo服务器（以及建立Teredo
IPv6地址）的端口号相同。若无此假设，两个客户端直接不可能建立直接通信，从而中继不得不进行。一个Teredo实现尝试在启动时检测NAT类型，并且如果NAT看起来对称，则拒绝运作。（此限制有时可以在NAT设备上配置转发规则来解决，但这需要NAT设备的管理权限。）

Teredo只能为每个隧道端点提供一个IPv6地址。因此，不能使用一个Teredo隧道连接多个主机，这不同于6to4和某些点对点IPv6隧道。所有Teredo客户端与IPv6互联网的可用带宽都受到Teredo中继可用资源的限制，这与6to4等中继没什么区别。

## 备选方案

[6to4需要一个公网IPv](../Page/6to4.md "wikilink")4地址，但为每个隧道端点提供一个较大的48位IPv6前缀，并有较低的封装[头](https://zh.wikipedia.org/wiki/Computational_overhead "wikilink")。[点对点隧道可能比Teredo更可靠和负责](https://zh.wikipedia.org/wiki/网络拓扑 "wikilink")，并且提供永久IPv6地址通常不依赖于隧道端点的IPv4地址。部分点对点[隧道中间人](../Page/隧道中间人.md "wikilink")（Tunnel
broker）也支持UDP封装以穿透NAT（例如[AYIYA协议可以做到](https://zh.wikipedia.org/wiki/AYIYA "wikilink")）。但反过来说，点对点隧道通常需要注册。自动化工具（例如[AICCU](https://zh.wikipedia.org/wiki/AICCU "wikilink")）可以简化使用点对点隧道的流程。

## 安全事项

### 暴露

Teredo分配全局可路由的IPv6地址使NAT设备后的网络主机增加了[攻击面](https://zh.wikipedia.org/wiki/attack_surface "wikilink")，因为如不这样做则无法被互联网访问。因为这样做，Teredo潜在地将任何启用IPv6并开放端口到外部的应用程序暴露在外。Teredo隧道的封装可以隐蔽IPv6数据流量的内容，防止数据包检测乃至部分IPv4恶意软件的传播。\[3\]US
CERT已发表一篇论文，论述使用IPv6隧道的恶意软件风险。\[4\]Teredo也将IPv6栈和隧道软件暴露给攻击者，如果它们被发现存在任何远程可利用的漏洞，这可能变得危险。

微软IPv6栈有一个“保护等级”[套接字选项](../Page/Berkeley套接字.md "wikilink")。这允许应用程序指定它们是否愿意处理出自Teredo隧道的流量，任何非Teredo隧道的流量（默认设置），或者只接收本地[内部网的流量](https://zh.wikipedia.org/wiki/内部网 "wikilink")。

Teredo协议也在数据包中封装有关隧道端点的详细信息。\[5\]

### 防火墙、过滤和阻止

为使Teredo伪隧道正常工作，发出的UDP数据包不能被过滤。此外，对这些数据包的回复（即回传的流量）也不能被过滤。这取决于NAT的典型设置及其有状态防火墙的功能。如果外发的IPv4
UDP流量被拦截，Teredo隧道软件会检测到致命错误并停止。另外，如果拦截外发值3544端口的UDP流量可能会干扰Teredo的活动。

### 通过路由环路DoS

在近期，一种新的使用Teredo隧道利用路由环路制造拒绝服务攻击已被发现。这相对容易预防。\[6\]

### 默认启用

微软操作系统的当前版本已启用IPv6过渡技术，包括默认启用Teredo。如果IPv6未在公司网络上实现，可以通过命令行提示符、注册表编辑或使用组策略禁用这些过渡技术。由于微软默认启用，如果需要避免IPv6启用状态下的新安全威胁，管理员需要明确配置Windows操作系统中的和相关过渡技术。\[7\]

## 实现

Teredo目前有多种实现可用：

  - [Windows XP
    SP2包括一个客户端和特定主机中继](../Page/Windows_XP.md "wikilink")（Service
    Pack 1的Advanced Networking Pack中也可用）。
  - [Windows Server
    2003有一个](../Page/Windows_Server_2003.md "wikilink")[微软Beta计划提供的中继和服务器](../Page/微软.md "wikilink")。
  - [Windows Vista和](../Page/Windows_Vista.md "wikilink")[Windows
    7使用一个未指明的扩展内置了对对称NAT穿透的Teredo支持](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")。但是，如果只有一个本地链路和Teredo地址存在，那么这些操作系统在DNS
    A记录存在时不会尝试解析IPv6 DNS AAAA记录，因此会使用IPv4。在这种情况下，只能访问明确指定的IPv6地址。
    在此种情况下，在注册表**HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\services\\Dnscache\\Parameters**中添加一个DWORD值：**AddrConfigControl
    = 0**才能使Teredo隧道激活（被默认使用），达到连向IPv6的目的。
  - [Miredo是一个适用于](../Page/Miredo.md "wikilink")[Linux](../Page/Linux.md "wikilink")、[\*BSD和](../Page/BSD.md "wikilink")[Mac
    OS X的客户端](../Page/MacOS.md "wikilink")、中继和服务器。
  - ng_teredo是一个基于的适用于[FreeBSD的中继和服务器](../Page/FreeBSD.md "wikilink")，出自大学和6WIND。\[8\]
  - NICI-Teredo是一个适用于[Linux内核的中继和一个用户级Teredo服务器](../Page/Linux内核.md "wikilink")，由国立交通大学开发。\[9\]

## 名称由来

Teredo隧道协议的最初昵称为shipworm（[船蛆](https://zh.wikipedia.org/wiki/船蛆 "wikilink")）。该想法来自该协议将穿过NAT设备，很像船虫穿过木头上的隧道。Shipworms是造成很多木壳船损坏的成因，但Christian
Huitema在原始草案中指出：“该种动物只在相对干净且未受污染的水中生存，它最近在几个北美港口的复出也证明这与清洁相关。与此类似，通过穿透NAT，该服务将有助于达到新的互联网透明度。”

Christian
Huitema后将名称改为Teredo以避免将它与[電腦蠕蟲混淆](../Page/電腦蠕蟲.md "wikilink")。\[10\]Teredo
navalis（[船蛆](https://zh.wikipedia.org/wiki/船蛆 "wikilink")）是一种著名的船虫种类的拉丁名。

## 参考资料

## 外部链接

  - [Teredo概述](http://technet.microsoft.com/library/bb457011.aspx)，Microsoft
    TechNet提供
  - [当前任播的Teredo
    BGP路由器](https://stat.ripe.net/widget/prefix-routing-consistency#w.resource=2001%3A%3A%2F32)
  - [TEREDO-MNT](http://www.sixxs.net/tools/whois/?TEREDO-MNT)：通过BGP宣告Teredo前缀的运营商列表
  - *Teredo: Tunneling IPv6 over UDP through Network Address
    Translations (NATs)*. RFC 4380, C. Huitema. February 2006.
  - [基于JavaScript的Teredo-IP地址计算器](http://www.wyae.de/docs/ipv6calc/)

[Category:IPv6过渡技术](https://zh.wikipedia.org/wiki/Category:IPv6过渡技术 "wikilink")
[Category:穿隧協議](https://zh.wikipedia.org/wiki/Category:穿隧協議 "wikilink")

1.

2.

3.   US-CERT}}

4.
5.

6.

7.

8.  Kabassanov, Konstantin; Jardin, Vincent.

9.  "Solomon, Aaron".

10.