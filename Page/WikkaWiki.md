**WikkaWiki**是一个用[PHP语言编写的轻量级](../Page/PHP.md "wikilink")[Wiki引擎](../Page/Wiki引擎.md "wikilink")，后台数据使用[MySQL数据库存储](../Page/MySQL.md "wikilink")。WikkaWiki是WakkaWiki引擎的一个分支变体，主要特点是高速、可伸缩性和安全。这个引擎符合GNU公共许可协议GPL。

## 歷史

2003年，雖然用戶和貢獻者的一個大社區還很活躍地仍然張貼bugfixes和引伸與新功能，[Wakka
Wiki的發展突然來到了末端](../Page/Wakka_Wiki.md "wikilink")。
首先發布在2004年5月， WikkaWiki迅速地增長。

## Wikka不同版本

与其它重量级维基引擎相比，Wikka维基并没有继承许多的内置功能，它的目标是保证核心代码尽可能的小，而引擎的可伸缩性由诸多的扩展插件来实现，这些插件可以提供各种各样的复杂功能，使引擎的
功能得到进一步加强。

Wikka引擎最新版本是
1.1.6.2，于2006年6月12日释出。这个版本较上一个版本修正了很多的错误，功能也得到了一定加强，特别是这一版本提供了嵌入代码快的支持。

## Wikka维基引擎的特点

这个维基引擎具有以下特性：

  - 支持不同类型的 嵌入元素：
  - 图片；
  - [Flash动画](../Page/Flash.md "wikilink")；

:\* 表格式数据；

:\* 安全HTML代码；

:\* [RSS](../Page/RSS.md "wikilink")；

:\* i-frames;

:\* [心智图](../Page/心智图.md "wikilink")，内建支持
[FreeMind数据](../Page/FreeMind.md "wikilink")；

  - 高级（可选l）[访问控制](../Page/访问控制.md "wikilink")，包括对用户注册，密码管理和用户描述，基于页面的
    [访问列表管理](../Page/访问列表.md "wikilink")。
  - 利用[GeSHi](http://qbnz.com/highlighter/)高级
    [表达式加亮](../Page/表达式加亮.md "wikilink")：
      - 支持 68种标记／编程语言，例如Actionscript、ADA、Apache Log、ASM、ASP、Bash、C、C for
        Macs、C\#、C++、CAD
        DCL、CadLisp、CSS、Delphi、HTML、Java、Javascript、Lisp、Lua、NSIS、Objective
        C、OpenOffice、BASIC、Pascal、Perl、PHP、Python、Quick
        BASIC、Smarty、SQL、VB.NET、Visual BASIC、Visual Fox Pro、XML。；
      - 简单的可自定义输出；
      - （可选）[行号](../Page/行号.md "wikilink")；
      - clickable markup pointers to official documentation;
      - *on-the-fly* downloading of 嵌入代码区；
  - 不同的*相关页特性*，包括完全
    [修订控制](../Page/修订控制.md "wikilink")，评论，分类，全文检索，页面克隆，高级[referrer](../Page/referrer.md "wikilink")
    管理，文件上传下载接口，和[GUI页面编辑器](../Page/图形用户接口.md "wikilink")。
  - 遵循[W3C的](../Page/W3C.md "wikilink")
    [XHTML和](../Page/XHTML.md "wikilink")
    [CSS标准规范](../Page/CSS.md "wikilink")。
  - CSS-defined printable view.
  - 为发布页面修订提供的高级工具有：

:\* [RSS](../Page/RSS.md "wikilink") 利用推技术分发页面修订和新建页面；

:\* [WikiPing](../Page/WikiPing.md "wikilink") client functionality,
allowing page changes to be broadcast and tracked on a remote WikiPing
server.

  - *SmartTitle*功能，可以创建方便人和搜索引擎的页面标题。
  - 基于WEB的 [向导](../Page/向导_\(软件\).md "wikilink") 用于 安装和升级。
  - 支持[插件](../Page/插件.md "wikilink")，存储在维基目录的achtions目录下。

### 不足

  - 程式碼及外觀沒有分離 程式碼及外觀沒有分離，所以只能藉由「CSS」來製作主題（不過因此執行速度會比較快）。
  - 沒有多国语言支持及獨立的語言文件，所以不容易進行翻譯。
  - 頁面不能任意命名，只能使用维基的命名规则。
  - 權限管理部份沒有群組的概念
  - 沒有計數器
  - 不能單獨刪除頁面的修訂記錄

## 下一步开发计划

即将发布的i新版本可能包括以下功能：

  - [垃圾邮件过滤和安全模块](../Page/垃圾邮件.md "wikilink")。
  - 站点和用户管理工具
  - 增强配置（例如用户可以自己选择和编辑外观和菜单）.
  - 动态生成的API 文档。
  - 通过[API远程同步维基数据](../Page/应用程序编程接口.md "wikilink")
  - 支持[Google Maps](../Page/Google_Maps.md "wikilink")

## 文獻

维基服务器上存储的大量文档提供了十分详尽的帮助和指导。不管是最终用户还是开发人员都会得到十分重要的信息。

## 參看

  - [维基软件列表](../Page/维基软件列表.md "wikilink")
  - [维基软件比较](../Page/维基软件比较.md "wikilink")
  - [心智图](../Page/心智图.md "wikilink") -
    [FreeMind](../Page/FreeMind.md "wikilink")
  - [WikiPing](../Page/WikiPing.md "wikilink")

## 外部連結

  - [WikkaWiki官方网站](http://wikkawiki.org)
  - [Wikka tracker and SVN
    repository](https://web.archive.org/web/20081119143357/http://www.wush.net/trac/wikka)
  - [What's new in Wikka latest release](http://wikkawiki.org/WhatsNew)
  - [Wikka Documentation](http://wikkawiki.org/WikkaDocumentation)
  - [FreeMind主網頁](http://freemind.sourceforge.net/)

[Category:Web_2.0](https://zh.wikipedia.org/wiki/Category:Web_2.0 "wikilink")
[Category:Wiki](https://zh.wikipedia.org/wiki/Category:Wiki "wikilink")
[Category:內容管理系統](https://zh.wikipedia.org/wiki/Category:內容管理系統 "wikilink")