下表比较在[网页浏览器内使用一些知名](../Page/网页浏览器.md "wikilink")[JavaScript引擎对标准的支持](../Page/JavaScript引擎.md "wikilink")。

## 表格解说

完整列表可参见[ECMAScript引擎列表](../Page/ECMAScript引擎列表.md "wikilink")。

### 值

这些值指示了在每个引擎中对给定项目的支持程度。缺省的，默认为这个引擎的最新版本。但是，可以列出特定版本号；当这指示完全支持的时候，它是这个引擎完全支持这个项目的最初版本。

<table>
<thead>
<tr class="header">
<th><p>值</p></th>
<th><p>含义</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>完全支持</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>从未支持</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>只支持某些值</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>在所有情况下未正确实现</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>可能不完全或有缺陷</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>目前正在开发；可预期完全支持</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>只在特定条件下支持</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>不再支持</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
</tr>
</tbody>
</table>

## ECMAScript版本支持

下表中的版本号为[排版引擎的版本号](../Page/排版引擎.md "wikilink")。[JavaScript的版本号就是](../Page/JavaScript.md "wikilink")[JavaScript引擎中](../Page/JavaScript引擎.md "wikilink")[SpiderMonkey的版本号](../Page/SpiderMonkey.md "wikilink")，在ECMAScript
Edition 5之后不再延续跟进。

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
<th><p><a href="../Page/Blink.md" title="wikilink">Blink</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>ECMAScript引擎名称</p></td>
<td><p><a href="../Page/JScript.md" title="wikilink">JScript</a><br />
<a href="../Page/Chakra_(JScript引擎).md" title="wikilink">Chakra</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/SpiderMonkey_(JavaScript引擎)" title="wikilink">SpiderMonkey</a><br />
TraceMonkey<br />
JägerMonkey<br />
IonMonkey</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/WebKit#JavaScriptCore" title="wikilink">JavaScriptCore</a><br />
SquirrelFish Extreme</p></td>
<td><p>Linear B<br />
Futhark<br />
<a href="https://zh.wikipedia.org/wiki/Presto#ECMAScript_engines" title="wikilink">Carakan</a></p></td>
<td><p><a href="../Page/V8_(JavaScript引擎).md" title="wikilink">V8</a></p></td>
</tr>
<tr class="even">
<td><p>ECMAScript Edition 3<br />
等价于JavaScript 1.5</p></td>
<td></td>
<td><p>[1]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>JavaScript 1.6 扩展<br />
(排除<a href="../Page/E4X.md" title="wikilink">E4X</a>)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>JavaScript 1.7 扩展</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>JavaScript 1.8 扩展</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>JavaScript 1.8.1 扩展</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>ECMAScript Edition 5<br />
等价于JavaScript 1.8.5</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/E4X.md" title="wikilink">E4X</a></p></td>
<td></td>
<td><p>[2]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>ECMAScript Edition 6<br />
又称ECMAScript 2015</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>ECMAScript 2016扩展</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>ES新近版本2016+扩展</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 标准库

