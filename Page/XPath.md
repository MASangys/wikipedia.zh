**XPath**即为[XML路径语言](../Page/XML.md "wikilink")（XML Path
Language），它是一种用来确定XML文档中某部分位置的[计算机语言](https://zh.wikipedia.org/wiki/计算机语言 "wikilink")。

XPath基于XML的树状结构，提供在数据结构树中找寻节点的能力。起初XPath的提出的初衷是将其作为一个通用的、介于与[XSL间的语法模型](https://zh.wikipedia.org/wiki/XSL "wikilink")。但是XPath很快的被开发者采用来当作小型[查询语言](https://zh.wikipedia.org/wiki/查询语言 "wikilink")。

## 表示法

最常见的XPath表达式是路径表达式（XPath这一名称的另一来源）。路径表达式是从一个XML节点（当前的上下文节点）到另一个节点、或一组节点的书面步骤顺序。这些步骤以“/”字符分开，每一步有三个构成成分：

  - 轴描述（用最直接的方式接近目标节点）
  - 节点测试（用于筛选节点位置和名称）
  - 节点描述（用于筛选节点的属性和子节点特征）

一般情况下，我们使用简写后的语法。虽然完整的轴描述是一种更加贴近人类语言，利用自然语言的单词和语法来书写的描述方式，但是相比之下也更加罗嗦。

### 简写后的语法

最简单的XPath如下：

  - `/A/B/C`

在这里选择所有符合规矩的C节点：C节点必须是B的子节点（`B/C`），同时B节点必须是A的子节点（`A/B`），而A是这个XML文档的根节点（`/A`）。此时的这种描述法类似于磁盘中文件的路径（[URI](https://zh.wikipedia.org/wiki/URI "wikilink")），从盘符开始顺着一级一级的目录最终找到文件。

这里还有一个复杂一些的例子，包含了全部构成成分（请详细的看）：

  - `A//B/*[1]`

此时选择的元素是：在B节点下的第一个节点（`B/*[1]`），不论节点的名称如何（`*`）；而B节点必须出现在A节点内，不论和A节点之间相隔几层节点（`//B`）；与此同时A节点还必须是当前节点的子节点（`A`，前边没有`/`）。

### 啰嗦的语法

在未缩写语法里，两个上述范例可以写为：

  - `/child::A/child::B/child::C`
  - `child::A/descendant-or-self::B/child::node()[1]`

在XPath的每个步骤裡，通过完整的**轴描述**（例如：`child`或`descendant-or-self`）进行明确的指定，然后使用`::`，它的后面跟着**节点测试**的内容，例如上面范例所示的`A`以及`node()`。

## 轴描述语法

轴描述元表示XML文件分支树表达式的浏览方向。这些坐标──包括全名及缩写语法──列举如下：

| 坐标                 | 名称        | 说明                           | 缩写语法   |
| ------------------ | --------- | ---------------------------- | ------ |
| child              | 子节点       | 比自身节点深度大的一层的节点，且被包含在自身之内     | 默认，不需要 |
| attribute          | 属性        |                              | `@`    |
| descendant         | 子孙节点      | 比自身节点深度大的节点，且被包含在自身之内        | 不提供    |
| descendant-or-self | 自身引用及子孙节点 |                              | `//`   |
| parent             | 父节点       | 比自身节点深度小一层的节点，且包含自身          | `..`   |
| ancestor           | 祖先节点      | 比自身节点深度小的节点，且包含自身            | 不提供    |
| ancestor-or-self   | 自身引用及祖先节点 |                              | 不提供    |
| following          | 下文节点      | 按纵轴视图，在此节点后的所有完整节点，即不包含其祖先节点 | 不提供    |
| preceding          | 前文节点      | 按纵轴视图，在此节点前的所有完整节点，即不包含其子孙节点 | 不提供    |
| following-sibling  | 下一个同级节点   |                              | 不提供    |
| preceding-sibling  | 上一个同级节点   |                              | 不提供    |
| self               | 自己        |                              | `.`    |
| namespace          | 名称空间      |                              | 不提供    |

关于使用**attribute**坐标简写语法的一个范例，`//a/@href`在文件树里任何地方的元素下选择了一个叫`href`的属性。**self**坐标最通常与述语同用，以参考现行选定节点。例如，`h3[.='See
also']`在现行上下文选取了叫`h3`的元素，该元素文字内容是`See also`。

如果需要了解更多，请查看[ZVON.org给出的XPath帮助](http://www.zvon.org/xxl/XPathTutorial/General_chi/examples.html)

## 节点测试

节点测试包括特定节点名或者更一般的表达式。至于XML里命名空间前缀`gs`已定义的文件，`//gs:enquiry`将找到所有在那命名空间里`enquiry`的节点。

其他节点格式：

;comment() :寻找XML注释节点，例如`<!-- 注释 -->`

;text() :寻找某点的文字型别，例如`hello`于<k>`hello`</k>

;processing-instruction()
:寻找XML[处理指令如](https://zh.wikipedia.org/wiki/处理指令 "wikilink")<code>

<?php echo $a; ?>

</code>。在这个例子里，将符合`processing-instruction('php')`会传回值。

  - node() :寻找所有点

## 节点描述

节点描述为一个逻辑真假表达式，任何真假判断表达式都可在节点后方括号里表示，这条件必须在XPath处理这个节点前先被满足。在某一步骤可有多少个描述并没有限制。

范例如下： `//a[@href='help.php']`，这将检查元素`a`有没有`href`属性，并且该它的值是`help.php`。

复杂一些的范例如下：

  - `//a[@href='help.php'][../div/@class='header']/@target`

或

  - `//a[@href='help.php'][name(..)='div'][../@class='header']/@target`

此例将会选择符合条件的元素`a`的`target`属性。 要求元素`a`：

  - 具有属性`href`且值为`help.php`；
  - 并且元素`a`具有父元素`div`；
  - 并且父元素（`div`）其自身具备`class`属性，值为`header`。

## 函数与运算符

XPath
1.0定义四种数据型别：节点型（本身无序的节点组）、字符串型、数字型、与[布尔型](../Page/布尔代数.md "wikilink")。

有效的运算符有：

  - `/`、`//`以及`..`运算符，一般用于轴描述。
  - 合集运算符 | 把两个节点形成联集。
  - 布尔运算符and、or以及not()函数
  - 数学运算符 +、-、\*、div（除）以及mod（取余数）
  - 比较操作子 =、\!=（不等于）、\<、\>、\<=、\>=

函数有：

  - 文字运算函数

<!-- end list -->

  -
    concat(), substring(), contains(), substring-before(),
    substring-after(), translate(), normalize-space(), string-length()

<!-- end list -->

  - 数学运算函数

<!-- end list -->

  -
    sum(), round(), floor(), ceiling()

<!-- end list -->

  - 节点属性取得函数

<!-- end list -->

  -
    name(), local-name(), namespace-uri()

<!-- end list -->

  - 处理上下文数据取得函数

<!-- end list -->

  -
    position(), last()

<!-- end list -->

  - 类型转换函数

<!-- end list -->

  -
    string(), number(), boolean()

某些常用的函式详列如下。完整明细请参照[W3C建议书](http://www.w3.org/TR/xpath)。

### 节点组函式

  - position() :返回当前节点集合内，该节点的位置。
    count(*node-set*) :返回符合XPath的节点集合的节点总数。

### 字符串函式

  - string(*object*?)
    :根据内建法则转换任何四种XPath数据型别为字符串。参数可为XPath，此时符合条件的节点（群）被转换成字符串返回。
    concat(*string*, *string*, *string*\*) :链接任何数量的字符串。
    contains(*s1*, *s2*) :如果`s1`包含`s2`返回真。
    normalize-space(*string*?)
    :所有在字符串头和尾的都被移除，或者將字符间两个及以上的空白字符置换成单一空格。有些XML因打印关系被美化，但可能让后来的字符串处理結果不可靠，故使用此函式有时能很好地改善情况。

### 布尔函数

  - not(*boolean*) :布尔否运算函数。

### 数学运算函数

  - sum(*node-set*) :根据内建转型规则，转换所有XPath参数定义找到的节点字符串值成为数字，然后返回这些数字总合

使用操作子：`=, !=, <=, <,
>=`和`>`的表达式可以创造于术语内。布尔表达式可用括号`()`、布尔操作子`and`与`or`、和／或者上述的`not()`函式联合起来。数值计算使用`*,
+, -,
div`和`mod`。字符串可包含任何[Unicode字符](https://zh.wikipedia.org/wiki/Unicode "wikilink")。

述语内外，整个节点组可利用"|"字符联合起来。

`v[x or y] | w[z]`会返回单一节点组，包括现行上下文找到的所有拥有`x`或`y`子元素的`v`元素、有`z`子元素的`w`元素。

`//item[@price > 2*@discount]`会选取price属性至少两倍于discount属性数值的对象

## XPath 2 及 XPath 3

在[W3C建议下](https://zh.wikipedia.org/wiki/W3C "wikilink")，XPath
1.0于1999年11月16日发表。[XPath
2.0于](https://zh.wikipedia.org/wiki/XPath_2.0 "wikilink")2007年1月23日成为W3C推荐标准。XPath
2.0表达了XPath语言在大小与能力上显著的增加。

最值得大书特书的改变是XPath 2.0有了更丰富的型别系统；XPath 2.0支持不可分割型态，如在[XML
Schema内建型态定义一样](../Page/XML_Schema.md "wikilink")，并且也可自纲要（schema）导入用户自定型别。现在每个值都是一个序列（一个单一不可分割值或节点都被视为长度一的序列）。XPath
1.0节点组被节点序列取代，它可以是任何顺序。

为了支持更丰富的型别组，XPath 2.0提供相当延展的函式与操作子群。

XPath 2.0实际上是[XQuery
1.0的子集合](https://zh.wikipedia.org/wiki/XQuery_1.0 "wikilink")。它提供了一个for表达式。该式是XQuery里「FLWOR」表达式的缩减版。利用列出XQuery省去的部分来描述该语言是可能的。主要范例是查询前导语（query
prolog）、元素和属性建构式、「FLWOR」语法的余项式、以及`typeswitch`表达式。

XPath 3.0 於 2014年 4月 8日成為 W3C 推薦標準，而 XPath 3.1 則於 2017年 3月 21日成為 W3C
推薦標準。

## 参看

  - **[XML](../Page/XML.md "wikilink")**
  - [XSLT](../Page/XSLT.md "wikilink")，[XSL-FO](../Page/XSL-FO.md "wikilink")
  - [XLink](../Page/XLink.md "wikilink")，[XPointer](https://zh.wikipedia.org/wiki/XPointer "wikilink")
  - [XPointer](https://zh.wikipedia.org/wiki/XPointer "wikilink")
  - [Xquery](https://zh.wikipedia.org/wiki/Xquery "wikilink")
  - [XML Schema](../Page/XML_Schema.md "wikilink")
  - [STXPath](https://zh.wikipedia.org/wiki/STXPath "wikilink")

## 外部链接

  - [W3C XPath1.0规范](http://www.w3.org/TR/xpath)
  - [W3C XPath 2.0候选推荐](http://www.w3.org/TR/xpath20/)

[Category:W3C标准](https://zh.wikipedia.org/wiki/Category:W3C标准 "wikilink")
[Category:XML](https://zh.wikipedia.org/wiki/Category:XML "wikilink")