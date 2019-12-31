> 本文内容由[GTP\'](https://zh.wikipedia.org/wiki/GTP\')转换而来。


**GTP**'（GTP prime）是一个用于[GSM](../Page/GSM.md "wikilink")和[UMTS通信网络的基于](https://zh.wikipedia.org/wiki/UMTS "wikilink")[IP网络的协议](https://zh.wikipedia.org/wiki/IP "wikilink")。它可以使用[UDP或](https://zh.wikipedia.org/wiki/UDP "wikilink")[TCP的传输](https://zh.wikipedia.org/wiki/TCP "wikilink")。尽管GTP'协议的消息结构与[GTP相同](../Page/GPRS隧道协议.md "wikilink")（包括控制面的GTP-C和用户面的GTP-U），它仍是一个独立协议。GTP'协议使用UDP/TCP端口3386。

GTP'的功能是在GSM、UMTS和[LTE核心网中将计费数据从计费数据功能](../Page/系统架构演进.md "wikilink")（）传输到计费网关功能（）。计费数据功能是对“计费”这一功能的抽象，以具体网元为例，通常是GGSN或SGSN等。而计费网关功能通常是一台中心服务器，收集各网元的计费数据，再统一传输给网络运营商的计费中心（）最终生成账单。

在3GPP定义的[GPRS核心网](../Page/GPRS核心网.md "wikilink")的[Ga接口上使用的是GTP](https://zh.wikipedia.org/wiki/GPRS核心网#.E5.9C.A8GPRS.E7.BD.91.E7.BB.9C.E4.B8.AD.E7.9A.84.E6.8E.A5.E5.8F.A3 "wikilink")'协议。

GTP'重用了GTP协议的诸多方面，然而在3GPP TS 32.295中却描述为“仅仅部分重用了GTP协议的控制面”\[1\]。GTP'定义了与GTP不同的消息头结构、独有的消息类型、信元，以及一整套防止计费数据丢失或重复计算的机制。GTP'协议所传输的（）以[ASN.1](../Page/ASN.1.md "wikilink")协议编码\[2\]。

## 消息头结构

GTP'消息头结构如下。

<table style="width:100%;">
<colgroup>
<col style="width: 40%" />
<col style="width: 90%" />
<col style="width: 30%" />
<col style="width: 30%" />
<col style="width: 30%" />
<col style="width: 30%" />
<col style="width: 30%" />
<col style="width: -228%" />
<col style="width: 24%" />
<col style="width: 24%" />
</colgroup>
<thead>
<tr class="header">
<th><p>+</p></th>
<th><p>Bits 0-2</p></th>
<th><p>3</p></th>
<th><p>4</p></th>
<th><p>5</p></th>
<th><p>6</p></th>
<th><p>7</p></th>
<th><p>8-15</p></th>
<th><p>16-31</p></th>
<th><p>32-47</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td><p>版本号<br />
Version</p></td>
<td><p>协议类型<br />
PT [0]</p></td>
<td><p>保留<br />
Reserved</p></td>
<td><p>头长度<br />
Hdr len</p></td>
<td><p>消息类型<br />
Message Type</p></td>
<td><p>消息长度<br />
Length</p></td>
<td><p>序列号<br />
Sequence Number</p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

  - 版本号（Version） : 长度为3比特。与GTP协议的这一字段含义相同。
    协议类型（Protocol Type (PT)） : 长度为1比特。对GTP'协议来说取值必须为0。取值为1表示是GTP协议。
    保留（Reserved）: 长度为3比特，保留不用。取值必须全为1。
    头长度（Header Length (Hdr len)）: 长度为1比特。当版本号取值为0时有意义，此时本字段取值为0表示消息头长度为20字节，取值为1表示消息长度为6字节。当版本号不为0时此位取值必须为0。
    消息类型（Message Type）: 长度为8比特，其值表示该GTP'消息的类型。
    消息长度（Length）: 长度为16比特，其值表示该GTP'消息体长度，不包括消息头本身。
    序列号（Sequence Number）: 长度为16比特，表示该GTP'消息的序号，用于检测消息丢失或重复。

## 消息类型

GTP'协议重用了GTP协议的Version Not Supported、Echo Request和Echo Response这3种消息，此外还定义了如下3对消息。

  - Node Alive Request/Response
  - Redirection Request/Response
  - Data Record Transfer Request/Response

### Node Alive Request/Response

Node Alive消息对用于通知其他网元，本网元已经正常工作。Node Alive Request在网元启动完成时发送，与Echo消息对所提供的通常维60秒间隔的握手机制相比，该消息对能够及时通知对端网元继续之前中断的传输。Node Alive Request也可以用于将其他网元的状态恢复通知给对端网元。

在GTP' version 2中，Node Alive Request支持IPv6地址。

### Redirection Request/Response

Redirection消息对可以用于

1.  由CGF通知CDF，另其将CDR发送给另外的CGF。可用于CGF因维护或发生故障停止服务的场景。
2.  由CGF通知CDF，自己与一个下游网元之间失去连接。

与GTP提供的Echo机制相比，Redirection消息对的好处是，CDF能从Redirection Request消息中得到CGF停止服务的直接或间接的原因。

### Data Record Transfer Request/Response

Data Record Transfer消息对提供了对CDR的可靠传输机制。

#### Data Record Transfer Request

Data Record Transfer Request可以有以下4种功能。

1.  发送数据记录（）：该消息可以携带0条至数条CDR。CDR应以ASN.1编码，通常使用编码规则，也可以使用[PER编码规则](https://zh.wikipedia.org/wiki/ASN.1#PER_範例（未對齊） "wikilink")。
2.  发送“可能重复”（）的数据记录：该消息可以携带1条至数条已经向其他CGF发送过的CDR。
3.  取消数据记录：该消息通知一个CGF从其“可能重复”缓存中清除1条或多条CDR。
4.  释放数据记录：该消息通知一个CGF处理（使之生效）1条或多条CDR，并从“可能重复”缓存中移除。

Data Record Transfer消息对提供了一套防止丢失或重复计算CDR的机制。其大致机理为，CDF为每一条CDR编制序列号，CGF必须在Data Record Transfer Response消息中逐一对每一个序列号进行确认，未得到确认的CDR将被重传。正常的CDR在被收到后会被转存到非易失性存储设备（例如硬盘）中，但重传的CDR会被标记为“可能重复”，CGF接收到这样的CDR，会存入一个专用的队列中。只有得到CDF的再度确认，才会写入非易失性存储设备。数据记录。此机制细节可以参看3GPP TS 32.295。

发送数据记录时可以携带0条CDR。这使得在CGF重新恢复正常后，CDF可以向CGF发送Data Record Transfer消息，只携带CDR的序列号但不携带CDR，以获取这些CDR在CGF侧的状态。

#### Data Record Transfer Response

该消息携带对CDR传输和处理结果的确认。协议允许CGF在1条Data Record Transfer Response中确认多条Request消息携带的CDR以减少传输，但必须在CDF所指定的超时时长之内回复。

对每个CDR的确认都附带一个原因值。在负载过高时，CGF可以通过特定的原因值拒绝处理CDR，从而使CDF选择其他CGF来处理。

## 注释

## 参考文献

[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink") [Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink") [Category:3GPP標準](https://zh.wikipedia.org/wiki/Category:3GPP標準 "wikilink")

1.
2.