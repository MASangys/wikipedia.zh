**通用串行总线**（，縮寫：）是连接[计算机系统与](https://zh.wikipedia.org/wiki/计算机 "wikilink")[外部设备的一种](https://zh.wikipedia.org/wiki/外部设备 "wikilink")[串口](../Page/串行端口.md "wikilink")[总线标准](../Page/总线.md "wikilink")，也是一种[输入输出](https://zh.wikipedia.org/wiki/输入输出 "wikilink")[接口的技术规范](https://zh.wikipedia.org/wiki/接口 "wikilink")，被广泛地应用于[个人电脑和](../Page/个人电脑.md "wikilink")[移动设备等](../Page/移动设备.md "wikilink")[信息通讯产品](../Page/信息及通信技术.md "wikilink")，并扩展至[摄影器材](https://zh.wikipedia.org/wiki/摄影器材 "wikilink")、[数字电视](../Page/数字电视.md "wikilink")（[机顶盒](https://zh.wikipedia.org/wiki/机顶盒 "wikilink")）、[游戏机等其它相关领域](https://zh.wikipedia.org/wiki/游戏机 "wikilink")。

多媒體電腦剛問世時，外接式裝置的傳輸介面各不相同，如印表機只能接[LPT](https://zh.wikipedia.org/wiki/並列埠 "wikilink")、數據機只能接[RS232](https://zh.wikipedia.org/wiki/RS-232 "wikilink")、滑鼠鍵盤只能接[PS/2等](https://zh.wikipedia.org/wiki/PS/2接口 "wikilink")。繁雜的介面系統，加上必須安裝驅動程式並重新開機才能使用的限制，都會造成使用者的困擾。因此，創造出一個統一且支援易插拔的外接式傳輸介面，便成為無可避免的趨勢，USB應運而生。

最新一代的USB是USB 3.2，傳輸速度為20Gbit/s，三段式電壓5V/12V/20V，最大供電100W。另外僅有個別的USB
Type-A、Micro-B以及新型[USB
Type-C接頭不再分正反](../Page/USB_Type-C.md "wikilink")。\[1\]\[2\]

## 概述

[Mac_USB_Connector.jpg](https://zh.wikipedia.org/wiki/File:Mac_USB_Connector.jpg "fig:Mac_USB_Connector.jpg")
[USB_Type_B_Plug_2.jpg](https://zh.wikipedia.org/wiki/File:USB_Type_B_Plug_2.jpg "fig:USB_Type_B_Plug_2.jpg")做对照\]\]
[USB_hub.jpg](https://zh.wikipedia.org/wiki/File:USB_hub.jpg "fig:USB_hub.jpg")
USB最初是由[英特尔与](../Page/英特尔.md "wikilink")[微软倡導發起](../Page/微软.md "wikilink")，最大的特点是尽可能得实现[热插拔和](https://zh.wikipedia.org/wiki/热插拔 "wikilink")[即插即用](https://zh.wikipedia.org/wiki/即插即用 "wikilink")。当设备插入时，主机[枚举到此设备并加载所需的](../Page/枚举.md "wikilink")[驱动程序](../Page/驱动程序.md "wikilink")，因此其在使用上远比[PCI和](../Page/外设组件互连标准.md "wikilink")[ISA等总线方便](../Page/工业标准结构.md "wikilink")。

USB在速度上远比[并行端口](../Page/并行端口.md "wikilink")（例如EPP、LPT）與[串行接口](https://zh.wikipedia.org/wiki/串行接口 "wikilink")（例如RS-232）等傳統電腦用標準匯流排快上許多。USB
1.1（USB 2.0 FullSpeed）的最大傳輸速率為12Mbps，USB 2.0（USB 2.0
HiSpeed）為480Mbps，USB 3.0（USB 3.2 Gen1x1） 為 5Gbps，USB 3.1（USB 3.2
Gen2x1） 為 10Gbps，而USB 3.2（USB 3.2 Gen2x2）更达20Gbps。

USB的设计为[非对称式的](https://zh.wikipedia.org/wiki/非对称式 "wikilink")，它由一个[主机控制器和若干通过](https://zh.wikipedia.org/wiki/主机 "wikilink")[集线器设备以树形连接的](https://zh.wikipedia.org/wiki/集线器 "wikilink")[设备组成](https://zh.wikipedia.org/wiki/设备 "wikilink")。一个控制器下最多可以有5级Hub，包括Hub在内，最多可以連接128個設備，因為在設計時是使用7位元[定址欄位](https://zh.wikipedia.org/wiki/定址欄位 "wikilink")，二的七次方就等於128，一般人說USB連接127個是指連接（某一設備）時需扣除一個連接主機的USB接頭，而一台计算机可以同时有多个控制器。和[SPI](../Page/序列周邊介面.md "wikilink")-[SCSI等标准不同](https://zh.wikipedia.org/wiki/SCSI "wikilink")，USB集线器不需要终结器。

USB可以连接的[外设有](https://zh.wikipedia.org/wiki/外设 "wikilink")[鼠标](../Page/鼠标.md "wikilink")、[键盘](https://zh.wikipedia.org/wiki/键盘 "wikilink")、[游戏手柄](https://zh.wikipedia.org/wiki/游戏手柄 "wikilink")、[游戏杆](https://zh.wikipedia.org/wiki/游戏杆 "wikilink")、[扫描仪](https://zh.wikipedia.org/wiki/扫描仪 "wikilink")、[数码相机](../Page/数码相机.md "wikilink")、[打印机](../Page/打印机.md "wikilink")、[硬盘和](../Page/硬盘.md "wikilink")[网络等部件](https://zh.wikipedia.org/wiki/网络 "wikilink")。对数码相机这样的多媒体外设USB已经是缺省接口；由于大大简化与计算机的连接，USB也逐步取代[并行接口成为打印机的主流连接方式之一](https://zh.wikipedia.org/wiki/并行接口 "wikilink")。2004年已经有超过1亿台USB设备；到2007年時，高清晰度数字视频外设是仅有的USB未能染指的外设类别，因为他需要更高的传输速率。

现USB标准中，按照速度等级和连接方式分为以下七种版本。注意USB-IF正式的主版本号只有USB 2.0和USB 3.2两个。

<table>
<thead>
<tr class="header">
<th><p>USB版本</p></th>
<th><p>USB<strong>标志</strong></p></th>
<th><p>傳輸速率</p></th>
<th><p>理論速度</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>官方版本</p></td>
<td><p>官方市场代号</p></td>
<td><p>市场俗称</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>USB 3.2</p></td>
<td><p>Gen2x2</p></td>
<td><p>超高速+<br />
SuperSpeed+</p></td>
<td><p>USB 3.2</p></td>
</tr>
<tr class="odd">
<td><p>Gen1x2</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:Certified_SuperSpeed_Plus_USB_Logo.svg" title="fig:Certified_SuperSpeed_Plus_USB_Logo.svg">Certified_SuperSpeed_Plus_USB_Logo.svg</a></p></td>
<td><p>10Gbps</p></td>
<td><p>1280MB/s</p></td>
</tr>
<tr class="even">
<td><p>Gen2x1</p></td>
<td><p>USB 3.1</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Gen1x1</p></td>
<td><p>超高速<br />
SuperSpeed</p></td>
<td><p>USB 3.0</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:SuperSpeed_USB.svg" title="fig:SuperSpeed_USB.svg">SuperSpeed_USB.svg</a></p></td>
</tr>
<tr class="even">
<td><p>USB 2.0</p></td>
<td><p>HiSpeed</p></td>
<td><p>高速<br />
Hi-Speed</p></td>
<td><p>USB 2.0</p></td>
</tr>
<tr class="odd">
<td><p>FullSpeed</p></td>
<td><p>全速<br />
Full Speed</p></td>
<td><p>USB 1.1</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:Certified_USB.svg" title="fig:Certified_USB.svg">Certified_USB.svg</a></p></td>
</tr>
<tr class="even">
<td><p>LowSpeed</p></td>
<td><p>低速<br />
Low Speed</p></td>
<td><p>USB 1.0</p></td>
<td><p>1.5Mbps</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 标准

[USB实装论坛负责USB标准制订](https://zh.wikipedia.org/wiki/USB-IF "wikilink")，其成员包括：[苹果电脑](https://zh.wikipedia.org/wiki/苹果电脑 "wikilink")、[惠普](../Page/惠普.md "wikilink")、[NEC](https://zh.wikipedia.org/wiki/NEC "wikilink")、[微软和](../Page/微软.md "wikilink")[英特尔](../Page/英特尔.md "wikilink")。

2001年底，公布规范，与之前的、和一样，该规范完全[向下兼容](../Page/向下兼容.md "wikilink")。随后，公布（，当前版本：）作为规范的补充标准，使其能够用于在便携设备之间直接交换数据。

USB的连接器分为A、B两种，分别用于主机和设备；其各自的小型化的连接器是,  和 , ，另外还有（可同時支援及）的插口。

## 技术细节

### 技术指标

[USB_types_2.jpg](https://zh.wikipedia.org/wiki/File:USB_types_2.jpg "fig:USB_types_2.jpg")
目前USB支持5种[数据信号速率](https://zh.wikipedia.org/wiki/数据信号速率 "wikilink")，USB设备应该在其外壳或者有时是自身上正确标明其使用的速率。[USB-IF进行设备认证并为通过兼容测试并支付许可费用的设备提供基本速率](https://zh.wikipedia.org/wiki/USB-IF "wikilink")（低速和全速）和高速的特殊商标许可。

  - 1.5
    Mbps的低速速率。主要用于低速率[人机接口设备](https://zh.wikipedia.org/wiki/人機互動 "wikilink")，例如键盘、鼠标、游戏杆等等。
  - 12 Mbps的全速速率。在USB
    2.0之前是曾经是最高速率，后起的更高速率的高速接口应该兼容全速速率。多个全速设备间可以按照先到先得法则划分带宽；使用多个等时设备时会超过带宽上限也并不罕见。所有的USB連接埠支援全速速率。
  - 480 Mbps的高速速率。并非所有的USB
    2.0设备都是高速的。高速设备插入全速連接埠时应该与全速兼容。而高速連接埠具有所谓**事务翻译器**（**）功能，能够隔离全速、低速设备与高速之间数据流，但是不会影响供电和串联深度。
  - 5Gbps的超高速速率。相較於現有USB 2.0的480Mbps最高理論速度，USB 3.0可支援到5.0Gbps，是USB
    2.0的10倍。若將USB 3.0應用到外接硬碟、隨身碟或藍光燒錄機等儲存裝置，將可大幅縮短資料傳輸時間。
  - 10Gbps的超高速速率+。USB 3.1 Gen2最高10Gbps理論速度，是USB 3.0的兩倍。

### 机械和电子标准

<table>
<caption>USB机械电子标准一览</caption>
<thead>
<tr class="header">
<th><p>类别</p></th>
<th><p>Type-A</p></th>
<th><p>Type-B</p></th>
<th><p>Type-C</p></th>
<th><p>Mini-A</p></th>
<th><p>Mini-B</p></th>
<th><p>Mini-AB</p></th>
<th><p>Micro-A</p></th>
<th><p>Micro-B</p></th>
<th><p>Micro-AB</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>插头（公头）</p></td>
<td><p>2.0</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-A.svg" title="fig:USB_Type-A.svg">USB_Type-A.svg</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-B.svg" title="fig:USB_Type-B.svg">USB_Type-B.svg</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-C_icon.svg" title="fig:USB_Type-C_icon.svg">USB_Type-C_icon.svg</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Mini-A.svg" title="fig:USB_Mini-A.svg">USB_Mini-A.svg</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Mini-B.svg" title="fig:USB_Mini-B.svg">USB_Mini-B.svg</a></p></td>
<td><p>rowspan="2" </p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Micro-A.svg" title="fig:USB_Micro-A.svg">USB_Micro-A.svg</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Micro-B.svg" title="fig:USB_Micro-B.svg">USB_Micro-B.svg</a></p></td>
</tr>
<tr class="even">
<td><p>3.2</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Type-A_blue.svg" title="fig:USB_3.0_Type-A_blue.svg">USB_3.0_Type-A_blue.svg</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Type-B_blue.svg" title="fig:USB_3.0_Type-B_blue.svg">USB_3.0_Type-B_blue.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Micro-B.svg" title="fig:USB_3.0_Micro-B.svg">USB_3.0_Micro-B.svg</a></p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>插座（母头）</p></td>
<td><p>2.0</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-A_receptacle.svg" title="fig:USB_Type-A_receptacle.svg">USB_Type-A_receptacle.svg</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-B_receptacle.svg" title="fig:USB_Type-B_receptacle.svg">USB_Type-B_receptacle.svg</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-C_receptacle.svg" title="fig:USB_Type-C_receptacle.svg">USB_Type-C_receptacle.svg</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Mini-A_receptacle.svg" title="fig:USB_Mini-A_receptacle.svg">USB_Mini-A_receptacle.svg</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Mini-B_receptacle.svg" title="fig:USB_Mini-B_receptacle.svg">USB_Mini-B_receptacle.svg</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Mini-AB_receptacle.svg" title="fig:USB_Mini-AB_receptacle.svg">USB_Mini-AB_receptacle.svg</a></p></td>
<td><p>rowspan="2" </p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Micro-B_receptacle.svg" title="fig:USB_Micro-B_receptacle.svg">USB_Micro-B_receptacle.svg</a></p></td>
</tr>
<tr class="even">
<td><p>3.2</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Type-A_receptacle_blue.svg" title="fig:USB_3.0_Type-A_receptacle_blue.svg">USB_3.0_Type-A_receptacle_blue.svg</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Type-B_receptacle_blue.svg" title="fig:USB_3.0_Type-B_receptacle_blue.svg">USB_3.0_Type-B_receptacle_blue.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Micro-B_receptacle.svg" title="fig:USB_3.0_Micro-B_receptacle.svg">USB_3.0_Micro-B_receptacle.svg</a></p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>应用范围</p></td>
<td><p>计算机</p></td>
<td><p>扫描仪、打印机等</p></td>
<td><p>新式计算机、移动电话、平板电脑等</p></td>
<td></td>
<td><p>旧式便携设备</p></td>
<td><p>仅作为万能接头</p></td>
<td></td>
<td><p>移动电话、平板电脑等</p></td>
<td><p>仅作为万能接头</p></td>
</tr>
</tbody>
</table>

#### 标准USB接口

[Types-usb_new.svg](https://zh.wikipedia.org/wiki/File:Types-usb_new.svg "fig:Types-usb_new.svg")
[USB_InSide.JPG](https://zh.wikipedia.org/wiki/File:USB_InSide.JPG "fig:USB_InSide.JPG")
USB信号使用分别标记为D+和D-
的[双绞线传输](../Page/双绞线.md "wikilink")，它们各自使用[半双工的](https://zh.wikipedia.org/wiki/半双工 "wikilink")[差分信号并协同工作](../Page/差分信号.md "wikilink")，以抵消长导线的电磁干扰。

| 触点 | 功能（主机）                                            | 功能（设备）                      |
| -- | ------------------------------------------------- | --------------------------- |
| 1  | V<sub>BUS</sub>（4.75－5.25 V）                      | V<sub>BUS</sub>（4.4－5.25 V） |
| 2  | D-                                                | D-                          |
| 3  | D+                                                | D+                          |
| 4  | [接地](https://zh.wikipedia.org/wiki/地线 "wikilink") | 接地                          |

标准USB连接器触点

#### Mini USB接口

[Mini_usb_AB.jpg](https://zh.wikipedia.org/wiki/File:Mini_usb_AB.jpg "fig:Mini_usb_AB.jpg")
除了第4针外，其他接口功能皆與标准USB相同。第4针成为ID，地线在mini-A上连接到第5针，在mini-B可以悬空亦可连接到第5针。

| 触点 | 功能                          | 顏色 |
| -- | --------------------------- | -- |
| 1  | V<sub>BUS</sub>（4.4–5.25 V） | 紅  |
| 2  | D−                          | 白  |
| 3  | D+                          | 綠  |
| 4  | ID                          |    |
| 5  | 接地                          | 黑  |

Mini USB连接器触点

#### Micro USB接口

[Micro-USB.png](https://zh.wikipedia.org/wiki/File:Micro-USB.png "fig:Micro-USB.png")
[A_Micro-A_USB_port.jpeg](https://zh.wikipedia.org/wiki/File:A_Micro-A_USB_port.jpeg "fig:A_Micro-A_USB_port.jpeg")
[MicroB_USB_Plug.jpg](https://zh.wikipedia.org/wiki/File:MicroB_USB_Plug.jpg "fig:MicroB_USB_Plug.jpg")
2007年1月4日，[USB实装论坛颁布](https://zh.wikipedia.org/wiki/USB-IF "wikilink")的插头标准\[3\]。该标准将在许多新型[智能手机和](../Page/智能手机.md "wikilink")[PDA上替代](../Page/个人数码助理.md "wikilink")。插头的插拔寿命为10,000次，比插头高度减半，宽度相差无几。[OMTP组织最近宣布](https://zh.wikipedia.org/wiki/OMTP "wikilink")，将成为移动设备数据和电源的标准接口\[4\]。

2009年2月17日，[全球行動通訊聯盟協會宣佈在](https://zh.wikipedia.org/wiki/全球行動通訊系統協會 "wikilink")2012年前將使用作為全球統一的標準充電器規格。首批簽署協議的廠商包括：[諾基亞](https://zh.wikipedia.org/wiki/諾基亞 "wikilink")、[樂金](https://zh.wikipedia.org/wiki/樂金 "wikilink")、[摩托羅拉](https://zh.wikipedia.org/wiki/摩托羅拉 "wikilink")、[三星](../Page/三星電子.md "wikilink")、[索尼移動](https://zh.wikipedia.org/wiki/索尼移動 "wikilink")、[美國電話電報公司](https://zh.wikipedia.org/wiki/美國電話電報公司 "wikilink")、[法國電信](https://zh.wikipedia.org/wiki/法國電信 "wikilink")、[西班牙電信](../Page/西班牙電信.md "wikilink")、[T-Mobile與](../Page/T-Mobile.md "wikilink")[沃达丰](https://zh.wikipedia.org/wiki/沃达丰 "wikilink")。

#### 编码方式

USB使用NRZI编码方式：当数据为0时，电平翻转；数据为1时，电平不翻转。为了防止出现过长时间电平不变化现象，在发送数据时采用位填充处理。具体过程如下：当遇见连续6个高电平时，就强制插入一个0。经过位填充后的数据由串行接口引擎（SIE）将数据串行化和NRZI编码后，发送到USB的差分数据线上。接收端完成的过程和发送端刚好相反。

### 软件架构

[PCB_mounting_female_USB_A_and_B_connectors.jpg](https://zh.wikipedia.org/wiki/File:PCB_mounting_female_USB_A_and_B_connectors.jpg "fig:PCB_mounting_female_USB_A_and_B_connectors.jpg")上的USB插座\]\]
一个USB主机通过hub链可以连接多个设备。由于理论上一个物理设备可以承担多种功能，例如[路由器同时也可以是一个](../Page/路由器.md "wikilink")[SD卡读卡器](../Page/SD卡.md "wikilink")，USB的术语中设备（device）指的是功能（functions）。集线器（hub）由于作用特殊，按照正式的观点并不认为是function。直接连接到主机的hub是根（root）hub。

#### 端点

设备／功能（和集线器）与管道pipe（逻辑通道）联系在一起，管道把主机控制器和被称为端点[endpoint的逻辑实体连接起来](https://zh.wikipedia.org/wiki/endpoint "wikilink")。管道和比特流（例如[UNIX的](../Page/UNIX.md "wikilink")[pipeline](https://zh.wikipedia.org/wiki/pipeline "wikilink")）有着相同的含义，而在USB词汇中术语端点经常和管道混用，甚至在正式文档中。

端点（和各自的管道）在每个方向上按照0-15编号，因此一个设备／功能最多有32个活动管道，16个进，16个出。（出（OUT）指离开控制器，而入（IN）指进入主机控制器。）两个方向的端点0总是留给总线管理，占用了32个端点中的2个。在管道中，数据使用不同长度的包传递，端点可以传递的包长度上限一般是\(2^n\)字节，所以USB包经常包含的数据量依次有8、16、32、64、128、256、512或者1024字节。

一个端点只能单向（进／出）传输数据，自然管道也是单向的。每个USB设备至少有两个端点／管道：它们分别是进出方向的，编号为0，用于[控制总线上的设备](https://zh.wikipedia.org/wiki/控制总线 "wikilink")。按照各自的传输类型，管道被分为4类：

  - 控制传输（Control）——一般用于短的、简单的对设备的命令和状态反馈，例如用于总线控制的0号管道。
  - 同步传输（Isochronous）——按照有保障的速度（可能但不必然是尽快地）传输，可能有数据丢失，例如实时的音频、视频。
  - 中断传输（Interrupt）——用于必须保证尽快反应的设备（有限延迟），例如鼠标、键盘。
  - 批量传输（Bulk）——使用余下的带宽大量地（但是没有对于延迟、连续性、带宽和速度的保证）传输数据，例如普通的文件传输。

一旦设备（功能）通过总线的hub附加到主机控制器，主机控制器就给它分配一个主机上唯一的7位地址。主机控制器通过投票分配流量，一般是通过轮询模式，因此没有明确向主机控制器请求之前，设备不能传输数据。

为了访问端点，必须获得一个分层的配置。连接到主机的设备有且仅有一个设备描述符（device
descriptor），而设备描述符有若干配置描述符（configuration
descriptors）。这些配置一般与状态相对应，例如活跃和[节能模式](https://zh.wikipedia.org/wiki/电源管理 "wikilink")。每个配置描述符有若干接口描述符（interface
setting），用于描述设备的一定方面，所以可以被用于不同的用途：如一个相机可能拥有视频和音频两个接口。接口描述符有一个缺省接口设置（default
interface setting）和可能多个替代接口设置（alternate interface
settings），它们都拥有如上所述的端点描述符。一个端点能够在多个接口和替代接口设置之间复用。

#### HCD (Host Controller Driver)

包含主机控制器和HUB的[硬件为程序员提供了由硬件实现定义的接口主机控制器设备](../Page/硬件.md "wikilink")（HCD）。而实际上它在计算机上就是[端口和](https://zh.wikipedia.org/wiki/端口 "wikilink")[内存映射](https://zh.wikipedia.org/wiki/内存映射 "wikilink")。

1.0和1.1的标准有两个竞争的HCD实现。[康柏的开放主机控制器接口](../Page/康柏.md "wikilink")（OHCI）和Intel的通用主机控制器接口（UHCI）。VIA[威盛采纳了UHCI](https://zh.wikipedia.org/wiki/威盛 "wikilink")；其他主要的芯片组多使用OHCI。它们的主要区别是UHCI更加依赖软件驱动，因此对CPU要求更高，但是自身的硬件会更廉价。它们的并存导致操作系统开发和硬件厂商都必须在两个方案上开发和测试，从而导致费用上升。因此USB-IF在USB
2.0的设计阶段坚持只能有一个实现规范，这就是扩展主机控制器接口（EHCI）。因为EHCI只支持高速传输，所以EHCI控制器包括四个虚拟的全速或者慢速控制器。这里同样是Intel和Via使用虚拟UHCI，其他一般使用OHCI控制器。

某些版本的[Windows上](https://zh.wikipedia.org/wiki/Windows "wikilink")，打开设备管理器，如果设备说明中是否有“增强”（"Enhanced"），就能够确认它是2.0版的。而在[Linux系统中](../Page/Linux.md "wikilink")，命令lspci能够列出所有的PCI设备，而USB会分别命名为OHCI、UHCI或者EHCI，列出为32位地址的为EHCI，16位的为OHCI。命令lsusb能够显示所有USB设备的信息。命令dmesg能够显示OS启动时关于USB设备的信息。

#### USB封包格式

USB的封包格式和早期的互联网封包格式非常相似，要了解USB連接原理就一定要先了解封包格式。

<table>
<caption>USB封包格式</caption>
<thead>
<tr class="header">
<th><p>偏移量</p></th>
<th><p>类型</p></th>
<th><p>大小</p></th>
<th><p>值</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td><p>HeaderChksum</p></td>
<td><p>1</p></td>
<td><p>利用添加包头进行效验，不包括包头本身的校验。</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>HeaderSize</p></td>
<td><p>1</p></td>
<td><p>包头的大小，包括可用的字串。</p></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Signature</p></td>
<td><p>2</p></td>
<td><p>数据值为0x1234</p></td>
</tr>
<tr class="even">
<td><p>4</p></td>
<td><p>VendorID</p></td>
<td><p>2</p></td>
<td><p>USB提供商的ID</p></td>
</tr>
<tr class="odd">
<td><p>6</p></td>
<td><p>ProductID</p></td>
<td><p>2</p></td>
<td><p>USB产品ID</p></td>
</tr>
<tr class="even">
<td><p>8</p></td>
<td><p>ProductVersion</p></td>
<td><p>1</p></td>
<td><p>产品版本号</p></td>
</tr>
<tr class="odd">
<td><p>9</p></td>
<td><p>FirmwareVersion</p></td>
<td><p>1</p></td>
<td><p>固件版本号</p></td>
</tr>
<tr class="even">
<td><p>10</p></td>
<td><p>USB属性</p></td>
<td><p>1</p></td>
<td><p>USB Attribute:<br />
Bit 0：如果设为1，包头包括以下三个字串：语言、制造商、产品字串；如果设为0，包头不包括任何字串。<br />
Bit 2：如果设为1，设备自带电源；如果设为0，无自带电源。<br />
Bit 3：如果设为1，设备可以通过总线供电；如果设为0，无法通过总线供电。<br />
Bits 1 and 4—7：保留。</p></td>
</tr>
<tr class="odd">
<td><p>11</p></td>
<td><p>最大电力</p></td>
<td><p>1</p></td>
<td><p>设备需要的最大电力，以2mA（毫<a href="../Page/安培.md" title="wikilink">安培</a>）为单位。</p></td>
</tr>
<tr class="even">
<td><p>12</p></td>
<td><p>设备属性</p></td>
<td><p>1</p></td>
<td><p>Device Attributes:<br />
Bit 0：如果设为1，CPU运行在24 MHz；如果设为0，CPU运行在12 MHz。<br />
Bit 3：如果设为1，设备的EEPROM可以支持400 MHz；如果设为0，不支持400 MHz。<br />
Bits 1, 2 and 4 ... 7：保留。</p></td>
</tr>
<tr class="odd">
<td><p>13</p></td>
<td><p>WPageSize</p></td>
<td><p>1</p></td>
<td><p>I2C的最大写入页面大小</p></td>
</tr>
<tr class="even">
<td><p>14</p></td>
<td><p>数据类型</p></td>
<td><p>1</p></td>
<td><p>该数值定义设备是软件EEPROM还是硬件EEPROM。0x02：硬件EEPROM<br />
其它数值无效。</p></td>
</tr>
<tr class="odd">
<td><p>15</p></td>
<td><p>RpageSize</p></td>
<td><p>1</p></td>
<td><p>I2C最大读取页面大小。如果值为0，整个负载大小由一个I2C读取装置读取。</p></td>
</tr>
<tr class="even">
<td><p>16</p></td>
<td><p>PayLoadSize</p></td>
<td><p>2</p></td>
<td><p>如果将EEPROM作为软件EEPROM使用，表示软件的大小；除此之外该值都是0。</p></td>
</tr>
<tr class="odd">
<td><p>0xxx</p></td>
<td><p>Language string</p></td>
<td><p>4</p></td>
<td><p>语言字串。以标准USB字串格式表示。（非必要欄位）</p></td>
</tr>
<tr class="even">
<td><p>0xxx</p></td>
<td><p>Manufacture string</p></td>
<td><p>...</p></td>
<td><p>制造商字串。以标准USB字串格式表示。（非必要欄位）</p></td>
</tr>
<tr class="odd">
<td><p>0xxx</p></td>
<td><p>Product string</p></td>
<td><p>...</p></td>
<td><p>产品字串，以标准USB字串格式表示。（非必要欄位）</p></td>
</tr>
<tr class="even">
<td><p>0xxx</p></td>
<td><p>Application Code</p></td>
<td><p>...</p></td>
<td><p>表示应用代码。以标准USB字串格式表示。（非必要欄位）</p></td>
</tr>
</tbody>
</table>

### 设备分类

[USB_Flash_Drive_animated.gif](https://zh.wikipedia.org/wiki/File:USB_Flash_Drive_animated.gif "fig:USB_Flash_Drive_animated.gif")\]\]
依附在总线上的设备可以是需要特定的驱动程序的完全定制的设备，也可能属于某个设备类别。这些类别定义了某种设备的行为和接口描述符，这样一个驱动程序可能用于所有此种类别的设备。一般操作系统都为支持这些设备类别，为其提供通用驱动程序。

设备分类由USB设计论坛设备工作组决定，并分配ID。

如果一个设备类型属于整个设备，该设备的描述符的bDeviceClass域保存类别ID；如果它这是设备的一个接口，其ID保存在接口描述符的bInterfaceClass域。他们都占用一个字节，所以最多有253种设备类别。（0x00和0xFF保留）。当bDeviceClass设为0x00，[操作系统会检查每个接口的bInterfaceClass以确定其类别](../Page/操作系统.md "wikilink")。

每种类别可选支持子类别（SubClass）和协议子定义（Protocol subdefinition）。这样可以用于主设备类型的不断修订。

常用设备类别和ID有：

| ID          | 裝置                                                             | 例子                                                                                                                                                                       |
| ----------- | -------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| 0x00 \[5\]  | 保留值                                                            | 無                                                                                                                                                                        |
| 0x01 \[6\]  | 音效裝置                                                           | [音效卡](https://zh.wikipedia.org/wiki/音效卡 "wikilink")                                                                                                                      |
| 0x02        | USB通訊控制裝置                                                      | 網卡、數據機、串列埠                                                                                                                                                               |
| 0x03 \[7\]  | [人機介面裝置](https://zh.wikipedia.org/wiki/人機介面裝置 "wikilink")（HID） | [鍵盤](https://zh.wikipedia.org/wiki/鍵盤 "wikilink")、[滑鼠](https://zh.wikipedia.org/wiki/滑鼠 "wikilink")                                                                      |
| 0x05        | 物理介面裝置                                                         | [控制杆](../Page/控制杆.md "wikilink")                                                                                                                                         |
| 0x06 \[8\]  | 靜止圖像捕捉設備                                                       | [影像掃描器](../Page/影像掃描器.md "wikilink")、[Picture Transfer Protocol](../Page/PictBridge.md "wikilink")                                                                       |
| 0x07 \[9\]  | 列印裝置                                                           | [打印機](https://zh.wikipedia.org/wiki/打印機 "wikilink")                                                                                                                      |
| 0x08 \[10\] | 大容量存取裝置                                                        | [USB隨身碟](https://zh.wikipedia.org/wiki/U盘 "wikilink")、移動[硬碟](https://zh.wikipedia.org/wiki/硬碟 "wikilink")、[記憶卡讀卡機](../Page/記憶卡.md "wikilink")、數碼相機                       |
| 0x09 \[11\] | [集線器](../Page/集線器.md "wikilink")                               | 集線器                                                                                                                                                                      |
| 0x0A \[12\] | [通信裝置](https://zh.wikipedia.org/wiki/數據通信 "wikilink")          | [數據機](https://zh.wikipedia.org/wiki/數據機 "wikilink")、[網絡卡、](../Page/网卡.md "wikilink")[ISDN](https://zh.wikipedia.org/wiki/ISDN "wikilink")、[傳真](../Page/傳真.md "wikilink") |
| 0x0B        | 智慧卡裝置                                                          | 讀卡器                                                                                                                                                                      |
| 0x0E \[13\] | 影像裝置                                                           | [網路攝影機](https://zh.wikipedia.org/wiki/網路攝影機 "wikilink")                                                                                                                  |
| 0xE0 \[14\] | 無線傳輸裝置                                                         | [藍牙](../Page/藍牙.md "wikilink")                                                                                                                                           |
| 0xFE        | 特殊的應用                                                          | 紅外線資料橋接器                                                                                                                                                                 |
| 0xFF \[15\] | 定製裝置                                                           |                                                                                                                                                                          |

### USB接头

[Usbline2.jpg](https://zh.wikipedia.org/wiki/File:Usbline2.jpg "fig:Usbline2.jpg")
接头是由USB协会所指定，接头的设计一方面为了支持众多USB的基本需求，另一方面也避免以往许多类似串行接头所出现的问题。

  - 接头设计的相当耐用。许多以往使用的接头较脆弱，即使受力不大，有时针脚或零件也会折弯甚至断裂。而USB接头的金属导电部份周围有塑料作为保护，而且整个连接部份被金属的保护套围住，因此USB接头不论插拔，都不容易受损。由於金屬保護套和外圍塑料護套的保護，需要較大的力量才能造成USB接头明顯的損壞。
  - 具有[防呆设计](../Page/防呆.md "wikilink")，方向相反的插头不可能插到插座裡，方向正反很容易感觉出来。所以不可能把USB接口插错。
  - 接头能相对便宜地大量生产。
  - 在USB网络中，接头被强制使用定向拓扑。USB不支持环形网络，因此不兼容的USB设备之间接口也不兼容。不像其他通讯系统（如RJ-45电缆）不能使用转换插头，防止环形USB网络产生。
  - 适度的插拔力。USB电缆和小型USB设备能被插口卡住（不需要夹子、螺丝或者其他接口那样的锁扣）。只需要适当力量插拔即可連接周邊設備。
  - 由于接头的构造，在将USB插头插入USB座时，插头外面的金属保护套会先接触到USB座内对应的金属部份，之后插头内部的四个触点才会接触到USB座。金属保护套会连接到系统的地線，提供路径使静电可以放电，避免因静电通过电子零件而造成损坏。
  - USB电缆最长允许5米，更长的距离需要HUB。\[16\]

#### 接頭一覽表

<table>
<caption>USB接頭配對一覽</caption>
<thead>
<tr class="header">
<th><p>插頭（右）<br />
<br />
插座（下）            </p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-A.svg" title="fig:USB_Type-A.svg">USB_Type-A.svg</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-B.svg" title="fig:USB_Type-B.svg">USB_Type-B.svg</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_Mini-A.svg" title="fig:USB_Mini-A.svg">USB_Mini-A.svg</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_Mini-B.svg" title="fig:USB_Mini-B.svg">USB_Mini-B.svg</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_Micro-A.svg" title="fig:USB_Micro-A.svg">USB_Micro-A.svg</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_Micro-B.svg" title="fig:USB_Micro-B.svg">USB_Micro-B.svg</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Type-A_blue.svg" title="fig:USB_3.0_Type-A_blue.svg">USB_3.0_Type-A_blue.svg</a><br />
USB 3.0 Type A</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Type-B_blue.svg" title="fig:USB_3.0_Type-B_blue.svg">USB_3.0_Type-B_blue.svg</a><br />
USB 3.0 Type B</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Micro-B.svg" title="fig:USB_3.0_Micro-B.svg">USB_3.0_Micro-B.svg</a><br />
USB 3.0 Micro-B</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-C_icon.svg" title="fig:USB_Type-C_icon.svg">USB_Type-C_icon.svg</a><br />
USB-C</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-A_receptacle.svg" title="fig:USB_Type-A_receptacle.svg">USB_Type-A_receptacle.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-B_receptacle.svg" title="fig:USB_Type-B_receptacle.svg">USB_Type-B_receptacle.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Mini-A_receptacle.svg" title="fig:USB_Mini-A_receptacle.svg">USB_Mini-A_receptacle.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Mini-AB_receptacle.svg" title="fig:USB_Mini-AB_receptacle.svg">USB_Mini-AB_receptacle.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Mini-B_receptacle.svg" title="fig:USB_Mini-B_receptacle.svg">USB_Mini-B_receptacle.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Micro-AB_receptacle.svg" title="fig:USB_Micro-AB_receptacle.svg">USB_Micro-AB_receptacle.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Micro-B_receptacle.svg" title="fig:USB_Micro-B_receptacle.svg">USB_Micro-B_receptacle.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Type-A_receptacle_blue.svg" title="fig:USB_3.0_Type-A_receptacle_blue.svg">USB_3.0_Type-A_receptacle_blue.svg</a><br />
USB 3.0 Type A</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Type-B_receptacle_blue.svg" title="fig:USB_3.0_Type-B_receptacle_blue.svg">USB_3.0_Type-B_receptacle_blue.svg</a><br />
USB 3.0 Type B</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Micro-B_receptacle.svg" title="fig:USB_3.0_Micro-B_receptacle.svg">USB_3.0_Micro-B_receptacle.svg</a><br />
USB 3.0 Micro-B</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-C_icon.svg" title="fig:USB_Type-C_icon.svg">USB_Type-C_icon.svg</a><br />
USB-C</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

<table>
<caption>USB 線</caption>
<thead>
<tr class="header">
<th><p>插頭(線的兩端)</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-A.svg" title="fig:USB_Type-A.svg">USB_Type-A.svg</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_Mini-A.svg" title="fig:USB_Mini-A.svg">USB_Mini-A.svg</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_Micro-A.svg" title="fig:USB_Micro-A.svg">USB_Micro-A.svg</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-B.svg" title="fig:USB_Type-B.svg">USB_Type-B.svg</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_Mini-B.svg" title="fig:USB_Mini-B.svg">USB_Mini-B.svg</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_Micro-B.svg" title="fig:USB_Micro-B.svg">USB_Micro-B.svg</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Micro-B_plug.svg" title="fig:USB_3.0_Micro-B_plug.svg">USB_3.0_Micro-B_plug.svg</a><br />
Micro-B SuperSpeed</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-C_icon.svg" title="fig:USB_Type-C_icon.svg">USB_Type-C_icon.svg</a><br />
USB-C</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-A.svg" title="fig:USB_Type-A.svg">USB_Type-A.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Mini-A.svg" title="fig:USB_Mini-A.svg">USB_Mini-A.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Micro-A.svg" title="fig:USB_Micro-A.svg">USB_Micro-A.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-B.svg" title="fig:USB_Type-B.svg">USB_Type-B.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Mini-B.svg" title="fig:USB_Mini-B.svg">USB_Mini-B.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Micro-B.svg" title="fig:USB_Micro-B.svg">USB_Micro-B.svg</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Micro-B_plug.svg" title="fig:USB_3.0_Micro-B_plug.svg">USB_3.0_Micro-B_plug.svg</a><br />
Micro-B SuperSpeed</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-C_icon.svg" title="fig:USB_Type-C_icon.svg">USB_Type-C_icon.svg</a><br />
USB-C</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

<table>
<caption>USB插头-版本</caption>
<thead>
<tr class="header">
<th><p>接头</p></th>
<th><p>USB 2.0</p></th>
<th><p>USB 3.2 Genx1</p></th>
<th><p>USB 3.2 Genx2</p></th>
<th><p>未来的USB标准</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>速度等级</p></td>
<td><p>达480Mbps</p></td>
<td><p>达10Gbps</p></td>
<td><p>达20Gbps</p></td>
<td><p>至少达40Gbps</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-A.svg" title="fig:USB_Type-A.svg">USB_Type-A.svg</a></p></td>
<td></td>
<td></td>
<td><p>colspan="2" </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Type-A_blue.svg" title="fig:USB_3.0_Type-A_blue.svg">USB_3.0_Type-A_blue.svg</a></p></td>
<td></td>
<td></td>
<td><p>colspan="2" </p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-B.svg" title="fig:USB_Type-B.svg">USB_Type-B.svg</a></p></td>
<td></td>
<td></td>
<td><p>colspan="2" </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Type-B_blue.svg" title="fig:USB_3.0_Type-B_blue.svg">USB_3.0_Type-B_blue.svg</a></p></td>
<td></td>
<td></td>
<td><p>colspan="2" </p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Type-C_icon.svg" title="fig:USB_Type-C_icon.svg">USB_Type-C_icon.svg</a><br />
Type-C</p></td>
<td></td>
<td><p>colspan="3" </p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_Micro-B.svg" title="fig:USB_Micro-B.svg">USB_Micro-B.svg</a></p></td>
<td></td>
<td></td>
<td><p>colspan="2" </p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:USB_3.0_Micro-B.svg" title="fig:USB_3.0_Micro-B.svg">USB_3.0_Micro-B.svg</a></p></td>
<td></td>
<td></td>
<td><p>colspan="2" </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Mini-A, Mini-B, Mini-AB<br />
Micro-A, Micro-AB</p></td>
<td></td>
<td><p>colspan="3" </p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 電源

[USB_fans_1.jpg](https://zh.wikipedia.org/wiki/File:USB_fans_1.jpg "fig:USB_fans_1.jpg")\]\]
USB接頭默认提供一組5[伏特的電壓](../Page/伏特.md "wikilink")，可作為相連接USB設備的電源。實際上，設備接收到的電源可能會低於5V，只略高於4V。通过USB
PD3.0、QC4.0等快速充电协议，现有USB接口的最大的可以达到20V，最低3V。

一個USB的HUB最多只能提供500
[mA的電流](../Page/安培.md "wikilink")。如此的電流已足以驅動許多電子設備，不過連接在總線供電HUB的所有設備，需要共享500mA的電流額度。一個由總線供電的設備可以使用到它所連接埠上允許輸出的所有電源。

USB-IF規範1.1版定義USB埠最高供電可達到1.5A/1500mA，而最新的1.2版規範更是修正為最大5A/5000mA的供電，但是總和也不得超過5A。

總線供電的HUB可以將電源供給連接在HUB上的所有設備，不過USB的規範只允許總線供電的HUB下游串接一層總線供電的設備，因此，總線供電的HUB下游不允許再串接另一個由總線供電的HUB。許多HUB有外加電源，因此可以提供電源給下游的設備，不會消耗總線上的電源。若設備需要的電壓超過5V，都需要使用外加電源。

相對於之前其他溝通介面僅能傳遞訊息資料，高電壓USB插槽本身還能提供5V（[伏特](../Page/伏特.md "wikilink")）的主動[電壓](../Page/電壓.md "wikilink")，及0.5A（[安培](../Page/安培.md "wikilink")）的[電流](https://zh.wikipedia.org/wiki/電流 "wikilink")，因此對於一些小型設備而言，可以不必再外接電源供應裝置，就能利用來自USB插槽的電力順利運作。利用這特點，也有廠商開發出適當的排線，將USB拿來當作供電插座般使用，例如作為[行動電話的充電器](https://zh.wikipedia.org/wiki/行動電話 "wikilink")，或是提供小型[桌燈及](https://zh.wikipedia.org/wiki/電燈 "wikilink")[電風扇等的電力需要](https://zh.wikipedia.org/wiki/電風扇 "wikilink")，反而與原本用來連接電腦用的主要用途無關。

## 同类标准比较

### USB大容量存储

[Udisk.jpg](https://zh.wikipedia.org/wiki/File:Udisk.jpg "fig:Udisk.jpg")，典型的USB大容量存储设备\]\]
USB使用[USB大容量存储设备标准实现Storage设备的连接](https://zh.wikipedia.org/wiki/USB大容量存储设备 "wikilink")。它最初被用于传统的磁盘和光盘驱动，但是现在已经扩展到支持大量不同的设备。USB不能用于计算机内部存储设备的基本总线：像[ATA](https://zh.wikipedia.org/wiki/Advanced_Technology_Attachment "wikilink")（IDE）、[SATA和](../Page/SATA.md "wikilink")[SCSI](https://zh.wikipedia.org/wiki/SCSI "wikilink")。

然而，USB有一个非常重要的优点，那就是它能够在不关闭電腦主機電源的情况下动态的安装和删除USB设备，这使它成为一个有用的外部设备。今天，大量的生产商提供便携式USB移动硬盘或者一个空的，能够兼容内部驱动的盒子。这些内部驱动通常提供一个转换驱动接口，用以转换IDE,
ATA, SATA, ATAPI，或者SCSI到USB
port。对于用户来讲，就像连接了一个内部的驱动。其他的竞争标准是[eSATA以及](https://zh.wikipedia.org/wiki/SATA#External_SATA "wikilink")[Firewire](https://zh.wikipedia.org/wiki/Firewire "wikilink")。

在市面也可以找到USB 3.0
Dongle\[17\]此類小型可插拔式的行動裝置，尺寸如同[隨身碟一樣迷你](https://zh.wikipedia.org/wiki/隨身碟 "wikilink")，有廠商推出USB介面的[Wi-Fi](../Page/Wi-Fi.md "wikilink")/[藍芽無線Dongle](https://zh.wikipedia.org/wiki/藍芽 "wikilink")，只要將此Dongle插入液晶電視上，即可透過無線連接方式，將使用者手機、平板、筆電中的影片、照片分享到液晶電視上觀看，市面上已有廠商將Android作業系統直接寫入Dongle，成為多功能電視棒的產品。

相关存储产品包括：[主机板](https://zh.wikipedia.org/wiki/主机板 "wikilink")、[磁碟阵列卡](https://zh.wikipedia.org/wiki/磁碟阵列 "wikilink")、[硬碟外接盒](https://zh.wikipedia.org/wiki/硬碟外接盒 "wikilink")、[磁碟阵列系统](https://zh.wikipedia.org/wiki/磁碟阵列 "wikilink"),、[NAS网路储存设备](https://zh.wikipedia.org/wiki/网路附加储存 "wikilink")、[硬碟外接座等等](https://zh.wikipedia.org/wiki/硬碟外接座 "wikilink")。

### 人机接口设备（HID）

USB没有完全取代[AT键盘接口和](https://zh.wikipedia.org/wiki/AT键盘接口 "wikilink")[PS/2键盘鼠标接口](https://zh.wikipedia.org/wiki/PS/2接口 "wikilink")，但是事实上所有主板制造商都提供至少一个USB接口。到2004年，大多数新主板都配有多个高速USB
2.0接口，尽管有些是内置在主板上的，需要使用电缆连接到位于主机前面板或者侧面的接口。同样的对游戏操纵杆，手柄，写字板和其他人机接口设备的支持逐渐从原声卡上的“MIDI／游戏”接口和PS/2接口上转移到USB上。现在带着USB转PS/2接口转换插头的USB键盘鼠标相当普遍，他们可以使用任意2种接口之一。如今几乎没有厂商再提供多于一个的PS/2接口，但至少会提供一个混合键盘与鼠标的PS/2接口。

使用专用键盘鼠标接口的苹果电脑1999年1月也开始使用USB接口。最初iPod只有IEEE1394接口，後來在第三代的iPod，蘋果電腦開始支持USB2.0连接，但是還不能用作充電，現在的iPod，已經全面兼容USB，抛弃IEEE1394接口，只用USB接口充電以及連接電腦主機。

## 历史

[USB_Icon.svg](https://zh.wikipedia.org/wiki/File:USB_Icon.svg "fig:USB_Icon.svg")

### Pre-Releases

  - USB 0.7：1994年11月发布。
  - USB 0.8：1994年12月发布。
  - USB 0.9：1995年4月发布。
  - USB 0.99：1995年8月发布。
  - USB 1.0 RC：1995年11月发布。

### USB 1.0

  - USB 1.0：1996年1月发布。
    數據傳輸速率為1.5Mbit/s（Low-Speed）。无预测及通过检测功能。只有极少数的此类设备出现在市场上。

### USB 1.1

  - USB 1.1：1998年9月发布。
    修正1.0版已發現的問題，大部分是關於USB Hubs。最早被采用的修订版。數據傳輸速率為12Mbit/s（Full-Speed）

### USB 2.0

[Certified_Hi-Speed_USB.svg](https://zh.wikipedia.org/wiki/File:Certified_Hi-Speed_USB.svg "fig:Certified_Hi-Speed_USB.svg")

  - USB 2.0：2000年4月发布。
    增加更高的數據傳輸速率480Mbit/s（现在称作Hi-Speed），但受限于BOT传输协议和NRZI编码方式，实际最高传输速度只有35MByte/s左右。USB
    2.0中最重要规范的ECN可以在[USB.org](http://www.USB.org)查到：
      - Mini-A和Mini-B Connector ECN：2000年10月发布。
        规范Mini-A和Mini-B的插头及插座标准。注意不要与Micro-B插头及插座混淆。
      - Errata as of December 2000：2000年12月发布。
      - Pull-up/Pull-down Resistors ECN：2002年5月发布。
      - Errata as of May 2002：2002年5月发布。
      - Interface Associations ECN：2003年5月发布。
        添加新的描述符以便将多重接口关联在在单一设备功能中。
      - Rounded Chamfer ECN：2003年10月发布。
        一项针对Mini-B接口坚固性的建议性、兼容性改进。
      - Unicode ECN：2005年2月发布。
        这项ECN指定了字串可以使用[UTF-16LE编码](https://zh.wikipedia.org/wiki/UTF-16LE "wikilink")。USB
        2.0曾指定可以使用[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")，但没有指定编码。
      - Inter-Chip USB Supplement：2006年3月发布。
      - On-The-Go Supplement 1.3：2006年12月发布。
        USB直连（[USB
        On-The-Go](../Page/USB_On-The-Go.md "wikilink")）允许两个USb设备不经独立USB主机端直接相互通讯。实际使用中，是其中一个USB设备作为其它设备的主机端。
      - Battery Charging Specification 1.0：2007年3月发布。
        添加对充电器（有USB接口的电源适配器）的支持，当供电端（作为充电器的USB主端口）和电池连接时，它允许瞬间通过100
        mA的电流。如果一个USB设备连接到专用充电器或主端口时，最大瞬间电流可达1.5 A。（该文档并未包含在USB
        2.0规范中。）
      - Micro-USB Cables and Connectors Specification 1.01：2007年4月发布。
      - Link Power Management Addendum ECN：2007年7月释出。
        在启用与待机间增加新的电源模式。当设备处于这个模式时不向其发送指令以减少电源消耗。所以，在启用及睡眠模式间切换要比在启用及待机模式间切换快得多。
      - High-Speed Inter-Chip USB Electrical Specification Revision
        1.0：2007年9月发布。

### USB 3.0（USB 3.2 Gen1）

[SuperSpeed_USB.svg](https://zh.wikipedia.org/wiki/File:SuperSpeed_USB.svg "fig:SuperSpeed_USB.svg")
 USB 3.0于2008年11月发布，速度由480Mbps大幅提升到5Gbps。USB 3.0插座通常是藍色的，並向下兼容USB 2.0。

### USB 3.1（USB 3.2 Gen2）

[Certified_SuperSpeed_Plus_USB_Logo.svg](https://zh.wikipedia.org/wiki/File:Certified_SuperSpeed_Plus_USB_Logo.svg "fig:Certified_SuperSpeed_Plus_USB_Logo.svg")
 USB3.0推廣小組於2013年7月31日宣佈USB
3.1規格\[18\]，傳輸速度提升為10Gb/s，比USB3.0的5Gb/s快上一倍，並向下兼容USB
2.0/1.0，如果要得到10Gb/s的傳輸速度仍需在主機、目標端同時具備對應的晶片才能達成，電力供應可高達100瓦。\[19\]

### USB 3.2（USB 3.2 Gen2x2）

USB 3.2的主要技術要點：
1，在現有的USB Type-C數據線上實現雙通道
2，繼續使用現有的超高速USB物理傳輸率和技術
3，一些小的規範更新，確保單雙通道無縫切換。

速度方面，使用USB 3.2主機連接USB 3.2儲存設備，可以實現兩條通道10Gb /s 的傳輸速度，理論上也就是相當接近於 20Gb /s。

據悉，USB 3.2因為要求集成USB 2.0和USB 3.1主控，所以完全向下兼容。 另外，從USB
3.2開始，Type-C將成為唯一推薦的接口方案。



### USB 4.0

USB 4的規格目前尚未确定，但是部分已經先宣布：\[20\]

採用Thunderbolt協定規格，使Thunderbolt 3裝置將能相容於USB 4，現有3.2及2.0也向下兼容。

速度方面加倍來到兩條通道總共40Gb / s的傳輸速度。

### USB On-The-Go補充標準

USB
On-The-Go是USB2.0規格的補充標準。它可使USB裝置，例如播放器或手機，從USB周邊裝置變為USB主機，與其他USB裝置連線通訊。

### USB Power Delivery

USB Power
Delivery是[USB開發者論壇在](../Page/USB開發者論壇.md "wikilink")2012年7月5日發佈的[USB充電標準與技術](../Page/USB.md "wikilink")。

## 傳輸協定

  - **BOT傳輸協定**：BOT (Bulk-Only Transport)\[21\]，誕生於1999年，專為USB
    1.1所設計，至今最快的USB 3.1都可向下兼容這個基本的BOT傳輸協定。在傳輸資料作業開始時，外接USB
    3.0裝置與電腦主機板（USB 3.0擴充卡）之間，在同一時間單位內，每次只傳輸單一指令，所以速度較UASP慢，屬於「半雙工傳輸模式」。
  - **UASP傳輸協定**\[22\]\[23\]：UASP (USB Attached SCSI Protocol)，與USB
    3.0一同誕生於2008年，USB應用者論壇（USB-IF）為改良BOT傳輸協定過慢的缺點，將SCSI架構改進並推出UASP，包括多命令平行處理能力、任務管理與控制等機制，也支援[NCQ](https://zh.wikipedia.org/wiki/NCQ "wikilink")（原生指令排序），速度比BOT傳輸模式快上許多，屬於「全雙工傳輸模式」。啟動UASP雖然能提升傳輸效能，但也有許多限制，電腦用戶必須具備支援UASP的外接USB
    3.0裝置內部的裝置端控制器、主機板上的主機端控制器、驅動程式，三者缺一不可（有的還額外需要安裝靱體）。在OS支援度上，使用[Windows
    7的用戶若想啟動UASP](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")，必須安裝相應的驅動程式，如果用戶使用[Windows
    8](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")/[Mac OS
    X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")
    10.8.3以及之後陸續推出的10.9版本，因為其已內建UASP的驅動程式，所以直接原生支援UASP，如此可省去安裝驅動程式的麻煩。UASP的裝置端橋接晶片有：LucidPort
    USB 300、祥碩科技ASMedia ASM1053/ASM1042、智微JMS 569、德州儀器TUSB9261等等。

## 扩展

[PictBridge标准可以使得消费者使用的图形设备彼此互通](../Page/PictBridge.md "wikilink")（例如数码相机直接通过打印机输出）。一般它使用USB做为其底层通信协议。

[微软的](../Page/微软.md "wikilink")[Xbox](../Page/Xbox.md "wikilink")[游戏主机和](https://zh.wikipedia.org/wiki/游戏主机 "wikilink")[IBM的](../Page/IBM.md "wikilink")[UltraPort均使用自身独有的专用接口](https://zh.wikipedia.org/wiki/UltraPort "wikilink")，有别于标准的USB；不同的是，前者（Xbox）使用的是标准的USB
1.1信号格式，后者则使用标准的USB信号格式，而供电能力也更强。

开源项目[USB/IP](http://usbip.sourceforge.net/)实现了USB数据包的网络传送，逻辑上将USB数据线无限延长。同时配合无线路由器等手段，可以实现无线USB传输。

### 無線通用序列匯流排

  -
    正在开发中的一种无线数据传输标准。\[24\]设计标准：在3米内达到480Mbp的传输速率，在10米内达到110Mbps的传输速率。

## 参考文献

## 外部链接

  - [USB开发者论坛（原名：USB
    IF）--USB標準的制定組織](http://www.usb.org)，包括[USB 2.0规范](http://www.usb.org/developers/docs/)
  - [USB Central](http://www.lvr.com/usb.htm) for developers of USB
    devices and hosts
  - [DOS下使用USB](http://www.bootdisk.com/usb.htm)
  - [Linux USB项目](http://www.linux-usb.org/)，包含許多技術資訊和文件
  - [USB联网介绍](http://www.windowsnetworking.com/articles_tutorials/usbmain.html)
  - [Linux下USB设备加载](https://web.archive.org/web/20050927211440/http://usbmount.alioth.debian.org/)。
  - [USB 2.0 vs火线](http://www.barefeats.com/usb2.html) - Mac下外部设备评测
  - [USB @
    NutShell](https://web.archive.org/web/20051004064417/http://www.beyondlogic.org/usbnutshell/usb-in-a-nutshell.pdf)
    - 开发入门
  - [通用主机控制器接口（UHCI）](http://developer.intel.com/technology/usb/uhci11d.htm)
  - [USB產品認證](http://www.usb.org/developers/compliance/)，與[認證測試實驗室](http://www.usb.org/developers/compliance/labs/)

## 参见

  - [ACCESS.bus](https://zh.wikipedia.org/wiki/ACCESS.bus "wikilink")
  - [RAID](../Page/RAID.md "wikilink")
  - [硬碟外接座](https://zh.wikipedia.org/wiki/硬碟外接座 "wikilink")
  - [闪存盘](../Page/闪存盘.md "wikilink")
  - [U3](https://zh.wikipedia.org/wiki/U3 "wikilink")
  - [串行端口](../Page/串行端口.md "wikilink")
  - [IEEE 1394](../Page/IEEE_1394.md "wikilink")
  - [平行埠](https://zh.wikipedia.org/wiki/平行埠 "wikilink")
  - [WUSB](https://zh.wikipedia.org/wiki/WUSB "wikilink")（Wireless USB）
  - [Wireless USB Promoter
    Group](https://zh.wikipedia.org/wiki/Wireless_USB_Promoter_Group "wikilink")（無線USB促進聯盟）
  - [Lightning](https://zh.wikipedia.org/wiki/Lightning接頭 "wikilink")
  - [Thunderbolt](../Page/Thunderbolt.md "wikilink")

{{-}}

[Category:计算机总线](https://zh.wikipedia.org/wiki/Category:计算机总线 "wikilink")
[Category:USB](https://zh.wikipedia.org/wiki/Category:USB "wikilink")

1.

2.  [360奇酷9V/5V 2A双头正反插快充USB数据线](http://item.jd.com/2859961.html)鮮有的可以正反插的USB
    Type-A以及USB Micro-B

3.

4.  [OMTP Local Connectivity: Data
    Connectivity](http://www.omtp.org/Publications/Display.aspx?Id=a9dd86d0-d9a6-4a47-81f8-4da8c402d1e7)
    at omtp.org

5.  PC硬體介面徹底研究ISBN 957-442-275-5

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

17. [》Android系統　播放器 -
    PChome線上購物](http://shopping.pchome.com.tw/?mod=store&func=style_show&SR_NO=DMAA3Z)

18. [USB
    IF應用者論壇於2013/7/31發布新聞稿，宣布USB 3.1規格。](http://www.usb.org/press/USB-IF_Press_Releases/SuperSpeedUSB_10Gbps_Available_20130731.pdf)


19. [2013/04/10 USB應用者論壇中，主席兼首席營運官Jeff
    Ravencraft表示，USB 3.1的電力供應可達到100瓦。](http://www.usb.org/press/presskit/USBIF_MomentumPR_IDF2013_FINAL_translated.pdf)


20.

21. [USB.org對於BOT與UASP傳輸協定的解釋](http://www.usb.org/developers/presentations/pres0410/2-4_SSUSB_DevCon_UASP_Stevens.pdf)


22. [T客邦對UASP的解釋與產品測試報告](http://www.techbang.com/posts/12535-windows-8-support-catalytic-usb-3-is-more-popular)

23.
24.