下表比较了不赞成使用和专有的[HTML](../Page/HTML.md "wikilink")[元素与](../Page/HTML元素.md "wikilink")[属性对一些](../Page/HTML.md "wikilink")[排版引擎的支持和兼容性](../Page/排版引擎.md "wikilink")。请参阅各个产品的条目以获得更多信息。除非脚注中另有规定，比较均基于稳定版本，无任何附加组件、扩展或外部程序。

在[万维网发展早期](../Page/万维网.md "wikilink")，[网页浏览器和](../Page/网页浏览器.md "wikilink")[网页使用的标准还未成熟](https://zh.wikipedia.org/wiki/网页 "wikilink")。[网景](https://zh.wikipedia.org/wiki/网景 "wikilink")、[微软和](../Page/微软.md "wikilink")[WebTV等供应商相互竞争](https://zh.wikipedia.org/wiki/MSN_TV "wikilink")，提供不同的浏览器与HTML编辑器，它们对如何构造网站都有自己的想法。这些不同的特征导致了网页开发者往往使用仅可被单一浏览器识别的元素为特定的网页浏览器编码。WebTV与IBM的WebExplorer从未被主流浏览器采用。

## 不赞成使用的HTML元素

<table>
<thead>
<tr class="header">
<th><p>元素</p></th>
<th><p>功能</p></th>
<th><p>率先支持</p></th>
<th><p>不赞成使用的HTML版本</p></th>
<th><p>代替方案</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>applet</code></p></td>
<td><p>插入一个小程序</p></td>
<td><p><a href="../Page/HotJava.md" title="wikilink">HotJava</a></p></td>
<td><p>4[1]</p></td>
<td><p><code>embed</code>、<code>object</code></p></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="6" </p></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>basefont</code></p></td>
<td><p>设置字体样式</p></td>
<td><p>Internet Explorer</p></td>
<td><p>4</p></td>
<td><p>CSS</p></td>
<td></td>
<td><p>[2]</p></td>
<td></td>
<td><p>rowspan="4" </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>center</code></p></td>
<td><p>内容置中</p></td>
<td><p>网景[3]</p></td>
<td><p>4</p></td>
<td><p>CSS</p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>dir</code></p></td>
<td><p>目录列表</p></td>
<td><p>?</p></td>
<td><p>4</p></td>
<td><p><code>ul</code>、<code>ol</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>font</code></p></td>
<td><p>应用字体样式</p></td>
<td><p>网景</p></td>
<td><p>4</p></td>
<td><p>CSS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>isindex</code>[4]</p></td>
<td><p>添加一个搜索栏</p></td>
<td><p>?</p></td>
<td><p>4</p></td>
<td><p><code>input type="search"</code></p></td>
<td></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>listing</code></p></td>
<td><p>显示格式化文本</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/IETF" title="wikilink">IETF</a></p></td>
<td><p>2</p></td>
<td><p><code>pre</code>、<code>samp</code>、<code>code</code>、CSS</p></td>
<td><p>rowspan="3" </p></td>
<td></td>
<td></td>
<td><p>rowspan="3" </p></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>menu</code></p></td>
<td><p>菜单列表</p></td>
<td><p>?</p></td>
<td><p>4</p></td>
<td><p><code>ul</code>、<code>ol</code></p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>plaintext</code></p></td>
<td><p>所有内容按照HTML源代码的方式显示</p></td>
<td><p>?</p></td>
<td><p>3.2</p></td>
<td><p>The <code>text/plain</code> <a href="https://zh.wikipedia.org/wiki/MIME_type" title="wikilink">MIME type</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>s</code></p></td>
<td><p>删除线</p></td>
<td><p>?</p></td>
<td><p>4</p></td>
<td><p><code>del</code>、CSS</p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>strike</code></p></td>
<td><p>删除线</p></td>
<td><p>?</p></td>
<td><p>4</p></td>
<td><p><code>del</code>、CSS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>u</code></p></td>
<td><p>下划线</p></td>
<td><p>?</p></td>
<td><p>4</p></td>
<td><p>CSS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>xmp</code></p></td>
<td><p>与<code>pre和</code><code>plaintext</code>相似，内容按照HTML源代码的方式显示</p></td>
<td><p>?</p></td>
<td><p>2</p></td>
<td><p><code>pre</code>、<code>samp</code>、<code>code</code></p></td>
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
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 不赞成使用的HTML属性

<table>
<thead>
<tr class="header">
<th><p>属性</p></th>
<th><p>元素</p></th>
<th><p>代替方案</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>align</code></p></td>
<td><p><code>caption</code>、<code>div</code>、<code>fieldset</code>、<code>h1</code>、<code>h2</code>、<code>h3</code>、<code>h4</code>、<code>h5</code>、<code>h6</code>、<code>hr</code>、<code>img</code>、<code>input</code>、<code>legend</code>、<code>p</code>、<code>object</code>、<code>table</code></p></td>
<td><p>CSS</p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="6" </p></td>
<td></td>
<td><p>rowspan="18" </p></td>
<td><p>rowspan="18" </p></td>
</tr>
<tr class="even">
<td><p><code>alink</code></p></td>
<td><p><code>body</code></p></td>
<td><p>CSS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>background</code></p></td>
<td><p><code>body</code></p></td>
<td><p>CSS</p></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>bgcolor</code></p></td>
<td><p><code>body</code>、<code>table</code>、<code>tr</code>、<code>td</code>、<code>th</code></p></td>
<td><p>CSS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>border</code></p></td>
<td><p><code>img</code>、<code>object</code></p></td>
<td><p>CSS</p></td>
<td><p>[5]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>clear</code></p></td>
<td><p><code>br</code></p></td>
<td><p>CSS</p></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>compact</code></p></td>
<td><p><code>dl</code>、<code>ul</code>、<code>ol</code></p></td>
<td><p>CSS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>color</code></p></td>
<td><p><code>basefont</code>、<code>font</code></p></td>
<td><p>CSS</p></td>
<td><p>rowspan="11" </p></td>
<td><p>[6][7]</p></td>
<td><p>[8]</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>height</code></p></td>
<td><p><code>td</code>、<code>th</code></p></td>
<td><p>CSS</p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="10" </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>hspace</code></p></td>
<td><p><code>img</code>、<code>object</code></p></td>
<td><p>CSS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>language</code></p></td>
<td><p><code>script</code></p></td>
<td><p><code>type</code>属性</p></td>
<td><p>？</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>link</code></p></td>
<td><p><code>body</code></p></td>
<td><p>CSS</p></td>
<td><p>rowspan="7" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>noshade</code></p></td>
<td><p><code>hr</code></p></td>
<td><p>CSS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>nowrap</code></p></td>
<td><p><code>td</code>、<code>th</code></p></td>
<td><p>CSS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>size</code></p></td>
<td><p><code>basefont</code>、<code>font</code>、<code>hr</code></p></td>
<td><p>CSS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>start</code></p></td>
<td><p><code>ol</code></p></td>
<td><p>None</p></td>
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
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>text</code></p></td>
<td><p><code>body</code></p></td>
<td><p>CSS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>type</code></p></td>
<td><p><code>li</code>、<code>ul</code>、<code>ol</code></p></td>
<td><p>CSS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>version</code></p></td>
<td><p><code>html</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Document_Type_Declaration" title="wikilink">DTD</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>vlink</code></p></td>
<td><p><code>body</code></p></td>
<td><p>CSS</p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
</tr>
<tr class="even">
<td><p><code>width</code></p></td>
<td><p><code>hr</code>、<code>pre</code>、<code>td</code>、<code>th</code></p></td>
<td><p>CSS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>vspace</code></p></td>
<td><p><code>img</code>、<code>object</code></p></td>
<td><p>CSS</p></td>
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
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 专有HTML元素

<table>
<thead>
<tr class="header">
<th><p>标签</p></th>
<th><p>功能</p></th>
<th><p>引入</p></th>
<th><p>代替方案</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>bgsound</code></p></td>
<td><p>将声音添加到网站后台</p></td>
<td><p>Internet Explorer</p></td>
<td><p><code>audio</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>[9]</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Blink_element" title="wikilink"><code>blink</code></a></p></td>
<td><p>用于显示闪烁的文字</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Netscape" title="wikilink">网景</a></p></td>
<td><p>Javascript、CSS</p></td>
<td></td>
<td><p>[10]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>bq</code></p></td>
<td><p>用于显示块引用</p></td>
<td><p>WebTV、HTML 3.0</p></td>
<td><p><code>blockquote</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>[11]</p></td>
</tr>
<tr class="even">
<td><p><code>comment</code></p></td>
<td><p>用于向HTML文档添加注释</p></td>
<td><p>Internet Explorer、WebTV</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Layer_element" title="wikilink"><code>ilayer</code></a></p></td>
<td><p>内嵌层</p></td>
<td><p>网景（仅版本4）</p></td>
<td><p><code>iframe</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>image</code></p></td>
<td><p>img的同义词</p></td>
<td><p>?</p></td>
<td><p><code>img</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Layer_element" title="wikilink"><code>layer</code></a></p></td>
<td><p>用于创建多层文本和图像，在给定的顺序下分布在彼此的顶部</p></td>
<td><p>网景（仅版本4）</p></td>
<td><p>CSS、<a href="https://zh.wikipedia.org/wiki/Ajax" title="wikilink">Ajax</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Marquee_element" title="wikilink"><code>marquee</code></a></p></td>
<td><p>用于显示类似滚动字幕的文本</p></td>
<td><p>Internet Explorer、WebTV</p></td>
<td><p>JavaScript、CSS3</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>nobr</code></p></td>
<td><p>防止在文本流内产生任何换行符</p></td>
<td><p>网景[12][13]</p></td>
<td><p>CSS</p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
</tr>
<tr class="even">
<td><p><code>noembed</code></p></td>
<td><p>为不承认嵌入标签浏览器显示替代文本</p></td>
<td><p>网景</p></td>
<td><p>对象的子元素作为备用</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>spacer</code></p></td>
<td><p>在排版中添加空白</p></td>
<td><p>网景</p></td>
<td><p>CSS</p></td>
<td></td>
<td><p>[14]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>wbr</code></p></td>
<td><p>放置在nobr元素中以添加一个换行符</p></td>
<td><p>网景[15][16]</p></td>
<td><p>Unicode字符 <a href="../Page/零宽空格.md" title="wikilink">零宽空格</a> （U+200B）</p></td>
<td><p>{{#tag:ref|Trident在5.0版本中不再支持<code>wbr</code>。[17]|group=注}}</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>xml</code>[18]</p></td>
<td><p>限定一个HTML页面中的XML数据岛</p></td>
<td><p>Internet Explorer</p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 专有HTML属性

<table>
<thead>
<tr class="header">
<th><p>属性</p></th>
<th><p>被废弃</p></th>
<th><p>功能</p></th>
<th><p>率先支持</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>bgproperties</code></p></td>
<td><p><code>body</code></p></td>
<td><p>判定背景图片是否与背景一起滚动</p></td>
<td><p>Internet Explorer</p></td>
<td><p>rowspan="10" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>bordercolor</code></p></td>
<td><p><code>body</code></p></td>
<td><p>在<code>table</code>、<code>td</code>、<code>th</code>与<code>tr</code>元素中设置三维表格边框的颜色</p></td>
<td><p>Internet Explorer</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>bordercolordark</code></p></td>
<td><p><code>body</code></p></td>
<td><p>在<code>table</code>、<code>td</code>、<code>th</code>与<code>tr</code>元素中设置三维表格边框的颜色</p></td>
<td><p>Internet Explorer</p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>bordercolorlight</code></p></td>
<td><p><code>body</code></p></td>
<td><p>在<code>table</code>、<code>td</code>、<code>th</code>与<code>tr</code>元素中设置三维表格边框的颜色</p></td>
<td><p>Internet Explorer</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>controls</code></p></td>
<td><p><code>img</code></p></td>
<td><p>使用<code>img</code>元素放置视频或音频片段</p></td>
<td><p>Internet Explorer</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>dynsrc</code></p></td>
<td><p><code>img</code></p></td>
<td><p>使用<code>img</code>元素放置视频或音频片段</p></td>
<td><p>Internet Explorer</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>event</code></p></td>
<td><p><code>script</code></p></td>
<td><p>定义一个函数用于调用对象</p></td>
<td><p>Internet Explorer</p></td>
<td></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>for</code></p></td>
<td><p><code>script</code></p></td>
<td><p>定义一个对象用于绑定脚本事件</p></td>
<td><p>Internet Explorer</p></td>
<td></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>frame</code></p></td>
<td><p><code>table</code></p></td>
<td><p>在table标签中控制表的外边界显示</p></td>
<td><p>Internet Explorer</p></td>
<td></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>framespacing</code></p></td>
<td><p><code>frameset</code></p></td>
<td><p>设置框架之间空间的多少</p></td>
<td><p>Internet Explorer</p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>leftmargin</code></p></td>
<td><p><code>body</code></p></td>
<td><p>设置浏览器窗口和网页内容之间的边距</p></td>
<td><p>Internet Explorer</p></td>
<td><p>rowspan="2" </p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>loop</code></p></td>
<td><p><code>img</code></p></td>
<td><p>使用<code>img</code>元素放置视频或音频片段</p></td>
<td><p>Internet Explorer</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>rightmargin</code></p></td>
<td><p><code>body</code></p></td>
<td><p>设置浏览器窗口和网页内容之间的边距</p></td>
<td><p>Internet Explorer</p></td>
<td><p>rowspan="3" </p></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>start</code></p></td>
<td><p><code>img</code></p></td>
<td><p>使用<code>img</code>元素放置视频或音频片段</p></td>
<td><p>Internet Explorer</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>target</code></p></td>
<td><p><code>form</code></p></td>
<td><p>为表单的输出指定目标窗口或框架</p></td>
<td><p>Internet Explorer</p></td>
<td><p>[19]</p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>valign</code></p></td>
<td><p><code>caption</code></p></td>
<td><p>将表格标题的设置为垂直对齐</p></td>
<td><p>Internet Explorer</p></td>
<td></td>
<td><p>?</p></td>
<td><p>?</p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 参见

  - [网页标准](../Page/網頁標準.md "wikilink")
  - [无线标记语言](../Page/無線標記語言.md "wikilink")

## 注释

## 参考文献

  -
  - [OS/2 Web Explorer's proprietary HTML
    elements](https://web.archive.org/web/20080706145821/http://www.seds.org/~spider/os2/webextag.html)

  - \[<http://msdn.microsoft.com/en-us/library/aa242436(VS.60>).aspx
    MSDN Handling Events with HTML elements\]

{{-}}

[Category:HTML](https://zh.wikipedia.org/wiki/Category:HTML "wikilink")
[Category:排版引擎比较](https://zh.wikipedia.org/wiki/Category:排版引擎比较 "wikilink")

1.

2.

3.

4.

5.  仅支持`img`。

6.
7.
8.  仅支持`font`。

9.

10.

11.

12.

13.

14.

15.
16.
17.

18.

19.