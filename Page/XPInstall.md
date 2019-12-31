> 本文内容由[XPInstall](https://zh.wikipedia.org/wiki/XPInstall)转换而来。


**XPInstall**（Cross-Platform Install）是一种被[Mozilla Application Suite](../Page/Mozilla_Application_Suite.md "wikilink")、[SeaMonkey](../Page/SeaMonkey.md "wikilink")、[Mozilla Firefox](../Page/Firefox.md "wikilink")、[Mozilla Thunderbird以及其他基于](../Page/Mozilla_Thunderbird.md "wikilink")[XUL](../Page/XUL.md "wikilink")的应用程序为安装[Mozilla扩展而使用的技术](https://zh.wikipedia.org/wiki/Mozilla扩展 "wikilink")，它可以为主应用程序增添功能。

一个XPI（发音“zippy”，从XPInstall派生）安装包是一个[ZIP文件](../Page/ZIP格式.md "wikilink")，其根目录中包含一个安装脚本或清单文件，以及若干数据文件。

在Mozilla Firefox的早期版本中，安装包包含一个[JavaScript](../Page/JavaScript.md "wikilink")安装脚本 (install.js)，其中含有**一些**在安装时执行的操作指令，包括添加文件和目录、移除旧或过时的文件和目录、执行命令行工具等。在后来的Firefox和Thunderbird版本中，安装脚本被[chrome清单及一个](../Page/图形用户界面.md "wikilink")[RDF文件](../Page/資源描述框架.md "wikilink") (install.rdf) 取代。

从Firefox 1.0开始，从Mozilla Add-ons以外的网站安装XPI被默认阻止。此举措是为防止恶意程序被用户无意间安装，包括[计算机病毒](../Page/计算机病毒.md "wikilink")、[特洛伊木马和](../Page/特洛伊木马_\(电脑\).md "wikilink")[间谍软件](../Page/间谍软件.md "wikilink")。虽然可以将网站加入允许安装XPI的[白名单](https://zh.wikipedia.org/wiki/白名单 "wikilink")，恶意网站仍无法在后台（未经人工干预的情况下）安装扩展，因为每次安装扩展时都需要手动确认相应对话框。

尽管如此，用户仍应仅安装来自可信来源的扩展。

## 内置XPInstall支持的应用程序

### 网页浏览器

  - [Mozilla Application Suite](../Page/Mozilla_Application_Suite.md "wikilink")
  - [Mozilla Firefox](../Page/Firefox.md "wikilink")
  - [Flock](../Page/Flock.md "wikilink")
  - [SeaMonkey](../Page/SeaMonkey.md "wikilink")
  - [Netscape Browser](../Page/Netscape_Browser.md "wikilink")

### 其他应用程序

  - [Nvu](../Page/Nvu.md "wikilink")（Web创作应用）
  - [Songbird](../Page/Songbird.md "wikilink")（媒体播放器和管理器）
  - [Mozilla Sunbird](../Page/Mozilla_Sunbird.md "wikilink")
  - [Mozilla Thunderbird](../Page/Mozilla_Thunderbird.md "wikilink")
  - [Google Gears](https://zh.wikipedia.org/wiki/Google_Gears_API "wikilink")

## 外部链接

  - [XPInstall](http://www.mozilla.org/projects/xpinstall/)
  - [Extension Packaging (Mozilla Developer Center)](http://developer.mozilla.org/en/docs/Extension_Packaging)

[Category:Mozilla](https://zh.wikipedia.org/wiki/Category:Mozilla "wikilink")