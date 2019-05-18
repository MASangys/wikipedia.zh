**Arista网络公司** (曾用名 **Arastra**\[1\])
是一个总部设立在美国加利福尼亚州圣克拉拉的计算机网络公司。该公司致力于设计和销售多层网络交换器，为大型数据中心,
云计算，高频交易和高性能计算环境提供软件定义的解决方案。
Arista产品包括10/40/100千兆以太网低延迟直通转发交换器，应用SFP+光学技术和500ns内延迟的7124系列\[2\]。直到2012年9月之前，该产品是引领市场的最快交换器\[3\]\[4\]。又如7500系列，
Arista的获奖模型10G/40G/100Gbit/s交换器\[5\]。
Arista所有产品上都装载着其自主研发的以Linux为基础的网络操作系统EOS(可扩展操作系统)。

## 公司历史

安迪·贝托尔斯海姆（[Andy
Bechtolsheim](https://zh.wikipedia.org/wiki/Andy_Bechtolsheim "wikilink")）在1982年合作创立了[Sun
Microsystems软件系统有限公司并担任其首席硬件设计师](https://zh.wikipedia.org/wiki/Sun_Microsystems "wikilink")。
1995年,大卫·切利顿（[David
Cheriton](https://zh.wikipedia.org/wiki/David_Cheriton "wikilink"))与贝托尔斯海姆合作创立了Granite
System，一个在1996被思科系统（[Cisco
Systems](https://zh.wikipedia.org/wiki/Cisco_Systems "wikilink")）收购的千兆以太网产品公司\[6\]。
1998年,斯坦福([Stanford](https://zh.wikipedia.org/wiki/Stanford_University "wikilink"))学生谢尔盖·布林([Sergey
Brin](https://zh.wikipedia.org/wiki/Sergey_Brin "wikilink"))和拉里·佩奇([Larry
Page](https://zh.wikipedia.org/wiki/Larry_Page "wikilink"))与贝托尔斯海姆在切利顿家的前廊会面,
贝托尔斯海姆在这次会面中给了两位学生创立谷歌([Google](../Page/Google.md "wikilink"))的第一张支票，切利顿也投资了相同数额\[7\]。在2001年，切利顿和贝托尔斯海姆创立了另一家创业公司Kealia（于2004年被甲骨文系统有限公司收购）\[8\]。在1996年到2003年之间，切利顿和贝托尔斯海姆在思科系统担任行政职位，与Granite
System的首位僱员肯尼思·杜达(Kenneth Duda)共同领导Catalyst生产线\[9\]。
在2004年，他们三人一起创立了Arastra(后更名Arista\[10\]).
切利顿和贝托尔斯海姆之前对谷歌的成功投资使他们得以完全独立投资成立了Arista
Networks\[11\]。在2008年10月，乔雪丽·五乌拉尔（[Jayshree
Ullal](https://zh.wikipedia.org/wiki/Jayshree_Ullal "wikilink")）离开了她工作了15年的思科系统，来到了Arista并担任首席执行官\[12\]。

## 产品

### 可扩展操作系统

EOS是Arista的网络操作系统,是一个可以在所有Arista设备\[13\]和虚拟机上运行的独立镜像\[14\]。EOS通过一个基于Fedora的用户空间在未经修改的Linux
核心上运行\[15\],并通常拥有超过100个的独立进程，称为代理程序。这些代理程序负责控制交换器的各种特性和功能，包括管理集成电路(ASIC)的转换,命令行界面(CLI),网络管理标淮(SNMP),生成树算法的网桥协议(STP),以及各种路由协议的驱动程序。交换器的不同状态以及它的各种协议都记录在另一个名为Sysdb的进程中。把交换器的状态（存储于Sysdb中）和相应的处理进程（由代理程序负责）分隔开来使得EOS拥有了两个重要的特性：第一是软件的故障隔离，如果出现错误,相应的损坏会被限制在某一个独立的代理程序\[16\]\[17\]；第二是保持交换器的延续性，由于代理程序的状态被存储在Sysdb中,当一个代理重新启动时,
它可以读取之前的状态\[18\]。由于代理程序是独立的进程,他们可以在交换机运行时进行升级。这个特点叫做ISSU，全称为In-Service
Software Upgrade。 EOS在Linux上运行使得交换器可以利用常见的Linux工具,比如tcpdump和通常的配置管理系统。
EOS提供了大量的应用程序编程接口(API)来实现与交换器的通讯和全方位掌控。因此,它的命令行界面是通过Python脚本去调用这些API的命令集合,
提供类似于IOS的一个达到行业标淮的CLI服务。为了展示EOS的可扩展性,
Arista创造了云视界(CloudVision)模块\[19\],它扩展了交换器的命令行界面使得其能够使用一种以XML为基础的开放式实时通讯协议(XMPP)作为管理和配置的消息共享线路\[20\]。这个特点是通过在命令行界面中利用开源的XMPP
Python库实现的。

### 可编程性

除了所有在Linux环境中原来就支持的标淮编程和添加脚本的能力以外,EOS还可以使用不同的方法进行编程:
高级事件管理\[21\]可以用来应对各种事件,并自动触发CLI命令。当转换器改变状态时,执行任意脚本或发送警报，例如一个接口断开或虚拟机迁移到另一台主机。
事件监视器跟踪对硬件位址(MAC),地址解析协议(ARP)以及路由表在本地SQLite数据库作出的变化，以应对之后的基础Sql数据查询\[22\]。
EAPI(外部API)\[23\]提供了特殊版本的JSON-RPC接口来执行CLI命令以及获得相应生成的JSON对象输出。

### 以太网交换器

Arista的产品线可分为七系列：

1\. 7500E 系列：拥有VOQ光纤的模块式交换器，支持上限4或8个俱有储存并传递功能的线路卡， 提供10GbE、
40GbE和100GbE的无阻塞速率\[24\]，并利用30Tb/s光纤达到支持1152个10GbE接口和144GB的数据包缓衝器。每一个10GbE接口都可被拆分成3个40G或12个10G的接口\[25\]，从而有效地提供120Gb的线速。

2\.
7300系列：拥有4、8或16个2.56Tb/s线路卡的模块式交换器，最大传输速度为40Tb/s并且容量上限为2048个10GbE接口\[26\]。不同于7500系列的是，7300系列的线路卡可提供10GBASE-T的支持。

3\. 7200系列：2U低延迟高密度全线速达40GbE的交换器，提供5.12Tb/s的传输容量\[27\]。

4\. 7100系列：1U超低延迟直通转发交换器，线速10GbE。7124SX无视框架的尺寸，有低至500ns的对口延迟\[28\]。

5\.
7124FX，也被称为“程序交换器”\[29\]，拥有一个Altera公司的FPGA板，可支持8×10Gb/s的计算，正因此可支持“直通转发高频交易”，并缩小由算法生成的交易带来的延迟直至176ns\[30\]。

6\.
7150系列：1U超低延迟直通转发交换器，线速10GbE。无论框架大小\[31\]对口延迟为sub-380ns。不同于7100系列，这一系列交换器的电路板可以被重新编译\[32\]添加新的功能如VXLAN或NAT/PAT。

7\.
7050系列：1U低延迟直通转发交换器，线速有10Gb和40Gb。这一产品线提供相对于7100系列较高的接口密度，最低支持52个10GbE接口，作为交换会有略微提高的延迟（1.2μs或更小）。

8\. 7048系列：1U储存并传输的顶架交换器，线速1Gb，拥有4×10Gb的上行线路。这一系列的交换器使用Deep
Buffer架构，并有768MB的数据包内存。

Arista Networks研发的低延迟交换器使这一平台盛行于高频交易市场环境，例如芝加哥期权交易所([Chicago Board
Options
Exchange](https://zh.wikipedia.org/wiki/Chicago_Board_Options_Exchange "wikilink"))\[33\]，雷曼兄弟([Lehman
Brothers](https://zh.wikipedia.org/wiki/Lehman_Brothers "wikilink"))\[34\]和加拿大皇家银行资本市场([RBC
Capital
Markets](https://zh.wikipedia.org/wiki/RBC_Capital_Markets "wikilink")).\[35\]。2009年十月，其三分之一的客户为华尔街([Wall
Street](https://zh.wikipedia.org/wiki/Wall_Street "wikilink"))知名企业\[36\]。

Arista的装置均设计为多层式交换器，无一例外地支持第三层([layer
3](https://zh.wikipedia.org/wiki/layer_3 "wikilink"))数据传输协议\[37\]，如[IGMP](https://zh.wikipedia.org/wiki/IGMP "wikilink"),
[VRRP](https://zh.wikipedia.org/wiki/Virtual_Router_Redundancy_Protocol "wikilink"),
[RIP](https://zh.wikipedia.org/wiki/Routing_Information_Protocol "wikilink"),
[BGP](https://zh.wikipedia.org/wiki/Border_Gateway_Protocol "wikilink"),
[OSPF](https://zh.wikipedia.org/wiki/Open_Shortest_Path_First "wikilink"),
[IS-IS和](https://zh.wikipedia.org/wiki/IS-IS "wikilink")[OpenFlow](../Page/OpenFlow.md "wikilink")。这些交换器同时支持第三层或第四层([layer
4](https://zh.wikipedia.org/wiki/layer_4 "wikilink"))
[ECMP](https://zh.wikipedia.org/wiki/Equal-cost_multi-path_routing "wikilink")，和到每个接口的L3/L4
访问列[ACLs](https://zh.wikipedia.org/wiki/Access_control_list "wikilink")，全部都在硬件上实现。

所有Arista的交换器均採用商业用硅，而非定製的专门交换用集成电路([ASICs](https://zh.wikipedia.org/wiki/Application-specific_integrated_circuit "wikilink"))。这样可使Arista在压低价格的同时可及时置换最新纳米工艺的处理器，如果採用定製的芯片则无法达到这一效果。主要的竞争对手思科（
[Cisco](https://zh.wikipedia.org/wiki/Cisco_Systems "wikilink")）和瞻博网络（[Juniper](https://zh.wikipedia.org/wiki/Juniper_Networks "wikilink")）现在也开始一一效仿这一设计\[38\]，导致很多互相竞争的产品都建立在同一种芯片上。比如博通公司（[Broadcom](https://zh.wikipedia.org/wiki/Broadcom "wikilink")）的Trident芯片就同时用在了思科的Nexus交换器[Cisco
Nexus
switches](https://zh.wikipedia.org/wiki/Cisco_Nexus_switches "wikilink")、瞻博的QFX交换器、Force10、[IBM和惠普](../Page/IBM.md "wikilink")（hp）的交换器上\[39\]。这种芯片与其余系统的整合设计（包括与[MAC](https://zh.wikipedia.org/wiki/Media_access_control "wikilink")、[PHY和设备驱动在控制平台上的整合](https://zh.wikipedia.org/wiki/PHY_\(chip\) "wikilink")）与配套软件一并成为区分各个公司产品的主要因素。

2013年11月，Arista Networks开发了Spine网络，将主干加分支式结构与单层网络相结合，以达到缩减运营成本的目的\[40\]。

## 参考文献

## 外部链接

  - [Official website](http://www.arista.com)
  - [EOS Central Community](http://eos.arista.com)

[Category:聖塔克拉拉公司](https://zh.wikipedia.org/wiki/Category:聖塔克拉拉公司 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

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

25.

26.

27.

28.
29.

30.

31.

32.

33.

34.

35.

36.

37.

38.

39.

40.