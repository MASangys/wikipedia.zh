**BACnet**是用於[智能建筑的](../Page/智能建筑.md "wikilink")[通訊協定](../Page/通訊協定.md "wikilink")，是[國際標準化組織](../Page/國際標準化組織.md "wikilink")（ISO）、[美國國家標準協會](../Page/美國國家標準協會.md "wikilink")（ANSI）及[美国采暖、制冷与空调工程师学会](../Page/美国采暖、制冷与空调工程师学会.md "wikilink")（ASHRAE）定義的通訊協定\[1\]。BACnet針對智能建筑及控制系統的應用所設計的通訊，可用在[暖通空調系統](../Page/暖通空調.md "wikilink")（HVAC，包括[暖氣](../Page/暖氣.md "wikilink")、[通風](../Page/通風.md "wikilink")、[空氣調節](../Page/空氣調節.md "wikilink")），也可以用在[照明控制](../Page/照明.md "wikilink")、[門禁系統](../Page/門禁系統.md "wikilink")、火警偵測系統及其相關的設備。優點在於能降低維護系統所需成本並且安裝比一般工業通訊協定更為簡易，而且提供有五種業界常用的標準協定，此可防止設備供應商及系統業者的壟斷，也因此未來系統擴充性與相容性大為增加\[2\]。

## 歷史

BACnet通訊協定的發展源起於1987年6年在[田纳西州](../Page/田纳西州.md "wikilink")[纳什维尔舉行的美國冷凍空調協會标准委员會](../Page/纳什维尔.md "wikilink")（Standard
Project
Committee）\[3\]。委员會中大家同意將通訊協定的設計分割為各個不同的主題，利用工作小組的方式進行，各工作小組專注在特定的領域，並提供資訊給标准委員會，一開始分為三個工作小組，分別是資料型態及屬性（Data
Type and Attribute）、原始資料格式（Primitive Data Format）及應用服務（Application
Services）等三個。歷經約9年研擬與3次的公開意見討論程序完成訂稿\[4\]。

BACnet在1995年時成為美國國家標準協會及美國冷凍空調協會的建築自動化控制網路的資料傳輸協定（ASHRAE/ANSI SSPC
135）標準，在2003年時成為ISO標準ISO
16484-5\[5\]。BACnet相容性測試的方式在2003年成為BSR/ASHRAE標準Standard
135.1。目前BACnet協定是由ASHRAE的标准委員會（SSPC）135維護。

在BACnet通訊協定問世後，美國Alerton公司就在1996年推出了一系列支援BACnet的[HVAC產品](../Page/HVAC.md "wikilink")，從小型的[變風量控制器到操作員的工作站](../Page/變風量控制器.md "wikilink")。後來也有許多廠商開發支援BACnet的產品。到2016年12月為止，已有1089家公司申請了支援BACnet需要的設備商識別碼（Vender
ID）\[6\]。

## 關於譯名

BACnet為**B**uilding **A**utomation and **C**ontrol
**net**works的簡稱，台灣通常翻譯為「建築自動化控制網-{}-路通-{}-訊協-{}-定」\[7\]\[8\]，而中國大陸則譯為「楼宇自动化与控制网-{}-络」\[9\]。

## 協定簡介

BACnet通訊協定中定義了幾種不同的[資料鏈結層](../Page/資料鏈結層.md "wikilink")/[實體層](../Page/實體層.md "wikilink")，包括：

  - 。

  - [乙太網路](../Page/乙太網路.md "wikilink")。

  - BACnet/IP。

  - [RS-232上的](../Page/RS-232.md "wikilink")[點對點通訊](../Page/點對點.md "wikilink")。

  - [RS-485上的主站](../Page/RS-485.md "wikilink")-從站/令牌傳遞（Master-Slave/Token-Passing，簡稱MS/TP）通訊。

  - 。

BACnet通訊協定中定義了許多服務（service），可供各設備之間的通訊，服務可以分為五類：有關設備物件管理的服務包括Who-Is、I-Am、Who-Has及I-Have等服務，有關物件訪問的服務包括讀取屬性、寫入屬性等服務，有關報警與事件的服務包括確認報警、屬性改變（change
of state）報告等，此外也有有關文件讀寫及虛擬終端的服務\[10\]。

BACnet通訊協定也定義了許多種類的物件。在每個物件中都有許多屬性，可以透過服務來存取物件中的屬性。BACnet通訊中的設備就是由許多物件組成，其中包括一個設備物件，是每個設備都必需的，其中記錄設備相關的資料，其他物件包括類比輸入、類比輸出、類比值、數位輸入、數位輸出及數位值等有關資料的物件。

為了提供不同廠商BACnet設備之間的[互操作性](../Page/互操作性.md "wikilink")，BACnet協定也定義了BACnet互操作基本块（BACnet
Interoperability Building
Block，簡稱BIBB），BACnet互操作基本块是由一個或多個服務所組成，說明在特定需求下，伺服器（server）端及客戶（client）端需要支援的服務及程序。BACnet互操作基本块可分為以下的五種：

  - 資料分享
  - 警告及事件管理
  - 排程
  - 趨勢
  - 設備及網路管理

每個BACnet設備都會有一份名為「[协议实现一致性声明](../Page/协议实现一致性声明.md "wikilink")」（Protocol
Implementation Conformance
Statement，PICS）的文件，其中需說明設備所支援的BACnet互操作基本块、物件種類及定義、使用文字集及通訊時需要的資料。

## 參照

其他同樣廣為使用的[智能建筑通訊協定](../Page/智能建筑.md "wikilink")\[11\]：

  - [LonWorks](../Page/LonWorks.md "wikilink")
  - [控制器區域網路](../Page/控制器區域網路.md "wikilink")（簡稱CAN或CANbus）
  - [EIB](../Page/EIB.md "wikilink")（全名是European Installation
    Bus，已成為[KNX協定的一部份](../Page/KNX.md "wikilink")）

## 參考資料

## 外部連結

  - [BACnet website](http://www.bacnet.org)
  - [BACnet International](http://www.bacnetinternational.org)

[Category:通信](https://zh.wikipedia.org/wiki/Category:通信 "wikilink")
[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")
[Category:智能建築](https://zh.wikipedia.org/wiki/Category:智能建築 "wikilink")

1.  \[<https://www.ashrae.org/resources--publications/bookstore/standard-135>
    ANSI/ASHRAE Standard 135/

2.

3.  [BACnet protocol June, 1987, in Nashville,
    Tennessee](http://tc14.ashraetcs.org/pdf/tc14-04a.pdf)

4.
5.  [ISO 16484-5](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=37298)
    in 2003

6.  [the BACnet
    website](http://www.bacnet.org/VendorID/BACnet%20Vendor%20IDs.htm)

7.

8.

9.

10.

11.