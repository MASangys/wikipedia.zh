> 本文内容由[Netlink](https://zh.wikipedia.org/wiki/Netlink)转换而来。


**Netlink套接字家族**（）是一組Linux核心介面（Linux kernel interfaces），可用於[行程間通訊](../Page/行程間通訊.md "wikilink")，Linux内核与[用户空间的进程间](https://zh.wikipedia.org/wiki/用户空间 "wikilink")、用户进程间的通讯。然而它并不像[网络套接字可以用于主机间通讯](https://zh.wikipedia.org/wiki/网络套接字 "wikilink")，Netlink只能用于同一主机上进程通讯，并通过PID来标识它们。

Netlink被设计为在[Linux内核](../Page/Linux内核.md "wikilink")与用户空间进程传送各种网络信息。网络工具[iproute2利用](https://zh.wikipedia.org/wiki/iproute2 "wikilink") Netlink从用户空间与内核进行通讯。Netlink由一个在用户空间的标准的Socket接口和内核模块 提供的内核API组成。Netlink的设计比[ioctl更加灵活](https://zh.wikipedia.org/wiki/ioctl "wikilink")，Netlink使用了AF_NETLINK Socket 家族。

[RFC 3549](http://tools.ietf.org/html/rfc3549)详细的描述了Netlink协议。

## 历史

Netlink用于替代复杂和不够灵活的ioctl通讯方式，ioctl方法主要用设定和取得外部socket， 为了提供向后兼容，ioctl将一直被Linux内核所支持，用法如下：

`error = ioctl(ip_socket, ioctl_type, &value_result);`

Netlink在Linux内核2.0版本中作为字符设备被首次提供使用。这个接口已经过时了，但是作为 一种ioctl通讯方法，它仍可继续使用。Netlink socket接口从Linux内核2.2开始提供使用。

## 包结构

不像[BSD套接字存取互联网协议那样](https://zh.wikipedia.org/wiki/Socket "wikilink")，头信息中的标识和目的地都是自动生成（如[TCP](https://zh.wikipedia.org/wiki/TCP "wikilink")）， Netlink消息头（结构体nlmsghdr）必须由发送方准备好，就像socket工作在SOCK_RAW模式下 一样。尽管SOCK_DGRAM被用于创建它。

<table style="width:136%;">
<colgroup>
<col style="width: 40%" />
<col style="width: 48%" />
<col style="width: 48%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Bit offset</p></th>
<th><p>0–15</p></th>
<th><p>16–31</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td><p>Message length</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>32</p></td>
<td><p>Type</p></td>
<td><p>Flags</p></td>
</tr>
<tr class="odd">
<td><p>64</p></td>
<td><p>Sequence number</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>96</p></td>
<td><p>PID</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>128+</p></td>
<td><p> <br />
Data<br />
 </p></td>
<td></td>
</tr>
</tbody>
</table>

然而，数据部分可能进一步嵌套其它特定的子消息系统。

## Netlink套接字簇

AF_NETLINK协议家族提供了多个子协议。每个接口连接不同的内核组件并且有各自的消息集。 如：

`int socket(AF_NETLINK, SOCK_DGRAM or SOCK_RAW, protocol)`

由于缺少标准，SOCK_DGRAM和SOCK_RAW并不保证在每个Linux发行版（或其它操作系统）被声 明。有些源码中声明两种都可以使用，[红帽的文档中声明SOCK](https://zh.wikipedia.org/wiki/红帽 "wikilink")_RAW一直可以被使用，而 iproute2交换使用两者。

## Netlink协议

Netlink所支持的协议如下（并不完全）： **NETLINK_ROUTE** NETLINK_ROUTE提供路由和连接信息。这些信息主要被用户空间的路由守护进程使用。对于这个 协议，Linux声明了大量的子消息：

  - 链路层：**RTM_NEWLINK, RTM_DELLINK, RTM_GETLINK, RTM_SETLINK**
  - 地址设定：**RTM_NEWADDR, RTM_DELADDR, RTM_GETADDR**
  - 路由表：**RTM_NEWROUTE, RTM_DELROUTE, RTM_GETROUTE**
  - 邻居缓存（Neighbor Cache）：**RTM_NEWNEIGH, RTM_DELNEIGH, RTM_GETNEIGH**
  - 路由规则：**RTM_NEWRULE, RTM_DELRULE, RTM_GETRULE**
  - Queuing Discipline Settings: **RTM_NEWQDISC, RTM_DELQDISC, RTM_GETQDISC**
  - Traffic Classes used with Queues: **RTM_NEWTCLASS, RTM_DELTCLASS, RTM_GETTCLASS**
  - 流量过滤：**RTM_NEWTFILTER, RTM_DELTFILTER, RTM_GETTFILTER**
  - 其它：**RTM_NEWACTION, RTM_DELACTION, RTM_GETACTION, RTM_NEWPREFIX, RTM_GETPREFIX, RTM_GETMULTICAST, RTM_GETANYCAST, RTM_NEWNEIGHTBL,RTM_GETNEIGHTBL, RTM_SETNEIGHTBL**

**NETLINK_FIREWALL**

  -
    NETLINK_FIREWALL提供给用户空间用户程序一个接口，用户空间应用程序利用这个接口可以从[防火墙](../Page/防火墙.md "wikilink")接收包。

**NETLINK_NFLOG**

  -
    NETLINK_NFLOG提供了一个iptables和Netfilter间通讯的接口。

**NETLINK_ARPD**

  -
    NETLINK_ARPD提供了一个接口用于从用户空间来管理ARP表。

**NETLINK_AUDIT**

  -
    NETLINK_AUDIT只能在Linux内核2.6.6及以后才可以使用，它提供了一个用户审计子系统的接口。

**NETLINK_IPV6_FW**

  -
    NETLINK_IPV6_FW提供了一个将包从netfilter传送到用户空间的接口。

**NETLINK_ROUTE6**

**NETLINK_TAPBASE**

**NETLINK_TCPDIAG**

**NETLINK_XFRM**

  -
    NETLINK_XFRM提供了一个接口用于管理IPSec安全组件(IPSec Security association)和安全策略数据库的接口。主要被密钥管理的守护进程用于[互联网密钥交换](https://zh.wikipedia.org/wiki/互联网密钥交换 "wikilink")（Internet Key Exchange）协议。

### 用户自定义的Netlink协议

用户也可以在自己的内核中添加自定义的Netlink处理器。这允许其它Netlink协议被开发用于连接新的内核模块。\[1\]

## 参考资料

<references/>

## 外部链接

  - [Pablo Neira Ayuso, Rafael M. Gasca, Laurent Lefèvre. Communicating between the kernel and user-space in Linux using Netlink sockets. Software: Practice and Experience, 40(9):797-810, August 2010](https://web.archive.org/web/20110902031641/http://1984.lsi.us.es/~pablo/docs/spae.pdf)
  - [Why and How to Use Netlink Sockets](http://www.linuxjournal.com/article/7356)
  - [RFC 3549](http://www.ietf.org/rfc/rfc3549.txt)
  - <http://netfilter.org/projects/libmnl> — “Minimalist Library for Netlink” — userspace library for construction and parsing of Netlink messages
  - <http://www.infradead.org/~tgr/libnl> = "Netlink Protocol Library Suite" - full functional library covering almost all aspects of working with netlink sockets
  - [Manipulating the Networking Environment Using RTNETLINK](http://www.linuxjournal.com/article/8498)
  - [Netlink Sockets - Overview](http://qos.ittc.ku.edu/netlink/html/index.html)

[Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink")

1.  [Why and How to Use Netlink Sockets](http://www.linuxjournal.com/article/7356)