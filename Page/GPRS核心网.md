**GPRS核心网**（）是[GPRS](https://zh.wikipedia.org/wiki/通用分组无线服务 "wikilink")（通用分组无线业务，）的中心部件，它允许[2G](../Page/2G.md "wikilink")、[3G以及](../Page/3G.md "wikilink")[WCDMA移动网络将](https://zh.wikipedia.org/wiki/宽频码分多址 "wikilink")[IP数据包传送至外部网络](../Page/网际协议.md "wikilink")，例如[因特网](../Page/互联网.md "wikilink")。[GPRS系统是集成于](https://zh.wikipedia.org/wiki/通用分组无线服务 "wikilink")[GSM](../Page/GSM.md "wikilink")[网络交换子系统的一部分](../Page/网络交换子系统.md "wikilink")。

## 一般支撑功能

GPRS核心网提供在[GSM和](../Page/GSM.md "wikilink")[WCDMA网络中的](https://zh.wikipedia.org/wiki/宽频码分多址 "wikilink")[移动性管理](../Page/移动性管理.md "wikilink")、[会话管理](../Page/会话_\(计算机科学\).md "wikilink")，以及[IP数据包的传输业务](../Page/网际协议.md "wikilink")。该核心网同时支持包括和[合法监听等其他附加功能](../Page/合法监听.md "wikilink")。GPRS核心网曾一度被建议要在美国的[D-AMPS
TDMA系统中支持分组无线业务](https://zh.wikipedia.org/wiki/D-AMPS "wikilink")，但事实上，所有这些网络都已经被替换为[GSM](../Page/GSM.md "wikilink")，因此该选项已经不重要了。

PRS模块是一个开放标准驱动的系统。它的标准化主体是[3GPP](../Page/3GPP.md "wikilink")

## GPRS隧道协议（GTP）

GPRS隧道协议（GPRS Tunnelling
Protocol，简称GTP）是GPRS核心网目前定义的基于[IP的](../Page/网际协议.md "wikilink")[协议](../Page/网络传输协议.md "wikilink")。大体上说，这个协议允许[GSM或](../Page/GSM.md "wikilink")[WCDMA网络的最终用户可以随处移动](https://zh.wikipedia.org/wiki/宽频码分多址 "wikilink")，而同时持续地连接到[因特网](../Page/互联网.md "wikilink")，如同只是从[GGSN的同一个位置进行的](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")。

它通过承载从当前正在为签约用户（subscriber）提供服务的[SGSN到当前正在处理该签约用户的会话的](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")[GGSN的签约用户数据来实现](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")。GPRS核心网使用三种形式的GTP。

  - GTP-U:用于在多个独立的隧道中为每个[PDP上下文](https://zh.wikipedia.org/wiki/#PDP上下文 "wikilink")（Packet
    Data Protocol context）传输用户数据。
    GTP-C:用于控制目的，包括：

:\* PDP上下文的建立和删除

:\*
[GSN可及性](https://zh.wikipedia.org/wiki/#GPRS支撑节点\(GSN\) "wikilink")（reachability）的验证

:\*
更新；例如，当一个签约用户从一个[SGSN移动到另一个的时候](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")

  - [GTP'](../Page/GTP'.md "wikilink"):用于从各个[GSN向计费功能](https://zh.wikipedia.org/wiki/#GPRS支撑节点\(GSN\) "wikilink")（charging
    function）传输计费数据。

[GGSN和](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")[SGSN](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")（合称“GSNs”）在[UDP端口](../Page/用户数据报协议.md "wikilink")2123上监听GTP-C消息，而在端口2152上监听GTP-U消息。这个通信直接在一个单独的网络中进行，或者在国际漫游的有情况下，通过一个[GRX](../Page/GPRS漫游交换.md "wikilink")（GPRS漫游交换，英文：GPRS
Roaming Exchange）进行。

计费网关功能（Charging Gateway
Function）在[TCP或](../Page/传输控制协议.md "wikilink")[UDP端口](../Page/用户数据报协议.md "wikilink")3386上监听发送自各个[GSN的GTP](https://zh.wikipedia.org/wiki/#GPRS支撑节点\(GSN\) "wikilink")'消息。核心网向CGF发送的计费信息，通常包含[PDP上下文激活次数和最终用户所传输的数据的质量](https://zh.wikipedia.org/wiki/#PDP上下文 "wikilink")。然而，GTP'通信仅发生在同一个运营商网络内部，并没有充分的标准化，根据供应商和配置选项的不同，可能使用私有的编码甚至完全私有的系统。

GTP版本0支持在同一个消息头下面同时包含信令（signalling）和用户数据（user
data）。它可以在已注册的3386端口上同时和[UDP或](../Page/用户数据报协议.md "wikilink")[TCP一起使用](../Page/传输控制协议.md "wikilink")。GTP版本1仅在UDP上使用。控制平面协议（Control
Plane Protocol）GTP-C（Control）使用已注册的2123端口，而用户平面协议（User Plane
Protocol）GTP-U（User）使用已注册的2152端口。

## GPRS支撑节点（GSN）

一个GSN是一个网络节点，它支持在GSM核心网中对GPRS的使用。所有的GSN都应当拥有一个[Gn接口](https://zh.wikipedia.org/wiki/#在GPRS网络中的接口 "wikilink")，并支持GPRS隧道协议。GSN有两个关键的变种，即网关（gateway）和业务（service）GPRS支撑节点。

### 网关GPRS支撑节点（GGSN）

网关GPRS支撑节点（Gateway GPRS Support
Node，简称GGSN）是[GPRS网络的一个主要组件](https://zh.wikipedia.org/wiki/通用分组无线服务 "wikilink")。GGSN负责GPRS网络和[因特网或](../Page/互联网.md "wikilink")[X.25网络等外部包交换网络之间的互联](../Page/X.25.md "wikilink")。

从外部网络的角度来看，GGSN是一个到某个“子网”（sub-network）的[路由器](../Page/路由器.md "wikilink")（router），因为GGSN对外部网络“隐藏”了GPRS基础设施（infrastructure）。当GGSN收到一个目的地址为某个特定用户的数据后，它检查该用户是否仍处活跃状态（active）。如果是的，则GGSN将该数据转发到当前正在为该移动用户提供服务的SGSN；如果该移动用户不处于活跃状态，则该数据被丢弃。换句话说，面向移动（mobile-originated）的数据包被GGSN路由到正确的网络。

GGSN是一个锚点（anchor
point），它使得在[GPRS](https://zh.wikipedia.org/wiki/通用分组无线服务 "wikilink")/[UMTS网络中的用户终端具有可移动性](../Page/通用移动通讯系统.md "wikilink")（mobility）。在GPRS中，它扮演与[移动IP中的归属代理](../Page/移动IP.md "wikilink")（home
agent）相同的角色。它维持与当前正在为一个特定[MS](../Page/移动台.md "wikilink")（移动台，英文：Mobile
Station）提供服务的SGSN之间进行[协议数据单元](https://zh.wikipedia.org/wiki/协议数据单元 "wikilink")（Protocol
Data Units，简称PDU）隧道连接所必须的路由。

GGSN将来自SGSN的GPRS数据包转换成合适的的包数据协议（Packet Data
Protocol，简称PDP）格式（例如，IP或X.25），在相应的的包数据网络中将它们发送出去。在另一个方向上，传入的数据包的PDP地址被转换为目标用户的GSM地址。被更改地址后的数据包被发送给相应负责的SGSN。为了这个目的，GGSN会在它的的本地寄存器中存储用户当前的SGSN地址以及他/她的用户概要。GGSN要负责IP地址的分配，并且是已连接的用户设备（User
Equipment，简称：UE）的默认路由器。GGSN还履行鉴权（authentication）和计费（charging）的功能。

其它功能还包括签约用户屏蔽（Subscriber
Screening）、IP池管理，以及地址映射、[QoS和](https://zh.wikipedia.org/wiki/QoS "wikilink")[PDP上下文执行](https://zh.wikipedia.org/wiki/#PDP上下文 "wikilink")。

在[LTE场景中](https://zh.wikipedia.org/wiki/长期演进技术 "wikilink")，GGSN功能被移到[SAE网关](../Page/系统架构演进.md "wikilink")（而SGSN功能则工作在[MME中](https://zh.wikipedia.org/wiki/系统架构演进#SAE体系结构 "wikilink")）。

### 业务GPRS支撑节点（SGSN）

一个业务支撑节点（，简称：）负责在它的地理位置服务区域内从移动台接收或向其发送数据包。它的任务包括数据包路由和传输、可移动性管理（，附着/分离和位置管理）、逻辑链路管理（）以及鉴权和计费功能。的位置寄存器存储所有在它上面注册的用户的位置信息（例如，当前蜂窝、当前[VLR](https://zh.wikipedia.org/wiki/网络交换子系统#拜访位置寄存器 "wikilink")）和用户概要（例如[IMSI](../Page/国际移动用户识别码.md "wikilink")、包数据网络中所使用的地址）。

#### SGSN公共功能

  - 将来自[GGSN的](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")[GTP包](../Page/GPRS隧道协议.md "wikilink")（下行）去隧道化（）
  - 将去往[GGSN的](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")[网际协议包](../Page/网际协议.md "wikilink")（上行）隧道化（）
  - 当待机（）模式的移动电话从一个路由区域移动到另一个路由区域时，实现可移动性管理（）
  - 对用户数据进行计费

#### SGSN在GSM/EDGE中的特有功能

[EDGE](../Page/GSM增强数据率演进.md "wikilink")（）所指定的[SGSN功能和特征包括](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")：

  - 每签约用户大约60 （对于来说约150 ）的最大数据速率
  - 使用[Gb协议栈](https://zh.wikipedia.org/wiki/#在GPRS网络中的接口 "wikilink")，通过[帧中继或](../Page/帧中继.md "wikilink")[网际协议连接到](../Page/网际协议.md "wikilink")[数据包控制单元](https://zh.wikipedia.org/wiki/基站子系统#数据包控制单元 "wikilink")（）
  - 接受上行数据来形成[网际协议数据包](../Page/网际协议.md "wikilink")
  - 加密下行数据，解密上行数据
  - 为处于已连接（）模式的移动电话，实现蜂窝级的可移动性管理

#### SGSN在WCDMA中的特有功能

  - 承载最高约42 的下行流量和5.8的上行流量（）
  - 隧道化/去隧道化面向[无线网络控制器](../Page/基地台控制站.md "wikilink")（）的上行/下行数据包
  - 为处于“已连接”模式的移动电话实现RNC级（）的可移动性管理

## 接入点

一个“接入点”是：

  - 一个移动机可以连接到的一个[IP网络](../Page/网际协议.md "wikilink")
  - 用于该连接的一系列设置
  - 一个移动电话中的在一系列设置中的一个特定选项

当一个GPRS移动电话建立了一个PDP上下文，则接入点被选择。此时，一个[接入点名称](../Page/接入点名称.md "wikilink")（Access
Point Name，简称APN）被确定。

  -
    举例：aricenttechnologies.mnc012.mcc345.gprs
    举例：Internet
    举例：mywap
    举例：hcl.cisco.ggsn

这个接入点随后被在一个[DNS查询中使用](../Page/域名系统.md "wikilink")，这个查询是针对一个私有DNS网络的。这个处理过程（称为APN解析）最终给出应当为该接入点提供服务的[GGSN的IP地址](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")。此时，可以激活一个PDP上下文。

## PDP上下文

包数据协议（Packet Data
Protocol，简称PDP，例如：[IP](../Page/网际协议.md "wikilink")、[X.25](../Page/X.25.md "wikilink")、[帧中继](../Page/帧中继.md "wikilink")）上下文（context）是一个[数据结构](../Page/数据结构.md "wikilink")，在[SGSN和](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")[GGSN上都会出现](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")。当签约用户拥有一个活跃的会话时，它会包含该签约用户的会话信息。当一个移动电话想要使用GPRS的时候，它必须首先附着（attach）并随后激活一个PDP上下文。这会在签约用户当前正在拜访的[SGSN中](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（SGSN） "wikilink")，以及正在为该签约用户的接入点提供服务的[GGSN中分配一个PDP上下文数据结构](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")。该数据记录包括：

  - 签约用户的[IP地址](../Page/IP地址.md "wikilink")
  - 签约用户的[IMSI](../Page/国际移动用户识别码.md "wikilink")
  - 签约用户的
      - 在[GGSN上的](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")[隧道端点ID](https://zh.wikipedia.org/wiki/GPRS隧道协议#一般特性 "wikilink")（TEID）
      - 在[SGSN上的隧道端点ID](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")
        (TEID)

隧道端点[IP是一个由](../Page/网际协议.md "wikilink")[GSN分配的号码](https://zh.wikipedia.org/wiki/#GPRS支撑节点\(GSN\) "wikilink")，它标识关联到一个特定的PDP上下文的已隧道化的数据（tunnelled
data）。

若干个PDP上下文可能使用相同的IP地址。次级PDP上下文激活（Secondary PDP Context
Activation）过程可能被用于在重用来自一个已经激活但具有不同的[QoS概要的PDP上下文的PDP地址或其它PDP上下文信息时](https://zh.wikipedia.org/wiki/QoS "wikilink")，激活一个PDP上下文。\[1\]注意，该过程被称为“次级”，不会导致与它们所重用的PDP地址没有这种关系的PDP上下文产生。

总共有11个PDP上下文（以任何主次组合）可以共同存在。网络服务接入点标识符（Network Service Access Point
Identifier，简称NSAPI）被用于区分不同的PDP上下文。

## 参考点和接口

在GPRS核心网标准中，存在一些[接口和参考点](https://zh.wikipedia.org/wiki/网络接口设备 "wikilink")（reference
points，逻辑连接点，它们可能与其它的参考点共享一个公共的物理连接）。这些名字中的一些可以在本页中的网络结构图中看到。

### 在GPRS网络中的接口

  - Ga:该接口为CDRs（记账记录，即话单）提供服务，它在[GSN被写入](https://zh.wikipedia.org/wiki/#GPRS支撑节点\(GSN\) "wikilink")，并发送给计费网关（Charging
    Gateway，简称：CG）。这个接口使用一个基于[GTP的协议](../Page/GPRS隧道协议.md "wikilink")，做了一些修改来支持[CDRs](https://zh.wikipedia.org/wiki/呼叫详细记录 "wikilink")（被称为“[GTP'](../Page/GTP'.md "wikilink")”）。
    Gb:
    [基站子系统和](../Page/基站子系统.md "wikilink")[SGSN之间的接口](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")，传输协议可以是[帧中继](../Page/帧中继.md "wikilink")（Frame
    Relay）或[IP](../Page/网际协议.md "wikilink")。
    Iu:无线网络控制器（Radio Network
    Controller）与[SGSN之间的接口](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")。该接口交换信令（signaling）和实载数据（payload）。
    Gc:
    [GGSN和](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")[HLR](https://zh.wikipedia.org/wiki/网络交换子系统#归属位置寄存器 "wikilink")（归属位置寄存器，英文：Home
    Location
    Register）之间的接口，这样[GGSN就可以获取一个移动台](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")（mobile
    station）的位置明细。为了避免在[GGSN上实现MAP](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")/SS7，此接口为可选。当不出现时，GGSN将查询通过[SGSN路由到HLR](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")。
    Gd:
    [SGSN与短信网关](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")（SMS
    Gateway）之间的接口。可以使用MAP1、MAP2或MAP3。
    Ge:
    [SGSN与](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")[SCP](https://zh.wikipedia.org/wiki/业务控制点 "wikilink")（业务控制点，英文：Service
    Control Point）之间的接口，使用CAP协议。
    Gf:
    [SGSN与EIR](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")（设备标识寄存器，英文：Equipment
    Identity Register）之间的接口，用于检查移动电话的设备标识符（IMEI）是否存在被盗电话列表中。
    Gi:基于[IP的](../Page/网际协议.md "wikilink")、GGSN和公共数据网络（Public Data
    Network，简称PDN）之间的接口，要么直接连到因特网，要么通过一个[WAP网关](https://zh.wikipedia.org/wiki/WAP网关 "wikilink")。
    Gmb:
    [GGSN与广播](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")-多播业务中心（Broadcast-Multicast
    Service Center，简称：BM-SC）的接口，用于控制MBMS集合信道（bearers）。
    Gn:基于[IP的](../Page/网际协议.md "wikilink")、SGSN与其它[SGSN及](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")（内部）GGSN之间的接口。[DNS也共享这个接口](../Page/域名系统.md "wikilink")。使用[GTP协议](../Page/GPRS隧道协议.md "wikilink")。
    Gp:基于[IP的](../Page/网际协议.md "wikilink")、内部[SGSN与外部](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")[GGSN之间的接口](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")。在[SGSN与外部](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")[GGSN之间](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")，存在一个边界网关（border
    gateway，实际上是一个[防火墙](../Page/防火墙.md "wikilink")）。也使用[GTP协议](../Page/GPRS隧道协议.md "wikilink")。
    Gr:
    [SGSN与HLR之间的接口](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")。通过这个接口的消息使用MAP3协议。
    Gs:
    [SGSN和](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")[MSC](https://zh.wikipedia.org/wiki/网络交换子系统#移动交换中心 "wikilink")（[VLR](https://zh.wikipedia.org/wiki/网络交换子系统#拜访位置寄存器 "wikilink")）之间的接口。使用BSSAP+协议。当它进行数据传输时，这个接口允许寻呼（paging）和移动台可用性（station
    availability）。当一个移动台被附着到GPRS网络时，SGSN追踪该移动台台被附着到哪个路由区域（routing
    area，简称RA）。一个RA是一个更大的LA（位置区域，英文：location
    area）中的一部分。当一个移动台被寻呼（paged）时，这个信息被用于节省网络资源。当该移动台履行一个PDP上下文时，SGSN知道该移动台正在使用的准确BTS。
    Gx:
    [GGSN和计费规则功能](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")（Charging
    Rules Function，简称：CRF）之间的在线策略接口。它被用于提供基于计费规则的业务数据流。使用Diameter协议。
    Gy:
    [GGSN与](https://zh.wikipedia.org/wiki/#网关GPRS支撑节点（GGSN） "wikilink")[在线计费系统](https://zh.wikipedia.org/wiki/在线计费系统 "wikilink")（Online
    Charging
    System，简称：OCS）之间的计费接口。使用Diameter协议及其上承载的DCCA（Diameter信用控制应用，英文：Diameter
    Credit-Control Application）应用。
    Gz:
    [GSN和CG之间的离线](https://zh.wikipedia.org/wiki/#GPRS支撑节点\(GSN\) "wikilink")（基于[CDR的](https://zh.wikipedia.org/wiki/呼叫详细记录 "wikilink")）计费接口。使用GTP'。
    Lg:
    [SGSN与](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")[网关移动电话位置中心](https://zh.wikipedia.org/wiki/网关移动电话位置中心 "wikilink")（Gateway
    Mobile Location Center，简称GMLC）之间的接口，用于基于位置的业务。
    S6d:
    [SGSN与](https://zh.wikipedia.org/wiki/#业务GPRS支撑节点（SGSN） "wikilink")[归属签约用户服务器](https://zh.wikipedia.org/wiki/IP多媒体子系统#归属用户服务器（HSS_-_Home_Subscriber_Server） "wikilink")（Home
    Subscriber
    Server，简称HSS）之间的接口。这是一个基于Diameter的接口，用于向HSS传输用户签约和鉴权数据，以对用户的接入行为进行鉴权和授权。

## 参见

  - [基站子系统](../Page/基站子系统.md "wikilink")
      - [数据包控制单元](https://zh.wikipedia.org/wiki/基站子系统#数据包控制单元 "wikilink")
  - [网络交换子系统](../Page/网络交换子系统.md "wikilink")

## 参考文档

## 外部链接

  - [3GPP包含标准的3GPP网页](http://www.3gpp.org)
  - [便捷访问不同的规范](http://www.3gpp.org/specs/numbering.htm)
  - [GSM世界对GPRS的介绍](https://web.archive.org/web/20050207090121/http://www.gsmworld.com/technology/gprs/intro.shtml)
  - [GPRS附着（attache）和PDP上下文激活时序图](http://www.eventhelix.com/RealtimeMantra/Telecom/gprs_attach_pdp_sequence_diagram.pdf)

[Category:3GPP标准](https://zh.wikipedia.org/wiki/Category:3GPP标准 "wikilink")
[Category:电信基础设施](https://zh.wikipedia.org/wiki/Category:电信基础设施 "wikilink")
[Category:移动通信标准](https://zh.wikipedia.org/wiki/Category:移动通信标准 "wikilink")

1.  [3GPP TS 23.060, General Packet Radio
    Service](http://www.3gpp.org/ftp/Specs/html-info/23060.htm)