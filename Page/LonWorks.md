**LonWorks**是一個由[埃施朗公司](../Page/埃施朗公司.md "wikilink")所開發的網路控制平台，使用的通訊協定是埃施朗公司開發的[LonTalk](https://zh.wikipedia.org/wiki/LonTalk "wikilink")，傳輸媒介可以是[雙絞線](https://zh.wikipedia.org/wiki/雙絞線 "wikilink")、[電力線](../Page/電力線通信.md "wikilink")、[光纖及](https://zh.wikipedia.org/wiki/光纖 "wikilink")[无线电](https://zh.wikipedia.org/wiki/无线电 "wikilink")。LonWorks可用在[智能建筑中的許多](https://zh.wikipedia.org/wiki/智能建筑 "wikilink")[自動化機能](https://zh.wikipedia.org/wiki/自動化 "wikilink")，例如[暖通空調](../Page/暖通空調.md "wikilink")（HVAC）及[照明控制](https://zh.wikipedia.org/wiki/照明 "wikilink")。在2010年時已有9千萬個設備使用LonWorks網路技術。LonWorks網路技術目前由LonMark协会（LonMark International）維護。

## 起源及標準化

LonWorks系統的許多技術都是源自[埃施朗公司](../Page/埃施朗公司.md "wikilink")，包括晶片設計、雙絞線及電力線的通訊、[LonTalk通訊協定](https://zh.wikipedia.org/wiki/LonTalk "wikilink")、[路由器](../Page/路由器.md "wikilink")、網路管理軟體等。在1999年其通訊協定LonTalk提交給[ANSI認可](../Page/美國國家標準協會.md "wikilink")，成為控制網路的標準ANSI/CEA-709.1-B。其雙絞線及電力線的通訊也成為ANSI的標準。

此後，ANSI/CEA-709.1成為許多標準的基礎，例如用在火車控制的IEEE 1473-L、[美國鐵路協會](https://zh.wikipedia.org/wiki/美國鐵路協會 "wikilink")（）針對貨運列車的電動氣動剎車系統、歐洲的加油站控制協會[IFSF](https://zh.wikipedia.org/wiki/IFSF "wikilink")（）、[國際半導體和材料](https://zh.wikipedia.org/wiki/國際半導體和材料 "wikilink")（）等。在2005年時LonWorks系統成為歐洲智能建筑標準EN 14908。LonTalk協定也是[美國冷凍空調協會](https://zh.wikipedia.org/wiki/美國冷凍空調協會 "wikilink")（[ASHRAE](https://zh.wikipedia.org/wiki/美国采暖、制冷与空调工程师学会 "wikilink")）定義的智能建築通訊協定[BACnet](../Page/BACnet.md "wikilink")中，六種資料連結層及物理層中的一種。

中國將LonWorks技術成為國家標準GB/Z 20177.1-2006及智能建築標準GB/T 20299.4-2006。2008年時[國際標準化組織](../Page/國際標準化組織.md "wikilink")（ISO）及[国际电工委员会](../Page/国际电工委员会.md "wikilink")（IEC）將其通訊協定、雙絞線信號技術、電力線信號技術及乙太網路協定（IP）標準化，編號為ISO/IEC14908-1，-2，-3及-4。

## 簡介

### 處理器

埃施朗公司為LonTalk通訊協定設計了神經元芯片（Neuron chip），早期這是唯一可以支援LonTalk通訊協定的IC，神經芯片中包括有三個8位元的CPU，分別處理媒體存取、網路通訊及其他應用機能，使用的語言是由[ANSI C為基準修改的Neuron](../Page/ANSI_C.md "wikilink") C。每一個芯片上都有一個48位元的識別碼（Neuron ID），因此在網路上可以識別每一個設備。在1999年後，使用泛用的處理器也可以支援LonTalk通訊協定\[1\]。

### 物理層

LonWorks網路使用二種不同的物理層通訊技術，分別是名為「free topology」的[雙絞線通訊技術](https://zh.wikipedia.org/wiki/雙絞線 "wikilink")，以及[電力線通信](../Page/電力線通信.md "wikilink")。

其雙絞線通訊使用[差動式曼徹斯特編碼](https://zh.wikipedia.org/wiki/差動式曼徹斯特編碼 "wikilink")（），可以使用[RS-485收發器及變壓器耦合收發器](https://zh.wikipedia.org/wiki/RS-485 "wikilink")，RS-485收發器建議的通訊速率為39 kbit/s。LonWorks支援的變壓器耦合收發器分為二種，只支援總線型網路拓撲的收發器，其通訊速率可以到1.25Mbit/s，另一種收發器允許總線型、環型及星型網路拓撲，其通訊速率為78Kbit/s\[2\] 。電力線通信的通訊速度可以是5.4 kbit/s或3.6 kbit/s。\[3\]

### 媒體存取控制

LonWorks的[媒體存取控制層使用一種改良型的](https://zh.wikipedia.org/wiki/媒體存取控制 "wikilink")[载波侦听多路访问](../Page/载波侦听多路访问.md "wikilink")（CSMA）協議，稱為可預測P-持續CSMA，每個節點在網路空閒時需等待一段隨機的時間，這段時間內網路仍沒有資料，才允許傳送資料。隨機時間的範圍由節點佔計的網路負載決定，網路負載越重，隨機時間的範圍就越長\[4\] 。

### 網路變數及顯式報文

LonWorks採用物件導向的設計方法\[5\]，其數據資料稱為網路變數（NV），包括其數據及單位。每一個設備都會定義輸入及輸出的網路變數，利用網路管理軟體可以將相同單位的輸入及輸出网络变量绑定（binding）在一起，建立二個网络变量的邏輯連接，之後當一設備的輸出网络变量變更時，設備會自動傳送包括網路變數資料的隱式報文，網路上被绑定的輸入网络变量就可以得到更新的資料\[6\]。

LonWorks的通訊除了網路變數外，也可以使用顯式報文。顯式報文依其服務方式，可分為確認方式、非確認重覆方式、非確認方式及請求／應答方式。LonWorks網路變數的長度不能超過31個位元組，而顯式報文的長度最大可到228位元組，方便傳送較長的訊息。另外要使用網路變數需要利用LonBuilder仿真器或LonMaker軟體進行網路變數綁定，增加開發及應用的成本，使用顯式報文就沒有上述問題，不過其缺點是通訊內容多半需要自行定義，而LonWorks網路系統也就成為封閉式的系統 。

### 標準網路變數性態

為了方便不同設備的資料交換，LonWorks針對實際物理量定義了標準網路變數性態（Standard Network Variable Type，簡稱SNVT），標準網路變數性態包括一物理量的單位及其數值及實際物理量的關係，例如表示溫度的標準網路變數性態SNVT_temp用0至65535的整數來表示從[絕對零度到](https://zh.wikipedia.org/wiki/絕對零度 "wikilink")[攝氏](https://zh.wikipedia.org/wiki/攝氏 "wikilink")6279.5度的溫度範圍。因此不同設備只要其溫度是用SNVT_temp表示，其數值和實際溫度的關係都相同。

### 開發及網路管理工具

LonWorks技術中的開發工具分為節點開發的NodeBuilder軟體，安裝節點及網路的LonBuilder開發平台（包括硬體、軟體及路由器等），使用LonMaker軟體也可以進行網路節點的安裝。

LonWorks技術中的網路管理工具包括LonManager DDE伺服器及LonWorks網路服務。LonManager DDE伺服器可使電腦中支持[動態資料交換](../Page/動態資料交換.md "wikilink")的應用程式有監控及存取LonWorks網路的能力，而LonWorks網路服務（LNS）支援[主從式架構](../Page/主從式架構.md "wikilink")，可視為LonWorks網路的操作系統。\[7\]

## 參照

其他同樣廣為使用的[智能建筑通訊協定](https://zh.wikipedia.org/wiki/智能建筑 "wikilink")\[8\]：

  - [BACnet](../Page/BACnet.md "wikilink")
  - [控制器區域網路](https://zh.wikipedia.org/wiki/控制器區域網路 "wikilink")（簡稱CAN或CANbus）
  - [EIB](https://zh.wikipedia.org/wiki/EIB "wikilink")（全名是European Installation Bus，已成為[KNX協定的一部份](https://zh.wikipedia.org/wiki/KNX "wikilink")）

## 外部連結

  - [Echelon Corporation](http://www.echelon.com/)
  - [LonMark International](https://web.archive.org/web/20140108143727/http://lonmark.org/)
  - [IEC - LonWorks Technology tutorial](https://web.archive.org/web/20100814231044/http://www.ieclon.com/LonWorks/LonWorksTutorial.html)

## 參考文獻

[Category:智能建築](https://zh.wikipedia.org/wiki/Category:智能建築 "wikilink")

1.  <http://global.ihs.com/doc_detail.cfm?document_name=CEA-709.1> Protocol Standard (USA)

2.

3.  <http://www.echelon.com/support/documentation/manuals/transceivers/005-0154-01D.pdf>  PL3120/3150 transceiver data book, p5

4.
5.
6.  <http://www.stitcs.com/CN/lonworks/Introduction_of_LonWorks_Platform.pdf，LonWorks技術介紹>

7.

8.