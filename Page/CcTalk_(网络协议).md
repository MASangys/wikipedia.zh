**ccTalk**（发音作「see-see-talk」），是一种广泛使用的[串行协议](../Page/串行通信.md "wikilink")，遍及[货币交易和](https://zh.wikipedia.org/wiki/货币 "wikilink")[销售时点情报系统行业](https://zh.wikipedia.org/wiki/销售时点情报系统 "wikilink")。如硬币和纸币[验钞机等](https://zh.wikipedia.org/wiki/验钞机 "wikilink")[外部设备在多元化的自动支付设备如](https://zh.wikipedia.org/wiki/外部设备 "wikilink")[交通](../Page/交通.md "wikilink")、[票务](https://zh.wikipedia.org/wiki/票务 "wikilink")、[投币电话](https://zh.wikipedia.org/wiki/投币电话 "wikilink")、[娱乐设备以及](https://zh.wikipedia.org/wiki/娱乐 "wikilink")[零售](../Page/零售.md "wikilink")现金管理中建立，使用ccTalk与主机控制器通信。

## 概述

该协议是在一家位于[英格兰](../Page/英格兰.md "wikilink")西北部港市[曼彻斯特](../Page/曼彻斯特.md "wikilink")郊外的名为Coin
Controls （因此稱coin-controls-talk，該公司后改名为Money Controls，自2010起叫Crane
Payment Solutions）的公司开发的，主要由工程师William Barson完成。该协议的第一个版本发布于1996年。

该协议使用类似[RS232的方式进行字符帧的异步传输](https://zh.wikipedia.org/wiki/RS232 "wikilink")。其主要区别是，它为半双工通信使用单一的[双向通信数据线而非分开的传输和接收线](https://zh.wikipedia.org/wiki/双向通信 "wikilink")。它在[TTL
voltage下操作](https://zh.wikipedia.org/wiki/TTL_voltage "wikilink")，并且是「multi-drop」的，即外围设备可以连接到一个共同的总线和在逻辑上是由设备地址分离。在ccTalk总线上的每个外设都必须有一个唯一的地址。

初始的协议操作于于4,800[波特后续版本的标准化在](../Page/波特率.md "wikilink")9,600波特。低成本的桥接[芯片现在可以从很多厂家得到](https://zh.wikipedia.org/wiki/芯片 "wikilink")，以允许ccTalk以至少1
Mbit/s的波特率通过USB接口运行。

ccTalk协议[堆栈](../Page/堆栈.md "wikilink")已经从极小的512[字节](../Page/字节.md "wikilink")的[ROM](https://zh.wikipedia.org/wiki/只读存储器 "wikilink")[微芯片](../Page/集成电路.md "wikilink")[微控制器到强大的](../Page/单片机.md "wikilink")[ARM7](https://zh.wikipedia.org/wiki/ARM7 "wikilink")-32位处理器的范围的设备上实现。

该协议支持用于电子设备的所有标准操作如固件[闪存](../Page/闪存.md "wikilink")升级、数据和详细的诊断信息的安全传输.

ccTalk的优势包括低成本[UART](../Page/UART.md "wikilink")技术、简单易懂的[数据包结构](https://zh.wikipedia.org/wiki/数据包 "wikilink")、易于扩展的命令接口和无需许可的要求。后者使得协议在类似[开源软件](../Page/开源软件.md "wikilink")这样拥挤而竞争激烈的领域得到了很好的普及。

在2010年，[DES加密被加入了特定命令以便对对总线的攻击做出更具弹性的处理](https://zh.wikipedia.org/wiki/资料加密标准 "wikilink")。

## 一个cctalk信息包示例

TX data = 002 000 001 245 008 _____

  - 002 = 目标地址
  - 000 = 零数据字节
  - 001 = 源地址
  - 245 = 命令头‘请求设备类别ID’
  - 008 = 校验和 ( 002 + 000 + 001 + 245 + 008 = 256 = 0 mod 256 )

这是从地址1（主机）发至外设地址2以查明其是什么的信息。

RX data = 001 013 002 000 067 111 105 110 032 065 099 099 101 112 116
111 114 022

  - 001 = 目标地址
  - 013 = 13个字节的数据
  - 002 = 源地址
  - 000 = 应答头
  - 067…114 = ‘Coin Acceptor’的ASCII码
  - 022 = 校验 (所有数据包的字节总和是零)

从地址2返回至地址1的应答将其标识为投币。

## 硬币和票据命名

多年来形成了许多源于ccTalk的相关的[标准](../Page/标准.md "wikilink")。例如，全球标签识别世界的永久性替换[硬币和](https://zh.wikipedia.org/wiki/硬币 "wikilink")[钞票](https://zh.wikipedia.org/wiki/钞票 "wikilink")。

在ccTalk中一个 a coin有6个字符的标识符。 \<2-字国家代码\>\<3-l字值\>\<1-字版本代码\>

国家代码由[ISO
3166确定](../Page/ISO_3166.md "wikilink")。发行代码指定到不同的发行日期或相同硬币的特别币种。

例：

  - US025A United States 25c
  - GB010B Great Britain 10p
  - EU200A Euro 2€

钞票效仿了相同的形式，但是分配了4个字符给值，并且有一个相关的比例转换因子，通常是x100，以及国家。

例：

  - US0001A United States $1
  - GB0020A Great Britain £20
  - EU0005A Euro 5€

## 外部链接

  - <https://web.archive.org/web/20070329093914/http://www.cctalk.org/>

[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")