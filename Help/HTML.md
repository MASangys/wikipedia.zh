{{-}}
要使用HTML代码，无需额外处理，直接输入HTML标记即可。

<noinclude>  </noinclude>{{\#invoke:Sidebar|sidebar | title =
[HTML](../Page/HTML.md "wikilink") | contentclass = hlist

| content1 =

  - [HTML](../Page/HTML.md "wikilink")

  - [動態HTML](../Page/動態HTML.md "wikilink")

  - [HTML5](../Page/HTML5.md "wikilink")

      -
      - [画布](../Page/Canvas_\(HTML元素\).md "wikilink")

      -
  - [XHTML](../Page/XHTML.md "wikilink")

      -
      - [移动概要](../Page/XHTML_MP.md "wikilink")

      - [C-HTML](../Page/C-HTML.md "wikilink")

  - [HTML元素](../Page/HTML元素.md "wikilink")

      - [Span与div](../Page/Span与div.md "wikilink")

  -
  -
  - [HTML编辑器](../Page/HTML编辑器.md "wikilink")

  - [字符编码](../Page/HTML字符编码.md "wikilink")

      -
  - [語言代碼](../Page/語言代碼.md "wikilink")

  - [文档对象模型](../Page/文档对象模型.md "wikilink")

  - [浏览器对象模型](../Page/浏览器对象模型.md "wikilink")

  - [样式表](../Page/样式表.md "wikilink")

      - [层叠样式表](../Page/层叠样式表.md "wikilink")

  - [字体家族](../Page/Font_family_\(HTML\).md "wikilink")

  - [网页颜色](../Page/网页颜色.md "wikilink")

  -
  - [JavaScript](../Page/JavaScript.md "wikilink")

      - [WebGL](../Page/WebGL.md "wikilink")

      -
  - [W3C](../Page/万维网联盟.md "wikilink")

      - [驗証服務](../Page/W3C驗証服務.md "wikilink")

  - [網頁超文本應用技術工作小組](../Page/網頁超文本應用技術工作小組.md "wikilink")

  - [怪异模式](../Page/怪异模式.md "wikilink")

  - [网页存储](../Page/网页存储.md "wikilink")

  - [排版引擎](../Page/排版引擎.md "wikilink")

| heading2 = 比较 | content2 =

  - [文档标记语言](../Page/文档标记语言比较.md "wikilink")

  - [网页浏览器](../Page/网页浏览器比较.md "wikilink")

  - [HTML](../Page/排版引擎比较_\(HTML\).md "wikilink")

  - [非标准HTML](../Page/排版引擎比较_\(非标准HTML\).md "wikilink")

  -   - [画布](../Page/排版引擎比较_\(HTML5画布\).md "wikilink")
      - [媒体](../Page/排版引擎比较_\(HTML5媒体\).md "wikilink")

  - [XHTML](../Page/排版引擎比较_\(XHTML\).md "wikilink")

      - [1.1](../Page/排版引擎比较_\(XHTML_1.1\).md "wikilink")

| navbarstyle = border-top:1px solid \#aaa;

}}<noinclude>

</noinclude>

## 例子

### span

`<span>`是通用内联文字容器，目前可以默认使用。span可以使用id、class、style來定義樣式：

`<span style="color:red">style</span>`

`<span id="randomfooid">id</span>`

`<span class="importantmessage">class</span>`

生成：

> <span style="color:red">style</span> <span id="randomfooid">id</span>
> <span class="importantmessage">class</span>

### 短語元素

span元素是用來对行内元素进行分组，以便通过样式对它们进行格式化。它本身沒有任何意思。而短語元素是專門為有特殊意義的文字內容而設。

|            |                                         |
| ---------- | --------------------------------------- |
| `<em>`     | 呈现为强调後的文本。                              |
| `<strong>` | 定义重要的文本。                                |
| `<dfn>`    | 定义一个定义项目。                               |
| `<code>`   | 定义计算机代码文本。                              |
| `<samp>`   | 定义样本文本。                                 |
| `<kbd>`    | 定义键盘文本。它表示文本是从键盘上键入的，常用在计算机相关文档或手册中。    |
| `<var>`    | 定义变量。您可以将此标签与`<pre>` 及 `<code>` 标签配合使用。 |
| `<cite>`   | 定义引用。可使用该标签对参考文献的引用进行定义，比如书籍或杂志的标题。     |
|            |                                         |

