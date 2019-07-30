下表比较了[XHTML](../Page/XHTML.md "wikilink")对一些[排版引擎](../Page/排版引擎.md "wikilink")的支持与兼容性。请参阅各个产品的条目获得更多信息。除非脚注中另有规定，比较均基于稳定版本，无任何附加组件、扩展或外部程序。

本条目只靠路XHTML 1.1。[XHTML 1.1基于](../Page/XHTML.md "wikilink")[XHTML 1.0严格版](https://zh.wikipedia.org/wiki/XHTML#XHTML_1.0 "wikilink")，抛弃了更多的元素与属性。[XHTML 2.0是一个工作草案](https://zh.wikipedia.org/wiki/XHTML#XHTML_2.0 "wikilink")，现未受到任何排版引擎的支持，为支持[HTML5](../Page/HTML5.md "wikilink")和[XHTML5的工作](https://zh.wikipedia.org/wiki/XHTML#XHTML5 "wikilink")，其于2009年被废弃。XHTML 1.0与[HTML 4](../Page/HTML.md "wikilink")（二者均提供`text/html`）在[排版引擎比较 (HTML)中进行了比较](../Page/排版引擎比较_\(HTML\).md "wikilink")。关于XML兼容性的比较请参见[排版引擎比较 (XML)](https://zh.wikipedia.org/wiki/排版引擎比较_\(XML\) "wikilink")。

如给出了版本号，则说明自该版本起完全支持该特性。专有扩展不包括在内。

## 媒体类型

格式良好的XHTML文档通过不同的媒体类型送达时会获得响应。注意只有`application/xhtml+xml`是推荐媒体类型。

<table>
<thead>
<tr class="header">
<th><p>| <a href="../Page/互联网媒体类型.md" title="wikilink">互联网媒体类型</a></p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Tasman.md" title="wikilink">Tasman</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Gecko_(layout_engine)" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>application/atom+xml</code></p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>[1][2]</p></td>
<td><p>?</p></td>
</tr>
<tr class="even">
<td><p><code>application/mathml+xml</code></p></td>
<td></td>
<td></td>
<td><p>[3]</p></td>
<td></td>
<td></td>
<td><p>[4]</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p><code>application/rss+xml</code></p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>[5][6]</p></td>
<td><p>?</p></td>
</tr>
<tr class="even">
<td><p><code>application/xhtml+xml</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p><code>application/xml</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="even">
<td><p><code>application/xslt+xml</code></p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>[7]</p></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p><code>image/svg+xml</code></p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>[8]</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>[9][10]</p></td>
<td><p>?</p></td>
</tr>
<tr class="even">
<td><p><code>text/xml</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="odd">
<td><p><code>text/html</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>?</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### KHTML媒体类型注释

1.  `application/xhtml+xml` — KHTML支持该媒体类型，但将其视为HTML文档处理。
2.  `application/xml, text/xml` —通过定制DTD定义的HTML实体与自定义实体不被识别。

## 联合配置

通过结合[XML](../Page/XML.md "wikilink")的其他应用程序（不是指使用img/object元素）扩展XHTML。

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Tasman.md" title="wikilink">Tasman</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Gecko_(layout_engine)" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/MathML" title="wikilink">MathML</a></p></td>
<td></td>
<td><p>rowspan="4" </p></td>
<td></td>
<td><p>[11]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Scalable_Vector_Graphics" title="wikilink">SVG</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/XForms.md" title="wikilink">XForms</a></p></td>
<td><p>rowspan="2" </p></td>
<td><p>[12]</p></td>
<td><p>[13]</p></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td><p>?</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/VoiceXML" title="wikilink">VoiceXML</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 参考来源

### Gecko参考

  -
  -
  -
### Opera参考

### WebKit参考

### 其他参考

  -
  -
  -
[Category:HTML](https://zh.wikipedia.org/wiki/Category:HTML "wikilink") [Category:排版引擎比较](https://zh.wikipedia.org/wiki/Category:排版引擎比较 "wikilink")

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
13.