**Windows Home
Server**是[微軟公司推出的一套](https://zh.wikipedia.org/wiki/微軟 "wikilink")[家用伺服器](../Page/家用伺服器.md "wikilink")[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。由時任微軟公司[董事長的](../Page/董事長.md "wikilink")[比爾·蓋茨在](https://zh.wikipedia.org/wiki/比爾·蓋茨 "wikilink")2007年1月7日的[Consumer
Electronics
Show中發表的這個系統](https://zh.wikipedia.org/wiki/国际消费电子展 "wikilink")，將會成為為家中多部電腦進行[檔案分享](../Page/檔案分享.md "wikilink")、自動[備份](https://zh.wikipedia.org/wiki/備份 "wikilink")、-{zh-hans:远程;
zh-hant:遙距;}-存取等等的解決方案。此系統是建基於[Windows
Server](../Page/Windows_Server.md "wikilink") 2003 SP2。

## 特點

  - 集中備份：通過使用[Single Instance
    Store技術允許](https://zh.wikipedia.org/wiki/Single_Instance_Store "wikilink")[備份多達](https://zh.wikipedia.org/wiki/備份 "wikilink")10台PC，可以防止對同一檔案的多份拷貝，即使該檔案存放在多台PC上。
  - 電腦健康監察：可以集中跟蹤網路中所有[個人電腦的健康狀況](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")，包括[防毒軟體和](https://zh.wikipedia.org/wiki/防毒軟體 "wikilink")[防火牆狀態](https://zh.wikipedia.org/wiki/防火牆 "wikilink")。
  - [檔案傳輸](https://zh.wikipedia.org/wiki/檔案傳輸 "wikilink") -
    通過[network-attached
    storage](https://zh.wikipedia.org/wiki/network-attached_storage "wikilink")（NAS）提供對常用檔案比如[MP3和](../Page/MP3.md "wikilink")[影片的](https://zh.wikipedia.org/wiki/影片 "wikilink")[網路分享](https://zh.wikipedia.org/wiki/網路分享 "wikilink")。
  - 印表機分享：允許一台中央的[印表伺服器處理所有用戶的列印任務](https://zh.wikipedia.org/wiki/印表伺服器 "wikilink")。
  - 以前的版本 - 利用[Volume Shadow Copy
    Service可以指定時間快照](https://zh.wikipedia.org/wiki/Volume_Shadow_Copy_Service "wikilink")，使檔案的舊版本可以被恢復。
  - 無頭操作 - 沒有顯示器和鍵盤連接到設備本身，
  - [遠端管理](https://zh.wikipedia.org/wiki/遠端管理 "wikilink") -
    提供一個圖形介面的客戶端程式，可以自遠端登入進行管理。也可以用[遠端桌面連接連接上伺服器](https://zh.wikipedia.org/wiki/Terminal_Services "wikilink")。
  - 遠端存取閘道 - 允許從家外訪問網路上的任何個人電腦。
  - [媒體串流](https://zh.wikipedia.org/wiki/媒體串流 "wikilink") -
    可以把多媒體資訊以串流格式傳輸到[Windows Media
    Player和](https://zh.wikipedia.org/wiki/Windows_Media_Player "wikilink")[Xbox
    360上](../Page/Xbox_360.md "wikilink")。
  - [資料冗餘](https://zh.wikipedia.org/wiki/資料冗餘 "wikilink") -
    通過把資料複製到多個硬碟上可以防止單硬碟損傷造成的資料丟失。
  - 可擴展存儲 -
    提供一個統一的單獨的易擴展的存儲空間，不再需要[磁碟機代號](https://zh.wikipedia.org/wiki/drive_letter_assignment "wikilink")。

## 操作介面

由於此作業系統是建基於[Windows Server 2003 Service Pack
2](https://zh.wikipedia.org/wiki/Windows_Server_2003#Windows_Server_2003_SP2 "wikilink")，進階設定的介面將會以較人性化的設計為基礎，達到不需較專業的伺服器管理者才能維護該系統。該進階設定的介面（稱呼為[Home
Server主控台](https://zh.wikipedia.org/wiki/Home_Server主控台 "wikilink")）能夠從任何相同家庭網路內的Windows個人電腦，使用網路瀏覽器來存取或變更設定值。此伺服器是設計成只需要一張乙太網路卡和另一台使用[Windows
XP或](../Page/Windows_XP.md "wikilink")[Windows
Vista的電腦](../Page/Windows_Vista.md "wikilink")，所以伺服器甚至不需要顯示卡或其他週邊設備就能操作。

## 技術

Windows Home Server的程式碼來自於Windows Server 2003 Service Pack 2.所以Windows
Home Server的技術幾乎跟Windows Server
2003一樣，但為了減低不必要的複雜性，某些地方被簡化了。它也有新的能力是Windows
Server 2003沒有的：

**Windows Home Server Drive Extender**是一個以檔案為基礎的replication
system，提供三種關鍵能力：

  - Multi-disk redundancy任何一個硬碟故障，資料都不會消失。
  - 一個獨立的目錄命名空間（沒有磁碟代號）

## Windows Home Server 2011

此版本已於2011年4月5日上市。\[1\]

这个版本主要集中了4个方面的改善：

1.  扩展的家庭网络外的流媒体处理能力；
2.  多PC备份和还原功能；
3.  简化的安装和用户体验
4.  一个针对开发人员和顾客的经过扩展的SDK（软件开发工具包）。

这个版本**只支持64位的版本**。硬件配置要求包括一个1.3GHz以上的64位处理器，2 GB内存和至少160
GB的硬盘空间，否則無法安裝Windows Home Server 2011。\[2\]

## 相容性

Windows Home Server的各項操作只需要在[Windows
XP與](../Page/Windows_XP.md "wikilink")[Windows
Vista的電腦上安裝軟體即可](../Page/Windows_Vista.md "wikilink")。它也能夠以Windows
share的模式使用於[Mac OS
X或是其他非Windows作業系統](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")。像是Mac
OSX Leopard的[Time
Machine](https://zh.wikipedia.org/wiki/Time_Machine_\(Apple_software\) "wikilink")，"We're
a great back-end store for Time Machine," Microsoft product manager Todd
Headrick told [Paul
Thurrott](https://zh.wikipedia.org/wiki/Paul_Thurrott "wikilink")。

## 價格

[HP將於](https://zh.wikipedia.org/wiki/Hewlett-Packard "wikilink")2007年第二季發表一種Home
Server的產品（現階段叫"HP MediaSmart
Server"）。以64位元的[AMD處理器](https://zh.wikipedia.org/wiki/AMD "wikilink")，標榜[AMD
Live\!品牌](https://zh.wikipedia.org/wiki/AMD_Live! "wikilink")，號稱可擴充到6
[terabytes的儲存空間](https://zh.wikipedia.org/wiki/Terabyte "wikilink")。有四個內部[HDD和四個](https://zh.wikipedia.org/wiki/Hard_disk "wikilink")[USB
2.0埠](https://zh.wikipedia.org/wiki/USB_2.0 "wikilink")。

## 參考資料

  -
  -
  -
  -
  -
  -
## 注釋

## 外部連結

  - [Demonstration of Windows Home
    Server](https://web.archive.org/web/20070206182450/http://www.on10.net/Blogs/jesse/windows-home-server-will-live-in-your-closet-simplify-your-life/)
    at Microsoft's on10.net
  - [Overview of Windows Home
    Server](http://channel9.msdn.com/Showpost.aspx?postid=270965) at
    Microsoft's Channel9.com.
  - [Product information
    page](http://h71036.www7.hp.com/hho/cache/447351-0-0-225-121.html)
    for the first Windows Home Server from HP
  - [Windows Home Server website](http://www.stopdigitalamnesia.com/)
  - [Blog](https://web.archive.org/web/20070125072946/http://www.kindel.com/blogs/charlie)
    of the general manager for Windows Home Server

[Category:Windows服务器](https://zh.wikipedia.org/wiki/Category:Windows服务器 "wikilink")

1.  [Microsoft 技術支援週期](http://support.microsoft.com/lifecycle/?p1=15820)
2.