**跨平台组件对象模型**（，简称**XPCOM**）是[Mozilla的一个](../Page/Mozilla.md "wikilink")[跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[组件模型](https://zh.wikipedia.org/wiki/基于组件的软件工程 "wikilink")。它类似微软的[组件对象模型](../Page/组件对象模型.md "wikilink")（COM）和[公共对象请求代理体系结构](../Page/CORBA.md "wikilink")（CORBA）。\[1\]它有多个[语言绑定和](../Page/綁紮.md "wikilink")[接口描述语言](../Page/接口描述语言.md "wikilink")（IDL）描述符，因此程序员可以将自己的自定义函数插入到框架中并与其他组件连接。

2015年8月，Mozilla宣布将放弃为创建[Firefox附加组件而使用的XPCOM](../Page/附加组件_\(Mozilla\).md "wikilink")，未来将支持[WebExtensions](https://zh.wikipedia.org/wiki/WebExtensions "wikilink")。\[2\]Firefox的[分支](https://zh.wikipedia.org/wiki/复刻_\(软件工程\) "wikilink")[苍月浏览器](../Page/苍月浏览器.md "wikilink")（Pale
Moon）则将继续无限期的支持XPCOM。\[3\]

## 模型

XPCOM的一项主要目的是将[Mozilla应用程序环境做成一个实际的框架](../Page/Mozilla.md "wikilink")。它为跨平台软件的开发人员提供一个有下列特性的开发环境：

  - 组件管理
  - 文件抽象
  - [对象消息传递](https://zh.wikipedia.org/wiki/訊息傳遞_\(軟體\) "wikilink")
  - [内存管理](../Page/記憶體管理.md "wikilink")

组件对象模型使[Gecko的几乎所有功能可作为一系列组件或可重用的跨平台](../Page/Gecko.md "wikilink")[函式庫使用](../Page/函式庫.md "wikilink")，它可以通过[网页浏览器或任何Mozilla应用程序的脚本使用](../Page/网页浏览器.md "wikilink")。应用程序必须访问各个Mozilla
XPCOM程式库（[网络](../Page/计算机网络.md "wikilink")、[安全](../Page/计算机安全.md "wikilink")、[DOM等](../Page/文档对象模型.md "wikilink")）以使用XPCOM的一个被称为[XPConnect的特殊层](../Page/NPAPI.md "wikilink")，这将程式库反射到[JavaScript或其他语言](../Page/JavaScript.md "wikilink")。XPConnect基于XPCOM中的组件，将前端胶合为[C++或](../Page/C++.md "wikilink")[C编程语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")，并且可以扩展为包含对其他脚本语言的支持：已提供对[Python的支持](../Page/Python.md "wikilink")。PerlConnect\[4\]和plXPCOM\[5\]
提供对[Perl的支持](../Page/Perl.md "wikilink")，并且仍在努力增加[通用语言架构](../Page/通用语言架构.md "wikilink")（CLI）和[Ruby语言对XPConnect支持](../Page/Ruby.md "wikilink")。

对开发者来说，XPCOM允许使用[C++](../Page/C++.md "wikilink")、[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[JavaScript](../Page/JavaScript.md "wikilink")、[Python等已提供](../Page/Python.md "wikilink")“绑定”的语言编写组件，并可在几十个Mozilla支持的平台上编译和运行这些组件。

灵活的重用来自Gecko程式库的XPCOM组件和开发能运行在不同平台的新组件有助于[快速應用程式開發](../Page/快速應用程式開發.md "wikilink")，并能使应用程序更高效和易于维护。例如，XPCOM组件集中的网络程式库就可以被任何Mozilla应用程序访问和使用。文件I/O、安全、密码管理以及配置文件也都有单独的XPCOM组件，程序员可以在开发自己的应用程序时使用。

## 批评

XPCOM为不同使用上下文（例如不同语言）下的对象添加了大量代码。这导致XPCOM中基于系统的代码出现。这也是[蘋果公司](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[复刻](https://zh.wikipedia.org/wiki/复刻_\(软件工程\) "wikilink")[KHTML](../Page/KHTML.md "wikilink")（现在已被多个网页浏览器使用，包括[Safari](../Page/Safari.md "wikilink")）来创建[WebKit引擎而非在其浏览器中采用基于XPCOM的](../Page/WebKit.md "wikilink")[Gecko渲染引擎的原因之一](../Page/Gecko.md "wikilink")。\[6\]\[7\]

Gecko的开发人员目前正在尝试减少Gecko排版引擎中XPCOM的过剩使用。此过程在Mozilla内通常被称为*deCOMtamination*。\[8\]

## 参见

  - [XULRunner](../Page/XULRunner.md "wikilink") –
    XULRunner是一个运行时，它的用途是启动多个像Firefox和Thunderbird那样的XUL
    + XPCOM的应用程序。

## 参考资料

## 外部链接

  - [XPCOM API
    Reference](https://developer.mozilla.org/en-US/docs/Mozilla/Tech/XPCOM/Reference)
  - [XPCOM Project
    Homepage](https://developer.mozilla.org/en-US/docs/Mozilla/Tech/XPCOM)
  - [A slightly out-of-date but still useful book that talks about
    XPCOM](http://books.mozdev.org/html/mozilla-chp-8.html)
  - [A Simple XPCOM
    Tutorial](http://www.codeproject.com/Articles/87465/A-Simple-XPCOM-Tutorial)

[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")
[Category:Mozilla](https://zh.wikipedia.org/wiki/Category:Mozilla "wikilink")

1.  \[//en.wikipedia.org/wiki/IBM_System_Object_Model\#Comparison_of_support_for_compiled_class_libraries
    Comparison with COM, GObject, SOM, Objective-C, Windows Runtime\]
2.
3.
4.  [module ownership governance
    system](http://www.mozilla.org/owners.html#perlconnect)
5.  [Perl XPCOM project](http://plxpcom.mozdev.org/)
6.
7.
8.