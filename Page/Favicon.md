[Wikipedia_favicon_in_Firefox_on_KDE.png](https://zh.wikipedia.org/wiki/File:Wikipedia_favicon_in_Firefox_on_KDE.png "fig:Wikipedia_favicon_in_Firefox_on_KDE.png")顯示維基百科的favicon\]\]

**Favicon**是*favorites icon*的缩写，亦被称为**website icon**（网页图标）、**page
icon**（页面图标）或**urlicon**（[URL图标](https://zh.wikipedia.org/wiki/URL "wikilink")）。Favicon是与某个[网站或](https://zh.wikipedia.org/wiki/网站 "wikilink")[网页相关联的](https://zh.wikipedia.org/wiki/网页 "wikilink")[图标](https://zh.wikipedia.org/wiki/图标 "wikilink")。网站设计者可以多种方式建立这种图标，而目前也有很多[网页浏览器支持此功能](../Page/网页浏览器.md "wikilink")。浏览器可以将favicon显示于浏览器的地址栏中，也可置于书签列表的网站名前，还可以放在标签式浏览界面中的页标题前。

最初，定义一个favicon的方法是将一个名为“favicon.ico”的[文件置于](https://zh.wikipedia.org/wiki/计算机文件 "wikilink")[Web服务器的](https://zh.wikipedia.org/wiki/网络服务器 "wikilink")[根目录下](https://zh.wikipedia.org/wiki/根目录 "wikilink")，[Internet
Explorer的收藏夹](../Page/Internet_Explorer.md "wikilink")（即书签）可以自动显示该文件。\[1\]
后来出现了一种更为灵活的方法，即使用[HTML来为任何一个网页指示其图标所存储的位置](../Page/HTML.md "wikilink")。这种方法是通过在页面的`<head>`部分添加两个link元件来实现的。这样，任何一个适当大小的（16×16[像素或更大](../Page/像素.md "wikilink")）的图像都可以用作favicon。尽管如此，多数情况下仍然使用[ICO格式](../Page/ICO.md "wikilink")。其他网页浏览器现在也支持[PNG](../Page/PNG.md "wikilink")（便携式网络图片）格式，和[GIF](../Page/GIF.md "wikilink")（图形交换格式）动画图像格式。

市面上多数浏览器同时支持上述两种方法。正因此，网络服务器要接受很多对“favicon.ico”文件的请求，即使该文件根本不存在。网站管理员对此很不满，因为这样会增加大量的[服务器日志项](../Page/服务器日志.md "wikilink")，并导致很多不必要的[磁盘读取和](https://zh.wikipedia.org/wiki/磁盘 "wikilink")[CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")、网络资源的占用。另一个常见的问题是，当清除浏览器的[缓存后](../Page/缓存.md "wikilink")，favicon可能会消失。

## 歷史

1999年3月，Internet
Explorer最早仅仅将favicon用于[收藏夹](../Page/書籤_\(瀏覽器\).md "wikilink")（例如[MSIE
5.0](../Page/Internet_Explorer_5.md "wikilink")）\[2\]\[3\]\[4\]。这产生了一些关于隐私问题的考虑，因为网站拥有者可以通过检查访问日志察看有多少人下载了`favicon.ico`文件，判断有多少人将他们的网站放入收藏夹中。然而，自从許多其他浏览器开始在每次访问时都将favicon显示在地址栏上，这就不再是一个问题了\[5\]。

### 标准化

Favicon功能最早由[微软创设](../Page/微软.md "wikilink")，而微软公司的Internet
Explorer网页浏览器会对每一个网站都请求favicon。微软支持的link标签不遵从[World Wide Web
Consortium（W3C，万维网联盟）的HTML建议](../Page/万维网联盟.md "wikilink")[1](http://www.w3.org/2005/10/howto-favicon)，因为：

  - `rel`属性必须包含一个用空格作分隔符的link类型的列表，所以一个包含两词的link类型不能被遵守标准的浏览器理解。
  - “[.ico](../Page/ICO.md "wikilink")”文件类型（一种用于Microsoft
    [Windows上图标的](https://zh.wikipedia.org/wiki/Windows "wikilink")[光栅格式](https://zh.wikipedia.org/wiki/光栅 "wikilink")）没有一个注册的MIME类型，而且似乎在当时也不能被多数浏览器理解。然而2003年，这一格式在[IANA获得注册](https://zh.wikipedia.org/wiki/IANA "wikilink")，其MIME类型是*image/vnd.microsoft.icon*，进而消除了此问题的第一部分。
  - 在网站上使用*保留地址（reserved location）*与[Architecture of the World Wide
    Web（互联网的结构）](http://www.w3.org/TR/webarch/)矛盾，同时被认为是*link
    squatting（链接劫持）*或*URI squatting（URI劫持）*。

[Mozilla浏览器](../Page/Mozilla.md "wikilink")-{zh-cn:通过;
zh-tw:利用;}-一种遵从Web标准的方法-{zh-cn:添加;
zh-tw:加入;}-了对favicon的支持。它采用`rel="icon"`并允许网络设计人员添加任何支持的图像格式的favicon。例如<link rel="icon" type="image/png" href="/path/image.png" />。后来鉴于此功能将被用于所有新内容，多数浏览器都对此功能增加了支持。

根据《HTML 4.01 Specification W3C Recommendation 24 December
1999》，rel属性的取值仅有：

  - Alternate
  - Stylesheet
  - Start
  - Next
  - Prev
  - Contents
  - Index
  - Glossary
  - Copyright
  - Chapter
  - Section
  - Subsection
  - Appendix
  - Help
  - Bookmark

如果要采用其他值，应当在head标签中的profile属性中进行自定义。W3C给出了一个建议：[《How to Add a Favicon to
your Site》](http://www.w3.org/2005/10/howto-favicon)。

简单地说：

1.  在head标签中-{zh-cn:添加;
    zh-tw:加入;}-profile属性指向<http://www.w3.org/2005/10/profile>。
2.  用link标签指向Favicon URI，rel值为icon

一个常见的错误是不指定profile。

## 指导

过去，为保证favicon出现，网站设计者和开发者采用了多种方法。
很难明确地保证favicon可以在所有电脑上显示，即使是用同一版本的一种浏览器。

下列代码另一个局限就是它把favicon关联到了某个特定的HTML或[XHTML文档上](../Page/XHTML.md "wikilink")。为避免这一点，favicon.ico文件应置于根目录下。多数浏览器将自动检测并使用它。

  - 建议包含以下两行HTML-{zh-cn:代码; zh-tw:程式碼;}-：

<!-- end list -->

``` html4strict
<link rel="shortcut icon" href="http://example.com/favicon.ico" type="image/vnd.microsoft.icon" />
<link rel="icon" href="http://example.com/favicon.ico" type="image/vnd.microsoft.icon" />
```

  -
    然而，只有第一行是必须的，因为“shortcut
    icon”字符串将被多数遵守标准的浏览器识别为列出可能的关键词（“shortcut”将被忽略，而仅使用“icon”）；而Internet
    Explorer将会把它作为一个单独的名称（“shortcut icon”）。这样做的结果是所有浏览器都可以理解此-{zh-cn:代码;
    zh-tw:程式碼;}-。只有当希望为新浏览器提供另一种备用图像（例如动画GIF）时，才有必要添加第二行。

<!-- end list -->

  - 在HTML中，`link`元件必须在`head`元件里（在`<head>`和<code>
    </head>
    </code>之间）。
  - 对于XHTML，link必须使用“`/>`”结束（或“`>`</link>”），而不可以使用“`>`”结束。
  - `href`可以，但不必指向`/favicon.ico`的位置。它可以指向任何URL。
  - 图像通常可以使用任何被浏览器支持的图像格式。
  - `.ico`文件格式通常可以被所有可以显示favicon的浏览器读取。
  - 设置-{zh-cn:服务器;
    zh-tw:伺服器;}-，以发送正确的[MIME标识](https://zh.wikipedia.org/wiki/MIME "wikilink")：
      - ICO 文件 `image/vnd.microsoft.icon`（或者亦可出于-{zh-cn:兼容性;
        zh-tw:相容性;}-原因使用`image/x-icon`。然而最好使用[IANA注册的MIME类型](http://www.iana.org/assignments/media-types/image/vnd.microsoft.icon)，因为多数主流浏览器现在支持它）
      - GIF 文件 `image/gif`
      - PNG 文件 `image/png`
  - 使用适当的[分辨率和](../Page/分辨率.md "wikilink")[色深](https://zh.wikipedia.org/wiki/色深 "wikilink")。
      - ICO：包括多种分辨率（最常使用的是16×16和32×32，[Mac OS
        X有时使用](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")64×64和128×128）以及位深（比特每像素）（多数使用4、8、24
        bpp，即16、256和1600万色）。
      - GIF：使用16×16，256色。
      - PNG：使用16×16，256色或24位。

**注意**：当`favicon.ico`被置于文档根目录时，将会被一些不处理`link`元件的浏览器找到，即使没有您的站点上没有指向它的链接。

## 参考

## 外部链接

  - [W3C网络标准化组织关于如何-{zh-cn:添加;
    zh-tw:加入;}-favicon的建议](http://www.w3.org/2005/10/howto-favicon)

  - [如何使用PHP添加favicon](http://www.controlstyle.com/articles/programming/text/php-favicon/)。

  - MSDN Library: [Win32的-{zh-cn:图标;
    zh-tw:圖示;}-](http://msdn2.microsoft.com/en-us/library/ms997538.aspx)

  - Online favicon editor: [-{zh-cn:在线;
    zh-tw:線上圖示;}-制作Favicon-{zh-cn:图标;
    zh-tw:圖示;}-](http://favicon.tugai.net/)

  - （有些过时的-{zh-cn:信息; zh-tw:資訊;}-）

  - MSDN Library:
    \[<http://msdn.microsoft.com/zh-cn/library/gg491740(v=vs.85>)
    自定义站点图标\]

[Category:電腦圖示](https://zh.wikipedia.org/wiki/Category:電腦圖示 "wikilink")
[Category:網頁瀏覽器](https://zh.wikipedia.org/wiki/Category:網頁瀏覽器 "wikilink")
[Category:全球資訊網](https://zh.wikipedia.org/wiki/Category:全球資訊網 "wikilink")

1.

2.

3.
4.

5.