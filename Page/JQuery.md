> 本文内容由[JQuery](https://zh.wikipedia.org/wiki/JQuery)转换而来。


**jQuery**是一套跨[瀏覽器的](https://zh.wikipedia.org/wiki/瀏覽器 "wikilink")[JavaScript](../Page/JavaScript.md "wikilink")[函式庫](../Page/函式庫.md "wikilink")，简化[HTML](../Page/HTML.md "wikilink")與JavaScript之間的操作。\[1\]由[約翰·雷西格](../Page/約翰·雷西格.md "wikilink")（）在2006年1月的BarCamp NYC上釋出第一個版本。目前是由Dave Methvin领导的开发团队进行开发。全球前10,000个访问最高的网站中，有65%使用了jQuery，是目前最受歡迎的JavaScript函式庫\[2\]\[3\]。

## 簡介

jQuery是[开源软件](../Page/开源软件.md "wikilink")，使用[MIT许可证授权](https://zh.wikipedia.org/wiki/MIT许可证 "wikilink")。\[4\] jQuery的语法设计使得许多操作变得容易，如操作-{zh-hans:文档对象;zh-hant:文件;}-（document）、选择[文档对象模型](../Page/文档对象模型.md "wikilink")（）元素、创建[动画](../Page/动画.md "wikilink")效果、处理[事件](https://zh.wikipedia.org/wiki/事件_\(计算机\) "wikilink")、以及开发[Ajax程序](../Page/AJAX.md "wikilink")。jQuery也提供了给开发人员在其上创建[插件](../Page/插件.md "wikilink")的能力。这使开发人员可以对底层交互与动画、高级效果和高级主题化的组件进行抽象化。模块化的方式使jQuery函数库能够创建功能强大的[动态网页以及](https://zh.wikipedia.org/wiki/动态HTML "wikilink")[网络应用程序](../Page/网络应用程序.md "wikilink")。

[微软](../Page/微软.md "wikilink")和[诺基亚](../Page/诺基亚.md "wikilink")已宣布在他们的平台上绑定jQuery。\[5\]微软最初在[Visual Studio中集成了jQuery](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink")\[6\]以便在微软自己的[ASP.NET AJAX框架和](../Page/ASP.NET_AJAX.md "wikilink")[ASP.NET MVC Framework中使用](../Page/ASP.NET_MVC_Framework.md "wikilink")，而诺基亚则在他的Web运行时组件开发平台中集成了jQuery\[7\]。[MediaWiki](../Page/MediaWiki.md "wikilink")自从1.16版本后也开始使用jQuery\[8\]。

jQuery 1.3版以後，引入全新的[層疊樣式表](https://zh.wikipedia.org/wiki/層疊樣式表 "wikilink")（）选择器引擎Sizzle。\[9\] 同時不再提供Packed版本，因為解壓縮所消耗的時間，遠大於所節省的下載時間，且不利於[除錯](https://zh.wikipedia.org/wiki/除錯 "wikilink")，且已有Google AJAX Libraries API等公開站台提供jQuery的js的引用服务，故Packed版本原本的優點已蕩然無存。

## 特色

jQuery有下列特色：

  - 使用多浏览器开源选择器引擎*Sizzle*（jQuery项目的衍生产品）进行[DOM元素选择](../Page/文档对象模型.md "wikilink")\[10\]
  - 基于CSS选择器的DOM操作，使用元素的名称和属性（如id和class）作为选择DOM中节点的条件
  - 事件
  - 特效和動畫
  - [Ajax](../Page/AJAX.md "wikilink")
  - [Deferred和Promise对象来控制异步处理](https://zh.wikipedia.org/wiki/Futures_and_promises "wikilink")
  - [JSON](../Page/JSON.md "wikilink")解析
  - 通过插件扩展
  - 工具函数，如特征检测
  - 现代浏览器中原生的兼容性方法，但对于旧版浏览器需要后备（fallback）方法，比如`inArray()`和`each()`
  - 多浏览器（不要与[跨浏览器混淆](../Page/浏览器兼容性.md "wikilink")）支持

### 浏览器支持

jQuery 3.0及以后版本支持“当前−1版本” 的[Firefox](../Page/Firefox.md "wikilink")、[Chrome](../Page/Google_Chrome.md "wikilink")、[Safari](../Page/Safari.md "wikilink")、[Edge](../Page/Microsoft_Edge.md "wikilink")（就是说当前稳定版本以及当前稳定版本之前的一个版本），另外还支持[Internet Explorer](../Page/Internet_Explorer.md "wikilink") [9以后的IE版本](../Page/Internet_Explorer_9.md "wikilink")。在移动端支持[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink") 7+和[Android](../Page/Android.md "wikilink") 4.0+。\[11\]

## 用法

### 加載jQuery

jQuery库是包含所有公共DOM、事件、效果和Ajax函数的一个JavaScript文件。可以通过链接到本地副本或公共服务器提供的许多副本之一把jQuery包含在网页中。jQuery有一个由MaxCDN托管的[內容傳遞網路](../Page/內容傳遞網路.md "wikilink")（CDN）。\[12\] Google和微软也托管了jQuery。\[13\]\[14\]

``` html5
<script src="jquery.js"></script>
```

也可以直接从CDN中加载jQuery：

``` html5
<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
```

### 使用风格

jQuery有两种使用风格：

  - 通过jQuery对象的[工厂方法](../Page/工厂方法.md "wikilink")`$`函数。这些函数通常称作*命令*，[*可以链接*](https://zh.wikipedia.org/wiki/method_chaining "wikilink")，因为它们都返回jQuery对象。
  - 通过`$.`开头的函数。这些是*工具函数*，它们不直接作用于jQuery对象。

在jQuery中访问和操作多个DOM节点通常从用CSS选择器字符串调用`$`函数开始。这会返回一个引用[HTML](../Page/HTML.md "wikilink")页面中所有匹配元素的jQuery对象。比如`$("div.test")`，会返回一个拥有class `test`的所有`div`元素的jQuery对象。可以通过调用返回的jQuery对象或节点本身的方法来操作这个节点集。

### 无冲突模式

jQuery还有`.noConflict()`模式，这会释放对`$`的控制。如果其他的库也使用`$`作为标识符的话，这个模式会比较有用。在无冲突模式下，开发人员可以使用`jQuery`替代`$`而不会缺失任何功能。\[15\]

### 典型的代码开头

通常，jQuery是通过将初始化代码和事件处理函数放入`$(`*`handler`*`)`中来使用的。当浏览器构建DOM并发送加载事件时触发。

``` javascript
$(function () {
   // 这个匿名函数是页面加载时要调用的第一个函数。
   // jQuery代码，事件处理回调写在这里
});
```

或者

``` javascript
$(fn); // 在其他地方定义的名为fn的函数，是页面加载时要调用的第一个函数。
```

或者我们也可以使用

``` javascript
$(document).ready(function(){
   // 这是页面加载时要调用的第一个函数。
   // jQuery代码，事件处理回调写在这里
});
```

由于历史原因，`$(document).ready(callback)`已经成为DOM就绪时运行代码的实质性标志。但jQuery 3.0以后，鼓励开发人员使用更简短的`$(handler)`标志。\[16\]

对尚未加载的元素进行事件处理的回调函数可以作为[匿名函数](../Page/匿名函数.md "wikilink")在`.ready()`内部注册。这些事件处理函数只会在触发事件时被调用。例如，下面的代码添加了一个，用于在`img`图像元素上单击鼠标事件的处理函数。

``` javascript
$(function () {
   $('img').on('click', function () {
      // 处理页面中任何img元素上的click事件
   });
});
```

### 链接（Chaining）

jQuery命令通常返回一个jQuery对象，因此命令可以链接：

``` javascript
$('div.test')
  .add('p.quote')
  .addClass('blue')
  .slideDown('slow');
```

这行代码找到了所有class属性为`test`的`div`标签，以及所有class属性为`quote`的`p`标签的并集，对于所有匹配的元素都增加一个`blue`的class属性，并用一个动画增加了它们的高度。函数`$`与`add`影响匹配的元素有哪些，而`addClass`和`slideDown`影响了引用的节点。

一些jQuery函数返回特定的值（例如`$('#input-user-email').val()`）。在这些情况下，由于该值没有引用jQuery对象，链接将不起作用。

### 创建新的DOM元素

除了通过jQuery对象层次结构访问DOM节点外，如果作为参数传递给$()的字符串看起来像HTML，也可以创建新的DOM元素。例如，这行代码找到ID为`carmakes`的HTML `select`元素，并会增加一个value属性为"VAG"、文字为"Volkswagen"的`option`元素：

``` javascript
$('select#carmakes')
  .append($('<option />')
    .attr({value:"VAG"})
    .append("Volkswagen"));
```

### 工具函数

带有`$.`前缀的jQuery函数是工具函数，或者说是影响全局属性和行为的函数。下面的例子使用了函数`each()`来遍历数组：

``` javascript
$.each([1,2,3], function() {
  console.log(this + 1);
});
```

这会将“2”，“3”，“4”写入控制台。

### Ajax

使用`$.ajax()`可以执行[跨浏览器的](../Page/浏览器兼容性.md "wikilink")[Ajax请求](../Page/AJAX.md "wikilink")。其相关方法可用于加载和处理远程数据。

``` javascript
$.ajax({
  type: 'POST',
  url: '/process/submit.php',
  data: {
    name : 'John',
    location : 'Boston',
  },
}).done(function(msg) {
  alert('Data Saved: ' + msg);
}).fail(function(xmlHttpRequest, statusText, errorThrown) {
  alert(
    'Your form submission failed.\n\n'
      + 'XML Http Request: ' + JSON.stringify(xmlHttpRequest)
      + ',\nStatus Text: ' + statusText
      + ',\nError Thrown: ' + errorThrown);
});
```

本示例将数据`name=John`和`location=Boston`发布到服务器上的`/process/submit.php`。当这个请求结束时，会调用success函数来提醒用户。如果请求失败，它会提醒用户，告知该请求的状态以及特定的错误。

#### 异步

请注意，上面的例子使用`$.ajax()` 的延期性来处理它的异步特性：`.done()`和`.fail()`创建仅在异步过程完成时才运行的回调。

## 發佈版本

JQuery目前分成1.x版、2.x版、3.x版，這三種發佈版本，後两种不再支援IE 6/7/8，前者透過jQuery Migrate plugin與先前版本保持相容。

<table>
<thead>
<tr class="header">
<th><p>版本号</p></th>
<th><p>发布日期</p></th>
<th><p>最新更新</p></th>
<th><p>大小（KB）</p></th>
<th><p>备注</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1.0</p></td>
<td></td>
<td></td>
<td></td>
<td><p>第一个稳定版本</p></td>
</tr>
<tr class="even">
<td><p>1.1</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1.2</p></td>
<td></td>
<td><p>1.2.6</p></td>
<td><p>54</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.3</p></td>
<td></td>
<td><p>1.3.2</p></td>
<td><p>55.9</p></td>
<td><p>将Sizzle选择器引擎引入核心</p></td>
</tr>
<tr class="odd">
<td><p>1.4</p></td>
<td></td>
<td><p>1.4.4</p></td>
<td><p>76</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.5</p></td>
<td></td>
<td><p>1.5.2</p></td>
<td><p>83</p></td>
<td><p>延迟回调管理，ajax模块重写</p></td>
</tr>
<tr class="odd">
<td><p>1.6</p></td>
<td></td>
<td><p>1.6.4</p></td>
<td><p>89</p></td>
<td><p>显著改善attr()与val()的性能</p></td>
</tr>
<tr class="even">
<td><p>1.7</p></td>
<td></td>
<td><p>1.7.2 ()</p></td>
<td><p>92</p></td>
<td><p>新的事件API：.on()和.off()，而旧的API仍然支持。</p></td>
</tr>
<tr class="odd">
<td><p>1.8</p></td>
<td></td>
<td><p>1.8.3 ()</p></td>
<td><p>91.4</p></td>
<td><p>重写Sizzle选择器引擎，改善动画和$(html, props)的灵活性。</p></td>
</tr>
<tr class="even">
<td><p>1.9</p></td>
<td></td>
<td><p>1.9.1 ()</p></td>
<td><p>90</p></td>
<td><p>移除弃用接口，清理代码</p></td>
</tr>
<tr class="odd">
<td><p>1.10</p></td>
<td></td>
<td><p>1.10.2 ()</p></td>
<td><p>91</p></td>
<td><p>修复了1.9和2.0 beta版本周期的bug和差异</p></td>
</tr>
<tr class="even">
<td><p>1.11</p></td>
<td></td>
<td><p>1.11.3 ()</p></td>
<td><p>95.9</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1.12</p></td>
<td></td>
<td><p>1.12.4 ()</p></td>
<td><p>95</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2.0</p></td>
<td></td>
<td><p>2.0.3 ()</p></td>
<td><p>81.1</p></td>
<td><p>除去对IE 6-8的支持以提高性能，并降低文件大小</p></td>
</tr>
<tr class="odd">
<td><p>2.1</p></td>
<td></td>
<td><p>2.1.4 ()</p></td>
<td><p>82.4</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2.2</p></td>
<td></td>
<td><p>2.2.4 ()</p></td>
<td><p>85.6</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3.0</p></td>
<td><p>[17]</p></td>
<td><p>3.0.0 ()</p></td>
<td><p>86.3</p></td>
<td><p>Deferred、$.ajax、$.when支持Promises/A+，令.data()兼容HTML5</p></td>
</tr>
<tr class="even">
<td><p>3.1</p></td>
<td></td>
<td><p>3.1.1 ()</p></td>
<td><p>86.3</p></td>
<td><p>加入jQuery.readyException，ready handler错误现在不会不显示了</p></td>
</tr>
<tr class="odd">
<td><p>3.2</p></td>
<td><p>[18]</p></td>
<td><p>3.2.1 ()</p></td>
<td><p>84.6</p></td>
<td><p>增加了对检索<code>&lt;template&gt;</code>元素内容的支持，弃用了多种旧方法。</p></td>
</tr>
<tr class="even">
<td><p>3.3</p></td>
<td></td>
<td><p>3.3.1 ()</p></td>
<td><p>84.8</p></td>
<td><p>弃用旧函数，函数现在可以接受类，并支持其写成数组格式。</p></td>
</tr>
</tbody>
</table>

## 子项目

以下项目均是源自于Interface插件

### jQuery UI

基于jQuery的[用户界面](../Page/用户界面.md "wikilink")库，包括[拖放](https://zh.wikipedia.org/wiki/拖放 "wikilink")、[缩放](../Page/缩放.md "wikilink")、[对话框](../Page/对话框.md "wikilink")、[标签页等多个组件](https://zh.wikipedia.org/wiki/标签 "wikilink")。

### jQuery Tools

jQuery Tools是一個第三方的套件，基於jQuery。包括了[标签页](https://zh.wikipedia.org/wiki/标签 "wikilink")、表單驗證、滑鼠滾輪事件等多个组件。\[19\]

### jQuery Mobile

基於jQuery的手機網頁製作工具，jQuery Mobile的網站上包含了網頁的設計工具、主題設計工具。另外jQuery Mobile的js插件包含了換頁、事件等的多項功能。\[20\]

## 参阅

  - [jQuery UI](https://zh.wikipedia.org/wiki/jQuery_UI "wikilink")

## 参考文献

## 相關書籍

  - 英文

<!-- end list -->

  - Learning jQuery, ISBN 1-84719-250-5
  - jQuery in Action, ISBN 1-933988-35-5
  - Pro JavaScript Techniques, ISBN 1-59059-727-3

<!-- end list -->

  - 中文

<!-- end list -->

  - 锋利的jQuery , ISBN 978-7-115-20701-2
  - 網頁設計？愛上jQuery, ISBN 978-986-6850-84-4
  - Learning jQuery中文版，ISBN 978-986-6761-60-7
  - jQuery UI & Plugins, ISBN 978-986-6551-11-6
  - 你不能錯過的 jQuery 指南 ISBN 9789572244173

## 外部連結

  - [jQuery官方网站](http://jquery.com/)

  - [jQuery UI官方网站](http://jqueryui.com/)

  - [jQuery - Google Code](http://code.google.com/p/jqueryjs/)（各版本JQuery的下載處）

  - （2008年4月3日，Google Tech Talks）

  - [Github上的](../Page/GitHub.md "wikilink")[jQuery](https://zh.wikipedia.org/wiki/jQuery "wikilink") [原始碼](http://github.com/jquery)

{{-}}

{{-}}

[Category:JavaScript函式庫](https://zh.wikipedia.org/wiki/Category:JavaScript函式庫 "wikilink") [Category:AJAX](https://zh.wikipedia.org/wiki/Category:AJAX "wikilink") [Category:用JavaScript編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用JavaScript編程的自由軟體 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11. \[//jquery.com/browser-support/ Browser Support | jQuery\]
12.
13.
14.
15.
16.
17.
18.
19. <http://jquerytools.org>
20. <http://jquerymobile.org>