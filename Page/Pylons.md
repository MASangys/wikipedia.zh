**Pylons**是一个[开放源代码](../Page/开放源代码.md "wikilink")的[Web应用框架](../Page/Web应用框架.md "wikilink")，使用[Python](../Page/Python.md "wikilink")语言编写。它对[WSGI标准进行了扩展应用](https://zh.wikipedia.org/wiki/Web_Server_Gateway_Interface "wikilink")，提升了重用性且将功能分割到独立的模块中。

Pylons是最新的[Web应用框架](../Page/Web应用框架.md "wikilink")中的典型，类似于[Django](../Page/Django.md "wikilink")和[TurboGears](../Page/TurboGears.md "wikilink")。Pylons受[Ruby on Rails影响很深](../Page/Ruby_on_Rails.md "wikilink")：它的两个组件，[Routes](http://routes.groovie.org)和[WebHelpers](http://docs.pylonsproject.org/projects/webhelpers/en/latest)是Rails特性的[Python](../Page/Python.md "wikilink")实现。

## 结构

### 安装和依赖

Pylons的官方安装方法是从[Python CheeseShop](http://cheeseshop.python.org)下载使用[EasyInstall](http://peak.telecommunity.com/DevCenter/EasyInstall)完成，而大部分的附加工具也通常以相同方式安装。

### URL dispatch

目前，Pylons普遍使用的URL dispatcher是[Routes](http://routes.groovie.org)，实际是[Ruby on Rails的URL](../Page/Ruby_on_Rails.md "wikilink") dispatching的Python重新实现，其他的URL dispatcher只要是[WSGI兼容也可以使用](https://zh.wikipedia.org/wiki/Web_Server_Gateway_Interface "wikilink")，例如[Selector](http://cheeseshop.python.org/pypi/selector)。

### HTML生成

另一块[Rails](../Page/Ruby_on_Rails.md "wikilink") Pylons化的部分是[WebHelpers](https://web.archive.org/web/20080914160852/http://pylonshq.com/WebHelpers/)，它提供了基于路径的URL映射。WebHelpers也提供了一些实用的功能来生成基于[script.aculo.us和](https://zh.wikipedia.org/wiki/script.aculo.us "wikilink")[Prototype](https://zh.wikipedia.org/wiki/Prototype_JavaScript_Framework "wikilink") 库的[JavaScript](../Page/JavaScript.md "wikilink")代码。

### 模板

### 数据库抽象和对象关系映射

Pylons没有默认的数据库程序库。可以使用比较有名的[SQLObject和](https://zh.wikipedia.org/wiki/SQLObject "wikilink")[SQLAlchemy](../Page/SQLAlchemy.md "wikilink")。

## 外部链接

  - [Pylons Project home page](http://www.pylonshq.com)
  - [Pylons Wiki](https://web.archive.org/web/20080821210037/http://wiki.pylonshq.com/)
  - [The Pylons Book](https://web.archive.org/web/20161217112724/http://pylonsbook.com/)
  - [Sites using Pylons](https://web.archive.org/web/20120724030917/http://wiki.pylonshq.com/display/pylonscommunity/Sites%2BUsing%2BPylons)

Packages used by the default Pylons installation, or popular additions:

  - [Myghty](http://myghty.org) - URL Dispatch, Controllers, Caching, Templating and more
  - [Mako](http://www.makotemplates.org/docs/) - Alternative template engine to Myghty
  - [Python Paste](http://pythonpaste.org/) - Project setup, testing, and deployment
  - [EasyInstall](http://peak.telecommunity.com/DevCenter/EasyInstall) - Installation and package dependencies
  - [Routes](http://routes.groovie.org) - Routing implementation based on Rails routes
  - [FormEncode](http://formencode.org) - Validation and form generation
  - [WebHelpers](https://web.archive.org/web/20080914160852/http://pylonshq.com/WebHelpers/) - HTML Helper functions

### 邮件列表

  - [pylons-discuss on Google Groups](http://groups.google.com/group/pylons-discuss)

Information taken from Google Groups as of Jan 10th, 2008:

  - 1211 Members
  - 284 Average messages per month（3 preceding months）

## 另见

  - [1](http://en.wikipedia.org/wiki/Comparison_of_web_application_frameworks)

## 参考

[Category:用Python編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用Python編程的自由軟體 "wikilink") [Category:Python軟體](https://zh.wikipedia.org/wiki/Category:Python軟體 "wikilink") [Category:Web應用框架](https://zh.wikipedia.org/wiki/Category:Web應用框架 "wikilink") [Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")