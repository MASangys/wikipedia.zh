**PPPoE**（），[以太网上的点对点协议](../Page/以太网.md "wikilink")，是将[点对点协议](../Page/点对点协议.md "wikilink")（PPP）封装在[以太网](../Page/以太网.md "wikilink")（Ethernet）框架中的一种网络隧道协议。由于协议中集成PPP协议，所以实现出传统[以太网不能提供的](../Page/以太网.md "wikilink")[身份验证](https://zh.wikipedia.org/wiki/身份验证 "wikilink")、[加密以及](https://zh.wikipedia.org/wiki/加密 "wikilink")[压缩等功能](../Page/数据压缩.md "wikilink")，也可用于[纜線數據機](https://zh.wikipedia.org/wiki/纜線數據機 "wikilink")（cable
modem）和[数位用户线路](https://zh.wikipedia.org/wiki/数位用户线路 "wikilink")（DSL）等以[以太网协议向用户提供](../Page/以太网.md "wikilink")[接入服务的协议体系](https://zh.wikipedia.org/wiki/網路存取 "wikilink")。

本质上，它是一个允许在以太网
[广播域中的两个以太网接口间建立点对点隧道的协议](https://zh.wikipedia.org/wiki/广播域 "wikilink")。

以[Linux系统常用的](../Page/Linux.md "wikilink")[pppd为例](https://zh.wikipedia.org/wiki/pppd "wikilink")，支持[PPP接口上面的](../Page/点对点协议.md "wikilink")[IP](https://zh.wikipedia.org/wiki/IP "wikilink")、[IPv6和](../Page/IPv6.md "wikilink")[IPX网络层协议](https://zh.wikipedia.org/wiki/IPX "wikilink")。

它使用传统的基于PPP的软件来管理一个不是使用串行线路而是使用类似于以太网的有向分组网络的连接。这种有登陆和口令的标准连接，方便了接入供应商的记费。并且，连接的另一端仅当PPPoE连接接通时才分配IP地址，所以允许IP地址的动态复用。

PPPoE是由UUNET、[Redback
Networks和RouterWare所开发的](https://zh.wikipedia.org/wiki/Redback_Networks "wikilink")。发表于RFC
2516说明中。

## PPPoE的阶段

PPPoE分为两个阶段：

### PPPoE发现

由于传统的PPP连接是建立在串行链路或拨号时建立的ATM虚电路连接上的，所有的PPP-{zh-hans:帧;
zh-hant:訊框}-都可以确保通过电缆到达对端。但是以太网是多路存取的，每一个节点都可以相互访问。乙太帧包含目的节点的物理地址（[MAC地址](../Page/MAC地址.md "wikilink")），这使得该帧可以到达预期的目的节点。
因此，为了在以太网上建立连接而交换PPP控制报文之前，两个端点都必须知道对端的MAC地址，这样才可以在控制报文中携带MAC地址。PPPoE发现阶段做的就是这件事。除此之外，在此阶段还将建立一个会话ID，以供后面交换报文使用。

### PPP会话

一旦连接的双方知道了对端的MAC地址，会话就建立了。

## PPPoE发现阶段（PPPoED）

尽管传统的PPP是点对点协议，但是由于多个主机可以通过一个单独的物理连接连接到一个服务提供者，因此PPPoE本身就是一个客户端-服务器的关系。
发现过程包含四个步骤。主机作为客户端，[ISP端的](https://zh.wikipedia.org/wiki/ISP "wikilink")[访问集中器作为服务器](https://zh.wikipedia.org/wiki/访问集中器 "wikilink")。这四步在下面详述。最后一步第五步是关闭一个现存会话的方法。

### 客户端到服务器：Initiation（PADI）

**PADI**为PPPoE Active Discovery Initiation的缩写。\[1\]
如果一个用户想要使用DSL拨号连入Internet，那么他的计算机必须首先在其ISP的[网络服务提供点](https://zh.wikipedia.org/wiki/POP网络服务提供点 "wikilink")（POP）找到DSL访问集中器（DSL-AC）。在以太网上通讯只能通过[MAC地址](../Page/MAC地址.md "wikilink")。由于计算机不知道DSL-AC的MAC地址，于是就在以太网上[广播一个PADI报文](../Page/廣播_\(網路\).md "wikilink")。这个报文中包含发送者的MAC地址。

PADI报文示例：

    Frame 1 (44 bytes on wire, 44 bytes captured)
    Ethernet II, Src: 00:50:da:42:d7:df, Dst: ff:ff:ff:ff:ff:ff
    PPP-over-Ethernet Discovery
      Version: 1
      Type 1
      Code Active Discovery Initiation (PADI)
      Session ID: 0000
      Payload Length: 24
    PPPoE Tags
      Tag: Service-Name
      Tag: Host-Uniq
        Binary Data: (16 bytes)

*Src.*（=source）包含发送计算机的MAC地址。
*Dst.*（=destination）为以太网广播地址。
PADI报文可能被一个以上的DSL-AC接收。 只有可以提供“服务名称”（Service-Name）的DSL-AC设备才应该回复。

### 服务器到客户端：Offer (PADO)

**PADO**为PPPoE Active Discovery Offer的缩写。\[2\]
一旦用户计算机发送了PADI报文，DSL-AC就会使用PADI中提供的MAC地址回复一个PADO报文。PADO报文中包含了DSL-AC的MAC地址、名称以及服务名。如果多于一个POP的DSL-AC回复了PADO报文，用户计算机就使用提供的名称和服务来从中选择一个。

PADO报文示例：

    Frame 2 (60 bytes on wire, 60 bytes captured)
    Ethernet II, Src: 00:0e:40:7b:f3:8a, Dst: 00:50:da:42:d7:df
    PPP-over-Ethernet Discovery
      Version: 1
      Type 1
      Code Active Discovery Offer (PADO)
      Session ID: 0000
      Payload Length: 36
    PPPoE Tags
      Tag: AC-Name
        String Data: IpzbrOOl
      Tag: Host-Uniq
        Binary Data: (16 bytes)

*AC-Name -\>字符串数据*包含了AC名称，这里为“Ipzbr001”（莱比锡的Arcor DSL-AC）
*Src.*包含了DSL-AC的MAC地址。
DSL-AC的MAC地址还包含了了DSL-AC的制造商信息（这里为[北电网络](../Page/北电网络.md "wikilink")）。

### 客户端到服务器：Request（PADR）

**PADR**为PPPoE Active Discovery Request的缩写。\[3\]
当用户计算机收到一个来自DSL-AC的可接受的PADO报文后，就会发送一个PADR报文给DSL-AC，用来确认接受发送PADO报文的DSL-AC所提供的PPPoE连接。

### 服务器到客户端：Session-confirmation（PADS）

**PADS**为PPPoE Active Discovery Session-confirmation的缩写。\[4\]
上面的PADR报文由DSL-AC的PADS报文进行确认，并在其中携带一个会话ID。用户计算机与此DSL-AC的连接现在就完整建立了。

### 任何一方：Termination（PADT）

**PADT**为PPPoE Active Discovery Termination的缩写。\[5\]
这个报文终结用户计算机与POP的的连接，可由用户计算机或DSL-AC任意一方发送。

## 使用時的缺點

1.  使用Internet前，需先透過PPPoE進行撥接，而非電腦開機後立即上網。（開機後立即上網，詳見[DHCP](https://zh.wikipedia.org/wiki/DHCP "wikilink")，有些ISP有提供第1台PC自DHCP取得固定IP）
2.  部分[ISP会對PPPoE的連線用戶採取定時斷線](https://zh.wikipedia.org/wiki/ISP "wikilink")，以節省營運成本及IP位址的佔用，故對於需長時間掛網的使用者較不利。但也有部份ISP为提供用戶選擇PPPoE可發配非固定IP或固定IP的服务。
3.  目前[Windows
    XP之後的](../Page/Windows_XP.md "wikilink")[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")，[Mac
    OS
    X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[Linux等操作系统等皆已內建PPPoE的撥接功能](../Page/Linux.md "wikilink")，更早期的操作系统需另行安裝PPPoE的撥接程式，如Enternet
    300、RAS PPPoE等。

## 参考资料

## 外部連結

  - RFC 2516 - *A Method for Transmitting PPP Over Ethernet (PPPoE)*
  - RFC 3817 - *Layer 2 Tunneling Protocol (L2TP) Active Discovery Relay
    for PPP over Ethernet (PPPoE)*
  - [在 Linux 上拨号上网
    (PPPoE)](https://linux.xidian.edu.cn/wiki/network/PPPoE)

[Category:邏輯鏈路控制](https://zh.wikipedia.org/wiki/Category:邏輯鏈路控制 "wikilink")
[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")

1.  <http://tools.ietf.org/html/rfc2516#section-5.1>
2.
3.  <http://tools.ietf.org/html/rfc2516#section-5.3>
4.  <http://tools.ietf.org/html/rfc2516#section-5.4>
5.  <http://tools.ietf.org/html/rfc2516#section-5.5>