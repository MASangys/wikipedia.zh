**通用封包無線服務**（，缩写：**GPRS**）是[GSM](../Page/GSM.md "wikilink")移动电话用户可以使用的一种移动数据业务/技术。它经常被描述成「[2.5G](https://zh.wikipedia.org/wiki/2.5G "wikilink")」，意指这项技术介于第二代（[2G](../Page/2G.md "wikilink")）与第三代（[3G](../Page/3G.md "wikilink")）移动通讯技术之间。它是利用[GSM](../Page/GSM.md "wikilink")网络中未使用的[TDMA信道](https://zh.wikipedia.org/wiki/TDMA "wikilink")，提供中速的数据传输服务。起初有人想通过扩展GPRS来覆盖其他标准，只是这些网络都正在转而使用GSM标准，这样GSM就成了GPRS唯一能够使用的网络。GPRS在Release 97之后被集成进GSM标准，起先它是由[ETSI标准化](https://zh.wikipedia.org/wiki/ETSI "wikilink")，但是现在已经移交[3GPP](../Page/3GPP.md "wikilink")负责。

## GPRS原理

GPRS有别于旧的[电路交换](../Page/电路交换.md "wikilink")连接，电路交换连接在Release 97之前就已经被纳入GSM标准。在旧有系统中，一个数据连接要创建并保持一个电路连接，在整个连接过程中这条电路将被独占，直到连接被解除。GPRS基于[分组交换](../Page/分组交换.md "wikilink")，也就是多个用户可以共享一个相同的传输通道，每个用户只有在传输数据的时候才会占用信道。这意味着所有的可用带宽可以立即分配给当前发送数据的用户，这样有更多的间隙发送或接受数据，用户可以共享带宽。WEB浏览、收发电子邮件和即时消息都是能有效利用共享带宽的间歇传输数据的服务。

GPRS数据的通常计费方式不是按照电路交换方式的秒，而是千字节（KB）。在电路交换方式下，即使网络上没有数据传输，其他用户也不能使用空闲的信道。

GPRS最初支持（理论上）互联网协议[IP](https://zh.wikipedia.org/wiki/IP "wikilink")，点到点协议[PPP](../Page/PPP.md "wikilink")和[X.25](../Page/X.25.md "wikilink")连接。后者典型的应用是无线付费终端，尽管它已经作为标准需求被去除。X.25依然可以通过PPP甚至是IP得到支持，但是这样做既不需要重新封装也不用集成什么到终端里。

## GPRS速度和属性

[Huawei_E220_(Three).jpg](https://zh.wikipedia.org/wiki/File:Huawei_E220_\(Three\).jpg "fig:Huawei_E220_(Three).jpg")E220數據機GPRS\]\] 基于GPRS的报文数据交换使用未使用的蜂窝网络带宽传输数据。 而作为专门为电话系统设计的语音信道（或者数据信道）一旦被报文数据交换使用，将降低可用带宽，其结果是如果在一个忙碌的电话域内，报文传输速度极慢。理论上报文数据交换速度是大约170千比特/秒，而实际速度是30-70千比特/秒。在GPRS的射频部分的改进，取名为[EDGE技术](https://zh.wikipedia.org/wiki/EDGE "wikilink")，将支持从20至200千比特/秒的更高速度传输。最大数据速率取决于同时分配到的TDMA帧的时隙。因此，数据速率越高，纠错可靠性就越低。一般来说，连接速度随着与距离的增加迅速下降。在人口密集的高网络密度城区这倒不是什么大问题，但是在人口比较少的郊区这就真是问题了。

GPRS class 8 也就是平常所说的4+1。这表示4个时隙用于下行流量，1个时隙用于上行流量。 这样做是为了优化像[WEB浏览器这样的大部分是下载流量的应用](https://zh.wikipedia.org/wiki/浏览器 "wikilink")。如果用户阅读邮件量大于他发送的量，这个也适用。一般来说GPRS手机默认使用 Class 8 来传输。

GPRS class 10也就是4+2。4个时隙下行，2个时隙上行。不过同时使用的时隙不能超过5个。 这个方案适用于双向数据差不多相等的情况下，例如[即时消息](https://zh.wikipedia.org/wiki/即时消息 "wikilink")。

其他存在的级别，包括GPRS class 6 （3+2） 和GPRS class 4 （3+1），只有老设备才使用。有些个别设备能够做到 4+4 （四个时隙用于上行和下行，最多5个同时工作）.这只是工业应用，超过2个上行时隙电磁辐射就会对人体产生一定的影响。

传输速率还依赖于信道编码。最佳编码方案（CS-4）适用于在基站附近的时候，最差编码方案（CS-1）用于离基站比较远的地方。

使用CS-4 有可能达到每时隙22.8kbps的速度。但是如果使用这个方案，现有网络只能覆盖一般情况的25%的区域。CS-1能达到9.05 kbit/s 每时隙的速率而且可以覆盖98%的正常区域。

每一个时间片（timeslot）传输一个RLC帧，使用CS4最高达21.4Kbps,但通常情况下使用CS2比较多，RLC层速率为13.4Kbps，折算到IP层11.32Kbps。 从协议封装来计算开销，上行传输的要大于下行的，这意味着同样一个时隙，上行的IP层可获得带宽要比下行的小一些，例如同样的CS2编码方式，上行的IP带宽只有约10.15Kbps。

| 種類       | 下载速率（RLC） | 上传速率                   |
| -------- | --------- | ---------------------- |
| GPRS 4+1 | 85.6 Kbps | 21.4Kbps（class 8 & 10） |
| GPRS 3+2 | 64.2 Kbps | 42.8Kbps（class 10）     |
| CSD      | 9.6 Kbps  | 9.6Kbps                |
| HSCSD    | 28.8 Kbps | 14.4Kbps （2+1）         |
| HSCSD    | 43.2 Kbps | 14.4Kbps （3+1）         |

需要注意的是，[CSD及](https://zh.wikipedia.org/wiki/CSD "wikilink")[HSCSD這類服務通常都按使用時間來計費](https://zh.wikipedia.org/wiki/HSCSD "wikilink")，就像通話時間般。假如要長時進行[下載檔案的動作](https://zh.wikipedia.org/wiki/下載 "wikilink")，則會比**GPRS**優勝，因為在流動電話網絡中CSD及HSCSD的優先次序都會比GPRS為高，較少有數據傳輸中斷的情況出現。

GPRS报文数据交换基于数据包。 当使用[TCP/IP协议时](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")，每个电话分配到有一个或多个[IP地址](../Page/IP地址.md "wikilink")。 当电话切换扇区或者基站时，GPRS要暂时存储转发数据包到电话里。当因为无线电噪声干扰导致传输暂停和丢包可以由TCP来处理，这将导致临时的传输速率调整。

## GPRS服务

[Geolocalisation_GPS_GPRS.png](https://zh.wikipedia.org/wiki/File:Geolocalisation_GPS_GPRS.png "fig:Geolocalisation_GPS_GPRS.png") [MobileBitRate-logScale.svg](https://zh.wikipedia.org/wiki/File:MobileBitRate-logScale.svg "fig:MobileBitRate-logScale.svg") GPRS提升GSM的数据服务性能:

  - [点到点](https://zh.wikipedia.org/wiki/点到点 "wikilink") （P2P） 服务：连接 （IP protocols）IP网络 和 [X.25](../Page/X.25.md "wikilink")网络。
  - [多播](../Page/多播.md "wikilink") （P2MP）服务：一点到多点的组播和多方通话。
  - [短信服务](https://zh.wikipedia.org/wiki/短信服务 "wikilink") （SMS）：发送SMS。
  - [多媒體短訊](https://zh.wikipedia.org/wiki/多媒體短訊 "wikilink")（MMS）：发送携带语音和图像信息的短消息。
  - [因特网服务提供商服务](https://zh.wikipedia.org/wiki/因特网服务提供商 "wikilink")：提供互联网内容服务。
  - [邮件服务](https://zh.wikipedia.org/wiki/邮件服务 "wikilink")：通过[POP3或者](https://zh.wikipedia.org/wiki/POP3 "wikilink")[IMAP协议检查阅读发送电子邮件](https://zh.wikipedia.org/wiki/IMAP "wikilink")。
  - 匿名服务：匿名访问预定服务。
  - 未来功能：灵活加入新的功能，例如更大容量，更多用户，新的资源和无线网络。

## GPRS的发展

根据欧洲ETSI的GSM第2＋阶段的建议，GPRS分为两个发展阶段（即Phase 1和Phase2）。GPRS的Phase l阶段将能支持下列功能和业务：

1.  TCP/IP和X.25业务
2.  全新的GPRS空中接口加密技术
3.  GPRS附加业务
4.  增强型的短信业务（E-SMs）

GPRS分组数据计费功能，即根据数据量而采取计费上述功能业务中最显著的是TCP/IP和 X.25功能。GSM网络可以通过TCP/IP和X.25为用户提供电子邮件、WWW浏览、专用数据、LAN接入等业务。GPRS Phase 2阶段的规范尚在制订之中，它将能提供更多的新功能和新业务。

## 現實中的GPRS

運營商已經給GPRS制定了相對便宜的價格（相對於舊的GSM數據通訊、[CDPD](https://zh.wikipedia.org/wiki/CDPD "wikilink")、[高速電路交換數據](../Page/高速電路交換數據.md "wikilink")）在很多地方例如[芬蘭](https://zh.wikipedia.org/wiki/芬蘭 "wikilink")，多數運營商不支持包價收費訪問互聯網 （但是美國的[T-Mobile](../Page/T-Mobile.md "wikilink")是一個著名的例外），取而代之的是按照數據流量，通常以1 KB或者1 MB（[中國移動通信](https://zh.wikipedia.org/wiki/中國移動通信 "wikilink")、[中国联通](https://zh.wikipedia.org/wiki/中国联通 "wikilink")）作為計費單位。

典型的費率比較高昂，在美國[T-Mobile](../Page/T-Mobile.md "wikilink")提供每月20美元無限量GPRS使用的服務。 其他運營商象[AT\&T Wireless也提供包月](https://zh.wikipedia.org/wiki/AT&T_Wireless "wikilink")。Orange （英國）提供88英鎊每月1 GB流量套餐。

GPRS預付費數據服務一般比較貴，局限在[WAP和](https://zh.wikipedia.org/wiki/無線應用協議 "wikilink")[MMS](https://zh.wikipedia.org/wiki/多媒體短訊 "wikilink")。

一般而言，GPRS最大連接速度跟模擬電話網絡上的調製解調器一樣大約4-5 kB/s （依賴於電話），最高30～40kbps，但是在无线环境允许的情况下，实际测试结果亦可达到9 kB/s，即70+ kbps，此时占用4个下行时隙使用CS4编码方式。 [延遲比較高](https://zh.wikipedia.org/wiki/延遲 "wikilink")，在回路測試[ping中](https://zh.wikipedia.org/wiki/ping "wikilink")，典型的要大約600-700毫秒，往返時間經常達到**1秒** 。 GPRS的實際性能十分普遍的低於理論值，而且連接質量很不穩定，很易受到影響產生大幅波動，這是因為在行動通訊所用的無線介面傳遞的封包數據會遺失或損壞導致封包數據要一再重傳所致。

无线环境恶化对传输造成的干扰，首先通过前向纠错编码来克服，CS1具有最强纠错能力，相应带宽最小，而CS4则完全不具备前向纠错能力，当然提供的带宽在四种编码中最大，但是一旦RLC层检测到错误就只能通过空口块重传来纠错了。在RLC层通过前向纠错编码和重传机制可以有效地克服无线环境对传输质量的干扰，在此情况下，不会引起上层即IP层的分组丢失，对于IP层的影响主要体现在网络回路时延的微小增加上（通常只有几十毫秒）。IP分组的丢失通常发生在小区重选/路由区更新的时刻，此时需要网元设备支持跨小区或跨SGSN的数据转发能力，才能避免分组数据的丢弃和重传。需要指出的是，作为端到端的通信过程，链路中的任何一个环节都有丢失分组的可能性，区别是无线接入部分概率较大而已，蜂窝移动通信系统中小区重选和路由区更新是不可避免的事情。

## GPRS的移动终端

GPRS的移动终端（Mobile Station，MS） 分為三類。

1.  A类终端：MS可以同時傳送GSM语音與傳送GPRS数据。
2.  B类终端：MS可以同时以GSM和GPRS方式在网络登记。MS可以自動轉換使用GPRS服務或是GSM服務，但不能同時傳送语音與傳送数据。所以當MS在傳送資料的時，若收到來電呼叫，會暫停傳送資料，接聽電話後在繼續傳送数据。
3.  C类终端：功能是只能傳送GPRS数据。此类终端例如用于笔记本电脑的PCMCIA GPRS上网卡。

## 外部链接

  - [免费在线教程](https://web.archive.org/web/20050401084038/http://www.comsoc.org/livepubs/surveys/public/3q99issue/bettstetter.html)
  - [GSM World - 负责GSM和GPRS的协会](https://web.archive.org/web/20050207090121/http://www.gsmworld.com/technology/gprs/intro.shtml)
  - [GPRS附着和PDP激活时序图](http://www.eventhelix.com/RealtimeMantra/Telecom/gprs_attach_pdp_sequence_diagram.pdf)（PDF文档）
  - [手机通讯](http://www.areacodesexplorer.com/)

## 参看

  - [EDGE](https://zh.wikipedia.org/wiki/EDGE "wikilink")
  - [UMTS](https://zh.wikipedia.org/wiki/UMTS "wikilink")

[Category:移动通信标准](https://zh.wikipedia.org/wiki/Category:移动通信标准 "wikilink") [Category:链路协议](https://zh.wikipedia.org/wiki/Category:链路协议 "wikilink")