**6over4**是一种[IPv6转换传送机制](../Page/IPv6.md "wikilink")，通过支持多播的[IPv4网络的双栈节点传输IPv](../Page/IPv4.md "wikilink")6数据包。6over4将IPv4网络视为一个[数据链路层](../Page/数据链路层.md "wikilink")。

## 運作機制

6over4定义使用IPv4生成IPv6链路本地地址的方法，和在IPv4网络进行邻居发现的机制。

### 地址生成

任何使用6over4进行IPv6通信的主机，需要在相应的IPv4接口建立一个对应的虚拟IPv6接口。使用IPv6本地链路网络前缀`fe80::/10`，将IPv4地址的十六进制值加载该网络前缀的低位侧，成为该6over4的IPv6地址。例如：`192.0.2.142`对应转换为`fe80:0000:0000:0000:0000:0000:c000:028e`（`c000:028e`为`192.0.2.142`的十六进制值），缩短为`fe80::c000:28e`。

### 多播地址映射

为了使[ICMPv6的](../Page/ICMPv6.md "wikilink")[邻居发现可用](../Page/邻居发现协议.md "wikilink")，IPv4网络必须能进行多播访问。IPv6多播数据包按照[6in4进行封装后](../Page/6in4.md "wikilink")，其IPv4数据包目的地址为`239.192.x.y`，x和y值是IPv6多播目的地址的倒数第二和第一个字节值。

  - 例子：

<!-- end list -->

  - 多播全部节点：`ff02::1`=\>`239.192.0.1`
  - 多播全部路由器：`ff02::2`=\>`239.192.0.2`
  - 多播到节点`fe80::c000:28e`=\>`239.192.2.142`

### 邻居发现

获得本地链路地址和多播地址映射后，主机就可以基于IPv4的以太网用ICMPv6发现链路上的邻居、路由器、并进行无状态配置。

## 限制

6over4依赖于IPv4多播的可用性，但IPv4网络基础设施并未得到广泛的支持。 6over4实际使用有限，并且不被最常见的操作系统支持。
要连接不同物理链路上的IPv6主机，必须在连接链路的路由器上启用IPv4组播路由。

对于不依赖IPv4网络多播的话，[ISATAP是更复杂的替代方案](../Page/ISATAP.md "wikilink")。

## 参考文献

  - B. Carpenter & C. Jung *Transmission of IPv6 over IPv4 Domains
    without Explicit Tunnels* , March 1999.

[Category:IPv6](https://zh.wikipedia.org/wiki/Category:IPv6 "wikilink")