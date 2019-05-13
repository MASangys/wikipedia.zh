**BBCode**是**B**ulletin **B**oard
**Code**的[縮寫](../Page/縮寫.md "wikilink")，有譯為「**BB代碼**」者，屬於[轻量级标记语言](../Page/轻量级标记语言.md "wikilink")（Lightweight
Markup
Language）的一種，如字面上所顯示的，它主要是使用在[BBS](../Page/BBS.md "wikilink")、[論壇](../Page/网络论坛.md "wikilink")、[Blog等](../Page/Blog.md "wikilink")[網路應用上](../Page/網路.md "wikilink")。BBCode最初由[**U**ltimate
**B**ulletin
**B**oard讨论区系统发展出来](../Page/Ultimate_Bulletin_Board.md "wikilink")，因此常见**UBB代码**的称呼。BBCode的[語法通常為](../Page/語法.md "wikilink")**`[標記]`**的形式，即語法左右用兩個[中括號包圍](../Page/括号.md "wikilink")，以作為與正常文字間的區別。系統[解譯時遇上中括弧便知道該處是BBcode](../Page/解譯.md "wikilink")，會在解譯結果輸出到用戶端時轉換成最為通用的[HTML語法](../Page/HTML.md "wikilink")。

## 目的

BBcode有兩個主要目的：

  - **便利**：

<!-- end list -->

  -
    最為通用的[HTML語法雖然已相當簡單易懂](../Page/HTML.md "wikilink")，但仍需要一定時間學習後才能上手，因此BBcode採用更為直覺易學的語法，轉換為HTML的工作則交由系統來代勞。

<!-- end list -->

  - **安全**：

<!-- end list -->

  -
    過去[BBS](../Page/BBS.md "wikilink")、[論壇](../Page/网络论坛.md "wikilink")、[Blog也曾經設計開放HTML語法讓用戶使用](../Page/Blog.md "wikilink")，但卻衍生出語法輸入錯誤時造成整頁排版錯亂、有心人利用HTML語法進行[XSS式的攻擊與破壞等問題](../Page/XSS.md "wikilink")。由於BBcode的轉換為系統機械式的行為，所以可以有效避免人為輸入錯誤的問題，而BBcode為預先設計好的語法，也就是說意圖以BBcode達成所有的HTML語法效果是不可能的，相當於一種語法過濾，如此便可避免所有可能發生的惡意破壞。

## 範例

BBcode並沒有一個共同的標準，各個[BBS](../Page/BBS.md "wikilink")、[論壇](../Page/网络论坛.md "wikilink")、[Blog等網路應用程式可能會有自己獨創的BBcode](../Page/Blog.md "wikilink")，但基本上仍有一些語法因為被廣泛採用而成為共通語法，簡單舉例如下：

<table>
<thead>
<tr class="header">
<th><p><strong>BBCode</strong></p></th>
<th><p><strong>轉譯後的HTML</strong></p></th>
<th><p><strong>效果</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>[b]粗體[/b]</code></p></td>
<td><p><code>&lt;b&gt;粗體&lt;/b&gt;</code></p></td>
<td><p><strong>粗體</strong></p></td>
</tr>
<tr class="even">
<td><p><code>[i]斜體[/i]</code></p></td>
<td><p><code>&lt;i&gt;斜體&lt;/i&gt;</code></p></td>
<td><p><em>斜體</em></p></td>
</tr>
<tr class="odd">
<td><p><code>[u]底線[/u]</code></p></td>
<td><p><code>&lt;u&gt;底線&lt;/u&gt;</code></p></td>
<td><p><span style="text-decoration:underline;">底線</span></p></td>
</tr>
<tr class="even">
<td><p><code>[url]http://wikipedia.org[/url]</code></p></td>
<td><p><code>&lt;a href="http://wikipedia.org"&gt; http://wikipedia.org&lt;/a&gt;</code></p></td>
<td><p><span class="plainlinks"><a href="http://wikipedia.org"><a href="http://wikipedia.org">http://wikipedia.org</a></a></span></p></td>
</tr>
<tr class="odd">
<td><p><code>[url=http://wikipedia.org]Wikipedia[/url]</code></p></td>
<td><p><code>&lt;a href="http://wikipedia.org"&gt;Wikipedia&lt;/a&gt;</code></p></td>
<td><p><span class="plainlinks"><a href="http://wikipedia.org">Wikipedia</a></span></p></td>
</tr>
<tr class="even">
<td><p><code>[img]http://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Wikipedia-logo.png/72px-Wikipedia-logo.png[/img]</code></p></td>
<td><p><code>&lt;img src="http://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Wikipedia-logo.png/72px-Wikipedia-logo.png"&gt;</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:Wikipedia-logo-v2.svg" title="fig:Wikipedia-logo-v2.svg">Wikipedia-logo-v2.svg</a></p></td>
</tr>
<tr class="odd">
<td><p><code>[quote]引言[/quote]</code></p></td>
<td><p><code>&lt;blockquote&gt;&lt;p&gt;引言&lt;/p&gt;&lt;/blockquote&gt;</code><br />
<small>（可能為其他更複雜的語法）</small></p></td>
<td><p>引用：</p>
<blockquote>
<p>引言</p>
</blockquote></td>
</tr>
<tr class="even">
<td><p><code>[code]Monospace固定字元寬度[/code]</code></p></td>
<td><p><code>&lt;pre&gt;Monospace固定字元寬度&lt;/pre&gt;</code><br />
<small>（可能為其他更複雜的語法）</small></p></td>
<td><p><code>Monospace固定字元寬度</code></p></td>
</tr>
<tr class="odd">
<td><p><code>[size=24]文字[/size]</code></p></td>
<td><p><code>&lt;span style="font-size:24px;"&gt;文字&lt;/span&gt;</code></p></td>
<td><p><span style="font-size:24px;">文字</span></p></td>
</tr>
<tr class="even">
<td><p><code>[color=red]紅字[/color]</code><br />
<small>或</small><br />
<code>[color=#FF0000]紅字[/color]</code></p></td>
<td><p><code>&lt;span style="color: #FF0000;"&gt;紅字&lt;/span&gt;</code></p></td>
<td><p><span style="color: #FF0000">紅字</span></p></td>
</tr>
<tr class="odd">
<td><p><code>[:-)]</code><small>（也有省略中括號的設計）</small><br />
<small>或</small><br />
<code>:smile:</code></p>
<p><small>（參見<a href="../Page/表情符號.md" title="wikilink">表情符號</a>）</small></p></td>
<td><p><img src="Face-smile.gif" alt="" /></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:Face-smile.svg" title="fig:Face-smile.svg">Face-smile.svg</a></p></td>
</tr>
</tbody>
</table>

## 外部链接

  - [UBB代碼](http://askshana.tripod.com/ubb.htm)

[Category:置标语言](https://zh.wikipedia.org/wiki/Category:置标语言 "wikilink")