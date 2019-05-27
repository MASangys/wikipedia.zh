[W3C_and_Internet_Explorer_box_models.svg](https://zh.wikipedia.org/wiki/File:W3C_and_Internet_Explorer_box_models.svg "fig:W3C_and_Internet_Explorer_box_models.svg")

**IE盒模型缺陷**（）是指早期版本的[Internet
Explorer调整网页元素大小的方法](../Page/Internet_Explorer.md "wikilink")，和[W3C为](https://zh.wikipedia.org/wiki/W3C "wikilink")[层叠样式表](../Page/层叠样式表.md "wikilink")（CSS）语言推荐的标准方式不同。在[Internet
Explorer
6中](../Page/Internet_Explorer_6.md "wikilink")，浏览器支持一种解决了这种差异的可选的渲染模式（叫做「遵从标准模式」）。然而，出于向后兼容的原因，所有版本的IE（截至IE
9及IE 10 Developer Preview）仍然默认表现为通常的，非标准的模式。[Internet Explorer for
Mac不受这种非标准行为影响](../Page/Internet_Explorer_for_Mac.md "wikilink")。此外，[Internet
Explorer 10于其Consumer](../Page/Internet_Explorer_10.md "wikilink")
Preview之中也改变其默认[怪异模式为一种更加符合规范的类似于非IE浏览器的怪异模式](../Page/怪异模式.md "wikilink")\[1\]。

## 背景

CSS的规范描述了[网页的元素如何被图形浏览器展现](https://zh.wikipedia.org/wiki/网页 "wikilink")。CSS1的规范第四节定义了一个给块级元素
- 比如说`p`和`blockquote` - 一个宽度和高度，和3个级别的环绕它的框 - `padding`,
`border`,和`margin` -
的「格式化模型」\[2\]。尽管该规范从来没有明确使用过「盒模型」一词，这个词已经被网页开发人员和网页浏览器供应商广泛使用。

在HTML
4和CSS之前，很少HTML元素既支持border也支持padding，所以对一个元素的宽度和高度的定义并不是很有争议。然而，它取决于元素的不同而变化。在HTML，table的width属性定义了一个表格
- 包括其边框 -
的宽度\[3\]。另一方面，图像（`img`）的width属性定义的则是这个图像本身（在任何边框之内）的宽度\[4\]。在早期的那些日子，唯一支持padding属性的元素就是表单元格。表单元格的宽度被定义为「以像素为单位的单元格内容的建议宽度，不包括填充」\[5\]。

在1996年，CSS\[6\]为多得多的元素引入了margin, border和padding属性。它通过了一个对margin,
border和padding的处理类似于表单元格的，相对于内容的宽度定义\[7\]。从此这已成为著名的W3C盒模型。

在那时，非常少浏览器供应商严格地实施了W3C盒模型。当时的两种主要浏览器，[Netscape](https://zh.wikipedia.org/wiki/Netscape "wikilink")
4.0和[Internet Explorer
4.0均定义宽度和高度为边框到边框的距离](../Page/Internet_Explorer_4.md "wikilink")\[8\]。这已被称为*传统*\[9\]或者*Internet
Explorer盒模型*。\[10\]

## 缺陷

根据由[万维网联盟](../Page/万维网联盟.md "wikilink")（W3C）于1996年发行并于1999年修订的CSS1所指定的，当任意一个块级元素的宽度或高度被显式指定，它应当只确定这个可见元素自身的宽度或高度，而padding,
border和margin随后被应用。\[11\]\[12\][Internet
Explorer在](../Page/Internet_Explorer.md "wikilink")「[怪异模式](../Page/怪异模式.md "wikilink")」（[怪异模式](../Page/怪异模式.md "wikilink")）则把内容，内边距（padding）和边框（border）全部包括在一个指定的宽度或高度之内；这导致它呈现出一个比遵从标准行为的结果更窄或者更短的盒子。\[13\]

## 解决方法

如果页面包含某些[HTML](../Page/HTML.md "wikilink")[文件类型描述](https://zh.wikipedia.org/wiki/文件类型描述 "wikilink")，则[Internet
Explorer
6及以上版本不受该缺陷的影响](../Page/Internet_Explorer_6.md "wikilink")。然而这些版本由于向后兼容的原因，在quirks模式下维持这种错误的行为。\[14\]例如，如下会触发quirks模式：

  - [文件类型描述缺失或不完整时](https://zh.wikipedia.org/wiki/文件类型描述 "wikilink")；
  - 遇到一个HTML 3或者更早的文档时；
  - 使用HTML 4.0
    Transitional或Frameset的文件类型描述且系统标识符（[URI](https://zh.wikipedia.org/wiki/URI "wikilink")）不存在时；
  - 在DOCTYPE声明之前出现SGML注释或者其它无法识别的内容时；
  - 文档任何地方有错误时；
  - 注释符相遇时出现末尾文字重复；
  - Internet Explorer
    6也会在DOCTYPE声明之前出现[XML声明时使用quirks模式](../Page/XML.md "wikilink")。\[15\]

各种解决方法已被制定以迫使Internet Explorer 5以及更早版本使用W3C盒模型显示网页。这些解决方法一般是利用Internet
Explorer的CSS选择器作用的无关的缺陷以从浏览器中隐藏某些规则。这些解决方法中，最为熟知的是由[Tantek
Çelik](../Page/坦塔克·塞里克.md "wikilink")，一个工作于IE for
Mac时发现这个主意的前微软员工，开发的「盒模型hack」。它涉及到为IE
for Windows指定一个宽度声明，随后使用另一个为CSS-兼容的浏览器指定的宽度重写它。第二条声明通过利用IE for
Windows解析CSS规则的其它缺陷而从该浏览器中隐藏。这些CSS「hacks」的实施直到Internet Explorer
7的公开发行为止都被进一步兼容。IE
7只修复了一部分问题，而不是其它的，这导致使用这些hacks的页面出现一些意想不到的问题。\[16\]

盒模型hacks已证明是不可靠的，因为它们依赖于浏览器对CSS支持的缺陷，而这些缺陷可能会在以后的版本中被修复。由于这个原因，一些网页开发者改以推荐避免对同一个元素既指定width也指定padding或者使用[条件注释以及](../Page/条件注释.md "wikilink")/或[CSS
filters以解决在较旧版本Internet](https://zh.wikipedia.org/wiki/CSS_filter "wikilink")
Explorer上的盒模型缺陷。\[17\]\[18\]

## 对Internet Explorer盒模型的支持

网页设计者Doug Bowman说过起初的Internet Explorer盒模型代表了一个更好，更有逻辑性的方法。\[19\]
Peter-Paul Koch则给出了一个物理上盒子的例子，其尺寸总是指盒子自身的，包括可能的内边距 -
padding，但是从来不是它的内容。\[20\]他说这种盒模型对图形化设计者来说更有用，他们创造基于盒子的可见宽度而不是其内容的宽度的设计。\[21\]（使用过
VS 窗体设计器或类似工具的开发者会很容易理解 IE 盒模型的用意所在。）Bernie Zimmermann说Internet
Explorer盒模型更接近于HTML表格模型中单元格的尺寸和填充。\[22\]

W3C已在CSS3内包括了一个box-sizing属性。当为一个元素指定`box-sizing:
border-box;`时，该元素的任意padding或border都在指定的width和height的*内部*，「就像通常旧版HTML用户代理所实施的那样」。\[23\]
[Internet Explorer
8](../Page/Internet_Explorer_8.md "wikilink")，[WebKit浏览器如](../Page/WebKit.md "wikilink")[Safari](../Page/Safari.md "wikilink")
5.1+和[Google
Chrome](../Page/Google_Chrome.md "wikilink")，[Opera](https://zh.wikipedia.org/wiki/Opera "wikilink")
7.0和以后版本，和[Konqueror](../Page/Konqueror.md "wikilink")
3.3.2和以后版本均支持CSS3的box-sizing属性。基于[Gecko的浏览器如](../Page/Gecko.md "wikilink")[Mozilla
Firefox使用](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")[厂商指定的](../Page/专有软件.md "wikilink")`-moz-box-sizing`属性以支持相同功能\[24\]。

## 注释

## 参考文献

## 外部链接

  - [Tantek Çelik's description of the "box model
    hack"](http://tantek.com/CSS/Examples/boxmodelhack.html)
  - [Getting Internet Explorer to Play Well with
    CSS](https://web.archive.org/web/20061209090244/http://webdesign.about.com/od/css/a/aaboxmodelhack.htm)
    - 在about.com的概述了避开盒模型缺陷和其它IE问题的各种方式的文章。
  - [Cascading Style Sheet Compatibility in Internet
    Explorer 7](http://msdn2.microsoft.com/en-us/library/Bb250496) -
    MSDN article, July 2006.
  - [CSS Box Model differences in Firefox and Internet
    Explorer](https://web.archive.org/web/20100103111556/http://renownedmedia.com/blog/css-box-model-differences-in-firefox-and-internet-explorer/)
    - 对Mozilla Firefox与Internet Explorer之间渲染方式的差异的进一步解释。

{{-}}

[Category:Internet_Explorer](https://zh.wikipedia.org/wiki/Category:Internet_Explorer "wikilink")
[Category:程式錯誤](https://zh.wikipedia.org/wiki/Category:程式錯誤 "wikilink")
[Category:层叠样式表](https://zh.wikipedia.org/wiki/Category:层叠样式表 "wikilink")

1.  [Interoperable HTML5 Quirks Mode in
    IE10](http://blogs.msdn.com/b/ie/archive/2011/12/14/interoperable-html5-quirks-mode-in-ie10.aspx),
    IE Blog, [MSDN](https://zh.wikipedia.org/wiki/MSDN "wikilink")

2.

3.

4.

5.

6.

7.

8.

9.

10.

11.
12.

13.

14.  "Pages authored under non-strict mode (quirks)will not change
    behavior in IE7 and will not be affected by broken CSS filters.Pages
    authored under non-strict mode（or“quirks mode”）will not change
    behavior in IE7."

15.  "The following examples show how to use the \!DOCTYPE declaration
    to specify the DTD a document conforms to, and to switch Internet
    Explorer 6 and later to standards-compliant mode."

16.
17.

18.

19.

20.
21.

22.

23.

24.