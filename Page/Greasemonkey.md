[greasemonkey.gif](https://zh.wikipedia.org/wiki/File:greasemonkey.gif "fig:greasemonkey.gif")

，簡稱，中文俗稱為“**油猴**”，是[Firefox](../Page/Firefox.md "wikilink")的一個附加元件。它讓使用者安裝一些[腳本使大部分HTML為主的](https://zh.wikipedia.org/wiki/腳本語言 "wikilink")[網頁](../Page/網頁.md "wikilink")於使用者端直接改變得更方便易用。

Greasemonkey可替網頁加入些新功能（例如在[亞馬遜書店嵌入商品比價功能](https://zh.wikipedia.org/wiki/亞馬遜書店 "wikilink")）、修正網頁錯誤、組合來自不同網頁的資料、或者數繁不及備載的其他功能。寫的好的Greasemonkey腳本甚至可讓其輸出與被修改的頁面整合得天衣無縫，像是原本網頁裡的一部分。

## 技術明細

大部分Greasemonkey使用者腳本都是自行撰寫，使用對某網站專用的[JavaScript](../Page/JavaScript.md "wikilink")代碼，透過[文檔對象模型](https://zh.wikipedia.org/wiki/文檔對象模型 "wikilink")（DOM）介面對網頁內容做操作。\[//userscripts.org/ userscripts.org\]維護了個Greasemonkey資料庫。該資料庫描述哪個[網址網頁對應到哪個腳本](https://zh.wikipedia.org/wiki/URL "wikilink")。（注意：[廢棄腳本倉庫](https://web.archive.org/web/20071026044928/http://dunck.us/collab/GreaseMonkeyUserScripts#head-5387d9022c1a64b4092b5c3ec546fccb2be4220a)**可能**還保留許多還沒合併到\[//userscripts.org/ 新倉庫\]的腳本）。但由于userscripts.org在2014年5月发生技术故障而无法访问，一些开发者另设网站以发布脚本，Greasemonkey官网也在其官方Wiki站点设立[列表](http://wiki.greasespot.net/User_Script_Hosting)以展示这些网站。

當使用者載入匹配的網頁，Greasemonkey便呼叫相關的腳本，而該腳本便根据脚本内容改变网页的内容。Greasemonkey腳本亦能透過非網域綁定的[XMLHTTP要求來查詢外部HTTP資源](https://zh.wikipedia.org/wiki/XMLHTTP "wikilink")。Greasemonkey亦遵循的格式，這讓當該特定使用者拜訪時Greasemonkey可自動偵測並提供安裝選項。除了JavaScript代碼，Greasemonkey腳本包括有限可選用後資料集。該後資料集描述了腳本名稱、腳本描述、網址用來區分同名腳本的位址空間、以及原本該腳本為哪些網址撰寫的列表。

  - [Greasefire扩展](https://addons.mozilla.org/firefox/addon/8352)：同Greasemonkey扩展配合使用，自动显示在userscripts.org的脚本库中是否存在可以在当前正在浏览网站上使用的脚本，如果存在Greasemonkey的猴头图标背景就会变为彩色的。右键点击猴头图标，最上面一行就是打开当前网站可用脚本列表的选项。
  - [Platypus](https://zh.wikipedia.org/wiki/Platypus "wikilink")（）附加元件可讓使用者可以編輯網頁（刪除或者移動某礙眼的部分）。Platypus隨後將結果存成常駐的Greasemonkey腳本。

## 典型的腳本

使用者群已發展大量的腳本，以下是其中的一些應用：

  - 調整[Gmail](../Page/Gmail.md "wikilink")讓[Google Reader內嵌](https://zh.wikipedia.org/wiki/Google_Reader "wikilink")，因而提供[RSS](../Page/RSS.md "wikilink")新聞訂閱的選項。
  - 當線上瀏覽某本書時同時顯示對手網站同本書價錢。
  - 去除來自某些站的廣告，包括彈出視窗與[Google文字廣告](https://zh.wikipedia.org/wiki/Adsense "wikilink")。
  - 改變網頁的版面，包括原本該網頁作者未考慮到的元素大小與瀏覽器畫面大小。
  - 自動完成表單。
  - 瀏覽某些佈告欄網站自動過濾特定的發帖人。
  - 增刪網頁上的某些功能。
  - 讓使用者從某些影片站點如[Google Video以及](https://zh.wikipedia.org/wiki/Google_Video "wikilink")[YouTube](../Page/YouTube.md "wikilink")存下[FLV或](https://zh.wikipedia.org/wiki/FLV "wikilink")[MP4](../Page/MP4.md "wikilink")影片檔案。
  - 從現行網頁找尋任何RSS新聞訂閱，並將它們顯示在可擴展、漂浮於網頁上的面板裡。
  - 將[百度貼吧輸入框裏的文字轉換為圖片發表](https://zh.wikipedia.org/wiki/百度貼吧 "wikilink")，或者在發貼時自动附加指定語句（俗稱“小尾巴”）。

## 隨使用者腳本引發之技術、操作、及道德上的問題

許多Firefox社群的成員，以及相當多的技術分析師，警告Greasemonkey的使用氾濫，並且相關的使用者腳本技術需要在發佈時更注意。他們的關注包括：

  - 可能讓某些廣告網站生意受阻。許多Firefox使用者已經利用[Adblock Plus屏閉掉網頁廣告](../Page/Adblock_Plus.md "wikilink")，不過Greasemonkey可被用來換掉原廣告主的廣告成為它競爭對手的廣告。這導致對網頁廣告人為灌水，或者戲弄被付費廣告商的統計程式。
  - 增加網站每頁的垃圾流量。某些Greasemonkey腳本是設計來取得使用者拜訪哪些網頁的額外資訊，比如那些從[del.icio.us](https://zh.wikipedia.org/wiki/del.icio.us "wikilink")、[黑米](https://zh.wikipedia.org/wiki/黑米 "wikilink")、或者-{[Bloglines](../Page/Bloglines.md "wikilink")}-提供的腳本。如果這些腳本被廣泛使用，它們有可能造成被拜訪網站不必要的額外流量。
  - 隨著許多網頁專用的腳本激增，分辨某網頁的問題是實際上網頁編程上的BUG，還是訪問者本地端Greasemonkey腳本的困難度也隨之增加。基於如此，抓蟲除錯更為麻煩。
  - 腳本錯誤大致肇因於Greasemonkey開發者與網站開發者缺乏互動。
  - Greasemonkey只有對HTML網頁有效，對於[Flash](https://zh.wikipedia.org/wiki/Flash "wikilink")、[Flex](../Page/Apache_Flex.md "wikilink")，以及[Silverlight開發的網頁無效](https://zh.wikipedia.org/wiki/Silverlight "wikilink")。
  - 當網路程式（Rich Internet Applications）對Greasemonkey腳本開發者來說比起靜態網頁更困難控制。這是因為該網頁程式執行越多的邏輯，Greasemonkey作者得考慮得越複雜才不會打擾到原本程序的功能。
  - 原本的網站開發者推出新版時會造成相對應Greasemonkey腳本停止工作。因此，沒有與原本網站開發者互動而撰寫的Greasemonkey腳本可能在一時發揮作用，但終非長遠之計。

## Greasemonkey與其它瀏覽器的相容性與相等軟體

### 其他Mozilla為基礎的瀏覽器

Greasemonkey可直接用於Firefox、[Flock](../Page/Flock.md "wikilink")、與[Epiphany](https://zh.wikipedia.org/wiki/Epiphany "wikilink")。Epiphany Greasemonkey是Epiphany附加元件包的一部分。然而，該附加元件並不完全相容於2.15.1版，導因於某些Greasemonkey[應用程式介面功能](https://zh.wikipedia.org/wiki/應用程式介面 "wikilink")（例如：*GM_getValue*）不支援。此外，也有自訂版本的[SeaMonkey](../Page/SeaMonkey.md "wikilink")：。

### Opera

[Opera第](https://zh.wikipedia.org/wiki/Opera "wikilink")8版也增加了[使用者腳本功能](http://www.opera.com/support/tutorials/userjs/)。隨著Opera與Firefox支援W3C[文檔對象模型](https://zh.wikipedia.org/wiki/文檔對象模型 "wikilink")（DOM），許多Greasemonkey使用者腳本現在在Opera下執行正確。

### Konqueror

[Konqueror使用者腳本](http://kde-apps.org/content/show.php?content=51482)是一種給[KDE](../Page/KDE.md "wikilink") [Konqueror](../Page/Konqueror.md "wikilink")的網頁修改工具，其目的在相容於Greasemonkey腳本與後資料集。它以一種[KPart而存在](https://zh.wikipedia.org/wiki/KPart "wikilink")。

## 類似軟體

  - [Scriptish](https://web.archive.org/web/20111219030658/http://scriptish.org/index.html)具备和Greasemonkey一样的作用，所有Greasemonkey脚本都能在Scriptish中运行。Scriptish源于Greasemonkey，但对后者做了改进。\[1\]
  - [Proxomitron](../Page/Proxomitron.md "wikilink")，開發於1990年代晚期，程式於JavaScript前載入並主動監視HTTP串流，因此它為跨瀏覽器相容，並且透過[正則表達式相似的比對語言提供類似Greasemonkey的功能](https://zh.wikipedia.org/wiki/正則表達式 "wikilink")。
  - [Proximodo](http://proximodo.sourceforge.net/)受proximitron啟發並可相互操作；是一種開源軟體，客戶端[代理伺服器所以允許對網頁內容動手腳](https://zh.wikipedia.org/wiki/代理伺服器 "wikilink")。
  - [Privoxy](http://privoxy.org/)是一種開源軟體，客戶端[代理伺服器所以允許對網頁內容動手腳](https://zh.wikipedia.org/wiki/代理伺服器 "wikilink")。它支援很多操作系統。
  - [MouseHole](https://archive.is/20060708074158/http://mousehole.rubyforge.org/wiki/wiki.pl?MouseHole)是一種開源軟體，客戶端[代理伺服器](https://zh.wikipedia.org/wiki/代理伺服器 "wikilink")，允許對網頁內容透過[Ruby](../Page/Ruby.md "wikilink")動手腳。
  - [Monkeygrease](http://monkeygrease.org/)是一種[Java](../Page/Java.md "wikilink")[Servlet可用來修改客戶端接收到之前的Java](../Page/Java_Servlet.md "wikilink")（版權軟體）網頁程式輸出。
  - [Chickenfoot](http://groups.csail.mit.edu/uid/chickenfoot/)是一種Firefox的附加元件用於讓終端使用者與駭客於網頁上腳本互動。
  - [給Firefox用的iMacros](https://addons.mozilla.org/firefox/3863/)是一種Firefox的附加元件讓使用者紀錄並重播所謂「網際網路巨集」，用來執行網頁自動化、分析網頁、以及測試網頁。
  - [Stylish是一種Firefox的附加元件透過改變用戶端的](https://zh.wikipedia.org/wiki/Stylish "wikilink")[CSS](https://zh.wikipedia.org/wiki/CSS "wikilink")，進而改變網頁的編排。
  - [Bookmarklets可以在任何網頁隨心所欲的執行JavaScript](https://zh.wikipedia.org/wiki/Bookmarklets "wikilink")，不過它需要使用者點擊啟用，而非自動執行。
  - [Firebug](../Page/Firebug.md "wikilink")是一種開發者附加元件讓使用者隨心所欲的透過DOM即時改變網頁。

## 其他選擇

在沒有附加元件像Greasemonkey的情況下，修改網站也可以透過下面幾種方式：

  - 於網址列鍵入`javascript:`，或者使用[bookmarklets](https://zh.wikipedia.org/wiki/bookmarklets "wikilink")。
  - 使用瀏覽器的[DOM檢視器](https://zh.wikipedia.org/wiki/DOM "wikilink")。
  - 使用本地端HTTP代理伺服器，如[WebWasher](https://zh.wikipedia.org/wiki/WebWasher "wikilink")、[Privoxy](../Page/Privoxy.md "wikilink")或[Proxomitron](../Page/Proxomitron.md "wikilink")以更改HTML。
  - 使用Opera瀏覽器 + 使用者.js腳本。

## 參見

  - [Adblock](https://zh.wikipedia.org/wiki/Adblock "wikilink")
  - [Firefox擴充套件列表](https://zh.wikipedia.org/wiki/Firefox擴充套件列表 "wikilink")

## 參考文獻

## 外部連結

  - [Greasemonkey下載站點](https://addons.mozilla.org/firefox/addon/greasemonkey/)（自動本地化）

  - [Greasemonkey官方網站](http://www.greasespot.net/)

  - [Greasemonkey Wiki](http://wiki.greasespot.net/)

  - [Greasemonkey source code](https://github.com/greasemonkey/greasemonkey)

  - 《[一頭栽進Greasemonkey](http://diveintogreasemonkey.org/toc/)》，一本用於教導Greasemonkey腳本撰寫的免費書籍，由Mark Pilgrim著作

  - [舊Greasemonkey腳本儲藏庫](https://web.archive.org/web/20071026044928/http://dunck.us/collab/GreaseMonkeyUserScripts#head-5387d9022c1a64b4092b5c3ec546fccb2be4220a)包括很多使用者為其個人需要撰寫，上傳併分享給大眾的腳本。

  - \[//userscripts.org/ userscripts.org\]（[Greasemonkeyed.com](https://archive.is/20050720031628/http://greasemonkeyed.com/)為其前身）- 取代dunck.us的腳本倉庫。

  - [Greasefire](https://addons.mozilla.org/firefox/addon/8352)必需配合「Greasmonkey」才能運作，因此安裝「Greasefire」前得先安裝「Greasmonkey」才行。安裝完「Greasefire」後，只要所瀏覽的網頁在「Userscripts.org」有可用的GM Script，「Greasmonkey」的猴子狀態列圖示便會亮起來。

  - [Greasemonkey禮節](http://simon.incutio.com/archive/2005/04/11/etiquette)

  - [Greasemonkey與其在商業模型的效果](https://web.archive.org/web/20080205114115/http://www.nivi.com/blog/article/greasemonkey-and-business-models/)

  - [腳本編譯器](http://arantius.com/misc/greasemonkey/script-compiler)用來轉換Greasemonkey腳本成Mozilla附加元件。

  - [Greasemonkey編譯器](https://web.archive.org/web/20050425160336/http://www.letitblog.com/greasemonkey-compiler/)轉換Greasemonkey使用者腳本成完整的converts Greasemonkey Mozilla附加元件。

  - [給非技術人員的Greasemonkey解釋](http://www.makeuseof.com/tag/greasemonkey-firefox-addon/)

  - [browserscripts.org](https://web.archive.org/web/20070927021857/http://browserscripts.org/)腳本社群。

  - [Greasemonkey在企業](http://dev2dev.bea.com/blog/plaird/archive/2007/08/greasemonkey_in.html) - 網誌系列，主題關注當使用Greasemonkey於IT專案時保全與發佈問題。

  - [InternetDuctTape.com](http://internetducttape.com/2007/08/24/howto-use-firefox-greasemonkey-userscripts-screenshots/) - 安裝與使用Greasemonkey使用者腳本新手指南。

### 評論

  -
  -
[Category:Firefox_附加组件](https://zh.wikipedia.org/wiki/Category:Firefox_附加组件 "wikilink") [Category:用JavaScript編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用JavaScript編程的自由軟體 "wikilink")

1.