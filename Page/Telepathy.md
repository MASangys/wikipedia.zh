> 本文内容由[Telepathy](https://zh.wikipedia.org/wiki/Telepathy)转换而来。


**Telepathy**是一個用於在軟體上人際溝通的[軟體框架](https://zh.wikipedia.org/wiki/軟體框架 "wikilink")，例如[即時通訊](../Page/即時通訊.md "wikilink")、[VoIP](https://zh.wikipedia.org/wiki/網際協議通話技術 "wikilink")、視訊會議等等。Telepathy可以透過使用[D-Bus](../Page/D-Bus.md "wikilink")[行程間通訊](../Page/行程間通訊.md "wikilink")機制來建立通訊應用程式。它的目標是簡化通訊軟體的開發並在[自由與開放原始碼社群中透過定義應用程式與底層的網路協定的邏輯邊界來推廣](../Page/自由软件运动.md "wikilink")[代码复用](../Page/代码复用.md "wikilink")。

## 實作

有各種協定透過Telepathy的介面來實作：

  - **Gabble**：供[XMPP使用](https://zh.wikipedia.org/wiki/XMPP "wikilink")，包含了對[Jingle的支援](../Page/Jingle_\(协议\).md "wikilink")
  - **Butterfly**：供[Windows Live Messenger使用](../Page/Windows_Live_Messenger.md "wikilink")
  - **Idle**：供[IRC](../Page/IRC.md "wikilink")使用
  - **Salut**：供本機連線的[XMPP使用](https://zh.wikipedia.org/wiki/XMPP "wikilink")
  - **Haze**：用於存取libpurple支援的協定，libpurple是[Pidgin](../Page/Pidgin.md "wikilink")所使用的函式庫。這個軟體是在2007年的[Google夏日程式碼大賽](../Page/Google夏日程式碼大賽.md "wikilink")中完成的\[1\]。
  - **Spirit**：供在[諾基亞N900與](https://zh.wikipedia.org/wiki/諾基亞N900 "wikilink")[諾基亞N9](../Page/諾基亞N9.md "wikilink")上的[Skype協定](../Page/Skype協定.md "wikilink")所使用
  - **Rakia**：供[会话发起协议](../Page/会话发起协议.md "wikilink")(SIP)使用，利用諾基亞的開放原始碼Sofia-SIP函式庫實作
  - **Morse**：供[Telegram](../Page/Telegram.md "wikilink")使用

任務控制是其中一個組件的名稱，其提供了終端使用者的應用程式抽象一些低階Telepathy組件，如連線管理員的功能\[2\]。

Tubes則是Telepathy的任意資料傳輸與遠端[行程間通訊](../Page/行程間通訊.md "wikilink")機制\[3\]。

Telepathy提供了[诺基亚](../Page/诺基亚.md "wikilink")[N770](https://zh.wikipedia.org/wiki/诺基亚770网络终端 "wikilink")、[N800](https://zh.wikipedia.org/wiki/诺基亚N800 "wikilink")、[N810](../Page/诺基亚N810.md "wikilink")、[N900](../Page/诺基亚N900.md "wikilink")、[N9與](../Page/諾基亞N9.md "wikilink")[Jolla](../Page/Jolla.md "wikilink")的即時通訊與語音／視訊通話的基礎。

## Telepathy如何運作

協定實作提供了稱為「連線管理員」的D-Bus服務。Telepathy客戶端使用它們來建立到服務的連線。一旦連線建立起來，之後的通訊將會使用由連線請求，稱為「通道」的物件。通道可能會用於傳送或接收文字訊息、顯示聯絡人清單、或是建立VoIP通話。

## 應用程式

  - [Empathy](../Page/Empathy.md "wikilink")

  -
  - [Sugar](../Page/Sugar_\(用戶界面\).md "wikilink")

  -
## 參見

  -
## 參考資料

## 外部連結

  -
  - [「IM/VoIP通訊框架」](http://mirror.linux.org.au/pub/linux.conf.au/2007/video/talks/301.ogg)影片下載(77MB ogg)，其為Telepathy首席開發者Robert McQueen的談話。[Flash影片串流](http://lca2007.linux.org.au/talk/301)。

  - [KDE-Telepathy](http://community.kde.org/Real-Time_Communication_and_Collaboration)

  - [Telepathy開發者手冊](http://telepathy.freedesktop.org/doc/book/index-info.html)

[Category:自由網路軟體](https://zh.wikipedia.org/wiki/Category:自由網路軟體 "wikilink")

1.
2.
3.