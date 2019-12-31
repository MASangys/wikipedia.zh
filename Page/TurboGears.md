> 本文内容由[TurboGears](https://zh.wikipedia.org/wiki/TurboGears)转换而来。


**TurboGears**是一個提供網頁前端到後端整合的網站框架，使用[Python](../Page/Python.md "wikilink")動態語言。

[Python](../Page/Python.md "wikilink")語言上有無數網頁開發模組可選擇。要挑選合適的模組會花上開發者寶貴的時間精力，TurboGears就像是[Python](../Page/Python.md "wikilink")網頁開發上的發佈套件（[Linux发行版](../Page/Linux发行版.md "wikilink")），整合各種推薦的[Python](../Page/Python.md "wikilink")開放原始碼模組，提供簡單易用的介面與一致的系統體驗。

## 特色

  - 用最好的[Python](../Page/Python.md "wikilink")開源組件（Best of Breed Modules）
  - 互動式的開發經驗（Interactive Programming Experience）
  - 可自由組合偏好的開發模塊（Integration）
  - 內建網頁伺服器，[ORM](https://zh.wikipedia.org/wiki/ORM "wikilink")，[AJAX](../Page/AJAX.md "wikilink")能力，預設可以產生html, json等格式。
  - 不用安裝[Apache網頁伺服器就可以開始開發網頁應用程式](https://zh.wikipedia.org/wiki/Apache "wikilink")，可以單獨佈署或搭配[Apache](https://zh.wikipedia.org/wiki/Apache "wikilink")，[lighttpd網頁伺服器使用](https://zh.wikipedia.org/wiki/lighttpd "wikilink")
  - 不用安裝資料庫[MySQL](../Page/MySQL.md "wikilink")／[PostgreSQL](../Page/PostgreSQL.md "wikilink")就可以開始開發資料庫網站
  - 方便的佈署能力
  - 眾多插件（Extension）支援
  - 可擴充的命令列工具（tg-admin），可以協助產生基本專案或插件模板和建立資料庫等工作。
  - 可擴充的網頁介面的工具箱（ToolBox），內含資料模型設計工具（Model Designer），資料編輯工具（Catwalk），網站多國語言化工具等

## TurboGears组件

TurboGears使用[MVC](../Page/MVC.md "wikilink")（Model, View, Controller）的方式組織網站，提供網頁框架快速生成工具，開發中自動即時重載的網頁伺服器。

TurboGears是由许多各自独立的库和中间层建立的。其中一些默认的工具从1.x至2.x各不相同，但是大多数的这些组件都能根据配置而被互相替用。

以下是一些开发者会使用到的主要组件。

### TurboGears 2.x组件

  - [SQLAlchemy](../Page/SQLAlchemy.md "wikilink")（Model）- 定义了数据表的结构，并且让用户的控制层可以访问这些对象。
  - [Genshi](https://zh.wikipedia.org/wiki/Genshi_\(templating_language\) "wikilink")（View）- 定义了用以生成HTML或XHTML的模板，用于前台和客户端访问的页面。
  - [Pylons](../Page/Pylons.md "wikilink")（Controller）- 负责处理后台逻辑与显示数据的页面之间的中间层。默认的，使用了[Paster作为服务器](https://zh.wikipedia.org/wiki/Python_Paste "wikilink")。但是用户也可以连接[Apache](../Page/Apache_HTTP_Server.md "wikilink"), [Nginx](../Page/Nginx.md "wikilink")，或者使用[WSGI与其兼容](https://zh.wikipedia.org/wiki/Web_Server_Gateway_Interface "wikilink")。
  - [Repoze](https://zh.wikipedia.org/wiki/Repoze "wikilink") - Repoze.who & Repoze.what是用来处理安全（访问授权）控制，repoze预先声明了谁在什么条件下可以访问哪些页面。
  - [Tosca Widgets](https://zh.wikipedia.org/wiki/Tosca_Widgets "wikilink") - 这是主要用来创建表单和复杂GUI的一个库。Tosca默认只会生成简单的HTML表单，但是也能用来连接更高级的JavaScript工具包。不同于TurboGears 1.x,现在已不再用有一个集成的JavaScript库。\[1\].

### TurboGears 1.x组件

  - [SQLObject](https://zh.wikipedia.org/wiki/SQLObject "wikilink")（Model） - data backend that can create a database or interface with existing data on many database servers.
      - [SQLAlchemy](../Page/SQLAlchemy.md "wikilink")会在TurboGears \>= 1.1中成为默认的库。
  - [Kid](https://zh.wikipedia.org/wiki/Kid_\(templating_language\) "wikilink")（View）- XHTML frontend templating engine where all templates are valid XHTML or XML files that are usually made in a way that allows opening these templates as simple XHTML files to check the design. At the same time features are provided to embed snippets of Python in a XMLish manner.
      - [Genshi是个比Kid更成功的模板引擎](https://zh.wikipedia.org/wiki/Genshi_\(templating_language\) "wikilink")，将会在TurboGears \>= 1.1版本中成为默认支持，在语法上100%接近Kid。
  - [CherryPy](https://zh.wikipedia.org/wiki/CherryPy "wikilink")（Controller）- middleware that allows web applications to be programmed by writing event handlers that return data to (in TurboGears case) templates. The same data can also be received in [Ajax](https://zh.wikipedia.org/wiki/Ajax "wikilink") fashion as a [JSON](../Page/JSON.md "wikilink") data stream.
  - [MochiKit对于TurboGears](https://zh.wikipedia.org/wiki/MochiKit "wikilink") 1.x来说，是一个推荐的，但是可选的JavaScript库。被设计来让JavaScript的开发更加[Pythonic](https://zh.wikipedia.org/wiki/Python_philosophy "wikilink").主要用于实现[Ajax特性](https://zh.wikipedia.org/wiki/Ajax "wikilink")，提供一些能够异步取得JSON数据流的组件。

## 配置與佈署

  - 可自由使用超過五千種[Python](../Page/Python.md "wikilink")語言各種領域的模組
  - TurboGears大部分組件都可自由替換
  - 使用[Python](../Page/Python.md "wikilink")語言的easy_install命令提供一致的網路自動安裝擴展功能。
  - 可以使用tg2exe將網頁應用程式包裝成[Windows平台可獨立執行的程式](https://zh.wikipedia.org/wiki/Windows "wikilink")

## Web伺服器支持

TurboGears的內置網頁伺服器來自於CherryPy模組，已經被證實可以單獨佈署。 佈署時也可以搭配[Apache或者](https://zh.wikipedia.org/wiki/Apache "wikilink")[Lighttpd](../Page/Lighttpd.md "wikilink")使用

## 資料庫支持

TurboGears透過[ORM支持](https://zh.wikipedia.org/wiki/ORM "wikilink")

  - SQLite
  - MySQL
  - Postgres
  - Firebird
  - MS SQL Server
  - Oracle

等資料庫

## 系統要求

Python語言版本2.3以上， 1.0.2之後的版本支援python 2.5

1.5版推荐使用Python 2.6

## 類似的技術

  - [Django](../Page/Django.md "wikilink")
  - [Ruby on Rails](../Page/Ruby_on_Rails.md "wikilink")
  - CakePHP

## 網頁元件

TurboGears使用網頁元件（widgets），從系統層級（而非樣板）支持網頁程式碼重用。提供[MVC](../Page/MVC.md "wikilink")支援外的方便形式。

可以使用各種樣板系統來開發網頁元件。

## 参考资料

## 外部連結

  - [官方網站](http://www.turbogears.org/)
  - [TurboGears博客](https://web.archive.org/web/20051218021134/http://planet.turbogears.org/)
  - [官方文档網站](http://docs.turbogears.org/)
  - [TurboGears google group](http://groups.google.com/group/turbogears)
  - [TurboGears screencasts](https://web.archive.org/web/20060811200734/http://showmedo.com/videos/TurboGears) and related videos at showmedo
  - [TurboGears from start to finish](http://lucasmanual.com/mywiki/TurboGears)

[Category:Web应用框架](https://zh.wikipedia.org/wiki/Category:Web应用框架 "wikilink") [Category:MVC](https://zh.wikipedia.org/wiki/Category:MVC "wikilink") [Category:Python軟體](https://zh.wikipedia.org/wiki/Category:Python軟體 "wikilink") [Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")

1.  [ToscaWidgets Cookbook—TG2 v2.0 documentation](http://turbogears.org/2.0/docs/main/ToscaWidgets/Cookbook.html)