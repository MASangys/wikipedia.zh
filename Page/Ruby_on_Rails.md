****（官方简称为Rails，亦被简称为RoR），是一个使用[Ruby语言写的](../Page/Ruby.md "wikilink")[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")[Web應用框架](https://zh.wikipedia.org/wiki/Web應用框架 "wikilink")，它是严格按照[MVC结构开发的](../Page/MVC.md "wikilink")。它努力使自身保持简单，来使实际的应用开发时的代码更少，使用最少的配置。

Rails的设计原则包括「[不做重複的事](../Page/一次且仅一次.md "wikilink")」（Don't Repeat
Yourself）和「[慣例優於設定](../Page/约定优于配置.md "wikilink")」（Convention Over
Configuration）

## Ruby on Rails介紹

Ruby on
Rails是一種結合Ruby語言與Rails平台的一種網頁程式框架，Ruby語言以自然、簡潔、快速著稱，全面支援[面向对象程序设计](../Page/面向对象程序设计.md "wikilink")，而Rails則是Ruby廣泛應用方式之一，在Rails平台上設計出一套獨特的[MVC開發架構](../Page/MVC.md "wikilink")，採取模型（Model）、视图（View）、控制器（Controller）分離的開發方式，不但減少了開發中的問題，更簡化了許多繁複的動作。

## 应用

Ruby on Rails的数千个程序已经在线上得到应用。 现在使用Ruby on Rails的网站有：\[1\]

  - Basecamp
  - Twitter
  - GitHub
  - Groupon
  - Shopify
  - Yellow Pages
  - GitLab

## 歷史

於2004年7月，Rails的創始人[大衛·漢森從](https://zh.wikipedia.org/wiki/大衛·漢森 "wikilink")[37signals公司的項目管理工具Basecamp裡面分離出Ruby](https://zh.wikipedia.org/wiki/37signals "wikilink")
on Rails，並且以開源方式發佈。

Rails在發佈以後的短短的時間內就迅速獲得很多開發人員歡迎，大衛認為這歸功於Rails設計為opinionated
software。Rails當中有很多規矩從一開始就按照David的意見制定好了，所以在Rails上開發應用程序時，開發人員可以專注於應用程序自身的設計，省卻那些花在瞭解及配置基礎框架上面的時間。這也正是Rails很重要的精神「[約定優於配置](https://zh.wikipedia.org/wiki/約定優於配置 "wikilink")」，開發人員遵照Rails本身的慣例便可以省卻配置組態檔的時間；此外，Rails雖然強調慣例的重要及便利性，但針對不同的需求，Rails也提供修改的空間讓開發人員可以進行自訂的組態。

## Rails的運作模式

Rails框架是以固定的命名習慣來自動判斷整個架構，預設下會將網址分析成http://domain-name/ControllerName/ActionName/Attribute/
然後執行目標Controller中的Action，並取出指定的View（視圖）回傳給瀏覽器顯示。

面對資料庫則以Model（模組）的形式，藉由Active Record作為與資料庫之間的傳輸介面。

## Rails的MVC架构

Ruby on Rails的[模型-视图-控制器架构由以下各部分组成](../Page/MVC.md "wikilink")：

### 模型

模型包含着应用的状态，状态可能是临时的也可能是长久性保存在数据库中的。需要注意的是模型不仅包含数据，而且包含数据代表的逻辑。在Rails中，***模型***通常是由一些代表关系数据库中RDBMS表的类组成的。

在Rails中，模型类是通过[Active
Record模式进行处理的](../Page/Active_Record.md "wikilink")。一般来说，程序员要做的是继承`ActiveRecord`类，同时程序会自动计算出要使用哪个RDBMS表，这个表有哪些列。表与表之间的关系通过简单的命令来指明。

### 视图

View负责根据Model中的数据显示用户界面。作为web应用，Rails裡的View通常是生成整个或者部分网页。当然可以是XML或者甚至是[JavaScript代码](../Page/JavaScript.md "wikilink")。表现为使用内嵌Ruby的[HTML](../Page/HTML.md "wikilink")／[XML](../Page/XML.md "wikilink")／[JavaScript模板](../Page/JavaScript.md "wikilink")。

### 控制器

控制器将用户界面和数据模型关联起来，并充当协调运作的角色。它接收各种用户操作，更新数据模型，并用合适的view展示结果给用户。像他的名字一样，可以说应用的主要控制中心就是各个控制器。

## Rails的组成模块

查看系统裡面安装的gem包，可以发现如下的Rails相关的Gems。

  - actionmailer (1.3.2)
      -
        Service layer for easy email delivery and testing.

<!-- end list -->

  - actionpack (1.13.2)
      -
        Web-flow and rendering framework putting the VC in MVC.

<!-- end list -->

  - actionwebservice (1.2.2)
      -
        Web service support for Action Pack.

<!-- end list -->

  - activerecord (1.15.2)
      -
        Implements the ActiveRecord pattern for ORM.

<!-- end list -->

  - activesupport (1.4.1)
      -
        Support and utility classes used by the Rails framework.

<!-- end list -->

  - rails (1.2.2)
      -
        Web-application framework with template engine, control-flow
        layer, and ORM.

### 模型：Active Record

ActiveRecord实现了Rails的[对象关系映射](../Page/对象关系映射.md "wikilink")。

### 控制器和视图：ActionPack

ActionController是Rails中的控制器，提供各种方法供用户操作使用。

ActionView是Rails中的视图，负责展现用户界面。

### 常用实用工具：ActiveSupport

ActiveSupport包提供一些工具和支持代码。

### 处理邮件：ActionMailer

[ActionMailer用来发送和接收](https://zh.wikipedia.org/wiki/ActionMailer "wikilink")[email](https://zh.wikipedia.org/wiki/email "wikilink")。

### Web服务：ActionWebService

[ActionWebService来提供](https://zh.wikipedia.org/wiki/ActionWebService "wikilink")[SOAP和](https://zh.wikipedia.org/wiki/SOAP "wikilink")[XML-RPC支持](../Page/XML-RPC.md "wikilink")。需要注意的是，Rails趋向使用更加简单明瞭的REST方式web服务而不再提倡SOAP格式的web服务。ActionWebServices在未来的版本裡面会逐步淡出。

### 网络资源：ActiveResource

用REST对Web服务提供了优秀的支持。这种风格的Web服务使用指定的资源。

### Rails中的AJAX

[AJAX](../Page/AJAX.md "wikilink")（非同步JavaScript與XML）是一種非同步傳輸介面，可以藉由[浏览器使用](https://zh.wikipedia.org/wiki/浏览器 "wikilink")[JavaScript和](../Page/JavaScript.md "wikilink")[XML或其他数据格式来處理傳輸請求](../Page/XML.md "wikilink")，而将[Web服务器作为](https://zh.wikipedia.org/wiki/Web服务器 "wikilink")[后台来处理](https://zh.wikipedia.org/wiki/后台 "wikilink")，这样无须载入额外的[网页](https://zh.wikipedia.org/wiki/网页 "wikilink")。Rails內建有[Prototype套件來實現这个技术](https://zh.wikipedia.org/wiki/Prototype_\(框架\) "wikilink")。Ajax已经和Ruby
on Rails结合在了一起成为了一个新的系统叫做“Ajax on Rails”。Rails提供一些助手工具来更方便地实现AJAX应用。
Rails提供了一些Helper，可以在服务器一端用纯Ruby语言生成给浏览器用的JavaScript代码，从而让Rails的开发者不需掌握JavaScript就可以简单方便的开发出AJAX的应用。

## Rails和Web服务

稍早的版本的Rails中提供了ActionWebService作为开发XML-RPC和SOAP的web服务的基础。但是最近的Rails
1.2更加倾向于是用[REST方式的web服务](https://zh.wikipedia.org/wiki/REST "wikilink")，而ActionWebService在Rails
2.0中作为plugin而不再是rails核心的一部分。

## Web服务器支持

对于开发和测试来说，一个很轻量的[WEBrick網頁服务器已经被包含在了Ruby中](https://zh.wikipedia.org/wiki/WEBrick "wikilink")，常被用来作为应用服务器。而对于生产应用，常推荐使用带[FastCGI的](../Page/FastCGI.md "wikilink")[Apache或者](https://zh.wikipedia.org/wiki/Apache "wikilink")[Lighttpd](../Page/Lighttpd.md "wikilink")，但任何支持[CGI或者](https://zh.wikipedia.org/wiki/CGI "wikilink")[FastCGI的網頁伺服器都可以使用](../Page/FastCGI.md "wikilink")。在Apache上，mod_ruby也可以考虑用来提高性能。

## 數據庫支持

使用Rails的架構開發網絡應用一般都使用數據庫，所以推薦使用一個[關聯式資料庫系統來進行數據存儲](https://zh.wikipedia.org/wiki/RDBMS "wikilink")，若不能運行一個關聯式資料庫服務器，Rails支持嵌入式數據庫[SQLite](../Page/SQLite.md "wikilink")。Rails還支持關聯式資料庫系統，包括[MySQL](../Page/MySQL.md "wikilink")、[PostgreSQL](../Page/PostgreSQL.md "wikilink")、[IBM
DB2](../Page/IBM_DB2.md "wikilink")、[Oracle和](https://zh.wikipedia.org/wiki/Oracle "wikilink")[SQL
Server](https://zh.wikipedia.org/wiki/SQL_Server "wikilink")。

## 系统要求

  - [Ruby语言](../Page/Ruby.md "wikilink")
  - [Web服务器](https://zh.wikipedia.org/wiki/Web "wikilink")，如[Apache](https://zh.wikipedia.org/wiki/Apache "wikilink")、[lighttpd等](https://zh.wikipedia.org/wiki/lighttpd "wikilink")。
  - [FastCGI](../Page/FastCGI.md "wikilink")，或者[Mongrel为了提高效率](https://zh.wikipedia.org/wiki/Mongrel "wikilink")
  - 数据库和驱动程序

## 集成开发环境

开发用的IDE有：[Eclipse](../Page/Eclipse.md "wikilink")，[MyEclipse](https://zh.wikipedia.org/wiki/MyEclipse "wikilink")，[NetBeans](../Page/NetBeans.md "wikilink")，[RubyMine](https://zh.wikipedia.org/wiki/RubyMine "wikilink")，[Aptana](https://zh.wikipedia.org/wiki/Aptana "wikilink")，[Sublime
Text](../Page/Sublime_Text.md "wikilink")，[Visual Studio
Code](../Page/Visual_Studio_Code.md "wikilink")

## 类似的框架

### [PHP](../Page/PHP.md "wikilink") 語言

  - [CakePHP](https://zh.wikipedia.org/wiki/CakePHP "wikilink")
  - [Laravel](https://zh.wikipedia.org/wiki/Laravel "wikilink")
  - [Yii](https://zh.wikipedia.org/wiki/Yii "wikilink")
  - [CodeIgniter](../Page/CodeIgniter.md "wikilink")

### [Python語言](../Page/Python.md "wikilink")

  - [Django](../Page/Django.md "wikilink")
  - [TurboGears](../Page/TurboGears.md "wikilink")

### [Perl語言](../Page/Perl.md "wikilink")

  - [Catalyst](../Page/Catalyst.md "wikilink")

### [Elixir語言](../Page/Elixir.md "wikilink")

  - [Phoenix
    Framework](https://zh.wikipedia.org/wiki/Phoenix_\(web_framework\) "wikilink")

### [Node.js環境](../Page/Node.js.md "wikilink")

  - [Sails.js](https://zh.wikipedia.org/wiki/Sails.js "wikilink")

## 参考文献

## 外部链接

### 官方網站

  - [Ruby On Rails官方網站](http://www.rubyonrails.org)

  - [Ruby on Rails台灣官方網站](http://www.ruby-lang.org/zh_tw)

### 其他

  - [Ruby 中国社区](http://ruby-china.org)
  - [Onlamp.com的Ajax on
    Rails](http://www.onlamp.com/pub/a/onlamp/2005/06/09/rails_ajax.html)
  - [Fast-track your Web apps with Ruby on
    Rails](http://www-128.ibm.com/developerworks/linux/library/l-rubyrails/)（[David
    Mertz](https://zh.wikipedia.org/wiki/David_Mertz "wikilink") article
    at IBM
    [developerWorks](https://zh.wikipedia.org/wiki/developerWorks "wikilink")）
  - [Ruby on
    Rails和J2EE：两者能否共存？](http://www-128.ibm.com/developerworks/cn/java/wa-rubyonrails/)
  - [Full Ruby on Rails
    Tutorial](https://archive.is/20070517233550/http://www.meshplex.org/wiki/Ruby/Ruby_on_Rails_programming_tutorials)
  - [Steve
    Yegge把Rails移植到JavaScript/Rhino](http://www.infoq.com/cn/news/2007/06/yegge-rhino-on-rails)
  - \[<https://web.archive.org/web/20130622151055/http://www.iteye.com/forums/tag/Ruby>　Ruby编写的JavaEye中的ruby论坛\]

[Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink")
[Category:用Ruby编程的自由软件](https://zh.wikipedia.org/wiki/Category:用Ruby编程的自由软件 "wikilink")
[Category:Web_2.0](https://zh.wikipedia.org/wiki/Category:Web_2.0 "wikilink")
[Category:Web应用框架](https://zh.wikipedia.org/wiki/Category:Web应用框架 "wikilink")
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")

1.  [1](http://rubyonrails.org)