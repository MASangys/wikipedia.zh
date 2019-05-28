**Mozilla应用程序框架**（）是一套[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[软件组件](https://zh.wikipedia.org/wiki/基于组件的软件工程 "wikilink")，其构成了[Mozilla](../Page/Mozilla.md "wikilink")[应用软件](https://zh.wikipedia.org/wiki/应用软件 "wikilink")。它最早被称为**XPFE**，一个跨平台前端的[縮寫](../Page/縮寫.md "wikilink")。后来也曾被称为**XPToolkit**。为避免混淆，它现在被称为Mozilla应用程序框架。

类似于[GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink")[、Qt和](../Page/Qt.md "wikilink")[wxWidgets等](https://zh.wikipedia.org/wiki/wxWidgets "wikilink")，它的目的是提供适合制作网络应用程序（例如[网页浏览器](../Page/网页浏览器.md "wikilink")）的跨平台功能子集，以利用Gecko排版引擎中构建的跨平台功能。

## 组件

下列是该框架的各个组件：

  - Gecko
    [Gecko是一个为性能和可移植性设计的基于标准的](../Page/Gecko.md "wikilink")[排版引擎](../Page/排版引擎.md "wikilink")。
  - Necko
    Necko为从传输层到表示层的多个网络层提供可扩展的 API。
  - XUL
    [XUL是](../Page/XUL.md "wikilink")[用户界面的基础](../Page/用户界面.md "wikilink")。它使用[XML定义一个用户界面的各种用户界面元素](../Page/XML.md "wikilink")，大多数[控件](../Page/控件.md "wikilink")、控制元素、模板等。它在许多方面类似[HTML](../Page/HTML.md "wikilink")。
  - XBL
    [XBL允许定义在XUL中使用的自己的控件](../Page/XBL.md "wikilink")。
  - XPCOM
    [XPCOM是一个对象接口](../Page/XPCOM.md "wikilink")，允许与已开发“绑定”的符合编程语言进行接口化
  - XPConnect
    [XPConnect是XPCOM与](../Page/NPAPI.md "wikilink")[JavaScript之间的绑定](../Page/JavaScript.md "wikilink")。
  - XPInstall
    [XPInstall是一种安装小包的技术](../Page/XPInstall.md "wikilink")，例如将[扩展和主题安装到Mozilla应用程序](https://zh.wikipedia.org/wiki/扩展 "wikilink")，从安装存档（也称[XPI](https://zh.wikipedia.org/wiki/XPI "wikilink")）。
  - Web服务<span></span>
    Mozilla内置多种流行的[Web服务标准](../Page/Web服务.md "wikilink")，例如[XML-RPC](../Page/XML-RPC.md "wikilink")、[SOAP](https://zh.wikipedia.org/wiki/SOAP "wikilink")（从Gran
    Paradiso Alpha
    7起放弃\[1\])、[WSDL](../Page/WSDL.md "wikilink")，以及一个类似[Internet
    Explorer中的简单的](../Page/Internet_Explorer.md "wikilink")[XMLHttpRequest](https://zh.wikipedia.org/wiki/XMLHTTP "wikilink")。
  - 其他<span></span>
    该框架支持若干项开放或公共标准，包括[DTD](https://zh.wikipedia.org/wiki/文档类型定义 "wikilink")、[RDF](../Page/資源描述框架.md "wikilink")、[XSLT](../Page/XSLT.md "wikilink")/[XPath](../Page/XPath.md "wikilink")、[MathML](../Page/数学置标语言.md "wikilink")、[SVG](../Page/可縮放向量圖形.md "wikilink")、[JavaScript](../Page/JavaScript.md "wikilink")、[SQL](../Page/SQL.md "wikilink")、[LDAP等等](../Page/轻型目录访问协议.md "wikilink")。

## 使用该框架的应用程序

  - [Netscape Navigator
    9网页浏览器](../Page/Netscape_Navigator_9.md "wikilink")

  - [Mozilla Firefox网页浏览器](../Page/Firefox.md "wikilink")

  - [Flock网页浏览器](../Page/Flock.md "wikilink")

  - [Wine兼容层](../Page/Wine.md "wikilink")（Gecko作为内置的网页浏览器组件）

  - [SeaMonkey互联网套件](../Page/SeaMonkey.md "wikilink")

  - [Mozilla
    Thunderbird电子邮件客户端](../Page/Mozilla_Thunderbird.md "wikilink")

  - [ChatZilla](../Page/ChatZilla.md "wikilink") IRC客户端

  - [KompoZer](../Page/KompoZer.md "wikilink")
    [WYSIWYG网页制作器](https://zh.wikipedia.org/wiki/所見即所得 "wikilink")

  - [Mozilla Sunbird日历](../Page/Mozilla_Sunbird.md "wikilink")

  - IDE和 Edit，从第五版开始。

  - [Songbird媒体播放器](../Page/Songbird.md "wikilink")

  - 前[Joost](../Page/Joost.md "wikilink")
    [IPTV客户端](../Page/IPTV.md "wikilink")

  - [screenplay写作应用程序](../Page/剧本.md "wikilink")

  - [Miro互联网电视应用程序](../Page/Miro.md "wikilink")

  - 媒体中心软件

  - [Instantbird即时消息客户端](../Page/Instantbird.md "wikilink")

## 参考资料

<references />

  - Syd Logan: <cite>Cross-Platform Development in C++: Building Mac OS
    X、Linux、and Windows Applications</cite>、Addison-Wesley、2007. ISBN
    0-321-24642-X

## 外部链接

  - [The Mozilla Application Framework in
    Detail](http://developer.mozilla.org/en/docs/Mozilla_Application_Framework_in_Detail)
  - [Mozilla as
    Platform](http://books.mozdev.org/html/mozilla-chp-1.html)
  - [Rapid Application Development with
    Mozilla](http://www.informit.com/store/product.aspx?isbn=0131423436)
    - a book by Nigel McFarlane、published by Prentice Hall、part of the
    Bruce Perens' Open Source
    Series（可免费下载[PDF格式](https://zh.wikipedia.org/wiki/便携式文档格式 "wikilink")）
  - [MozDev.org](http://mozdev.org/):
    面向基于Mozilla应用程序框架的网站。不隶属于Mozilla公司或Mozilla基金会

[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")
[Category:Mozilla](https://zh.wikipedia.org/wiki/Category:Mozilla "wikilink")
[Category:使用XUL的軟體](https://zh.wikipedia.org/wiki/Category:使用XUL的軟體 "wikilink")

1.