**ViolaWWW**是[全球資訊網](https://zh.wikipedia.org/wiki/全球資訊網 "wikilink")（WWW）第一個流行的[瀏覽器](https://zh.wikipedia.org/wiki/瀏覽器 "wikilink")，目前已停止开发。其首次在1991／1992年的[UNIX作業系統上发布](../Page/UNIX.md "wikilink")，並成為受全球資訊網发源组织[CERN所推荐的瀏覽器](../Page/歐洲核子研究組織.md "wikilink")\[1\]，但其最常用瀏覽器的地位最終被[Mosaic浏览器取代](../Page/Mosaic.md "wikilink")。

## Viola

Viola由[魏培源在](../Page/魏培源.md "wikilink")1991年开发，他也是[加州伯克利大学的](https://zh.wikipedia.org/wiki/加州伯克利大学 "wikilink")（XCF）研究小组成员之一\[2\]\[3\]。Viola是一个基于[UNIX平台的](../Page/UNIX.md "wikilink")[编程语言](../Page/编程语言.md "wikilink")，其名称为可视化交互的面向对象语言及应用（Visually
Interactive Object-oriented Language and Application）的首字母缩写\[4\]。

魏培源對於圖形軟體的興趣始於1989年他第一次遇到的[HyperCard](../Page/HyperCard.md "wikilink")，魏培源說：「當時HyperCard非常引人注目，你知道在圖形上，這個超連結的東西不是很全球化，只能在[Mac上運作](../Page/麥金塔.md "wikilink")...我甚至沒有Mac」。魏培源使用於1990年創造了第一個版本的Viola：“我拿到了一個HyperCard手冊，看了一下，基本上把這些概念實現了......”\[5\]

## ViolaWWW历史

毕业后魏培源与XCF及创业伙伴一起继续开发Viola\[6\]\[7\]。随后其接受了[奥莱利公司的投资](https://zh.wikipedia.org/wiki/奥莱利 "wikilink")，這是一家美国电子出版公司。奥莱利公司使用了其软件以显示旗下网站[全球網路導航器](https://zh.wikipedia.org/wiki/全球網路導航器 "wikilink")\[8\]。魏培源的主要工作是创建一个适用于互联网的Viola版本：

ViolaWWW創建於1992年，是第一個添加擴充功能的瀏覽器，如嵌入式腳本對象、樣式表和表。早期版本在[CERN獲得了诸多好评](https://zh.wikipedia.org/wiki/CERN "wikilink")\[9\]。埃德·克羅爾（Ed
Kroll）还在其1992年很流行的文章**中強調了该浏览器。

随着ViolaWWW的开发其开始与[HyperCard越来越相似](../Page/HyperCard.md "wikilink")：

ViolaWWW基于Viola工具箱，該工具箱是用於开发与支持视觉交互式媒体应用的工具。Viola在[X
Window下运行](https://zh.wikipedia.org/wiki/X_Window "wikilink")，早在1992年就可以用来创建远超[HTML](../Page/HTML.md "wikilink")
3.0（當時最新版本的HTML）的复杂[超媒体应用](https://zh.wikipedia.org/wiki/超媒体 "wikilink")，包括小程序及其他可交互的内容\[10\]。

### 首創

Viola是第一个拥有如下功能的浏览器\[11\]：

  - 客户端文件插入，内嵌式框架及类Javascript输出

<table>
<thead>
<tr class="header">
<th><p>Viola式内嵌框架</p></th>
<th><p>指定对象</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><pre><code>&lt;nowiki&gt;
&lt;INSERT SRC=&quot;a_quote.html&quot;&gt;
&lt;/nowiki&gt;</code></pre></td>
<td><pre><code>&lt;nowiki&gt;
&lt;object type=&quot;text/html&quot; data=&quot;a_quote.html&quot;&gt;
&lt;p&gt;如果浏览器不支持对象，本文字将会显示&lt;/p&gt;
&lt;/object&gt;
&lt;/nowiki&gt;</code></pre></td>
</tr>
</tbody>
</table>

  - 一个简单的[样式表机制用于指定文档中的样式信息](../Page/样式表.md "wikilink")，例如[字体](../Page/字体.md "wikilink")，[颜色](../Page/颜色.md "wikilink")，对齐方式。早在1998年[CSS样式表开发之前已經在Viola中实现了](https://zh.wikipedia.org/wiki/CSS "wikilink")。

<table>
<thead>
<tr class="header">
<th><p>Viola式样式表</p></th>
<th><p>CSS样式表</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><pre><code>&lt;nowiki&gt;
 (BODY,INPUT,P   FGColor=black
                 BGColor=grey70
                 BDColor=grey70
                 align=left

 (H1             FGColor=white
                 BGColor=red
                 BDColor=black
                 align=center

&lt;/nowiki&gt;</code></pre></td>
<td><div class="sourceCode" id="cb2"><pre class="sourceCode css"><code class="sourceCode css"><span id="cb2-1"><a href="#cb2-1"></a> body<span class="op">,</span> input<span class="op">,</span> p {</span>
<span id="cb2-2"><a href="#cb2-2"></a>  <span class="kw">color</span>: <span class="cn">black</span><span class="op">;</span></span>
<span id="cb2-3"><a href="#cb2-3"></a>  <span class="kw">background-color</span>: <span class="cn">#707070</span><span class="op">;</span></span>
<span id="cb2-4"><a href="#cb2-4"></a>  <span class="kw">text-align</span>: <span class="dv">left</span><span class="op">;</span></span>
<span id="cb2-5"><a href="#cb2-5"></a>}</span>
<span id="cb2-6"><a href="#cb2-6"></a></span>
<span id="cb2-7"><a href="#cb2-7"></a> h1 {</span>
<span id="cb2-8"><a href="#cb2-8"></a>  <span class="kw">color</span>: <span class="cn">white</span><span class="op">;</span></span>
<span id="cb2-9"><a href="#cb2-9"></a>  <span class="kw">background-color</span>: <span class="cn">red</span><span class="op">;</span></span>
<span id="cb2-10"><a href="#cb2-10"></a>  <span class="kw">border</span>: <span class="dv">solid</span> <span class="dv">1</span><span class="dt">px</span> <span class="cn">black</span><span class="op">;</span></span>
<span id="cb2-11"><a href="#cb2-11"></a>  <span class="kw">text-align</span>: <span class="dv">center</span><span class="op">;</span></span>
<span id="cb2-12"><a href="#cb2-12"></a>}</span></code></pre></div></td>
</tr>
</tbody>
</table>

  - 一个[侧边栏用于显示网页中的元信息](https://zh.wikipedia.org/wiki/侧边栏 "wikilink")，如网页内部导航链接等。类似但不那么复杂的侧边栏功能也出现在一些现代浏览器中。
  - 一个HTML文档可以调用的[脚本语言](../Page/脚本语言.md "wikilink")，让网页文档可以嵌入高度可交互的脚本及小程序，其可以被视为[JavaScript和](../Page/JavaScript.md "wikilink")[嵌入对象的先驱](https://zh.wikipedia.org/wiki/嵌入对象 "wikilink")。

<table>
<thead>
<tr class="header">
<th></th>
<th><p>ViolaWWW实现语法</p></th>
<th><p><a href="../Page/JavaScript.md" title="wikilink">JavaScript实现语法</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>脚本</p></td>
<td><pre><code>&lt;nowiki&gt;
\class {txtDisp}
\name {showTime}
\script { switch (arg[0]) {
  case &quot;tick&quot;:
    set(&quot;content&quot;), date());
    after(1000, self(), &quot;tick&quot;);
    return; break;
  case &quot;init&quot;:
    after(1000, self(), &quot;tick&quot;);
    break;
  }
  usual();
}
\width {100}
\height {50} \
&lt;/nowiki&gt;</code></pre></td>
<td><div class="sourceCode" id="cb2"><pre class="sourceCode javascript"><code class="sourceCode javascript"><span id="cb2-1"><a href="#cb2-1"></a><span class="kw">function</span> <span class="at">showTimeInDoc</span>() <span class="op">{</span></span>
<span id="cb2-2"><a href="#cb2-2"></a>  <span class="kw">var</span> theTime <span class="op">=</span> <span class="va">document</span>.<span class="at">getElementById</span>(<span class="st">&#39;theTime&#39;</span>)<span class="op">;</span></span>
<span id="cb2-3"><a href="#cb2-3"></a>  <span class="kw">var</span> date <span class="op">=</span> <span class="kw">new</span> <span class="at">Date</span>()<span class="op">;</span></span>
<span id="cb2-4"><a href="#cb2-4"></a>  <span class="va">theTime</span>.<span class="at">innerHTML</span> <span class="op">=</span> <span class="va">date</span>.<span class="at">getHours</span>() <span class="op">+</span> <span class="st">&quot;:&quot;</span> <span class="op">+</span> <span class="va">date</span>.<span class="at">getMinutes</span>() <span class="op">+</span> <span class="st">&quot;:&quot;</span> <span class="op">+</span> <span class="va">date</span>.<span class="at">getSeconds</span>()<span class="op">;</span></span>
<span id="cb2-5"><a href="#cb2-5"></a>  <span class="at">setTimeout</span>(showTimeInDoc<span class="op">,</span> <span class="dv">1000</span>)<span class="op">;</span></span>
<span id="cb2-6"><a href="#cb2-6"></a><span class="op">}</span></span></code></pre></div></td>
</tr>
<tr class="even">
<td><p>将脚本插入网页</p></td>
<td><pre><code>&lt;nowiki&gt;
&lt;HTML&gt;
&lt;HEAD&gt;
&lt;/HEAD&gt;
&lt;BODY&gt;
&lt;P&gt;And, the time now is:
&lt;LINK REL=&quot;viola&quot;
HREF=&quot;showTime.v&quot;&gt;
&lt;/BODY&gt;
&lt;/HTML&gt;

&lt;/nowiki&gt;</code></pre></td>
<td><pre class="html4strict"><code>&lt;html&gt;
  &lt;head&gt;
    &lt;script type=&quot;text/javascript&quot; src=&quot;showTime.js&quot;&gt;&lt;/script&gt;
  &lt;/head&gt;
  &lt;body onload=&quot;showTimeInDoc()&quot;&gt;
    &lt;p id=&quot;theTime&quot;&gt; &lt;/p&gt;
  &lt;/body&gt;
&lt;/html&gt;</code></pre></td>
</tr>
</tbody>
</table>

## 與Mosaic競爭

雖然ViolaWWW為全球資訊網打開了大門\[12\]，但由於其局限性，包括它只在-{X
Window}-系統上實作，意味著它無法與將網路帶入主流的[Mosaic競爭](../Page/Mosaic.md "wikilink")\[13\]。除此之外，Mosaic更容易安裝在大多數人使用的電腦上\[14\]。雖然最初為[UNIX開發](../Page/UNIX.md "wikilink")，它很快被移植到[Microsoft
Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")\[15\]，而ViolaWWW從未在此平台運行過。

## 參考文獻

## 外部链接

  -
  - [下載Viola](ftp://ftp.cuhk.hk/pub/packages/info-systems/www/viola/)

[Category:網際網路的歷史](https://zh.wikipedia.org/wiki/Category:網際網路的歷史 "wikilink")
[Category:1991年軟體](https://zh.wikipedia.org/wiki/Category:1991年軟體 "wikilink")
[Category:1992年軟體](https://zh.wikipedia.org/wiki/Category:1992年軟體 "wikilink")

1.
2.
3.

4.
5.

6.
7.

8.

9.
10. <http://assets.en.oreilly.com/1/event/51/webexny2010_what-is-web-20.pdf>

11.

12.
13.

14.
15. Freedman, Alan. *Computer Desktop Encyclopedia, 9th Edition.* New
    York: Osborne, 2001, p. 629