**Omega网络**是一种常用于[并行计算](../Page/并行计算.md "wikilink")[架构的](../Page/计算机系统结构.md "wikilink")[网络配置](../Page/计算机网络.md "wikilink")。它是一个依赖于完美洗牌互联[算法](../Page/算法.md "wikilink")的非直连拓扑。

[Omega_Network.jpg](https://zh.wikipedia.org/wiki/File:Omega_Network.jpg "fig:Omega_Network.jpg")

## 连接架构

一个8x8的Omega网络是一个多级互联网络，这意味着处理单元（英语：processing element，简称PE）是由多级交换机互联的。如上图，输入和输出标好了地址。每一级的输出和下一级的输入用一个连接起来，这意味着每个级间互联都仿佛是一叠扑克牌划分为数量相等的两叠然后洗牌洗到一起，一张来自一组的牌叠在一张来自另一组的牌上。如果我们考虑用二进制表示PE，那么每级的完美洗牌可以看作是一个循环[逻辑左移位](https://zh.wikipedia.org/wiki/位操作#逻辑移位 "wikilink")，地址中的每个位每次向左移一位，把最高位放置到最低位上。

在每一级上，相邻的一对输入被连接在一个简单的互换单元上，这个单元可以选择直通（英文：straight，也就是把输入直接传送到输出）也可以选择交叉（英文：crossed，也就是把上面的输入放到下面输出，把下面的输入放到上面输出）。对于\(N\)个处理单元，一个Omega网络的每一级有\(N/2\)个交换机，共有\(\log_2 N\)级。这些交换机的配置决定了网络在任意时间的通路的可用状态，配置方法有两种，分别为目的地标签路（英语：destination-tag routing）由和XOR标签路由（英语：XOR-tag routing）。

Omega网络是高阻塞的，然而在一个自由网络里对于任意一对输入输出总能找到一条路由。

### 目的地标签路由

在目的地标签路由中，交换机的配置完全按照要传递的消息的目的地决定。目的地地址的最高位被用来选择第一级交换机的输出口：如果最高位时0，那么选择上面的输出口；如果最高位是1，那么选择下面的输出口。第二高位被用来选择第二级交换机的输出口，依此类推直到到达最终的输出。

例如，如果一条消息的目的地是PE 001，那么交换机的配置为：上，上，下。如果一条消息的目的地是PE 101，那么交换机的配置为：下，上，下。这些交换机的配置不考虑输入的地址。

### XOR标签路由

在XOR标签路由中，交换机的配置基于 (源PE地址) XOR (目的地PE地址)。这样生成的一个XOR标签包含的1的位置意味着地址在这一位上必须要被反转，而0的位置意味着源PE地址和目的地PE地址在这一位是相同的。XOR标签的最高位被用来设置第一级路由：如果它是0，则交换机选择直通；如果它是1，则交换机选择交叉。第二高位被用来选择第二级交换机的输出口，依此类推直到到达最终的输出。

例如，如果PE 001想发消息给PE 010，那么XOR标签位011，交换机配置为：A2直通，B3交叉，C2交叉。

### 应用

在[多处理器处理中](https://zh.wikipedia.org/wiki/多元处理 "wikilink")，Omega网络可以被用来连接[CPU和](../Page/中央处理器.md "wikilink")[共享内存从而降低CPU到内存的连接成为瓶颈的概率](https://zh.wikipedia.org/wiki/共享内存 "wikilink")。

Omega网络已被应用于Illinois Cedar Multiprocessor、IBM RP3和NYU Ultracomputer中.

## 外部链接

  - [用C语言实现的Omega网络模拟](https://github.com/vijendra/Omega-network)

## 参见

  -
  -
  -
  -
  - [Delta网络](https://zh.wikipedia.org/wiki/Delta网络 "wikilink")

  -
  -
  - [网络编码](../Page/网络编码.md "wikilink")

## 参考文献

  -
[Category:网络](https://zh.wikipedia.org/wiki/Category:网络 "wikilink")