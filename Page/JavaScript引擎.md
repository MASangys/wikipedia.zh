**JavaScript引擎**是一个专门处理[JavaScript脚本的](../Page/JavaScript.md "wikilink")[虚拟机](../Page/虚拟机.md "wikilink")，一般会附带在[网页浏览器之中](../Page/网页浏览器.md "wikilink")。

## 历史

在2008年到2009年的第二次[浏览器大战之前](../Page/浏览器大战.md "wikilink")，JavaScript引擎仅简单地被当作能阅读执行[JavaScript](../Page/JavaScript.md "wikilink")[源代码的](../Page/源代码.md "wikilink")[直譯器](../Page/直譯器.md "wikilink")。

第一個JavaScript引擎由[布蘭登·艾克在](../Page/布蘭登·艾克.md "wikilink")[网景公司开发](../Page/网景公司.md "wikilink")，用于[Netscape
Navigator](../Page/网景导航者.md "wikilink")[网页浏览器中](../Page/网页浏览器.md "wikilink")。引擎的名字叫做[SpiderMonkey](../Page/SpiderMonkey.md "wikilink")，由[C++实现](../Page/C++.md "wikilink")。它自JavaScript
1.5升级以符合ECMA-262版本3。[Rhino引擎](../Page/Rhino_\(JavaScript引擎\).md "wikilink")，由网景公司的諾里斯·博伊德（Norris
Boyd）开发，由[Java实现](../Page/Java.md "wikilink")。像SpiderMonkey一样，Rhino符合ECMA-262版本3。JavaScript引擎的應用例子還包括：Apple
[Safari](../Page/Safari.md "wikilink") 4的Nitro，[Google
Chrome的](../Page/Google_Chrome.md "wikilink")[V8和Mozilla](../Page/V8_\(JavaScript引擎\).md "wikilink")
[Firefox
3.5的](../Page/Firefox歷史#Firefox_3.5.md "wikilink")[TraceMonkey](../Page/SpiderMonkey#TraceMonkey.md "wikilink")。

目前为止，最通用的JavaScript宿主环境是网页浏览器。网页浏览器一般使用公共的[API创建](../Page/API.md "wikilink")“宿主对象”以便于在[JavaScript中支持](../Page/JavaScript.md "wikilink")[DOM](../Page/DOM.md "wikilink")。

## 性能演進

一个典型的浏览器有一个图形引擎和一个独立的JavaScript引擎。这样JavaScript引擎能够被更方便的测试、重新生成或者在另一些项目中使用。例如：Carakan被用在Presto中，Nitro被用在WebKit中，SpiderMonkey被用在Gecko中，KJS被用在KHTML中，Rhino默认不包含任何布局引擎。但还有其他组合，例如：V8与WebKit被用于Google
Chrome中。JavaScript引擎能为程序员提供部分操作浏览器的功能（网络、DOM、外部事件、HTML5视频、canvas和存储）。

Sunspider是一个通过一系列关于JavaScript语言的脚本测试JavaScript引擎的速度。Sunspider不测试无关于JavaScript的特性（不使用HTML、CSS和无网络情况下）。

近幾年來，在浏览器开发者之间展开了一场开发更快的JavaScript引擎的竞赛。2008年，[Google
Chrome因它的JavaScript性能而倍受称赞](../Page/Google_Chrome.md "wikilink")，但是其它浏览器马上使用了更快的JavaScript引擎。之后，Google
Chrome在性能上获得领先，其长处在于它高速的性能和JavaScript的处理速度，这些都由许多网站在主要的浏览器之间的速度测试中得到验证\[1\]\[2\]\[3\]。随着WebKit的[Squirrelfish
Extreme和Mozilla的](../Page/WebKit#更進一步發展.md "wikilink")[TraceMonkey](../Page/SpiderMonkey.md "wikilink")
JavaScript虚拟机出现，Chrome的JavaScript执行速度就被超越了\[4\]\[5\]\[6\]\[7\]。Google丹麦在Chrome
2中开发了更快速的[V8引擎](../Page/V8_\(JavaScript引擎\).md "wikilink")。

2008年6月2日，WebKit开发团队发布了SquirrelFish\[8\]——一个能极大地提升Safari解释脚本速度的新的JavaScript引擎\[9\]。该引擎是Safari
4其中一个新特性，在2008年6月11日发布给程序员使用；最终此JavaScript引擎被称为Nitro。2009年6月30日，在Firefox
3.5發布的最新技術能“使某些情況下的速度提升20到40倍”\[10\]。

## JavaScript引擎

### 開發中

  - [Rhino](../Page/Rhino_\(JavaScript引擎\).md "wikilink")，由Mozilla基金会管理，开放源代码，完全以Java编写。
  - [SpiderMonkey](../Page/SpiderMonkey.md "wikilink")，第一款JavaScript引擎，早期用於[Netscape
    Navigator](../Page/Netscape_Navigator.md "wikilink")，現時用於[Mozilla
    Firefox](../Page/Mozilla_Firefox.md "wikilink")。
  - [V8](../Page/V8_\(JavaScript引擎\).md "wikilink")，开放源代码，由Google丹麦开发，是Google
    Chrome的一部分。
  - [JavaScriptCore](../Page/WebKit#JavaScriptCore.md "wikilink")，开放源代码，用於[Safari](../Page/Safari.md "wikilink")。
  - [Chakra
    (JScript引擎)](../Page/Chakra_\(JScript引擎\).md "wikilink")，用於[Internet
    Explorer](../Page/Internet_Explorer.md "wikilink")\[11\]。
  - [Chakra
    (JavaScript引擎)](../Page/Chakra_\(JavaScript引擎\).md "wikilink")，用於[Microsoft
    Edge](../Page/Microsoft_Edge.md "wikilink")。
  - [KJS](../Page/KJS.md "wikilink")，KDE的ECMAScript／JavaScript引擎，最初由开发，用于KDE项目的Konqueror网页浏览器中。

### 停止開發

  - [Linear A](../Page/Linear_A.md "wikilink")，用于Opera 4.0至6.1版本。

  - [Linear B](../Page/Linear_B.md "wikilink")，用于Opera 7.0至9.2版本。

  - [Futhark](../Page/Futhark.md "wikilink")，用于Opera 9.5至10.2版本。

  - [Carakan](../Page/Carakan.md "wikilink")，用于Opera 10.5至12.1版本。

  - ，开放源代码，由[布蘭登·艾克编写](../Page/布蘭登·艾克.md "wikilink")（他也编写了SpiderMonkey）。

  - [Tamarin](../Page/Tamarin_\(軟體\).md "wikilink")，由[Adobe
    Labs编写](../Page/Adobe_Systems.md "wikilink")。

## 实现

JavaScript是一种[ECMAScript方言](../Page/ECMAScript.md "wikilink")，在许多程序中得以实现，特别是在[网页浏览器](../Page/网页浏览器.md "wikilink")。这些方言通常扩展了语言，或者[标准库和相关](../Page/标准库.md "wikilink")[API](../Page/应用程序接口.md "wikilink")，例如[W3C定义的](../Page/万维网联盟.md "wikilink")[DOM](../Page/文档对象模型.md "wikilink")。这意味着以一种方言实现的程序不兼容于另一种方言的实现，除非程序使用了方言中的公共子集所具有的特性和API。

在实现和方言中存在着一些差别。一种语言的方言有一些与语言不同的地方。实现能够执行该语言或方言编写的程序。

<table>
<thead>
<tr class="header">
<th><p>应用程序（实现）</p></th>
<th><p>方言和最后版本</p></th>
<th><p>ECMAScript版本</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/Google_Chrome.md" title="wikilink">Google Chrome</a>，<a href="../Page/V8_(JavaScript引擎).md" title="wikilink">V8引擎</a></p></td>
<td><p><a href="../Page/JavaScript.md" title="wikilink">JavaScript</a></p></td>
<td><p>ECMA-262，版本6</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Mozilla_Firefox.md" title="wikilink">Mozilla Firefox</a>，<a href="../Page/Gecko.md" title="wikilink">Gecko排版引擎</a>，<a href="../Page/SpiderMonkey.md" title="wikilink">SpiderMonkey和</a><a href="../Page/Rhino_(JavaScript引擎).md" title="wikilink">Rhino</a></p></td>
<td><p><a href="../Page/JavaScript.md" title="wikilink">JavaScript</a> 1.8.5</p></td>
<td><p>ECMA-262，版本6</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Safari.md" title="wikilink">Safari</a>，<a href="../Page/WebKit#JavaScriptCore.md" title="wikilink">Nitro引擎</a></p></td>
<td><p><a href="../Page/JavaScript.md" title="wikilink">JavaScript</a></p></td>
<td><p>ECMA-262，版本6</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Microsoft_Edge.md" title="wikilink">Microsoft Edge</a>，<a href="../Page/Chakra_(JavaScript引擎).md" title="wikilink">Chakra引擎</a></p></td>
<td><p><a href="../Page/JavaScript.md" title="wikilink">JavaScript</a></p></td>
<td><p>EMCA-262，版本6</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Opera電腦瀏覽器.md" title="wikilink">Opera</a>，Carakan引擎（改用V8之前）</p></td>
<td><p>一些<a href="../Page/JavaScript.md" title="wikilink">JavaScript</a> 1.5特性及一些<a href="../Page/JScript.md" title="wikilink">JScript扩展</a>[12]</p></td>
<td><p>ECMA-262，版本5.1</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/KHTML.md" title="wikilink">KHTML排版引擎</a>，KDE项目的<a href="../Page/Konqueror.md" title="wikilink">Konqueror</a></p></td>
<td><p><a href="../Page/JavaScript.md" title="wikilink">JavaScript</a> 1.5</p></td>
<td><p>ECMA-262，版本3</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Adobe_Acrobat.md" title="wikilink">Adobe Acrobat</a></p></td>
<td><p><a href="../Page/JavaScript.md" title="wikilink">JavaScript</a> 1.5</p></td>
<td><p>ECMA-262，版本3</p></td>
</tr>
<tr class="even">
<td></td>
<td><p><a href="../Page/JavaScript.md" title="wikilink">JavaScript</a> 1.4</p></td>
<td><p>ECMA-262，版本3</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p><a href="../Page/JavaScript.md" title="wikilink">JavaScript</a> 1.5</p></td>
<td><p>ECMA-262，版本3</p></td>
</tr>
<tr class="even">
<td></td>
<td><p><a href="../Page/JavaScript.md" title="wikilink">JavaScript</a> 1.5附带<a href="../Page/Rich_Media_Access_Interface.md" title="wikilink">RMAI扩展</a></p></td>
<td><p>ECMA-262，版本3</p></td>
</tr>
</tbody>
</table>

## 参考来源

## 外部链接

  - [Kraken JavaScript
    Benchmark](http://krakenbenchmark.mozilla.com/index.html) - 瀏覽器效能測試
  - [Peacekeeper](http://peacekeeper.futuremark.com/) - 瀏覽器效能測試
  - [Speed-Battle](http://www.speed-battle.com) - 瀏覽器效能測試
  - [SunSpide](https://www2.webkit.org/perf/sunspider/sunspider.html) -
    瀏覽器效能測試

[Category:JavaScript](https://zh.wikipedia.org/wiki/Category:JavaScript "wikilink")

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
11.
12.