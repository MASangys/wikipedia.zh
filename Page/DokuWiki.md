> 本文内容由[DokuWiki](https://zh.wikipedia.org/wiki/DokuWiki)转换而来。


**DokuWiki**是一个针对小公司文件需求而開發的[Wiki引擎](https://zh.wikipedia.org/wiki/Wiki引擎 "wikilink")，用程序设计语言[PHP](../Page/PHP.md "wikilink")开发，并以[GPL 2发布](../Page/GNU通用公共许可证.md "wikilink")。

<poem>DokuWiki基于文本存储，所以不需要数据库，其数据文件在Wiki系统外也是可读的。 DokuWiki的功能齐全，支持[UTF-8](../Page/UTF-8.md "wikilink")，支持中文链接，能够单独编辑页面中的某个章节，能够自动生成目录，适合中小企业和个人使用，用作资料网站、归档、指南、读书笔记等。 DokuWiki的安装很简单，預設提供配置工具。</poem>

## 历史

DokuWiki是由[德国人Andreas](https://zh.wikipedia.org/wiki/德国人 "wikilink") Gohr于[2004年7月](../Page/2004年7月.md "wikilink")开发出来的。

2004年7月，第一个官方版本在上发布。
[2005年1月](../Page/2005年1月.md "wikilink")重新设计了解析和渲染程序，这带来了显著的性能改进，使得DokuWiki可以应用于更大的文档项目。同时也为DokuWiki引入了一种通用的插件接口，简化了插件的开发和管理。
2005年4月和7月，[Linux發行版](https://zh.wikipedia.org/wiki/Linux發行版 "wikilink")[Debian](../Page/Debian.md "wikilink")和[Gentoo Linux引入DokuWiki](../Page/Gentoo_Linux.md "wikilink")，提高了其知名度。
[2012年1月](../Page/2012年1月.md "wikilink")发布的新版本使用[jQuery重写了核心代码](https://zh.wikipedia.org/wiki/jQuery "wikilink")，从旧版本升级的用户可能会遇到不少兼容性问题。
[2012年10月](../Page/2012年10月.md "wikilink")发布的新版本兼容[HTML5](../Page/HTML5.md "wikilink")标准。[维基农场被集成到DokuWiki核心中](https://zh.wikipedia.org/wiki/维基农场 "wikilink")，可以方便地管理多个wiki。

## 主要特性

  - [文本存储](https://zh.wikipedia.org/wiki/TXT "wikilink")：DokuWiki通过txt文件存储页面，不需要[数据库](../Page/数据库.md "wikilink")。
  - [版本控制](../Page/版本控制.md "wikilink")：DokuWiki存储每一个Wiki页面的所有版本，允许用户比较当前版本和任何历史版本。使用了和[MediaWiki](../Page/MediaWiki.md "wikilink")类似的差异引擎（比较版本间的差异的软件）。通过计时锁定机制，可以防止不同用户编辑同一个页面时产生冲突。2012年1月发布的新版中，加入了媒体文件版本控制。
  - [访问控制](https://zh.wikipedia.org/wiki/存取控制 "wikilink")：访问控制可以通过用户管理程序完成，用户管理程序允许定义用户和用户组，以及定义[访问控制列表](https://zh.wikipedia.org/wiki/访问控制列表 "wikilink")，其中管理员用户可以定义页面和名字空间级别的权限。
  - [插件](../Page/插件.md "wikilink")：DokuWiki具有一个通用的插件接口，这个接口简化插件的开发和维护的过程。目前已经有超过100个可用的插件。管理员用户在插件管理程序的帮助下可以很容易地集成和管理这些插件。
  - [模板](https://zh.wikipedia.org/wiki/模板 "wikilink")：Wiki的外观可以自定义。开发社群已经提供了许多不同的模板。
  - [国际化和本地化](https://zh.wikipedia.org/wiki/国际化和本地化 "wikilink")：DokuWiki全面支持Unicode（[UTF-8](../Page/UTF-8.md "wikilink")），所以可以显示如[中文](https://zh.wikipedia.org/wiki/中文 "wikilink")，[泰文或](https://zh.wikipedia.org/wiki/泰文 "wikilink")[希伯来文等语言](https://zh.wikipedia.org/wiki/希伯来文 "wikilink")。目前DokuWiki的界面已经有约40种语言。
  - [缓存](../Page/缓存.md "wikilink")：DokuWiki存储Wiki页面渲染后的的输出，以减少服务器的负载。
  - [全文检索](https://zh.wikipedia.org/wiki/全文检索 "wikilink")：DokuWiki集成有一个索引搜索引擎，用户可以在Wiki上搜索关键字。
  - 没有[所見即所得的编辑器](https://zh.wikipedia.org/wiki/所見即所得 "wikilink")：DokuWiki不提供所见即所得的编辑器，但有提供编辑工具条和预览。

DokuWiki的其它特性可参见其主页的[特性列表](http://www.dokuwiki.org/features)。

## 参见

  - [Wiki](../Page/Wiki.md "wikilink")
  - [Wiki引擎](https://zh.wikipedia.org/wiki/Wiki引擎 "wikilink")
  - [Wiki软件比较](../Page/Wiki软件比较.md "wikilink")

## 外部链接

### 官方网站

  - [DokuWiki主頁](http://www.dokuwiki.org/dokuwiki)

### 有关DokuWiki的文章

  - [WikiMatrix上的DokuWiki](http://www.wikimatrix.org/show/dokuwiki)，一個比較Wiki引擎的網站。
  - [Freecode上DokuWiki的頁面](http://freecode.com/projects/dokuwiki)

[Category:Wiki](https://zh.wikipedia.org/wiki/Category:Wiki "wikilink") [Category:Wiki軟件](https://zh.wikipedia.org/wiki/Category:Wiki軟件 "wikilink") [Category:PHP](https://zh.wikipedia.org/wiki/Category:PHP "wikilink")