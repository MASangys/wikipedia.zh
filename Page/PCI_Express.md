**PCI
Express**，简称**PCI-E**，官方简称**PCIe**，是[電腦匯流排](https://zh.wikipedia.org/wiki/電腦匯流排 "wikilink")[PCI的一種](../Page/外设组件互连标准.md "wikilink")，它沿用現有的PCI編程概念及通訊標準，但建基於更快的[串行通信系統](../Page/串行通信.md "wikilink")。

[英特爾是該介面的主要支援者](https://zh.wikipedia.org/wiki/英特爾 "wikilink")。PCIe仅应用于内部互连。由于PCIe是基于现有的[PCI系统](../Page/外设组件互连标准.md "wikilink")，只需修改[物理层而无须修改软件就可将现有PCI系统转换为PCIe](../Page/物理层.md "wikilink")。

PCIe拥有更快的速率，以取代几乎全部以往的内部[总线](../Page/总线.md "wikilink")（包括[AGP和PCI](../Page/AGP.md "wikilink")）。現在英特爾和[AMD已採用單晶片組技術](https://zh.wikipedia.org/wiki/AMD "wikilink")，取代原有的[南桥](../Page/南桥.md "wikilink")／[北桥方案](../Page/北桥.md "wikilink")。

除此之外，PCIe设备能够支援[热拔插以及](https://zh.wikipedia.org/wiki/热拔插 "wikilink")[热交换特性](https://zh.wikipedia.org/wiki/热交换 "wikilink")，支援的三种电压分别为+3.3V、3.3Vaux以及+12V。

考虑到现在[顯示卡功耗的日益增加](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")，PCIe而后在规范中改善直接从插槽中取电的功率限制，16x的最大提供功率达到75W\[1\]，比AGP
8X接口有了很大的提升。

PCIe只是南桥的扩展总线，它与操作系统无关，所以也保证它与原有PCI的兼容性，也就是说在很长一段时间内在主板上PCIe接口将和PCI接口共存，这也给用户的升级带来方便。由此可见，PCIe最大的意义在于它的通用性，不仅可以让它用于南桥和其他设备的连接，也可以延伸到[芯片组间的连接](../Page/芯片组.md "wikilink")，甚至也可以用于连接[圖形處理器](../Page/圖形處理器.md "wikilink")，这样，整个[I/O系统重新统一起来](https://zh.wikipedia.org/wiki/I/O "wikilink")，将更进一步简化计算机系统，增加计算机的[可移植性和模块化](https://zh.wikipedia.org/wiki/可移植性 "wikilink")。

## 历史

在2001年的春季[英特尔开发者论坛](https://zh.wikipedia.org/wiki/英特尔开发者论坛 "wikilink")（IDF）上Intel公布取代PCI总线的第三代I/O技术，被称为“[3GIO](https://zh.wikipedia.org/wiki/3GIO "wikilink")”。该总线的规范由Intel支持的[AWG](https://zh.wikipedia.org/wiki/AWG "wikilink")（Arapahoe
Work Group）负责制定。2002年4月17日，AWG正式宣布3GIO
1.0规范草稿制定完毕，移交[PCI特殊兴趣组织](https://zh.wikipedia.org/wiki/PCI-SIG "wikilink")（PCI-SIG）进行审核，2002年7月23日经过审核后正式公布，改名为“PCI
Express”，并根据开发蓝图2006年正式推出Spec 2.0（2.0规范）。\[2\]\[3\]

<table>
<caption>PCI Express 匯流排效能[4][5]</caption>
<thead>
<tr class="header">
<th><p>PCI Express<br />
版本</p></th>
<th><p>推出</p></th>
<th><p>Line<br />
編碼</p></th>
<th><p>原始<br />
傳輸率</p></th>
<th><p>頻寬（帶寬）</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>×1</p></td>
<td><p>×2</p></td>
<td><p>×4</p></td>
<td><p>×8</p></td>
<td><p>×16</p></td>
</tr>
<tr class="even">
<td><p>1.0</p></td>
<td><p>2003</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/8b/10b" title="wikilink">8b/10b</a></p></td>
<td><p>2.5 <a href="../Page/GT.md" title="wikilink">GT</a>/s</p></td>
<td><p>250 <a href="https://zh.wikipedia.org/wiki/Megabyte" title="wikilink">MB</a>/s</p></td>
</tr>
<tr class="odd">
<td><p>2.0</p></td>
<td><p>2007</p></td>
<td><p>8b/10b</p></td>
<td><p>5.0 GT/s</p></td>
<td><p>500 MB/s</p></td>
</tr>
<tr class="even">
<td><p>3.0</p></td>
<td><p>2010</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/128b/130b" title="wikilink">128b/130b</a></p></td>
<td><p>8.0 GT/s</p></td>
<td><p>984.6 MB/s</p></td>
</tr>
<tr class="odd">
<td><p>4.0</p></td>
<td><p>2017</p></td>
<td><p>128b/130b</p></td>
<td><p>16.0 GT/s</p></td>
<td><p>1969 MB/s</p></td>
</tr>
<tr class="even">
<td><p>5.0[6][7]</p></td>
<td><p>2019 Q1[8]</p></td>
<td><p>128b/130b</p></td>
<td><p>32.0 GT/s</p></td>
<td><p>3938 MB/s</p></td>
</tr>
</tbody>
</table>

以PCIe
2.0為例，每秒5GT（Gigatransfer）原始數據傳輸率，編碼方式為8b/10b（每10個位元只有8個有效數據），即有效頻寬為4Gb/s
= 500MByte/s。

## PCI Express與其他傳輸規格比較

[PCI-Express-Bus.jpg](https://zh.wikipedia.org/wiki/File:PCI-Express-Bus.jpg "fig:PCI-Express-Bus.jpg")
[PCI-Express-Bus-1-lane.jpg](https://zh.wikipedia.org/wiki/File:PCI-Express-Bus-1-lane.jpg "fig:PCI-Express-Bus-1-lane.jpg")
PCIe的規範主要是為了提升電腦內部所有匯流排的速度，因此[頻寬有多種不同規格標準](https://zh.wikipedia.org/wiki/頻寬 "wikilink")，其中PCIe
x16是專為[顯示卡所設計的部分](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")。AGP的資料傳輸效率最高為2.1GB／s，不過對上PCIe
x16的8GB／s，很明顯的就分出勝負，但8GB／s只有指資料傳輸的理想值，並不是使用PCIe介面的顯示卡，就能夠有突飛猛進的效能表現，實際的測試數據上並不會有這麼大的差異存在。
\[9\] \[10\]

| 傳輸通道數 | 腳Pin總數 | 主介面區Pin數 | 總長 度  | 主介面區長度   |
| ----- | ------ | -------- | ----- | -------- |
| x1    | 36     | 14       | 25 mm | 7.65 mm  |
| x4    | 64     | 42       | 39 mm | 21.65 mm |
| x8    | 98     | 76       | 56 mm | 38.65 mm |
| x16   | 164    | 142      | 89 mm | 71.65 mm |

| 規格             | 匯流排寬度 | 工作時脈           | 資料速率              |
| -------------- | ----- | -------------- | ----------------- |
| PCI 2.3        | 32位元  | 33/66 MHz      | 133/266 MB/s      |
| PCI-X 1.0      | 64位元  | 66/100/133 MHz | 533/800/1066 MB/s |
| PCI-X 2.0（DDR） | 64位元  | 133 MHz        | 2.1 GB/s          |
| PCI-X 2.0（QDR） | 64位元  | 133 MHz        | 4.2 GB/s          |
| AGP 2X         | 32位元  | 66 MHz         | \*2=532 MB/s      |
| AGP 4X         | 32位元  | 66 MHz         | \*4=1.0 GB/s      |
| AGP 8X         | 32位元  | 66 MHz         | \*8=2.1 GB/s      |
| PCI-E 1.0 X1   | 1位元   | 2.5 GHz        | 500 MB/s（双工，文稿数据） |
| PCI-E 1.0 X2   | 2位元   | 2.5 GHz        | 1 GB/s（双工）        |
| PCI-E 1.0 X4   | 4位元   | 2.5 GHz        | 2 GB/s（双工）        |
| PCI-E 1.0 X8   | 8位元   | 2.5 GHz        | 4 GB/s（双工）        |
| PCI-E 1.0 X16  | 16位元  | 2.5 GHz        | 8 GB/s（双工）        |

计算公式：PCI-E串行总线带宽（MB/s） = 串行总线时钟频率（MHz）\* 串行总线位宽（bit/8 = B）\* 串行总线管线\*
编码方式\* 每时钟传输几组数据（cycle），例：双工PCI-E 1.0 X1，其带宽 =
2500\*1/8\*1\*8/10\*1\*2=500 MB/s。

PCI Express 1.0总线频率2500 MHz，这是在100 MHz的基准频率通过锁相环振荡器（Phase Lock
Loop，PLL）达到的。PCI-E
2.0总线频率从2.5GHz提高到5GHz，3.0则提高到8GHz，编码方式变成128/130。

## PCI Express的硬件协议

PCIe的连接是建立在一个单向的序列的（1-bit）点对点连接基础之上，这称之为*通道*（lane）。这一点上PCIe连接与早期PCI连接形成鲜明对比，PCI连接基于总线控制，所有设备共享双向32位并行总线。PCIe是一个多层协议，由事务层，数据交换层和物理层构成。物理层又可进一步分为逻辑子层和电气子层。逻辑子层又可分为物理代码子层（PCS）和介质接入控制子层（MAC）。这些术语借用自
[IEEE 802](../Page/IEEE_802.md "wikilink") 网络协议模型。

### 物理层

[PCIExpress.jpg](https://zh.wikipedia.org/wiki/File:PCIExpress.jpg "fig:PCIExpress.jpg")
于使用电力方面，每组流水线使用两个单向的[低电压差分信号](https://zh.wikipedia.org/wiki/低電壓差分信號 "wikilink")（LVDS）合计达到2.5
Gbit/s。传送及接收不同数据会使用不同的传输通道，每一通道可运作四项资料。两个PCIe设备之间的连接成为“链接”，这形成1组或更多的传输通道。各个设备最少支援1传输通道（x1）的链接。也可以有2，4，8，16，32个通道的链接。这可以更好的提供双向兼容性（x2模式将用于内部接口而非插槽模式）。PCIe卡能使用在至少与之[传输通道相当的插槽上](https://zh.wikipedia.org/wiki/传输通道 "wikilink")（例如x1接口的卡也能工作在x4或x16的插槽上）。一个支援较多传输通道的插槽可以建立较少的传输通道（例如8个通道的插槽能支援1个通道）。PCIe设备之间的链接将使用两设备中较少通道数的作为标准。一个支援较多通道的设备不能在支援较少通道的插槽上正常工作，例如x4接口的卡不能在x1的插槽上正常工作（插不入），但它能在x4的插槽上只建立1个传输通道（x1）。PCIe卡能在同一数据传输通道内传输包括中断在内的全部控制信息。这也方便与[PCI的兼容](../Page/外设组件互连标准.md "wikilink")。多传输通道上的数据传输采取交叉存取，这意味着连续字节交叉存取在不同的通道上。这一特性被称之为“数据条纹”，需要非常复杂的硬件支援连续数据的同步存取，也对链接的数据吞吐量要求极高。由于数据填充的需求，数据交叉存取不需要缩小数据包。与其它高速数传输协议一样，时钟信息必须嵌入信号中。在物理层上，PCIe采用常见的[8B/10B代码方式来确保连续的](https://zh.wikipedia.org/wiki/8B/10B "wikilink")1和0字符串长度符合标准，这样保证接收端不会误读。编码方案用10位编码比特代替8个未编码比特来传输数据，占用20%的总带宽。到了PCIe
3.0，采用[128B/130B代码方式](https://zh.wikipedia.org/wiki/128B/130B "wikilink")，仅占用1.538%的总带宽。有些协议（如[SONET](https://zh.wikipedia.org/wiki/SONET "wikilink")）使用另外的编码结构如“不规则”在数据流中嵌入时钟信息。PCIe的特性也定义一种“不规则化”的运算方法，但这种方法与SONET完全不同，它的方法主要用来避免数据传输过程中的数据重复而出现数据散射。第一代PCIe采用2.5GT/s单信号传输率，PCI-SIG计划在未来版本中增强到5\~10GT/s。

### 数据链路层

数据链路层采用按序的交换层信息包（Transaction Layer
Packets,TLPs），是由交换层生成，按32位[循环冗余校验码](https://zh.wikipedia.org/wiki/循环冗余校验 "wikilink")（CRC，本文中用LCRC）进行数据保护，采用著名的协议（Ack
and Nak
signaling）的信息包。TLPs能通过LCRC校验和连续性校验的称为Ack（命令正确应答）；没有通过校验的称为Nak（没有应答）。没有应答的TLPs或者等待逾時的TLPs会被重新传输。这些内容存储在数据链路层的缓存内。这样可以确保TLPs的传输不受电子噪音干扰。PCIe對於ACK有所規範，在收到TLP封包之後，在一定時間內必須回應ACK，也就是ACK延遲（ACK
Latency）的等待時間。因應ACK/NAK流程的需要，必須實作出重新播送緩衝器（Replay Buffer）。

TLPs加上Sequence number以及16 位元 CRC 後，被包裹成為数据链路层信息包（Data Link Layer
Packet,DLLP），除了資料傳遞外，交握信號ACK和NAK信号亦被包裹在信息包中傳送，除此之外也用来传送两个互连设备的交换层之间的流控制信息和实现电源管理功能。

### 事务层

PCI Express采用分离交换（数据提交和应答在时间上分离），可保证传输通道在目标端设备等待发送回应信息传送其它数据信息。

PCI
Express采用可信性流控制。这一模式下，一个设备广播它可接收缓存的初始可信信号量。链接另一方的设备会在发送数据时统计每一发送的TLP所占用的可信信号量，直至达到接收端初始可信信号最高值。接收端在处理完毕缓存中的TLP后，它会回送发送端一个比初始值更大的可信信号量。可信信号统计是定制的标准计数器，相比于其他方法，如基于握手的传输协议，这一模式的优势在于可信信号的回传反应时间不会影响系统性能，因为如果双方设备的缓存足够大，是不会出现达到可信信号最高值的情况，这样发送数据不会停顿。

第一代PCIe标称可支援每传输通道单向每秒250 MB的数据传输率。这一数字是根据物理信号率2500
Mbit/s除以编码率（10位／每字节）计算而得。这意味着一个16通道（x16）的PCIe卡理论上可以达到单向250\*16=4000
MB/s（3.7 GB/s）。实际的传输率要根据数据有效载荷率，即依赖于数据的本身特性，这是由更高层（软件）应用程序和中间协议层决定。

PCI
Express与其它高速序列连接系统相似，它依赖于传输的鲁棒性（[CRC校验和](https://zh.wikipedia.org/wiki/CRC校验 "wikilink")[ACK](https://zh.wikipedia.org/wiki/ACK字元 "wikilink")）。长时间连续的单向数据传输（如高速存储设备）可以达到\>95%的PCIe通道数据传输利用率。这样的传输受益于增加的传输通道（x2,
x4
等）。但大多数应用程序如[USB或](../Page/USB.md "wikilink")[乙太網路控制器会把传输内容拆成小的数据包](../Page/以太网.md "wikilink")，同时还会强制加上确认信号。这类数据传输由于增加数据包的解析和强制中断，降低传输通道的效率。作为一个在同一个印刷电路板（PCB）设备间的通信协议，它不需要达到其他远距离通信协议要求的高数据传输错误容忍度，而且，这种效率的降低并非只出现在PCIe上。

### 引腳

下表列出在邊緣連接器上的PCI Express卡兩側的導線。在印刷電路板（PCB）的焊接側為A側，並且組件側的B側。\[11\]PRSNT1\#
和PRSNT2\# 引腳必須比其餘稍短，以確保熱插入卡完全插入。該WAKE\#
引腳採用全電壓喚醒計算機，但必須拉高從備用電源，以表明該卡是能夠喚醒。\[12\]

| 引腳                     | B側          | A側         | 描述                                                                                             |               | 引腳            | B側           | A側           | 描述 |
| ---------------------- | ----------- | ---------- | ---------------------------------------------------------------------------------------------- | ------------- | ------------- | ------------ | ------------ | -- |
| 1                      | \+12 V      | PRSNT1\#   | 必須連接到最遠PRSNT2\# 引腳                                                                             | 50            | HSOp (8)      | Reserved     | 通道8傳輸數據，+和−  |    |
| 2                      | \+12 V      | \+12 V     |                                                                                                | 51            | HSOn (8)      | Ground       |              |    |
| 3                      | \+12 V      | \+12 V     | 52                                                                                             | Ground        | HSIp (8)      | 通道8接收數據，+和−  |              |    |
| 4                      | Ground      | Ground     | 53                                                                                             | Ground        | HSIn (8)      |              |              |    |
| 5                      | SMCLK       | TCK        | [SMBus和](https://zh.wikipedia.org/wiki/SMBus "wikilink")[JTAG端口引腳](../Page/JTAG.md "wikilink") | 54            | HSOp (9)      | Ground       | 通道9傳輸數據，+和−  |    |
| 6                      | SMDAT       | TDI        | 55                                                                                             | HSOn (9)      | Ground        |              |              |    |
| 7                      | Ground      | TDO        | 56                                                                                             | Ground        | HSIp (9)      | 通道9接收數據，+和−  |              |    |
| 8                      | \+3.3 V     | TMS        | 57                                                                                             | Ground        | HSIn (9)      |              |              |    |
| 9                      | TRST\#      | \+3.3 V    | 58                                                                                             | HSOp (10)     | Ground        | 通道10傳輸數據，+和− |              |    |
| 10                     | \+3.3 V aux | \+3.3 V    | 備用電源                                                                                           | 59            | HSOn (10)     | Ground       |              |    |
| 11                     | WAKE\#      | PERST\#    | 鏈接激活；基本復位                                                                                      | 60            | Ground        | HSIp (10)    | 通道10接收數據，+和− |    |
| Key notch              | 61          | Ground     | HSIn (10)                                                                                      |               |               |              |              |    |
| 12                     | CLKREQ\#    | Ground     | 要求運行的時鐘                                                                                        | 62            | HSOp (11)     | Ground       | 通道11傳輸數據，+和− |    |
| 13                     | Ground      | REFCLK+    | 參考時鐘差分對                                                                                        | 63            | HSOn (11)     | Ground       |              |    |
| 14                     | HSOp (0)    | REFCLK−    | 通道0傳輸數據，+和−                                                                                    | 64            | Ground        | HSIp (11)    | 通道11接收數據，+和− |    |
| 15                     | HSOn (0)    | Ground     | 65                                                                                             | Ground        | HSIn (11)     |              |              |    |
| 16                     | Ground      | HSIp (0)   | 通道0接收數據，+和−                                                                                    | 66            | HSOp (12)     | Ground       | 通道12傳輸數據，+和− |    |
| 17                     | PRSNT2\#    | HSIn (0)   | 67                                                                                             | HSOn (12)     | Ground        |              |              |    |
| 18                     | Ground      | Ground     |                                                                                                | 68            | Ground        | HSIp (12)    | 通道12接收數據，+和− |    |
| PCI Express ×1卡於引腳18結束 | 69          | Ground     | HSIn (12)                                                                                      |               |               |              |              |    |
| 19                     | HSOp (1)    | Reserved   | 通道1傳輸數據，+和−                                                                                    | 70            | HSOp (13)     | Ground       | 通道13傳輸數據，+和− |    |
| 20                     | HSOn (1)    | Ground     | 71                                                                                             | HSOn (13)     | Ground        |              |              |    |
| 21                     | Ground      | HSIp (1)   | 通道1接收數據，+和−                                                                                    | 72            | Ground        | HSIp (13)    | 通道13接收數據，+和− |    |
| 22                     | Ground      | HSIn (1)   | 73                                                                                             | Ground        | HSIn (13)     |              |              |    |
| 23                     | HSOp (2)    | Ground     | 通道2傳輸數據，+和−                                                                                    | 74            | HSOp (14)     | Ground       | 通道14傳輸數據，+和− |    |
| 24                     | HSOn (2)    | Ground     | 75                                                                                             | HSOn (14)     | Ground        |              |              |    |
| 25                     | Ground      | HSIp (2)   | 通道2接收數據，+和−                                                                                    | 76            | Ground        | HSIp (14)    | 通道14接收數據，+和− |    |
| 26                     | Ground      | HSIn (2)   | 77                                                                                             | Ground        | HSIn (14)     |              |              |    |
| 27                     | HSOp (3)    | Ground     | 通道3傳輸數據，+和−                                                                                    | 78            | HSOp (15)     | Ground       | 通道15傳輸數據，+和− |    |
| 28                     | HSOn (3)    | Ground     | 79                                                                                             | HSOn (15)     | Ground        |              |              |    |
| 29                     | Ground      | HSIp (3)   | 通道3接收數據，+和−                                                                                    | 80            | Ground        | HSIp (15)    | 通道15接收數據，+和− |    |
| 30                     | Reserved    | HSIn (3)   | 81                                                                                             | PRSNT2\#      | HSIn (15)     |              |              |    |
| 31                     | PRSNT2\#    | Ground     |                                                                                                | 82            | Reserved      | Ground       |              |    |
| 32                     | Ground      | Reserved   |                                                                                                |               |               |              |              |    |
| PCI Express ×4卡於引腳32結束 |             |            |                                                                                                |               |               |              |              |    |
| 33                     | HSOp (4)    | Reserved   | 通道4傳輸數據，+和−                                                                                    |               |               |              |              |    |
| 34                     | HSOn (4)    | Ground     |                                                                                                |               |               |              |              |    |
| 35                     | Ground      | HSIp (4)   | 通道4接收數據，+和−                                                                                    |               |               |              |              |    |
| 36                     | Ground      | HSIn (4)   |                                                                                                |               |               |              |              |    |
| 37                     | HSOp (5)    | Ground     | 通道5傳輸數據，+和−                                                                                    |               |               |              |              |    |
| 38                     | HSOn (5)    | Ground     |                                                                                                |               |               |              |              |    |
| 39                     | Ground      | HSIp (5)   | 通道5接收數據，+和−                                                                                    |               |               |              |              |    |
| 40                     | Ground      | HSIn (5)   |                                                                                                |               |               |              |              |    |
| 41                     | HSOp (6)    | Ground     | 通道6傳輸數據，+和−                                                                                    |               |               |              |              |    |
| 42                     | HSOn (6)    | Ground     |                                                                                                |               |               |              |              |    |
| 43                     | Ground      | HSIp (6)   | 通道6接收數據，+和−                                                                                    | 圖例            |               |              |              |    |
| 44                     | Ground      | HSIn (6)   | 接地引腳                                                                                           | 零電壓基準         |               |              |              |    |
| 45                     | HSOp (7)    | Ground     | 通道7傳輸數據，+和−                                                                                    | 電源引腳          | 為PCIe卡供電      |              |              |    |
| 46                     | HSOn (7)    | Ground     | 輸出引腳                                                                                           | 從PCIe卡到主機板的信號 |               |              |              |    |
| 47                     | Ground      | HSIp (7)   | 通道7接收數據，+和−                                                                                    | 輸入引腳          | 從主機板到PCIe卡的信號 |              |              |    |
| 48                     | PRSNT2\#    | HSIn (7)   | 漏極開路                                                                                           | 可拉至低電平或感應到多個卡 |               |              |              |    |
| 49                     | Ground      | Ground     |                                                                                                | 檢測引腳          | 卡連接在一起        |              |              |    |
| PCI Express ×8卡於引腳49結束 | 備用          | 目前沒有使用，不連接 |                                                                                                |               |               |              |              |    |

PCI Express連接器引腳（×1，×4，×8，×16的變體）

## 制式标准

[RS232_PCI-E.jpg](https://zh.wikipedia.org/wiki/File:RS232_PCI-E.jpg "fig:RS232_PCI-E.jpg")接口的PCIe
x1卡\]\]

  - 半高卡
  - [Mini
    Card](https://zh.wikipedia.org/wiki/PCI_Express_Mini_Card "wikilink")：用以代替[Mini
    PCI卡](../Page/外设组件互连标准.md "wikilink")（支援x1 PCIe、USB 2.0和SMBus总线接口）。
  - [ExpressCard](../Page/ExpressCard.md "wikilink")：类似[PC卡接口标准](../Page/PC卡.md "wikilink")（支援x1
    PCIe、USB 2.0、热插拔）。
  - PCI Express ExpressModule：支援熱插拔的接口標準用於伺服器和工作站上。
  - [XMC](https://zh.wikipedia.org/wiki/XMC "wikilink")：類似[CMC](https://zh.wikipedia.org/wiki/CMC "wikilink")／[PMC接口標準](https://zh.wikipedia.org/wiki/PMC "wikilink")（支援x4
    PCIe或串行RapidI/O）。
  - [AdvancedTCA](https://zh.wikipedia.org/wiki/AdvancedTCA "wikilink")：用以代替[Compact
    PCI卡](https://zh.wikipedia.org/wiki/Compact_PCI "wikilink")，支援串行背板拓撲結構基礎。
  - [AMC](https://zh.wikipedia.org/wiki/自適應調變和編碼 "wikilink")：AdvancedTCA規範的補充，支援處理器和I/O模塊在ATCA板上（x1、x2、x4或x8
    PCIe）。
  - PCI Express外置接線\[13\]。
  - [Mobile PCI Express
    Module](https://zh.wikipedia.org/wiki/Mobile_PCI_Express_Module "wikilink")（MXM）[英伟达所發明的圖形模塊規範](../Page/英伟达.md "wikilink")。
  - [Advanced eXpress I/O
    Module](https://zh.wikipedia.org/wiki/Advanced_eXpress_I/O_Module "wikilink")（AXIOM）圖形模塊，由[ATI認可](https://zh.wikipedia.org/wiki/ATI "wikilink")。
  - [Thunderbolt](../Page/Thunderbolt.md "wikilink")
  - [M.2](../Page/M.2.md "wikilink")

## 竞争协议

基于高速序列构架产生了很多传输标准。包括[HyperTransport](../Page/HyperTransport.md "wikilink")、[InfiniBand](../Page/InfiniBand.md "wikilink")、[RapidIO和](https://zh.wikipedia.org/wiki/RapidIO "wikilink")[StarFabric等等](https://zh.wikipedia.org/wiki/StarFabric "wikilink")。这些均有业界的不同企业支援，背后也都有大量的资金投入标准的研究开发，所以每一标准都声称自己与众不同，独占优势。主要的差异在于可扩展性、灵活性与反应时间、单位成本的取舍平衡各不相同。其中的一个例子是在传输包上增加一个复杂的头信息以支援复杂路由传输（PCI
Express不支援这种方式）。这样的信息增加降低了接口的有效带宽也使传输更复杂，但是相应创造了新的软件支援此功能。这种架构下需要软件追踪网络拓扑结构的变化以实现系统支援热插拔。InfiniBand和StarFabric标准即能实现这一功能。另一个例子是缩小信息包以减少反应时间。较小的信息包意味着包头占用了包的更大百分比，这样又降低了有效带宽。能实现此功能的标准是RapidIO和HyperTransport。PCI
Express取中庸之道，定位于设计成一种[系统互连接口而非一种](../Page/总线.md "wikilink")[设备接口或路由网络协议](https://zh.wikipedia.org/wiki/设备接口 "wikilink")。另外为了针对软件透明，它的设计目标限制了它作为协议，也在某种程度上增加了它的反应时间。

## 应用与前景

[Gigabyte_GV-NX62TC256D8_Rev_1.0.jpg](https://zh.wikipedia.org/wiki/File:Gigabyte_GV-NX62TC256D8_Rev_1.0.jpg "fig:Gigabyte_GV-NX62TC256D8_Rev_1.0.jpg")GV-NX62TC256D8顯示卡，採用PCI
Express x16插槽\]\]
在2005年，PCIe已近乎成为新的[个人电脑](../Page/个人电脑.md "wikilink")[主機板标准](https://zh.wikipedia.org/wiki/主機板 "wikilink")。关于此有不少评论，但最基本的原因是它对于[软件开发者完全透明](../Page/软件.md "wikilink")——为PCI所设计的操作系统可以不做任何代码修改来启动PCIe设备。其二，它能增强[系统性能](https://zh.wikipedia.org/wiki/系统 "wikilink")，还有强有力的品牌认知。各类网卡、声卡、显卡，以及当下的NVMe闪存卡都使用了PCIe标准。下面为主流的使用PCIe
的外设产品。

#### 显卡

大部分新型的AMD或[英伟达显卡都使用PCIe标准](../Page/英伟达.md "wikilink")。[英伟达在它新开发的](../Page/英伟达.md "wikilink")[SLI上采用PCIe的高速数据传输](../Page/NVIDIA_SLI.md "wikilink")，这使得两块相同[芯片组](../Page/芯片组.md "wikilink")[显卡可同时工作于一台](https://zh.wikipedia.org/wiki/显卡 "wikilink")[电脑之上](https://zh.wikipedia.org/wiki/电脑 "wikilink")。AMD公司也基于PCIe开发一种两个[GPU一同運作的技術](https://zh.wikipedia.org/wiki/GPU "wikilink")，称为[CrossFire](../Page/AMD_CrossFire.md "wikilink")。ExpressCard刚刚出现在[笔记本电脑上](https://zh.wikipedia.org/wiki/笔记本电脑 "wikilink")，但由于大部分[笔记本电脑仅有一个插槽](https://zh.wikipedia.org/wiki/笔记本电脑 "wikilink")，目前无法将现有的Cardbus接口完全淘汰，升级成新的快速卡插槽。[桌上型電腦就没有这种问题](../Page/桌上型電腦.md "wikilink")，因为它的多个插槽可以同时支援PCIe和舊版PCI。

#### 硬盘

当下主流的硬盘虽然有SATA Express、PCIe、M.2、U.2等，但是底层都借助了PCIe与CPU通信。[SATA
Express有AHCI模式](../Page/SATA_Express.md "wikilink")、而M.2和U.2则为原生的PCIe
接口设计。而[NVMe协议最高效的PCIe](../Page/NVM_Express.md "wikilink")
SSD协议标准，所以适用这一标准的SSD也被称为NVMe SSD。



## 參考文獻

<div class="references-small">

<references>

</references>

</div>

## 參見

  - [PCI](../Page/外设组件互连标准.md "wikilink")
  - [PCI-X](../Page/PCI-X.md "wikilink")
  - PCI Express
  - [Express
    Card](https://zh.wikipedia.org/wiki/Express_Card "wikilink")
  - [MiniPCI](../Page/外设组件互连标准.md "wikilink")
  - [USB 3.1](../Page/USB_3.1.md "wikilink")

[Category:计算机总线](https://zh.wikipedia.org/wiki/Category:计算机总线 "wikilink")
[Category:主板](https://zh.wikipedia.org/wiki/Category:主板 "wikilink")
[Category:串行总线](https://zh.wikipedia.org/wiki/Category:串行总线 "wikilink")

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