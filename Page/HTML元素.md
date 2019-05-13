[HTML中](../Page/HTML.md "wikilink")，一个**HTML元素**是[HTML文件的一个基本组成单元](../Page/HTML.md "wikilink")。HTML文件采用采用树形结构安排HTML元素。更进一步的说，一个HTML元素是一个满足一项或多项DTD要求的元素。HTML元素可以拥有*属性*和*内容*，可以是标题、段落、链接、列表、嵌入媒体或者其他的任何符合DTD要求的格式。

## 概述

### 语法

在HTML語法中，大多數元素編寫一個開始標記和結束標記，與其之間的內容。**HTML標記**係由元素名稱，包圍於兩側之小於號與大於號之[括號所組成](../Page/括號.md "wikilink")。其結束標記擁有一斜線位在小於號之括號後，有別於其起始標記。例如：一個段落係由`p`元素所代表，其被寫成

``` html5
<p>在HTML語法中，大多數元素編寫......</p>
```

然而，並非所有的此類元素*需要*結束標記，甚至是開始標記必須存在。
某些元素，即所謂的*void空元素*，並無結束標記。典型的例子即`br`元素，其表示一個顯著之[換行](../Page/換行.md "wikilink")，像是一首詩或一個住址。一個空元素的行為是預先定義的，並且它不能包含任何內容或其他元素。例如：在電影*[海底總動員](../Page/海底總動員.md "wikilink")*中的牙醫師的地址將被寫成

``` html5
<p>P. Sherman<br>42 Wallaby Way<br>Sydney</p>
```

