**GNU
Gatekeeper**（簡稱GnuGK）是一個基於[OpenH323來發展的](https://zh.wikipedia.org/wiki/OpenH323 "wikilink")[開放源碼](https://zh.wikipedia.org/wiki/開放源碼 "wikilink")[H.323
gatekeeper計劃](https://zh.wikipedia.org/wiki/H.323_gatekeeper "wikilink")。所謂的H.323
gatekeeper，定義於[H.323標準中](../Page/H.323.md "wikilink")，負責對H.323的系統提供位址轉換、通話控制、[路由決定](../Page/路由.md "wikilink")、[認證計費等服務](https://zh.wikipedia.org/wiki/認證 "wikilink")。

## 功能特色

GnuGK實作許多豐富實用的特性，包括

  - 可跨平台，目前已移植到[Linux](../Page/Linux.md "wikilink")、[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Mac
    OS
    X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[Solaris](../Page/Solaris.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[OpenBSD以及](../Page/OpenBSD.md "wikilink")[NetBSD](../Page/NetBSD.md "wikilink")。
  - 可自訂策略的路由機制。
  - 來源以及目標號碼的改寫。
  - 完整的H.323代理功能，包含[RTP](https://zh.wikipedia.org/wiki/RTP "wikilink")／[RTCP媒體和](https://zh.wikipedia.org/wiki/RTCP "wikilink")[T.120資料通道](https://zh.wikipedia.org/wiki/T.120 "wikilink")。
  - 可[穿越NAT的](https://zh.wikipedia.org/wiki/NAT穿越 "wikilink")[Citron's
    NAT技術](https://zh.wikipedia.org/wiki/Citron's_NAT技術 "wikilink")。
  - 以鄰近（neighbor）、父子（parent/child）和替代（alternate）GK等方式達到的叢集支援。
  - 可透過[TCP狀態埠進行監看與控制](https://zh.wikipedia.org/wiki/TCP "wikilink")。
  - 部分的[H.235安全支援](https://zh.wikipedia.org/wiki/H.235 "wikilink")。
  - 可以[SQL資料庫](../Page/SQL.md "wikilink")、[radius或外部程式支援通話認識與計費](https://zh.wikipedia.org/wiki/radius "wikilink")。

## 授權方式

以[GNU通用公共許可證的方式](https://zh.wikipedia.org/wiki/GNU_General_Public_License "wikilink")[授權](https://zh.wikipedia.org/wiki/授權 "wikilink")。此外，作者明確的允許將執行檔與OpenH323和[OpenSSL](../Page/OpenSSL.md "wikilink")
[函式庫做連結](../Page/函式庫.md "wikilink")。這是必要的，因為GNU GPL與這些函式庫的授權並不相容。

## 發展歷史

最初的版本是由Xianping Chen、Joe Metzger和Rajat Todi所開發，做為實驗用途。在1999年初，本計劃的主持人Jan
Willamowius找到這支程式，並說服原作者以GNU
GPL的方式釋出[原始碼](https://zh.wikipedia.org/wiki/原始碼 "wikilink")。
\[1\]

隨後，程式被移植到更新版的OpenH323，並被命名為**OpenH323
Gatekeeper**，簡寫為**OpenH323GK**。在[德國的](https://zh.wikipedia.org/wiki/德國 "wikilink")公司隨後加入，提供了[LDAP子系統與交疊傳送](https://zh.wikipedia.org/wiki/LDAP "wikilink")（overlapped
sending）的支援。到了2000年，大約已有十餘人加入，提供程式碼或協助測試。功能已相當堪用。不過，相較於另一個類似計劃[OpenGatekeeper](https://zh.wikipedia.org/wiki/OpenGatekeeper "wikilink")，功能上仍遜色許多。

在2001年，當時任職[台灣](https://zh.wikipedia.org/wiki/台灣 "wikilink")[呈祺資訊公司](https://zh.wikipedia.org/wiki/呈祺資訊 "wikilink")[技術長的](https://zh.wikipedia.org/wiki/技術長 "wikilink")[黃志偉和他的團隊開始加入](../Page/黃志偉.md "wikilink")，修改並使用此計劃於其[VoIP服務中](../Page/VoIP.md "wikilink")。增強了系統的穩定性，大幅改善效率，並加入許多新的特性，例如多緒安全的[執行時期表格](../Page/執行期.md "wikilink")，鄰近和父子GK，以及認證模組。他的加入引導了此計劃的重大變革。2001年[九月](https://zh.wikipedia.org/wiki/九月 "wikilink")，OpenH323GK
1.0正式釋出，為此計劃的一大里程埤。

到了2002年底，GnuGK 2.0正式發佈。它包含重新設計的路由模式（routed
mode）架構，並能同時處理上千個通話。此外，還有完整的H.323
proxy和Citron's NAT技術，為H.323穿越NAT的問題提供了完善的解決方案。這些特色使得GnuGK成為具有電信等級的H.323
gatekeeper，能真正應用於商業運轉。

2005年初發佈了2.2版，包含了多緒處理的RAS子系統，可客製化的路由策略，以及更有彈性的鄰近系統。小幅度的問題解決與改善仍持續至今。

## 更名

隨著功能日益完善，計劃日趨成熟也更受歡迎。然而，愈來愈多的人搞不清楚此計劃的真正名稱。因為當時至少有三個其它同樣根基於OpenH323的開放源碼gatekeeper計劃，而且名稱都非常的類似。\[2\]。根據計劃主持人Jan
Willamowius的說法，與其它計劃名稱相同並不是我們的錯，我們是第一個採用這名稱的開放源碼計劃。然而，經過主要開發者的討論後，決定將名稱改為**GNU
Gatekeeper**，簡稱**GnuGK**。因為在所有類似計劃中，這是唯一一個以GNU
GPL授權的。不過請不要誤會，它並非[GNU計劃的一部分](../Page/GNU.md "wikilink")。

## 相容性

在官方網站維護了一份與其它H.323軟體和產品的[互通性測試結果清單](http://www.gnugk.org/interoperability.html)。由於GnuGK可免費並自由的使用，日漸受到歡迎，新的產品通常會宣稱已通過與GnuGK的相容性測試。

## 主要貢獻者

現代的系統架構和主要特色是由[黃志偉](../Page/黃志偉.md "wikilink")（cwhuang）所設計，包括多緒架構、H.323
proxy以及NAT穿越技術等。\[3\]

Michal Zygmuntowicz貢獻了radius支援和一些其它改進。

Jan Willamowius是目前計劃的協調人與維護者。

## 相關連結

  - [Voice Over IP](../Page/VoIP.md "wikilink")
  - [網路地址轉換](https://zh.wikipedia.org/wiki/網路地址轉換 "wikilink")

## 參考來源

<references/>

## 外部連結

  - [官方網站](http://www.gnugk.org/)
  - [德文網站](http://www.gnugk.de/)
  - [GnuGK技術文件](https://web.archive.org/web/20090312083657/http://www.cwhuang.idv.tw/2009/02/gnugk-technical-doc)
  - [GkGui](http://www.gnugk.org/h323gui.html)利用[Java所開發的](../Page/Java.md "wikilink")[圖形化使用介面](https://zh.wikipedia.org/wiki/GUI "wikilink")
  - [GnuGK ACD](http://www.gnugk.org/h323-acd.html)
    GnuGK的自動通話分配器（[ACD](https://zh.wikipedia.org/wiki/ACD "wikilink")）
  - 2003年，[自由軟體鑄造場](../Page/自由軟體鑄造場.md "wikilink")[GNU
    GateKeeper的開放VoIP技術經驗](http://www.openfoundry.org/component/option,com_content/id,631/task,view/)

[Category:VoIP軟體](https://zh.wikipedia.org/wiki/Category:VoIP軟體 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:SourceForge專案](https://zh.wikipedia.org/wiki/Category:SourceForge專案 "wikilink")
[Category:视频通讯](https://zh.wikipedia.org/wiki/Category:视频通讯 "wikilink")

1.  [ICOS 2003論文](http://www.cwhuang.idv.tw/download/icos2003-paper.html)

2.  [2003開放源碼競賽結案報告書](http://www.cwhuang.idv.tw/download/contest2003-report.pdf)

3.