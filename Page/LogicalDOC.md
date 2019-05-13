**LogicalDOC**是一个[自由软件](../Page/自由软件.md "wikilink")，专为公司管理和共享文件而设计的文档管理系统。
LogicalDOC是一个具有Lucene全文搜索索引、jBPM工作流程、以及一套自动导入程序的内容储存库，使用[Java技术开发](../Page/Java.md "wikilink")。
LogicalDOC是一种针对[Microsoft
Windows和](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Unix-like操作系统的文档管理系统](https://zh.wikipedia.org/wiki/Unix-like "wikilink")。
LogicalDOC面向那些需要高度模块化和可扩展性的用户。
LogicalDOC提供了一种[WebDAV接口](https://zh.wikipedia.org/wiki/WebDAV "wikilink")，它可以在Microsoft
Windows和Unix-like操作系统上提供兼容性支持。

## 历史

2006年，两位J2EE商业产品的开发者决定开始逻辑客体(Logical
Objects)生意，致力于坚持和开放源代码项目\[1\]。一年之后，逻辑客体(Logical
Objects)决定从旧项目中分支，继而一项全新产品名为LogicalDOC诞生了。
2008年中期，LogicalDOC的第一次发布被推入SourceForge\[2\]。为了承接旧项目的编号，第一次发布的编号为3.6\[3\]。
2010年，LogicalDOC获得了文档管理范畴的最佳开源应用大奖Bossie Awards\[4\]。

## 授權方式

LogicalDOC源代码是由GNU LGPLv3许可分发\[5\]。

## 主要功能

LogicalDOC是一个基于网页的文档管理应用程序，因此需要用网页浏览器使用它。当前已测试与LogicalDOC兼容的网页浏览器包括：[Firefox](../Page/Firefox.md "wikilink"),
[Internet Explorer](../Page/Internet_Explorer.md "wikilink"),
[Safari](../Page/Safari.md "wikilink"), [Google
Chrome](../Page/Google_Chrome.md "wikilink")。网页界面是利用谷歌网页工具包（Google Web
Toolkit）创建的。

## 架构

LogicalDOC使用基于J2SE标准的[Java技术和Tomcat应用服务器而开发](../Page/Java.md "wikilink")。因此它可以被安装和执行于各种平台（GNU/Linux操作系统，Windows视窗操作系统,
Mac OS X苹果操作系统）。

LogicalDOC的架构是基于以下几种技术：

  - [Apache Tomcat应用服务器](../Page/Apache_Tomcat.md "wikilink")
  - Java [J2SE](https://zh.wikipedia.org/wiki/J2SE "wikilink")
    (Java开发工具包 1.7 或者更高)
  - GWT (Google Web Toolkit - Ajax)谷歌交互式网页工具包
  - Lucene全文搜索引擎
  - Spring Framework软件架构

由于它的轻量级架构，LogicalDOC可以被应用于许多类型的设备，以及实现云端/软件即服务（Cloud/SaaS）的文档管理。

数据可以储存在一个关系型数据库管理系统中（[MySQL](../Page/MySQL.md "wikilink"),
[Oracle](https://zh.wikipedia.org/wiki/Oracle_Database "wikilink"),
[Microsoft SQL
Server](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink"),
[PostgreSQL](../Page/PostgreSQL.md "wikilink"), etc.）

## 基本功能

该文档管理系统可以管理个人或者公司的文档，便于寻找以前的文档版本。它能够按内容，利用文档内容的索引来进行搜索。LogicalDOC现已进行了超过15种语言的本地化。LogicalDOC可以建立支持对应于每一种支持语言的全文索引和标签，为应用特定的适合于某一种语言或其变种的索引算法。

  - 文档管理
  - 文档修订（轻微和重大修订）
  - 图像管理
  - 通过WebDAV和WebService访问
  - jBPM工作流引擎
  - Lucene全文搜索引擎
  - 多语言支持
  - 多平台支持（Windows视窗操作系统，GNU/LINUX操作系统，Mac OS X苹果操作系统
  - 基于浏览器的图形用户界面（Internet Explorer, Firefox, Google Chrome, Safari）
  - 微软办公软件Microsoft Office和微软电子邮件Microsoft Outlook的桌面整合
  - 可插入认证：[LDAP或活动目录](https://zh.wikipedia.org/wiki/LDAP "wikilink")
  - 多个数据库支持：[MySQL](../Page/MySQL.md "wikilink"),
    [Oracle](https://zh.wikipedia.org/wiki/Oracle_Database "wikilink"),
    [Microsoft SQL
    Server](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink"),
    [PostgreSQL](../Page/PostgreSQL.md "wikilink")
  - 文件全视窗预览
  - 集成OCR和条形码识别
  - 集成TWAIN扫描仪支持

## 高级功能

除了社区开源版本以外，LogicalDOC还提供具有企业高级定制功能的付费版。

  - 拖放（Drag\&Drop）
  - 多工作空间(6.4）
  - 数据保持政策（6.4）（企业版）
  - PDF生成
  - 全预览
  - OCR
  - 数字签名（企业版）
  - 文档交付（企业版）
  - 条形码识别（企业版）
  - 从目录导入、动态目录导入、邮箱导入、扫描导入
  - 事件订阅（企业版）、事件日志、冗余检测
  - 工作流审批、工作流设计器（企业版）
  - 资源配额（企业版）
  - 企业定制文档标志方法（企业版）
  - 动态实时增加磁盘卷、卷加密（企业版）

## 另请参阅

  - [文件管理](https://zh.wikipedia.org/wiki/文件管理 "wikilink")
  - [内容管理系统列表](../Page/内容管理系统列表.md "wikilink")
  - [协作软件列表](https://zh.wikipedia.org/wiki/协作软件列表 "wikilink")

## 请参阅

  - [LogicalDOC 6
    得益于重新设计界面，以及微软办公软件集成](http://www.cmswire.com/cms/document-management/logicaldoc-60-benefits-from-redesignedinterface-microsoft-office-integration-009901.php)
  - [Alexa（流量度量）](http://www.alexa.com/siteinfo/logicaldoc.com)
  - [Quarkbase（网站信息）](https://web.archive.org/web/20120315210628/http://www.quarkbase.com/logicaldoc.com)

## 外部链接

  - [LogicalDOC 网站](http://www.logicaldoc.com)
  - [LogicalDOC LinkedIn
    page](http://www.linkedin.com/company/logical-objects-srl)
  - [LogicalDOC 文档](http://docs.logicaldoc.com/)
  - [维基社区](http://wiki.logicaldoc.com)
  - [官方论坛](http://forums.logicaldoc.com)
  - [LogicalDOC
    发布平台（本地化）](https://translations.launchpad.net/logicaldoc)

[Category:计算机科学](https://zh.wikipedia.org/wiki/Category:计算机科学 "wikilink")
[Category:内容管理系统](https://zh.wikipedia.org/wiki/Category:内容管理系统 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:网络应用程序](https://zh.wikipedia.org/wiki/Category:网络应用程序 "wikilink")
[Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink")

1.  [旧有工程](http://contineo.sourceforge.net)
2.  [开源版本](https://zh.wikipedia.org/wiki/:sourceforge:projects/logicaldoc "wikilink")
3.  [LogicalDOC –
    文档管理,数据库管理系统3.6版本发布](http://www.theserverside.com/discussions/thread.tss?thread_id=51275)
4.  [2010年最佳开源应用大奖获奖者：LogicalDOC](http://www.infoworld.com/d/open-source/bossie-awards-2010-thebest-open-source-applications-150&current=8&last=1#slideshowTop)
5.  [GNU宽通用公共许可证](http://www.opensource.org/licenses/lgpl-3.0.html)