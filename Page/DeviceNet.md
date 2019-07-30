**DeviceNet**是一種用在[自動化技術的](https://zh.wikipedia.org/wiki/自動化技術 "wikilink")[現場總線](../Page/現場總線.md "wikilink")標準，由美國的[Allen-Bradley公司在](https://zh.wikipedia.org/wiki/Allen-Bradley "wikilink")1994年開發。DeviceNet使用[控制器區域網路](https://zh.wikipedia.org/wiki/控制器區域網路 "wikilink")（CAN）為其底層的通訊協定，其應用層有針對不同設備所定義的行規（profile）。主要的應用包括資訊交換、安全設備及大型控制系統\[1\]\[2\]。在美國的市場佔有率較高\[3\]。

DeviceNet由[開放DeviceNet廠商協会](https://zh.wikipedia.org/wiki/開放DeviceNet廠商協会 "wikilink")（[Open DeviceNet Vendors Association](https://zh.wikipedia.org/wiki/:en:Open_DeviceNet_Vendors_Association "wikilink")，ODVA）所維護，是該協會的[通用工業協定](https://zh.wikipedia.org/wiki/通用工業協定 "wikilink")（Common Industrial Protocol）中的一部份。

## 歷史

DeviceNet通訊協定是由美國的[Allen-Bradley公司](https://zh.wikipedia.org/wiki/Allen-Bradley "wikilink")（後來被[洛克威爾自動化公司](../Page/洛克威爾自動化公司.md "wikilink")合併）所開發，以Bosch公司開發的[控制器區域網路](https://zh.wikipedia.org/wiki/控制器區域網路 "wikilink")（CAN）為其通訊協定的基礎\[4\]。DeviceNet移植了來自ControlNet（另一個由Allen-Bradley公司開發的通訊協定）的技術，再配合控制器區域網路的使用，因此其成本較傳統以[RS-485為基礎的通訊協定要低](https://zh.wikipedia.org/wiki/RS-485 "wikilink")，但又可以有較好的強健性。

為了要推展DeviceNet在世界各地的使用，洛克威爾公司決定將此技術分享給其他廠商。後來DeviceNet通訊協定是由位在美國的獨立組織[開放DeviceNet廠商協会](https://zh.wikipedia.org/wiki/開放DeviceNet廠商協会 "wikilink")（ODVA）管理。ODVA維護DeviceNet的規格、也提供），確保廠商的產品符合DeviceNet通訊協定的規格。\[5\]

後來ODVA將DeviceNet通訊和其他相關的通訊協定整合成[通用工业协定](https://zh.wikipedia.org/wiki/通用工业协定 "wikilink")（CIP），其中包括以下的通訊協定

  - [EtherNet/IP](https://zh.wikipedia.org/wiki/EtherNet/IP "wikilink")（其N為大寫，此處的IP不是[网际协议](../Page/网际协议.md "wikilink")，為「Industrial Protocol」的簡稱）
  - [ControlNet](https://zh.wikipedia.org/wiki/ControlNet "wikilink")
  - DeviceNet
  - CompoNet

## 技術簡介

1.  定義[OSI模型](../Page/OSI模型.md "wikilink")七層架構中的[物理层](../Page/物理层.md "wikilink")、[数据链路层](../Page/数据链路层.md "wikilink")及[应用层](https://zh.wikipedia.org/wiki/应用层 "wikilink")
2.  網路中除了信號外，也包括電源，支援網路自供電機能（一般用在小型的設備中，如光电监测器、限位開關或近接開關等）\[6\]
3.  允許三種[比特率](../Page/比特率.md "wikilink")：125 kbit/s、250 kbit/s及500 kbit/s，不同比特率下的主幹線（trunk）長度和比特率成反比
4.  網路中可以使用扁平电缆
5.  單一網路中最多可以有64個節點，節點地址（在DeviceNet中稱為MAC ID）由0到63
6.  有重複節點地址偵測的功能
7.  支援主站－從站（master-slave）及[端對端](https://zh.wikipedia.org/wiki/點對點技術 "wikilink")（peer-to-peer）通訊架構，不過大部份的設備是在前者的網路架構下運作
8.  允許單一網路中多重主站的功能

\# 可以在高雜訊的環境下使用

## 架構

### 物理层

DeviceNet網路使用幹線（trunkline）-分支線（dropline）的網路拓撲，允許在網路中使用分接頭，一方面簡化配線及存取網路。而且要從網路中加入或移除設備都相當簡單，減少生產線停機及除錯的時間，提高網路的靈活性。 \[7\]

DeviceNet提供125 kbit/s、250 kbit/s及500 kbit/s三種不同的資料傳輸速度。依使用的通訊線種類不同，DeviceNet允許的通訊線長度也有所不同，若使用圓的粗電纜，通訊線長度最長可以到500公尺，一般的圓電纜長度可以到100公尺，扁平型的電纜在比特率125 kbit/s時可以到380公尺，500 kbit/s時則只能到75公尺。

### 数据链路层

DeviceNet使用[控制器區域網路](https://zh.wikipedia.org/wiki/控制器區域網路 "wikilink")（CAN）為其数据链路层。CAN是一種差動的串列總線，其低成本及高干擾性為其優點\[8\]。CAN的每一個訊息都有其對應的訊息標識符，訊息標識符可用來決定不同訊息的優先順序，網路上的設備也根據訊息標識符來判斷是否需處理此一訊息。DeviceNet使用訊息標識符為11位元的CAN 2.0A，CAN資料幀的格式如下

`1 Bit = >幀啟始位元`
`11 Bits = >訊息標識符（ID）`
`1 Bit = >遠程需求（RTR）位元`
`6 Bits = >控制欄位`
`0-8 Bytes = >資料欄位`
`15 Bits = > CRC序列`
`1 Bit = > CRC分隔位元`
`1 Bit = >確認（ACK）位元`
`1 Bit = >確認分隔位元`
`7 Bits = >幀結束`
`>2 Bits = >幀間隔`

在送出資訊幀時會先送出幀啟始位元進行同步，訊息標識符及遠程需求位元會用來決定訊息的優先權，CAN使用[CSMA的技術](../Page/载波侦听多路访问.md "wikilink")，在網路空閒時，任何設備都可以試圖送出資料上傳，在送出資料時，設備也會同步確認網路上資料和送出資料是否一致，此作法可以避免多台設備同時試圖送出資料，也可以驗證送出資料的正確性。在二台或多台設備同時試圖送出資料時，會利用訊息標識符及遠程需求位元進行位元仲裁（Bitwise Arbitration），上述資料最小的訊息有優先權，可以繼續傳送，其他設備則會停止送出訊息，其到網路空閒時才會再次送出資料。

後面的六個位元為控制欄位，其中二個位元固定，後面四個位元標示實際資料的長度。資料欄位中則為實際的資料，長度可以由0到8個個位元組不等，需和控制欄位中標示的長度一致。在資料欄位後面的是15個位元[循環冗餘校驗](../Page/循環冗餘校驗.md "wikilink")（CRC）欄位，可以在收到資料時確認資料是否正確。CAN提供了許多錯誤檢查及故障隔離（fault confinement）的機制，適合雜訊較大的環境下使用。

### 应用层

DeviceNet是一個以連接（connection）概念為基礎的通訊協定\[9\] ，若要與一設備通訊，就需要和設備建立連接，可以透過未連接訊息管理器（UCMM）和未連接埠來建立連接，之後就可以和此設備進行通訊。設備藉由連接可以傳送或接收顯式（Explicit）訊息及I/O訊息。

顯式訊息的資料包括有資料及協議內容，一般會用請求/應答的方式進行。典型的顯式訊息包括組態資料及對沒有及時性要求的資料。I/O訊息也稱為隱式（imlicit）訊息，一般都是有及時性要求的資料，資料中不包含通訊協議，因此傳送端及接收端都需事先知道訊息中資料的定義，其優點是通訊的效率較高。在DeviceNet中，二個設備要建立隱式訊息連接之前，需要先透及用顯式訊息進行設定，只要連結設定完成，即可透過CAN識別符將訊息傳送給對應的節點。

## 一致性測試

DeviceNet設備的製造商可透過一致性測試，宣告其產品和DevicNet規範相容。ODVA在全球有三個獨立的測試實驗室，製造商可將其產品送交進行認證。\[10\]

廠商在進行一致性測試前，需向ODVA進行註冊供應商，索取供應商ID，再購買DeviceNet規範及一致性測試的軟體及對應的硬體界面卡。廠商可以自行測試其DeviceNet產品，在自行測試完成後提交ODVA的測試實驗室再作驗證。若驗證未通過，廠商需再進行修改及測試，直到通過測試實驗室的獨立驗證為止。

## 參見

  - [控制器區域網路](https://zh.wikipedia.org/wiki/控制器區域網路 "wikilink")（CAN）
  - [CANopen](../Page/CANopen.md "wikilink")：另一種以CAN為基礎的工業通訊協定
  - [通用工业协定](https://zh.wikipedia.org/wiki/通用工业协定 "wikilink")
      - [EtherNet/IP](https://zh.wikipedia.org/wiki/EtherNet/IP "wikilink")
      - [ControlNet](https://zh.wikipedia.org/wiki/ControlNet "wikilink")

## 外部連結

  - [DeviceNet通訊協定簡介](http://www.rtaautomation.com/devicenet/)（英文）
  - [DeviceNet技术及其产品开发](http://www.ca800.com/apply/html/2008-2-29/n27441.html)

## 參考資料

[Category:串行总线](https://zh.wikipedia.org/wiki/Category:串行总线 "wikilink") [Category:工業自動化](https://zh.wikipedia.org/wiki/Category:工業自動化 "wikilink")

1.   Controller Area Network Solutions FAQ (Frequently Asked Questions).

2.  [1](http://www.odva.org/Home/ODVATECHNOLOGIES/DeviceNet/DeviceNetTechnologyOverview/tabid/72/Default.aspx), *DeviceNet Technology Overview*.

3.   CAN协议及其高层协议DeviceNet和CANopen的比较

4.   Controller Area Network Solutions FAQ (Frequently Asked Questions)\], *What is DeviceNet?*

5.
6.
7.  ["DeviceNet Technical Overview"](http://www.odva.org/Portals/0/Library/Publications_Numbered/PUB00026R1.pdf)  from Open DeviceNet Vendor Association, Inc.（ODVA）

8.
9.

10.