### 全局对象

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
<th><p><a href="../Page/Blink.md" title="wikilink">Blink</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>值属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>NaN</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>Infinity</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>undefined</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>函数属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>eval(x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>parseInt(string [, radix])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>parseFloat(string)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>isNaN(number)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>isFinite(number)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>URI处理函数</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>decodeURI(encodedURI)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>decodeURIComponent(encodedURIComponent)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>encodeURI(uri)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>encodeURIComponent(uriComponent)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>constructor属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>Object</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>Function</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>Array</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>String</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>Boolean</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>Number</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>Date</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>RegExp</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>Error</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>EvalError</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>RangeError</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>ReferenceError</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>SyntaxError</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>TypeError</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>URIError</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>其他属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>Math</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>额外属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>escape(string)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>unescape(string)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### Object对象

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
<th><p><a href="../Page/Blink.md" title="wikilink">Blink</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>调用为函数</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>Object([value])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>调用为constructor</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>new Object([value])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>prototype</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>prototype的属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>constructor</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>toString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>toLocaleString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>valueOf()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>hasOwnProperty(V)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>isPrototypeOf(V)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>propertyIsEnumerable(V)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### Function对象

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
<th><p><a href="../Page/Blink.md" title="wikilink">Blink</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>调用为函数</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>Function(</code><a href="https://zh.wikipedia.org/wiki/p1_[,_p2_[,_..." title="wikilink"><code>p1</code><code> </code><code>[,</code><code> </code><code>p2</code><code> </code><code>[,</code><code> </code><code>...</code></a><code>,] body])</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>调用为constructor</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>new Function(</code><a href="https://zh.wikipedia.org/wiki/p1_[,_p2_[,_..." title="wikilink"><code>p1</code><code> </code><code>[,</code><code> </code><code>p2</code><code> </code><code>[,</code><code> </code><code>...</code></a><code>,] body])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>length</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>prototype</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>prototype的属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>length</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>constructor</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>toString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>apply(thisArg, argArray)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>call(thisArg [, arg1 [, arg2 [, ...]]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>实例的属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>length</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>prototype</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### Array对象

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
<th><p><a href="../Page/Blink.md" title="wikilink">Blink</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>调用为函数</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>Array([item1 [, item2 [, ...]]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>调用为constructor</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>new Array([item1, item2 [, ...]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>new Array(len)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>prototype</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>prototype的属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>constructor</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>toString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>toLocaleString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>concat([item1 [, item2 [,...]]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>join(separator)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>pop()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>push([item1 [, item2 [,...]]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>reverse()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>shift()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>slice(start, end)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>sort(comparefn)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>splice(start, deleteCount [, item1 [, item2 [, ...]]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>unshift([item1 [, item2 [, ...]]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>indexOf(searchElement[, fromIndex])</code></p></td>
<td><p>rowspan="9" [3]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>lastIndexOf(searchElement[, fromIndex])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>filter(callback[, thisObject])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>forEach(callback[, thisObject])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>every(callback[, thisObject])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>map(callback[, thisObject])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>some(callback[, thisObject])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>reduce(callback[, initialValue])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>reduceRight(callback[, initialValue])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>实例的属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>length</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### String对象

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
<th><p><a href="../Page/Blink.md" title="wikilink">Blink</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>调用为函数</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>String([value])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>调用为constructor</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>new String([value])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>prototype</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>fromCharCode([char0 [, char1 [, ...]]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>prototype的属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>constructor</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>toString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>valueOf()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>charAt(pos)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>charCodeAt(pos)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>concat([string1 [, string2 [, ...]]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>indexOf(searchString, position)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>lastIndexOf(searchString, position)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>localeCompare(that)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>match(regexp)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>replace(searchValue, replaceValue)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>search(regexp)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>slice(start, end)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>split(separator, limit)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>substring(start, end)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>toLowerCase()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>toLocaleLowerCase(comparefn)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>toUpperCase()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>toLocaleUpperCase()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>prototype的额外属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>substr(start, length)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>实例的属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>length</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### Boolean对象

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
<th><p><a href="../Page/Blink.md" title="wikilink">Blink</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>调用为函数</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>Boolean([value])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>调用为constructor</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>new Boolean([value])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>prototype</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>prototype的属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>constructor</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>toString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>valueOf()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### Number对象

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>调用为函数</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>Number([value])</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p>调用为constructor</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>new Number([value])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>prototype</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>MAX_VALUE</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>MIN_VALUE</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>NaN</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>NEGATIVE_INFINITY</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>POSITIVE_INFINITY</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>prototype的属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>constructor</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>toString([radix])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>toLocaleString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>valueOf()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>toFixed(fractionDigits)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>toExponential(fractionDigits)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>toPrecision(precision)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### Math对象

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>值属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>LN10</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>LN2</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>LOG2E</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>LOG10E</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>PI</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>SQRT1_2</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>SQRT2</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>函数属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>abs(x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>acos(x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>asin(x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>atan(x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>atan2(y, x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>ceil(x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>cos(x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>exp(x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>floor(x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>log(x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>max([value1 [, value2 [, ...]]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>min([value1 [, value2 [, ...]]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>pow(x, y)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>random()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>round(x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>sin(x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>sqrt(x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>tan(x)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### Date对象

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>调用为函数</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><small><code>Date ([year [, month [, date [, hours [, minutes [, seconds [, ms ]]]]]]])</code></small></p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p>调用为constructor</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><small><code>new Date (year, month [, date [, hours [, minutes [, seconds [, ms ]]]]])</code></small></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>new Date (value)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>new Date ()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>prototype</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>parse(string)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><small><code>UTC (year, month [, date [, hours [, minutes [, seconds [, ms ]]]]])</code></small></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>prototype的属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>constructor</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>toString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>toDateString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>toTimeString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>toLocaleString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>toLocaleDateString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>toLocaleTimeString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>valueOf()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>getTime()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>getFullYear()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>getMonth()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>getUTCMonth()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>getDate()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>getUTCDate()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>getDay()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>getUTCDay()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>getHours()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>getUTCHours()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>getMinutes()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>getUTCMinutes()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>getSeconds()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>getUTCSeconds()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>getMilliseconds()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>getUTCMilliseconds()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>getTimezoneOffset()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>setTime(time)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>setMilliseconds(ms)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>setUTCMilliseconds(ms)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>setSeconds(sec [, ms])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>setUTCSeconds(sec [, ms])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>setMinutes(min [, sec [, ms]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>setUTCMinutes(min [, sec [, ms]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>setHours(hour [, min [, sec [, ms]]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>setUTCHours(hour [, min [, sec [, ms]]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>setDate(date)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>setUTCDate(date)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>setMonth(month [, date])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>setUTCMonth(month [, date])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>setFullYear(year [, month [, date]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>setUTCFullYear(year [, month [, date]])</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>toUTCString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>prototype的额外属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>getYear()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>setYear(year)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>toGMTString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### RegExp对象

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>调用为函数</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>RegExp (pattern, flags)</code></p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p>调用为constructor</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>new RegExp (pattern, flags)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>prototype</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>prototype的属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>constructor</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>exec(string)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>test(string)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>toString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>实例的属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>source</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>global</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>ignoreCase</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>multiline</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>lastIndex</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### Error对象

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>调用为函数</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>Error (message)</code></p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p>调用为constructor</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>new Error (message)</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>prototype</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>prototype的属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>constructor</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>name</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>message</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>toString()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### NativeError对象

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>调用为函数</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>EvalError (message)</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p><code>RangeError (message)</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="even">
<td><p><code>ReferenceError (message)</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p><code>SyntaxError (message)</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="even">
<td><p><code>TypeError (message)</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p><code>URIError (message)</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="even">
<td><p>调用为constructor</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>new EvalError (message)</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="even">
<td><p><code>new RangeError (message)</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p><code>new ReferenceError (message)</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="even">
<td><p><code>new SyntaxError (message)</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p><code>new TypeError (message)</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="even">
<td><p><code>new URIError (message)</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p>属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>prototype</code></p></td>
<td><p>?</p></td>
<td></td>
<td><p>?</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p>prototype的属性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>constructor</code></p></td>
<td><p>?</p></td>
<td></td>
<td><p>?</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p><code>name</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="even">
<td><p><code>message</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 引用

## 延伸阅读

  - [ECMAScript object support in
    Opera](https://web.archive.org/web/20100530050727/http://www.opera.com/docs/specs/js/ecma/)
  - [JavaScript tests & Compatibility
    tables](http://www.robertnyman.com/javascript/index.html)
  - [ECMAScript 6 compatibility
    table](https://kangax.github.io/compat-table/es6/)

## 外部链接

  - [Webdevout](http://www.webdevout.net/browser-support-ecmascript) –
    mostly covers Windows browsers. Extensive bug testing.

[Category:JavaScript引擎](https://zh.wikipedia.org/wiki/Category:JavaScript引擎 "wikilink")

1.  [Gecko versions and application
    versions](https://developer.mozilla.org/en-US/docs/Mozilla/Gecko/Versions).
2.
3.