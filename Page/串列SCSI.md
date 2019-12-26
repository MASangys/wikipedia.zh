[SASHardDriveComparsion.jpg](https://zh.wikipedia.org/wiki/File:SASHardDriveComparsion.jpg "fig:SASHardDriveComparsion.jpg")Kiss[薄荷糖的大小比較](https://zh.wikipedia.org/wiki/薄荷糖 "wikilink")。\]\] **序列式SCSI**（，簡稱）是一種[電腦集線的技術](https://zh.wikipedia.org/wiki/I/O总线 "wikilink")，其功能主要是作為週邊零件的數據傳輸，例如：[硬碟](https://zh.wikipedia.org/wiki/硬碟 "wikilink")、[CD-ROM](../Page/CD-ROM.md "wikilink")等設備而設計的界面。序列式SCSI 由[並列SCSI物理存儲介面演化而來](https://zh.wikipedia.org/wiki/並列SCSI "wikilink")，是由ANSI INCITS [T10技術委員會](https://zh.wikipedia.org/wiki/T10技術委員會 "wikilink")（[T10 committee](http://www.t10.org)）開發及維護的新的存儲介面標準。與並列方式相比，序列方式能提供更快速的通信傳輸速度以及更簡易的配置。此外SAS並支援與序列式ATA（[SATA](../Page/SATA.md "wikilink")）設備相容，且兩者可以使用相類似的電纜。

SAS是點對點（point-to-point）連接，並允許多個端口集中於單個控制器上，其可以內建於主機板（mother board）當中；也可另外添加。該技術建立在強大的並列SCSI通信技術基礎上。SAS是採用SATA相容的電纜線採取點對點連接方式，從而在計算機系統中不需要建立雛菊鏈結（daisy-chaining）方式便可簡單地實現線纜安裝。

## 歷史

  - 第一代SAS為陣列中的每個驅動器提供3.0 Gbps（3000 Mbps）的傳輸速率。
  - 第二代SAS為陣列中的每個驅動器提供6.0 Gbps（6000 Mbps）的傳輸速率。
  - 第三代SAS為陣列中的每個驅動器提供12.0 Gbps（12000 Mbps）的傳輸速率。
  - 第四代SAS為陣列中的每個驅動器提供24.0 Gbps（24000 Mbps）的傳輸速率，相關標準制訂於2017年\[1\]。

## 介面

SAS介面比普通SCSI介面小很多，並支援2.5英寸的硬碟。 SAS採取直接的點對點序列式傳輸方式，傳輸速率最高可達12Gbps，目前計劃於2017年左右達到24Gbps。

SAS的介面接頭有很多形式：

| 圖片                                                                                                                  | 代號       | 別名                                                       | 內接/外接 | 針腳數量 | 儲存設備數量 | 備註                                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------- | -------- | -------------------------------------------------------- | ----- | ---- | ------ | ------------------------------------------------------------------------------------------------------------------------------- |
| [SAS-drive-connector.jpg](https://zh.wikipedia.org/wiki/File:SAS-drive-connector.jpg "fig:SAS-drive-connector.jpg") | SFF 8482 |                                                          | 內接    |      | 1      | 与SATA兼容的标准接口                                                                                                                    |
| [SFF_8484_angled.jpg](https://zh.wikipedia.org/wiki/File:SFF_8484_angled.jpg "fig:SFF_8484_angled.jpg")           | SFF 8484 |                                                          | 內接    |      | 4      | 高密度內接連接器                                                                                                                        |
|                                                                                                                     | SSF 8485 |                                                          |       |      |        | Routes data plus "sideband-signals" (Like LEDS) through serial link                                                             |
| [SFF_8470.jpg](https://zh.wikipedia.org/wiki/File:SFF_8470.jpg "fig:SFF_8470.jpg")                                 | SFF 8470 | [InfiniBand](../Page/InfiniBand.md "wikilink") connector | 外接    | 32   | 4      | 高密度外接連接器（亦可內接使用）                                                                                                                |
| [SFF_8087.jpg](https://zh.wikipedia.org/wiki/File:SFF_8087.jpg "fig:SFF_8087.jpg")                                 | SFF 8087 | Internal Mini-SAS                                        | 內接    |      | 4      | [Molex](https://zh.wikipedia.org/wiki/Molex "wikilink") iPASS reduced width internal 4x connector with future 10 Gbit/s support |
| [SFF_8088.jpg](https://zh.wikipedia.org/wiki/File:SFF_8088.jpg "fig:SFF_8088.jpg")                                 | SFF 8088 | External Mini-SAS                                        | 外接    | 32   | 4      | [Molex](https://zh.wikipedia.org/wiki/Molex "wikilink") iPASS reduced width external 4x connector with future 10 Gbit/s support |

SFF8482連接器可讓SATA的裝置（如SATA硬碟、光碟機）連接至SAS控制器，但SAS裝置並不能接到SATA控制器。為了防止誤接，SAS裝置的連接器有[防呆](../Page/防呆.md "wikilink")設計。

## 技术细节

SAS由3种类型协议组成，根据连接的不同设备使用相应的协议进行数据传输。

  - 序列SCSI协议 (SSP) — 用于和SCSI設備溝通。
  - 序列ATA通道协议 (STP) — 用于和SATA設備溝通。
  - SCSI管理协议 (SMP) — 用于对SAS设备的维护和管理。

## 拓樸

## 參看

  - [電腦裝置頻寬列表](../Page/電腦裝置頻寬列表.md "wikilink")

## 参考文献

## 外部連結

  - [T10 committee](http://www.t10.org)

  -
  - [Implementing SAS storage](http://searchstorage.techtarget.com/tip/0,289483,sid5_gci1175003,00.html)

[Category:SCSI](https://zh.wikipedia.org/wiki/Category:SCSI "wikilink") [Category:Serial_ATA](https://zh.wikipedia.org/wiki/Category:Serial_ATA "wikilink") [Category:Serial_buses](https://zh.wikipedia.org/wiki/Category:Serial_buses "wikilink")

1.