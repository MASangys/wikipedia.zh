**可扩展标记语言**（，简称：）是一种[标记语言](https://zh.wikipedia.org/wiki/标记语言 "wikilink")。标记指[计算机所能理解的信息符号](https://zh.wikipedia.org/wiki/计算机 "wikilink")，通过此种标记，[计算机之间可以处理包含各种信息的文章等](https://zh.wikipedia.org/wiki/電腦 "wikilink")。如何定义这些标记，既可以选择国际通用的标记语言，比如[HTML](../Page/HTML.md "wikilink")，也可以使用像XML这样由相关人士自由决定的标记语言，这就是语言的可扩展性。XML是从[标准通用标记语言](https://zh.wikipedia.org/wiki/标准通用标记语言 "wikilink")（SGML）中简化修改出来的。它主要用到的有可扩展标记语言、[可扩展样式语言](../Page/可扩展样式语言.md "wikilink")（XSL）、[XBRL和](https://zh.wikipedia.org/wiki/XBRL "wikilink")[XPath](../Page/XPath.md "wikilink")等。

## 历史

XML的前身是**SGML**（），是自IBM從1960年代就開始發展的**[GML](https://zh.wikipedia.org/wiki/通用标记语言 "wikilink")**（）標準化後的名稱。

GML的重要概念：

  - 文件中能夠明確的將標示與內容分開
  - 所有文件的標示使用方法均一致

1978年，[ANSI將GML加以整理規範](https://zh.wikipedia.org/wiki/ANSI "wikilink")，發佈成為SGML，1986年起為[ISO所採用](https://zh.wikipedia.org/wiki/ISO "wikilink")（ISO 8879），並且被廣泛地運用在各種大型的文件計劃中，但是SGML是一種非常嚴謹的文件描述法，導致過於龐大複雜（標準手冊就有500多頁），難以理解和學習，進而影響其推廣與應用。

同時W3C也發現到HTML的問題：

  - 不能解決所有解釋資料的問題 - 像是影音檔或化學公式、音樂符號等其他形態的內容。
  - 效能問題 - 需要下載整份文件，才能開始對文件做搜尋。
  - 擴充性、彈性、易讀性均不佳。

為了解決以上問題，專家們使用SGML精簡製作，並依照HTML的發展經驗，產生出一套使用上規則嚴謹，但是簡單的描述資料語言：XML。

XML是在一個這樣的背景下誕生的——为了有一個更中立的方式，讓消費端自行決定要如何消化、呈現從服務端所提供的資訊。

XML是從1995年開始有其雛形，並向[W3C](https://zh.wikipedia.org/wiki/W3C "wikilink")（[全球資訊網聯盟](https://zh.wikipedia.org/wiki/全球資訊網聯盟 "wikilink")）提案，而在1998年二月發佈為W3C的標準（XML1.0）。

XML被廣泛用來作為跨平台之間交互數據的形式，主要針對數據的內容，通過不同的格式化描述手段（XSLT，CSS等）可以完成最終的形式表達（生成對應的HTML，PDF或者其他的文件格式）。

## 用途

[RecipeBook_XML_Example.svg](https://zh.wikipedia.org/wiki/File:RecipeBook_XML_Example.svg "fig:RecipeBook_XML_Example.svg"), [PDF以及](https://zh.wikipedia.org/wiki/Portable_Document_Format "wikilink")[Rich Text Format並使用](https://zh.wikipedia.org/wiki/Rich_Text_Format "wikilink")[程式語言或](https://zh.wikipedia.org/wiki/程式語言 "wikilink")[XSL](https://zh.wikipedia.org/wiki/可擴充套件樣式語言 "wikilink")。\]\]

XML设计用来传送及携带数据信息，不用来表现或展示数据，[HTML](../Page/HTML.md "wikilink")則用来表现数据，所以XML用途的焦点是它说明数据是什么，以及携带数据信息。

  - 丰富文件（Rich Documents）- 自定文件描述并使其更丰富
      - 属于文件为主的XML技术应用
      - 标记是用来定义一份资料应该如何呈现
  - 元数据（Metadata）- 描述其它文件或网络资讯
      - 属于资料为主的XML技术应用
      - 标记是用来说明一份资料的意义
  - 配置文档（Configuration Files）- 描述软件設定的参数

## 重要术语

### 字符（characters）

XML 1.0规范允许的（转义后的最终解码值）合法字符： \#x9（水平制表符）、\#xA（回车符）、\#xD（换行符）、\#x20-\#xD7FF、\#xE000-\#xFFFD、\#x10000-\#x10FFFF。即任何Unicode字符，不包含surrogate blocks, FFFE, FFFF。

XML规范定义了5个"预定义实体"来表示特殊字符. XML也允许在每个文档定义任意数量的其它命名实体.

下表列出了5个XML预定义实体. 通过名字引用这些实体的格式为`&name;`，例如, `&` 将绘制为&.

| 名字   | 字符 | Unicode[码位](https://zh.wikipedia.org/wiki/码位 "wikilink")(十进制) | 标准      | 描述                                                  |
| ---- | -- | ------------------------------------------------------------- | ------- | --------------------------------------------------- |
| quot | "  | U+0022 (34)                                                   | XML 1.0 | [双引号](https://zh.wikipedia.org/wiki/双引号 "wikilink") |
| amp  | &  | U+0026 (38)                                                   | XML 1.0 | [&](https://zh.wikipedia.org/wiki/& "wikilink")     |
| apos | '  | U+0027 (39)                                                   | XML 1.0 | [撇号](../Page/撇号.md "wikilink")                      |
| lt   | \< | U+003C (60)                                                   | XML 1.0 | [小于号](https://zh.wikipedia.org/wiki/小于号 "wikilink") |
| gt   | \> | U+003E (62)                                                   | XML 1.0 | [大于号](https://zh.wikipedia.org/wiki/大于号 "wikilink") |

### 處理器（Processor）與应用（application）

XML处理器（Processor，也称作XML parser）分析标记语言并传递结构化信息给应用（application）。

### 标记（Markup）与内容（content）

XML文档的字符分为标记（Markup）与内容（content）两类。标记通常以`<`开头，以`>`结尾；或者以字符`&` 开头，以`;`结尾。不是标记的字符就是内容。但是[CDATA](../Page/CDATA.md "wikilink")部分，分解符号与`]]>`是标记，二者之间的文本为内容。 最外界的空白符是标记。

### 標籤（Tag）

一个*tag*属于标记结构，以`<`开头，以`>`结尾。Tag名字是大小写敏感，不能包括任何字符 \!"\#$%&'()\*+,/;\<=\>?@\[\\\]^\`{|}\~， 也不能有空格符， 不能以"-"或"."或数字开始。可分为三类：

:\* *start-tag*，如<code>

<section>

</code>;

:\* *end-tag*，如<code>

</section>

</code>;

:\* *empty-element tag*，如<line-break />.

### 元素（Element）

元素是文档逻辑组成，或者在start-tag与匹配的end-tag之间，或者仅作为一个empty-element tag。例如：<greeting>`Hello, world!`</greeting>. 另一个例子是： `<line-break />`.

单个根（root）元素包含所有的其他元素。

### 属性（Attribute）

属性是一种标记结构，在start-tag或empty-element tag内部的“名字-值对”。例如：<img src="madonna.jpg" alt="Madonna" />。每个元素中，一个属性最多出现一次，一个属性只能有一个值。

如果属性有多个值，这需要采取XML协议以外的方式来表示，如采用逗号或分号间隔，对于[CSS类或标识符的名字可用空格来分隔](https://zh.wikipedia.org/wiki/CSS "wikilink")。

### XML 声明（declaration）

XML文档如果以*XML declaration*开始，则表述了文档的一些信息。如<code>

<?xml version="1.0" encoding="UTF-8"?>

</code>.

## 例

XML定义结构、存储信息、传送信息。下例為<u>小张</u>发送给<u>大元</u>的便条，存储为XML。

``` xml numberLines
<?xml version="1.0"?>
 <小纸条>
   <收件人>大元</收件人>
   <發件人>小張</發件人>
   <主題>問候</主題>
   <具體內容>早啊，飯吃了沒？ </具體內容>
 </小纸条>
```

这XML文档仅是纯粹的信息标签，这些标签意义的展开依赖于应用它的程序。

### 结构

每个XML文档都由XML序言开始，在前面的代码中的第一行就是XML序言，

<?xml version="1.0"?>

。这一行代码会告诉解析器或浏览器这个文件应该按照XML规则进行解析。

但是，根元素到底叫<小纸条>还是<小便条>，则是由[文档类型定义](https://zh.wikipedia.org/wiki/文档类型定义 "wikilink")（DTD）或[XML纲要](../Page/XML_Schema.md "wikilink")（XML Schema）定义的。如果DTD规定根元素必须叫<小便条>，那么若写作<小纸条>就不符合要求。这种不符合DTD或XML纲要的要求的XML文档，被称作**不合法的XML**，反之则是**合法的XML**。

XML文件的第二行并不一定要包含文档元素；如果有注释或者其他内容，文档元素可以迟些出现。

最常見的PI（processing instruction,像XML序言, 卻是不同類型的語法）是用來指定XML文件的樣式表, 这个PI一般会直接放在XML序言之后，通常由Web浏览器使用，来将XML数据以特殊的样式显示出来。

XML的结构有一个缺陷，那就是不支持分帧（framing）。当多条XML消息在TCP上传输的时候，无法基于XML协议来确定一条XML消息是否已经结束。

## 参考文献

## 延伸閱讀

  - Annex A of ISO 8879:1986 (SGML)

  -
  -
  -
  -
  -
  -
## 外部链接

  - [XML及SGML名词英汉翻译表](http://xml.ascc.net/zh/utf-8/gloss.html)
  - [XML格式化工具 (中文)](https://www.quackertools.com/zh/xml)
  - [XML验证器](https://codebeautify.org/xmlvalidator)
  - [XML在线格式化工具](https://jsonformatter.pro/cn/xml-formatter)

## 参见

  - [XHTML](../Page/XHTML.md "wikilink")
  - [DTD](https://zh.wikipedia.org/wiki/文件类型描述 "wikilink")
  - [XML Schema](../Page/XML_Schema.md "wikilink")
  - [XLink](../Page/XLink.md "wikilink")
  - [SVG](https://zh.wikipedia.org/wiki/SVG "wikilink")
  - [XSLT](../Page/XSLT.md "wikilink")
  - [X3D](../Page/X3D.md "wikilink")
  - [HTML](../Page/HTML.md "wikilink")
  - [CSS](https://zh.wikipedia.org/wiki/CSS "wikilink")
  - [RDF](../Page/資源描述框架.md "wikilink")
  - [RSS](../Page/RSS.md "wikilink")
      - [Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")
  - [MXML](../Page/MXML.md "wikilink")

{{-}}

[Category:XML](https://zh.wikipedia.org/wiki/Category:XML "wikilink") [Category:W3C标准](https://zh.wikipedia.org/wiki/Category:W3C标准 "wikilink") [Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink") [Category:标记语言](https://zh.wikipedia.org/wiki/Category:标记语言 "wikilink") [Category:数据序列化格式](https://zh.wikipedia.org/wiki/Category:数据序列化格式 "wikilink")