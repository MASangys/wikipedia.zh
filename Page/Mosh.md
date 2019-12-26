**Mosh**（）是一套從用戶端連到伺服器端的軟體。類似於[Secure Shell](../Page/Secure_Shell.md "wikilink")\[1\]，但還針對對行動環境的特性調整。

## 特性

  - Mosh不綁定使用者端的IP address，這使得使用者從行動網路（像是[3G](../Page/3G.md "wikilink")、[4G](../Page/4G.md "wikilink")）與[WiFi之間切換時](https://zh.wikipedia.org/wiki/WiFi "wikilink")，不會造成連線中斷。\[2\]
  - Mosh保持連線開啟，當此用者斷線時，伺服器端只會認定為暫時離線（）讓使用者可以稍候連回來。相對的，SSH因為透過TCP，在使用者斷線時會造成連線中斷。\[3\]
  - Mosh會試著在本地端馬上顯示使用者所輸入的按鍵，這使得使用者會感覺到更少的延遲。\[4\]

Mosh主要的缺點在於需要額外的設定，以及缺乏某些SSH能提供的功能（像是connection forwarding）。

## 設計

相較於[SSH](https://zh.wikipedia.org/wiki/SSH "wikilink")，Mosh運作於不同層。SSH透過[TCP雙向傳輸資料](https://zh.wikipedia.org/wiki/TCP "wikilink")，Mosh則是在伺服器端模擬終端機，得知終端機上的內容後，再依據用戶端的網路速度計算要更新到用戶端的內容\[5\]。這使得Mosh在速度不快的網路表現的很好。

## 支援系統

Mosh支援大多數的[Linux](../Page/Linux.md "wikilink")套件、[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[NetBSD](../Page/NetBSD.md "wikilink")、[OpenBSD](../Page/OpenBSD.md "wikilink")、[Android](../Page/Android.md "wikilink")、[Solaris](../Page/Solaris.md "wikilink")、[Cygwin](../Page/Cygwin.md "wikilink")，以及[Chrome App](https://zh.wikipedia.org/wiki/Chrome_App "wikilink")。

## 效能

### 漫遊

Mosh使用了State-Synchronization Protocol（SSP）\[6\]，這使得Mosh支援單封包漫遊\[7\]。當用戶端切換IP位置時，不需要額外的封包進行認證，而用戶端也不需要知道自己已經切換位置了（這包括了用戶端可能使用NAT，而NAT本身切換IP位置）\[8\]。

### 封包遺失

在Mosh作者的研究中，作者測試在29%封包遺失率的情況下，Mosh所使用的SSP比SSH有效降低大約五十倍的平均回應時間（從16.8秒降為0.33秒）\[9\]。另外由[史丹佛大學](../Page/史丹佛大學.md "wikilink")學生的研究則顯示大約30倍，從5.9秒降為0.19秒\[10\]。

## 相關連結

  - [tmux](https://zh.wikipedia.org/wiki/tmux "wikilink")
  - [Secure Shell](../Page/Secure_Shell.md "wikilink")
  - [命令行界面](../Page/命令行界面.md "wikilink")

## 註解

## 外部連結

  - [Mosh: the mobile shell](https://mosh.mit.edu)，官方網站。

[Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink") [Category:Unix软件](https://zh.wikipedia.org/wiki/Category:Unix软件 "wikilink")

1.
2.
3.  }}
4.
5.  [Mosh: An Interactive Remote Shell for Mobile Clients](https://www.usenix.org/conference/atc12/technical-sessions/presentation/winstein)
6.  [MIT unveils a new Internet protocol for mobile clients](https://www.helpnetsecurity.com/2012/07/09/mit-unveils-a-new-internet-protocol-for-mobile-clients/)
7.  [Mosh: An Interactive Remote Shell for Mobile Clients](https://mosh.mit.edu/mosh-paper-draft.pdf)
8.
9.
10. [CS244 '13: MOSH](https://reproducingnetworkresearch.wordpress.com/2013/03/14/mosh-cs244-13/)