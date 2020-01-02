> 本文内容由[Telnet](https://zh.wikipedia.org/wiki/Telnet)转换而来。


**Telnet**是一種[應用層協議](https://zh.wikipedia.org/wiki/應用層 "wikilink")，使用於[網際網路及](https://zh.wikipedia.org/wiki/網際網路 "wikilink")[區域網中](https://zh.wikipedia.org/wiki/區域網 "wikilink")，使用[虛擬終端機的形式](https://zh.wikipedia.org/wiki/虛擬終端機 "wikilink")，提供雙向、以文字字串為主的[命令列介面互動功能](https://zh.wikipedia.org/wiki/命令列介面 "wikilink")。屬於[TCP/IP協議族的其中之一](https://zh.wikipedia.org/wiki/TCP/IP "wikilink")，是[Internet遠端登錄服務的標準協議和主要方式](https://zh.wikipedia.org/wiki/Internet "wikilink")，常用於[伺服器的遠端控制](https://zh.wikipedia.org/wiki/伺服器 "wikilink")，可供使用者在本地主機執行遠端主機上的工作。

Telnet在1969年開發出來，在 RFC 15 定義， RFC 854 定義了擴充功能。[互联网工程任务组](../Page/互联网工程任务组.md "wikilink")（IETF），在中，將其加以標準化，是最早形成的網際網路協議之一。

## 原理

使用者首先在電腦執行Telnet程序，連線至目的地[伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")，然後輸入帳號和密碼以驗證身份。使用者可以在本地主機輸入命令，然後讓已連接的遠端主機執行，就像直接在對方的控制台上輸入一樣。

傳統Telnet會話所傳輸的資料並未[加密](../Page/加密.md "wikilink")，帳號和密碼等敏感資料容易會被竊聽，因此很多伺服器都會封鎖Telnet服務，改用更安全的[SSH](../Page/Secure_Shell.md "wikilink")。

## 應用

[HKPL_Telnet.PNG](https://zh.wikipedia.org/wiki/File:HKPL_Telnet.PNG "fig:HKPL_Telnet.PNG")的資料查詢系統\]\]

  - [圖書館利用Telnet及](https://zh.wikipedia.org/wiki/圖書館 "wikilink")[全球資訊網供讀者進行續借](https://zh.wikipedia.org/wiki/全球資訊網 "wikilink")、預約及查詢記錄的服務。
  - 多數的純文字式[BBS](../Page/BBS.md "wikilink")仍使用Telnet，部分甚至提供SSH服務，以提升安全性。
  - [路由器](../Page/路由器.md "wikilink")、[交換器及大部份的](../Page/網路交換器.md "wikilink")[電信設備仍提供Telnet及SSH介面](https://zh.wikipedia.org/wiki/電信設備 "wikilink")，以讓管理者連入進行設定及維護。

[Microsoft Windows從](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Vista開始](https://zh.wikipedia.org/wiki/Vista "wikilink")，不再預先安裝Telnet客戶端，使用者需要手動從程式集裡啟動才可使用。而在之前的版本，只要電腦啟動了TCP/IP服務，Telnet客戶端便可隨時使用。

## 相關RFC文件

### 網際網路

  - RFC 854, Telnet Protocol Specification
  - RFC 855, Telnet Option Specifications
  - RFC 856, Telnet Binary Transmission
  - RFC 857, Telnet Echo Option
  - RFC 858, Telnet Suppress Go Ahead Option
  - RFC 859, Telnet Status Option
  - RFC 860, Telnet Timing Mark Option
  - RFC 861, Telnet Extended Options: List Option

## 编程界面

[Delphi](../Page/Delphi.md "wikilink")/[C++Builder](../Page/C++Builder.md "wikilink")中，通过，可以使用控件类TIdTelnetServer与TIdCmdTCPClient，分别扮作服务器端与客户端提供了编程设施。在客户端，发送消息时必须调用SendCh()方法，每次发送一个字符；接收数据通过OnDataAvailable事件自行编写处理函数。

## 参見

  - [BBS（電子公告牌系統）常見的telnet客戶端程式](https://zh.wikipedia.org/wiki/BBS#常见的telnet客户端程式 "wikilink")
  - [命令列介面](https://zh.wikipedia.org/wiki/命令列介面 "wikilink")
  - [等寬字型](https://zh.wikipedia.org/wiki/等寬字型 "wikilink")

## 外部連結

  - [Telnet的RFC文件列表](http://www.telnet.org/htm/dev.htm)
  - [香港公共圖書館 -- 純文字瀏覽圖書館目錄 （Telnet使用者端程式）](telnet://202.85.101.136:8603)

[Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink") [Category:互联网标准](https://zh.wikipedia.org/wiki/Category:互联网标准 "wikilink") [Category:网络软件](https://zh.wikipedia.org/wiki/Category:网络软件 "wikilink") [Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink")