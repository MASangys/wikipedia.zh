**CSS 滤器**是一个[编程技术](https://zh.wikipedia.org/wiki/编程 "wikilink")，指根据[浏览器的版本](https://zh.wikipedia.org/wiki/网络浏览器 "wikilink")、功能来隐藏或显示[CSS](../Page/层叠样式表.md "wikilink") [标记语言](https://zh.wikipedia.org/wiki/标记语言 "wikilink")。各浏览器对层叠样式表行为的解释以及[W3C](../Page/万维网联盟.md "wikilink")[标准](../Page/标准.md "wikilink") 的支持不同。有时 CSS 滤镜也用来在多个渲染效果不同的浏览器中取得一致的表现。

## 前缀 滤镜

此滤镜使用浏览器[前缀样式代码](https://zh.wikipedia.org/wiki/层叠样式表#CSS3 "wikilink")，而这些代码会被其它浏览器忽略。所以 `-moz-color:red;` 定义将在所有 [Gecko](../Page/Gecko.md "wikilink") 浏览器中显示红色，而其它浏览器则为默认颜色。

``` css
p {
  color: #000;         /* 段落在忽略下面所有规则的浏览器中显示为黑色 */
  -moz-color: #F00;    /* 段落在 Gecko 浏览器中显示为红色 */
  -webkit-color: #00F; /* 段落在 Webkit 浏览器中显示为蓝色 */
  -khtml-color: #0F0;  /* 段落在 KHTML 浏览器中显示为绿色 */
  -xv-color: #FF0;     /* 段落在 Presto 浏览器中显示为黄色 */
}
```

特定浏览器的样式只能定义在忽略它的浏览器的样式定义之**后**，或者使用`!important`标记和无前缀无`!important`的样式同时使用。这样有前缀的样式会覆盖无前缀的样式，达到特定浏览器想要的效果。

## 反斜线注释

这个 hack 利用了 [Internet Explorer for Mac](../Page/Internet_Explorer_for_Mac.md "wikilink") 的一个和[注释](../Page/注释_\(计算机语言\).md "wikilink")[解析相关的](https://zh.wikipedia.org/wiki/解析 "wikilink")[错误](../Page/程序错误.md "wikilink")。一段以 `\*/` 结束的注释在 IE Mac 下不能被正常关闭，由此哪些需要被 IE Mac 忽略的样式可以置于此注释中。样式之后需要另一段注释代码来关闭 IE Mac 下的注释。\[1\]

``` css
/* IE Mac 下忽略下一条样式 \*/
selector { ...styles... }
/* IE Mac 下停止忽略 */
```

## 盒模型 hack

称为 "盒模型 hack" 是因为它经常被用来处理 [IE盒模型缺陷](../Page/IE盒模型缺陷.md "wikilink")，这个方法对 [Internet Explorer](../Page/Internet_Explorer.md "wikilink") 使用了一个与其它浏览器不同的属性集。IE 在版本[6](../Page/Internet_Explorer_6.md "wikilink") 已经修正了这个盒模型错误，通过在文档中引入一个 [文件类型描述](https://zh.wikipedia.org/wiki/文件类型描述 "wikilink")『[HTML](../Page/HTML.md "wikilink") 规范中必需的』。

``` css
#elem {
  width: [IE 宽度];
  voice-family: "\"}\"";
  voice-family: inherit;
  width: [其它浏览器宽度];
}
html>body #elem {
  width: [其它浏览器宽度];
}
```

第一段 `voice-family` 语句设为字符串 `"}"` ，但是 IE 一个解析错误会阻断它为一个单 [反斜线](../Page/反斜线.md "wikilink") 跟着一个闭合 [括号](https://zh.wikipedia.org/wiki/Bracket#Curly_brackets_or_braces_.7B_.7D "wikilink")，作为样式指令的结尾。选择 `voice-family` 是因为它不会影响屏幕 [样式表](../Page/层叠样式表.md "wikilink") 上的表现。第二个使用了`html>body` hack 的规则是为了像 [Opera](https://zh.wikipedia.org/wiki/Opera "wikilink") 5 那样的也有这个解析错误但没有盒模型错误（同时，支持子选择器）的浏览器。\[2\]

## 下划线 hack

Internet Explorer 版本 6 以下承认有此前缀的属性（会丢掉此前缀）。所有其它浏览器都会忽略这样的无效属性。因此，有一个 [下划线](https://zh.wikipedia.org/wiki/下划线 "wikilink") 或 [连字符](https://zh.wikipedia.org/wiki/连字符 "wikilink") 前缀的属性是仅仅应用到 Internet Explorer 6 以及以下版本。

``` css
#elem {
  width: [W3C 模型宽度];
  _width: [BorderBox 模型];
}
```

此 hack 使用了无效的 CSS\[3\] 和一个正常的 CSS 指令来达到相似的结果。因此有些人不推荐使用它。另一方面此 hack 因不改变选择器而使维护和扩展 CSS 文件变容易。

## 星号 hack

Internet Explorer 版本 7 以及以下承认非字母数字（除了 [下划线](https://zh.wikipedia.org/wiki/下划线 "wikilink") 或 [连字符](https://zh.wikipedia.org/wiki/连字符 "wikilink")）前缀的属性（会丢掉此前缀）。这样的属性对所有其它浏览器都是无效的。因此，一个非字母数字（除了 [下划线](https://zh.wikipedia.org/wiki/下划线 "wikilink") 或 [连字符](https://zh.wikipedia.org/wiki/连字符 "wikilink")）前缀的属性，例如一个 [星号](https://zh.wikipedia.org/wiki/星号 "wikilink"),是仅仅应用到Internet Explorer 7 以及以下版本。

``` css
#elem {
  width: [W3C 模型宽度];
  *width: [BorderBox 模型];
}
```

此 hack 使用了无效的 CSS\[4\] 和一个正常的 CSS 指令来达到相似的结果。因此有些人不推荐使用它。另一方面此 hack 因不改变选择器而使维护和扩展 CSS 文件变容易。

## 星号 HTML hack

`html` 元素是 W3C 标准 [DOM](../Page/文档对象模型.md "wikilink") 的根元素，但是 Internet Explorer versions 4 到 6 有一个神秘的父级元素。\[5\] 完全兼容的浏览器会忽略 `* html` 选择器，而 IE4-6 则正常处理它。这样就提供了一个对这些浏览器适用而其它浏览器会忽略的规则。例如，下面的规则指定了 Internet Explorer 4-6 的文字大小，而不会影响其它浏览器。

``` css
  * html p {font-size: 5em; }
```

此 hack 使用了完全有效的 CSS。\[6\]

## 星号 加号 hack

尽管 Internet Explorer 7 不再认识经典的星号 HTML hack\[7\] ，它却引入了一个相似的新的选择器 hack：

``` css
  *:first-child+html p { font-size: 5em; }
```

或…

``` css
  *+html p { font-size: 5em; }
```

这段代码将会应用到 Internet Explorer 7 ，而不会应用到其它任意浏览器中。注意此 hack 只在 IE7 标准模式下起作用；它在诡异模式下不起作用。此 hack 也支持 Internet Explorer 8 的兼容性视图（IE7 标准模式），但不支持 IE8 标准模式。和星号 HTML hack 一样，此 hack 使用了有效的 CSS。\[8\]

## 子选择器 hack

Internet Explorer 版本 6 以及以下不支持 『子选择器』（ `>` ），则样式只应用到所有其它浏览器上。例如下面的规则会使文字颜色在 Firefox 中为蓝色，而不会影响 IE 7 之前的版本。\[9\]

``` css
  html > body p { color: blue; }
```

尽管 IE7 添加了子选择器支持，还是发现了一个变异的 hack 可以将 Internet Explorer 7 也排除在外。当一个空注释跟着子选择器时， IE7 会丢掉后面的规则，就像之前版本的 IE 一样。

``` css
  html >/**/ body p { color: blue; }
```

## 反选伪类 hack

Internet Explorer 8 以及以下不支持 [CSS3](https://zh.wikipedia.org/wiki/CSS3 "wikilink") `:not()` [negation pseudo-class](http://www.w3.org/TR/css3-selectors/#negation).\[10\] Internet Explorer 9 添加了 CSS3 伪类支持，包括反选伪类。\[11\]

``` css
.yourSelector {
  color: black;
} /* 给 IE 的值 */

html:not([dummy]) .yourSelector {
  color: red;
} /* Safari, Opera, Firefox, and IE9+ 的值 */
```

反选伪类接受任意选择器：类型选择器，通用选择器，属性选择器，类选择器，ID 选择器，或者伪类选择器。（不包括伪元素和反选伪类自身）。 \[12\] 设置反选伪类后，所有不匹配的元素都会应用相应样式。

一个变异 hack ，使用 `:root` 伪类，也不会被 Internet Explorer 8 以及以下版本解析。

## body:empty hack

CSS3 引入了 :empty 伪类，支持选择没有内容的元素。不过， Gecko 1.8.1 以及以下版本（ Firefox 2.0.x 及以下使用）处理 body:empty 不正确，有内容时（通常都会有内容）也被选中。这就可以给 Firefox 2.0.x 及以下版本指定不同的样式规则，而不同于其它使用同样引擎的浏览器。\[13\]

``` css
/* 使 p 元素在 Firefox 2.0.x 及以下版本隐 */

body:empty p {
  display: none;
}
```

此 hack 使用了有效的 CSS。

## \!important 妙用

Internet Explorer 7 及以下版本有一些与设置优先值的 \!important 相关的古怪行为。\[14\] IE7 和之前版本实际上在 important 位置接受任意字符串且能正常处理，而其它浏览器则会忽略它。这就可以仅仅给这些浏览器指定属性值。

``` css
/* 使文字颜色在 IE7 以及以下版本为蓝色，所有其它浏览器中为黑色 */
body {
  color: black;
  color: blue !ie;
}
```

相似的， IE7 以及之前版本的 \!important 声明后也接受非字母数字的字符，而其它浏览器会忽略它。

``` css
body {
  color: black;
  color: blue !important!;
}
```

上面的 hacks 都使用了无效的 CSS。 Internet Explorer **6** 及以下也有一个 \!important 相关的问题，在同一个代码块中，当同一个元素的同一个属性，一个有而另一个没有 \!important 声明的值时，第一个值应该覆盖第二个值，但 IE6 及以下版本不会。

``` css
/* 使文字在IE6 及以下为蓝色 */
body {
  color: black !important;
  color: blue;
}
```

这个 hack 使用了有效的 CSS。

## 动态属性

Internet Explorer 版本 5 到 7 中支持一种私有的能动态改变 CSS 属性的语法，有时也称为一个 CSS 表达式。\[15\] 动态属性通常和其它 hack 一起使用以填补一些 Internet Explorer 老版本不支持的属性。

``` css
div {
  min-height: 300px;

  /* 在 IE6 中模拟 min-height */
  _height: expression(document.body.clientHeight < 300 ? "300px" : "auto");
}
```

## 条件注释

条件注释是微软 Internet Explorer 对 HTML 代码中解析的条件语句。

``` html4strict
<head>
  <title>测试</title>
  <link href="all_browsers.css" rel="stylesheet" type="text/css" />
  <!--[if IE]> <link href="ie_only.css" rel="stylesheet" type="text/css"> <![endif]-->
  <!--[if lt IE 7]> <link href="ie_6_and_below.css" rel="stylesheet" type="text/css"> <![endif]-->
  <!--[if !lt IE 7]> <![IGNORE[--><![IGNORE[]]> <link href="recent.css" rel="stylesheet" type="text/css"> <!--<![endif]-->
   <link href="not_ie.css" rel="stylesheet" type="text/css"> <!--<![endif]-->
</head>
```

## 批评

使用 hacks 隐藏代码经常导致页面在浏览器[更新后不正常显示](https://zh.wikipedia.org/wiki/修补程序 "wikilink")。很多被用来向 IE 6 及以下版本隐藏 CSS 的 hacks 都在 IE 7中失效了，因为 IE 7 支持更多的 CSS 标准。 [微软](../Page/微软.md "wikilink") Internet Explorer 开发团队已经要求人们使用条件注释来代替 hacks。\[16\]

## 参见

  - [瀏覽器引擎CSS支援比較](../Page/瀏覽器引擎CSS支援比較.md "wikilink")
  - [条件注释](../Page/条件注释.md "wikilink")

## 參考來源

## 外部链接

  - [CSS Filters](http://webarchive.loc.gov/all/20101122215458/http://centricle.com/ref/css/filters/) – A fairly complete table of CSS hacks which show and hide rules from specific browsers.
  - [CSS Filters – CSS-only Filters Summary](https://web.archive.org/web/20090218214852/http://www.communis.co.uk/dithered/css_filters/css_only/index.html) – More CSS filters.
  - [Filters and Cross-Over](https://web.archive.org/web/20110719054958/http://www.lipfert-malik.de/webdesign/tutorial/bsp/css-weiche-filter.html) – CSS filters. Parsing errors marked red.
  - [- CSS Browser Selector](http://rafael.adm.br/css_browser_selector) - Allows to combine browser specific CSS in single stylesheet (using JavaScript).
  - [- \#IEroot](http://www.positioniseverything.net/articles/cc-plus.html) - Targeting IE with a single stylesheet containing all CSS (without using JavaScript, but using conditional comments to assign browser-specific tag to arbitrary content root \[div\])

[Category:层叠样式表](https://zh.wikipedia.org/wiki/Category:层叠样式表 "wikilink")

1.  [QuirksMode - CSS Hacks](http://www.quirksmode.org/css/csshacks.html)

2.

3.
4.
5.

6.

7.  [The IEBlog](http://blogs.msdn.com/ie/archive/2005/10/12/480242.aspx)

8.
9.
10.

11.

12.

13.
14.
15. [About Dynamic Properties](http://msdn.microsoft.com/en-us/library/ms537634.aspx)

16. [IEBlog – Call to action: The demise of CSS hacks and broken pages](http://blogs.msdn.com/ie/archive/2005/10/12/480242.aspx)