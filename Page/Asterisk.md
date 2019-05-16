**Asterisk**
是第一套以[開放原始碼軟體實作的](https://zh.wikipedia.org/wiki/開放原始碼軟體 "wikilink")
[用戶交換機](https://zh.wikipedia.org/wiki/用戶交換機 "wikilink") (PBX)
系統\[1\]。Asterisk 由
[Digium](https://zh.wikipedia.org/wiki/Digium "wikilink")
的創辦人[馬克·史賓瑟](https://zh.wikipedia.org/wiki/馬克·史賓瑟 "wikilink")（Mark
Spencer）於1999年他還在[奧本大學念書時所開發](../Page/奧本大學.md "wikilink")。與其他的用戶交換機系統相同，Asterisk
同樣支援電話撥打另一隻分機，和撥打到[公共交換電話網與](https://zh.wikipedia.org/wiki/公共交換電話網 "wikilink")[IP電話系統](https://zh.wikipedia.org/wiki/IP電話 "wikilink")。Asterisk
這個名稱源自於星號 "\*"。

Asterisk 採用雙軌授權模式，免費模式使用 [GNU General Public
License](https://zh.wikipedia.org/wiki/GNU_General_Public_License "wikilink")
(GPL) 授權，而商用授權使用
[proprietary](https://zh.wikipedia.org/wiki/proprietary_software "wikilink")
模式，此授權不需要將系統原始碼公開。

系統一開始之開發平台為 [Linux](../Page/Linux.md "wikilink")，目前已可在相當多種的平台上運行，其中包括
[NetBSD](../Page/NetBSD.md "wikilink")、[OpenBSD](../Page/OpenBSD.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[Mac
OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink") 與
[Solaris](../Page/Solaris.md "wikilink")。亦有人將系統移植到 [Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")
平台上，即為 AsteriskWin32\[2\]。Asterisk 是相當輕量級的系統，可以在如
[OpenWrt](../Page/OpenWrt.md "wikilink")\[3\] 之類的嵌入式系統上運作。

## 功能介紹

Asterisk 包含許多昂貴的商用交換機系統才具有的功能，例如：
[語音信箱](https://zh.wikipedia.org/wiki/語音信箱 "wikilink")、[多方語音會議](https://zh.wikipedia.org/wiki/多方語音會議 "wikilink")、[互動式語音應答](https://zh.wikipedia.org/wiki/互動式語音應答 "wikilink")(IVR)、電話選單與[電話客服中心等機制](https://zh.wikipedia.org/wiki/電話客服中心 "wikilink")。

管理者亦可透過 Asterisk
內建的[分機操作語言撰寫撥號腳本以達到特殊的功能目的](https://zh.wikipedia.org/wiki/分機操作語言 "wikilink")。甚至可以透過[C語言撰寫相容的模組](https://zh.wikipedia.org/wiki/C語言 "wikilink")，或以任何相容的語言藉由
[stdin](https://zh.wikipedia.org/wiki/stdin "wikilink") 與
[stdout](https://zh.wikipedia.org/wiki/stdout "wikilink") 或網路 TCP socket
開發[Asterisk Gateway
Interface](https://zh.wikipedia.org/wiki/Asterisk_Gateway_Interface "wikilink")
(AGI)程式。

若要 Asterisk 系統撥打至公共交換電話網或中繼鏈接公共交換電話網，管理者必須安裝適當的硬體。如由 Digium 官方生產之各種
[PCI介面卡](https://zh.wikipedia.org/wiki/PCI "wikilink")，用以提供 Asterisk
連接
[T1](https://zh.wikipedia.org/wiki/T-carrier "wikilink")、[E1線路或其他傳統線路之能力](https://zh.wikipedia.org/wiki/E-carrier "wikilink")。中國大陸亦有如
OpenVox 價格相對低廉之相容介面卡。

Asterisk
支援非常廣泛的[影像電話與IP電話協定](https://zh.wikipedia.org/wiki/影像電話 "wikilink")\[4\]。包括
[會話發起協議](https://zh.wikipedia.org/wiki/會話發起協議 "wikilink") (SIP)、[Media
Gateway Control
Protocol](https://zh.wikipedia.org/wiki/Media_Gateway_Control_Protocol "wikilink")
(MGCP) 與 [H.323](../Page/H.323.md "wikilink") 協定。Asterisk 可相容於大部分的 SIP
電話。[Inter-Asterisk
eXchange](https://zh.wikipedia.org/wiki/Inter-Asterisk_eXchange "wikilink")
(IAX2) 協定是一個由 Asterisk 原生提供的 Asterisk PBX 交換機間中繼鏈接協定，部分 VoIP 服務商甚至原生支援
IAX2 協定。

為了滿足傳統電話與IP電話混合的服務環境，Asterisk
可以讓管理者建立一個全新單一的電話系統，或逐步的將既有電話系統轉移使用新技術。部分的公司直接使用
Asterisk 取代傳統的交換機，而有些公司則使用 Asterisk 提供進階功能，如語音信箱等，或將長途電話透過 Asterisk
改以網路傳輸以達到節費機制。

由于Asterisk过于专业且複雜，所以目前也存在大量衍生自Asterisk但簡化過的通信系统，以讓用戶較容易使用。比如在欧美比较流行的[elastix](https://zh.wikipedia.org/wiki/elastix "wikilink")、[trixbox](https://zh.wikipedia.org/wiki/trixbox "wikilink")、或以[簡體中文为基础的](https://zh.wikipedia.org/wiki/簡體中文 "wikilink")[Freeiris等](https://zh.wikipedia.org/wiki/Freeiris "wikilink")。

## 版本

主要版本:

  - 1.0 - 2004/09/23 釋出\[5\]
  - 1.2 - 2005/11/15 釋出\[6\]
  - 1.4 - 2006/12/26 釋出\[7\]
  - 1.6 - 2008/10/02 釋出\[8\]
  - 1.8 - 2010/10/21 釋出\[9\]
  - 10.0 - 2011/12/15 釋出\[10\]
  - 11.0 - 2012/10/31 釋出\[11\]

## 参考资料

## 外部链接

  - [Asterisk主页](http://www.asterisk.org/)
  - [Asterisk的主要赞助商和开发支持](http://www.digium.com/)

[Category:自由軟體](https://zh.wikipedia.org/wiki/Category:自由軟體 "wikilink")
[Category:通讯软件](https://zh.wikipedia.org/wiki/Category:通讯软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.