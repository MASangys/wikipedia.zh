**Django**是一个[开放源代码](../Page/开放源代码.md "wikilink")的[Web应用框架](../Page/Web应用框架.md "wikilink")，由[Python](../Page/Python.md "wikilink")写成。采用了[MVT的](https://zh.wikipedia.org/wiki/MVT "wikilink")[软件设计模式](https://zh.wikipedia.org/wiki/软件设计模式 "wikilink")，即模型Model，视图View和模板Template。它最初是被开发来用于管理旗下的一些以新闻内容为主的网站的。并于2005年7月在[BSD许可证](../Page/BSD许可证.md "wikilink")下发布。这套框架是以[比利时](../Page/比利时.md "wikilink")的[吉普赛](https://zh.wikipedia.org/wiki/吉普赛 "wikilink")[爵士吉他手](../Page/爵士乐.md "wikilink")来命名的。

Django的主要目标是使得开发复杂的、数据库驱动的网站变得简单。Django注重组件的重用性和“可插拔性”，[敏捷开发和](https://zh.wikipedia.org/wiki/敏捷开发 "wikilink")[DRY法则](../Page/一次且仅一次.md "wikilink")（Don't Repeat Yourself）。在Django中[Python](../Page/Python.md "wikilink")被普遍使用，甚至包括配置文件和数据模型。

Django于2008年6月17日正式成立基金会。

## 组件

Django框架的核心包括：一个 物件導向 的映射器，用作[数据模型](https://zh.wikipedia.org/wiki/数据模型 "wikilink")（以Python[类的形式定义](../Page/类_\(计算机科学\).md "wikilink")）和關聯型[数据库](../Page/数据库.md "wikilink")间的媒介；一个基于正则表达式的URL分发器；一个视图系统，用于处理请求；以及一个模板系统。

核心框架中还包括：

  - 一个轻量级的、独立的Web服务器，用于开发和测试。
  - 一个[表单](https://zh.wikipedia.org/wiki/网页表单 "wikilink")[序列化](../Page/序列化.md "wikilink")及验证系统，用于HTML表单和适于数据库存储的数据之间的转换。
  - 一个[缓存](../Page/缓存.md "wikilink")框架，并有几种缓存方式可供选择。
  - [中间件](../Page/中间件.md "wikilink")支持，允许对请求处理的各个阶段进行干涉。
  - 内置的分发系统允许应用程序中的组件采用预定义的信号进行相互间的通信。
  - 一个序列化系统，能够生成或读取采用[XML](../Page/XML.md "wikilink")或[JSON](../Page/JSON.md "wikilink")表示的Django模型实例。
  - 一个用于扩展模板引擎的能力的系统。

## 内置应用

Django 包含了很多应用在它的`contrib`包中，这些包括：

  - 一个可扩展的认证系统
  - 动态站点管理页面
  - 一组产生RSS和Atom的工具
  - 一个灵活的评论系统
  - 产生Google站点地图（Google Sitemaps）的工具
  - 防止跨站请求伪造（cross-site request forgery）的工具
  - 一套支持轻量级标记语言（Textile和Markdown）的模板库
  - 一套协助创建地理信息系统（GIS）的基础框架

## 服务的部署

Django可以运行在启用了`mod_python`的[Apache 2上](https://zh.wikipedia.org/wiki/Apache_2 "wikilink")，或是任何[WSGI兼容的Web服务器](https://zh.wikipedia.org/wiki/WSGI "wikilink")。Django也有启动[FastCGI](../Page/FastCGI.md "wikilink")服务的能力，因此能够应用于任何支持[FastCGI](../Page/FastCGI.md "wikilink")的机器上。

下列数据库引擎被Django官方支持：

  - [PostgreSQL](../Page/PostgreSQL.md "wikilink")
  - [MySQL](../Page/MySQL.md "wikilink")
  - [SQLite](../Page/SQLite.md "wikilink")
  - [Oracle](https://zh.wikipedia.org/wiki/Oracle "wikilink")

[Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink") [SQL Server的适配器正在开发中](https://zh.wikipedia.org/wiki/SQL_Server "wikilink")，处于试验阶段。（注：[SQL Server的支持在](https://zh.wikipedia.org/wiki/SQL_Server "wikilink")1.0版本中已经被完全去除）

自Django 1.0起，已经可以利用[Jython](../Page/Jython.md "wikilink")运行在任何[J2EE服务器](https://zh.wikipedia.org/wiki/J2EE "wikilink")。除CPython外，Django目前官方支援使用Jython 2.7b2運行，但不保證與CPython上的行為完全相容，並應預期一些功能（如使用Pillow的部分）無法使用。\[1\]

## 參考資料

## 外部链接

  - [Django官方网站](http://www.djangoproject.com/)
  - [Django开发者目录](https://archive.is/20080517070156/http://www.djangopeople.net/)
  - [使用Django构建的网站列表](http://www.djangosites.org/)
  - [Pinax](http://pinaxproject.com/) 将一些可重用的标准应用Django Apps集成，方便快速构建Web2.0网站。
  - [Django吉祥物](http://www.djangopony.com/)
  - [Django开发者制造的十大错误](https://www.toptal.com/django/django-top-10-mistakes)

[Category:网站开发](https://zh.wikipedia.org/wiki/Category:网站开发 "wikilink") [Category:Python](https://zh.wikipedia.org/wiki/Category:Python "wikilink") [Category:Python库](https://zh.wikipedia.org/wiki/Category:Python库 "wikilink") [Category:MVC](https://zh.wikipedia.org/wiki/Category:MVC "wikilink")

1.  [Running Django on Jython](https://docs.djangoproject.com/en/dev/howto/jython/)