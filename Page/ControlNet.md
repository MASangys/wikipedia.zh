**ControlNet**是開放性的工業網路協定（[現場總線](../Page/現場總線.md "wikilink")）。ControlNet最早是由ControlNet International所維護，不過自2008年起，其支持及管理的工作轉換到，這個組織目前維護[通用工业协定](https://zh.wikipedia.org/wiki/通用工业协定 "wikilink")（CIP）家族中的所有通訊協定。

ControlNet和其他現場總線不同之處是內建完全冗餘的纜線，而且ControlNet上的通訊有嚴謹的時間規劃，有高度的確定性。ControlNet的物理層和其他總線不同，因此一般的[數據包分析器](../Page/數據包分析器.md "wikilink")（例如[Wireshark](../Page/Wireshark.md "wikilink")）無法分析ControlNet封包。Rockwell自動化公司有提到ControlNet通訊分析軟體來抓取及分析ControlNet封包。

## 1版, 1.25版及1.5版

ControlNet在1997年問世，之後很快就提出了1版及1.25版。1.5版是在1998年提出，每一個版本的硬體無法相容。目前大部份的ControlNet設備都是1.5版\[1\]。

## 架構

### 實體層

ControlNet纜線包括有的[同轴电缆](../Page/同轴电缆.md "wikilink")以及[BNC连接器](../Page/BNC连接器.md "wikilink")，長距離時也會使用光纖。 網路拓樸是 匯流排架構，若有適當硬體，也支援星型拓樸。 ControlNet可以在單一RG-6同轴电缆網路下運作，也可以考慮电缆冗餘，在雙RG-6同轴电缆網路下運作。這些情形下，RG-6电缆需要是四盾（quad-shield）的。 若沒有中继器，最長線長可以到100公尺，最多的站數是99。不過在總線長以及設備數量之間需要有取捨。可以用中继器來延長电缆長度，最多可以用五個中继器（若是冗餘網路，可以用十個）。中继器不會佔網路節點編號，有同轴电缆及光纖的中继器。

實體層的信號是用5 Mbit/s的[曼彻斯特编码](../Page/曼彻斯特编码.md "wikilink")。

### 鏈接層

ControlNet是計劃性的通訊網路，為週期性的資料交換所設備。通訊協定會以循環的方式進行，其週期為NUI，代表網路更新時間間隔（Network Update Interval）。 每一個NUI可以分為三個階段。第一階段是給計劃性的資料流所設計，每一個有計劃性資料的設備都可以保證其傳輸的機會。 第二階段是給非計劃性的資料流，不保證每一個有非計劃性資料的設備都有機會傳輸。 第三階段為網路維護或保护带（guardband），其中包括了同步，以及決定下一個週期哪個設備先傳送的機制。 計劃階段及非計劃階段都是用隱式的[令牌環介質存取方式](https://zh.wikipedia.org/wiki/令牌環 "wikilink")。 每一個NUI的時間稱為NUT，是指網路更新時間（Network Update Time），可以設定在2至100ms之間。非規劃的網路，其預設時間為5 ms。

非規劃的網路資料框的最大長度為510位元組。

### 應用層

ControlNet應用層的協定是以[通用工业协定](https://zh.wikipedia.org/wiki/通用工业协定 "wikilink")（CIP）層的內容為準，CIP也用在[DeviceNet](../Page/DeviceNet.md "wikilink")及[EtherNet/IP中](https://zh.wikipedia.org/wiki/EtherNet/IP "wikilink")。

## 參考資料

## 外部連結

  - [ODVA website](http://www.odva.org)
  - [ControlNet Networks and Communications from Allen-Bradley](http://www.ab.com/networks/controlnet/)

[Category:串行总线](https://zh.wikipedia.org/wiki/Category:串行总线 "wikilink") [Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink") [Category:工業自動化](https://zh.wikipedia.org/wiki/Category:工業自動化 "wikilink")

1.