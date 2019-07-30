**Cheat Engine**，一般簡稱CE，是一個[開放源代碼的軟體](https://zh.wikipedia.org/wiki/開放源代碼 "wikilink")，作者為Eric ("Dark Byte")，功能包括：記憶體掃描、[十六進制編輯器](https://zh.wikipedia.org/wiki/十六進制編輯器 "wikilink")、[除錯工具](https://zh.wikipedia.org/wiki/除錯工具 "wikilink")，供[Windows和](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Mac作業系統運行](https://zh.wikipedia.org/wiki/Mac "wikilink")。\[1\]Cheat Engine最常在電腦遊戲中當做[遊戲外掛](https://zh.wikipedia.org/wiki/遊戲外掛 "wikilink")，有時會更新以避免被其他軟體檢測到。這個程式類似於[L. Spiro的 "*Memory Hacking Software*"](http://memoryhacking.com/)、TSearch、以及[ArtMoney](http://www.artmoney.ru/)。透過Cheat Engine，使用者可以查找與修改電腦的記憶體。

## 特色

Cheat Engine可以查詢與修改程式經過[反汇编後的記憶體](../Page/反汇编器.md "wikilink")。透過修改記憶體，使用者可以在遊戲裡獲得一些好處，例如無限的生命值、時間或彈藥。它還包含一些[Direct3D](../Page/Direct3D.md "wikilink")的工具讓你可以透視牆壁，在一些高級選項裡還可以替你移動滑鼠，這功能可以用來製作aimbot。不過Cheat Engine主要使用在單人遊戲，在多人遊戲方面並不鼓勵。\[2\]

Cheat Engine可以將代碼注入其他進程，因此大多數的防毒軟體會將它誤認為病毒。有一些版本可以避免這個問題，但許多功能會因此無法使用。產生這個問題的主要原因是因為Cheat Engine使用了一些與[特洛伊木馬](../Page/特洛伊木馬.md "wikilink")相同的rootkits以取得部分系統的權限，除非停用防毒軟體的啟發式掃描，否則將被視為可疑的程序。新版的Cheat Engine已漸漸不易被防毒軟體所阻擋，像是[代碼注入](../Page/代碼注入.md "wikilink")的一些功能也能運作無誤。

6.1版的Cheat Engine可以製作專屬的遊戲外掛程式——Trainer，並可輸出成執行檔。不過透過CEtrainer製成的trainer一般來說大小都很大。一些製作Trainer的團體會將成品做為"最終"版本發布在網路上。\[3\]因為用Cheat Engine做Trainer的容易性，一些熱門網站甚至以CE的Trainer為討論主題。\[4\]不過CEtrainer自6.1版以來就沒又再更新，而是強調用[Lua來製作trainer](https://zh.wikipedia.org/wiki/Lua_\(programming_language\) "wikilink")。\[5\]

## 實現方式

Cheat Engine有兩個分支，Cheat Engine [Delphi](https://zh.wikipedia.org/wiki/Borland_Delphi "wikilink") 和 Cheat Engine [Lazarus](https://zh.wikipedia.org/wiki/Lazarus_\(software\) "wikilink")。Cheat Engine Delphi主要提供給[32位元](../Page/32位元.md "wikilink")的[Windows XP](../Page/Windows_XP.md "wikilink")。Cheat Engine Lazarus設計給32與64位元的[Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")。除了內核模塊以外，Cheat Engine以[Object Pascal所寫成](../Page/Object_Pascal.md "wikilink")。

在Cheat Engine裡，`dbk32.dll`這個[動態連結資料庫負責加載和初始化Cheat](https://zh.wikipedia.org/wiki/動態連結資料庫 "wikilink") Engine的裝置驅動程序以及調用替代Windows內核功能。因為Lazarus裡關於[例外處理有一個編程的錯誤](https://zh.wikipedia.org/wiki/例外處理 "wikilink")，Cheat Engine Lazarus取消使用`dbk32.dll`，並且將驅動程序合併在主程式裡。

內核模塊可以用來設置硬件斷點，並且可避開在Ring 3當中hook過的API，一些Ring 1的API也可避開。該模塊被編譯在Windows裡的[驅動程序開發工具包](https://zh.wikipedia.org/wiki/驅動程序開發工具包 "wikilink")，以C語言寫成。\[6\]

Cheat Engine也提供插件的架構給不想分享源代碼的人，不過Cheat Engine引入插件的主要目的是成為一個通用共享的作弊工具，所以它們更常用於遊戲中的特定功能。這些插件可以自Cheat Engine的官網與相關網站取得。\[7\]

因為DBVM此一虛擬機允許自使用者模式訪問內核空間，所以在Windows Vista與後期版本的Windows x64裡使用DBVM之後，Cheat Engine Lazarus也可以載入它的無號64位元裝置驅動程序。DBVM被用於分配非分頁內存、內核模式、手動執行可執行的影像、在\[<http://msdn.microsoft.com/en-us/library/windows/hardware/ff544113(v=vs.85>).aspx DriverEntry\]裡創造系統線程。然而，因為DriverEntry裡的參數沒有實際效果，所以驅動程序必須特別為DBVM再做修改。

## 表單

"作弊表單"是Cheat Engine的一種檔案格式，它儲存了位址、包括Lua在內的腳本、以及代碼位置，通常以`.CT`為副檔名。Cheat Engine的使用者可以透過它與其他人分享他們的位址和代碼位置。\[8\]

作弊表單使用簡易，只需透過Cheat Engine打開表單，然後啟用/勾選已經存檔好的作弊檔案即可。由於保存與分享的容易，網路上一個龐大的Cheat Engine Forums已經形成。許多熱門的作弊表單會放在Cheat Engine官網上的專屬區域裡。\[9\]除了簡單的內存位址之外，作弊表單可以包含Lua腳本語言來擴充更多功能。所有Cheat Engine的行為都可以腳本化，甚至可以訂製對話框以便跟腳本互動。\[10\]

## 參考

## 外部連結

  - [官方網站](https://cheatengine.org/)
  - [官方社群網站](https://forum.cheatengine.org/) 又稱Cheat Engine Forums. (CEF)
  - [官方維基](https://wiki.cheatengine.org/index.php?title=Main_Page)
  - [源代码](https://github.com/cheat-engine/cheat-engine)

[Category:电子游戏作弊](https://zh.wikipedia.org/wiki/Category:电子游戏作弊 "wikilink") [Category:Windows游戏](https://zh.wikipedia.org/wiki/Category:Windows游戏 "wikilink") [Category:免费软件](https://zh.wikipedia.org/wiki/Category:免费软件 "wikilink")

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