**InfiniBand**（直译为“无限带宽”技术，缩写为**IB**）是一个用于[高性能计算的计算机网络通信标准](../Page/超级计算机.md "wikilink")，它具有极高的[吞吐量](../Page/吞吐量.md "wikilink")和极低的[延迟](https://zh.wikipedia.org/wiki/潜伏时间_\(工程学\) "wikilink")，用于计算机与计算机之间的数据互连。InfiniBand也用作服务器与存储系统之间的直接或交换互连，以及存储系统之间的互连。\[1\]

截至2014年，它是超级计算机最常用的互连技术。和[英特尔](../Page/英特尔.md "wikilink")制造InfiniBand[主机总线适配器和](https://zh.wikipedia.org/wiki/主机总线适配器 "wikilink")[網路交換器](../Page/網路交換器.md "wikilink")，并根据2016年2月的报道，\[2\][甲骨文公司](../Page/甲骨文公司.md "wikilink")已经设计了自己的Infiniband交换机单元和服务器适配芯片，用于自己的产品线和第三方。Mellanox IB卡可用于[Solaris](../Page/Solaris.md "wikilink")、[RHEL](../Page/Red_Hat_Enterprise_Linux.md "wikilink")、、[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[HP-UX](../Page/HP-UX.md "wikilink")、、\[3\] [AIX](../Page/IBM_AIX.md "wikilink")。\[4\]它被设计为[可扩展和使用](https://zh.wikipedia.org/wiki/可扩展性 "wikilink")的[网络拓扑](https://zh.wikipedia.org/wiki/网络拓扑 "wikilink")。

作为互连技术，IB与[以太网](../Page/以太网.md "wikilink")、[光纤通道和其他专有技术](https://zh.wikipedia.org/wiki/光纤通道 "wikilink")\[5\]（例如[克雷公司](../Page/克雷公司.md "wikilink")的SeaStar）竞争。该技术由推动。

## 规格

### 性能

<table>
<caption>特征</caption>
<thead>
<tr class="header">
<th><p> </p></th>
<th><p>SDR</p></th>
<th></th>
<th></th>
<th><p>FDR-10</p></th>
<th><p>FDR</p></th>
<th><p>EDR</p></th>
<th><p>HDR</p></th>
<th><p>NDR</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>信令速率 (Gb/s)</p></td>
<td><p>2.5</p></td>
<td><p>5</p></td>
<td><p>10</p></td>
<td><p>10.3125</p></td>
<td><p>14.0625[6]</p></td>
<td><p>25</p></td>
<td><p>50</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>理论有效<a href="../Page/吞吐量.md" title="wikilink">吞吐量</a>，<a href="../Page/码率单位.md" title="wikilink">Gbs</a>，每1x[7]</p></td>
<td><p>2</p></td>
<td><p>4</p></td>
<td><p>8</p></td>
<td><p>10</p></td>
<td><p>13.64</p></td>
<td><p>24.24</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>4x链路速度 (Gbit/s)</p></td>
<td><p>8</p></td>
<td><p>16</p></td>
<td><p>32</p></td>
<td><p>40</p></td>
<td><p>54.54</p></td>
<td><p>96.97</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>12x链路速度 (Gbit/s)</p></td>
<td><p>24</p></td>
<td><p>48</p></td>
<td><p>96</p></td>
<td><p>120</p></td>
<td><p>163.64</p></td>
<td><p>290.91</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>编码（<a href="../Page/位元.md" title="wikilink">位元</a>）</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/8b/10b" title="wikilink">8/10</a></p></td>
<td><p>8/10</p></td>
<td><p>8/10</p></td>
<td></td>
<td><p>64/66</p></td>
<td><p>64/66</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>延迟时间（<a href="https://zh.wikipedia.org/wiki/微秒" title="wikilink">微秒</a>）[8]</p></td>
<td><p>5</p></td>
<td><p>2.5</p></td>
<td><p>1.3</p></td>
<td><p>0.7</p></td>
<td><p>0.7</p></td>
<td><p>0.5</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>年[9]</p></td>
<td><p>2001、<br />
2003</p></td>
<td><p>2005</p></td>
<td><p>2007</p></td>
<td></td>
<td><p>2011</p></td>
<td><p>2014[10]</p></td>
<td><p>~2017[11]</p></td>
<td><p>2020年后</p></td>
</tr>
</tbody>
</table>

链路可以聚合：大多数系统使用一个4X聚合。12X链路通常用于[计算机集群](../Page/计算机集群.md "wikilink")和[超级计算机](../Page/超级计算机.md "wikilink")互连，以及用于内部[網路交換器](../Page/網路交換器.md "wikilink")连接。

InfiniBand也提供[远程直接内存访问](../Page/远程直接内存访问.md "wikilink")（RDMA）能力以降低CPU负载。

### 拓扑

InfiniBand使用一个拓扑，不同于早期的共享媒介[以太网](../Page/以太网.md "wikilink")。所有传输开始或结束于通道适配器。每个处理器包含一个主机通道适配器（HCA），每个外设具有一个目标通道适配器（TCA）。这些适配器也可以交换安全性或[QoS信息](https://zh.wikipedia.org/wiki/QoS "wikilink")。

### 消息

InfiniBand以最高4 KB的[封包发送消息数据](https://zh.wikipedia.org/wiki/网络封包 "wikilink")。一条消息可以为：

  - 一个[直接記憶體存取](../Page/直接記憶體存取.md "wikilink")的读取或写入，对于一个远程节点（RDMA）。
  - 一个[信道](../Page/信道.md "wikilink")发送或接收
  - 一个基于事务的操作（可以逆向）
  - 一个[多播](../Page/多播.md "wikilink")传输。
  - 一个[原子操作](https://zh.wikipedia.org/wiki/原子操作 "wikilink")

### 物理互连

[Infinibandport.jpg](https://zh.wikipedia.org/wiki/File:Infinibandport.jpg "fig:Infinibandport.jpg")

除了板式连接，它还支持有源和无源铜缆（最多30米）和[光缆](https://zh.wikipedia.org/wiki/光缆 "wikilink")（最多10公里）。\[12\]使用连接器。

Inifiniband Association也指定了铜连接器系统，用于通过铜缆或有源光缆达到高达120 Gbit/s的能力。

### API

InfiniBand没有标准的[应用程序接口](../Page/应用程序接口.md "wikilink")。標準只列出一組的*動作*例如 `ibv_open_device` 或是 `ibv_post_send`，這些都是必須存在的[子程序](../Page/子程序.md "wikilink")或[方法的抽象表示方式](../Page/方法_\(電腦科學\).md "wikilink")。這些[子程序](../Page/子程序.md "wikilink")的語法由供應商自行定義。[事實標準的軟體堆疊標準是由](https://zh.wikipedia.org/wiki/De_facto "wikilink")  所開發的。它以[雙許可證方式發佈](https://zh.wikipedia.org/wiki/多許可 "wikilink")，[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")或[BSD许可证](../Page/BSD许可证.md "wikilink")用於 [GNU](../Page/GNU.md "wikilink")/[Linux](../Page/Linux.md "wikilink") 以及 [FreeBSD](../Page/FreeBSD.md "wikilink")，且 WinOF 在 Windows 下可以選擇 [BSD许可证](../Page/BSD许可证.md "wikilink")。它已被大多數 InfiniBand 供應商採用，用於 [GNU](../Page/GNU.md "wikilink")/[Linux](../Page/Linux.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink") 以及 [Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。

## 历史

InfiniBand源于1999年两个竞争设计的合并：未来I/O与下一代I/O。这促成了InfiniBand贸易联盟（InfiniBand Trade Association，缩写IBTA），其中包括[康柏](../Page/康柏.md "wikilink")、[戴爾](../Page/戴爾.md "wikilink")、[惠普](../Page/惠普.md "wikilink")、[IBM](../Page/IBM.md "wikilink")、[英特尔](../Page/英特尔.md "wikilink")、[微软](../Page/微软.md "wikilink")及[昇陽](https://zh.wikipedia.org/wiki/昇陽 "wikilink")。当时有人认为一些更强大的电脑正在接近[PCI总线的](../Page/外设组件互连标准.md "wikilink")，尽管有像[PCI-X](../Page/PCI-X.md "wikilink")的升级。\[13\]InfiniBand架构规范的1.0版本发布于2000年。最初，IBTA的IB愿景是取代PCI的I/O，以太网的[机房](../Page/数据中心.md "wikilink")、[计算机集群](../Page/计算机集群.md "wikilink")的互连以及[光纤通道](https://zh.wikipedia.org/wiki/光纤通道 "wikilink")。IBTA也设想在IB上分担服务器硬件。随着[互聯網泡沫](../Page/互聯網泡沫.md "wikilink")的爆发，业界对投资这样一个意义深远的技术跳跃表现为犹豫不决。\[14\]

### 时间线

  - 2001年：售出InfiniBridge 10Gbit/s设备和超过10,000个InfiniBand端口。\[15\]
  - 2002年：英特尔宣布将着眼于开发[PCI Express而不是采用IB芯片](../Page/PCI_Express.md "wikilink")，以及微软停止IB开发以利于扩展以太网，IB发展受挫，尽管Sun和[日立继续支持IB](../Page/日立製作所.md "wikilink")。\[16\]
  - 2003年：[弗吉尼亚理工学院暨州立大学](../Page/弗吉尼亚理工学院暨州立大学.md "wikilink")建立了一个InfiniBand集群，在当时的[TOP500](../Page/TOP500.md "wikilink")排名第三。
  - 2004年：IB开始作为集群互连采用，对抗以太网上的延迟和价格。\[17\]开发了一个标准化的基于Linux的InfiniBand软件栈。次年，Linux添加IB支持。\[18\]
  - 2005年：IB开始被实现为存储设备的互连。\[19\]
  - 2009年：世界500强超级计算机中，259个使用千兆以太网作为内部互连技术，181个使用InfiniBand。\[20\]
  - 2010年：市场领导者Mellanox和Voltaire合并，IB供应商只剩下另一个竞争者——，它主要是光纤通道供应商。\[21\] Oracle makes a major investment in Mellanox.
  - 2011年：FDR交换机和适配器在上宣布。\[22\]
  - 2012年：英特尔收购QLogic的InfiniBand技术。\[23\]
  - 2016年：[甲骨文公司](../Page/甲骨文公司.md "wikilink")制造自己的InfiniBand互连芯片和交换单元。\[24\]

## 参见

  -
  -
  -
  - [電腦裝置頻寬列表](../Page/電腦裝置頻寬列表.md "wikilink")

  - [光互連](../Page/光互連.md "wikilink")

  - [光通訊](../Page/光通訊.md "wikilink")

  -
  - [40/100吉比特以太网](../Page/100吉比特以太网.md "wikilink")

## 参考资料

## 外部链接

  -
  - [Mellanox Technologies: InfiniBand Performance Metrics](http://www.mellanox.com/page/performance_infiniband)

[Category:计算机总线](https://zh.wikipedia.org/wiki/Category:计算机总线 "wikilink") [Category:電腦網路](https://zh.wikipedia.org/wiki/Category:電腦網路 "wikilink") [Category:串行总线](https://zh.wikipedia.org/wiki/Category:串行总线 "wikilink") [Category:超級電腦](https://zh.wikipedia.org/wiki/Category:超級電腦 "wikilink")

1.
2.  <http://www.nextplatform.com/2016/02/22/oracle-engineers-its-own-infiniband-interconnects/>
3.
4.
5.
6.  <https://cw.infinibandta.org/document/dl/7260>
7.
8.  <http://www.hpcadvisorycouncil.com/events/2014/swiss-workshop/presos/Day_1/1_Mellanox.pdf> // Mellanox
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.