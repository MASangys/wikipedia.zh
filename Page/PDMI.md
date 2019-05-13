**PDMI**（全称,
中文名为便携式数字媒体接口）是一种[便携式媒体播放器的互连标准](https://zh.wikipedia.org/wiki/便携式媒体播放器 "wikilink")。2010年2月CEA（美国消费电子协会）开发了此标准，名称为便携式媒体播放器通用互联标准*(Common
Interconnection for Portable Media
Players)*，标准号为ANSI/CEA-2017-A。在微软David
McLauchlan的带领下，全球有超过五十家消费类电子公司支持和投入到此标准的开发。它被设计用于替代只有苹果公司使用的iPod接口。

ANSI/CEA-2017-A标准是2007年六月通过的ANSI/CEA-2017标准的新修订版。2007年的早期版本ANSI/CEA-2017在车载网络中使用基于媒体导向系统传输*(Media
Oriented Systems
Transport,MOST)*的专有串行协议，仅在边际的实际设备中有使用。新的CEA-2017-A标准则不兼容早期标准的设备。

PDMI连接器用于具有媒体播放能力的设备、家用A/V设备、车载娱乐系统、数字信息亭和酒店、空中娱乐系统的互联，旨在取代無所不在的iPod底座连接器。

PDMI使用2.5mm×22mm大小具有30针的插座，同时还定义了底座式连接器，其电器接口如下：

  - 具有AUX、热拔插检测和3.3V电源的2路DisplayPort v1.1a
  - USB 3.0，USB 2.0和USB On-The-Go
  - 传统的模拟立体声线路
  - 远程控制用HDMI
  - 同时用于主机和便携式设备的高输出电源线路

## PDMI 針腳

| Pin No. | Pin Name        | Interface Grouping                                                   | Pin Description                                                |
| ------- | --------------- | -------------------------------------------------------------------- | -------------------------------------------------------------- |
| 1       | USB 5V          | USB 2.0 Interface 介面；接口                                              | USB Power (VBUS)                                               |
| 2       | USB DGND        | USB Ground                                                           |                                                                |
| 3       | USB D+          | Data +                                                               |                                                                |
| 4       | USB OTG         | On‐The‐Go (allows device‐to‐device data transfer)                    |                                                                |
| 5       | USB D‐          | Data ‐                                                               |                                                                |
| 6       | HC 5V           | High Current Power (Output on Host)                                  | High current 5V supply (1.8A, or 3.6A if combined with pin 15) |
| 7       | DGND / HC GND   | High current Ground                                                  |                                                                |
| 8       | AUDIO RIGHT OUT | Analog Audio 類比音訊 (Input on Host)                                    | Right analog audio output (line level)                         |
| 9       | AUDIO LEFT OUT  | Left analog audio output (line level)                                |                                                                |
| 10      | AUDIO OUT GND   | Audio output ground                                                  |                                                                |
| 11      | CEC             | CEC                                                                  | Consumer Electronic Control, for HDMI remote control           |
| 12      | SSR‐            | USB 3.0 Data Device Receive 接收                                       | USB 3.0 SSRX‐ signal                                           |
| 13      | GND             | Signal Ground                                                        |                                                                |
| 14      | SSR+            | USB 3.0 SSRX+ signal                                                 |                                                                |
| 15      | HC 5V           | High Current Power ( Output from Host)                               | High current 5V supply (1.8A, or 3.6A if combined with pin 6)  |
| 16      | HC GND          | High current Ground                                                  |                                                                |
| 17      | SST‐            | USB 3.0 Data Device Transmit 傳送                                      | USB 3.0 SSTX‐ signal                                           |
| 18      | GND             | Signal Ground                                                        |                                                                |
| 19      | SST+            | USB 3.0 SSTX+ signal                                                 |                                                                |
| 20      | HPD             | DisplayPort v1.1a Interface, 2 Lane (Host is Sink, Device is Source) | Hot Plug Detect (includes interrupt function from host)        |
| 21      | DAUX+           | AUX Channel +                                                        |                                                                |
| 22      | DAUX‐           | AUX Channel -                                                        |                                                                |
| 23      | AP              | 3.3V DisplayPort Power (Power from portable device)                  |                                                                |
| 24      | D1‐             | Main Link Lane 1 (‐)                                                 |                                                                |
| 25      | GND             | Signal Ground                                                        |                                                                |
| 26      | D1+             | Main Link Lane 1 (+)                                                 |                                                                |
| 27      | GND             | Signal Ground                                                        |                                                                |
| 28      | D0‐             | Main Link Lane 0 (‐)                                                 |                                                                |
| 29      | GND             | Signal Ground                                                        |                                                                |
| 30      | D0+             | Main Link Lane 0 (+)                                                 |                                                                |
|         |                 |                                                                      |                                                                |

PDMI pinout

  - 註：GND=Ground=接地

[Category:USB](https://zh.wikipedia.org/wiki/Category:USB "wikilink")
[Category:視聽接口](https://zh.wikipedia.org/wiki/Category:視聽接口 "wikilink")
[Category:數碼顯示接口](https://zh.wikipedia.org/wiki/Category:數碼顯示接口 "wikilink")