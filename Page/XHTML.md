**可扩展超文本标记语言**（，），是一种[标记语言](https://zh.wikipedia.org/wiki/标记语言 "wikilink")，表现方式与[超文本标记语言](https://zh.wikipedia.org/wiki/超文本标记语言 "wikilink")（[HTML](../Page/HTML.md "wikilink")）类似，不过语法上更加严格。从继承关系上讲，HTML是一种基于[标准通用标记语言](https://zh.wikipedia.org/wiki/标准通用标记语言 "wikilink")（[SGML](../Page/SGML.md "wikilink")）的应用，是一種非常灵活的置標語言，而**XHTML**则基于[可扩展标记语言](https://zh.wikipedia.org/wiki/可扩展标记语言 "wikilink")（[XML](../Page/XML.md "wikilink")），XML是[SGML的一个子集](../Page/SGML.md "wikilink")。XHTML
1.0在2000年1月26日成为[W3C的推荐标准](https://zh.wikipedia.org/wiki/W3C "wikilink")。

XHTML1.1為XHTML最後的獨立標準，2.0止於草案階段。XHTML5則是屬於HTML5標準的一部份，且名稱已改為「以XML序列化的HTML5」，而非「可擴展的HTML」。在今日(2017年)，XHTML5比起HTML5仍遠遠並非主流。

## 概述

[W3C_valid_XHTML_1.0_icon.png](https://zh.wikipedia.org/wiki/File:W3C_valid_XHTML_1.0_icon.png "fig:W3C_valid_XHTML_1.0_icon.png")

**XHTML**是「3種HTML 4文件根據XML
1.0標準重組」而成的\[1\]。而[W3C亦繼續建議使用](https://zh.wikipedia.org/wiki/W3C "wikilink")[HTML](../Page/HTML.md "wikilink")
4.01和積極地研究[HTML5及XHTML的計劃](../Page/HTML5.md "wikilink")。於2002年8月發表的XHTML
1.0的建議中，[W3C指出](https://zh.wikipedia.org/wiki/W3C "wikilink")**XHTML**家族將會是[Internet的新階段](https://zh.wikipedia.org/wiki/Internet "wikilink")。而轉換使用**XHTML**可以令開發人員接觸[XML和其好處](../Page/XML.md "wikilink")，並可以確保以**XHTML**開發的網頁於未來的相容性。

HTML语法要求比较松散，这样对网页编写者来说，比较方便，但对于机器来说，语言的[语法越松散](../Page/语法.md "wikilink")，处理起来就越困难，对于传统的電腦来说，还有能力兼容松散语法，但对于许多其他设备，比如手机，难度就比较大。因此产生了由[DTD定义规则](https://zh.wikipedia.org/wiki/文档类型定义 "wikilink")，语法要求更加严格的XHTML。

大部分常见的浏览器都可以正确地解析XHTML，即使老一点的浏览器，XHTML作为HTML的一个子集，许多也可以解析。也就是说，几乎所有的网页浏览器在正确解析HTML的同时，可兼容XHTML。当然，从[HTML完全转移到XHTML](../Page/HTML.md "wikilink")，还需要一些过程。

跟[CSS](https://zh.wikipedia.org/wiki/CSS "wikilink")（Cascading Style
Sheets，层叠式样式表）结合后，XHTML能发挥真正的威力；这使实现样式跟内容的分离的同时，又能有机地组合网页代码，在另外的单独文件中，还可以混合各种XML应用，比如[MathML](https://zh.wikipedia.org/wiki/MathML "wikilink")、[SVG](https://zh.wikipedia.org/wiki/SVG "wikilink")。

从[HTML到XHTML过渡的变化比较小](../Page/HTML.md "wikilink")，主要是为了适应[XML](../Page/XML.md "wikilink")。最大的变化在于文档必须是[結構良好的](https://zh.wikipedia.org/wiki/良构 "wikilink")，所有[标签必须闭合](https://zh.wikipedia.org/wiki/标签 "wikilink")，也就是说开始标签要有相应的结束标签。另外，XHTML中所有的标签必须小写。而按照HTML
2.0以来的传统，很多人都是将标签大写，这点两者的差异显著。在XHTML中，所有的参数值，包括数字，必须用双引号括起来（而在[SGML和HTML中](../Page/SGML.md "wikilink")，引号不是必须的，当内容只是数字、字母及其它允许的特殊字符时，可以不用引号）。所有元素，包括空元素，比如img、br等，也都必须闭合，实现的方式是在开始标签末尾加入[斜扛](https://zh.wikipedia.org/wiki/斜扛 "wikilink")，比如`<img
... />` 、`<br />`。省略参数，比如`<option selected>`，也不允许，必须用`<option
selected="selected">`。两者的详细差别，可通过[W3C
XHTML说明](http://www.w3.org/TR/xhtml1/#diffs)来查阅。

## 版本

至现时为止，XHTML共有以下几个版本：

  - **XHTML 1.0 Strict（严格版）**是参照“HTML 4.01
    Strict”改编，但不包括被棄用的元素。其[文件类型描述为](https://zh.wikipedia.org/wiki/文件类型描述 "wikilink")：

<!-- end list -->

``` xml
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
```

  - **XHTML 1.0 Transitional（过渡版）**是参照“HTML 4.01
    Transitional”改编，包括已於Strict版本被棄用的呈現性元素（例如<code>
    <center>
    </code>,
    <font>等）。其[文件类型描述为](https://zh.wikipedia.org/wiki/文件类型描述 "wikilink")：

<!-- end list -->

``` xml
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
```

  - **XHTML 1.0 Frameset（框架版）**是参照“HTML 4.01
    Frameset”改编，並允許於網頁中定義[框架元素](https://zh.wikipedia.org/wiki/框架元素 "wikilink")。其[文件类型描述为](https://zh.wikipedia.org/wiki/文件类型描述 "wikilink")：

<!-- end list -->

``` xml
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
```

  - **XHTML
    1.1**。其[文件类型描述为](https://zh.wikipedia.org/wiki/文件类型描述 "wikilink")：

<!-- end list -->

``` xml
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
```

  - **XHTML
    Basic**。其[文件类型描述为](https://zh.wikipedia.org/wiki/文件类型描述 "wikilink")：

<!-- end list -->

``` xml
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML Basic 1.1//EN" "http://www.w3.org/TR/xhtml-basic/xhtml-basic11.dtd">
```

另外，在[Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink")
[Internet Explorer](../Page/Internet_Explorer.md "wikilink")
5.0所新增的<ruby>小字注解标签，在XHTML
1.1得到支援（参看[旁註標記](https://zh.wikipedia.org/wiki/旁註標記 "wikilink")）。
而第二版的XHTML
1.0於2002年8月成為[W3C推薦的文件類型](https://zh.wikipedia.org/wiki/W3C "wikilink")。\[2\]

2.0止於草案。

[XHTML5不需要DTD](https://zh.wikipedia.org/wiki/XHTML5 "wikilink")。

## 有效的XHTML文件

一個符合（附合）XHTML標準的文件即可稱為*有效*。此可以確保XHTML文件代碼的協調，亦能令文件的更容易被處理，而不需確保各種瀏覽器編譯的一致性。而[W3C驗証服務則可以驗証文件是否有效](../Page/W3C驗証服務.md "wikilink")。而實際上，很多[網站開發工具](https://zh.wikipedia.org/wiki/網站開發工具 "wikilink")（例如[Dreamweaver](https://zh.wikipedia.org/wiki/Dreamweaver "wikilink")）都支援以[W3C標準驗証文件](https://zh.wikipedia.org/wiki/W3C "wikilink")。

## 语法

XHTML语言必须符合XML的格式，例如，
要写成
、使用了<code>

</code>之后必须有一<code>个

</code>以结束段落。而且，XHTML标签必须使用小写字母，如
不能写为
；每一个属性都必须使用引号包住，如必须使用<img src="abc.jpg" alt="" />而不能使用<img src=abc.jpg alt="">。这些做法的目的，是使一个XHTML[网页能够被](https://zh.wikipedia.org/wiki/网页 "wikilink")[网页浏览器正确及较快地](../Page/网页浏览器.md "wikilink")[编译](https://zh.wikipedia.org/wiki/编译 "wikilink")。

## 和HTML 4的区别

（翻译自 [W3C XHTML说明](http://www.w3.org/TR/xhtml1/#diffs)）这部分涉及内容广泛。

XHTML是[XML的一种应用](../Page/XML.md "wikilink")。基于这一事实，那些在以[SGML为基础的](../Page/SGML.md "wikilink")[HTML
4中](https://zh.wikipedia.org/wiki/HTML_4 "wikilink")，不完全合法的用法，应被改寫。

### 文档应该是結構良好的

[良好結構](https://zh.wikipedia.org/wiki/良好結構 "wikilink")（Well-formed）\[3\]是由[XML](../Page/XML.md "wikilink")\[4\]引入的一个新概念。也就是说所有的元素都必须有结束标签或者以特殊的方式书写（如下所述），而且所有的标签必须合理地嵌套。

儘管如此，交叉使用在SGML中仍然是合法的，而且在現有的瀏覽器中也能够被广泛接受。 -{zh-hans:

  -
    正确：元素嵌套
      -
        <code>
        <em>这是一个要强调的段落。</em>
        </code>
    错误：元素交叉
      -
        <code><em>
        这是一个要强调的段落。</em>
        </code>; zh-hant:
    正確：元素嵌套
      -
        <code>
        <em>這是一個要強調的段落。</em>
        </code>
    錯誤：元素交叉
      -
        <code><em>
        這是一個要強調的段落。</em>
        </code>;}-

### 元素名稱和屬性必須小寫

XHTML文件要求所有的HTML元素名稱和屬性名稱都要小寫。因為XML本身大小寫意義不同，因此必須區分開來。比如，<code>

<li>

</code>和<code>

<LI>

</code>是完全不同的。

### 要有结束标签

基于SGML的HTML
4里面，允许特定的标签省略结束标签；这些元素暗含有结束标记。XHTML不允许省略结束标记。所有元素（包括在DTD中声明为空的标签），都必须有结束标签。在[DTD中声明为空的元素可以用结束标签或者使用空元素速记法](https://zh.wikipedia.org/wiki/文件類型描述 "wikilink")（参见[空元素](http://www.w3.org/TR/xhtml1/#h-4.6)）。
-{zh-hans:

  -
    正确的：结束的元素
      -
        <code>
        這是一個段落。
        這是另一個段落。
        </code>
    錯誤的：没有结束的元素
      -
        <code>
        這是一個段落。
        這是另一個段落。</code>;zh-hant:
    正確的：结束的元素
      -
        <code>
        這是一個段落。
        這是另一個段落。
        </code>
    錯誤的：没有结束的元素
      -
        <code>
        這是一個段落。
        這是另一個段落。</code>;}-

### 属性值必须总是使用引号包裹

所有的属性值都必须使用引号包含，包括那些以数值类型出现的。

  -
    正确的：属性值使用引号
      -
        <code>
        <td rowspan="3">
        </code>
    错误的：属性值没有使用引号
      -
        <code>
        <td rowspan=3>
        </code>

### 禁止属性简化

XML不支持属性简化，属性值对必须书写完整。属性名，像compact和checked在没有指定具体值的情况下，不能够使用。

  -
    正确的：没有简化属性
      -
        <code>
        <dl compact="compact">
        </code>
    错误的：简化属性
      -
        <code>
        <dl compact>
        </code>

### 空元素

空元素必须有一个结束标签，或者用`/>`来结束开始标签。例如，
或者<code>

</hr>

</code>。

;正确的：结束空标签:<code>

<hr />

</code>

;错误的：没有结束空标签:<code>

<hr>

</code>

### 属性值中空白字符的处理

当客户端在处理属性时，它们依据的是XML的章节3.3.3

  - 祛除前缀和后缀的空白字符。
  - 将一个或多个空白字符序列映射为单个词间空格。

### 脚本和样式元素

在XHTML里面，脚本和样式的元素被声明为具有**\#PCDATA**内容。因此，`<`和`&`会被认为是标记的开始，另外`<`和`&`会被XML解释器认为是实体映射被分别解释成为`<`和`&`。从而将脚本或者样式元素包裹在CDATA标记的部分以避免这些实体扩展。
-{zh-hans:

``` xml
<script type="text/javascript">
<![CDATA[
 ...没有转义处理的内容...
]]>
</script>
```

;zh-hant:

``` xml
<script type="text/javascript">
<![CDATA[
 ...沒有轉義處理的內容...
]]>
</script>
```

;}-

在文档对象模型中，CDATA部分被XML解释器认为是节点，参见[文档对象模型章节1.3](http://www.w3.org/TR/REC-DOM-Level-1/level-one-core.html#ID-E067D597)的第一级别推荐[DOM](http://www.w3.org/TR/xhtml1/#ref-dom)。

一种替代方法就是使用外部的脚本和样式文件。

#### SGML排斥

SGML赋予DTD作者将特定的元素排斥在某个元素之外的能力。此种限制（被称为排斥）在XML中是不可能的。

例如，HTML
4的严格文档类型描述禁止“**a**”作为子元素嵌套在其他“**a**”的内部。这在XML中是不可能检查出这种限制的。尽管这种限制无法在DTD中定义，但是某些特定的元素也不能嵌套使用。关于此类元素和不能嵌套使用的元素概览可以在标准的[元素限制](http://www.w3.org/TR/xhtml1/#prohibitions)里找到。

#### 拥有“id”和“name”属性的元素

HTML 4定义了**a, applet, form, frame, iframe, img, and
map**元素的**name**属性。HTML 4还引入了**id**属性。这两个属性被设计用作片段标识符。

在XML里面，片段标识符是**ID**类型的，而且每个元素只能拥有单一的**ID**类型的属性。所以，在XHTML
1.0中**id**属性被定义为**ID**类型。为了确保XHTML 1.0文档是构建优良的XML文档，XHTML
1.0文档在为以上所列元素定义片段标识符时必须使用id属性。当XHTML文档作为**text/html**媒体类型使用时，确保此类锚点的向后兼容性信息参见[兼容性指南](http://www.w3.org/TR/xhtml1/#guidelines%7CHTML)。

注意：在XHTML 1.0中，不赞成此类元素拥有name属性，在XHTML的后续版本中将被去掉。

#### 拥有预设值的属性

有一些属性在HTML
4和XHTML中都有一套预设值（比如**input**元素的**type**属性）。在SGML和XML中，这些被称为*枚举属性*。在HTML
4里这些值的解释是*不分大小写*的，所以值**TEXT**等同于**text**。在XML里，这些值的解析是*区分大小写*的，在XHTML1中，所有的这些值定义为小写。

#### 十六进制值的实体映射

SGML和XML都允许使用十六进制的数值来映射字符。在[SGML里这些映射可以使用](../Page/SGML.md "wikilink")**&\#Xnn;**或者**&\#xnn;**。在XML文档中，必须使用小写的方式（比如，**&\#xnn;**）。

## XHTML5

參見[XHTML5](https://zh.wikipedia.org/wiki/XHTML5 "wikilink")。

XHTML5並非可擴展HTML的後繼語言，而是對XML序列化的HTML5的稱呼，延續了一部分原本XHTML的精神而加入HTML5，成為HTML5規格的一部分。

## 參考文獻

## 外部链接

  - [XHTML 1.0可扩展超文本标记语言（第二版）](http://www.w3.org/TR/xhtml1/)
  - [XHTML基础](http://www.w3.org/TR/xhtml-basic/)
  - [W3C驗証服務](http://validator.w3.org/)
  - [XHTML 1.1 - 基于模块的XHTML](http://www.w3.org/TR/xhtml11/)
  - [XHTML 2.0（草案）](http://www.w3.org/TR/xhtml2/)
  - [中文的XHTML教程](https://web.archive.org/web/20070202023144/http://www.dreamdu.com/xhtml/)
  - [W3C HTML首页](http://www.w3.org/MarkUp/)

## 参见

  - [XML](../Page/XML.md "wikilink")
  - [HTML](../Page/HTML.md "wikilink")
  - [CSS](https://zh.wikipedia.org/wiki/CSS "wikilink")
  - [SGML](../Page/SGML.md "wikilink")
  - [Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")
  - [Acid2](../Page/Acid2.md "wikilink")
  - [W3C驗証服務](../Page/W3C驗証服務.md "wikilink"){{-}}

[Category:XML](https://zh.wikipedia.org/wiki/Category:XML "wikilink")
[Category:HTML](https://zh.wikipedia.org/wiki/Category:HTML "wikilink")
[Category:W3C标准](https://zh.wikipedia.org/wiki/Category:W3C标准 "wikilink")

1.  <http://www.w3.org/TR/xhtml1/#xhtml> 'What is XHTML?' section in
    *XHTML™ 1.0 The Extensible HyperText Markup Language (Second
    Edition)* A Reformulation of HTML 4 in XML 1.0 *W3C Recommendation
    26 January 2000, revised 1 August 2002*
2.  <http://www.w3.org/TR/2002/REC-xhtml1-20020801/>
3.  <http://www.w3.org/TR/xhtml1/#wellformed>
4.  <http://www.w3.org/TR/xhtml1/#ref-xml>