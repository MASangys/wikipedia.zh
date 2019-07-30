**D-Bus**是一個[行程間通訊](../Page/行程間通訊.md "wikilink")及[远程过程调用機制](https://zh.wikipedia.org/wiki/远程过程调用 "wikilink")，可以讓多個不同的[计算机程序](../Page/计算机程序.md "wikilink")（即[行程](../Page/行程.md "wikilink")）在同一臺電腦上同時進行通訊\[1\]。D-Bus作為[freedesktop.org專案的一部份](https://zh.wikipedia.org/wiki/freedesktop.org "wikilink")，其設計目的是使[Linux](../Page/Linux.md "wikilink")[桌面环境](../Page/桌面环境.md "wikilink")（如[GNOME](../Page/GNOME.md "wikilink")與[KDE](../Page/KDE.md "wikilink")等）提供的服務標準化。

freedesktop.org專案同時也開發了一個稱為libdbus的[自由及开放源代码软件](../Page/自由及开放源代码软件.md "wikilink")[函式庫](../Page/函式庫.md "wikilink")，作為規範的參考實作。這個函式庫常與D-Bus本身混淆。也存在著其他的D-Bus實作，像是GDBus (GNOME)\[2\]，QtDBus ([Qt](../Page/Qt.md "wikilink")/KDE)\[3\]，dbus-java\[4\]以及sd-bus（[systemd的一部份](https://zh.wikipedia.org/wiki/systemd "wikilink")）\[5\]。

## 概觀

D-Bus可用於同一個桌面会话中不同[桌面](../Page/桌面环境.md "wikilink")[应用软件間的通訊](https://zh.wikipedia.org/wiki/应用软件 "wikilink")，能整合桌面会话，也解決了行程的生命週期的問題。它也允許桌面会话與[操作系统](../Page/操作系统.md "wikilink")間的通訊，這通常包括了[内核](../Page/内核.md "wikilink")與任何的系統[守护进程](../Page/守护进程.md "wikilink")或一般[行程](../Page/行程.md "wikilink")間的通訊。

D-Bus是一個系統，即行程間通訊的媒介，讓應用程式間可以通訊並交換訊息。因此，D-Bus为應用程式增加新的功能，簡化已有功能，包含資訊分享、模組化及。例如透過[藍牙](../Page/藍牙.md "wikilink")或[Skype](../Page/Skype.md "wikilink")所接收到的通話可以傳播到任何目前執行中的音樂播放器，並可使其靜音或暫停播放，直到通話結束\[6\]。

大多數的系統會實作一個具較高權限的*系統頻道*，連同給每一個已登入的使用者的*專用頻道*，這就可以讓D-Bus中可用的登錄資訊受到限制。因此，D-Bus服務同時包含了[系統守護行程](../Page/守护进程.md "wikilink")（給像是「新增硬體裝置」或是「印表機佇列變更」等事件使用）以及一個給每個使用者的登入会话（給这个使用者啟動的行程間的一般通訊使用）使用的獨有[守护进程](../Page/守护进程.md "wikilink")。應用程式透過[Unix域套接字與守護行程通訊](https://zh.wikipedia.org/wiki/Unix域套接字 "wikilink")。訊息匯流排是建基於通用的一對一訊息傳遞[框架](https://zh.wikipedia.org/wiki/軟體框架 "wikilink")，這讓任意兩個程式間可以不必透過訊息匯流排守護行程而直接通訊\[7\]。

## 內部

[Free_and_open-source-software_display_servers_and_UI_toolkits.svg](https://zh.wikipedia.org/wiki/File:Free_and_open-source-software_display_servers_and_UI_toolkits.svg "fig:Free_and_open-source-software_display_servers_and_UI_toolkits.svg")中扮演相當重要的角色。上面同時也有出現的Binder則是在[Android](../Page/Android.md "wikilink")上的等價軟體。\]\]

D-Bus有三個[抽象層](https://zh.wikipedia.org/wiki/抽象層 "wikilink")：\[8\]

  - **`libdbus`** —— 讓兩個應用程式可以互相連結並交換訊息的函式庫
  - **`dbus-daemon`** —— 訊息匯流排的可執行檔，建基於`libdbus`，可連結到多個應用程式。這個守護行程可以將訊息按特定路徑轉送給零個或更多個應用程式，從而實作[发布/订阅模式](https://zh.wikipedia.org/wiki/发布/订阅 "wikilink")。
  - 基於特定應用程式框架的封裝函式庫

接收到訊息的D-Bus連線會被轉送到一個特定的[物件](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")，而非行程。因此，客戶端只知道它們是與物件互動，但並不知道另一側是否真的有物件。

D-Bus為每個物件定義了一個名稱，其看起來像是POSIX檔案系統路徑，但實際上並不是，例如`/org/kde/kspread/sheets/3/cells/4/5`。D-Bus物件的名稱通常會使用[命名空间](../Page/命名空间.md "wikilink")以協助獨立開發程式碼模組\[9\]。命名空間一般會以開發者的保留[域名](../Page/域名.md "wikilink")組件作為前綴（例如`/org/kde`）。

## 採用

[KDE](../Page/KDE.md "wikilink")第二版與第三版使用的系統对D-Bus有深刻影响，后者在[KDE 4中取代了前者](https://zh.wikipedia.org/wiki/KDE_4 "wikilink")。D-Bus的實作支援大多數的[POSIX作業系統](https://zh.wikipedia.org/wiki/POSIX "wikilink")，也有一個[Windows的移植](https://zh.wikipedia.org/wiki/Windows "wikilink")。它也在[Qt](../Page/Qt.md "wikilink") 4、[GNOME](../Page/GNOME.md "wikilink")及[Xfce](../Page/Xfce.md "wikilink")中使用。在GNOME中，它已逐漸取代了早期的機制。

D-Bus最初用于桌面環境，后来使用範圍逐漸扩展，包含的系統服務越來越多。例如[NetworkManager](../Page/NetworkManager.md "wikilink")網路守護行程、BlueZ藍牙堆疊及[PulseAudio](../Page/PulseAudio.md "wikilink")音訊伺服器都使用D-Bus來提供其部份或全部的服務，[systemd也正促使傳統的系統守護行程](https://zh.wikipedia.org/wiki/systemd "wikilink")（如logind）轉換到D-Bus服務。

它也用于[AllJoyn](../Page/AllJoyn.md "wikilink")協定在家庭自動化中的，為AllJoyn加入了探索、工作階段管理、安全、標頭壓縮、嵌入式裝置支援\[10\]。

## 實作

  - libdbus
    雖然已經有多個D-Bus的實作，但其中使用最廣泛的參考實作是libdbus，開發者就是設計規範的freedesktop.org專案。不过libdbus是一個低階的實作，並不會直接被應用程式開發者所使用，但是可作為其他D-Bus實作（像是包含在桌面環境的標準函式庫中或是在[编程语言](../Page/编程语言.md "wikilink")綁紮中的實作）的參考指南。freedesktop.org專案自身建議應用程式的作者「使用較高階的綁紮或是實作」來替代\[11\]。
    因為libdbus是最常被使用的D-Bus實作，術語"D-Bus"與"libdbus"經常互換使用，導致了混亂。

<!-- end list -->

  - GDBus
    GDBus\[12\]是一個基於包含在[GLib](../Page/GLib.md "wikilink")中的的D-Bus實作，其致力於讓[GTK+與](https://zh.wikipedia.org/wiki/GTK+ "wikilink")[GNOME](../Page/GNOME.md "wikilink")使用。GDBus並不是libdbus的封裝，而是一個完整且獨立的D-Bus規範與協定的重新實作\[13\]。

<!-- end list -->

  - QtDBus
    QtDBus\[14\]是一個自4.2版開始，包含於[Qt](../Page/Qt.md "wikilink")函式庫的D-Bus實作。這個組件也被[KDE](../Page/KDE.md "wikilink")的應用程式、函式庫及組件用於存取在系統中所提供的D-Bus服務。

<!-- end list -->

  - sd-bus
    2013年時，[systemd專案重寫了libdbus](https://zh.wikipedia.org/wiki/systemd "wikilink")，並努力簡化程式碼\[15\]，它也使得D-Bus的整體效能有所提升。在先前的測試中，[BMW](../Page/BMW.md "wikilink")發現systemd的D-Bus函式庫效能增長了360%\[16\]。 而到了221版本的[systemd](https://zh.wikipedia.org/wiki/systemd "wikilink")，sd-bus的[应用程序接口](../Page/应用程序接口.md "wikilink")（）已被宣告為穩定\[17\]

<!-- end list -->

  - kdbus
    另外還有一個積極開發中的專案，稱為*kdbus*，其致力於重新實作D-Bus為核心中介的點對點[行程間通訊](../Page/行程間通訊.md "wikilink")機制。除了效能的提升，kdbus也受益於已經存在的[Linux内核](../Page/Linux内核.md "wikilink")特性，像是命名空間、審核機制\[18\]\[19\]、核心傳遞的安全特性、終止競爭條件等，並讓D-Bus可以在開機與關機時使用（此時需要systemd）\[20\]。但kdbus在Linux核心的特性中造成了不尋常的爭議\[21\]，是以都尚未被合併\[22\]。

<!-- end list -->

  - 語言綁紮
    已經有多個程式語言的D-Bus[綁紮](../Page/綁紮.md "wikilink")被開發出來\[23\]，像是 [Java](../Page/Java.md "wikilink")、[C♯](../Page/C♯.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")以及[Python](../Page/Python.md "wikilink")等的綁紮均已存在。

## 參見

  - [桌面應用的Linux](https://zh.wikipedia.org/wiki/Linux#个人计算机 "wikilink")
  - [通用语言架构](../Page/通用语言架构.md "wikilink")
  - [CORBA](../Page/CORBA.md "wikilink")
  - [组件对象模型](../Page/组件对象模型.md "wikilink")
  - [Distributed COM](https://zh.wikipedia.org/wiki/Distributed_COM "wikilink")
  - [Java远程方法调用](https://zh.wikipedia.org/wiki/Java远程方法调用 "wikilink")
  - [遠程過程調用](../Page/遠程過程調用.md "wikilink")
  - [XPCOM](../Page/XPCOM.md "wikilink")

## 參考資料

## 外部連結

  - [D-Bus](http://www.freedesktop.org/Software/dbus)在Freedesktop.org上的首頁
  - [D-Bus的簡介](http://www.freedesktop.org/wiki/IntroductionToDBus)在Freedesktop.org的wiki上

{{-}}

[Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink") [Category:C++函式庫](https://zh.wikipedia.org/wiki/Category:C++函式庫 "wikilink") [Category:自由網路軟體](https://zh.wikipedia.org/wiki/Category:自由網路軟體 "wikilink") [Category:GNOME](https://zh.wikipedia.org/wiki/Category:GNOME "wikilink") [Category:进程间通信](https://zh.wikipedia.org/wiki/Category:进程间通信 "wikilink") [Category:遠端程序呼叫](https://zh.wikipedia.org/wiki/Category:遠端程序呼叫 "wikilink")

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

12.
13.

14.
15.

16.

17.

18.

19.

20.

21.

22.

23.