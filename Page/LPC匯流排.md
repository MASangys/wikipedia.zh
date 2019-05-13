[ITE_IT8705F_0442-FXS_20060122.jpg](https://zh.wikipedia.org/wiki/File:ITE_IT8705F_0442-FXS_20060122.jpg "fig:ITE_IT8705F_0442-FXS_20060122.jpg")
晶片。Data sheet 取自
[聯陽半導體](https://web.archive.org/web/20081101193323/http://www.ite.com.tw/product_info/PC/Brief-IT8705_2.asp)
\]\] **LPC-{zh:总线;zh-hans:总线;zh-hk:匯流排;zh-tw:匯流排}-**，原名叫**Low Pin Count
Bus**，是在[IBM PC兼容机中用于把低帶寬裝置](../Page/IBM_PC兼容机.md "wikilink")，尤其是[Super
I/O裝置连接到](../Page/Super_I/O.md "wikilink")[CPU上](../Page/CPU.md "wikilink")。這些常见低速设备有：[BIOS](../Page/BIOS.md "wikilink")，[串口](../Page/串口.md "wikilink")，[并口](../Page/并口.md "wikilink")，[PS/2介面的](../Page/PS/2.md "wikilink")[键盘和](../Page/键盘.md "wikilink")[鼠标](../Page/鼠标.md "wikilink")，[軟碟機控制器](../Page/軟碟機控制器.md "wikilink")，[TPM](../Page/TPM.md "wikilink")。LPC-{zh:总线;zh-hans:总线;zh-hk:匯流排;zh-tw:匯流排}-通常和[主板上的](../Page/主板.md "wikilink")[南桥物理相连](../Page/南桥.md "wikilink")，[南桥在](../Page/南桥.md "wikilink")[IBM
PC
AT平台上通常连接了一系列的](../Page/IBM_PC_AT.md "wikilink")“老旧”设备，例如两个[可编程中断控制器](../Page/Intel_8259.md "wikilink")，
[可编程计时器和两个](../Page/Intel_8253.md "wikilink") [ISA DMA
控制器](../Page/Intel_8237.md "wikilink")。
LPC-{zh:总线;zh-hans:总线;zh-hk:匯流排;zh-tw:匯流排}-是[Intel在](../Page/Intel.md "wikilink")1998时作为[工业标准架构体系](../Page/ISA.md "wikilink")（ISA）的替代品引入，它与ISA在软件层面是类似的，尽管在物理层面是有着巨大不同的，ISA是16bit宽，8.33 MHz的-{zh:总线;zh-hans:总线;zh-hk:匯流排;zh-tw:匯流排}-，而它是4bit宽，有着四倍频率（33.3 MHz）的-{zh:总线;zh-hans:总线;zh-hk:匯流排;zh-tw:匯流排}-。
LPC-{zh:总线;zh-hans:总线;zh-hk:匯流排;zh-tw:匯流排}-最大的优点是只需要7个信号，在拥挤的现代主板上是很容易布局的。從[SkyLake微架構開始](../Page/SkyLake微架構.md "wikilink")，Intel用Enhanced
SPI（eSPI）取代LPC。

## 訊號

LPC訊號有START、STOP、CYCTYPE+DIR、IDSEL、TAR、SIZE/MSIZE、ADDR、CHANNEL、DATA及SYNC等：

  - START：是指一個封包（package）的開始。
  - STOP：一個封包的結束。
  - SYNC：同步等待狀態。

## 參見

  - [電腦裝置頻寬列表](../Page/電腦裝置頻寬列表.md "wikilink")

## 外部連結

  - [LPC Interface Specification at
    Intel](http://www.intel.com/design/chipsets/industry/lpc.htm)
  - [Serialized IRQ Support For PCI
    Systems](http://www.smsc.com/main/tools/papers/serirq60.doc)（[Microsoft
    Word](../Page/Microsoft_Word.md "wikilink") format）—used by the LPC
    bus
  - [Open-Source LPC Host and Peripheral
    Cores](https://web.archive.org/web/20090306232233/http://www.opencores.org/projects.cgi/web/wb_lpc/overview)

[Category:計算機總線](https://zh.wikipedia.org/wiki/Category:計算機總線 "wikilink")