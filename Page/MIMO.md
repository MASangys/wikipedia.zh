[MIMO_SIMO_MISO_SISO_explanation_without_confusion.svg](https://zh.wikipedia.org/wiki/File:MIMO_SIMO_MISO_SISO_explanation_without_confusion.svg "fig:MIMO_SIMO_MISO_SISO_explanation_without_confusion.svg") **多输入多输出**（Multi-input Multi-output ; **MIMO**）是一种用來描述多[天线](../Page/天线.md "wikilink")[无线通信](https://zh.wikipedia.org/wiki/无线通信 "wikilink")[系统的抽象数学模型](https://zh.wikipedia.org/wiki/系统 "wikilink")，能利用发射端的多个天线各自独立發送信号，同时在接收端用多个天线接收並恢复原信息。该技术最早是由[马可尼于](https://zh.wikipedia.org/wiki/马可尼 "wikilink")1908年提出的，他利用多天线来抑制[信道衰落](https://zh.wikipedia.org/wiki/信道衰落 "wikilink")（fading）。根据收发两端天线数量，相对于普通的**单输入单输出系统**（Single-Input Single-Output，**SISO**），MIMO此類多天線技術尚包含早期所謂的「[智慧型天線](https://zh.wikipedia.org/wiki/智慧型天線 "wikilink")」，亦即**单输入多输出系统**（Single-Input Multi-Output，**SIMO**）和**多输入单输出系统**（Multiple-Input Single-Output，**MISO**）。

由於MIMO可以在不需要增加頻寬或總發送功率耗損（transmit power expenditure）的情況下大幅地增加系統的資料[吞吐量](../Page/吞吐量.md "wikilink")（throughput）及傳送距離，使得此技術於近幾年受到許多矚目。MIMO的核心概念為利用多根發射天線與多根接收天線所提供之空間自由度來有效提升無線通訊系統之[頻譜效率](../Page/頻譜效率.md "wikilink")，以提升傳輸速率並改善通訊品質。

## 發展歷史

1990年代，全世界[無線通訊](../Page/無線通訊.md "wikilink")領域均針對多天線系統進行研究，希望實作出能指向接收者之[波束成型技術](https://zh.wikipedia.org/wiki/波束成型 "wikilink")（Beamforming），亦即是所謂[智慧型天線](https://zh.wikipedia.org/wiki/智慧型天線 "wikilink")——一種能使波束聰明地追蹤接收者（即[行動電話](https://zh.wikipedia.org/wiki/行動電話 "wikilink")）的技術，如同有個人持著天線到處移動，就像一道自手電筒射出的光束可追蹤一位在黑暗中移動的人一樣。智慧型天線藉由波束對其指向（亦即對目標接收者）的相長[干涉](https://zh.wikipedia.org/wiki/干涉 "wikilink")（constructive interference）及同時間該波束對目標接收者指向以外其他方向之相消干涉（destructive interference）來增加訊號增益，以實現上述智慧型天線的優點，並對於此發送單位上的多天線間，採用一較窄的天線間距來實作此波束。一般以發送訊號之一半[波長作為實體的天線間距](https://zh.wikipedia.org/wiki/波長 "wikilink")，以滿足空間上的[採樣定理且避免](https://zh.wikipedia.org/wiki/採樣定理 "wikilink")[旁瓣輻射](https://zh.wikipedia.org/wiki/旁瓣輻射 "wikilink")（grating lobes），亦即空間上的[混疊](../Page/混疊.md "wikilink")。

波束成型技術的缺點乃是在都市的環境中，信號容易朝向建築物或移動的車輛等目標分散，因而模糊其波束的集中特性（即相長干涉），喪失多數的訊號增益及減少干擾的特性。然而此項缺點卻隨著[空間多樣及](https://zh.wikipedia.org/wiki/空間多樣 "wikilink")[空間多工的技術在](https://zh.wikipedia.org/wiki/空間多工 "wikilink")1990年代末的發展，而突然轉變為優勢。這些方法利用[多徑](https://zh.wikipedia.org/wiki/多徑 "wikilink")（multipath propagation）現象來增加資料[吞吐量](../Page/吞吐量.md "wikilink")、傳送距離，或減少[位元錯誤率](https://zh.wikipedia.org/wiki/位元錯誤 "wikilink")。這些型態的系統在選擇實體的天線間距時，通常以大於被發送信號的[波長的距離為實作](https://zh.wikipedia.org/wiki/波長 "wikilink")，以確保MIMO頻道間的低關聯性及高分集階數（diversity order）。

### MIMO-OFDM複合技術

MIMO此科技與[平坦衰落通道](https://zh.wikipedia.org/wiki/平坦衰落 "wikilink")（flat fading channels）兼用時最佳，以降低接收端通道等化器之複雜度及維持接收端的低功率耗損，也因此MIMO多半與[OFDM結合為複合技術](https://zh.wikipedia.org/wiki/OFDM "wikilink")。MIMO-OFDM同時為[IEEE 802.16及](https://zh.wikipedia.org/wiki/IEEE_802.16 "wikilink")[IEEE 802.11n HT](../Page/IEEE_802.11n.md "wikilink")（High-Throughput）的採用標準之一。[WCDMA的系統](https://zh.wikipedia.org/wiki/WCDMA "wikilink")，如[HSDPA](https://zh.wikipedia.org/wiki/HSDPA "wikilink")，亦進行將MIMO技術標準化。

## 技术分类

[Kanalmatrix_MIMO.png](https://zh.wikipedia.org/wiki/File:Kanalmatrix_MIMO.png "fig:Kanalmatrix_MIMO.png") MIMO通訊技术包括以下領域：

  - [空間多工](https://zh.wikipedia.org/wiki/空間多工 "wikilink")（spatial multiplexing）：工作在MIMO天线配置下，能够在不增加带宽的条件下，相比SISO系统成倍地提升信息传输速率，从而极大地提高了频谱利用率。在发射端，高速率的数据流被分割为多个较低速率的子数据流，不同的子数据流在不同的发射天线上在相同频段上发射出去。如果发射端与接收端的天线阵列之间构成的空域子信道足够不同，即能够在时域和频域之外额外提供空域的维度，使得在不同发射天线上传送的信号之间能够相互区别，因此接收机能够区分出这些并行的子数据流，而不需付出额外的频率或者时间资源。空间复用技术在高信噪比条件下能够极大提高[信道容量](../Page/信道容量.md "wikilink")，并且能够在“开环”，即发射端无法获得信道信息的条件下使用。Foschini等人提出的“贝尔实验室分层空时”（[BLAST](https://zh.wikipedia.org/wiki/BLAST_\(无线通信\) "wikilink")）是典型的空间复用技术。
  - [空間多樣](https://zh.wikipedia.org/wiki/空間多樣 "wikilink")（spatial diversity）：利用發射或接收端的多根天線所提供的多重傳輸途徑發送相同的資料，以增強資料的傳輸品質。
  - [波束赋形](../Page/波束赋形.md "wikilink")（beamforming）：藉由多根天線產生一個具有指向性的[波束](https://zh.wikipedia.org/wiki/波束 "wikilink")，將能量集中在欲傳輸的方向，增加訊號品質，並減少與其他用戶間的干擾。
  - 预编码（precoding）

以上MIMO相關技術並非相斥，而是可以相互配合應用的，如一個MIMO系統即可以包含空間多工和多樣的技術。

## 参见

  - [通道捆合技術](../Page/通道捆合技術.md "wikilink")
  - [雙工](../Page/雙工.md "wikilink")（duplex）
  - [單頻網](../Page/單頻網.md "wikilink")（SFN）
  - [Wi-Fi](../Page/Wi-Fi.md "wikilink")
  - [相位陣列](../Page/相位陣列.md "wikilink")（phased array）
  - [智能天线](https://zh.wikipedia.org/wiki/智能天线 "wikilink")
  - [空间分集](../Page/空间分集.md "wikilink")
  - [波束赋形](../Page/波束赋形.md "wikilink")（Beamforming）
  - [通道狀態資訊](https://zh.wikipedia.org/wiki/通道狀態資訊 "wikilink")
  - [空时分组码](https://zh.wikipedia.org/wiki/空时分组码 "wikilink")（Space-time block code，STBC）
  - [IEEE 802.11](../Page/IEEE_802.11.md "wikilink")
  - [IEEE 802.16](https://zh.wikipedia.org/wiki/IEEE_802.16 "wikilink")
  - [宏分集](https://zh.wikipedia.org/wiki/宏分集 "wikilink")

## 参考文献

  - [MIMO引领无线传输快速前进](https://web.archive.org/web/20070204125857/http://www.cnii.com.cn/20050801/ca334484.htm)
  - [电信技术名词解释：4G通信中的MIMO技术](http://tech.sina.com.cn/other/2004-07-09/0008385205.shtml)
  - [新版Wi-Fi網路的漫長長路](https://web.archive.org/web/20060529194933/http://taiwan.cnet.com/enterprise/technology/0%2C2000062852%2C20102101%2C00.htm)
  - [讓WiMAX展現極致效能MIMO-OFDM技術完整解析](https://archive.is/20070618024650/http://203.66.123.22/ne/magazine/magazine_article.asp?Id=738)

## 外部链接

  - \[<http://www.supelec.fr/d2ri/flexibleradio/cours/antenna.pdf>MIMO 简介\]\[<http://www.supelec.fr/d2ri/flexibleradio/cours/information-modelling.pdf> 信息论与MIMO信道模型\] - Tutorial written by Prof. Debbah, head of the Alcatel-Lucent Chair on flexible radio

[Category:无线通信](https://zh.wikipedia.org/wiki/Category:无线通信 "wikilink") [Category:信息论](https://zh.wikipedia.org/wiki/Category:信息论 "wikilink")