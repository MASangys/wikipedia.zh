以下的表格顯示一些[瀏覽器引擎對於](../Page/排版引擎.md "wikilink")[CSS的兼容性與支援的比較](https://zh.wikipedia.org/wiki/CSS "wikilink")。想獲得更多訊息，請參照各產品的項目。此項目不見得包含所有的功能也不見得有最新消息。除非以附註指出特例，這裡以未加裝任何套件或是其他程式的穩定版本進行比較。

<div class="toclimit-2">

__TOC__

</div>

## CSS版本支援

想了解各版本的CSS差異，請參考項目[CSS](https://zh.wikipedia.org/wiki/CSS "wikilink")。
本表格不以CSS2.0為準，因為存在取代它的CSS2.1。CSS2.1修正了部份CSS2.0的錯誤，刪除了不被CSS社區接受的功能。大部分被刪除的功能將會出現在CSS3。

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CSS1</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2.1</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 語法與規則

<table>
<thead>
<tr class="header">
<th></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CSS2</p></td>
<td><p><code>!important</code></p></td>
<td><p>重要程度增加</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>/*Comment*/</code></p></td>
<td><p>註解</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@import</code></p></td>
<td><p>匯入樣式</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>@charset</code></p></td>
<td><p>字元編碼</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@media</code></p></td>
<td><p>媒體特定</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>@page</code></p></td>
<td><p>換頁媒體</p></td>
<td></td>
<td><p>[1]</p></td>
<td><p>[2]</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td><p><code>@namespace</code></p></td>
<td><p>命名空間宣告</p></td>
<td><p>[3]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>@document</code></p></td>
<td><p>Restriction by URLs</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@keyframes</code></p></td>
<td><p>动画关键帧</p></td>
<td><p>[4]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>@font-face</code></p></td>
<td><p>定義字型</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@supports</code></p></td>
<td><p>有条件的规则</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>@phonetic-alphabet</code></p></td>
<td><p>發音</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@region</code></p></td>
<td><p>Region flow segment</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>@counter-style</code></p></td>
<td><p>自定义计数器样式</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@top-left-corner</code></p></td>
<td><p>Margin boxes [5]</p></td>
<td><p>rowspan="16" </p></td>
<td><p>rowspan="16" </p></td>
<td><p>rowspan="16"  [6]</p></td>
<td><p>rowspan="16" </p></td>
<td><p>rowspan="16" </p></td>
</tr>
<tr class="even">
<td><p><code>@top-left</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@top-center</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>@top-right</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@top-right-corner</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>@bottom-left-corner</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@bottom-left</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>@bottom-center</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@bottom-right</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>@bottom-right-corner</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@left-top</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>@left-middle</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@left-bottom</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>@right-top</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@right-middle</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>@right-bottom</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></td>
<td><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></td>
<td><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></td>
<td><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></td>
<td><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></td>
</tr>
</tbody>
</table>

### Trident語法與規則附註

1.  `!important` — 7.0之前，`!important`並不會蓋掉在同一個宣告區的後面的規則。
2.  `@import` — 8.0之前，不支援媒體形態。使用` @import  `<URL>`
     `<MEDIA>，則IE會要求此URL：「<URL>`
     `<MEDIA>」，包括`url()`及URL裡的引號。無法匯入超過35的樣式表。

### Presto語法與規則附註

1.  `@import` —
    儘管Gecko、WebKit及iCab會立即下載所有樣式表，Opera只下載媒體名為「handheld」、「print」、「projection」、「screen
    media」、「speech」（當聲音功能在啟動狀態）、「tv」（電視裝置）。文字瀏覽器模擬模式僅為一個使用者樣式表而不用媒體形態「tty」。這是符合不支援CSS的老舊文字瀏覽器的。

## 選擇器

<table>
<thead>
<tr class="header">
<th></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>元素選擇器[7]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>*</code></p></td>
<td><p>全域</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E</code></p></td>
<td><p>元素</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E.class</code></p></td>
<td><p>類別</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E#id</code></p></td>
<td><p>ID</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS3</p></td>
<td><p><code>ns|E</code></p></td>
<td><p>命名空間</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>關係選擇器</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>E F</code></p></td>
<td><p>後裔</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E &gt; F</code></p></td>
<td><p>子元素</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E + F</code></p></td>
<td><p>直接相連</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td><p><code>E ~ F</code></p></td>
<td><p>間接相連</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS4</p></td>
<td><p><code>E /for/ F</code></p></td>
<td><p>Reference combinators</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E! &gt; F</code></p></td>
<td><p>Subject</p></td>
<td></td>
<td><p>[8]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>屬性選擇器</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS2</p></td>
<td><p><code>E[attr]</code></p></td>
<td><p>存在</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E[attr="value"]</code></p></td>
<td><p>相等</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E[attr~="value"]</code></p></td>
<td><p>含有（以空白相隔）</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E[attr|="value"]</code></p></td>
<td><p>含有（以連字號相隔）</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td><p><code>E[attr^="value"]</code></p></td>
<td><p>以……開頭</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E[attr$="value"]</code></p></td>
<td><p>以……結尾</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="3" </p></td>
</tr>
<tr class="odd">
<td><p><code>E[attr*="value"]</code></p></td>
<td><p>含有子字串</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E[ns|attr]</code></p></td>
<td><p>命名空間</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>擬類別</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>E:link</code></p></td>
<td><p>未開過連結</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:visited</code></p></td>
<td><p>開過連結</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:active</code></p></td>
<td><p>啟動中</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:hover</code></p></td>
<td><p>滑鼠置上</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:focus</code></p></td>
<td><p>集中點</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:first-child</code></p></td>
<td><p>第一子元素</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:lang()</code></p></td>
<td><p>語言</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@page:first</code></p></td>
<td><p>第一頁</p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" [9]</p></td>
<td><p>rowspan="3" [10]</p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
</tr>
<tr class="even">
<td><p><code>@page:left</code></p></td>
<td><p>左頁</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>@page:right</code></p></td>
<td><p>右頁</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS3</p></td>
<td><p><code>E:root</code></p></td>
<td><p>根</p></td>
<td><p>rowspan="17" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="16" </p></td>
</tr>
<tr class="odd">
<td><p><code>E:not()</code></p></td>
<td><p>逆</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:empty</code></p></td>
<td><p>空元素</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:first-of-type</code></p></td>
<td><p>第一個名為……的子元素</p></td>
<td></td>
<td><p>rowspan="13" </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:last-child</code></p></td>
<td><p>最後子元素</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:last-of-type</code></p></td>
<td><p>最後一個名為……的子元素</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:only-child</code></p></td>
<td><p>唯一子元素</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:only-of-type</code></p></td>
<td><p>唯一個名為……的子元素</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:nth-child</code></p></td>
<td><p>第N個子元素</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:nth-last-child</code></p></td>
<td><p>第N個子元素（倒過來數）</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:nth-of-type</code></p></td>
<td><p>第N個名為……的子元素</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:nth-last-of-type</code></p></td>
<td><p>第N個名為……的子元素（倒過來數）</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:target</code></p></td>
<td><p>目標</p></td>
<td></td>
<td></td>
<td><p>rowspan="14" </p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:enabled</code></p></td>
<td><p>啟動狀態</p></td>
<td></td>
<td><p>rowspan="3" </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:disabled</code></p></td>
<td><p>未啟動狀態</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:checked</code></p></td>
<td><p>被選取狀態</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:indeterminate</code></p></td>
<td><p>中間狀態</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:default</code></p></td>
<td><p>預設</p></td>
<td></td>
<td></td>
<td><p>[11]</p></td>
<td></td>
<td><p>rowspan="7" </p></td>
</tr>
<tr class="even">
<td><p><code>E:valid</code></p></td>
<td><p>合格</p></td>
<td><p>[12]</p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="2" [13]</p></td>
<td><p>rowspan="6" </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:invalid</code></p></td>
<td><p>不合格</p></td>
<td><p>[14]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:in-range</code></p></td>
<td><p>範圍內</p></td>
<td></td>
<td><p>rowspan="2" [15]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:out-of-range</code></p></td>
<td><p>範圍外</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:required</code></p></td>
<td><p>必需</p></td>
<td><p>[16]</p></td>
<td><p>rowspan="2" [17]</p></td>
<td><p>rowspan="2" [18]</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:optional</code></p></td>
<td><p>非必需</p></td>
<td><p>[19]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:read-only</code></p></td>
<td><p>唯讀</p></td>
<td></td>
<td><p>rowspan="2" [20]</p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
</tr>
<tr class="odd">
<td><p><code>E:read-write</code></p></td>
<td><p>讀寫</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS4</p></td>
<td><p><code>E:not(s1, s2)</code></p></td>
<td><p>否定</p></td>
<td><p>rowspan="19" </p></td>
<td></td>
<td><p>rowspan="19" </p></td>
<td><p>rowspan="19" </p></td>
</tr>
<tr class="odd">
<td><p><code>E:matches(s1, s2)</code></p></td>
<td><p>匹配其中任意一个</p></td>
<td><p>[21]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E[foo="bar" i]</code></p></td>
<td><p>大小写敏感性</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:dir(ltr)</code></p></td>
<td><p>方向性</p></td>
<td><p>[22]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:lang(zh, *-hant)</code></p></td>
<td><p>(多种) 语言</p></td>
<td><p>rowspan="4" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:any-link</code></p></td>
<td><p>超链接</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:local-link</code></p></td>
<td><p>本地链接</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:local-link(0)</code></p></td>
<td><p>本地链接</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:scope</code></p></td>
<td><p>Contextual reference</p></td>
<td><p>[23]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:current</code></p></td>
<td><p>Time-dimensional : current</p></td>
<td><p>rowspan="10" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:current(s)</code></p></td>
<td><p>Time-dimensional : current</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:past</code></p></td>
<td><p>Time-dimensional : past</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:future</code></p></td>
<td><p>Time-dimensional : future</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:indeterminate</code></p></td>
<td><p>Indeterminate-value</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:nth-match(n of selector)</code></p></td>
<td><p>N<sup>th</sup> child of</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:nth-last-match(n of selector)</code></p></td>
<td><p>N<sup>th</sup> last child of</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:column(selector)</code></p></td>
<td><p>分栏</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:nth-column(n)</code></p></td>
<td><p>第 n 个分栏</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:nth-last-column(n)</code></p></td>
<td><p>倒数第 n 个分栏</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>擬元素</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>E:first-letter</code></p></td>
<td><p>第一字節</p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td><p>rowspan="4" </p></td>
</tr>
<tr class="odd">
<td><p><code>E:first-line</code></p></td>
<td><p>第一行</p></td>
<td></td>
<td><p>[24]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E:before</code></p></td>
<td><p>之前</p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E:after</code></p></td>
<td><p>之後</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS3</p></td>
<td><p><code>E::before</code></p></td>
<td><p>雙冒號語法</p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="5" </p></td>
</tr>
<tr class="odd">
<td><p><code>E::after</code></p></td>
<td><p>雙冒號語法</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E::first-letter</code></p></td>
<td><p>雙冒號語法</p></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E::first-line</code></p></td>
<td><p>雙冒號語法</p></td>
<td></td>
<td><p>[25]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E::selection</code></p></td>
<td><p>選取</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>E::marker</code> [26]</p></td>
<td><p>列表标记</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>E::value</code></p></td>
<td><p>数据本身選取</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></td>
<td><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></td>
<td><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></td>
<td><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></td>
<td><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></td>
</tr>
</tbody>
</table>

### 一般選擇器附註

1.  `:read-only`與`:read-write` —
    Presto與KHTML皆不正確地處理有`contenteditable`屬性的元素。

### Trident選擇器附註

1.  `:active` — 8.0之前，Trident僅支援超連結元素。
2.  `:hover` — 7.0之前，Trident僅支援超連結元素。
3.  `.one.two` — 7.0之前，被當成`.two`類別選擇器處理。
4.  `*` — 7.0之前這代表「一個或是沒有元素」。
5.  `[attr]` —
    當屬性是`colspan`的時候，選出所有表格內的`td`元素及`th`元素（有沒有之的有`colspan`屬性都一樣）。\[27\]這可能不是一個bug，因規格存在模稜兩可的解釋。\[28\]
6.  `:first-letter`、`:first-line` —
    在6.0，`:first-letter`與其他rules一起使用的時候可能有問題。\[29\]在8.0，在`:first-line`與`:first-letter`宣告內的有`!important`的rules會被省略。\[30\]

### Gecko選擇器附註

1.  `(:):before, (:):after` — 在1.9.1之前，有些屬性不能使用（這是CSS2.0的過期解釋）。\[31\]

### WebKit選擇器附註

1.  `:lang()` — 只對寫上`lang`屬性的元素有效，屬性不繼承。
2.  `(:):first-line` — `text-transform`不在此擬元素上作用。\[32\]
3.  `(:):before/after` — 有些樣式無法使用於`:before`與`:after`擬元素之上，如動畫與轉變。\[33\]

### Presto選擇器附註

1.  `:target` — 在2.5之前，樣式在以向前向後按鈕瀏覽的時候不作用。

## 屬性

<table>
<thead>
<tr class="header">
<th></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>盒子模型(@@翻譯)[34]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>margin</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="13" </p></td>
</tr>
<tr class="odd">
<td><p><code>padding</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>width</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>height</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>float</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>clear</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>display</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>min-width</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>max-width</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>min-height</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>max-height</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>clip</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>overflow</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>visibility</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS3</p></td>
<td><p><code>overflow-x</code></p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
</tr>
<tr class="odd">
<td><p><code>overflow-y</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>邊框[35]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS2</p></td>
<td><p><code>border</code></p></td>
<td></td>
<td><p>rowspan="8" </p></td>
<td><p>rowspan="8" </p></td>
<td><p>rowspan="8" </p></td>
<td><p>rowspan="8" </p></td>
</tr>
<tr class="even">
<td><p><code>border-color</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>border-style</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>border-width</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>border-top</code></p></td>
<td><p>rowspan="4" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>border-right</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>border-bottom</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>border-left</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td><p><code>border-radius</code></p></td>
<td><p>[36]</p></td>
<td><p>[37]</p></td>
<td><p>[38]</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>border-image</code></p></td>
<td><p>rowspan="6" </p></td>
<td><p>[39]</p></td>
<td></td>
<td><p>rowspan="6" </p></td>
<td></td>
<td><p>rowspan="6" </p></td>
</tr>
<tr class="odd">
<td><p><code>border-image-source</code></p></td>
<td><p>rowspan="5" [40]</p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>border-image-slice</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>border-image-width</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>border-image-outside</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>border-image-repeat</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>box-shadow</code></p></td>
<td></td>
<td><p>[41]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>box-decoration-break</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>[42]</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></td>
<td><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></td>
<td><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></td>
<td><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></td>
<td><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></td>
</tr>
<tr class="odd">
<td><p>行排版[43]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>line-height</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="2" </p></td>
</tr>
<tr class="odd">
<td><p><code>vertical-align</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>定位</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS2</p></td>
<td><p><code>position</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="6" </p></td>
</tr>
<tr class="even">
<td><p><code>top</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>right</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>bottom</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>left</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>z-index</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>生成內容與取代內容(@@翻譯)[44]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>quotes</code></p></td>
<td></td>
<td></td>
<td><p>[45]</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>content</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>counter-increment</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="2" </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>counter-reset</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>列[46]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS2</p></td>
<td><p><code>list-style</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="4" </p></td>
</tr>
<tr class="even">
<td><p><code>list-style-image</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>list-style-position</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>list-style-type</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>色彩[47]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>color</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td><p><code>opacity</code></p></td>
<td><p>[48]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></td>
<td><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></td>
<td><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></td>
<td><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></td>
<td><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></td>
</tr>
<tr class="odd">
<td><p>背景[49]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>background</code></p></td>
<td></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="6" </p></td>
</tr>
<tr class="odd">
<td><p><code>background-attachment</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>background-color</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>background-image</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>background-position</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>background-repeat</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS3</p></td>
<td><p><code>background (多重)</code></p></td>
<td><p>rowspan="4" [50]</p></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="4" </p></td>
</tr>
<tr class="odd">
<td><p><code>background-clip</code></p></td>
<td><p>rowspan="3" [51]</p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>background-origin</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>background-size</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>字型[52]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS2</p></td>
<td><p><code>font</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>font-family</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="4" </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>font-size</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>font-style</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>font-variant</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>font-weight</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td><p><code>font-size-adjust</code></p></td>
<td><p>[53]</p></td>
<td></td>
<td><p>[54]</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>font-stretch</code></p></td>
<td><p>[55]</p></td>
<td><p>[56]</p></td>
<td><p>[57]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>font-feature-settings</code></p></td>
<td><p>[58]</p></td>
<td></td>
<td><p>[59]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>font-kerning</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>font-language-override</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>font-synthesis</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>font-variant-alternates</code></p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="6" </p></td>
</tr>
<tr class="even">
<td><p><code>font-variant-caps</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>font-variant-east-asian</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>font-variant-ligatures</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>font-variant-numeric</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>font-variant-position</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>unicode-range</code></p></td>
<td><p>[60]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>文字[61]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS2</p></td>
<td><p><code>text-align</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="6" </p></td>
</tr>
<tr class="even">
<td><p><code>text-decoration</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>text-indent</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>text-transform</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>letter-spacing</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>word-spacing</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>white-space</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS3</p></td>
<td><p><code>text-overflow</code></p></td>
<td></td>
<td><p>[62]</p></td>
<td></td>
<td></td>
<td><p>[63]</p></td>
</tr>
<tr class="odd">
<td><p><code>word-break</code></p></td>
<td></td>
<td><p>[64]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>text-wrap</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>word-wrap</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>text-align-last</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>text-justify</code></p></td>
<td></td>
<td><p>[65]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>punctuation-trim</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>text-outline</code></p></td>
<td></td>
<td><p>[66]</p></td>
<td><p>[67][68]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>hanging-punctuation</code></p></td>
<td></td>
<td></td>
<td><p>[69]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS 4</p></td>
<td><p><code>hyphenate-character</code></p></td>
<td></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
</tr>
<tr class="even">
<td><p><code>hyphenate-limit-zone</code></p></td>
<td><p>[70]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>hyphenate-limit-chars</code></p></td>
<td><p>[71]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>hyphenate-limit-lines</code></p></td>
<td><p>[72]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>hyphenate-limit-last</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></td>
<td><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></td>
<td><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></td>
<td><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></td>
<td><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></td>
</tr>
<tr class="odd">
<td><p>文本装饰[73]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS 3</p></td>
<td><p><code>text-shadow</code></p></td>
<td><p>[74]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>text-decoration-style</code></p></td>
<td></td>
<td><p>rowspan="3" [75][76]</p></td>
<td><p>rowspan="4" [77]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>text-decoration-color</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>text-decoration-line</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>text-decoration-skip</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>text-underline-position</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>text-emphasis-style</code></p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
</tr>
<tr class="odd">
<td><p><code>text-emphasis-color</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>text-emphasis</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>text-emphasis-position</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>書寫模式[78]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td><p><code>direction</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="2" </p></td>
</tr>
<tr class="even">
<td><p><code>unicode-bidi</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>writing-mode</code></p></td>
<td></td>
<td><p>[79]</p></td>
<td><p>[80]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>text-combine</code></p></td>
<td></td>
<td></td>
<td><p>[81]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>表格</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>border-collapse</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="5" </p></td>
</tr>
<tr class="odd">
<td><p><code>border-spacing</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>caption-side</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>empty-cells</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>table-layout</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>使用者界面[82]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>cursor</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>outline</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="4" </p></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>outline-color</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>outline-style</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>outline-width</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td><p><code>outline-offset</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>box-sizing</code></p></td>
<td></td>
<td><p>[83]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>resize</code></p></td>
<td></td>
<td><p>[84]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>appearance</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>icon</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>nav-index</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="5" </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>nav-up</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>nav-right</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>nav-down</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>nav-left</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></td>
<td><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></td>
<td><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></td>
<td><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></td>
<td><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></td>
</tr>
<tr class="even">
<td><p>換頁媒體[85]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS2</p></td>
<td><p><code>page-break-before</code></p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
</tr>
<tr class="even">
<td><p><code>page-break-after</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>page-break-inside</code></p></td>
<td><p>rowspan="3" </p></td>
<td><p>[86]</p></td>
<td><p>rowspan="3" </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>orphans</code></p></td>
<td><p>rowspan="2" [87]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>widows</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS3</p></td>
<td><p><code>page</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>size</code></p></td>
<td></td>
<td></td>
<td><p>[88]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>image-orientation</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>object-fit</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="2" [89]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>object-position</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>語音[90]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>cue</code></p></td>
<td><p>rowspan="23" </p></td>
<td><p>rowspan="23" [91]</p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="23" </p></td>
<td><p>rowspan="8" </p></td>
</tr>
<tr class="odd">
<td><p><code>cue-after</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>cue-before</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>pause</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>pause-after</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>pause-before</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>speak</code></p></td>
<td><p>[92]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>voice-family</code></p></td>
<td><p>rowspan="16" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS3</p></td>
<td><p><code>voice-balance</code></p></td>
<td><p>rowspan="9" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>voice-duration</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>voice-pitch</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>voice-pitch-range</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>voice-rate</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>voice-stress</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>voice-volume</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>interpret-as</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>phonemes</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>rest</code></p></td>
<td><p>rowspan="6" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>rest-after</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>rest-before</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>mark</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>mark-after</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>mark-before</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></td>
<td><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></td>
<td><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></td>
<td><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></td>
<td><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></td>
</tr>
<tr class="even">
<td><p>媒體查詢[93]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td><p><code>width</code></p></td>
<td><p>rowspan="13" [94]</p></td>
<td><p>rowspan="11" </p></td>
<td><p>rowspan="8" </p></td>
<td><p>rowspan="9" </p></td>
<td><p>rowspan="5" </p></td>
</tr>
<tr class="even">
<td><p><code>height</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>device-width</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>device-height</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>device-aspect-ratio</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>color</code></p></td>
<td><p>rowspan="4" </p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>color-index</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>monochrome</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>resolution</code></p></td>
<td><p>rowspan="5" </p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>orientation</code></p></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>aspect-ratio</code></p></td>
<td></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>grid</code></p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>?</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>scan</code></p></td>
<td><p>?</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Ruby字元[95]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td><p><code>ruby-position</code></p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="4" [96]</p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
</tr>
<tr class="even">
<td><p><code>ruby-align</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>ruby-overhang</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>ruby-span</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>多欄排版[97]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS3</p></td>
<td><p><code>column-count</code></p></td>
<td><p>rowspan="10" [98]</p></td>
<td><p>rowspan="4" [99]</p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="10" </p></td>
<td><p>rowspan="10" [100]</p></td>
</tr>
<tr class="odd">
<td><p><code>column-width</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>column-gap</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>column-rule</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>columns</code></p></td>
<td><p>[101]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>break-before</code></p></td>
<td><p>rowspan="3" [102]</p></td>
<td><p>rowspan="2" [103]</p></td>
<td><p>rowspan="4" </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>break-after</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>break-inside</code></p></td>
<td><p>rowspan="1" [104]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>column-fill</code></p></td>
<td><p>[105]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>column-span</code></p></td>
<td><p>[106]</p></td>
<td><p>[107]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></td>
<td><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></td>
<td><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></td>
<td><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></td>
<td><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></td>
</tr>
<tr class="odd">
<td><p>動畫[108]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS3</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>animation</code></p></td>
<td><p>rowspan="9" [109]</p></td>
<td><p>rowspan="9" [110]</p></td>
<td><p>rowspan="9" </p></td>
<td><p>rowspan="9" </p></td>
<td><p>rowspan="9" </p></td>
<td><p>rowspan="9" </p></td>
</tr>
<tr class="even">
<td><p><code>animation-delay</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>animation-direction</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>animation-duration</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>animation-iteration-count</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>animation-name</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>animation-play-state</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>animation-timing-function</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>animation-fill-mode</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>2D變換[111]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>transform</code></p></td>
<td><p>rowspan="2" [112]</p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
</tr>
<tr class="odd">
<td><p><code>transform-origin</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></td>
<td><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></td>
<td><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></td>
<td><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></td>
<td><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a>}</p></td>
</tr>
<tr class="odd">
<td><p>3D變換[113]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS3</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>transform</code></p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="6" [114]</p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="6" </p></td>
</tr>
<tr class="even">
<td><p><code>transform-origin</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>transform-style</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>perspective</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>perspective-origin</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>backface-visibility</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>轉變[115]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS3</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>transition-property</code></p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" [116]</p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
</tr>
<tr class="even">
<td><p><code>transition-duration</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>transition-timing-function</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>transition-delay</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>transition</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>彈性盒排版(@@翻譯)[117]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>box-align</code></p></td>
<td><p>rowspan="8" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="8" </p></td>
<td><p>rowspan="8" </p></td>
<td><p>rowspan="8" </p></td>
<td><p>rowspan="8" </p></td>
</tr>
<tr class="odd">
<td><p><code>box-direction</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>box-flex</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>box-flex-group</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>box-lines</code></p></td>
<td><p>[118]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>box-ordinal-group</code></p></td>
<td><p>rowspan="3" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>box-orient</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>box-pack</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>彈幕(@@翻譯xd)[119]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>marquee-direction</code></p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="4" [120]</p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
</tr>
<tr class="odd">
<td><p><code>marquee-play-count</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>marquee-speed</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>marquee-style</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>overflow-style</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></td>
<td><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></td>
<td><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></td>
<td><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></td>
<td><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></td>
</tr>
</tbody>
</table>

### 一般屬性附註

1.  `text-decoration` — Gecko或Webkit的底線有可能會畫過行級(@@inline翻譯)取代元素（例如圖片）。

### Trident屬性附註

1.  `margin` — `inherit`繼承未計算值然後再計算一次而不是直接繼承計算後的值。\[121\]
2.  `display` —
    7.0之前，支援無誤的只有`none`、`block`、`inline`、`table-header-group`及`table-footer-group`。8.0之前，沒支援`run-in`與`table`，而`inline-block`僅支援在行級元素上。
3.  `overflow` — 7.0之前，`overflow:
    visible;`支援的不正確。在8.0，`scroll`將該元素的高度調至`max-height`，就算內容並沒有這麼高。\[122\]
4.  `visibility` — 8.0之前，未支援「`visibility: collapse;`」。在8.0，`visibility:
    hidden;`的塊元素(@@block翻譯)中「`visibility: visible;`」的行級元素不被顯示。\[123\]
5.  `content` — 在8.0，`attr()`的算後值不在屬性(attribute)變更時被更新。\[124\]
6.  `border-color` — 7.0之前，不支援`transparent`。
7.  `border-style` — 8.0之前，不支援`hidden`。
8.  `border-style` — 7.0之前，`dotted`被顯示成`dashed`。
9.  `box-shadow` —
    9.0之前，trident支援自從5.5就有的類似的專有屬性「Shadow」\[125\]及「DropShadow」\[126\]過濾器。
10. `position` — 7.0之前，未支援固定配置。7.0跟之後版本只在標準模式的時候支援。
11. `z-index` — 8.0之前，僅部份支援`z-index`。\[127\]在8.0，除了整數以外也支持浮點數。\[128\]
12. `list-style-type` —
    8.0之前，不支援`armenian`、`decimal-leading-zero`、`georgian`、`lower-greek`、`lower-latin`、`upper-latin`。
13. `opacity` — 9.0之前，Trident支援一個專有的替代屬性。\[129\]
14. `background-image` — 8.0之前，背景圖片在某些情況下被處理的很糟。\[130\]\[131\]
15. `background-attachment` — 7.0之前，`fixed`只被允許使用在`body`元素上。
16. `background-position` — 8.0之前，不支援固定配置。
17. `font-weight` — 8.0之前，當取值為600顯示不正確。\[132\]
18. `text-align` — 在8.0，`text-align`不被`:before`及`:after`擬元素繼承。\[133\]
19. `white-space` —
    6.0之前，不支援`pre`。8.0之前，僅部份支援`white-space`：不支援`pre-line`及`pre-wrap`。\[134\]
20. `writing-mode` —
    Trident支援過期的取值`lr-tb`、`tb-rl`、`tb-lr`等等。\[135\]這些取值作用在`direction`上。這是與Webkit不同的行為。
21. `cursor` — 仍作用於沒前輟的瀏覽器擴充。

### Gecko屬性附註

1.  `display` —
    不支援`run-in`。\[136\]1.9之前，不支援「`inline-table`\[137\]」與「`inline-block`\[138\]」。
2.  `z-index` — 1.9之前負數的支援情況不佳。
3.  `quotes` — 1.8之前不支援巢狀引用。\[139\]
4.  `content` — 1.9之前不支援「`none`」。此屬性不作用在一般元素（非擬元素），不符合《CSS 3
    生成內容與取代內容模組》。
5.  `background-position` — 1.7以前的版本使用CSS2語法，非CSS2.1的擴充語法。
6.  `font-size-adjust` — 1.9之前，僅在視窗版支援。
7.  `font-weight` —
    就算裝了一個字型的Light或Heavy/Black[字模](https://zh.wikipedia.org/wiki/字模 "wikilink")，除非使用Gecko
    2.0在Windows 7或Windows Vista的DirectWrite，僅Regular與Bold會被使用。
8.  `white-space` —
    1.9.1之前不支援`pre-line`。1.9之前，以`-moz-pre-wrap`實驗性地支援`pre-wrap`的功能。
9.  `visibility` — 1.8之前不支援`collapse`。
10. `border-radius` —
    1.9.1之前，邊框的曲線是圓形而不是同現在CSS3草案記載的橢圓曲線，短宣告`border-radius`的順序是「左上
    右上 右下 左下」而不是W3C的「右上 右下 左下
    左上」。當邊框的樣式是點線(dotted)破折線(dashed)，曲線總是顯示實線為。\[140\]
11. `page-break-before; page-break-after` — 僅支援「`always`」與「`auto`」。

### WebKit屬性附註

1.  `font` — 不支援讓設計師根據使用者作業系統呈現結果的系統字型關鍵字。
2.  `font-weight` —
    就算裝了一個字型的Light或Heavy/Black[字模](https://zh.wikipedia.org/wiki/字模 "wikilink")，僅Regular與Bold會被使用。
3.  `page-break-before; page-break-after` — 僅支援「`always`」與「`auto`」。
4.  `white-space` — 522之前，不支援「`pre-line`」與「`pre-wrap`」。
5.  `visibility` —
    522之前不支援「`collapse`」，這個值的實作跟「`hidden`」一樣，因此不合標準。\[141\]
6.  `content` —
    不支援「`none`」、「`open-quote`」、「`close-quote`」、「`no-open-quote`」、「`no-close-quote`」及「`normal`」，且此屬性不作用在一般元素（非擬元素），不符合《CSS
    3 生成內容與取代內容模組》。
7.  `font-size` — 「`font-size`」屬性不見得吃0這個值，就算用「font-size: 0px」，文字還是看得見。

### KHTML屬性附註

1.  `overflow` — 不支援取值「`scroll`」與「`auto`」。
2.  `page-break-before; page-break-after` — 3.5之前僅支援「`always`」與「`auto`」。
3.  `visibility` — 支援所有的屬性，但「`collapse`」這個值的實作跟「`hidden`」一樣，因此不合標準。

### Presto屬性附註

1.  `counter-increment, counter-reset` — 使用推薦標準版本(CSS2)的演算法。
2.  `background-position` — Presto在Opera 8.0以前的版本使用CSS2語法，非CSS2.1的擴充語法。
3.  `font-weight` — 當取值為600顯示不正確，與以Trident為對象設計的網站兼容。
4.  `visibility` —
    2.5之前，在表格列裡不支援「`collapse`」這個值，在表格行裡，這個值呈現與「`hidden`」同樣的效果因此不合標準。
5.  `cursor` — 「`cursor`」不支援動態擬類別，且不支援自定游標。
6.  `content` — 不支援取值「`none`」。\[142\]
7.  `font` —
    不應該吃「`inherit`」跟一個「font-size」取值的情形，這應該被當作語法錯誤並丟棄，但Opera接受這種狀況。

### Prince XML屬性附註

1.  `visibility` — 不支援取值「`collapse`」。\[143\]
2.  `list-style` — 不支援取值「`armenian`」與「`georgian`」。\[144\]
3.  `content` — 不支援取值「`open-quote`」與「`close-quote`」。\[145\]

## 取值與單位

<table>
<thead>
<tr class="header">
<th></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>數[146]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><number></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/浮點數" title="wikilink">浮點數</a></p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
</tr>
<tr class="odd">
<td><p><length></p></td>
<td><p><number>接單位</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><percentage></p></td>
<td><p><number>接<strong>%</strong></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><integer></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/整數" title="wikilink">整數</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS3</p></td>
<td><p><angle></p></td>
<td><p><number>接角度單位</p></td>
<td><p>rowspan="2" [147]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><time></p></td>
<td><p><number>接長度單位</p></td>
<td><p>[148]</p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><frequency></p></td>
<td><p><number>接頻率單位</p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><fraction></p></td>
<td><p>剩餘空間</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>字串</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS2</p></td>
<td><p><string></p></td>
<td><p>String</p></td>
<td></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
</tr>
<tr class="even">
<td><p><code>\code</code></p></td>
<td><p>Unicode轉意</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>型</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>rect()</code></p></td>
<td><p>長方型</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>函數</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>url()</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/URI" title="wikilink">URI</a></p></td>
<td></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
</tr>
<tr class="odd">
<td><p><code>counter()</code></p></td>
<td></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>attr()</code></p></td>
<td><p>屬性標示符</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td><p><code>calc()</code></p></td>
<td></td>
<td><p>[149]</p></td>
<td><p>[150]</p></td>
<td><p>[151]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>顏色</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS2</p></td>
<td><p>HTML4顏色關鍵字</p></td>
<td><p>16個預定義<a href="https://zh.wikipedia.org/wiki/網頁顏色模式" title="wikilink">網頁顏色</a></p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
</tr>
<tr class="even">
<td><p><code>#rrggbb或#rgb</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/十六進位" title="wikilink">十六進位記法</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>rgb(r, g, b)</code></p></td>
<td><p><a href="../Page/三原色光模式.md" title="wikilink">RGB記法</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>系統顏色</code>[152]</p></td>
<td><p>28預定義系統顏色</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td><p>SVG顏色關鍵字</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>currentColor</code></p></td>
<td><p><code>color</code>屬性的值</p></td>
<td><p>rowspan="4" [153]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>rgba(r, g, b, a)</code></p></td>
<td><p><a href="../Page/RGBA.md" title="wikilink">RGBA記法</a></p></td>
<td></td>
<td><p>rowspan="4" </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>hsl(h, s, l)</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/HSL和HSV色彩空間" title="wikilink">HSL記法</a></p></td>
<td></td>
<td></td>
<td></td>
<td><p>rowspan="2" </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>hsla(h, s, l, a)</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/HSL和HSV色彩空間" title="wikilink">HSLA記法</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/#general_transparent" title="wikilink"><code>transparent</code></a></p></td>
<td><p>全<a href="../Page/透明.md" title="wikilink">透明</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>圖像值[154]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><url></p></td>
<td><p>圖像形態</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td><p><sprite></p></td>
<td><p>rowspan="8" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="8" </p></td>
<td><p>rowspan="8" </p></td>
</tr>
<tr class="even">
<td><p><image-list></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><linear-gradient></p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="4" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><radial-gradient></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>linear-gradient()</code></p></td>
<td><p>漸層</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>radial-gradient()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>repeating-linear-gradient()</code></p></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>repeating-radial-gradient()</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>關鍵字</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>auto</code></p></td>
<td><p>自動</p></td>
<td></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
</tr>
<tr class="odd">
<td><p><code>inherit</code></p></td>
<td><p>從母元素繼承</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS3</p></td>
<td><p><code>initial</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>單位</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>CSS2</p></td>
<td><p><code>px</code></p></td>
<td><p><a href="../Page/像素.md" title="wikilink">像素</a></p></td>
<td><p>rowspan="9" </p></td>
<td><p>rowspan="9" </p></td>
<td><p>rowspan="9" </p></td>
<td><p>rowspan="9" </p></td>
</tr>
<tr class="odd">
<td><p><code>pt</code></p></td>
<td><p><a href="../Page/點_(印刷).md" title="wikilink">點</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>pc</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/倍卡" title="wikilink">倍卡</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>cm</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/公分" title="wikilink">公分</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>mm</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/公釐" title="wikilink">公釐</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>in</code></p></td>
<td><p>英尺</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>em</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/正方" title="wikilink">正方</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>ex</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/X字高" title="wikilink">X字高</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>%</code></p></td>
<td><p><a href="../Page/百分比.md" title="wikilink">百分比</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>CSS3</p></td>
<td><p><code>deg</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/角度" title="wikilink">度</a></p></td>
<td><p>rowspan="6" [155]</p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
</tr>
<tr class="even">
<td><p><code>grad</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/梯度_(角)" title="wikilink">梯度</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>rad</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/弧度" title="wikilink">弧度</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>turn</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/轉_(角)" title="wikilink">轉</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>ms</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/毫秒" title="wikilink">毫秒</a></p></td>
<td><p>rowspan="2" [156]</p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="2" </p></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>s</code></p></td>
<td><p>秒</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>Hz</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/赫茲" title="wikilink">赫茲</a></p></td>
<td><p>rowspan="7" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>kHz</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/千赫" title="wikilink">千赫</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>dpi</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/dpi" title="wikilink">dpi</a></p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>dpcm</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/dpi" title="wikilink">dpcm</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>dppx</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/dppx" title="wikilink">dppx</a></p></td>
<td></td>
<td></td>
<td><p>{{?}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>gd</code></p></td>
<td><p>網格數</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>fr</code></p></td>
<td><p>剩餘空間分配數</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>rem</code></p></td>
<td><p>根原素字型大小</p></td>
<td><p>rowspan="5" [157]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>vw</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/視口" title="wikilink">視口的寬度</a></p></td>
<td><p>rowspan="3" [158]</p></td>
<td><p>rowspan="3" [159]</p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>vh</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/視口" title="wikilink">視口的高度</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>vm</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/視口" title="wikilink">視口高度跟寬度小的那個</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>ch</code></p></td>
<td><p>從字型中抽出的該大小的「0」(ZERO, U+0030)的<a href="../Page/字形.md" title="wikilink">字形寬度</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></td>
<td><p><a href="../Page/Gecko.md" title="wikilink">Gecko</a></p></td>
<td><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></td>
<td><p><a href="../Page/KHTML.md" title="wikilink">KHTML</a></p></td>
<td><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Prince_XML" title="wikilink">Prince XML</a></p></td>
</tr>
</tbody>
</table>

### 取值與單位一般附註

1.  `transparent` —
    >
    CSS1引入了「transparent」當作「background-color」的一個值。
    CSS2開始允許「border-color」使用「transparent」。《Open eBook(tm)
    Publication Structure
    1.0.1》\[OEB101\]擴張了「color」屬性使其也吃關鍵字「transparent」。CSS3擴張了顏色的取值使其包含關鍵字「transparent」，使得所有吃<value>的屬性都可以使用這個值，這也簡化了這些屬性在CSS3的定義。
    </blockquote>
2.  <angle> — 不支援 `turn`。

### 取值與單位Trident附註

1.  `rect()` — 8.0之前，不支援用逗號的正確語法。
2.  `auto` — 在 [Quirks
    mode](https://zh.wikipedia.org/wiki/Quirks_mode "wikilink")（IE5模擬模式），`auto`不作用在除了表格元素之外的`margin`屬性上。
3.  `transparent` — 設`color`屬性為`transparent`則字會呈現為黑色。
4.  `transparent` — 7.0之前，不支援在邊框上的`transparent`（呈現為實心黑色），且在PNG圖像上被省略。

### 取值與單位Gecko附註

1.  <ch> — 版本1.9.1之前，用「M」的[字形寬度](../Page/字形.md "wikilink")
    而非「0」的字形寬度。\[160\]

### 取值與單位Presto附註

1.  <number> —
    2.1之前，對於大於20.47的值曾有一個[量子化錯誤](https://zh.wikipedia.org/wiki/非交換幾何 "wikilink")（不只是`em`，其他非像素單位也一樣）。\[161\]
2.  `transparent` — 當使用屬性
    `outline-color`時此關鍵字會被忽略。版本2.2之前，同樣的情形也發生在屬性`color`及`text-shadow`。

## 一般附註

### 一般Trident附註

1.  `-ms-` —
    所有實驗中的選取器、屬性、值都有「-ms-」作為前輟。例如：是`-ms-interpolation-mode`而不是`interpolation-mode`。

### 一般Gecko附註

1.  `-moz-` —
    所有實驗中的選取器、屬性、值都有「-moz-」作為前輟。例如：是`::-moz-selection`而不是`::selection`。

### 一般WebKit附註

1.  `-webkit-` —
    所有實驗中的選取器、屬性、值都有「-webkit-」作為前輟。例如：是`-webkit-box-shadow`而不是`box-shadow`。

### 一般KHTML附註

1.  `-khtml-` —
    所有實驗中的選取器、屬性、值都有「-khtml-」作為前輟。例如：是`-khtml-opacity`而不是`opacity`。

### 一般Presto附註

1.  `-o-` —
    所有實驗中的選取器、屬性、值都有「-o-」作為前輟。例如：是`-o-transition-property`而不是`transition-property`。
2.  `-xv-` —
    所有實驗中的《CSS3口說模組(@@翻譯)》選取器、屬性、值都有「-o-」作為前輟。例如：是`-xv-voice-rate`而不是`voice-rate`。

### 瀏覽器自定樣式的DOM表現

1.  實驗中的CSS瀏覽器自定屬性的對照DOM屬性沒有連字號，且第一個字母為大寫。例如：`element.style.MozBorderRadius`對應於`-moz-border-radius`屬性、`element.style.OTransform`對應於`-o-transform`屬性。

## 參見

### 規格

### Trident相關

### Gecko相關

### Webkit相關

### Presto相關

### Prince XML相關

### 其他參見

  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
## 外部連結

  - [WebDevout](http://www.webdevout.net/browser-support-css)——以視窗瀏覽器的臭蟲測試為主要導向。
  - [Can I Use](http://caniuse.com/)——展示各大浏览器对HTML5、CSS3的支持程度。
  - [The CSS3 Test](http://css3test.com/)——测试各大浏览器对CSS3的支持程度。
  - [Mozilla Developer
    Network上面的CSS相关资料](https://developer.mozilla.org/en-US/docs/Web/CSS)

[Category:軟件比較](https://zh.wikipedia.org/wiki/Category:軟件比較 "wikilink")

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

14.

15.

16.

17.

18.

19.

20.

21.

22.

23.

24.

25.
26. <http://www.w3.org/TR/css3-lists/>

27.

28.

29.

30.

31.

32.

33.

34.

35.

36.
37.

38.

39.

40.

41.

42.

43.

44.

45.

46.

47.

48.
49.
50.
51.

52.

53.

54.

55.
56.

57.

58.

59.

60.

61.

62.

63.

64.

65.

66.

67.

68.

69.

70.

71.

72.

73.

74.

75.

76.

77.

78.

79.

80.

81.

82.

83.

84.

85.

86.

87.

88.

89.

90.

91.

92.

93.

94.
95.

96.

97.

98.

99.

100.

101.

102.

103.

104.

105.

106.

107.

108.

109.

110.

111.

112.
113.

114.

115.

116.

117.

118.

119.

120.

121.

122.

123.

124.

125.

126.

127.

128.

129.

130.

131.

132.

133.

134.

135.

136.

137.

138.

139.

140.

141.

142.

143.
144.
145.
146.

147.
148.
149.
150.

151.

152.

153.
154.

155.
156.

157.
158.

159.

160.

161.