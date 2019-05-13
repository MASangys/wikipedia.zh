[MediaWiki.svg](https://zh.wikipedia.org/wiki/File:MediaWiki.svg "fig:MediaWiki.svg")
**Wiki引擎**，或稱為**Wiki軟體**，是指用來架設[Wiki的](../Page/Wiki.md "wikilink")[軟體](../Page/軟體.md "wikilink")。廣義來說，即是一種軟體能作為[網路共筆](../Page/網路.md "wikilink")，供網友自行編輯，並最終集合成完整的資料庫。狹義來說，即是能達成[維基百科樣式的軟體](../Page/維基百科.md "wikilink")。

由于[维基百科的影响力](../Page/维基百科.md "wikilink")，部分学者和媒体把Wiki引擎称为**维基引擎**。

## 不同Wiki引擎的介紹

以下主要介紹一些較為著名的Wiki引擎。

  - [MediaWiki](../Page/MediaWiki.md "wikilink")：PHP語言開發的wiki引擎，維基百科所使用的引擎。支持繁簡中文。
      - 安裝需求：[Apache](../Page/Apache.md "wikilink") +
        [PHP](../Page/PHP.md "wikilink") +
        [MySQL](../Page/MySQL.md "wikilink")
    <!-- end list -->
      -
        [IIS](../Page/Internet_Information_Services.md "wikilink") + PHP
        +
        MySQL亦可執行，但是部份源碼的的參數需要修改（參見[meta的說明](../Page/:meta:Installing_MediaWiki_on_Windows_Server_2003_SP1#9._Fix_the_script_error.md "wikilink")）
    <!-- end list -->
      - 最新版本：1.30.0
  - [SushiWiki](../Page/SushiWiki.md "wikilink")：用[C\#開發的WikiClone](../Page/C♯.md "wikilink")，中文支持較好。
      - 安裝需求：IIS + [ASP.Net](../Page/ASP.Net.md "wikilink") +（可選的數據庫伺服器）
      - 最新版本：V1 RC2
  - [Confluence](../Page/Confluence.md "wikilink")：用[Java开发的wiki引擎](../Page/Java.md "wikilink")，在企业用户里面使用较多。
  - [FlexWiki](../Page/FlexWiki.md "wikilink")：微軟的開源產品，開發語言為[C\#](../Page/C♯.md "wikilink")，基於[CPL](../Page/CPL.md "wikilink")（Common
    Public License）協議，不支持中文鏈接。
      - 安裝要求：IIS + ASP.Net
      - 最新版本：1.8.0.1696
  - [JASSWiki](../Page/JASSWiki.md "wikilink")
      - 安裝需求：IIS + [ASP](../Page/Active_Server_Pages.md "wikilink")
        不需要數據庫
  - [JspWiki](../Page/JspWiki.md "wikilink") 是一套非常容易安裝的系統，支持JSP腳本
      - 安裝需求：JDK + [tomcat](../Page/Apache_Tomcat.md "wikilink")
  - [OpenWiki
    2004是一款非常出色的WIKI引擎](../Page/OpenWiki_2004.md "wikilink")，基於ASP開發，而目前ASP的WIKI引擎數量稀少，因此OpenWiki無疑是基於IIS+ASP的伺服器的首選。支持中文（一般）。
      - 安裝需求：IIS + ASP + ODBC
  - [WikkiTikkiTavi](../Page/WikkiTikkiTavi.md "wikilink")：小巧輕快的 Tavi 系統
      - 安裝需求：PHP + MySQL
  - [ChiqChaqWiki](../Page/ChiqChaqWiki.md "wikilink")：預設給一般人使用的
    WikiClone. 支持 utf-8，繁體中文沒問題，但不支持 RSS
  - [PersonalWiki](../Page/PersonalWiki.md "wikilink")：個人使用的 Wiki 系統
  - [OddMuse](../Page/OddMuse.md "wikilink")：使用 [Perl
    語言的](../Page/Perl.md "wikilink") Wiki 系統
  - [MoinWiki](../Page/MoinWiki.md "wikilink")：基于Python的Wiki系统，可運行在Windows、Linux/BSD/UNIX、OS
    X等環境下。目前能夠處理英文、德文、繁簡體中文、日文、俄文等約20種語言。
  - [WakkaWiki](../Page/WakkaWiki.md "wikilink")：十分小巧的基於[PHP](../Page/PHP.md "wikilink")+[MySQL的wiki](../Page/MySQL.md "wikilink")。由於其小巧簡潔，非常適合基於他進行個性化改進。
  - [CooCooWakka](../Page/CooCooWakka.md "wikilink")：一個基於 WakkaWiki
    的中文改進版，支持簡體和繁體中文。
  - [PmWiki](../Page/PmWiki.md "wikilink")：PmWiki 使用
    [PHP](../Page/PHP.md "wikilink")
    語言開發，容易安裝配置，無需數據庫支持。支持分組及分級（全站、組、單個頁面）讀寫權限，支持中文及UTF-8編碼，官方不支持中文鏈接。參考[PmWiki
    簡體中文版](http://www.pmwiki.org/wiki/PmWikiZhCn/PmWikiZhCn)。
  - [XOOPSWAKKA](../Page/XOOPSWAKKA.md "wikilink")：基於 Wakka 修改的 XOOPS
    Wiki 模組，支持簡體中文與繁體中文，並加入了目錄，中文索引，腳註，日曆，文件上傳等新功能。
  - [DokuWiki](../Page/DokuWiki.md "wikilink")：這是一個符合標準，簡單易用的維基軟體，主要用來生成說明文件。它的目標是開發團隊，工作小組及小型公司。
  - [UseModWiki](../Page/UseModWiki.md "wikilink")：採用
    [Perl](../Page/Perl.md "wikilink")
    語言所開發的維基引擎，曾為[維基百科所使用](../Page/維基百科.md "wikilink")。
  - [Instiki](../Page/Instiki.md "wikilink")：採用 [Ruby on
    Rails](../Page/Ruby_on_Rails.md "wikilink") 框架開發的維基引擎，以安裝簡便和使用方便而著稱。
  - [TWiki](../Page/TWiki.md "wikilink")：企業內部常用的Wiki，開放源碼系統。
  - [Generic Applications Server](http://www.thingsprime.com)
  - [PukiWiki](../Page/PukiWiki.md "wikilink")：由[YukiWiki所衍生](../Page/YukiWiki.md "wikilink")，大多為[日文的](../Page/日文.md "wikilink")[Wiki網站所使用](../Page/Wiki.md "wikilink")。
  - [Tiddlywiki](../Page/Tiddlywiki.md "wikilink")：個人使用的筆記型wiki，沒有後端資料庫，無須安裝，儘由單個html網頁檔組成，內核極度輕量化（以kb計算），只要有瀏覽器就可以瀏覽與編輯，適合裝在隨身碟裡帶著走。也可以將檔案直接放在網路空間成為網頁，但網路應用時預設不支援遠程內容變更（可以透過外掛取得支援）。
  - [Project
    forum](../Page/Project_forum.md "wikilink")：是个收费的维基引擎，有免费版本，但功能受限。自带网络服务器，安装简单。
  - [BoltWire](../Page/BoltWire.md "wikilink")：以純文字存檔，基於PHP、不需要資料庫的Wiki軟體。\[1\]
      - 安裝需求：Apache + PHP
  - [Sputnik](../Page/Sputnik.md "wikilink") :
    使用Lua语言的wiki,基于Kepler工程.小巧,高效,功能强大,扩展性好,安装简单方便(使用LuaRocks).与Lua一样使用免费开源的MITT授权.

## Wiki引擎的優勢

作為簡單易用的Wiki引擎，通常會具有以下共通點：

  - 编辑功能：具有容易书写（并且功能齐全）的格式规则，具备[所見即所得机能](../Page/所見即所得.md "wikilink")，可以分章节编辑，能够方便地参阅以前的版本，并且具有上传文本，插入图像，和书写科学公式的能力。
  - 阅览功能：包含目录，检索，导航条，访问统计，文章评分，高品位打印输出等功能。
  - 用户管理：包含个人页面，工具条的个人定义，个人偏好的设置等功能。
  - 群件功能：包含论坛，图库，信息传递系统等功能。
  - 访问控制：这对必须考虑安全因素的企业内部网络来说很重要。
  - 格式转换：文件导入（html, doc）和文件导出（doc, pdf）。
  - 个人界面：可设置个人的主页，顶边栏，底边栏，侧边栏；还有[模板](../Page/網頁模板.md "wikilink")。
  - 多国语言：多国语言的支持。
  - 可扩展性：具有什么样的第三方插件，什么样的机构使你制作的插件得以运行。
  - 可移植性：支持多种平台。
  - 可延拓性：当页面变得数量庞大时，此Wiki引擎是否可行。大多数可延拓的Wiki引擎都用一个后端数据库来存储页面。
  - 多用户参与：所有用户都可以参与编辑，不再有特权用户存在，信息来源更广

### 使用局限

共筆型網站百科全书在質素與立場上，會受到筆者及管理員影響，一般資料來源大多依賴[互聯網連結及政府認同的出版社書籍](../Page/互聯網.md "wikilink")。維基百科知名[醜聞有](../Page/醜聞.md "wikilink")：[諾貝爾物理獎的得主一度被维基百科人士拒絕保留有關陳述及專頁](../Page/諾貝爾獎.md "wikilink")\[2\]\[3\]。

## 参见

  - [MediaWiki](../Page/MediaWiki.md "wikilink")
      - [維基百科](../Page/維基百科.md "wikilink")
  - [LAMP](../Page/LAMP.md "wikilink")
      - [Linux](../Page/Linux.md "wikilink")
      - [Apache](../Page/Apache.md "wikilink")
      - [MySQL](../Page/MySQL.md "wikilink")
      - [PHP](../Page/PHP.md "wikilink")

## 参考資料

## 外部連結

  - [關於Wiki伺服器的介紹](https://web.archive.org/web/20170614112857/http://wikiserver.org/)
  - [Wiki引擎](http://c2.com/cgi/wiki?WikiEngines)
  - [怎樣選擇好的Wiki引擎](http://c2.com/cgi/wiki?ChoosingaWiki)
  - [各種Wiki軟體比較列表](http://www.onlamp.com/pub/a/onlamp/2004/11/04/which_wiki.html)
  - [Wiki預覽](https://web.archive.org/web/20051223074544/http://www.spack.org/wiki/WikiReview)
  - [維基文字標準](../Page/m:Wikitext_standard.md "wikilink") —
    [元維基](../Page/元維基.md "wikilink")
    有關標準[維基文字的討論](../Page/維基文字.md "wikilink")
  - [Wiki協作系統應用於數位典藏之內容加值與知識匯集](http://mail.tku.edu.tw/sclin/research/pub/200603Wiki.pdf)
    《教育資料與圖書館學》期刊，2006年3月，第43卷，第3期，pp. 285-307.

[de:Wiki-Software](../Page/de:Wiki-Software.md "wikilink")

[Category:Wiki软件](https://zh.wikipedia.org/wiki/Category:Wiki软件 "wikilink")
[Category:Wiki](https://zh.wikipedia.org/wiki/Category:Wiki "wikilink")
[Category:门户网站](https://zh.wikipedia.org/wiki/Category:门户网站 "wikilink")
[Category:資訊科技管理](https://zh.wikipedia.org/wiki/Category:資訊科技管理 "wikilink")

1.
2.  [諾貝爾物理獎女得主　曾遭維基百科拒建專頁](https://tw.appledaily.com/new/realtime/20181005/1442041/)
    2018/10/05
3.  [諾貝爾物理獎女得主
    曾遭維基百科拒絕建檔\[影](http://www.cna.com.tw/news/firstnews/201810040385.aspx)最新更新：2018/10/05
    \]