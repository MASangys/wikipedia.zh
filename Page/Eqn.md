> 本文内容由[Eqn](https://zh.wikipedia.org/wiki/Eqn)转换而来。


**eqn** 是 [UNIX](../Page/UNIX.md "wikilink") 作業系統中排版軟體 [Troff](../Page/Troff.md "wikilink") 的一部份，（ **Troff** 約同等於 [LaTeX](https://zh.wikipedia.org/wiki/LaTeX "wikilink") , [Microsoft Word](../Page/Microsoft_Word.md "wikilink") 的地位。）是用來處理數學公式排版的 [預處理器](https://zh.wikipedia.org/wiki/預處理器 "wikilink") 。於1974年由 [布萊恩·柯林漢](../Page/布萊恩·柯林漢.md "wikilink") 、 編寫。

eqn 的特色是使用口語化的語法，意思是它撰寫起來和如何讀一條數學式子是極類似的。eqn 使用 [上下文無關語法](https://zh.wikipedia.org/wiki/上下文無關語法 "wikilink") 。eqn 與 [TeX](../Page/TeX.md "wikilink") 在數學排版上很類似，但 eqn 較為簡單、不完整。

[GNU](../Page/GNU.md "wikilink") 在  中也開發了一套與 eqn 相容的替代軟體，（groff 為 GNU 版本的 troff。）GNU 版本的 eqn 新增了許多 [保留字](../Page/保留字.md "wikilink") ，擴展了原始語法。[UNIX 手冊](https://zh.wikipedia.org/wiki/手冊頁 "wikilink") 的編譯軟體  亦包含了一套獨立的 eqn 處理器。

## 語法範例

這裡有一些範例展示用 eqn 或 TeX 撰寫數學式子的差異。 \[1\]

<table>
<thead>
<tr class="header">
<th><p>TeX</p></th>
<th><p>eqn</p></th>
<th><p>數學式</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p><code>a sup 2</code></p></td>
<td><p><span class="math inline"><em>a</em><sup>2</sup></span></p></td>
</tr>
<tr class="even">
<td></td>
<td><p><code>sum from { k = 1 } to N { k sup 2 }</code></p></td>
<td><p><span class="math inline">$\sum_{k=1}^N k^2$</span></p></td>
</tr>
<tr class="odd">
<td><div class="sourceCode" id="cb1"><pre class="sourceCode latex"><code class="sourceCode latex"><span id="cb1-1"><a href="#cb1-1"></a><span class="ss">$ x = {-b </span><span class="sc">\pm</span><span class="ss"> </span><span class="sc">\sqrt</span><span class="ss">{b^2 - 4ac} </span><span class="sc">\over</span><span class="ss"> 2a} $</span></span></code></pre></div></td>
<td><p><code>x={-b +- sqrt{b sup 2 - 4ac}} over 2a</code></p></td>
<td><p><span class="math inline">$x= {-b \pm \sqrt{b^2 - 4ac} \over 2a}$</span></p></td>
</tr>
</tbody>
</table>

在 eqn 中 [空白鍵](https://zh.wikipedia.org/wiki/空白鍵 "wikilink") 是很重要的， 空白鍵用來分隔不同的 [單詞](https://zh.wikipedia.org/wiki/語法分析#單詞 "wikilink") ； 只有對 [波浪號](../Page/波浪號.md "wikilink") `~` 、 大括號 `{}` 、 [雙引號](https://zh.wikipedia.org/wiki/雙引號 "wikilink") `"` 來說， 空白鍵是可省的。 例如 `f(pi r sup 2)` 產生 \(\scriptstyle{f(pi r^{2)}}\) . 然而 `f( pi r sup 2 )` 產生 \(\scriptstyle{f(\pi r^2)}\).

## 参考文献

[Category:Unix软件](https://zh.wikipedia.org/wiki/Category:Unix软件 "wikilink") [Category:文書處理器](https://zh.wikipedia.org/wiki/Category:文書處理器 "wikilink") [Category:自由排版软件](https://zh.wikipedia.org/wiki/Category:自由排版软件 "wikilink")

1.  <http://meta.wikimedia.org/wiki/Help:Formula>