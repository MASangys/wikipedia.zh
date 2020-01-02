> 本文内容由[IPv4](https://zh.wikipedia.org/wiki/IPv4)转换而来。


**网际协议版本4**（，缩写：**IPv4**，又稱**網際網路通訊協定第四版**）是[网际协议](../Page/网际协议.md "wikilink")开发过程中的第四个修订版本，也是此协议第一个被广泛部署和使用的版本。其後繼版本為[IPv6](../Page/IPv6.md "wikilink")，直到2011年，[IANA](https://zh.wikipedia.org/wiki/IANA "wikilink") IPv4位址完全用盡時，IPv6仍处在部署的初期。

IPv4在[IETF于](https://zh.wikipedia.org/wiki/IETF "wikilink")1981年9月发布的 RFC 791 中被描述，此RFC替换了于1980年1月发布的 RFC 760。

IPv4是一种[无连接的协议](https://zh.wikipedia.org/wiki/無連接式通訊 "wikilink")，操作在使用[分组交换](../Page/分组交换.md "wikilink")的链路层（如[以太网](../Page/以太网.md "wikilink")）上。此协议会尽最大努力交付数据包，意即它不保证任何数据包均能送达目的地，也不保证所有数据包均按照正确的顺序无重复地到达。这些方面是由上层的传输协议（如[传输控制协议](../Page/传输控制协议.md "wikilink")）处理的。

## 地址

IPv4使用32位（4字节）地址，因此[地址空间中只有](https://zh.wikipedia.org/wiki/地址空间 "wikilink")4,294,967,296（2<sup>32</sup>）个地址。不过，一些地址是为特殊用途所保留的，如[专用网络](../Page/专用网络.md "wikilink")（约1800万个地址）和[多播](../Page/多播.md "wikilink")地址（约2.7亿个地址），这减少了可在互联网上路由的地址数量。随着地址不断被分配给最终用户，[IPv4地址枯竭问题也在随之产生](https://zh.wikipedia.org/wiki/IPv4地址枯竭问题 "wikilink")。基于[分类网络](../Page/分类网络.md "wikilink")、[无类别域间路由](../Page/无类别域间路由.md "wikilink")和[网络地址转换](../Page/网络地址转换.md "wikilink")的地址结构重构显著地减少了地址枯竭的速度。但在2011年2月3日，在最后5个地址块被分配给5个[区域互联网注册管理机构](../Page/区域互联网注册管理机构.md "wikilink")之后，IANA的主要地址池已经用尽。

这些限制刺激了仍在开发早期的作为目前唯一的长期解决方案的[IPv6](../Page/IPv6.md "wikilink")的部署。

### 地址格式

IPv4地址可被写作任何表示一个32位整数值的形式，但为了方便人类阅读和分析\[1\]，它通常被写作[点分十进制的形式](https://zh.wikipedia.org/wiki/点分十进制 "wikilink")，即四个字节被分开用[十进制](../Page/十进制.md "wikilink")写出，中间用点分隔。

下表展示了几种不同的格式：

| 格式                                                      | 值                     | 从点分十进制转换       |
| ------------------------------------------------------- | --------------------- | -------------- |
| [点分十进制](https://zh.wikipedia.org/wiki/点分十进制 "wikilink") | `192.0.2.235`         | 不适用            |
| 点分十六进制\[2\]                                             | `0xC0.0x00.0x02.0xEB` | 每个字节被单独转换为十六进制 |
| 点分八进制\[3\]                                              | `0300.0000.0002.0353` | 每个字节被单独转换为八进制  |
| [十六进制](../Page/十六进制.md "wikilink")                      | `0xC00002EB`          | 将点分十六进制连在一起    |
| [十进制](../Page/十进制.md "wikilink")                        | `3221226219`          | 用十进制写出的32位整数   |
| [八进制](https://zh.wikipedia.org/wiki/八进制 "wikilink")     | `030000001353`        | 用八进制写出的32位整数   |

此外，在点分格式中，每个字节都可用任意的进制表达。如，`192.0x00.0002.235`是一种合法（但不常用）的表示。

### 分配

最初，一个IP地址被分成两部分：網路識別碼在地址的高位字节中，主機識別碼在剩下的部分中。

为了克服这个限制，在随后出现的[分类网络](../Page/分类网络.md "wikilink")中，地址的高位字节被重定义为网络的*类*(Class)。这个系统定义了五个类別：A、B、C、D和E。A、B和C类有不同的网络类別长度，剩余的部分被用来识别网络内的主机，这就意味着每个网络类別有着不同的给主机编址的能力。D类被用于[多播](../Page/多播.md "wikilink")地址，E类被留作将来使用。

| 前8位地址范围 | 类 | 路由形式                                              | 占地址总空间的比例 |
| ------- | - | ------------------------------------------------- | --------- |
| 0-127   | A | [单播](https://zh.wikipedia.org/wiki/单播 "wikilink") | 1/2       |
| 128-191 | B | [单播](https://zh.wikipedia.org/wiki/单播 "wikilink") | 1/4       |
| 192-223 | C | [单播](https://zh.wikipedia.org/wiki/单播 "wikilink") | 1/8       |
| 224-239 | D | [多播](../Page/多播.md "wikilink")                    | 1/16      |
| 240-255 | E | \-                                                | 1/16      |

IPv4地址空间分类\[4\]

1993年，[无类别域间路由](../Page/无类别域间路由.md "wikilink")（CIDR）正式地取代了[分类网络](../Page/分类网络.md "wikilink")，后者也因此被称为“有类别”的。

CIDR被设计为可以重新划分地址空间，因此小的或大的地址块均可以分配给用户。CIDR创建的分层架构由[互联网号码分配局](../Page/互联网号码分配局.md "wikilink")（IANA）和[区域互联网注册管理机构](../Page/区域互联网注册管理机构.md "wikilink")（RIR）进行管理，每个RIR均维护着一个公共的[WHOIS](../Page/WHOIS.md "wikilink")数据库，以此提供IP地址分配的详情。

### 特殊用途的地址

| [CIDR地址块](https://zh.wikipedia.org/wiki/CIDR "wikilink") | 描述                                                    | 参考资料     |
| -------------------------------------------------------- | ----------------------------------------------------- | -------- |
| 0.0.0.0/8                                                | 本网络（仅作为源地址时合法）                                        | RFC 5735 |
| 10.0.0.0/8                                               | [专用网络](../Page/专用网络.md "wikilink")                    | RFC 1918 |
| 100.64.0.0/10                                            | [电信级NAT](../Page/电信级NAT.md "wikilink")                | RFC 6598 |
| 127.0.0.0/8                                              | [环回](../Page/Localhost.md "wikilink")                 | RFC 5735 |
| 169.254.0.0/16                                           | [链路本地](../Page/链路本地地址.md "wikilink")                  | RFC 3927 |
| 172.16.0.0/12                                            | [专用网络](../Page/专用网络.md "wikilink")                    | RFC 1918 |
| 192.0.0.0/24                                             | 保留（IANA）                                              | RFC 5735 |
| 192.0.2.0/24                                             | TEST-NET-1，文档和示例                                      | RFC 5735 |
| 192.88.99.0/24                                           | [6to4](../Page/6to4.md "wikilink")中继                  | RFC 3068 |
| 192.168.0.0/16                                           | [专用网络](../Page/专用网络.md "wikilink")                    | RFC 1918 |
| 198.18.0.0/15                                            | 网络基准测试                                                | RFC 2544 |
| 198.51.100.0/24                                          | TEST-NET-2，文档和示例                                      | RFC 5737 |
| 203.0.113.0/24                                           | TEST-NET-3，文档和示例                                      | RFC 5737 |
| 224.0.0.0/4                                              | [多播](../Page/多播.md "wikilink")（之前的D类网络）               | RFC 3171 |
| 240.0.0.0/4                                              | 保留（之前的E类网络）                                           | RFC 1700 |
| 255.255.255.255                                          | [受限广播](https://zh.wikipedia.org/wiki/受限广播 "wikilink") | RFC 919  |

保留的地址块

### 专用网络

在IPv4所允许的大约四十亿地址中，三个地址块被保留作[专用网络](../Page/专用网络.md "wikilink")。这些地址块在专用网络之外不可路由，专用网络之内的主机也不能直接与公共网络通信。但通过[网络地址转换](../Page/网络地址转换.md "wikilink")（NAT），使用这些地址的主机可以像拥有共有地址的主机在互联网上通信。

下表展示了三个被保留作专用网络的地址块（RFC 1918）：

| 名字   | 地址范围                        | 地址数量       | 有类别的描述    | 最大的[CIDR地址块](https://zh.wikipedia.org/wiki/CIDR "wikilink") |
| ---- | --------------------------- | ---------- | --------- | ----------------------------------------------------------- |
| 24位块 | 10.0.0.0–10.255.255.255     | 16,777,216 | 一个A类      | 10.0.0.0/8                                                  |
| 20位块 | 172.16.0.0–172.31.255.255   | 1,048,576  | 连续的16个B类  | 172.16.0.0/12                                               |
| 16位块 | 192.168.0.0–192.168.255.255 | 65,536     | 连续的256个C类 | 192.168.0.0/16                                              |

#### 虚拟专用网络

通常情况下，路由器根据数据报文的目的地址决定转发数据报文的下一跳地址。使用专用网络地址作为目的地址的数据包通常无法被公共路由器正确送达，因为公共路由器没有相应的路由信息，即无法得知如何才能转发到该IP地址。因此，这就需要通过一种方法，将指引数据报文转发的下一跳地址和真正要传输的目的地址分离开。于是就使用[虚拟专用网](https://zh.wikipedia.org/wiki/虚拟专用网 "wikilink")，将IP报文封装在其他报文内，以便于通过公网上的公共路由器，达到能处理该封包内层数据的网络设备上解除封包后，该数据包可以被继续转发到目的地址。

将数据报文封装的过程中，可以将数据报文封装于IP报文中，也可以使用[多协议标签交换](../Page/多协议标签交换.md "wikilink")协议等，通过其他协议引导数据报文转发。也可以封装同时加密数据，以保护数据内容。

### 链路本地地址

RFC 5735中将地址块169.254.0.0/16保留为特殊用于链路本地地址，这些地址仅在链路上有效（如一段本地网络或一个端到端连接）。这些地址与专用网络地址一样不可路由，也不可作为公共网络上报文的源或目的地址。链路本地地址主要被用于地址自动配置：当主机不能从DHCP服务器处获得IP地址时，它会用这种方法生成一个。

当这个地址块最初被保留时，地址自动配置尚没有一个标准。为了填补这个空白，[微软](../Page/微软.md "wikilink")创建了一种叫**自动专用IP寻址**（APIPA）的实现。因微软的市场影响力，APIPA已经被部署到了几百万机器上，也因此成为了事实上的工业标准。许多年后，[IETF为此定义了一份正式的标准](https://zh.wikipedia.org/wiki/IETF "wikilink")：RFC 3927，命名为“IPv4链路本地地址的动态配置”。

### 环回地址(Loopback Address)

地址块127.0.0.0/8被保留作环回通信用。此范围中的地址绝不应出现在主机之外，发送至此地址的报文被作为同一虚拟网络设备上的入站报文（环回），主要用于检查TCP/IP协议栈是否正确运行和本机对本机的链接。

### 以0或255结尾的地址

一个常见的误解是以0或255结尾的地址永远不能分配给主机：这仅在子網路遮罩至少24位元长度时（旧的C类地址，或CIDR中的/24到/32）才成立。

在有类别的编址中，只有三种可能的子網路遮罩：A类：255.0.0.0，B类：255.255.0.0，C类：255.255.255.0。如，在子網路192.168.5.0/255.255.255.0（即192.168.5.0/24）中，網路識別碼192.168.5.0用来表示整个子網路，所以它不能用来标识子網路上的某个特定主机。

[广播地址允许数据包发往子網路上的所有设备](https://zh.wikipedia.org/wiki/广播地址 "wikilink")。一般情況下，廣播位址是藉由子網路遮罩的位元反码並和網路識別碼執行 OR 的位元運算得到，即广播地址是子網路中的最后一个地址。在上述例子中，广播地址是192.168.5.255，所以为了避免歧义，这个地址也不能被分配给主机。在A、B和C类网络中，广播地址总是以255结尾。

但是，这并不意味着每个以255结尾的地址都不能用做主机地址。比如，在B类子网192.168.0.0/255.255.0.0（即192.168.0.0/16）中，广播地址是192.168.255.255（主机位全1）。在这种情况下，尽管可能带来误解，但192.168.1.255、192.168.2.255等地址可以被分配给主机。同理，192.168.0.0作为網路識別碼不能被分配，但192.168.1.0、192.168.2.0等都是可以的。

随着CIDR的到来，广播地址不一定总是以255结尾（广播地址是指主机位都为1的地址，255只是其中一种情况）。比如，子網路203.0.113.16/28的广播地址是203.0.113.31。过程如下：

网络：203.0.113.16

掩码：255.255.255.240

掩码反码：0.0.0.15

OR操作：

00010000 | 00001111 = 00011111 =31

一般情況下，子網路的第一个和最后一个地址分别被作为網路識別碼和广播地址，任何其它地址都可以被分配给其上的主机。

### 地址解析

互联网上的主机通常被指定，但IP报文的路由是由IP地址而不是这些名字决定的。这就需要将域名翻译（解析）成地址。

[域名系统](../Page/域名系统.md "wikilink")（DNS）提供了域名转换为IP地址的服务。与CIDR相像，DNS是层级结构。

## 地址空間枯竭

從20世紀80年代起，一個很明顯的問題是IPv4地址在以比設計時的預計更快的速度耗盡。\[5\] 這是創建[分類網絡](https://zh.wikipedia.org/wiki/分類網絡 "wikilink")、[無類別域間路由](https://zh.wikipedia.org/wiki/無類別域間路由 "wikilink")，和最終決定重新設計基於更長地址的互聯網協議（[IPv6](../Page/IPv6.md "wikilink")）的誘因。

一些市場力量也加快了IPv4地址的耗盡，如：

  - 互聯網用戶的急速增長；
  - 總是開著的設備：[ADSL](../Page/ADSL.md "wikilink")[調制解調器](https://zh.wikipedia.org/wiki/調制解調器 "wikilink")、[纜線數據機等](https://zh.wikipedia.org/wiki/纜線數據機 "wikilink")；
  - 移動設備：[筆記型電腦](../Page/筆記型電腦.md "wikilink")、[PDA](https://zh.wikipedia.org/wiki/PDA "wikilink")、[移動電話等](https://zh.wikipedia.org/wiki/移動電話 "wikilink")。

隨著互聯網的增長，各種各樣的技術隨之產生以應對IPv4地址的耗盡，如：

  - [網絡地址轉換](https://zh.wikipedia.org/wiki/網絡地址轉換 "wikilink")（NAT）；
  - [專用網絡的使用](../Page/专用网络.md "wikilink")；
  - [動態主機設置協議](https://zh.wikipedia.org/wiki/動態主機設置協議 "wikilink")（DHCP）；
  - 基於名字的[虛擬主機](https://zh.wikipedia.org/wiki/虛擬主機 "wikilink")；
  - 區域互聯網註冊管理機構對地址分配的控制；
  - 對互聯網初期分配的大地址塊的回收。

隨著[IANA把最後](https://zh.wikipedia.org/wiki/IANA "wikilink")5個地址塊分配給5個RIR，其主地址池在2011年2月3日耗盡。\[6\] 許多地址分配和消耗的模型都預測第一個耗盡地址的RIR會在2011年的下半年出現。\[7\]

廣泛被接受且已被標準化的解決方案是遷移至[IPv6](../Page/IPv6.md "wikilink")。IPv6的地址長度從IPv4的32位增長到了128位，以此提供了更好的路由聚合，也為最終用戶分配最小為2<sup>64</sup>個主機地址的地址塊成為可能。遷移過程正在進行，但其完成仍需要相當的時間。

## 网络地址转换

对地址的快速分配和其造成的地址短缺促成了许多有效应用地址的方法，其中一种就是网络地址转换（NAT）。

## 报文结构

IP报文包含IP首部和数据部分

### 首部

IPv4报文的首部包含14个字段，其中13个是必须的，第14个是可选的（红色标出），并命名为：“选项”字段。首部中的字段均以[大端序包装](https://zh.wikipedia.org/wiki/大端序 "wikilink")，在以下的图表和讨论中，[最高有效位](https://zh.wikipedia.org/wiki/最高有效位 "wikilink")（Most Significant bit）被标记为0。

<table style="width:277%;">
<colgroup>
<col style="width: 40%" />
<col style="width: 12%" />
<col style="width: 12%" />
<col style="width: 24%" />
<col style="width: 60%" />
<col style="width: 90%" />
<col style="width: 39%" />
</colgroup>
<thead>
<tr class="header">
<th><p>位偏移</p></th>
<th><p>0–3</p></th>
<th><p>4–7</p></th>
<th><p>8–13</p></th>
<th><p>14-15</p></th>
<th><p>16–18</p></th>
<th><p>19–31</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td><p>版本</p></td>
<td><p>首部长度</p></td>
<td><p>区分服务</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/显式拥塞通告" title="wikilink">显式拥塞通告</a></p></td>
<td><p>全长</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>32</p></td>
<td><p>标识符</p></td>
<td><p>标志</p></td>
<td><p>分片偏移</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>64</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/存活時間" title="wikilink">存活时间</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/协议" title="wikilink">协议</a></p></td>
<td><p>首部检验和</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>96</p></td>
<td><p>源IP地址</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>128</p></td>
<td><p>目的IP地址</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>160</p></td>
<td><p>选项（如首部长度&gt;5）</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>160<br />
or<br />
192+</p></td>
<td><p> <br />
数据<br />
 </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

  - 版本（Version）
    版本字段占4bit，通信双方使用的版本必须一致。对于IPv4，字段的值是4。

<!-- end list -->

  - 首部长度（Internet Header Length， IHL）
    占4bit，首部长度说明首部有多少32位字（4字节）。由于IPv4首部可能包含数目不定的选项，这个字段也用来确定数据的偏移量。这个字段的最小值是5（二进制0101），相当于5\*4=20字节（RFC 791），最大十进制值是15。

<!-- end list -->

  - 区分服务（Differentiated Services，DS）
    占6bit，最初被定义为[服务类型字段](https://zh.wikipedia.org/wiki/服务类型 "wikilink")，实际上并未使用，但1998年被IETF重定义为区分服务RFC 2474。只有在使用区分服务时，这个字段才起作用，在一般的情况  下都不使用这个字段。例如需要实时数据流的技术会应用这个字段，一个例子是[VoIP](../Page/VoIP.md "wikilink")。

<!-- end list -->

  - 显式拥塞通告（ Explicit Congestion Notification，ECN）
    在RFC 3168中定义，允许在不丢弃报文的同时通知对方网络拥塞的发生。ECN是一种可选的功能，仅当两端都支持并希望使用，且底层网络支持时才被使用。

<!-- end list -->

  - 全长（Total Length）
    这个16位字段定义了报文总长，包含首部和数据，单位为字节。这个字段的最小值是20（20字节首部+0字节数据），最大值是2<sup>16</sup>-1=65,535。IP规定所有主机都必须支持最小576字节的报文，这是假定上层数据长度512字节，加上最长IP首部60字节，加上4字节富裕量，得出576字节，但大多数现代主机支持更大的报文。当下层的数据链路协议的[最大传输单元](../Page/最大传输单元.md "wikilink")（MTU）字段的值小于IP报文长度时间，报文就必须被分片，详细见下个标题。

<!-- end list -->

  - 标识符（Identification）
    占16位，这个字段主要被用来唯一地标识一个报文的所有分片，因为分片不一定按序到达，所以在重组时需要知道分片所属的报文。每产生一个数据报，计数器加1，并赋值给此字段。一些实验性的工作建议将此字段用于其它目的，例如增加报文跟踪信息以协助探测伪造的源地址。\[8\]

<!-- end list -->

  - 标志 （Flags）
    这个3位字段用于控制和识别分片，它们是：
      - 位0：保留，必须为0；
      - 位1：禁止分片（Don’t Fragment，DF），当DF=0时才允许分片；
      - 位2：更多分片（More Fragment，MF），MF=1代表后面还有分片，MF=0 代表已经是最后一个分片。
    如果DF标志被设置为1，但路由要求必须分片报文，此报文会被丢弃。这个标志可被用于发往没有能力组装分片的主机。
    当一个报文被分片，除了最后一片外的所有分片都设置MF为1。最后一个片段具有非零片段偏移字段，将其与未分片数据包区分开，未分片的偏移字段为0。

<!-- end list -->

  - 分片偏移 （Fragment Offset）
    这个13位字段指明了每个分片相对于原始报文开头的偏移量，以8字节作单位。

<!-- end list -->

  - 存活时间（Time To Live，TTL）
    这个8位字段避免报文在互联网中永远存在（例如陷入路由环路）。存活时间以秒为单位，但小于一秒的时间均向上取整到一秒。在现实中，这实际上成了一个跳数计数器：报文经过的每个路由器都将此字段减1，当此字段等于0时，报文不再向下一跳传送并被丢弃，最大值是255。常规地，一份[ICMP报文被发回报文发送端说明其发送的报文已被丢弃](https://zh.wikipedia.org/wiki/ICMP "wikilink")。这也是[traceroute的核心原理](https://zh.wikipedia.org/wiki/traceroute "wikilink")。

<!-- end list -->

  - 协议 （Protocol）
    占8bit，这个字段定义了该报文数据区使用的协议。[IANA维护着一份协议列表](https://zh.wikipedia.org/wiki/IANA "wikilink")（最初由RFC 790定义），详细参见[IP协议号列表](../Page/IP协议号列表.md "wikilink")。

<!-- end list -->

  - 首部检验和 （Header Checksum）
    这个16位[检验和字段只对首部查错](https://zh.wikipedia.org/wiki/校验和 "wikilink")，不包括数据部分。在每一跳，路由器都要重新计算出的首部检验和并与此字段进行比对，如果不一致，此报文将会被丢弃。重新计算的必要性是因为每一跳的一些首部字段（如TTL、Flag、Offset等）都有可能发生变化，不检查数据部分是为了减少工作量。数据区的错误留待上层协议处理——[用户数据报协议](../Page/用户数据报协议.md "wikilink")（UDP）和[传输控制协议](../Page/传输控制协议.md "wikilink")（TCP）都有检验和字段。此处的检验计算方法不使用CRC。
    RFC 1071

<!-- end list -->

  - 源地址
    一个IPv4地址由四个字节共32位构成，此字段的值是将每个字节转为二进制并拼在一起所得到的32位值。
    例如，10.9.8.7是00001010000010010000100000000111。
    但请注意，因为NAT的存在，这个地址并不总是报文的*真实*发送端，因此发往此地址的报文会被送往NAT设备，并由它被翻译为真实的地址。

<!-- end list -->

  - 目的地址
    与源地址格式相同，但指出报文的接收端。

<!-- end list -->

  - 选项
    附加的首部字段可能跟在目的地址之后，但这并不被经常使用，从1到40个字节不等。请注意首部长度字段必须包括足够的32位字来放下所有的选项（包括任何必须的填充以使首部长度能够被32位整除）。当选项列表的结尾不是首部的结尾时，EOL（选项列表结束，0x00）选项被插入列表末尾。下表列出了可能

| 字段     | 长度（位） | 描述                              |
| ------ | ----- | ------------------------------- |
| **备份** | 1     | 当此选项需要被备份到所有分片中时，设为1。           |
| **类**  | 2     | 常规的选项类别，0为“控制”，2为“查错和措施”，1和3保留。 |
| **数字** | 5     | 指明一个选项。                         |
| **长度** | 8     | 指明整个选项的长度，对于简单的选项此字段可能不存在。      |
| **数据** | 可变    | 选项相关数据，对于简单的选项此字段可能不存在。         |

  - 注：如果首部长度大于5，那么选项字段必然存在并必须被考虑。
  - 注：备份、类和数字经常被一并称呼为“类型”。

<!-- end list -->

  -
    宽松的源站选路（LSRR）和严格的源站选路（SSRR）选项不被推荐使用，因其可能带来安全问题。许多路由器会拒绝带有这些选项的报文。

### 数据

数据字段不是首部的一部分，因此并不被包含在首部检验和中。数据的格式在协议首部字段中被指明，并可以是任意的[传输层](../Page/传输层.md "wikilink")协议。

一些常见协议的协议字段值被列在下面：

| 协议字段值 | 协议名                                                           | 缩写    |
| ----- | ------------------------------------------------------------- | ----- |
| 1     | [互联网控制消息协议](../Page/互联网控制消息协议.md "wikilink")                  | ICMP  |
| 2     | [互联网组管理协议](https://zh.wikipedia.org/wiki/互联网组管理协议 "wikilink") | IGMP  |
| 6     | [传输控制协议](../Page/传输控制协议.md "wikilink")                        | TCP   |
| 17    | [用户数据报协议](../Page/用户数据报协议.md "wikilink")                      | UDP   |
| 41    | [IPv6](../Page/IPv6.md "wikilink")封装                          | ENCAP |
| 89    | [开放式最短路径优先](../Page/开放式最短路径优先.md "wikilink")                  | OSPF  |
| 132   | [流控制传输协议](../Page/流控制传输协议.md "wikilink")                      | SCTP  |

参见[IP协议号列表](../Page/IP协议号列表.md "wikilink")以获得完整列表。

## 分片和组装

互联网协议（IP）是整个互联网架构的基础，可以支持不同的物理层网络，即IP层独立于链路层传输技术。不同的链路层不仅在传输速度上有差异，还在帧结构和大小上有所不同，不同[MTU参数描述了数据帧的大小](https://zh.wikipedia.org/wiki/MTU "wikilink")。为了实现IP数据包能够使用不同的链路层技术，需要将IP数据包变成适合链路层的数据格式，IP报文的[分片即是IP数据包为了满足链路层的数据大小而进行的分割](https://zh.wikipedia.org/wiki/分片 "wikilink")。

在IPv6不要求路由器执行分片操作，而是将检测路径最大传输单元大小的任务交给了主机。

### 分片

当设备收到IP报文时，分析其目的地址并决定要在哪个链路上发送它。MTU决定了数据载荷的最大长度，如IP报文长度比MTU大，则IP数据包必须进行分片。每一片的长度都小于等于MTU减去IP首部长度。接下来每一片均被放到独立的IP报文中，并进行如下修改：

  - 总长字段被修改为此分片的长度；
  - 更多分片（MF）标志被设置，除了最后一片；
  - 分片偏移量字段被调整为合适的值；
  - 首部检验和被重新计算。

例如，对于一个长20字节的首部和一个MTU为1,500的以太网，分片偏移量将会是：0、(1480/8)=185、(2960/8)=370、(4440/8)=555、(5920/8)=740、等等。

如果报文经过路径的MTU减小了，那么分片可能会被再次分片。

比如，一个4,500字节的数据载荷被封装进了一个没有选项的IP报文（即总长为4,520字节），并在MTU为2,500字节的链路上传输，那么它会被破成如下两个分片：

| \# | 总长   | 更多分片（MF）？   | DF | 分片偏移量 |
| -- | ---- | ----------- | -- | ----- |
| 首部 | 数据   |             |    |       |
| 1  | 2500 | rowspan="2" | 0  | 0     |
| 20 | 2480 |             |    |       |
| 2  | 2040 | rowspan="2" | 0  | 310   |
| 20 | 2020 |             |    |       |

现在，假设下一跳的MTU为1,500字节，那么每一个分片都会被再次分成两片(由于数据片段只有在目的主机才重新被组成数据报，因此再次分片是针对每个在网络中传输的数据帧)：

| \# | 总长   | 更多分片（MF）？   | DF | 分片偏移量 |
| -- | ---- | ----------- | -- | ----- |
| 首部 | 数据   |             |    |       |
| 1  | 1500 | rowspan="2" | 0  | 0     |
| 20 | 1480 |             |    |       |
| 2  | 1020 | rowspan="2" | 0  | 185   |
| 20 | 1000 |             |    |       |
| 3  | 1500 | rowspan="2" | 0  | 310   |
| 20 | 1480 |             |    |       |
| 4  | 560  | rowspan="2" | 0  | 495   |
| 20 | 540  |             |    |       |

第3和4片是从原始第2片再次分片而来，所以除了分片后的最后一个分片外MF为都为1。

### 重组

当一个接收者发现IP报文的下列项目之一为真时：

  - DF标志为0；
  - 分片偏移量字段不为0。

它便知道这个报文已被分片，并随即将数据、标识符字段、分片偏移量和更多分片标志一起储存起来。

当接受者收到了更多分片标志未被设置的分片时，它便知道原始数据载荷的总长。一旦它收齐了所有的分片，它便可以将所有片按照正确的顺序（通过分片偏移量）组装起来，并交给上层协议栈。

## 辅助协议

互联网协议定义并激活了[网络层](../Page/网络层.md "wikilink")，它使用一个逻辑地址系统。IP地址并不以任何永久的方式绑定到硬件，而且事实上一个网络接口可以有许多IP地址。为了正确地交付一份报文，主机和路由器需要其它机制来识别设备接口和IP地址之间的关联。[地址解析协议](../Page/地址解析协议.md "wikilink")（ARP）为IPv4执行这种IP地址到物理地址（[MAC地址](../Page/MAC地址.md "wikilink")）的转换。

此外，反向操作有时候也是必须的，比如，一台主机在启动时需要知道自己的IP地址（除非地址已经被管理员预先设置）。目前被用于这一用途的协议有动态主机设置协议（[DHCP](../Page/动态主机设置协议.md "wikilink")）、引导协议（[BOOTP](https://zh.wikipedia.org/wiki/BOOTP "wikilink")）和比较不常用的[RARP](https://zh.wikipedia.org/wiki/RARP "wikilink")。

## 参见

  - [分类网络](../Page/分类网络.md "wikilink")
  - [无类别域间路由](../Page/无类别域间路由.md "wikilink")
  - [互联网号码分配局](../Page/互联网号码分配局.md "wikilink")
  - [已分配的/8 IPv4地址块列表](https://zh.wikipedia.org/wiki/已分配的/8_IPv4地址块列表 "wikilink")
  - [区域互联网注册管理机构](../Page/区域互联网注册管理机构.md "wikilink")
  - [各國IPv4位址分配列表](../Page/各國IPv4位址分配列表.md "wikilink")

## 参考文献

## 外部链接

  - RFC 791 — Internet Protocol
  - RFC 3344 — IPv4 Mobility
  - [IANA](http://www.iana.org) — 互联网地址分配局官方网站
  - [IP Header Breakdown, including specific options](http://www.networksorcery.com/enp/protocol/ip.htm)
  - [IPv6 vs. carrier-grade NAT/squeezing more out of IPv4](https://web.archive.org/web/20100608114541/http://www.networkworld.com/news/2010/060710-tech-argument-ipv6-nat.html)
  - [IPv4特殊用途地址](http://www.iana.org/assignments/iana-ipv4-special-registry/iana-ipv4-special-registry.xhtml)

地址耗尽：

  - [RIPE report on address consumption as of October 2003](https://web.archive.org/web/20110109025511/http://www.ripe.net/rs/news/ipv4-ncc-20031030.html)
  - [Official current state of IPv4 /8 allocations, as maintained by IANA](https://web.archive.org/web/20100430190605/http://www.iana.org/assignments/ipv4-address-space/)
  - [Dynamically generated graphs of IPv4 address consumption with predictions of exhaustion dates — Geoff Huston](http://www.potaroo.net/tools/ipv4/)
  - [IP addressing in China and the myth of address shortage](https://web.archive.org/web/20110629000602/http://www.apnic.net/community/about-the-internet-community/internet-governance/articles/ip-addressing-in-china-2004)
  - [Countdown of remaining IPv4 available addresses](http://www.inetcore.com/project/ipv4ec/index_en.html) (estimated)

[Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink") [Category:互联网标准](https://zh.wikipedia.org/wiki/Category:互联网标准 "wikilink") [Category:网络层协议](https://zh.wikipedia.org/wiki/Category:网络层协议 "wikilink") [Category:互联网结构](https://zh.wikipedia.org/wiki/Category:互联网结构 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.