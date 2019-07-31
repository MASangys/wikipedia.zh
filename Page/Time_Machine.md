**「時光機」**是[蘋果公司就著](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[macOS操作系統而推出用作備份的工具程式](https://zh.wikipedia.org/wiki/macOS "wikilink")，此軟件於2006年8月7日在[蘋果電腦全球研發者大會](https://zh.wikipedia.org/wiki/WWDC "wikilink")（WWDC）中首次公開，並內建於 [Mac OS X v10.5](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.5 "wikilink")「Leopard」[作業系統中](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，此設計跟蘋果公司出品的網絡儲存裝置[AirPort 時光囊](https://zh.wikipedia.org/wiki/AirPort_時光囊 "wikilink")、內置無線[Wi-Fi網絡的](https://zh.wikipedia.org/wiki/Wi-fi "wikilink")[硬碟](https://zh.wikipedia.org/wiki/硬碟 "wikilink")、內置及外置的設備配搭使用。在2017年12月推出的macOS 10.13.2 High Sierra中，簡體中文介面的時光機被翻譯為「时间机器」，繁體中文系統直到2018年6月推出的macOS 10.14 Mojave中才被翻譯為「時光機」。

## 概述

「時光機」會每天自動把使用者系統上文件創建備份（也包括作業系統本身），能讓使用者回溯任何被變更或刪除的檔案到指定的日期以供日後恢復\[1\]。它容許用戶從恢復硬碟，或是透過操作系統的DVD光碟來恢復整個電腦系統。它適用於[郵件](../Page/郵件_\(Apple\).md "wikilink")、[iWork](https://zh.wikipedia.org/wiki/iWork "wikilink")、[iLife及其餘幾個兼容程式](https://zh.wikipedia.org/wiki/iLife "wikilink")，讓它可以在無需離開應用程序下對個別或多個對象進行恢復（例如電郵、相片、聯絡資料和日曆）。根據蘋果公司的支援聲明：

> 「時光機是個備份工具而非存檔工具，它並非打算用作離線的存儲設備。時光機在你的硬碟上取得最新狀態的數據，例如螢幕快照，跟你最近的那張相比，它們會把其優先次序逐漸降低\[2\]。」

這項功能並不僅限於使用在檔案上，同時也能應用於第三開發商的軟體中。

在蘋果的示範中，「時光機」 能夠修復 [iPhoto](https://zh.wikipedia.org/wiki/iPhoto "wikilink") 中的相片，以及[通訊錄中的連絡人資料](https://zh.wikipedia.org/wiki/通訊錄_\(Mac_OS_X\) "wikilink")。「時光機」 除了能夠從 [訪達](https://zh.wikipedia.org/wiki/訪達 "wikilink") 中修復檔案之外，也能在應用程式中直接進行回溯。

「時光機」 的使用者界面應用了內建於 Leopard 中的 [Core Animation](https://zh.wikipedia.org/wiki/Core_Animation "wikilink") [API](https://zh.wikipedia.org/wiki/應用程序介面 "wikilink")，創造出象徵[時間旅行的使用者體驗界面](https://zh.wikipedia.org/wiki/時間旅行 "wikilink")。當從 [Dock](https://zh.wikipedia.org/wiki/Dock "wikilink") 中啟動 「時光機」 時，正在使用中的視窗（前景視窗）會從使用者的桌面浮起，而背景將會出現類似太空星際一般的畫面來象徵時空，而使用中視窗的更動記錄都會以立體的效果逐層「堆疊」在現用視窗後方，表現出穿越「時光隧道」的感覺。使用者可以翻閱這些過去的視窗，找出曾被刪除的檔案，並進行回溯。此外也能透過 [Spotlight](https://zh.wikipedia.org/wiki/Spotlight "wikilink") 技術來搜尋過去的檔案。

使用者可以變更 「時光機」 備份的相關設定，包括：

  - 變更 「時光機」 儲存備份檔案的磁碟（除了本機磁碟之外，也可以儲存於連接 [AirPort Extreme](https://zh.wikipedia.org/wiki/AirPort_Extreme "wikilink") 的遠端電腦或磁碟上）
  - 設定不需自動備份的檔案
  - 2008年1月15日的Macworld上，苹果公司推出了[「時光囊」](https://zh.wikipedia.org/wiki/時光囊 "wikilink")，专门用作时光机的备份。

## 系統需求

「時光機」 需要一個獨立的硬碟分割區（不能夠是開機磁碟及[FAT](../Page/FAT.md "wikilink")32格式）來儲存備份檔案。該硬碟可直接連結至電腦上備份。多台電腦也可使用無線的方式將備份儲存於同一個磁碟上（在空間許可的情況下）。此外，備份檔案也能夠儲存在遠端的 [Mac OS X Server](https://zh.wikipedia.org/wiki/Mac_OS_X_Server "wikilink")。

目前尚無法確認 「時光機」 是否僅是一個簡單的備份工具程式，或是應用現代檔案系統中的日誌（journaling）或快照（snapshot）功能設計出的檔案系統層級[版本控制](../Page/版本控制.md "wikilink")結構。蘋果的網站目前尚未提及是否釋出 「時光機」 的[應用程序介面](https://zh.wikipedia.org/wiki/應用程序介面 "wikilink")（API），以讓第三方軟體開發商能加以利用。

## 其他作業系統的相似功能

微軟在 [Windows Server 2003](../Page/Windows_Server_2003.md "wikilink") 和 [Windows Vista](../Page/Windows_Vista.md "wikilink") 中加入了名為「[Previous Versions](../Page/磁碟區陰影複製服務.md "wikilink")」（中文全名為「磁碟區陰影複製服務」）的檔案備份功能。此外，在 [Windows Home Server](../Page/Windows_Home_Server.md "wikilink") 中也將會提供讓多台家用電腦能分享檔案、自動備份，以及進行遠端操作的功能。在舊版的 [Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink") 和 [Windows XP](../Page/Windows_XP.md "wikilink") 系統中，也有第三廠商推出類似的檔案備份軟體\[3\]。

## 参考文献

## 外部連結

  - [正體中文官方網頁](http://www.apple.com/tw/macosx/features/timemachine.html)（Apple 台灣）

  - [「時光機」 簡體中文官方網頁](http://www.apple.com.cn/macosx/features/timemachine.html)（Apple 中國）

  - [「時光機」 香港官方網頁](https://web.archive.org/web/20080328142545/http://www.appleclub.com.hk/macosx/features/timemachine.html)

  - [英文官方網頁](http://www.apple.com/macosx/features/timemachine.html)（apple.com）

  - [「時光機」 展示影片](https://web.archive.org/web/20070227063943/http://movies.apple.com/movies/us/apple/wwdc2006/apple-time_machine_672x416.mov)（apple.com）

[Category:MacOS軟體](https://zh.wikipedia.org/wiki/Category:MacOS軟體 "wikilink") [Category:版本控制系统](https://zh.wikipedia.org/wiki/Category:版本控制系统 "wikilink") [Category:蘋果公司軟體](https://zh.wikipedia.org/wiki/Category:蘋果公司軟體 "wikilink")

1.
2.   Communities|website=discussions.apple.com|language=en|access-date=2017-10-21}}
3.  [Versomatic - filesystem-level automatic backup](http://www.acertant.com/web/versomatic/default.htm)