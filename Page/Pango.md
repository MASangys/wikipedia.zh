**Pango**（）是一个[开放源代码的](../Page/开放源代码.md "wikilink")[自由文本布局库](../Page/自由软件.md "wikilink")，通过使用[HarfBuzz文本塑形库](../Page/HarfBuzz.md "wikilink")-{A|zh-hans:渲染;zh-hant:描繪}-多语种的文字。\[1\]全功能文本渲染和跨平台支持在Pango与各平台的API或诸如[Uniscribe和](../Page/Uniscribe.md "wikilink")[FreeType作为文本渲染](../Page/FreeType.md "wikilink")[后端的第三方库使用时呈现](https://zh.wikipedia.org/wiki/后端 "wikilink")。Pango处理的文本会表现出在不同平台之下运行时的相近效果。

Pango是一种特定用途的文本函式库，而不是像同样能被Pango所用的通用图形渲染库[Cairo只具备最简单的文本渲染](https://zh.wikipedia.org/wiki/Cairo_\(绘图\) "wikilink")。实际上Cairo技术文档推荐使用Pango来渲染文本。

Pango的名称出自[希腊语](https://zh.wikipedia.org/wiki/希腊语 "wikilink")“”（*pan*，所有）和[日语](../Page/日语.md "wikilink")“”（*go*，[语言](https://zh.wikipedia.org/wiki/语言 "wikilink")）。\[2\]

## 应用

Pango已经被整合到多数Linux发行版中，并在[Fedora
Core](https://zh.wikipedia.org/wiki/Fedora_Core "wikilink")
6被用于[Firefox网页浏览器和](../Page/Firefox.md "wikilink")[Thunderbird邮件客户端的文字渲染](https://zh.wikipedia.org/wiki/Thunderbird "wikilink")。虽然在Mozilla的源代码里并没有包含Pango，但Fedora
Core得到了[Mozilla基金会的特别许可](https://zh.wikipedia.org/wiki/Mozilla基金会 "wikilink")\[3\]。同样，Debian的[Iceweasel](../Page/Iceweasel.md "wikilink")、IceDove和IceApe也使用了Pango。

## 对OpenType功能的支持

[Pango_locl_demo.png](https://zh.wikipedia.org/wiki/File:Pango_locl_demo.png "fig:Pango_locl_demo.png")

Pango 1.17及更新版本支持使用**locl**标签允许同一Unicode码点的本地化字符的使用。

从1.37.1版开始，Pango添加了更多属性来提供处理OpenType功能的完整支持。\[4\]\[5\]\[6\]

## 历史

2000年1月，GScript和GnomeText计划合并后命名为Pango。\[7\]\[8\]\[9\]\[10\]\[11\]\[12\]

Pango 1.0.0 版于2002年3月11日发布。\[13\]\[14\]

## 参见

  - [Uniscribe](../Page/Uniscribe.md "wikilink") - Windows的Unicode文字渲染引擎

  - \- Macintosh过去使用的Unicode文字渲染引擎

  - \- 现代化多语种文字渲染引擎，[Mac OS X
    10.5引入](https://zh.wikipedia.org/wiki/Mac_OS_X_10.5 "wikilink")

  - [Graphite](../Page/Graphite.md "wikilink") -
    [跨平台的开源智能字体渲染引擎](https://zh.wikipedia.org/wiki/跨平台 "wikilink")

  - [Cairo](https://zh.wikipedia.org/wiki/Cairo_\(繪圖\) "wikilink") -
    一个矢量图形库

## 参考文献

<div class="references-small">

<references/>

</div>

## 外部連結

  -
  - [Pango
    introduction](http://www-128.ibm.com/developerworks/linux/library/l-u-pango1/)

[Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink")
[Category:GNOME](https://zh.wikipedia.org/wiki/Category:GNOME "wikilink")
[Category:Unicode](https://zh.wikipedia.org/wiki/Category:Unicode "wikilink")
[Category:數碼字體排印](https://zh.wikipedia.org/wiki/Category:數碼字體排印 "wikilink")

1.
2.
3.
4.
5.
6.
7.  [Pango - Status - 14
    January 2000](http://people.redhat.com/otaylor/pango-mirror/status-000114.shtml),
    Owen Taylor, Redhat
8.  [GNOMEs in Paris: A Report from
    GUADEC](http://linuxdevcenter.com/pub/a/linux/2000/03/21/guadec/guadec.html?page=2),
    *The most impressive part of their presentation was the discussion
    on Pango (the result of the GScript and GnomeText merger)*,
    2000/03/21, By Chuck Toporek - O'Reilly Media
9.  [Pango proposal,
    rev 0.1](http://www.levien.com/gnome/pango-0.1.html), Raph Levien,
    28 July 1999
10. [GScript - Unicode and Complex Text
    Processing](https://web.archive.org/web/20000815092557/http://people.redhat.com/otaylor/gscript/),
    ''The GScript project has been merged with the GnomeText project.
    For information about the result, named Pango, see:
    <http://www.pango.org> If you have trouble accessing that site,
    there is a mirror here. By Owen Taylor
11. [Gnome-Text API
    documentation](http://www.levien.com/gnome/gnome-text.html), Raph
    Levien, 10 Jul 1999, *Owen Taylor is working on gscript, which has
    some overlap with the functions described in this interface. We're
    working on unifying the two api's as much as possible.*
12.  *Pango (which is the code name for a merger of my Gscript project
    and Raph Levien's GnomeText project) is a modular set of libraries
    for doing layout and rendering of international text. It's a bit
    similar to Microsoft's Uniscript or Apple's ATSUI.*
13. , Pango 1.0.0 released
14. [GTK+ user interface libraries,
    version 2.0](https://mail.gnome.org/archives/gnome-announce-list/2002-March/msg00022.html)