HTML元素可以是*容器*或者为*空*。 **容器元素** 结构如下：

  - 一个*开始标记*（<标记>）表示一个元素的开始，标记本身还可以包含属性；
      - 任何数量的[属性](../Page/HTML#属性.md "wikilink")（和属性的值）；
  - *内容*（文本和／或子元素）；
  - 一个*结束标记*，使用和起始标记完全相同的元素名但前面附加一个斜线字符
    </tag>。并非所有的元素都要求结束标记，有些元素的结束表示是可有可无的（如*p*），有些是一定不可以有的（如*input*）。

**空元素**指仅包含一个标记，该标记既是开始标记同时也是结束标记。空元素可以有任意数量的属性`<标记名 />`。在[XHTML规范中](../Page/XHTML.md "wikilink")，标记中的斜线符号是*必须*的\[1\]。要求使用一個單獨標籤開啟與關閉元素。若要指定其為一個空元素，符號"/"包含於標記之**結尾**（不能與位於結束標記中的**開始**的符號"/"混淆）。例如：

``` html5
<p>P. Sherman<br/>42 Wallaby Way<br/>Sydney</p>
```

英语中有时HTML元素也被称为“tags”，严格的说*tag*是指元素的开始或者结束标记。

用来指示元素的附加的性质。放在開始標記中。例如：`abbr`元素，其表示[縮寫](../Page/縮寫.md "wikilink")，預計一個`title`屬性包含其開始標記。將被寫成

``` html5
<abbr title="abbreviation">abbr.</abbr>
```

\[\[Image:HTML element structure.svg|frame|Parts of an HTML container
element:

  - *Start tag:* `<p … >`
      - *Attribute:*
          - *name:* `class`
          - *value:* `foo`
  - *Content:* `This is a paragraph.`
  - *End tag:* <code>
    </code>

*complete:* <code>

This is a paragraph.

</code>\]\]

在HTML中，元素（和属性）名字可以是大写或者小写，但在XHTML中，必须是小写。\[2\]大写是旧的用法，并且是HTML规范中说明的方法，但是小写更为通用。

### 相关标准

HTML元素是在自1995年以來發布的一系列免費開放標準中定義的，最初由[IETF以及隨後由](../Page/IETF.md "wikilink")[W3C制订](../Page/W3C.md "wikilink")。

1990年代的[瀏覽器大戰期間](../Page/瀏覽器大戰.md "wikilink")，[網頁瀏覽器的软件商开始不断的添加自定义的元素](../Page/網頁瀏覽器.md "wikilink")，有些被后来的标准吸收。并非所有的软件商都支持这些非标准的元素，一般对于非标准的元素，或者是忽略，或者是导致显示不正确。

1998年，[XML](../Page/XML.md "wikilink")（一种简化的SGML）引入一种方法，允许任何人开发自己的元素并融合到[XHTML文件中](../Page/XHTML.md "wikilink")，使用支持XML的浏览器（[用户代理](../Page/用户代理.md "wikilink")）可以浏览任意元素。\[3\]

而后采用XML兼容的办法，重新制订了HTML 4.01标准，[XHTML
1.0](../Page/#XHTML10.md "wikilink")（*扩展的HTML*）。二者的元素相同，绝大多数情况下，XHTML
1.0文件的元素在HTML
4.0文件中是合法的。本文除非另外指出，应用的都是基于SGML的HTML，对于XHTML多数情况下仍然适用*（二者区别见[HTML](../Page/HTML#SGML-based_versus_XML-based_HTML.md "wikilink")）*。

### 当前的状态

自从HTML第一版以来，已经有数个元素因为过期，不再新的标准中推荐使用或者干脆删除。

目前由于并存三种HTML 4.01／XHTML 1.0 DTD标准，而使得HTML的验证变得复杂起来，这三种标准分别是：

  - **Transitional**，包含过期的元素。该标准制订的目的是提供一个过渡的时期，使得HTML作者可以逐渐适应新的扩展标准；
  - **Frameset**，另一种过渡标准，但是允许作者使用**frameset**；
  - **Strict**，符合现代（1999年以后）的标准。

HTML第一个标准（[HTML
2.0](../Page/HTML#First_specifications.md "wikilink")）包含四个过期的元素。其中一个在[HTML
3.2中被列为无效](../Page/HTML#Version_history_of_the_standard.md "wikilink")。所有的四个在[HTML
4.01
Transitional中都被列为无效](../Page/HTML#Version_history_of_the_standard.md "wikilink")，HTML4.01
Transitional标准此外还将另外十个元素定义为无效。以上这些元素再加两个在[HTML 4.01
Strict中同样被定义为无效](../Page/HTML#Version_history_of_the_standard.md "wikilink")。由于frame元素在显示方面的诸多问题以及其功能已经可以由其他元素替代，在未来的标准中不再保留，虽然目前在Transitional和中仍然有效。

（严格的说，目前的*XHTML*标准[XHTML
1.1](../Page/XHTML.md "wikilink")（2001）根本不支持frame。基本上与XHTML
1.0 Strict相同，但是又包含了**[Ruby
markup](../Page/Ruby_character#Ruby_markup.md "wikilink")**模块。）\[4\]

一个经常导致错误理解的原因是不严格的使用*deprecated*（过期）一词来泛指过期的和无效的，以及今后一段时间过期的不同的状态。

### 展示和行为

根据[分离原则](../Page/分离原则.md "wikilink")，HTML的功能在于给一个文件的内容增加[语义和结构的信息](../Page/语义.md "wikilink")。增加文件的*展示*和*[行为](../Page/行为.md "wikilink")*的功能，例如增加CSS[stylesheets和图形来增加文件的展示功能](../Page/stylesheets.md "wikilink")；通过链接到外部文件和[脚本增加与用户交互的行为](../Page/Client-side_scripting.md "wikilink")。User
agent也可以根据作者所提供的stylesheet在不同的介质（显示器，打印机）上展示不同效果。同时保持语义上的一致。

## 文件结构元素

  -
    这是HTML文件的根元素，所有其他的元素均包含在其中。
    在[HTML 2.0中](../Page/#HTML20.md "wikilink")**标准化**，目前仍然在使用。

<!-- end list -->

  -
    包含HTML标题定义、外部、脚本代码、格式代码等处理信息和元数据。
    在[HTML 2.0中](../Page/#HTML20.md "wikilink")**标准化**，目前仍然在使用。
    （所包含的子元素见[文件头元素](../Page/#Document_head_elements.md "wikilink")）

<!-- end list -->

  -
    包含HTML文件的内容.
    在[HTML 2.0中](../Page/#HTML20.md "wikilink")**标准化**，目前仍然在使用。
    （所包含的子元素见[文件内容元素](../Page/#Document_body_elements.md "wikilink")）

## 文件头元素

  -
    给文件中所有的相对`href`及其它链接提供一个**基本**的'''。必须出现在任何引用外部资源的元素之前。在每个HTML文件中，只允许出现一个`base`元素。`base`元素可以有属性，但是没有内容。
    在*[HTML
    Tags](../Page/#HTMLTAGS.md "wikilink")*中曾经提到一个开发版的**BASE**元素;
    在[HTML 2.0中得以](../Page/#HTML20.md "wikilink")**标准化**; 目前没有变化。

<!-- end list -->

  -
    指定一个基本的字体，包括字符的大小，字型和颜色，与`font`元素搭配使用。已经过期，推荐使用[CSS](../Page/CSS.md "wikilink").
    在[HTML 3.2中](../Page/#HTML32.md "wikilink")**標準化**；在[HTML 4.0
    Transitional中](../Page/#HTML401.md "wikilink")**過期**；並已於[HTML 4.0
    Strict中](../Page/#HTML401.md "wikilink")**失效**。

<!-- end list -->

  -
    **`isindex`**既可以出现在文件头，也可以出现在文件体内，但是只能出现一次。需要服务器端的搜索引擎的支持。
    出现在文件头表示这个文件是一个可搜索的索引。在页面上显示成一个单行的文本输入框用来输入关键词。页面被提交后，[query
    string被加到当前的](../Page/query_string.md "wikilink")[URL后面](../Page/Uniform_Resource_Locator.md "wikilink")，输出的文件搜索的关键字被加亮显示。一般来说，如果服务器支持这个功能的话会自行的加入**isindex**。

<!-- end list -->

  -
    **ISINDEX**在*[HTML Tags](../Page/#HTMLTAGS.md "wikilink")*出现，在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**标准化**。在[HTML 4.0
    Transitional中](../Page/#HTML401.md "wikilink")**过期**。在[HTML 4.0
    Strict中是无效的元素](../Page/#HTML401.md "wikilink")。

<!-- end list -->

  -
    指定連結到其他文件，如*previous*和*next*連結，或替代版本。\[5\]常見的用途是連結至外部的[CSS樣式表](../Page/層疊樣式表.md "wikilink")，使用形式：
      -
        <link rel="stylesheet" type="text/css" href="''url''" title="''description_of_style''">\[6\]
    較少見但重要之用途是透過使用[微格式持續性支援導覽提示](../Page/微格式.md "wikilink")。若干常見之關係已被定義，可能透過瀏覽器介面傳達給使用者，而非直接於網頁中。
      -
        <link rel="next" href="''url''">
    文件之`head`元素可能包含任何數量之`link`元素。該`link` 元素擁有，但無內容。
    **LINK**存在於*[HTML Internet Draft
    1.2](../Page/#HTMLDRAFT12.md "wikilink")*，且已在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前沒有變化。

[{{XMLElement](../Page/Meta_element.md "wikilink")

  -
    可用於指定關於文件之額外[中繼資料](../Page/中繼資料.md "wikilink")，如作者、出版日期、有效日期、頁面描述、關鍵字，或者透過其他header元素及

之其他未提供的資訊。因其共通性，`meta`元素指定關聯的[key-value
pairs](../Page/關聯數組.md "wikilink")。一般情況之下，meta元素傳達關於文件之隱藏資訊。若干meta標籤可被使用，上述之全部應被嵌套在head元素中。每個''
meta''元素之特定目的是由其屬性來定義。

  -
    在一種形式中，`meta`元素可指定應經由實際內容之前的[網頁伺服器寄送之](../Page/網頁伺服器.md "wikilink")[HTTP標頭](../Page/HTTP.md "wikilink")，例如：
      -
        <code>
        <meta http-equiv="foo" content="bar">
        </code>
    — this specifies that the page should be served with an HTTP header
    called `foo` that has a value `bar`.
    在一般形式中，`meta`元素指定HTML網頁的`name`及關聯的`content` [HTML
    屬性描述方面](../Page/HTML_屬性.md "wikilink")。為了防止可能發生歧義，一個可選取之第三方屬性：`scheme`可被支援於指定一個定義該key及其值的含意之語意框架：例如：
      -
        <code>
        <meta name="foo" content="bar" scheme="DC">
        </code>
    在本範例中，`meta`元素辨識其自身為包含`foo`元素，包含`bar`值，從DC或[都柏林核心](../Page/都柏林核心.md "wikilink")[資源描述框架](../Page/資源描述框架.md "wikilink").
    在[HTML 2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前沒有變化。

<!-- end list -->

  -
    使用於包含泛型物件在文件標頭中。雖然很少使用在`head`元素中，但也可能用來擷取外部資料，並將之與目前的文件關聯。
    在[HTML 4.0中](../Page/#HTML401.md "wikilink")**標準化**；目前沒有變化。

<!-- end list -->

  -
    可作為一個容器用於指令碼說明或連結至外部指令碼，包含可選取之`src`屬性。\[7\]此外，使用於文件主體中以動態生成兩個區塊或內聯內容。
    在[HTML 3.2中](../Page/#HTML32.md "wikilink")**標準化**；目前沒有變化。

<!-- end list -->

  -
    指定文件的[CSS樣式](../Page/層疊樣式表.md "wikilink")，其形式通常為：
      -
        <code>
        <style type="text/css">
        ...
        </style>
        </code>
    既可作為一個容器之樣式說明，亦可連結至外部CSS樣式表，例如，在[CSS中](../Page/層疊樣式表.md "wikilink")，與表單中的`@import`指令：
      -
        <code>
        <style>
        @import *url*;
        </style>
        </code>\[8\]
    在[HTML 3.2版本中](../Page/#HTML32.md "wikilink")**標準化**；目前沒有變化。

<!-- end list -->

  -
    定義文件標題。在每個[HTML及](../Page/HTML.md "wikilink")[XHTML文件中為需求的](../Page/XHTML.md "wikilink")。使用者代理可以不同方式使用標題，例如：
      - 網頁瀏覽器通常將之顯示在[標題列中](../Page/標題列.md "wikilink")，當視窗開啟時，或者（在適用的情況）顯示在[工作列中](../Page/工作列.md "wikilink")，當視窗最小化時。
      - 當儲存該頁面時可為預設檔案名稱。
      - [搜尋引擎之](../Page/搜尋引擎.md "wikilink")[網路編目程式可能會特別注意在標題中使用的文字](../Page/網路蜘蛛.md "wikilink")。
    `title`元素不能包含其他元素，僅文字。只有一種`title`元素在文件中被允許。
    **TITLE**存在於*[HTML標籤](../Page/#HTMLTAGS.md "wikilink")*，並在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前沒有變化。

## 文件内容元素

在視覺化瀏覽器中，可顯示元素可呈現為*區塊*或*內行*。雖然所有元素是文件序列之一部分，但是區塊元素 出現在其父元素中：

  - 作為不跨行之矩形物件；
  - 使用區塊邊距，其寬度及高度內容可在周邊元素中被單獨設定。

反言之，內行元素被視為文件文字流之部分；其無法擁有邊距、寬度或高度設定，並且跨行。

### 區塊元素

區塊元素（或稱區塊層級元素）擁有矩形結構。在預設情況下，這些元素將跨越其父元素的整個寬度，因而不允許任何其他元素佔據其相同水平空間，因為已被放置。

區塊元素的矩形結構經常稱之為[盒模型](../Page/:File:W3C_and_Internet_Explorer_box_models.svg.md "wikilink")，並由幾個部分所組成。每個元素包含以下內容：

  - 一個元素的**內容（content）**是放置在一個元素的開啟和關閉標記之間的實際文字（或其他媒體）。
  - 一個元素的**留白（padding）**是該內容周圍的空位，其仍構成上述元素之一部份。padding也是元素在物理上的一部分，且不應被用於建立兩個元素之間的空白。任何背景樣式分配到元素，例如背景圖像或色彩，將在padding內可見。
  - 一個元素的**邊框（border）**是元素的絕對值端，並跨越其周圍。邊框之厚度會增加元素大小。
  - 一個元素的**邊距（margin）**是該元素周圍之空白。任何其他元素之content、padding及border將不允許輸入該區域，除非迫於一些進階的[CSS布局](../Page/CSS.md "wikilink")。使用多數的標準[DTD](../Page/文件類型描述.md "wikilink")，margin在不同元素的左邊和右邊將互相推離。另一方面，margin在元素的上方及下方，將不堆疊或相互交融。這意味著位於該元素之間的空白將與較大的margin一樣大。

上述部分僅指CSS渲染的具體實施，並與HTML元素本身無關。

#### 基本文字

  -
    建立一段落，也許為最常見之區塊層級元素。
    `P`在*[HTML Tags](../Page/#HTMLTAGS.md "wikilink")*中已經存在，並且在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前仍在使用。

<!-- end list -->

  -
    不同層級之section標題。<code>
    <h1>
    </code>界定為最高層級標題，<code>
    <h2>
    </code>為下一層級（次級section），<code>
    <h3>
    </code>又低於上一層級，依此類推直到<code>
    <h6>
    </code>。有時其又統稱為`<h`*`n`*`>`標記，*n*表示任何有效之層級標題。
    多數視覺化瀏覽器預設將標題顯示為大型粗體字，雖然其可被[CSS覆蓋](../Page/層疊樣式表.md "wikilink")。事實上，Heading元素並非只用於建立大型字或粗體字，其*不應*使用於顯示樣式化文字。反言之，其描述了文件之結構和組織。部分程式利用其產生輪廓及表格內容。
    Headings在*[HTML
    Tags](../Page/#HTMLTAGS.md "wikilink")*中已經存在，並且在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前仍在使用。

#### 列表

  -
    **定义列表**（Definition
    List）是一种特殊列表，通常包含一系列“术语”及其“定义”。\[9\]定义列表組成的名稱-值組\[10\]（先前至HTML5定義成一個定義清單，並在早期版本之HTML5被稱之為關聯清單）。定义列表之目的為「術語及定義、中繼資料主題和值、問題及答案，或者名稱-值資料的任何其他群組」之群組。\[11\]
    `DL`在*[HTML Tags](../Page/#HTMLTAGS.md "wikilink")*中已經存在，並且在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前仍在使用。

<!-- end list -->

  -
    在定义列表（先前定義術語在定義清單中）中的名稱。
    `DT`在*[HTML Tags](../Page/#HTMLTAGS.md "wikilink")*中已經存在，並且在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前仍在使用。

<!-- end list -->

  -
    定义列表（先前的一個術語之定義，在定義清單中）中的值。
    `DD`在*[HTML Tags](../Page/#HTMLTAGS.md "wikilink")*中已經存在，並且在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前仍在使用。

<!-- end list -->

  -
    有排序（枚舉）之編號清單。`type`元素可用於指定排序類型，但CSS樣式表提供了更多控制：`{list-style-type: `*`foo`*`}`。其預設為阿拉伯數字編號。若要使用`type`屬性，請使用`<ol
    type="`*`foo`*`">`，以下列項目之一取代*`foo`*：
      - `A`表示A, B, C...
      - `a`表示a, b, c...
      - `I`表示I, II, III...
      - `i`表示i, ii, iii...
      - `1`表示1, 2, 3...
    `OL`在*[HTML Internet Draft
    1.2](../Page/#HTMLDRAFT12.md "wikilink")*中已經存在，並且在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前仍在使用。

<!-- end list -->

  -
    未排序（項目符號）清單。CSS樣式表可用於指定其項目符號：`{list-style-type: foo}`。其預設項目符號為一個空心圓。
    `UL`在*[HTML Tags](../Page/#HTMLTAGS.md "wikilink")*中已經存在，並且在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前仍在使用。

<!-- end list -->

  -
    在排序(**ol**)或未排序(**ul**)清單中之列表項目。
    `LI`在*[HTML Tags](../Page/#HTMLTAGS.md "wikilink")*中已經存在，並且在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前仍在使用。

<!-- end list -->

  -
    目錄清單。該元素之原始目的從未廣泛支援；已被<code>
    </code>替代，故不建議使用。
    `DIR`在*[HTML Tags](../Page/#HTMLTAGS.md "wikilink")*中已經存在，並於[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；在[HTML 4.0
    Transitional中](../Page/#HTML401.md "wikilink")**不建議使用**；在[HTML 4.0
    Strict中](../Page/#HTML401.md "wikilink")**已失效**。

#### 其他區塊元素

  -
    文件作者之聯絡資訊。
    `ADDRESS`在*[HTML
    Tags](../Page/#HTMLTAGS.md "wikilink")*中已經存在，並且在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前仍在使用。

<!-- end list -->

  -
    一個區塊層級引用（[blockquote](../Page/blockquote.md "wikilink")），用於當quotation包含區塊層級元素，如段落。`cite`屬性可能提供來源，且必須是完全合格之[統一資源標誌符](../Page/統一資源標誌符.md "wikilink")。
    區塊quotation的演示文稿在視覺化瀏覽器中經常從其兩個margin縮進之。\<\!--This has led to the
    element being unnecessarily used just to indent paragraphs,
    regardless of semantics. For quotations not containing block level
    elements see the quote (`q`) element.

\--\>

  -
    `BLOCKQUOTE`在*[HTML Internet Draft
    1.2](../Page/#HTMLDRAFT12.md "wikilink")*中已經存在，並且在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前仍在使用。如需更多資訊，請參見[blockquote元素](../Page/blockquote元素.md "wikilink")。

<!-- end list -->

  -
    建立一個區塊層級之置中對齊區域。已由使用CSS樣式表定義置中對齊<code>
    <div>
    </code>或其他元素之方式替代，故不建議使用。
    在[HTML 3.2中](../Page/#HTML32.md "wikilink")**標準化**。

<!-- end list -->

  -
    標記內容中已刪除的section。該元素亦使用為*inline*。
    在[HTML 4.0中](../Page/#HTML401.md "wikilink")**標準化**；目前仍在使用。

<!-- end list -->

  -
    一個區塊層級之邏輯區。沒有語意的通用元素用於區分文件的section，通常為目的，例如由[CSS樣式表或](../Page/層疊樣式表.md "wikilink")[DOM調用來控制之演示文稿或行為](../Page/文件物件模型.md "wikilink")。
    在[HTML 3.0 Drafts中出現](../Page/#HTML30.md "wikilink")；在[HTML
    3.2中](../Page/#HTML32.md "wikilink")**標準化**；目前仍在使用。

<!-- end list -->

  -
    水平線。表象規則亦可被CSS樣式表繪製。
    在[HTML 2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前仍在使用。

<!-- end list -->

  -
    標記一個已插入內容之section。該元素亦使用為*inline*。
    在[HTML 4.0中](../Page/#HTML401.md "wikilink")**標準化**；目前仍在使用。

<!-- end list -->

  -
    指令碼的替代內容。不同於**指令碼（script）**，其只能作為區塊元素。
    在[HTML 4.0中](../Page/#HTML401.md "wikilink")**標準化**；目前仍在使用。

<!-- end list -->

  -
    *預先格式化*文字。該元素中的文字通常顯示在[非比例字型](../Page/字型.md "wikilink")，正因其布局在檔案中（參見[ASCII藝術](../Page/ASCII藝術.md "wikilink")）。而瀏覽器會忽略其他HTML元素的[空白字元](../Page/空白字元.md "wikilink")，在`pre`中，空白應該被呈現為創作的。（使用CSS之內容：`{white-space:
    pre; font-family:
    mono-space;}`，其他元素可在相同方式之下呈現。）該元素可包含任何內行元素，除了：影像（`IMG`）、物件（`OBJECT`）、大型字（`BIG`）、小型字（`SMALL`）、上標（`SUP`）及下標（`SUB`）。
    `PRE`在*[HTML Internet Draft
    1.2](../Page/#HTMLDRAFT12.md "wikilink")*中已經存在，並且在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前仍在使用。

<!-- end list -->

  -
    在文件中放置指令碼。在head中以及在inline內容中也具有效果。
      -
        注意：`SCRIPT`本身並非區塊或內行元素；其本身不應全部顯示，但其可包含說明以動態生成區塊或內行內容兩者。
    在[HTML 3.2中](../Page/#HTML32.md "wikilink")**標準化**；目前仍在使用。

### 行内元素

行內元素無法直接放置在`body`元素中；其必須完全嵌套於區塊及元素中。\[12\]

#### 锚

  -
    锚元素之所以称为“锚”，是因为网页设计者可以用它们来将URL和网页上的一些文本“[繫](../Page/繫.md "wikilink")”（）在一起。当用户在浏览器中查看网页时，他们可以通过点击文本来激活链接，以访问链接中URL指向的页面。\[13\]
    在HTML中，锚既可以是**[超级链接](../Page/超级链接.md "wikilink")**的来源，也可以是*目标*端。
    通过使用`href`属性（hypertext reference
    [1](http://www.w3.org/Provider/ServerWriter.html)），锚可以成为到文档中另一个部分的链接，也可以通过使用一个外部[URL来指向另一个资源](../Page/URL.md "wikilink")（如网页）。
    或者（也可以是同时），通过使用`name`或`id`属性，使这个元素成为目标。[URL可以通过](../Page/URL.md "wikilink")[碎片标识符链接到这个目标](../Page/碎片标识符.md "wikilink")。现在，任何元素都可以通过使用`id`属性来变成一个锚，\[[http://www.w3.org/TR/html4/struct/links.html\#h-12.2.3\]因此](http://www.w3.org/TR/html4/struct/links.html#h-12.2.3%5D因此)<a name="foo">不再必要。\<\!--
    The attribute `title` may be set to give brief information about the
    link:
      -
        <a href="''URL''" title="''additional information''">`link
        text`</a>
    In most graphical browsers, when the cursor hovers over a link, the
    cursor changes into a hand with a stretched index finger and the
    `title` is displayed in a [tooltip](../Page/tooltip.md "wikilink")
    or in some other manner. Some browsers render [alt
    text](../Page/alt_attribute.md "wikilink") the same way, despite
    this not being what the specification calls for.

\--\>

  -
    `A`在*[HTML Tags](../Page/#HTMLTAGS.md "wikilink")*中已經存在，並且在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**標準化**；目前仍在使用。

#### 短语元素

##### 常用的短语元素

  -
    表示本元素是一个[縮寫](../Page/縮寫.md "wikilink")，title属性中可以包含全称：
      -
        <abbr title="微型计算机">`微机`</abbr>
    在[HTML 4.0中](../Page/#HTML401.md "wikilink")**标准化**，目前仍然在使用。

<!-- end list -->

  -
    与`abbr`元素类似。（拼音文字中Acronym是指大写的首字母组合成的词，比如Hyper-Text Markup
    Language的Acronym是HTML;
    Abbreviation的概念更广泛些，可以是将一个较长的词后面部分去掉，用剩下的部分表示词的意思。中文中没有类似的区别）:
      -
        <acronym title="Hyper-Text Markup Language">`HTML`</acronym>
    在[HTML
    4.0中](../Page/#HTML401.md "wikilink")**标准化**，目前仍然在使用，在HTML5中**不支持**。

<!-- end list -->

  -
    表示本元素是一个词条的定义。
    **DFN** 在*[HTML Internet Draft
    1.2](../Page/#HTMLDRAFT12.md "wikilink")*中已经存在，在[HTML
    3.2中完全](../Page/#HTML32.md "wikilink")**标准化**，目前仍然在使用。

<!-- end list -->

  -
    *强调*本元素，传统上显示为斜体。
    **EM** 在*[HTML Internet Draft
    1.2](../Page/#HTMLDRAFT12.md "wikilink")*中已经存在，在[HTML
    2.0中完全](../Page/#HTML20.md "wikilink")**标准化**，目前仍然在使用。

<!-- end list -->

  -
    **加重**一个词条，（传统上显示为粗体）。
    有助听功能的浏览器可能会使用不同的声音来表述加重的词。
    **STRONG**在*[HTML Internet Draft
    1.2](../Page/#HTMLDRAFT12.md "wikilink")*已经存在，在[HTML
    2.0中完全](../Page/#HTML20.md "wikilink")**标准化**，目前仍然在使用。

##### 计算机术语元素

这些与元素主要用于方便显示计算机软件编码和与使用者交互（<code>）；显示源代码变量（<var>）；用户输入（<kbd>）；以及终端输出（<samp>）。

  -
    显示一段代码。通常用等宽字体显示：`Code snippet.`
    **CODE**在*[HTML Internet Draft
    1.2](../Page/#HTMLDRAFT12.md "wikilink")*中出现，并且在[HTML
    2.0最终](../Page/#HTML20.md "wikilink")**标准化**； 目前仍在使用。

<!-- end list -->

  -
    显示一段程序或脚本输出的样本。
    **SAMP**在*[HTML Internet Draft
    1.2](../Page/#HTMLDRAFT12.md "wikilink")*中出现，并且在[HTML
    2.0最终](../Page/#HTML20.md "wikilink")**标准化**； 目前仍在使用。

<!-- end list -->

  -
    键盘 - 显示用户输入的文字。
    **KBD**在*[HTML Internet Draft
    1.2](../Page/#HTMLDRAFT12.md "wikilink")*中出现，并且在[HTML
    2.0最终](../Page/#HTML20.md "wikilink")**标准化**； 目前仍在使用。

<!-- end list -->

  -
    显示一个变量。
    **VAR**在*[HTML Internet Draft
    1.2](../Page/#HTMLDRAFT12.md "wikilink")*中出现，并且在[HTML
    2.0最终](../Page/#HTML20.md "wikilink")**标准化**； 目前仍在使用。

##### 视觉效果

视觉效果的元素仅仅对可视浏览器起作用，因此不推荐使用，如果可能应该使用层叠样式表。部分元素在HTML 4 / XHTML
1.0中被宣布过期或者无效的，其它的在当前的XHTML
2.0草案[XHTML 2.0](http://www.w3.org/TR/2005/WD-xhtml2-20050527/)中被定义为无效的。当前的HTML
5草案[HTML 5](https://web.archive.org/web/20150801133040/http://www.w3.org/TR/html5/text-level-semantics.html)中，**b**,
**i**和**small**还是有效的.

  -
    在可能的情况下，将字体设置成**粗体**。（等效的CSS是：`{font-weight:
    bold}`。）<strong>`...`</strong>在可视的浏览器中有相同的效果，但是有更强的语义。
    **B**在*[HTML Internet Draft
    1.2](../Page/#HTMLDRAFT12.md "wikilink")*中定义，并且在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**标准化**，目前仍在使用。

### 图形和对象

  -
    `src`屬性指定[圖像的URL](../Page/圖像.md "wikilink")。`alt`屬性提供圖像的替代文字。IMG由[馬克·安德森所提出並實作在](../Page/馬克·安德森.md "wikilink")[NCSA
    Mosaic網頁瀏覽器](../Page/NCSA_Mosaic.md "wikilink")\[14\]。
    **IMG**在*[HTML Internet Draft
    1.2](../Page/#HTMLDRAFT12.md "wikilink")*中定义，并且在[HTML
    2.0中](../Page/#HTML20.md "wikilink")**标准化**，目前仍在使用。

## 非標準元素

  -

文本閃爍特效。該特效可能會對患者產生負面影響\[15\]。 `blink`源自於[Netscape
Navigator](../Page/Netscape_Navigator.md "wikilink")；在[HTML
2.0後被列為過期或無效](../Page/#HTML20.md "wikilink")。

  -

文本滾動特效。該特效可能會對患者產生負面影響\[16\]。 `marquee`源自於[Internet
Explorer](../Page/Internet_Explorer.md "wikilink")；在[HTML
4.01後被列為過期或無效](../Page/#HTML20.md "wikilink")。

## 注解

  -

在HTML中的 [注解](../Page/注解.md "wikilink")（以及相近的XML, SGML, SHTML.
）語法與SGML相同。

不同於其它HTML標籤，注解不支援巢狀結構。

標籤： `注解三-->` 看起來會是這樣 `注解一`

注解可以出現在文件的任何地方，甚至可以在文件類型宣告之前。 （在`<!DOCTYPE HTML>`之前。）
HTML的解釋器會忽略注解，只要它們不在HTML標籤**內**。
這裡標籤**內**的意思並非指被一對開始標籤及結束標籤包住的區域內，
而是指在開始標籤**內**，或結束標籤、空元素標籤**內**。

然而並非所有瀏覽器、HTML編輯器都與HTML語法完全相容，在某些特殊情況會造成意料之外的結果。
約有5%的瀏覽器、HTML編輯器在處理注解標籤上有缺陷。（其中大部份是IE6.
） 僅管只有少數版本有此問題。

一些有關注解的相容性問題：

  - 在文件類型宣告之前的注解、除了空白以外的字符會使IE6進入[怪异模式](../Page/怪异模式.md "wikilink")。
  - 為了相容在1995年前的瀏覽器，在`style`或`script`元素中的內容，有時會以注解的型式存在。
  - [BlueGriffon](../Page/BlueGriffon.md "wikilink")
    HTML編輯器1.7.x版本，會將不在<code>
    <style>
    ... {comment tags} ...
    </style>
    </code>標籤內的注解顯示在螢幕上。一些HTML編輯器也有相同的問題。

## 参考文献

### 引用

### 来源

#### HTML标准

  - <span id="HTML20">HTML 2.0:</span>

<!-- end list -->

  - <span id="HTML32">HTML 3.2:</span>

<!-- end list -->

  - <span id="HTML401">HTML 4.01:</span>

    *(HTML 4.01 is the updated form of HTML 4.0.)*

<!-- end list -->

  - <span id="XHTML10">XHTML 1.0:</span>

<!-- end list -->

  - <span id="XHTML11">XHTML 1.1:</span>

#### 其他资源

  - *<span id="HTMLTAGS">HTML Tags:</span>*

    *(Part of the first published description of HTML.)*

<!-- end list -->

  - *<span id="HTMLDRAFT12">HTML Internet Draft 1.2:</span>*

<!-- end list -->

  - *<span id="HTML30">HTML 3.0 Drafts:</span>*

    *(This is the final draft of HTML 3.0, which expired without being
    developed further.)*

<!-- end list -->

  - *<span id="HTMLTABLES">HTML Tables:</span>*

<!-- end list -->

  - <span id="XML10">XML 1.0:</span>

<!-- end list -->

  - <span id="CSS1">CSS:</span>

## 外部链接

  - HTML 4.01（1999年12月24日）：
    [元素](http://www.w3.org/TR/html401/index/elements.html)和[屬性](http://www.w3.org/TR/html401/index/attributes.html)
  - [HTML5](../Page/HTML5.md "wikilink")（2014年10月28日）：[元素和屬性](http://www.w3.org/TR/html5/index.html)

[Category:HTML元素](https://zh.wikipedia.org/wiki/Category:HTML元素 "wikilink")

1.  [XHTML 1.0](../Page/#XHTML10.md "wikilink") §4.6. & C.2

2.  [XHTML 1.0](../Page/#XHTML10.md "wikilink") §4.2

3.  [XML 1.0](../Page/#XML10.md "wikilink")

4.  [XHTML 1.1](../Page/#XHTML11.md "wikilink") §A

5.  [HTML 4.01](../Page/#HTML401.md "wikilink") §12.3

6.  [HTML 4.01](../Page/#HTML401.md "wikilink") §14.3.2

7.  [HTML 4.01](../Page/#HTML401.md "wikilink") §18

8.  [CSS](../Page/#CSS1.md "wikilink") §1.1

9.

10.

11. .

12.

13. [HTML 4 for dummies](../Page/HTML_4_for_dummies.md "wikilink"), 5th
    edition, 2005, By Ed Tittel, Mary C. Burmeister, p. 96.

14.

15.

16.