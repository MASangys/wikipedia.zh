**GPRS隧道协议**（，简称：GTP）是一组基于[IP的](../Page/网际协议.md "wikilink")[通信协议](../Page/网络传输协议.md "wikilink")，用于在[GSM](../Page/GSM.md "wikilink")、[UMTS和](../Page/通用移动通讯系统.md "wikilink")[LTE网络中承载](https://zh.wikipedia.org/wiki/长期演进技术 "wikilink")[GPRS](https://zh.wikipedia.org/wiki/通用分组无线服务 "wikilink")（通用分组无线业务，）。

GTP协议目前有3个版本：version 2使用于LTE核心网；version
1使用于GSM和UMTS网络，也应用于LTE网络中以传输用户面数据；version
0是早期版本，被1999年标准化的version 1替代\[1\]。

## GTP协议的用途

### GSM和UMTS网络

#### GPRS核心网

GTP是[GPRS核心网中使用的主要协议](../Page/GPRS核心网.md "wikilink")。它使得[GSM或](../Page/GSM.md "wikilink")[UMTS网络的终端能够在网络中移动位置](https://zh.wikipedia.org/wiki/UMTS "wikilink")，同时能持续的通过同一个GGSN连接到因特网。为了实现这一功能，GTP协议总是将用户面数据从用户位置所属的SGSN传输到它开户信息所对应的GGSN。

[GPRS核心网使用三种](../Page/GPRS核心网.md "wikilink") GTP协议。

  - GTP-U用于为每个[PDP上下文提供一个或多个隧道](https://zh.wikipedia.org/wiki/GPRS核心网#PDP上下文 "wikilink")，用以传输用户数据
  - GTP-C用于控制目的，包括：
      - [PDP上下文的建立和删除](https://zh.wikipedia.org/wiki/GPRS核心网#PDP上下文 "wikilink")
      - [GSN可及性验证](https://zh.wikipedia.org/wiki/GPRS核心网#GPRS支撑节点（GSN） "wikilink")
      - 位置更新。例如，当签约用户从一个[SGSN移动到另一个SGSN](https://zh.wikipedia.org/wiki/GPRS核心网#业务GPRS支撑节点（SGSN） "wikilink")
  - [GTP'用于从各个](../Page/GTP'.md "wikilink")[GSN传送计费数据到计费网关功能](https://zh.wikipedia.org/wiki/GPRS核心网#GPRS支撑节点\(GSN\) "wikilink")（CGF，）。

[GGSN和](https://zh.wikipedia.org/wiki/GPRS核心网#网关GPRS支撑节点（GGSN） "wikilink")[SGSN](https://zh.wikipedia.org/wiki/GPRS核心网#业务GPRS支撑节点（SGSN） "wikilink")（合称为“[GSN](https://zh.wikipedia.org/wiki/GPRS核心网#GPRS支撑节点（GSN） "wikilink")”）在[UDP端口](../Page/用户数据报协议.md "wikilink")2123上监听GTP-C消息，在端口2152上监听GTP-U消息。GTP协议通信可以通过[GPRS漫游交换](https://zh.wikipedia.org/wiki/GPRS漫游交换 "wikilink")（）发生在不同运营商之间。

*计费网关功能*（CGF，英文：Charging Gateway
Function）在[TCP](../Page/传输控制协议.md "wikilink")/[UDP端口](../Page/用户数据报协议.md "wikilink")3386上监听发送自[GSN的GTP](https://zh.wikipedia.org/wiki/GPRS核心网#GPRS支撑节点（GSN） "wikilink")'消息。核心网发送计费信息到CGF，计费信息至少包含[PDP上下文激活次数以及终端用户传送的数据量](https://zh.wikipedia.org/wiki/GPRS核心网#PDP上下文 "wikilink")。与GTP-C和GTP-U不同，GTP'协议承载的报文通常只在单个运营商网络内部使用，因此并不那么标准化。运营商可以做特殊的配置，使用特别的编码，甚至使用完全不同的系统来完成计费。

#### UMTS的核心网和接入网之间（Iu-PS接口）

[GPRS核心网和UMTS](../Page/GPRS核心网.md "wikilink")[接入网之间的Iu](https://zh.wikipedia.org/wiki/无线电接入网 "wikilink")-PS接口上，用户面也使用GTP-U协议。然而在控制面上并不使用GTP-C，而是用[RANAP协议](https://zh.wikipedia.org/wiki/无线接入网应用部分 "wikilink")。GTP-U的隧道在Iu-PS接口上也是以RANAP协议管理的。

### LTE网络

LTE网络中的GTP协议功能与GSM/UMTS网络中基本相同。在控制面上LTE网络使用GTPv2-C，用户面上使用GTP-U，计费相关功能使用GTP'。

在S1接口（eNodeB和SGW之间）上，用户面使用GPT-U协议。在接入网X2接口（两个eNodeB之间）上，用户面也使用GTP-U协议，控制面使用X2AP。\[2\]\[3\]

## 协议特性

所有的GTP变种都有一些共有的特性。消息的结构都是相同的，GTP消息头在[UDP](../Page/用户数据报协议.md "wikilink")/[TCP头之后](../Page/传输控制协议.md "wikilink")。

### 消息头

#### GTP版本1

GTPv1消息头包含如下的字段：\[4\]

| \+ | 0-2                  | 3                   | 4                                     | 5                               | 6                            | 7                      | 8-15               | 16-23             | 24-31 |
| -- | -------------------- | ------------------- | ------------------------------------- | ------------------------------- | ---------------------------- | ---------------------- | ------------------ | ----------------- | ----- |
| 0  | 版本号（Version）         | 协议类型（Protocol type） | 保留（Reserved）                          | 扩展消息头标志位（Extension Header Flag） | 序列号标志位（Sequence Number Flag） | N-PDU号标志位（Number Flag） | 消息类型（Message Type） | 总长度（Total length） |       |
| 32 | TEID                 |                     |                                       |                                 |                              |                        |                    |                   |       |
| 64 | 序列号（Sequence number） | N-PDU号（number）      | 下一扩展消息头类型（Next extension header type） |                                 |                              |                        |                    |                   |       |

  - 版本（Version）:长度为3位，对于GTPv1来说，这个值始终是“1”。
    协议类型（PT，全称：Protocol Type）:长度为1位，取值为1表示GTP，0表示GTP'。
    保留（Reserved）:长度为1位，保留字段（必须为0）。
    扩展消息头标志位（E，全称：Extension header flag）:长度为1位，标记是否存在一个可选的扩展消息头字段。
    序列号标志位（S，全称：Sequence number flag）:长度为1位，标记是否存在一个可选的序列号字段。
    N-PDU号标志位（PN，全称：N-PDU number flag）:长度为1位，标记是否存在一个可选的N-PDU号字段。
    消息类型（Message Type）:长度为8位，指示GTP消息的类型。关于消息类型的定义，请参考3GPP TS
    29.060第7.1节。
    总长度（Total Length）:长度为16位，指示消息体长度，单位为字节，不包括GTP头前8字节的必选字段。
    隧道端点标识（TEID，全称：Tunnel endpoint
    identifier）:长度为32位（4个[八位元组](https://zh.wikipedia.org/wiki/八位元组 "wikilink")），用于区分GTP隧道中的不同连接。
    序列号（Sequence
    number）:可选字段，长度为32位。当E、S或PN位中的任意一个取值为1时，这个字段存在。仅当S位为1时，这个字段必须被解析。
    N-PDU号（N-PDU
    number）:可选字段，长度为8位。当E、S或PN位中的任意一个取值为1时，这个字段存在。仅当PN位为1时，这个字段必须被解析。
    下一扩展消息头类型（Next extension header
    type）:可选字段，长度为8位。当E、S或PN位中的任意一个取值为1时，这个字段存在。仅当E位为1时，这个字段必须被解析。

下一扩展消息头如下：

| \+  | Bits 0-7          | 8-23                           | 24-31 |
| --- | ----------------- | ------------------------------ | ----- |
| 0   | 总长度（Total length） | 内容（Contents）                   |       |
| ... | ...               |                                |       |
| ... | 内容（Contents）      | 下一扩展消息头（Next extension header） |       |

  - 长度（Length）:长度为8位。这个字段指出本扩展消息头的长度，包括长度（这个字段本身）、内容和下一扩展消息头字段，以4个[八位元组为单位](https://zh.wikipedia.org/wiki/八位元组 "wikilink")，因此扩展消息头的长度必须是4的倍数。
    内容（Contents）:扩展消息头内容。
    下一扩展消息头（Next extension
    header）:长度为8位。它指出下一扩展消息头的类型，取值为0表示不存在下一个扩展消息头。通过该字段可以实现多个扩展消息头的串联。

#### GTP版本2

它也被称为“进化版GTP”（evolved-GTP）或“eGTP”。GTPv2-C消息头包含如下的字段：\[5\]

| \+                  | Bit 0-2              | 3                              | 4          | 5-7       | 8-15               | 16-23             | 24-31 |
| ------------------- | -------------------- | ------------------------------ | ---------- | --------- | ------------------ | ----------------- | ----- |
| 0                   | 版本号（Version）         | 捎带消息标志位（Piggybacking flag，简称P） | TEID标志位（T） | 剩余（Spare） | 消息类型（Message Type） | 总长度（Total length） |       |
| 32                  | TEID（只有在T=1时才出现）     |                                |            |           |                    |                   |       |
| 64（有TEID）/32（无TEID） | 序列号（Sequence number） | 剩余（Spare）                      |            |           |                    |                   |       |

注意：不存在GTPv2-U协议。在LTE中的GTP-U仍使用GTPv1-U。

  - 版本号：长度为3位，对于GTPv2来说，这个值始终是“2”。
    捎带消息标志位（Piggybacking
    flag）:如果被置为1，则在这条消息后面会有另外一条带有完整消息头的GTP消息。协议里具体规定了每种消息可以携带的消息类型。
    TEID标志位（TEID flag）:如果被置为1，则TEID字段存在。只有Echo Request和Echo
    Response消息不携带TEID字段。
    总长度（Total length）:包括消息头和消息体的消息总长度（除去必选字段所在的前4个八位元组）。

### 连接机制

除了共同的消息结构之外，GTP协议还有一个共同的机制来验证两个节点之间的连接。这种机制依靠以下两种消息实现：

  - Echo Request
  - Echo Response

每隔60秒，一个网元可以向每个有活跃连接的对端发送一个Echo Request，来确认连接有效。如果对端不回复Echo
Response，则它可以被视为宕机，而该活跃连接将被删除。

各种 GTP协议除了上述2个消息之外，没有共通的消息类型。\[6\]也就是说，GTP-C，GTP-U和GTP'基本上是3种独立的协议。

### GTP-C - GTP控制面

GTP-C协议是GTP标准的“**控制**”部分。当一个签约用户请求一个[PDP上下文](https://zh.wikipedia.org/wiki/GPRS核心网#PDP上下文 "wikilink")，[SGSN将发送一个](https://zh.wikipedia.org/wiki/GPRS核心网#业务GPRS支撑节点（SGSN） "wikilink")“*创建PDP上下文请求*”（Create
PDP Context
Request）的消息给[GGSN](https://zh.wikipedia.org/wiki/GPRS核心网#网关GPRS支撑节点（GGSN） "wikilink")，给出该签约用户的请求的明细。该[GGSN将发送一个](https://zh.wikipedia.org/wiki/GPRS核心网#网关GPRS支撑节点（GGSN） "wikilink")“*创建PDP上下文响应*”（Create
PDP Context
Response）消息，这个消息会要么给出被激活的[PDP上下文内容](https://zh.wikipedia.org/wiki/GPRS核心网#PDP上下文 "wikilink")，要么指出一个失败，及该失败的原因。版本1和版本2的GTP-C消息使用UDP端口2123。

在LTE核心网中，**GTPv2-C**协议负责在S1、S5/S8等接口上创建、维持和删除隧道。它被用于控制面路径管理（control
plane path management）、隧道管理（tunnel management）和移动性管理（mobility
management）。它也控制转发位置变更消息、SRNS上下文、并在[LTE的网间切换中创建转发隧道](https://zh.wikipedia.org/wiki/长期演进技术 "wikilink")。

### GTP-U - GTP用户数据隧道

GTP-U是一个比较简单的基于[IP的隧道协议](../Page/网际协议.md "wikilink")，它允许在各个端点集之间建立多个隧道。[UMTS网络中](https://zh.wikipedia.org/wiki/UMTS "wikilink")，每个签约用户拥有至少一个隧道。每一个激活的[PDP上下文拥有至少一个隧道](https://zh.wikipedia.org/wiki/GPRS核心网#PDP上下文 "wikilink")，当隧道多于1个时，多出来的隧道为特定的服务提供特定的端到端[QoS](https://zh.wikipedia.org/wiki/QoS "wikilink")。

每个隧道由一个GTP-U消息中的TEID（隧道端点标识符，{{lang-en|Tunnel Endpoint
Identifier}）标识。TEID应当是一个动态分配的随机数。如果这个随机数能达到[密码级水平](../Page/密码学.md "wikilink")，则可以抵御一定程度的攻击。即使这样，[3GPP标准仍然要求所有的GTP流量](../Page/3GPP.md "wikilink")，包括用户数据，都应当在安全私有网络中被发送，不能直接连接到因特网。GTP-U使用[UDP端口](../Page/用户数据报协议.md "wikilink")2152。

在LTE核心网中，使用**GTPv1-U**协议在GTP隧道上跨S1、S5/S8等接口上交换用户数据。UE所收发的[IP包被打包在GTPv](../Page/网际协议.md "wikilink")1-U的包中，并在P-GW和eNodeB之间的各段隧道中传输。LTE网络的X2接口，即eNodeB之间的接口上，用户面协议使用的也是GTPv1-U\[7\]。

### GTP' - 计费传输

[GTP'协议被用于向CGF](../Page/GTP'.md "wikilink")（计费网关功能，）传输计费数据。GTP'使用[TCP](../Page/传输控制协议.md "wikilink")/[UDP端口](../Page/用户数据报协议.md "wikilink")3386。

### 协议栈

<table>
<tbody>
<tr class="odd">
<td><p>应用层协议</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/网际协议.md" title="wikilink">IP</a>（用户）</p></td>
</tr>
<tr class="odd">
<td><p>GTP</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/用户数据报协议.md" title="wikilink">UDP</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/网际协议.md" title="wikilink">IP</a></p></td>
</tr>
<tr class="even">
<td><p>二层（例如, WAN or以太网）</p></td>
</tr>
<tr class="odd">
<td><p><br />
GTP-U协议栈</p></td>
</tr>
</tbody>
</table>

GTP协议需要被承载在UDP协议上。早期版本GTPv0也允许TCP传输。

GTPv0是最早的GTP协议，控制面和用户面使用相同的端口。

GTPv1于1999年在3GPP TS
29060版本3.3.0中被标准化。它实际上是两个协议，一个用于控制面（被称为“GTP-C”），而另一个则用于用户数据隧道（被称为“GTP-U”）。

GTP-U在[UMTS网络中也被用于从RNC往](https://zh.wikipedia.org/wiki/UMTS "wikilink")[SGSN](https://zh.wikipedia.org/wiki/GPRS核心网#业务GPRS支撑节点（SGSN） "wikilink")（即Iu-PS接口上）传送用户数据。然而，此时控制面使用的是[RANAP协议而不是GTP](https://zh.wikipedia.org/wiki/无线接入网应用部分 "wikilink")-C。

## GTP的历史版本

GTP的原始版本（版本0）与当前（2015年10月）使用中的版本1和版本2有显著的不同：

  - 隧道标识符（TEID）是非随机的；
  - 除了IP协议，也支持传输[X.25协议的数据](../Page/X.25.md "wikilink")；
  - 所有的功能都使用固定的3386端口（不像在GTPv1中仅仅用于计费）；
  - 除了[UDP以外](../Page/用户数据报协议.md "wikilink")，也可以使用[TCP协议作为传输层](../Page/传输控制协议.md "wikilink")；
  - 与签约用户相关的字段，例如[QoS](https://zh.wikipedia.org/wiki/QoS "wikilink")，相对较少。

版本0中的非随机TEID在有安全性问题：当一个攻击者对任一漫游合作伙伴网络有访问权限时，或可以找到其它一些方式来远程地向GPRS骨干网发送消息包的时候，就可以干扰网络运行。版本0现在几乎已完全被版本1所替代。即使这样，新版本的标准仍声明，GSN必须支持更旧的版本。但幸运的是，可以用简单的IP访问列表来禁止v0使用的3386端口，从而封锁版本0。

## GTP标准化

GTP原本是在（）的GSM标准09.60中被标准化的。\[8\]随着[UMTS标准的创建](https://zh.wikipedia.org/wiki/UMTS "wikilink")，它被移动到[3GPP](../Page/3GPP.md "wikilink")。到2005年，3GPP将其做为3GPP标准29.060来维护。GTP'使用相同的消息格式，但是它的使用独立的标准32.295，并且定义了它所传输的计费数据的标准化格式。

TS
29.060的后续版本取消了对GTPv1和v0互联的支持，因此如果网络中有[GSN只支持v](https://zh.wikipedia.org/wiki/GPRS核心网#GPRS支撑节点\(GSN\) "wikilink")0的话，使用v1协议的其他网元也不会降到v0去配合。

GTPv2（用于EPC，即LTE核心网）在2008年进入起草阶段，并在同年12月发布。使用GTPv1的“版本不支持”机制，GTPv2支持到GTPv1的降级运行，但不提供到GTPv0的降级运行。

## 参见

  - [代理移动IPv6](https://zh.wikipedia.org/wiki/代理移动IPv6 "wikilink")（Proxy
    Mobile IPv6）
  - [移动IP](../Page/移动IP.md "wikilink")（Mobile IP）

## 参考资料

## 外部链接

  - [3GPP官方网站](http://www.3gpp.org)
  - [GPRS隧道协议版本2（GTPv2）或进化版GTP（eGTP）的免费和开源的实现](http://sourceforge.net/projects/nwgtpv2)
  - [GTP问答](http://www.queryhome.com/tag/gtp)

[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")
[Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink")

1.
2.
3.
4.  [3GPP TS 29.060
    section 6](http://www.3gpp.org/ftp/Specs/html-info/29060.htm)
5.  [3GPP TS 29.274
    section 5](http://www.3gpp.org/ftp/Specs/html-info/29274.htm)
6.  [3GPP TS 29.060
    section 7](http://www.3gpp.org/ftp/Specs/html-info/29060.htm)
7.
8.