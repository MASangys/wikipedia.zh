**EtherCAT**（**乙太網控制自動化技術**\[1\]）是一個開放架構，以[乙太網為基礎的](https://zh.wikipedia.org/wiki/乙太網 "wikilink")[現場總線](../Page/現場總線.md "wikilink")系統，其名稱的CAT為控制自動化技術（**C**ontrol **A**utomation **T**echnology）字首的縮寫。EtherCAT是確定性的[工業以太網](../Page/工業以太網.md "wikilink")，最早是由德國的研發\[2\]。

自動化對通訊一般會要求較短的資料更新時間（或稱為週期時間）、時的通訊[抖动](../Page/抖动.md "wikilink")量低，而且硬體的成本要低，EtherCAT開發的目的就是讓乙太網可以運用在自動化應用中。

## 機能原理

一般工業通訊的網路各節點傳送的資料長度不長，多半都比乙太網幀的最小長度要小。而每個節點每次更新資料都要送出一個幀，造成頻寬的低利用率，網路的整體性能也隨之下降。EtherCAT利用一種稱為「飛速傳輸」（processing on the fly）的技術改善以上的問題\[3\]。 [替代=EtherCAT 運作動畫](https://zh.wikipedia.org/wiki/File:EthercatOperatingPrinciple.svg "fig:替代=EtherCAT 運作動畫") 在EtherCAT網路中，當資料[帧](../Page/帧.md "wikilink")通過EtherCAT節點時，節點會複製資料，再傳送到下一個節點，同時識別對應此節點的資料，則會進行對應的處理，若節點需要送出資料，也會在傳送到下一個節點的資料中插入要送出的資料\[4\] 。每個節點接收及傳送資料的時間少於1微秒，一般而言只用一個[帧](../Page/帧.md "wikilink")的資料就可以供所有的網路上的節點傳送及接收資料。

## 通訊協定

EtherCAT通訊協定是針對程序資料而進行優化，利用標準的[IEEE 802.3以太網幀傳遞](https://zh.wikipedia.org/wiki/IEEE_802.3 "wikilink")，[Ethertype為](https://zh.wikipedia.org/wiki/Ethertype "wikilink")0x88a4。其資料順序和網站上設備的實體順序無關，定址順序也沒有限制。主站可以和從站進行[廣播及](https://zh.wikipedia.org/wiki/廣播 "wikilink")[多播](../Page/多播.md "wikilink")等通訊。若需要IP[路由](../Page/路由.md "wikilink")，EtherCAT通訊協定可以放入[UDP](../Page/用户数据报协议.md "wikilink")/[IP資料包中](../Page/网际协议.md "wikilink")。

## 性能

EtherCAT的週期時間短，是因從站的[微處理器不需處理乙太網的封包](https://zh.wikipedia.org/wiki/微處理器 "wikilink")。所有程序資料都是由從站控制器的硬體來處理。此特性再配合EtherCAT的機能原理，使得EtherCAT可以成為高性能的分散式I/O系統：包含一千個分散式數位輸入/輸出的程序資料交換只需30us\[5\]，相當於在100Mbit/s的乙太網傳輸125個位元組的資料。讀寫一百個[伺服軸的系統可以以](https://zh.wikipedia.org/wiki/伺服 "wikilink")10 kHz的速率更新，一般的更新速率約為1–30 kHz，但也可以使用較低的更新速率，以避免太頻繁的[直接記憶體存取](../Page/直接記憶體存取.md "wikilink")影響主站個人電腦的運作。

## 拓撲

EtherCAT使用全[雙工](../Page/雙工.md "wikilink")的乙太網實體層，從站可能有二個或二個以上的埠。若設備沒偵測到其下游有其他設備，從站的控制器會自動關閉對應的埠並回傳以太網幀。由於上述的特性，EtherCAT幾乎支援所有的網路拓撲，包括總線式、樹狀或是星狀，現場總線常用的總線式拓撲也可以用在以太網中。

EtherCAT的拓撲可以用網路線、分枝或是短線（stub）作任意的組合。有三個或三個以上以太網接口的設備就可以當作分接器，不一定一定要用[網路交換器](../Page/網路交換器.md "wikilink")。 由於使用100BASE-TX的以太網物理層，二個設備之間的距離可以到100公尺，一個EtherCAT區段的網路最多可以有65535個設備。若EtherCAT網路是使用環狀拓撲（主站設備需要有二個通訊埠），則此網路還有纜線冗餘的機能。

## 同步

為了系統的同步，EtherCAT協定中有提供分散式时钟機制，即使通訊循環週期有抖動，时钟的抖動遠小於1µs，大約接近IEEE 1588的標準。因此EtherCAT的主站設備不需針對时钟使用特殊的硬體，可以用軟體實現在任何標準的的乙太網MAC，即使沒有特殊的通訊協處理器也沒有關係。

標準建立分散式时钟的程序是由主站送出一特定位址的廣播訊息給所有從站來啟動。若使用環狀拓撲，所有從站會在收到訊息時[閂鎖內部時鐘](https://zh.wikipedia.org/wiki/閂鎖 "wikilink")，當訊息回來時會再閂鎖內部時鐘一次。主站會讀所有從站閂鎖的值，計算各個從站的延遲。為了消除抖動的影響及求得平均值，主站會儘可能的多次進行上述的程序。所有的從站延遲會依各從站在從站環狀拓撲的位置來計算，並記錄在一個偏移寄存器中。最後主站送出一個讀寫系統时钟的廣播訊息，會使第一個從站的時鐘為參考時鐘，其他從站的內部時鐘會調整到和第一個從站相同。

為了在初始化後保持時鐘的同步，主站或從站需定期的再送出廣播訊號，以計算各個從站內部時鐘的速度差異，若有需要時，從站需要可以調整自身時鐘的速度，或是有其他調整時鐘的機制。

系統時鐘是一個64位元的計時器，計數內容是從2000年1月1日0點0分開始所經過的時間，單位是奈秒（ns）。

## 設備行規

設備行規（device profile）描述應用需要的參數及設備的機能特性，包括可能依設備種類而不同的狀態機。總線技術中已有許多可靠的設備行規，例如I/O設備、驅動器或閥等設備。EtherCAT同時支援[CANopen](../Page/CANopen.md "wikilink")設備行規及驅動器行規。從CANopen或Sercos移植到EtherCAT時，在應用觀點看到的內容是一様的，也可方便使用者或設備製造商的轉換。

## 機能安全

EtherCAT有一個加強的協定版本，稱為Safety over EtherCAT，可以在同一個網路上進行[機能安全相關的通訊和一般的控制通訊](https://zh.wikipedia.org/wiki/機能安全 "wikilink")。此安全通訊是以EtherCAT的[應用層為基礎](https://zh.wikipedia.org/wiki/應用層 "wikilink")，不會影響底層的通訊協定\[6\]。Safety over EtherCAT有通過[IEC 61508的認證](../Page/IEC_61508.md "wikilink")，符合[安全完整性等級](../Page/安全完整性等級.md "wikilink")（SIL）3的要求。自2005年起已有使用Safety over EtherCAT的產品上市。

## 實現

EtherCAT主站可以用軟體，在標準的[乙太網](https://zh.wikipedia.org/wiki/乙太網 "wikilink")[媒体接入控制器中實現](https://zh.wikipedia.org/wiki/媒体接入控制器 "wikilink")。許多供應商有提供在不同作業系統下的程式碼，也有許多開源軟體或共享軟體。EtherCAT從站需要特殊的EtherCAT從站控制器，才能實現飛速傳輸（processing on the fly）的技術。EtherCAT從站控制器可以用[FPGA來實現](https://zh.wikipedia.org/wiki/FPGA "wikilink")，且已有現成的代碼，此控制器也可以用[ASIC來實現](../Page/特殊應用積體電路.md "wikilink")。

## 參考資料

## 其他參考資料

  -
<!-- end list -->

  -
<!-- end list -->

  -
  -
<!-- end list -->

  -
<!-- end list -->

  -
<!-- end list -->

  -
## 外部連結

  - [EtherCAT Technology Group](http://www.ethercat.org)
  - [EtherCAT Technology Group China](http://www.ethercat.org.cn)

[Category:工業乙太網](https://zh.wikipedia.org/wiki/Category:工業乙太網 "wikilink") [Category:現場總線](https://zh.wikipedia.org/wiki/Category:現場總線 "wikilink") [Category:工業自動化](https://zh.wikipedia.org/wiki/Category:工業自動化 "wikilink")

1.

2.
3.  [ethercat.org EtherCAT簡介](http://www.ethercat.org/pdf/cn/EtherCAT_Introduction.pdf)

4.  [cechina EtherCAT 原理介紹](http://article.cechina.cn/2008-05/2008520102128.htm)

5.
6.  [The safety solution for EtherCAT](http://www.ethercat.org/pdf/english/pcc0107_safety_over_ethercat_e.pdf)