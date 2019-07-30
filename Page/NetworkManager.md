在[電腦運算中](https://zh.wikipedia.org/wiki/電腦運算 "wikilink")，**NetworkManager**軟體工具的目標是降低在[Linux](../Page/Linux.md "wikilink")與其他[类Unix](../Page/类Unix系统.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")上的[计算机网络](../Page/计算机网络.md "wikilink")使用難度。它可以協助使用者在無線網路間漫遊時管理要使用的網路。

## 歷史

[紅帽公司](../Page/紅帽公司.md "wikilink")在2004年發起了NetworkManager專案，其目標是讓Linux使用者能夠更容易的處理現代的網路需求，特別是[無線網路](../Page/无线局域网.md "wikilink")。NetworkManager以一些取巧的方法來選取網路，嘗試在連線中斷或是使用者在不同的無線網路間漫遊時使用最佳的可用連線。相較“已知的”無線網路，它會使用[以太网](../Page/以太网.md "wikilink")進行連線，且會在同時有[SSID與從未連線過的無線網路間選擇有SSID的](https://zh.wikipedia.org/wiki/SSID "wikilink")。使用者會被提示該無線網路是使用[WEP或](../Page/有線等效加密.md "wikilink")[WPA](../Page/WPA.md "wikilink")做為金鑰加密。

NetworkManager專案是第一個在Linux桌面上廣泛使用[D-Bus](../Page/D-Bus.md "wikilink")與的組件。但自2009年6月起，NetworkManager已不再依賴於HAL。而自0.9.10 (2014年起)開始，NetworkManager也不再需要[D-Bus](../Page/D-Bus.md "wikilink")守護行程來執行根使用者操作\[1\]。

## 軟體架構

NetworkManager有兩個組成部份：

1.  NetworkManager[守护进程](../Page/守护进程.md "wikilink")，其為實際管理連線並回報網路狀態及變更的軟體
2.  多種不同外觀的[圖形前端](../Page/图形用户界面.md "wikilink")，包含了[GNOME Shell](../Page/GNOME_Shell.md "wikilink")、[GNOME Panel](https://zh.wikipedia.org/wiki/GNOME_Panel "wikilink")、[KDE Plasma Workspaces](https://zh.wikipedia.org/wiki/KDE_Plasma_Workspaces "wikilink")、[Cinnamon](../Page/Cinnamon.md "wikilink")等等。

這兩個組成部份的目的是讓開發者有合理的可移植性，而小工具在多種[桌面环境](../Page/桌面环境.md "wikilink")都可用，均實作了[Freedesktop.org](../Page/Freedesktop.org.md "wikilink")的系統匣協定\[2\]，包含了[GNOME](../Page/GNOME.md "wikilink")、[KDE Plasma Workspaces](https://zh.wikipedia.org/wiki/KDE_Plasma_Workspaces "wikilink")、[Enlightenment](../Page/Enlightenment.md "wikilink")及[Xfce](../Page/Xfce.md "wikilink")。作為透過D-Bus溝通的組件之一，應用程式可被編寫為“[連結感知](https://zh.wikipedia.org/wiki/数据链路 "wikilink")”，或是完全取代已提供的小工具。其中一個例子為KNetworkManager，其為一個KDE的NetworkManager前端，由[Novell](../Page/Novell.md "wikilink")公司開發給[SUSE Linux所使用](https://zh.wikipedia.org/wiki/SUSE_Linux "wikilink")。

### 圖形化前端及命令列介面

<File:Network> Manager 0.9.5.png <File:GNOME> Shell NM front-end 3.10.png

\*;NetworkManagement：[KDE SC 4的NetworkManager前端](https://zh.wikipedia.org/wiki/KDE_SC_4 "wikilink")，[plasma](https://zh.wikipedia.org/wiki/KDE_Plasma_Workspaces "wikilink")[控件](../Page/控件.md "wikilink")前端\[3\]。

\*;KNetworkManager：由Novell所開發的[KDE 3前端](https://zh.wikipedia.org/wiki/KDE_3 "wikilink")。

\*;nm-applet：[GNOME](../Page/GNOME.md "wikilink")的NetworkManager小工具。

\*;nmcli：內建的[命令行界面](../Page/命令行界面.md "wikilink")（於2010年加入）\[4\]

\*;nmtui：內建的；其並不完整。

\*;cnetworkmanager：NetworkManager的命令行界面\[5\]。

### 行動寬頻設定助手

Antti Kaijanmäki在2008年4月公佈了NetworkManager行動寬頻設定助手的開發\[6\]；它在NetworkManager 0.7.0版本中提供。也包括了行動寬頻提供者的資訊以方便設定。

## 參見

  - [Linux的桌面應用](https://zh.wikipedia.org/wiki/Linux#个人计算机 "wikilink")
  - [GNOME 鑰匙圈](../Page/GNOME_鑰匙圈.md "wikilink")
  - [wicked](https://web.archive.org/web/20150403062212/https://gitorious.org/wicked/)工具與函式庫提供了一個新的、實驗性的網路設定框架，以GPLv2授權，於2010-09-13建立

## 參考資料

## 外部連結

  - [NetworkManager首頁](https://wiki.gnome.org/Projects/NetworkManager)
  - [服務提供者資料庫](http://wiki.gnome.org/Projects/NetworkManager/MobileBroadband/ServiceProviders#Service_Provider_Database)
  - [NetworkManager 在 freedesktop.org 上的頁面](http://freedesktop.org/wiki/NetworkManager)
  - [在freebsd-gnome郵件列表上的NetworkManager狀態](http://lists.freebsd.org/pipermail/freebsd-gnome/2006-May/014371.html)
  - [由WaybackMachine所留存的在redhat.com上的原始NetworkManager頁面](https://web.archive.org/web/20041023180239/http://people.redhat.com/dcbw/NetworkManager/)
  - [介紹NetworkManager](https://web.archive.org/web/20060423174705/http://www.redhat.com/magazine/003jan05/features/networkmanager/)
  - [NetworkManager的首次發佈公告](https://mail.gnome.org/archives/gnome-announce-list/2004-October/msg00045.html)
  - [如何以NetworkManager使用WiFi介面](https://wiki.debian.org/WiFi/HowToUse)

[Category:自由網路軟體](https://zh.wikipedia.org/wiki/Category:自由網路軟體 "wikilink") [Category:红帽软件](https://zh.wikipedia.org/wiki/Category:红帽软件 "wikilink") [Category:Linux网络相关软件](https://zh.wikipedia.org/wiki/Category:Linux网络相关软件 "wikilink") [Category:使用D-Bus的应用](https://zh.wikipedia.org/wiki/Category:使用D-Bus的应用 "wikilink")

1.
2.
3.
4.
5.
6.