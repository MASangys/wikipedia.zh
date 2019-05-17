[Web_fonts.png](https://zh.wikipedia.org/wiki/File:Web_fonts.png "fig:Web_fonts.png")
**Web字体排印**（）是指在[万维网上使用](../Page/万维网.md "wikilink")[字体](../Page/字型.md "wikilink")。首次创建[HTML时](../Page/HTML.md "wikilink")，字体和字形完全由每个[Web浏览器的设置控制](../Page/网页浏览器.md "wikilink")。直到1995年[Netscape引入了](../Page/網景.md "wikilink")标签，在HTML
3.2规范中标准化，单个网页才能控制字体显示。但是，标签指定的字体必须安装在用户的计算机上，否则将使用后备字体，例如浏览器的默认[无衬线字体或](../Page/无衬线体.md "wikilink")[等宽字体](../Page/等宽字体.md "wikilink")。1996年发布的第一个[CSS规范提供了相同的功能](https://zh.wikipedia.org/wiki/CSS "wikilink")。

CSS2规范于1998年发布，试图通过添加字体匹配、合成和下载来改进字体选择过程。这些技术没有得到太多的使用，并且在CSS2.1规范中被删除。不过，[Internet
Explorer在](../Page/Internet_Explorer.md "wikilink")1997年发布的[4.0版本中添加了对字体下载功能的支持](../Page/Internet_Explorer_4.md "wikilink")。\[1\]
字体下载后来被包含在CSS3字体模块中，并且已经在[Safari
3.1](../Page/Safari.md "wikilink")、[Opera
10和](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink")[Mozilla
Firefox
3.5中实现](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")。随后，人们增长了对Web字体排印以及字体下载应用的兴趣。

## CSS1

在第一个CSS规范中，\[2\] 作者通过一系列属性指定了字体特征：

  - `font-family`
  - `font-style`
  - `font-variant`
  - `font-weight`
  - `font-size`

所有字体都是按名称标识的。除了上面提到的属性之外，设计师没有办法设置字体的样式，也没有任何机制可以选择客户端系统上不存在的字体。

### Web安全字体

**Web安全字体**是很可能存在于各种[计算机系统中的](../Page/電子計算機.md "wikilink")[字体](../Page/计算机字体.md "wikilink")，并且[Web内容作者使用这些字体来增加内容显示为他们所选字体的可能性](../Page/網站.md "wikilink")。如果网站的访问者没有指定的字体，他们的浏览器会尝试根据作者指定的后备字体和通用族选择类似的替代方法，或者使用访问者操作系统中定义的字体替换。

### 微软的Web核心字体

[3_Core_Fonts_for_the_web.png](https://zh.wikipedia.org/wiki/File:3_Core_Fonts_for_the_web.png "fig:3_Core_Fonts_for_the_web.png")以来，Arial、Georgia和Verdana已经成为三种实打实的在Web上广泛使用的字体。\]\]

为确保所有Web用户都拥有基本的字体集，[微软于](../Page/微软.md "wikilink")1996年启动了[Web核心字体计划](../Page/網頁核心字型.md "wikilink")（该计划在2002年终止）。发布的字体包括[Arial](../Page/Arial.md "wikilink")、[Courier
New](../Page/Courier.md "wikilink")、[Times New
Roman](../Page/Times_New_Roman.md "wikilink")、[Comic
Sans](../Page/Comic_Sans.md "wikilink")、[Impact](https://zh.wikipedia.org/wiki/Impact "wikilink")、[Georgia](../Page/Georgia_\(字型\).md "wikilink")、[Trebuchet](../Page/Trebuchet_MS.md "wikilink")、[Webdings和](../Page/Webdings.md "wikilink")[Verdana](../Page/Verdana.md "wikilink")，其[EULA使这些字体可以自由分发](https://zh.wikipedia.org/wiki/最终用户许可协议 "wikilink")，但也限制了一些使用权限。他们的高渗透率使他们成为网页设计师的必备品。但是，大多数[Linux发行版默认不包含这些字体](../Page/Linux发行版.md "wikilink")。

[CSS2试图通过添加字体合成](../Page/层叠样式表.md "wikilink")、改进的字体匹配以及下载远程字体的能力来增加Web开发人员可用的工具。\[3\]

一些CSS2字体属性已从CSS2.1中删除，后来被包含在CSS3中。\[4\]\[5\]

### 后备字体

CSS规范允许将多种字体列为后备字体。\[6\] 在CSS中，`font-family`属性接受用逗号分隔的字体列表，如下所示：

`font-family: Helvetica, "Nimbus Sans L", "Liberation Sans", Arial, sans-serif;`

指定的第一个字体是首选字体。如果此字体不可用，则Web浏览器会尝试使用列表中的下一个字体。如果未找到指定的字体，浏览器将显示其默认字体。如果浏览器尝试显示指定字体中不存在的字符，则同样的过程也会在每个字符上发生。

### 通用字体族

为了让网页设计师能够控制网页上字体的外观，即使指定的字体不可用，CSS规范也允许使用多种通用[字体族](https://zh.wikipedia.org/wiki/Font_family_\(HTML\) "wikilink")。这些系列旨在根据其外观将字体分为几类。它们通常被指定为一系列后备字体中的最后一个，作为作者指定的任何字体都不可用的最后手段。有五个通用系列：\[7\]

<span style="font-family: sans-serif;">[Sans-serif](https://zh.wikipedia.org/wiki/Sans-serif "wikilink")</span>

  -
    字符上没有装饰性标记（或衬线）的字体。这些字体通常被认为更容易在屏幕上阅读。\[8\]

<span style="font-family: serif;">[Serif](../Page/衬线体.md "wikilink")</span>

  -
    字符上带有装饰性标记（或衬线）的字体。

<span style="font-family: monospace, monospace;">[Monospace](../Page/等宽字体.md "wikilink")</span>

  -
    所有字符同样宽的字体。

<span style="font-family: cursive;">[Cursive](../Page/手写体.md "wikilink")</span>

  -
    类似草书书写的字体。这些字体可能具有装饰性外观，但在小尺寸下很难阅读，因此通常要谨慎使用。

<span style="font-family: fantasy;">[Fantasy](https://zh.wikipedia.org/wiki/Fantasy_fonts "wikilink")</span>

  -
    可能包含符号或其他装饰属性但仍表示指定字符的字体。

## 参见

  - [Scalable Inman Flash
    Replacement](https://zh.wikipedia.org/wiki/Scalable_Inman_Flash_Replacement "wikilink")
  - WOFF中提到的RFC列表（2009-10-23草案）：
      - RFC 1950 ZLIB压缩数据格式规范
      - RFC 2119 在RFC中用于指示需求级别的关键词
      - RFC 4647 语言标签的匹配

## 参考文献

## 外部链接

  - [W3C CSS字体规范](https://www.w3.org/TR/css-fonts-3/)

[Category:數碼字體排印](https://zh.wikipedia.org/wiki/Category:數碼字體排印 "wikilink")
[Category:网页设计](https://zh.wikipedia.org/wiki/Category:网页设计 "wikilink")
[Category:全球資訊網](https://zh.wikipedia.org/wiki/Category:全球資訊網 "wikilink")

1.

2.

3.

4.

5.

6.

7.
8.