各短語元素的定義

短語元素同樣可以用class、id、style來定義樣式。 例如：

`<em>Default </em>`
`<em style="color:red;font-style:normal">CSS style</em>`

生成

> <em>Default </em><em style="color:red;font-style:normal">CSS
> style</em>

这不仅仅吸引用户的注意力，还可以提醒使用非可视化浏览器或有视力障碍的用户。

### font

  - 注意，此元素不推薦使用，而以[\<span\>替代](../Page/#span.md "wikilink")。

對於一些屬性，比如顏色、字體、大小，只能這麼用：

    <font size="200%">大</font>
    <font color="red" face="標楷體">紅</font>字和
    <font color="#0000ff" face="Comic Sans MS">Blue</font> text。

生成

> <font size="200%">大</font> <font color="red" face="標楷體">紅</font>字和
> <font color="#0000ff" face="Comic Sans MS">Blue</font> text

### div

`<div>`元素定义HTML文档中的分隔（division）或部分（section）。
`<div>`元素常用于组合块级元素，以便通过样式表来对这些元素进行格式化。
例如让多組文字以紅色顯示，可以这么运用：

```
 <div style="color:red">
  <p>This is a sentence.<em> This is an emphasized text.</em></p>
  <p>This is a paragraph.</p>
 </div>
```

生成

<div style="color:red">

This is a sentence.<em> This is an emphasized text.</em>

This is a paragraph.

</div>

## 過時的HTML

[新一代HTML的設計是盡量僅包含結構和內容](../Page/HTML5.md "wikilink")，樣式的顯示就交由[CSS負責](../Page/CSS.md "wikilink")。所以，有些[HTML元素和屬性已經過時](../Page/HTML元素.md "wikilink")，甚至[新版HTML不再支援](../Page/HTML5.md "wikilink")。儘管這些過時的HTML元素和屬性在流行的瀏覽器仍然有效，但鼓勵編輯者使用新規格的HTML來編寫頁面。如果要定義文字的樣式，可以用style屬性來加入CSS。

<table>
<thead>
<tr class="header">
<th><p>過時的HTML元素</p></th>
<th><p>替代的HTML元素</p></th>
<th><p>意思</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>&lt;font&gt;</code></p></td>
<td><p><code>&lt;span&gt;</code></p></td>
<td><p>定義文本样式。</p></td>
</tr>
<tr class="even">
<td><p><code>&lt;s&gt;</code></p></td>
<td><p><code>&lt;del&gt;</code></p></td>
<td><p>定义加删除线的文本。</p></td>
</tr>
<tr class="odd">
<td><p><code>&lt;s&gt;</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>&lt;center&gt;文本&lt;/center&gt;</code></p></td>
<td><p>您應該使用來表現把文字置中的效果。</p>
<p><code>&lt;div class="center" style="width: auto; margin-left: auto; margin-right: auto;"&gt;文本&lt;/div&gt;</code></p></td>
<td><p>將文本水平置中在區塊內。</p></td>
</tr>
<tr class="odd">
<td><p><code>&lt;big&gt;</code></p></td>
<td><p>純粹放大文本：<code>&lt;span style="font-size:large"&gt;</code><br />
強調文本：<code>&lt;strong&gt; / &lt;em&gt;</code></p></td>
<td><p>定义大号文本。</p></td>
</tr>
<tr class="even">
<td><p><code>&lt;u&gt;</code></p></td>
<td><p>N/A</p></td>
<td><p>非<a href="../Page/超連結.md" title="wikilink">超連結文字不宜加底線</a>。</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

| 過時的HTML屬性    | 替代的CSS屬性              |
| ------------ | --------------------- |
| face="字體"    | font-family: 字體;      |
| color="顏色"   | color: 顏色;            |
| bgcolor="顏色" | background-color: 顏色; |
| size="大小"    | font-size: 大小;        |
| align="水平位置" | text-align: 水平位置;     |
|              |                       |

接下来从[OutputPage.php](http://cvs.sourceforge.net/viewcvs.py/wikipedia/phpwiki/newcodebase/OutputPage.php)摘录的源代码附加的说明了什么属性是可用的。

```
 /* private */ function removeHTMLtags( $text )
 {
  wfProfileIn( "OutputPage::removeHTMLtags" );
  $htmlpairs = array( # Tags that must be closed
   "b", "i", "u", "font", "big", "small", "sub", "sup", "h1",
   "h2", "h3", "h4", "h5", "h6", "cite", "code", "em", "s",
   "strike", "strong", "tt", "var", "div", "center",
   "blockquote", "ol", "ul", "dl", "table", "caption", "pre",
   "ruby", "rt" , "rb" , "rp"
  );
  $htmlsingle = array(
   "br", "p", "hr", "li", "dt", "dd"
  );
  $htmlnest = array( # Tags that can be nested--??
   "table", "tr", "td", "th", "div", "blockquote", "ol", "ul",
   "dl", "font", "big", "small", "sub", "sup"
  );
  $tabletags = array( # Can only appear inside table
   "td", "th", "tr"
  );

  $htmlsingle = array_merge( $tabletags, $htmlsingle );
  $htmlelements = array_merge( $htmlsingle, $htmlpairs );

  $htmlattrs = array( # Allowed attributes--no scripting, etc.
   "title", "align", "lang", "dir", "width", "height",
   "bgcolor", "clear", /* BR */ "noshade", /* HR */
   "cite", /* BLOCKQUOTE, Q */ "size", "face", "color",
   /* FONT */ "type", "start", "value", "compact",
   /* For various lists, mostly deprecated but safe */
   "summary", "width", "border", "frame", "rules",
   "cellspacing", "cellpadding", "valign", "char",
   "charoff", "colgroup", "col", "span", "abbr", "axis",
   "headers", "scope", "rowspan", "colspan", /* Tables */
   "id", "class", "name", "style" /* For CSS */
  );
```

比如元素`<a>`在维基代码中被禁止使用，因此

<a href="<nowiki>http://meta.wikimedia.org/wiki/Main_Page</nowiki>">`Main
Page`</a>

生成HTML代码

> `<a href="http://meta.wikimedia.org/wiki/Main_Page">Main Page</a>`

是文字而不是链接。

## 解析器扩展标签

The MediaWiki software adds elements that look and act like HTML tags.
Parser tags are included in MediaWiki whereas extension tags are added
by optional software extensions.
[Special:版本信息列有所有标签](../Page/Special:版本信息.md "wikilink")。解析器标签由扩展程序提供；所以欲知标签用法，可在[Special:版本信息搜索对应的扩展程序](../Page/Special:版本信息.md "wikilink")，或者点击下面的链接。

  - Parser tags : \<gallery\>, \<nowiki\>, \<pre\>

<!-- end list -->

  - 扩展标签：

\<categorytree\>, \<charinsert\>, \<hiero\>,
\<[imagemap](../Page/mw:Extension:ImageMap.md "wikilink")\>,
\<inputbox\>, \<math\>, \<poem\>, \<ref\>, \<references\>,
\<[syntaxhighlight](../Page/mw:Extension:SyntaxHighlight.md "wikilink")\>
（也可写作\<source\>）, \<timeline\>

## 外部链接

  - [HTML元素](http://www.w3school.com.cn/html5/html5_reference.asp)
  - [HTML属性](http://www.w3.org/TR/html401/index/attributes.html)

{{-}}

[Category:網站模板](https://zh.wikipedia.org/wiki/Category:網站模板 "wikilink")
[Category:软件模板](https://zh.wikipedia.org/wiki/Category:软件模板 "wikilink")
[Category:HTML](https://zh.wikipedia.org/wiki/Category:HTML "wikilink")
[Category:Exclude_in_print](https://zh.wikipedia.org/wiki/Category:Exclude_in_print "wikilink")
[Category:帮助文档](https://zh.wikipedia.org/wiki/Category:帮助文档 "wikilink")