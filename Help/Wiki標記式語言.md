> 本文内容由[Help:Wiki標記式語言](https://zh.wikipedia.org/wiki/Help:Wiki標記式語言)转换而来。


**Wiki標記式語言**，又稱**Wiki語法**，包含了許多參數與關鍵字，可將[MediaWiki](../Page/MediaWiki.md "wikilink")軟體內的頁面進行格式的編排。關於如何閱讀這種標記式語言，以及如何儲存編輯，請參考[Help:編輯](https://zh.wikipedia.org/wiki/Help:編輯 "wikilink")。一般而言，這些語法可以不用重新撰寫而能夠複製與貼上。[Wikipedia:備忘單列出了關於本語法的相關提示](https://zh.wikipedia.org/wiki/Wikipedia:備忘單 "wikilink")。

除了Wiki標記式語言外，部分[HTML元素](../Page/HTML元素.md "wikilink")也能夠進行格式編排。相關資訊請參考[Help:HTML](https://zh.wikipedia.org/wiki/Help:HTML "wikilink")。

## 佈局

### 章節

一份頁面的章節應遵循頁面的[序言章節以及](https://zh.wikipedia.org/wiki/WP:LEAD "wikilink")（在特定情形下）[章節目錄規範](https://zh.wikipedia.org/wiki/WP:TOC "wikilink")。

#### 章節標題

「`=`」至「`======`」標記為章節的標題語法，彼此具有關連性。

  - 一個單一的「=」被規定為條目的標題，不應用於條目內容。
  - 標題的樣式由[CSS規範並增加一個](https://zh.wikipedia.org/wiki/CSS "wikilink")「`[編輯]`」連結。相關的CSS語法請[參考這裡](https://zh.wikipedia.org/wiki/Help:层叠样式表 "wikilink")。
  - 四個以上的章節標題會自動生成章節目錄。
  - 不得在標題語法最後使用**任何**語法，這將會導致章節標題格式消失，或是無法在編輯摘要中自動包含章節標題名稱。

用於模板等說明文件。

#### 水平線

水平線代表章節層級主題的終止。請不要使用於條目內容，因為該語法僅能用於主要章節之後，而且會自動生成。

HTML等效語法：

#### 目錄表

當某個頁面包含4個以上的章節標題時，將會在首段與第一個章節標題之間自動生成章節目錄。章節目錄可由魔術字或模板控制：

  - 「`__FORCETOC__`」將強制章節目錄自動顯示於正常位置，無論章節標題數量為何。
  - 「`__TOC__`」將會使章節目錄從正常位置移動到魔術字插入的位置。
  - 「`__NOTOC__`」將會不顯示章節目錄。
  - 「」可用於控制章節目錄所包含的章節層級，當某個條目的章節數量與層級太多時非常有用。
  - [:Category:目錄模板包含特定的章節目錄模板](https://zh.wikipedia.org/wiki/Category:目錄模板 "wikilink")。

### 斷行

斷行或是產生新行藉由在兩行之間增加空白而生成，例如分開段落。

  - 在條目內容內顯示一個明顯的斷行，請輸入兩次。
  - 輸入一次只會在標記式語言編輯畫面中顯示為斷行，但輸出內容中只会形成一个空格。使用清單語法时例外。
  - 粗體或斜體等標記式語言會在斷行處終結。

HTML等效語法：或。

模板：

  - 「」可增加多個斷行。
  - 「」與「」可增加樣式方面的斷行，以終止浮動元素的適用。
  - 「」與「」兩者可增加一份沒有項目符號的清單。

### 文字縮排

文字縮排最常用於討論頁面。

模板：、

### 區塊引言

如有需要將文字獨立為區塊時可以使用。就如同字面所說，這對於插入一份引言或引用文字而言非常有用。

### 文字置中

模板也能達到上述語法的效果。如果要將表格置中，請參考[Help:表格\#表格居中](https://zh.wikipedia.org/wiki/Help:表格#表格居中 "wikilink")。 請不要使用，因為該標籤已過時。

### 文字靠右

您可以將靠右的內容放入獨立的容器中：

或者您可以讓文字以浮動方式顯現：

### 列表

除非有理由，否則不要在同一列表內的項目之間加入空白行，因為這將會導致MediaWiki軟體判定空白行後面的項目為新列表的開頭。

#### 無序號列表

#### 有序號列表

#### 描述列表

如果需要列出術語及定義，請使用半形分號在術語之前。接者在定義前面放上半形冒號。這種格式可用於其他目的，例如車輛型號介紹等。

**描述列表** （前稱**定義列表** ，也就是**關連列表** ）由群組名稱與對應的值所組成。群組名稱（術語）為粗體，值（定義）則進行縮排。每個群組**必需**包含一個以上的定義。對於單一值或第一個值，可將「`:`」放置於「`;`」所在行之後──但隨後的值必需各自獨立成一行。

HTML等效語法： 、

模板：

### 保留換行與空白

MediaWiki預設無法使用單次換行，並將以空格為開頭的單行文字轉換成虛線文字方塊。HTML則無法使用多個空白。通常詩句、歌詞、格言、誓詞或類似內容會需要保留這些元素。[詩詞擴展元素增加了類HTML的](https://zh.wikipedia.org/wiki/mw:Extension:Poem "wikilink")標籤來保留換行與空白特色。這對標籤可以用在其他標籤當中，如；而提供較為方便的使用途徑。本標籤也適用[CSS風格](https://zh.wikipedia.org/wiki/H:CSS "wikilink")，如`<poem style="margin-left: 2em;">`。

詩詞以及其翻譯可以用兩側對照方式呈現，其對譯語言以`lang="xx"`標明。在最後一個兩側對照區段以後，必需使用模板來取消`"float:left;"`並回復成正常模式。請注意本方法不需要使用[表格](https://zh.wikipedia.org/wiki/#表格 "wikilink")，此法將會自己生成多個翻譯對照的欄位。

**程式碼**

    <nowiki><poem lang="fr" style="float:left;">Frère Jacques, frère Jacques,
    Dormez-vous? Dormez-vous?
    Sonnez les matines! Sonnez les matines!
    Ding, dang, dong. Ding, dang, dong.</poem>
    <poem style="margin-left:2em; float:left;">賈克修士，賈克修士，
    您在睡覺嗎？您在睡覺嗎？
    快去敲做日課的鐘！快去敲做日課的鐘！
    叮，叮，鐺。叮，叮，鐺。</poem>{{Clear|left}}</nowiki>

**效果** <poem lang="fr" style="float:left;">Frère Jacques, frère Jacques, Dormez-vous? Dormez-vous? Sonnez les matines\! Sonnez les matines\! Ding, dang, dong. Ding, dang, dong.</poem> <poem style="margin-left:2em; float:left;">賈克修士，賈克修士， 您在睡覺嗎？您在睡覺嗎？ 快去敲做日課的鐘！快去敲做日課的鐘！ 叮，叮，鐺。叮，叮，鐺。</poem>

## 格式

### 文字格式

<table>
<thead>
<tr class="header">
<th><p>描述</p></th>
<th><p>輸入內容</p></th>
<th><p>輸出結果</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><em>斜體</em>、<strong>粗體</strong>、小型大寫字體（）</p></td>
<td><pre><code>如果要&#39;&#39;將文字斜體化&#39;&#39;，請在文字兩側放上2個連續的半形撇號。

兩側放上3個半形撇號將會&#39;&#39;&#39;使文字變粗體&#39;&#39;&#39;。

兩側放上5個連續半形撇號（2個撇號為斜體，3個撇號為粗體）將會形成&#39;&#39;&#39;&#39;&#39;粗斜體&#39;&#39;&#39;&#39;&#39;。

&#39;&#39;&#39;&#39;&#39;粗體與斜體格式&#39;&#39;&#39;&#39;&#39;只能在單行以內正確顯示。

如果要產生小型大寫字體（{{smallcaps|small caps}}），請使用{{tl|smallcaps}}模板。</code></pre></td>
<td><p>如果要<em>將文字斜體化</em>，請在文字兩側放上2個連續的半形撇號。</p>
<p>兩側放上3個半形撇號將會<strong>使文字變粗體</strong>。</p>
<p>兩側放上5個連續半形撇號（2個撇號為斜體，3個撇號為粗體）將會形成<strong><em>粗斜體</em></strong>。</p>
<p><strong><em>粗體與斜體格式</em></strong>只能在單行以內正確顯示。</p>
<p>如果要產生小型大寫字體（），請使用模板。</p>
<p>如果要在粗體或斜體文字中還原為正常格式，請使用與。</p></td>
</tr>
<tr class="even">
<td><p>單行普通文字當中的一小句<a href="https://zh.wikipedia.org/wiki/原始碼" title="wikilink">原始碼</a>。</p>
<p>原始碼會採用<a href="https://zh.wikipedia.org/wiki/等寬字體" title="wikilink">等寬字體顯示</a>。</p></td>
<td><pre><code>&lt;nowiki&gt;&lt;code&gt;int m2()&lt;/code&gt;功能很好。&lt;/nowiki&gt;</code></pre></td>
<td><p><code>int m2()</code>功能很好。</p></td>
</tr>
<tr class="odd">
<td><p>針對原始碼進行<a href="https://zh.wikipedia.org/wiki/mw:Extension:SyntaxHighlight" title="wikilink">突顯參數</a>。</p>
<p>電腦原始碼具有上色文字以及更嚴謹的格式。舉例，函數<code>int m2()</code>會有其自身的上色定義。</p>
<p>對於所有支援此功能的程式語言列表，請參考<a href="https://github.com/wikimedia/mediawiki-extensions-SyntaxHighlight_GeSHi/blob/master/SyntaxHighlight.lexers.php">這裡</a>，其語言-{zh-hant:代碼;zh-hans:代码;}-需放置在<code>lang="????"</code>。</p></td>
<td><pre><code>&lt;nowiki&gt;&lt;syntaxhighlight lang=&quot;cpp&quot;&gt;
#include &lt;iostream&gt;
int m2 (int ax, char *p_ax) {
  std::cout &lt;&lt;&quot;Hello World!&quot;;
  return 0;
}&lt;/syntaxhighlight&gt;&lt;/nowiki&gt;</code></pre>
<p>或是（產生效果實際上一模一樣）</p>
<pre><code>&lt;nowiki&gt;&lt;source lang=&quot;cpp&quot;&gt;
#include &lt;iostream&gt;
int m2 (int ax, char *p_ax) {
  std::cout &lt;&lt;&quot;Hello World!&quot;;
  return 0;
}&lt;/source&gt;&lt;/nowiki&gt;</code></pre></td>
<td><div class="sourceCode" id="cb5"><pre class="sourceCode cpp"><code class="sourceCode cpp"><span id="cb5-1"><a href="#cb5-1"></a><span class="pp">#include </span><span class="im">&lt;iostream&gt;</span></span>
<span id="cb5-2"><a href="#cb5-2"></a><span class="dt">int</span> m2 (<span class="dt">int</span> ax, <span class="dt">char</span> *p_ax) {</span>
<span id="cb5-3"><a href="#cb5-3"></a>  <span class="bu">std::</span>cout &lt;&lt;<span class="st">&quot;Hello World!&quot;</span>;</span>
<span id="cb5-4"><a href="#cb5-4"></a>  <span class="cf">return</span> <span class="dv">0</span>;</span>
<span id="cb5-5"><a href="#cb5-5"></a>}</span></code></pre></div></td>
</tr>
<tr class="even">
<td><p><small>小型字</small></p></td>
<td><div class="sourceCode" id="cb6"><pre class="sourceCode html"><code class="sourceCode html"><span id="cb6-1"><a href="#cb6-1"></a>只能在有需要時使用<span class="kw">&lt;small&gt;</span>小型字<span class="kw">&lt;/small&gt;</span>標籤。</span></code></pre></div></td>
<td><p>只能在有需要時使用<small>小型字</small>標籤。</p></td>
</tr>
<tr class="odd">
<td><p><small style="font-size:87%;">一段&lt;small&gt;標籤的跨度</small></p></td>
<td><div class="sourceCode" id="cb7"><pre class="sourceCode html"><code class="sourceCode html"><span id="cb7-1"><a href="#cb7-1"></a>舉例，如果要符合{{le|Help:視覺檔案標記語言#圖說|Help:Visual file markup#Caption|圖像說明}}的文字大小，其「small」標籤也可以用於</span>
<span id="cb7-2"><a href="#cb7-2"></a><span class="kw">&lt;small</span><span class="ot"> style=</span><span class="st">&quot;font-size:87%;&quot;</span><span class="kw">&gt;</span>縮減文字大小至原來的87%<span class="kw">&lt;/small&gt;</span>。</span></code></pre></div></td>
<td><p>舉例，如果要符合的文字大小，其「small」標籤也可以用於<small style="font-size:87%;">縮減文字大小至原來的87%</small>。</p></td>
</tr>
<tr class="even">
<td><p><big>大型字</big></p></td>
<td><div class="sourceCode" id="cb8"><pre class="sourceCode html"><code class="sourceCode html"><span id="cb8-1"><a href="#cb8-1"></a>最好不要使用<span class="kw">&lt;big&gt;</span>大型字<span class="kw">&lt;/big&gt;</span>，除非用於<span class="kw">&lt;small&gt;</span>一段<span class="kw">&lt;big&gt;</span>小型字<span class="kw">&lt;/big&gt;</span>當中<span class="kw">&lt;/small&gt;</span>。</span></code></pre></div></td>
<td><p>最好不要使用<big>大型字</big>，除非用於<small>一段<big>小型字</big>當中</small>。</p></td>
</tr>
<tr class="odd">
<td><p>To prevent two words from becoming separated by a <a href="https://zh.wikipedia.org/wiki/linewrap" title="wikilink">linewrap</a> (e.g. <em>Mr. Smith</em> or <em>400 km/h</em>) a <strong><a href="https://zh.wikipedia.org/wiki/non-breaking_space" title="wikilink">non-breaking space</a></strong>, sometimes also called a "non-printing character", may be used between them. (For three or more words, the template  is probably more suitable.)</p></td>
<td><pre><code>Mr.&amp;nbsp;Smith or 400&amp;nbsp;km/h</code></pre></td>
<td><p>Mr. Smith or 400 km/h</p></td>
</tr>
<tr class="even">
<td><p>在文字中實現<strong>額外間距</strong>，通常最好的方法是使用模板。</p></td>
<td><pre><code>&lt;nowiki&gt;瑪麗{{pad|4.0em}}有隻小綿羊。&lt;/nowiki&gt;</code></pre></td>
<td><p>瑪麗有隻小綿羊。</p>
<p>&lt;!---------- (<kbd>)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Typewriter text</strong><br />
<br />
(Also works beyond the end of a paragraph.)</p></td>
<td><pre><code>&lt;nowiki&gt;&lt;kbd&gt;right arrow    →&lt;/kbd&gt;

&lt;kbd&gt;&#39;&#39;italics&#39;&#39;, &#39;&#39;&#39;bold&#39;&#39;&#39;&lt;/kbd&gt;

&lt;kbd&gt;[[wikilink|wikilink]]

New paragraph &lt;/kbd&gt;started here.&lt;/nowiki&gt;</code></pre></td>
<td><pre><code>&lt;kbd&gt;right arrow    →&lt;/kbd&gt;

&lt;kbd&gt;&#39;&#39;italics&#39;&#39;, &#39;&#39;&#39;bold&#39;&#39;&#39;&lt;/kbd&gt;

&lt;kbd&gt;[[wikilink|wikilink]]

New paragraph &lt;/kbd&gt;started here.</code></pre>
<p><code>-----&gt;</code></p></td>
</tr>
</tbody>
</table>

### 特殊字元

Special characters can often be displayed using [numeric character references](https://zh.wikipedia.org/wiki/Numeric_character_reference "wikilink") or [character entity references](https://zh.wikipedia.org/wiki/List_of_XML_and_HTML_character_entity_references "wikilink"). See [Character encodings in HTML](https://zh.wikipedia.org/wiki/Character_encodings_in_HTML "wikilink") for more information. For example, `À` and `À` both render [À](../Page/À.md "wikilink") (A-[grave](https://zh.wikipedia.org/wiki/Grave_accent "wikilink")). [Percent-encoding](https://zh.wikipedia.org/wiki/Percent-encoding "wikilink") can't be used, as it works only in [URLs](https://zh.wikipedia.org/wiki/URL "wikilink").

#### 變音符號

[Diacritic](https://zh.wikipedia.org/wiki/Diacritic "wikilink") marks, using character entity references.

<table>
<thead>
<tr class="header">
<th><p>What you type</p></th>
<th><p>What it looks like</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><pre><code>&lt;nowiki&gt;&amp;Agrave; &amp;Aacute; &amp;Acirc; &amp;Atilde; &amp;Auml; &amp;Aring; &amp;AElig;

&amp;Ccedil; &amp;Egrave; &amp;Eacute; &amp;Ecirc; &amp;Euml;

&amp;Igrave; &amp;Iacute; &amp;Icirc; &amp;Iuml; &amp;Ntilde;

&amp;Ograve; &amp;Oacute; &amp;Ocirc; &amp;Otilde; &amp;Ouml; &amp;Oslash; &amp;OElig;

&amp;Ugrave; &amp;Uacute; &amp;Ucirc; &amp;Uuml; &amp;Yuml; &amp;szlig;

&amp;agrave; &amp;aacute; &amp;acirc; &amp;atilde; &amp;auml; &amp;aring; &amp;aelig; &amp;ccedil;

&amp;egrave; &amp;eacute; &amp;ecirc; &amp;euml;

&amp;igrave; &amp;iacute; &amp;icirc; &amp;iuml; &amp;ntilde;

&amp;ograve; &amp;oacute; &amp;ocirc; &amp;otilde; &amp;ouml; &amp;oslash; &amp;oelig;

&amp;ugrave; &amp;uacute; &amp;ucirc; &amp;uuml; &amp;yuml;&lt;/nowiki&gt;</code></pre></td>
<td><p>À Á Â Ã Ä Å Æ</p>
<p>Ç È É Ê Ë</p>
<p>Ì Í Î Ï Ñ</p>
<p>Ò Ó Ô Õ Ö Ø Œ</p>
<p>Ù Ú Û Ü Ÿ ß</p>
<p>à á â ã ä å æ ç</p>
<p>è é ê ë</p>
<p>ì í î ï ñ</p>
<p>ò ó ô õ ö ø œ</p>
<p>ù ú û ü ÿ</p></td>
</tr>
</tbody>
</table>

#### Punctuation special characters

Using character entity references.

| What you type | What it looks like |
| ------------- | ------------------ |
| `¿ ¡ § ¶`     | ¿ ¡ § ¶            |
| `† ‡ • – —`   | † ‡ • – —          |
| `‹ › « »`     | ‹ › « »            |
| `‘ ’ “ ”`     | ‘ ’ “ ”            |
| `' "`         | ' "                |

#### Escaping punctuation characters

The \[\[\#Pre|

#### 單一數學方程式中插入空白

  - Using **` `** to prevent line break is not needed; the  template will prevent line breaks anyway; you can use  if you need an explicit line break inside a formula.

#### 複雜方程式

  - See [Help:Displaying a formula](https://zh.wikipedia.org/wiki/Help:Displaying_a_formula "wikilink") for how to use .
  - A formula displayed on a line by itself should probably be indented by using the colon (:) character.

## 連結與網址

### 自由連結

In [Wikipedia](https://zh.wikipedia.org/wiki/Wikipedia "wikilink") and some other [wikis](https://zh.wikipedia.org/wiki/wiki "wikilink"), **free links** are used in [wikitext](https://zh.wikipedia.org/wiki/wikitext "wikilink") markup to produce [internal links](https://zh.wikipedia.org/wiki/internal_link "wikilink") between pages, as opposed to the concept of [CamelCase](https://zh.wikipedia.org/wiki/CamelCase "wikilink") for the same purpose, which was used in the early days of Wikipedia – see [CamelCase and Wikipedia](https://zh.wikipedia.org/wiki/Wikipedia:CamelCase_and_Wikipedia "wikilink").

In [Wikipedia's markup language](https://zh.wikipedia.org/wiki/Wikipedia:How_to_edit_a_page#Wiki_markup "wikilink"), you create free links by putting double square brackets around text designating the title of the page you want to link to. Thus, `[[Texas|Texas]]` will be rendered as [Texas](https://zh.wikipedia.org/wiki/Texas "wikilink"). Optionally, you can use a [vertical bar](https://zh.wikipedia.org/wiki/vertical_bar "wikilink") (|) to customize the link title. For example, typing `[[Texas|Lone Star State]]` will produce [Lone Star State](https://zh.wikipedia.org/wiki/Texas "wikilink"), a link that is displayed as "<u>Lone Star State</u>" but in fact links to [Texas](https://zh.wikipedia.org/wiki/Texas "wikilink").

#### 連結至其他維基百科條目

  - Internally, the first letter of the target page is automatically capitalized and spaces are represented as underscores (typing an underscore in the link has the same effect as typing a space, but is not recommended).
  - Thus the link hereafter is to the Web address `en.wikipedia.org/wiki/Public_transport`, which is the Wikipedia article with the name "Public transport". See also [Canonicalization](https://zh.wikipedia.org/wiki/Help:Link#Conversion_to_canonical_form "wikilink").
  - [A red link](https://zh.wikipedia.org/wiki/Intentionally_permanent_red_link "wikilink") is a page that doesn't exist yet; it can be created by clicking on the link.
  - [A link to its own page](https://zh.wikipedia.org/wiki/Help:Self_link "wikilink") will appear only as bold text.

#### 重命名連結

  - 用於相同目標頁面但有不同顯示名稱的情形。
  - 目標頁面文字應當放在**第一個位置**，顯示文字則置於**第二個位置**（以「[豎線](../Page/豎線.md "wikilink")」為界）。

| 程式碼                   | 效果                                                         |
| --------------------- | ---------------------------------------------------------- |
| `紐約也有[[公共運輸\|大眾運輸]]。` | 紐約也有[大眾運輸](https://zh.wikipedia.org/wiki/公共運輸 "wikilink")。 |

#### 自動重命名連結

  - Simply typing the pipe character | after a link will automatically rename the link in certain circumstances. The next time you open the edit box you will see the expanded piped link. When [previewing](https://zh.wikipedia.org/wiki/Help:Show_preview "wikilink") your edits, you will not see the expanded form until you press **Save** and **Edit** again. The same applies to [links to sections within the same page](https://zh.wikipedia.org/wiki/#link-to-section "wikilink").
  - See [Pipe trick](https://zh.wikipedia.org/wiki/Help:Pipe_trick "wikilink") for details.

| Description           | What you type                                | What it looks like                                                                                   |
| --------------------- | -------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| 自動隱藏括弧中的文字            | `[[界_(生物)\|]]`                               | [界](https://zh.wikipedia.org/wiki/界_\(生物\) "wikilink")                                               |
| 自动隐藏英文逗号后的文字（中文维基不常用） | `[[Seattle,_Washington\|]]`                  | [Seattle](https://zh.wikipedia.org/wiki/Seattle,_Washington "wikilink")                              |
| 自動隱藏命名空間名稱            | `[[Wikipedia:互助客棧\|]]`                       | [互助客棧](https://zh.wikipedia.org/wiki/Wikipedia:互助客棧 "wikilink")                                      |
| 或者同時隱藏                | `[[Wikipedia:Manual_of_Style_(headings)\|]]` | [Manual of Style](https://zh.wikipedia.org/wiki/Wikipedia:Manual_of_Style_\(headings\) "wikilink")   |
| <b>但無法隱藏章節名稱連結</b>    | `[[Wikipedia:Manual_of_Style#Links\|]]`      | [Manual_of_Style\#Links](https://zh.wikipedia.org/wiki/Wikipedia:Manual_of_Style#Links "wikilink") |

#### Blend link

  - Endings are blended into the link.
      - *Exception*: a trailing [apostrophe](https://zh.wikipedia.org/wiki/apostrophe "wikilink") (') and any characters following the apostrophe are *not* blended.
  - Preferred style is to use this instead of a piped link, if possible.
  - Blending can be suppressed by using the \[\[\#Nowiki|

Making a reference citing a printed or online source can be accomplished by using the  tags. Inside these tags details about the reference are added.

Details about the citation can be provided using a structure provided by various templates; the table below lists some typical citation components.

<table>
<thead>
<tr class="header">
<th><p>What it's for</p></th>
<th><p>What you type</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>To cite a book</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>To cite a web source</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Book ISBN</p></td>
<td><p>(ISBN of the book)</p></td>
</tr>
<tr class="odd">
<td><p>Web URL</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Title</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Author</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>First name</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Last name</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Location</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Publisher</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Date</p></td>
<td><p>(date of source)</p></td>
</tr>
<tr class="odd">
<td><p>Year</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Accessed date</p></td>
<td><p>(only if url= is included)</p></td>
</tr>
<tr class="odd">
<td><p>A complete reference tag</p></td>
<td><p><code>{{cite web |url=http://en.wikipedia.org/w/index.php?title=Help:Wiki_markup |title=Help:Wiki markup |publisher=Wikimedia Foundation}}</code></p></td>
</tr>
<tr class="even">
<td><p>Referencing this again</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Citation needed</p></td>
<td></td>
</tr>
</tbody>
</table>

## Templates and transcluding pages

Examples for templates: {{pad|...}}, {{math|...}}, {{as of|...}}, {{edit}}

**[Templates](https://zh.wikipedia.org/wiki/Help:Template "wikilink")** are segments of wiki markup that are meant to be copied automatically ("transcluded") into a page. You add them by putting the template's name in {{double braces}}. It is also possible to transclude other pages by using {{:colon and double braces}}.

There are three pairs of [tags](https://zh.wikipedia.org/wiki/html_element "wikilink") that can be used in [wikitext](https://zh.wikipedia.org/wiki/wikitext "wikilink") to control how transclusion affects parts of a template or article. They determine whether or not wikitext renders, either in its own article, which we will call "**here**", or in another article where it is transcluded, which we will call "**there**".

  - '''\<noinclude\>: ''' the content **will not be rendered *there***. These tags have no effect *here*.
  - '''\<includeonly\>: ''' the content **will render only *there***, and **will not render *here*** (like [invisible ink](https://zh.wikipedia.org/wiki/invisible_ink "wikilink") made visible by means of transclusion).
  - '''\<onlyinclude\>: ''' the content **will render *here*** and **will render *there***, but it will only render *there* what is between these tags.

There can be several such section "[elements](https://zh.wikipedia.org/wiki/HTML#Elements "wikilink")". Also, they can be nested. All possible renderings are achievable. For example, to render *there* one or more sections of the page *here* use **\<onlyinclude\>** tags. To append text *there*, wrap the addition in **\<includeonly\>** tags before, within, or after the section. To omit portions of the section, nest **\<noinclude\>** tags within it.

If a page is transcluded without transclusion markup, it may cause an unintentional [categorization](https://zh.wikipedia.org/wiki/Help:Category#Putting_pages_in_categories "wikilink"). Any page transcluding it will contain the same category as the original page. Wrap the category markup with **\<noinclude\>** tags to prevent incorrect categorization.  Some templates take *parameters*, as well, which you separate with the pipe character `|`.

<table>
<thead>
<tr class="header">
<th><p>What you type</p></th>
<th><p>What it looks like</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><pre><code>{{Transclusion demo}}</code></pre></td>
<td></td>
</tr>
<tr class="even">
<td><pre><code>{{Help:Transclusion demo}}</code></pre></td>
<td></td>
</tr>
<tr class="odd">
<td><pre><code>This template takes two parameters,
and creates underlined text with a
hover box for many modern browsers
supporting CSS:

{{H:title|This is the hover text|
Hover your mouse over this text}}

Go to this page to see the H:title
template itself: {{tl|H:title}}</code></pre></td>
<td><p>This template takes two parameters, and creates underlined text with a hover box for many modern browsers supporting CSS:</p>
<p>Go to this page to see the H:title template itself: </p></td>
</tr>
</tbody>
</table>

## 討論頁與計畫頁面

These are likely to be helpful on [talk](https://zh.wikipedia.org/wiki/Help:Using_talk_pages "wikilink") and [project pages](https://zh.wikipedia.org/wiki/Wikipedia:Project_namespace "wikilink").

### 簽名

  - The *[tilde](https://zh.wikipedia.org/wiki/tilde "wikilink")* character (\~) is used when signing a comment on a talk page. Your username provides a link to your [user page](https://zh.wikipedia.org/wiki/Wikipedia:user_page "wikilink").

<table>
<thead>
<tr class="header">
<th><p>Description</p></th>
<th><p>What you type</p></th>
<th><p>What it looks like</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><em>You should sign your comments by appending four tildes to the comment, which adds your user name plus date/time.</em></p></td>
<td><p><code>~~~~</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Special:Mypage" title="wikilink">Username</a> (<a href="https://zh.wikipedia.org/wiki/Special:Mytalk" title="wikilink">talk</a>) ,    (UTC)</p></td>
</tr>
<tr class="even">
<td><p><em>Adding three tildes will add just your user name.</em></p></td>
<td><p><code>~~~</code></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Special:Mypage" title="wikilink">Username</a> (<a href="https://zh.wikipedia.org/wiki/Special:Mytalk" title="wikilink">talk</a>)</p></td>
</tr>
<tr class="odd">
<td><p><em>Adding five tildes gives the date/time alone.</em></p></td>
<td><p><code>~~~~~</code></p></td>
<td><p>,    (UTC)</p></td>
</tr>
</tbody>
</table>

### 連結至某個頁面的舊有修訂版本、修訂差異以及特定歷史頁面

  - The external link function is mainly used for these. Open an old revision or diff, and copy the [URL](https://zh.wikipedia.org/wiki/URL "wikilink") from the address bar, pasting it where you want it.

| 程式碼                                                                                                                                     | 效果                                                                                                                                      |
| --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| `[//zh.wikipedia.org/w/index.php?title=Help:Wiki_markup&diff=330350877&oldid=330349143 Diff between revisions 330349143 and 330350877]` | \[//zh.wikipedia.org/w/index.php?title=Help:Wiki標記式語言\&diff=330350877\&oldid=330349143 Diff between revisions 330349143 and 330350877\] |

  - 您可以使用[內部修訂差異連結](https://zh.wikipedia.org/wiki/Help:Diff#Internal_links "wikilink")。**不同於模板，這種連結方式甚至可以用於撰寫編輯摘要。**

| 程式碼                                                                  | 效果                                                                                                        |
| -------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `[[Special:Diff/330349143/330350877\|修訂版本330349143與330350877之間的差異]]` | [修訂版本330349143與330350877之間的差異](https://zh.wikipedia.org/wiki/Special:Diff/330349143/330350877 "wikilink") |

  - If the diff intended to be shown is between an immediately previous revision, the first parameter can be dropped.

| 程式碼                                                                          | 效果                                                                                                                |
| ---------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `[[Special:Diff/330350877\|Diff between revisions 330349143 and 330350877]]` | [Diff between revisions 330349143 and 330350877](https://zh.wikipedia.org/wiki/Special:Diff/330350877 "wikilink") |

  - For an old revision, you can also use a [permalink](https://zh.wikipedia.org/wiki/Help:Permanent_link "wikilink"). Though here only the main text is guaranteed to be retained (images and templates will be shown as they are today, not as they were at the time).

| 程式碼                                                   | 效果                                                                                         |
| ----------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| `[[Special:Permalink/330350877\|Revision 330350877]]` | [Revision 330350877](https://zh.wikipedia.org/wiki/Special:Permalink/330350877 "wikilink") |

### What links here, and recent changes linked

  - The following markup can be used. For example, for the article [Beetroot](https://zh.wikipedia.org/wiki/Beetroot "wikilink"):

| What you type                                                                    | What it looks like                                                                                                    |
| -------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `[[Special:WhatLinksHere/Beetroot\|Special:WhatLinksHere/Beetroot]]`             | [Special:WhatLinksHere/Beetroot](https://zh.wikipedia.org/wiki/Special:WhatLinksHere/Beetroot "wikilink")             |
| `[[Special:RecentChangesLinked/Beetroot\|Special:RecentChangesLinked/Beetroot]]` | [Special:RecentChangesLinked/Beetroot](https://zh.wikipedia.org/wiki/Special:RecentChangesLinked/Beetroot "wikilink") |

### 使用者編輯

  - Link to a user's [contributions page](https://zh.wikipedia.org/wiki/Help:User_contributions "wikilink").

| Description                                                        | What you type                                                                                                                      | What it looks like                                                                                                                                                      |
| ------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| *Username (registered users).*                                     | `[[Special:Contributions/UserName\|Special:Contributions/UserName]]`                                                               | [Special:Contributions/UserName](https://zh.wikipedia.org/wiki/Special:Contributions/UserName "wikilink")                                                               |
| *[IPv4](../Page/IPv4.md "wikilink") address (unregistered users).* | `[[Special:Contributions/192.0.2.0\|Special:Contributions/192.0.2.0]]`                                                             | [Special:Contributions/192.0.2.0](https://zh.wikipedia.org/wiki/Special:Contributions/192.0.2.0 "wikilink")                                                             |
| *[IPv6](../Page/IPv6.md "wikilink") address (unregistered users).* | `[[Special:Contributions/2001:0db8:0000:0000:0000:ff00:0042:8329\|Special:Contributions/2001:0db8:0000:0000:0000:ff00:0042:8329]]` | [Special:Contributions/2001:0db8:0000:0000:0000:ff00:0042:8329](https://zh.wikipedia.org/wiki/Special:Contributions/2001:0db8:0000:0000:0000:ff00:0042:8329 "wikilink") |

### 將文字上色或高亮化

  - Using the  and  templates:

| What you type                                                                   | What it looks like                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------ |
| `I will change the color in {{color\|blue\|the middle part of}} this sentence.` | I will change the color in  this sentence.             |
| <code><nowiki>This is how to {{Font color                                       | yellow|highlight part of a sentence}}.</nowiki></code> |

### 範例文字

The  family of templates can be used on help pages and user pages to highlight e**x**ample te**x**t.

{{\!bxt|It does not work in mainspace, that is articles. }}

| What you type                                                                 | What you get                                         |
| ----------------------------------------------------------------------------- | ---------------------------------------------------- |
| <kbd>This is an {{**xt**|A correct example}} for comparison {{tick}}</kbd>    | This is an  for comparison                           |
| <kbd>this is an {{**\!xt**|An incorrect example}} for example {{cross}}</kbd> | this is an {{\!xt|An incorrect example}} for example |
| <kbd>this is an {{**mxt**|In monospace}} for comparison</kbd>                 | this is an  for comparison                           |
| <kbd>this is an {{**\!mxt**|In monospace}} for comparison</kbd>               | this is an {{\!mxt|In monospace}} for comparison     |
| <kbd>this is an {{**bxt**|in bold}} for comparison</kbd>                      | this is an  for comparison                           |
| <kbd>this is an {{**\!bxt**|In bold}} for comparison</kbd>                    | this is an {{\!bxt|In bold}} for comparison          |

### Show deleted or inserted text

  - When editing your own previous remarks in talk pages, it is sometimes appropriate to mark up deleted or inserted content:
      - It is best to indicate deleted content using the strike-through markup .
      - It is best to indicate inserted content using the underline markup .
  - When editing regular Wikipedia articles, just make your changes, and do not mark them up in any special way. However, when the article itself discusses deleted or inserted content, such as an amendment to a statute:
      - It is best to indicate deleted content using the strike-through markup .
      - It is best to indicate inserted content using the underline markup .

Note:  and  (speced in HTML 3 & 4) are considerably more popular than  and  (speced in HTML 5) on Wikipedia.

<table>
<thead>
<tr class="header">
<th><p>What you type</p></th>
<th><p>What it looks like</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>You can &lt;del&gt;strike out deleted material&lt;/del&gt; and &lt;ins&gt;underline new material&lt;/ins&gt;.</code></p></td>
<td><p>You can <del>strike out deleted material</del> and <ins>underline new material</ins>.</p></td>
</tr>
<tr class="even">
<td><p>Alternative markup:</p>
<p><code>You can &lt;s&gt;strike out deleted material&lt;/s&gt; and &lt;u&gt;underline new material&lt;/u&gt;.</code></p></td>
<td><p>You can <s>strike out deleted material</s> and <u>underline new material</u>.</p></td>
</tr>
</tbody>
</table>

### Strike through

This is also possible with the } template.

| What you type                                                            | What you get            |
| ------------------------------------------------------------------------ | ----------------------- |
| <kbd>This is {{**strike**|A misplaced bit of text}} for comparison</kbd> | This is  for comparison |

##  Limiting formatting / escaping wiki markup

A few different kinds of formatting will tell the wiki to display things as you typed them – what you see is what you get\!

<table>
<thead>
<tr class="header">
<th><p>What you type</p></th>
<th><p>What it looks like</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><pre><code>&#39;&#39;&#39;&amp;lt;nowiki&amp;gt; tag:&#39;&#39;&#39;

&lt;nowiki&gt;
The nowiki tag ignores [[wiki|wiki]]
&#39;&#39;markup&#39;&#39;. It reformats text by
removing newlines and multiple
spaces. It still interprets
characters specified by
&amp;name;: &amp;rarr;
&lt;/nowiki&gt;</code></pre></td>
<td><p>''' tag:''' &lt;nowiki&gt; The nowiki tag ignores [[wiki|wiki]] ''markup''. It reformats text by removing newlines and multiple spaces. It still interprets characters specified by &amp;name;: →</p></td>
</tr>
<tr class="even">
<td><pre><code>&#39;&#39;&#39;&amp;lt;pre&amp;gt; tag:&#39;&#39;&#39;

&lt;pre&gt;The &lt;pre&gt; tag ignores [[wiki|wiki]]
&#39;&#39;markup&#39;&#39; as does the &lt;nowiki&gt;
tag. Additionally, &lt;pre&gt; displays
in a mono-spaced font, and does
not  reformat    text    spaces.
It still interprets special
characters: &amp;rarr;</code></pre>
</pre></td>
<td><p>'''</p>
<pre><code> tag:&#39;&#39;&#39;

&lt;pre&gt;The &lt;pre&gt; tag ignores [[wiki|wiki]]
&#39;&#39;markup&#39;&#39; as does the &lt;nowiki&gt;
tag. Additionally, &lt;pre&gt; displays
in a mono-spaced font, and does
not  reformat    text    spaces.
It still interprets special
characters: →</code></pre></td>
</tr>
<tr class="odd">
<td><pre><code>&#39;&#39;&#39;[Text without a URL]:&#39;&#39;&#39;

Single square brackets holding
[text without a HTTP URL] are
preserved, but single square
brackets containing a URL are
treated as being an external
[http://example.com/ Web link].</code></pre></td>
<td><p><strong>[Text without a URL]:</strong></p>
<p>Single square brackets holding [text without a HTTP URL] are preserved, but single square brackets containing a URL are treated as being an external <a href="http://example.com/">Web link</a>.</p></td>
</tr>
<tr class="even">
<td><pre class="moin"><code>&#39;&#39;&#39;Leading space:&#39;&#39;&#39;

Leading spaces are another way
to preserve formatting.
 Putting a space at the
 beginning of each line
 stops the text   from
 being reformatted.
 It still interprets [[wiki|wiki]]
 &#39;&#39;markup&#39;&#39; and special characters: &amp;rarr;</code></pre></td>
<td><p><strong>Leading space:</strong></p>
<p>Leading spaces are another way to preserve formatting.</p>
<p><code>Putting a space at the</code><br />
<code>beginning of each line</code><br />
<code>stops the text   from</code><br />
<code>being reformatted.</code><br />
<code>It still interprets </code><a href="https://zh.wikipedia.org/wiki/wiki" title="wikilink"><code>wiki</code></a><br />
<em><code>markup</code></em><code> and special characters: →</code></p></td>
</tr>
</tbody>
</table>

### 無Wiki模式

In order for the software to interpret wiki markup, its parser first scans the page. When it sees its nowiki tags

  -

    ([escapes](https://zh.wikipedia.org/wiki/escape_character "wikilink") all contained wiki markup), and

    (escapes the interpretations it is designed to "break"),

it escapes its wikicode, so editors can document its markup *using* its markup.

Article editors can normalize the font of characters trailing `[[...]]outside` a wikilink, which would otherwise adhere to the wikilink font. They can also add line-spacing in the wikitext. Template editors: tag  works only on its source page, not the target; also `{{#tag:nowiki | `*`content`*`}}`, although it wraps that content in nowiki tags, it also does a [pre-save transform](https://zh.wikipedia.org/wiki/mw:Manual:Tag_extensions#How_do_I_render_wikitext_in_my_extension? "wikilink") on that content, which is entirely at odds with the intended purpose of nowiki for templates, subst, signatures, and the pipe-trick.

The two kinds of nowiki operate in different ways to target content, but they both remove meaning (subtract rendering) of wiki markup, then disappear into the background font. Nowiki does nothing toward rendering, but it can add newlines to wikitext (for readability), just like the HTML comment (the preferred method) can. Unlike it does for wiki markup, nowiki does not remove the meaning of *character entities*, either [HTML](https://zh.wikipedia.org/wiki/HTML_character_entities "wikilink") or MediaWiki [special *characters*](https://zh.wikipedia.org/wiki/#Special_characters "wikilink").

There is only one meaning for what  contains, so it needs few examples; but the singular  tag "contains" *many* linkage structures, where it is expected between bracketing-pair characters or in the keyword area. So this section has *many* examples and few mis-examples.

For example, only at the beginning of a line (bol of wikitext, bol in a transclusion, or beginning of a table cell), do , ,  or  mean something.

The rest of the section consists of simple, live examples showing how a single nowiki tag escapes entire linkage structures, beyond [ wikilink ](https://zh.wikipedia.org/wiki/wikilink_\<nowiki_/\> "wikilink") and {{ template }}:

  -
    [fullpagename](https://zh.wikipedia.org/wiki/''[[wp:fullpagename "wikilink")'' | *label* \]\]
    {{ *pagename* | *parameter* }}
    \[\[ *fullpagename* | {{ *pagename* }} \]\]
    {{ *pagename* | \[\[ *fullpagename* \]\] }}
    {{ *pagename* | {{ *pagename* }} }}

Unless you use the two "balanced" nowiki tags, troubleshooting [strip marker](https://zh.wikipedia.org/wiki/help:strip_markers "wikilink") errors and template parameter-handling inconsistencies is a risk. Also, a rendering error may arise when two <kbd>\[\[...\]\]</kbd> square brackets are on the same line, or two <kbd>{{...}}</kbd> curly brackets are in the same section, but only when the two have the nowiki markup placed inconsistently.

#### Displaying wikilinks

(These are all live examples.)

    [[wp:pagename|page name]]
    [<nowiki />[ wp:pagename | page name ]]
    [[<nowiki_/>_wp:pagename|page name]]
    [[wp:pagename_<nowiki_/>|page name]]
    [[ wp:pagename | page name ]<nowiki />]

<poem>

  -
    [page name](https://zh.wikipedia.org/wiki/wp:pagename "wikilink")
    \[\[ wp:pagename | page name \]\]
    [page name](https://zh.wikipedia.org/wiki/\<nowiki_/\>_wp:pagename "wikilink")
    [page name](https://zh.wikipedia.org/wiki/wp:pagename_\<nowiki_/\> "wikilink")
    \[\[ wp:pagename | page name \]\]

</poem>

For **nested structures**, escaping an inner structure escapes its outer structure too.

    [[wp:_{{_1x|pagename }}]]
    [[wp:_{<nowiki_/>{_1x|pagename }}]]
    [[wp:_{{<nowiki_/>_1x|pagename }}]]
    [[wp:_{{_1x_<nowiki_/>|pagename }}]]

<poem>

  -
    [pagename }}](https://zh.wikipedia.org/wiki/wp:_{{_1x "wikilink")
    [pagename }}](https://zh.wikipedia.org/wiki/wp:_{\<nowiki_/\>{_1x "wikilink")
    [pagename }}](https://zh.wikipedia.org/wiki/wp:_{{\<nowiki_/\>_1x "wikilink")
    [pagename }}](https://zh.wikipedia.org/wiki/wp:_{{_1x_\<nowiki_/\> "wikilink")

</poem>

For **two, first pipes**, two nowiki tags are required:

    [[wp:_pagename|{{ 1x]]
    [[wp:_pagename_<nowiki_/>|{{ 1x <nowiki />]]
    <nowiki>[[wp:_pagename|{{ 1x]] </nowiki>

<poem>

  -
    [{{ 1x](https://zh.wikipedia.org/wiki/wp:_pagename "wikilink")
    [{{ 1x ](https://zh.wikipedia.org/wiki/wp:_pagename_\<nowiki_/\> "wikilink")
    \[\[wp:_pagename|{{ 1x\]\]

</poem>

#### Displaying template calls

For templates, put nowiki before the first pipe. If a parameter has a wikilink, put it in that, an inmost position.

    {<nowiki />{ val | u=&gt; [[ms|ms]] | 49082 }}
    {{<nowiki /> val | u=&gt; [[ms|ms]] | 49082 }}
    {{ val <nowiki />| u=&gt; [[ms|ms]] | 49082 }}
    {{ val | u= > [[ms|ms]] | 49082 }<nowiki />}
    {{ val | u= > [[ ms ]<nowiki />] | 49082 }}

<poem>

  -
    {{ val | u=\> [ms](https://zh.wikipedia.org/wiki/ms "wikilink") | 49082 }}
    {{ val | u= \> [ms](https://zh.wikipedia.org/wiki/ms "wikilink") | 49082 }}
    {{ val | u=\> [ms](https://zh.wikipedia.org/wiki/ms "wikilink") | 49082 }}
    {{ val | u=\> [ms](https://zh.wikipedia.org/wiki/ms "wikilink") | 49082 }}
    {{ val | u= \> \[\[ ms \]\] | 49082 }}

</poem>

#### 顯示魔術字

For input **parameters**, , , just write them out, unless they have a default (which goes behind their pipe): {{{1|default}}} → {{{1|default}}}

For a **parser function** nowiki goes between bracketing-pair characters, or anywhere before the : colon.

    {{ #ifeq: inYes | inYes | outYes | outNo }}
    {<nowiki />{ #ifeq: inYes | inYes | outYes | outNo }}
    {{<nowiki /> #ifeq: inYes | inYes | outYes | outNo }}
    {{ #ifeq<nowiki />: inYes | inYes | outYes | outNo }}
    {{ #ifeq: inYes | inYes | outYes | outNo }<nowiki />}

<poem>

  -
    {{ \#ifeq: inYes | inYes | outYes | outNo }}
    {{ \#ifeq: inYes | inYes | outYes | outNo }}
    {{ \#ifeq: inYes | inYes | outYes | outNo }}
    {{ \#ifeq: inYes | inYes | outYes | outNo }}
    {{ \#ifeq: inYes | inYes | outYes | outNo }}

</poem>

**Behavioral switches** expect the tag anywhere:

```
 1. __HIDDENCAT__
 2. __HIDDENCAT<nowiki />__
```

  -
    1\. __HIDDENCAT__
    2\. __HIDDENCAT__

#### Displaying tags

do not display; they are just markup. If you want them to, insert  after an  opening angle bracket; it goes only in the very front. Opening tags and closing tags must be treated separately.

    <span style=color:blue> Blue </span>
    <<nowiki />span style=color:blue> Blue <<nowiki />/span>
    <section end=la<nowiki />bel />

<poem>

  -
    <span style=color:blue> Blue </span>
    \<span style=color:blue\> Blue \</span\>
    <section end=la<nowiki />
    bel /\>

</poem>

Use template  instead of nowiki tags to display parser tags:

**Character entities**, nowiki cannot escape. To escape HTML or special character entities, replace `&` with `&`. For example, `&lt;` → `<`

To **display a nowiki tag**, you can (1) use , (2) replace the \< left angle bracket with its HTML character entity, or (3) nest nowiki tags in each other:

    {{ tag | nowiki }}
    <code>&lt; nowiki>...&lt;/ nowiki ></code>
    <code><<nowiki />nowiki>...<<nowiki />/ nowiki ></code>

<poem>

  -
    {{ tag | nowiki }}
    `< nowiki>...</ nowiki >`
    `< nowiki>...</ nowiki >`

</poem>

    {{ tag | nowiki | s }}
    <code>&lt; nowiki /></code>
    <code><<nowiki /> nowiki /></code>
    <code><nowiki>< nowiki /></nowiki></code>

<poem>

  -
    {{ tag | nowiki | s }}
    `< nowiki />`
    `< nowiki />`
    `< nowiki />`

</poem>

Nowiki tags do not otherwise nest, so it is the second and fourth that displays:

    1<nowiki>2<nowiki>3</nowiki>4</nowiki>
    <nowiki>{{!}}<nowiki></nowiki>{{!}}</nowiki>

<poem>

  -
    12\<nowiki\>34</nowiki>  **
    {{\!}}\<nowiki\>{{\!}}</nowiki>

</poem>

These simply scan from left to right. The paired tags cannot overlap, because the very first pair-match nullifies any intervening tags inside. Unbalanced tags always display.

Nowiki tags do not display table markup, use .

### Pre

is a parser tag that emulates the HTML  tag. It defines preformatted text that is displayed in a fixed-width font and is enclosed in a dashed box. HTML and wiki markups are escaped and spaces and line breaks are preserved, but HTML entities are parsed.

formatted text does not wrap, thus text may extend past the browser window:

    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

To resolve this,  may use CSS styling to add wrapping or a horizontal scrollbar:

  - Wrapping:
  - Scroll bar:

Alternatively, consider using  template or .

## 隱藏文字（註解）

It's uncommonbut on occasion acceptable for notes to other editorsto add a hidden comment within the text of an article. These comments are visible only when editing or viewing the source of a page. Most comments should go on the appropriate [Talk page](https://zh.wikipedia.org/wiki/Wikipedia:Talk_page "wikilink"). The format is to surround the hidden text with "" and may cover several lines, e.g.:

`<!-- An example of hidden comments`
` This won't be visible except in "edit" mode. -->`

Another way to include a comment in the wiki markup uses the  template, which can be abbreviated as . This template "expands" to the empty string, generating no HTML output; it is visible only to people editing the wiki source. Thus  operates similarly to the comment . The main difference is that the template version can be nested, while attempting to nest HTML comments produces odd results.

## 變數

<table>
<thead>
<tr class="header">
<th><p>原始碼</p></th>
<th><p>效果</p></th>
<th><p>註解</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>{{CURRENTWEEK}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>{{CURRENTDOW}}</p></td>
<td></td>
<td><p>星期一 = 1、星期二 = 2，依此類推，但星期日 = 0</p></td>
</tr>
<tr class="odd">
<td><p>{{CURRENTMONTH}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>{{CURRENTMONTHNAME}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>{{CURRENTMONTHNAMEGEN}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>{{CURRENTDAY}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>{{CURRENTDAYNAME}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>{{CURRENTYEAR}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>{{CURRENTTIME}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>{{NUMBEROFARTICLES}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>{{NUMBEROFPAGES}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>{{NUMBEROFUSERS}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>{{PAGENAME}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>{{NAMESPACE}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>{{REVISIONID}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>{{REVISIONUSER}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>{{localurl:pagename}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>{{localurl:<em>Wikipedia:Sandbox</em>|action=edit}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>{{fullurl:pagename}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>{{fullurl:pagename|<em>query_string</em>}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>{{SERVER}}</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>{{ns:1}}</p></td>
<td></td>
<td><p>{{ns:<em>index</em>}}，如：{{ns:1}} → 名字空間全名</p></td>
</tr>
<tr class="odd">
<td><p>{{SITENAME}}</p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

**** is the number of pages in the main namespace that contain a link and are not a redirect. This includes full articles, stubs containing a link, and disambiguation pages.

**** is the genitive (possessive) grammatical form of the month name, as used in some languages but not in English; **** is the nominative (subject) form, as usually seen in English.

In languages where it makes a difference, you can use constructs like `{{grammar:case|word}}` to convert a word from the nominative case to some other case. For example, `{{grammar:genitive|{{CURRENTMONTHNAME}}}}` means the same as `{{CURRENTMONTHNAMEGEN}}`.

## HTML

許多[HTML](../Page/HTML.md "wikilink")標籤可用於Wiki標記式語言。You can check your HTML by using [markup validation](https://zh.wikipedia.org/wiki/Help:Markup_validation "wikilink").

## 參見

See the 'Coding wiki markup' section of the Help navigation navbox below for additional links.

  - [Help:Magic links](https://zh.wikipedia.org/wiki/Help:Magic_links "wikilink"): magic links are automatic links for certain unique identifiers that require no markup.
  - [Wikipedia:Extended image syntax](https://zh.wikipedia.org/wiki/Wikipedia:Extended_image_syntax "wikilink"): advanced [visual file markup](https://zh.wikipedia.org/wiki/Help:Visual_file_markup "wikilink").
  - [Help:A quick guide to templates](https://zh.wikipedia.org/wiki/Help:A_quick_guide_to_templates "wikilink"): an introduction to [templates](https://zh.wikipedia.org/wiki/Help:Template "wikilink").
  - [Help:Substitution](https://zh.wikipedia.org/wiki/Help:Substitution "wikilink"): substitution is an alternative way of including templates than [transclusion](https://zh.wikipedia.org/wiki/Wikipedia:Transclusion "wikilink")
  - [Help:Score](https://zh.wikipedia.org/wiki/Help:Score "wikilink"): how to render musical scores.
  - [Help:Displaying a formula](https://zh.wikipedia.org/wiki/Help:Displaying_a_formula "wikilink"): displaying mathematical formulae.

[Category:维基百科指南](https://zh.wikipedia.org/wiki/Category:维基百科指南 "wikilink") [Category:Wikipedia_editor_help](https://zh.wikipedia.org/wiki/Category:Wikipedia_editor_help "wikilink") [Category:維基百科文字幫助文檔](https://zh.wikipedia.org/wiki/Category:維基百科文字幫助文檔 "wikilink")