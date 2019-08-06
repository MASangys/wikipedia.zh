**NetBIOS**，為**網路基本輸入輸出系統**（）的縮寫，它提供了[OSI模型](../Page/OSI模型.md "wikilink")中的[會話層服務](https://zh.wikipedia.org/wiki/會話層 "wikilink")，讓在不同電腦上運行的不同程式，可以在[區域網路中](https://zh.wikipedia.org/wiki/區域網路 "wikilink")，互相連線，以及分享資料。嚴格來說，NetBIOS不是一種網路協定，而是[应用程序接口](../Page/应用程序接口.md "wikilink")（API）。較古老的作業系統，使用[IEEE 802.2與](https://zh.wikipedia.org/wiki/IEEE_802.2 "wikilink")[IPX/SPX協定](https://zh.wikipedia.org/wiki/IPX/SPX "wikilink")，可以使用[NetBIOS Frames協定或NetBIOS](https://zh.wikipedia.org/wiki/NetBIOS_Frames協定 "wikilink") over IPX/SPX協定來運作。現代作業系統，多數都使用TCP/IP協定，則可透過[NetBIOS over TCP/IP協定來相互通訊](https://zh.wikipedia.org/wiki/NetBIOS_over_TCP/IP "wikilink")。

## 歷史

IBM在區域網路中，為他們的[大型主機開發了](https://zh.wikipedia.org/wiki/大型主機 "wikilink")[IBM系統網路架構](https://zh.wikipedia.org/wiki/IBM系統網路架構 "wikilink")（SNA）。但這套系統過於複雜，不適用於個人電腦，IBM雇用了Sytek Inc，為他們開發新的[IBM PC Network](https://zh.wikipedia.org/wiki/IBM_PC_Network "wikilink")，適用於個人電腦組成的區域網路。

1983年，Sytek Inc開發了一套軟體[API](https://zh.wikipedia.org/wiki/API "wikilink")，使用在[IBM PC Network](https://zh.wikipedia.org/wiki/IBM_PC_Network "wikilink")[區域網路中](https://zh.wikipedia.org/wiki/區域網路 "wikilink")。

1984年，[IBM](../Page/IBM.md "wikilink")授權開放這套標準的[API給外界使用](https://zh.wikipedia.org/wiki/API "wikilink")，用來與IBM電腦進行網路連結。

1985年，IBM開發[令牌環](https://zh.wikipedia.org/wiki/令牌環 "wikilink")（token ring）網路，為了讓舊有使用NetBIOS API的軟體能在新的網路架構上運作，建立了NetBIOS[模擬器](https://zh.wikipedia.org/wiki/模擬器 "wikilink")，這個模擬器被稱為**NetBIOS延伸使用者界面**（NetBIOS Extended User Interface, NetBEUI），擴展了原有的 NetBIOS API。同時，也制定了[NetBIOS Frames協定](https://zh.wikipedia.org/wiki/NetBIOS_Frames協定 "wikilink")，讓NetBEUI能夠在token ring網路上提供服務，特別是在[IEEE 802.2](https://zh.wikipedia.org/wiki/IEEE_802.2 "wikilink") [LLC層](https://zh.wikipedia.org/wiki/LLC "wikilink")。

1986年，[Novell](../Page/Novell.md "wikilink")發表[NetWare](https://zh.wikipedia.org/wiki/NetWare "wikilink") 2.0，將NetBIOS實作在其中。Novell讓NetBIOS運作在[IPX/SPX協定上](https://zh.wikipedia.org/wiki/IPX/SPX "wikilink")，提出了[NetBIOS over IPX/SPX協定](https://zh.wikipedia.org/wiki/NetBIOS_over_IPX/SPX "wikilink")。

1987年，出現將NetBIOS封裝為TCP與UDP封包的技術，IETF隨後發布RFC 1001與RFC 1002，將它制定為標準，這套標準被稱為[NetBIOS over TCP/IP](https://zh.wikipedia.org/wiki/NetBIOS_over_TCP/IP "wikilink")，簡稱為NBT。在[PS/2電腦上市之後](https://zh.wikipedia.org/wiki/PS/2 "wikilink")，IBM釋出了PC LAN支援程式，在其中包括了NetBIOS驅動程式。

## 內容

NetBIOS提供了三種軟體服務：

  - 名稱服務，包括名稱登錄與名稱解析
  - [資料包服務](https://zh.wikipedia.org/wiki/資料包 "wikilink")
  - [會話服務](../Page/会话_\(计算机科学\).md "wikilink")

## 相關條目

  - [伺服器訊息區塊](../Page/伺服器訊息區塊.md "wikilink")
  - [NetBIOS Frames協定](https://zh.wikipedia.org/wiki/NetBIOS_Frames協定 "wikilink")
  - [NetBIOS over TCP/IP](https://zh.wikipedia.org/wiki/NetBIOS_over_TCP/IP "wikilink")

[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")