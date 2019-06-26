**Joomla\!**是一套[自由](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")、[開放原始碼的](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[內容管理系統](https://zh.wikipedia.org/wiki/內容管理系統 "wikilink")，以[PHP撰寫](../Page/PHP.md "wikilink")，用於發佈內容在[万维网與](../Page/万维网.md "wikilink")[内部网](https://zh.wikipedia.org/wiki/内部网 "wikilink")，通常被用來搭建商業網站、個人部落格、資訊管理系統、Web
服務等，還可以進行二次開發以擴充使用範圍。其功能包含可提高效能的頁面[快取](https://zh.wikipedia.org/wiki/快取 "wikilink")、[RSS饋送](../Page/RSS.md "wikilink")、頁面的可列印版本、新聞摘要、[部落格](https://zh.wikipedia.org/wiki/部落格 "wikilink")、[投票](../Page/舆论调查.md "wikilink")、網站搜尋、與[語言國際化](../Page/国际化与本地化.md "wikilink")。Joomla\!是一套自由的開源軟體，使用[GPL授權](../Page/GNU通用公共许可证.md "wikilink")，任何人隨時都能下載
Joomla\! 並立即使用它。

## 歷史

Joomla\!在2006年與2011年皆獲得Packt頒發的最佳開源內容管理系統獎。\[1\]

第一個發行版本的Joomla\!
(1.0.0)發佈[於](https://docs.joomla.org/Release_and_support_cycle)2005年9月16日。是由[Mambo](https://zh.wikipedia.org/wiki/曼波 "wikilink")
4.5.2.3版加上安全性修正後所分支發展的版本。

Joomla\! 1.5 (2007年)則以全新的 MVC 框架為基礎完全重寫程式碼，是當時少數同時兼容 PHP4 與 5
的大型應用程式。\[2\]。

Joomla\! 1.6 (2011年)再度以 PHP 5
為基礎大幅度更改框架系統，加入ACL權限控管、更新機制、多層次分類並內建多國語系等等，替開發者提供了更強大的開發流程。

Joomla\! 1.7 (2011年)開始抽出框架層，將 CMS 與核心框架分離，提供未來更多的更新空間。此時期的框架層開始支援 PHP
CLI 命令列程式與 Daemon 守護進程編寫、並能夠獨立開發Web應用程式。

Joomla\! 2.5
(2012年)開始支援多種資料庫，並提供更多核心功能的升級，使得2.5成為長期支援版(LTS)，是3.x以前最穩定、使用數量最多的版本。

Joomla\! 3.0 (2012年)引入[Twitter
Bootstrap](https://zh.wikipedia.org/wiki/Twitter_Bootstrap "wikilink")，並組成
JUX
小組，全面升級系統的前後台UI機制，除了提供大量開發前端工具外，搭配全新設計的isis後台，讓Joomla\!成為世界第一套內建行動版後台的內容管理系統。

Joomla\! 3.1
(2013年)加入標籤功能(Tags)進入到核心標準，除了內建文章外，第三方擴充套件也可以自由使用全新的標籤功能，並且移除了年久失修的程式碼高亮度外掛。

Joomla\!Framework (2013年)全新的 Full-Stack Web 開發框架，擺脫 CMS 束縛，提供更多新標準如
HMVC\[3\], Lazy Loading, PSR coding standard, PHP namespace, Autoloader,
RESTful 等等。

Joomla\! 3.2 (2013年)加入文章版本控管與線上 App store 功能，現在可以從網站後台直接下載安裝擴充套件。除此之外
CMS 部分開始支援 [PSR-0](https://zh.wikipedia.org/wiki/PSR-0 "wikilink")
，開發者將能夠更輕易整合目前流行的函式庫。

Joomla\! 3.4(2015年二月) 正式版發佈，提供更強大的後台UI，並逐步將核心輕量化，部分核心元件能夠移除或者事後再安裝。

Joomla\! 3.5 (2016年三月) 開始支援 PHP7，提供自動更新通知，強化安全性，並進一步加強了許多後台 UX。

Joomla\! 3.6 (2016年七月) 進一步強化後台 UX，能夠更方便的管理選單與分類內容，也提供開發者更便利的表單API。

Joomla\! 3.7 (2017年四月) 加入社群期待已久的自訂欄位功能，從核心提供 CCK
應用的基礎，也支援拖拉上傳安裝擴充建套件，自訂後台選單等等大量操作流程強化。

Joomla\! 3.8 (2017年九月) 提供數個核心改進，例如更現代化的路由系統、最先進的 Sodium
加密演算法，還有大量核心程式碼的升級。最重要的是開始加入未來
Joomla\! 4 的相容中介層，提供第三方應用遷移的準備時間。

## 發展路線

目前的 Joomla\! 3.x 皆為 STS 短期支援，預計最近的一版 LTS 長期支援版會是 3.5。Joomla\! 4 則預計將移除許多
PHP 5.2 時代的殘留程式碼，整合前後台 Application 為單一入口，並導入 Composer 與 PSR
等目前流行的先進開發技術。而從 Joomla\! 3.x 開始加入的 UCM
([Unified Content
Model](https://zh.wikipedia.org/wiki/Unified_Content_Model "wikilink"))
統一內容模型將成為往後版本建立 [CCK](https://zh.wikipedia.org/wiki/CCK "wikilink")
應用的基礎。

Joomla\!從2014年4月25日停止分為LTS、STS長短期支援的模式，以求能夠更快的更新系統、加入新的技術，不受LTS的制約，自Joomla\!3.3之後，每一個第二位版號都是穩定版本，並代表著系統的修改，生命盡頭在下一位版號發佈，如3.4版之後就終結3.3版生命週[期](https://docs.joomla.org/What_version_of_Joomla!_should_you_use%3F)，第三位版號代表的是更新修正檔發佈，而第一位版號代表的是大幅度的調整更新。

3.8 至 3.9 是 3.x 系列的最後兩個版本，除了大量將原有程式碼升級到最現代化的水準之外，也開始提供相容未來 Joomla\! 4
的中介層。

Joomla\! 4 目前正在內部開發中，主要特點是改用 Bootstrap4 、 Frameworks 2.0 並加入大量現代化前端技術如
Web component 、CSS Grid 與 Flex box
等，因此將放棄對舊型瀏覽器的支援度。另外核心程式碼也經過大量改寫，全面採用現代化
PHP 的開發標準，是自 1.6 以來最大的核心更動。且Joomla\! 4 的php版本最低要求為 PHP 7.0，這是因為PHP
7.0提供了更好的運作效能，且為了能夠繼續朝向未來的發展方向靠攏。\[4\]

## Joomla\! 名稱的由來

Joomla\!
這個單字來自[斯瓦希里语的](../Page/斯瓦希里语.md "wikilink")[英文串法](https://zh.wikipedia.org/wiki/英文 "wikilink")，意思是「all
together」或「as a whole」。

它不單純只代表內容管理系統，而是一個品牌名稱。除了 Joomla\!CMS 以外，另外還有 Joomla\!Platform 與
Joomla\!Framework 等相關的開源Web框架專案正在進行中。

### 其他

在2010年4月，微軟簽署了 Joomla\!的貢獻者協議（Joomla\! Contributor Agreement）。\[5\]\[6\]
提供WinCache這個針對在IIS下的PHP快取加速器。\[7\]

## 架構

  - 框架層

<!-- end list -->

  -
    Joomla\!Platform 與 Joomla\! Framework。以上兩者的框架層已支援 PSR-0, HMVC,
    RESTful 等現代標準。而 CMS 因為歷史包袱僅支援Legacy模式的功能，暫時還無法發揮框架層的全部特色。

<!-- end list -->

  - 函式庫

<!-- end list -->

  -
    [PHPMailer](https://zh.wikipedia.org/wiki/PHPMailer "wikilink"),
    [Simple Pie等等](https://zh.wikipedia.org/wiki/Simple_Pie "wikilink")

<!-- end list -->

  - 應用層

<!-- end list -->

  -
    前後台各自為延伸自框架層的實體應用程式 (Application)，並共用資料表。

<!-- end list -->

  - 擴充套件 (Extensions)

<!-- end list -->

  -
    分為元件(Component)、模組(Module)與外掛(Plugin)三種型式，核心功能如內容管理、媒體管理、選單系統皆是擴充套件的一環。每個元件皆採
    MVC 架構開發，並由應用層的Router依據網址的約定原則指向到不同的元件管理頁面。

<!-- end list -->

  - 顯示層

<!-- end list -->

  -
    支援 HTML, XML, JSON, Feed 等多種形式的顯示格式，用來面對不同類型的應用。

<!-- end list -->

  - 模板

<!-- end list -->

  -
    採用自製的模板引擎，並提供元件與模組的覆蓋輸出，可以在模板中藉由增加程式檔案的方式輕易取代內建顯示畫面，而無須Hack原始碼。

<!-- end list -->

  - 前端工具

<!-- end list -->

  -
    集成 [MooTools](https://zh.wikipedia.org/wiki/MooTools "wikilink"),
    [jQuery](https://zh.wikipedia.org/wiki/jQuery "wikilink"), [jQuery
    UI](https://zh.wikipedia.org/wiki/jQuery_UI "wikilink"), ,
    [LESS與](https://zh.wikipedia.org/wiki/LESS_\(层叠样式表\) "wikilink")[IcoMoon等前端輔助框架或工具](https://zh.wikipedia.org/wiki/IcoMoon "wikilink")，方便設計師設計功能強大的UI

## 資料庫支援

至2013年推出的3.1版為止，Joomla\!已支援5種資料庫，分別是:

  - [MySQL](../Page/MySQL.md "wikilink")
  - [Oracle](https://zh.wikipedia.org/wiki/Oracle "wikilink")
  - [PostgreSQL](../Page/PostgreSQL.md "wikilink")
  - [SQL Server](https://zh.wikipedia.org/wiki/SQL_Server "wikilink")
  - [SQLite](../Page/SQLite.md "wikilink") (目前僅框架層支援)

## 網站伺服器支援

目前Joomla\!直接支援的伺服器软件為[Apache與](https://zh.wikipedia.org/wiki/Apache "wikilink")[IIS](https://zh.wikipedia.org/wiki/IIS "wikilink")，除此之外經過簡單配置也可以運行在[nginx與](https://zh.wikipedia.org/wiki/nginx "wikilink")[Lighttpd上](../Page/Lighttpd.md "wikilink")。

## 適用範例與實例

Joomla\!系統是一個通用性的網站系統，意指幾乎所有類型的網站都可以在這個系統的基礎下建立或發展，不論是個人使用的部落格、一般企業使用的網站到大型的社群網站或新聞網站，透過豐富而多元的擴充套件，都可以找到對應的功能。快速、多樣化而方便的擴充管理功能，減少建置的時間和成本，是最吸引使用者選擇這套系統的優點。
使用Joomla\!建置的知名企業不勝枚舉，在國外的網站市場中佔有一席之地，以下的網站都是使用Joomla\!建置的：

  - 古根漢美術館
  - 宜家家居（科威特及阿拉伯）
  - eBay
  - Jaguar
  - PlayShakespeare.com (Cultural) - <http://www.playshakespeare.com>


中文市場的努力推廣下，也出現了許多知名企業或組織使用這套系統，作為網站建置的基礎，例如以下的實際案例：

  - 國立公共資訊圖書館　http://publiclib.nlpi.edu.tw/
  - 臺中市立梧棲國民中學 <http://www.wcjs.tc.edu.tw/wuchi/>
  - 台灣母語日網站 -澎湖縣政府教育處 <http://www2.penghunative.phc.edu.tw/>
  - 國立台中特殊教育學校 <http://www.tcspe.tc.edu.tw/>
  - 國立高雄師大附中　http://www.nknush.kh.edu.tw/
  - 中興大學實驗林保育計畫　http://plant-nchu.org/
  - 幸福小棧　https://web.archive.org/web/20150601005156/http://happiness-edu.org/
  - 中興大學會計系 - <http://gia.nchu.edu.tw/>
  - 高雄醫學大學圖書資訊處 - <http://olis.kmu.edu.tw/>

## 書籍

### 英文書籍

  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
### 中文書籍

  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
## 參照

## 相關

  - [內容管理系統列表](https://zh.wikipedia.org/wiki/內容管理系統列表 "wikilink")

## 外部連結

  - [<https://www.joomla.org> - Joomla\!官方網站](https://www.joomla.org/)

  - [Joomla\! Framework - Joomla@ 框架官網](http://framework.joomla.org/)

  - [台灣 Joomla\! 社群 - Joomla\!中文官方網站](http://www.joomla.org.tw)

  -
  - [華燈初上 - Joomler 李順能 (郭順能) 建立的 Joomla\! 資訊網站](https://www.abokuo.com)

<!-- end list -->

  - IRC

<!-- end list -->

  - [\#joomla](irc://irc.freenode.net/joomla)

[Category:內容管理系統](https://zh.wikipedia.org/wiki/Category:內容管理系統 "wikilink")
[Category:PHP](https://zh.wikipedia.org/wiki/Category:PHP "wikilink")

1.
2.
3.  [Joomla\!Framework Controller
    Usage](https://github.com/joomla/joomla-framework-controller#usage)
4.
5.  [Request for Comment: Joomla\! Contributor
    Agreement](http://community.joomla.org/blogs/leadership/1119-rfc-joomla-contributor-agreement.html)
6.  [微軟簽署 Joomla\!
    貢獻者協議](http://www.openfoundry.org/index.php?option=com_content&Itemid=144;isletter=1&id=2330&lang=en&task=view)
7.  [Performance improvement in Joomla using WINCACHE user
    cache](http://blogs.iis.net/donraman/archive/2010/03/05/performance-improvement-in-joomla-using-wincache-user-cache.aspx)