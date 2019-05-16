**XML信息集**（**XML Information Set**，缩写**XML
Infoset**）是[W3C规范（specification）](../Page/W3C推荐标准.md "wikilink")，该规范使用一套信息项（information
item）来描述XML文档的一个抽象的数据模型。\[1\] XML信息集这个规范意图用于其他规范中以引用中的信息。

一个XML文档，只要是良构的并且满足[XML命名空间的约束](../Page/XML命名空间.md "wikilink")，就存在有信息集。一个XML文档存在信息集并不需要该XML文档有效。

信息集可以包含的总共11种不同类型的信息项。

1.  文档信息项 （总是存在）Document Information Item
2.  元素信息项（Element Information Item）
3.  属性信息项（Attribute Information Item）
4.  PI信息项（Processing Instruction Information Item）
5.  未扩展实体引用信息项（Unexpanded Entity Reference Information Item）
6.  字符信息项（Character Information Item）
7.  注释信息项（Comment Information Item）
8.  文档类型声明信息项（The Document Type Declaration Information Item）
9.  非解析实体信息项（Unparsed Entity Information Item）
10. 格式信息项（Notation Information Item）
11. 命名空间信息项（Namespace Information Item）

信息集推荐标准第二版于2004年2月4日被采纳。

## 信息集补充（Infoset Augmentation）

信息集补充或信息集修改是指在Schema合法性检查期间对信息集的修改的过程，例如，添加缺省的属性。补充后的信息集被称为post-schema-validation
infoset（简称PSVI）。\[2\]

信息集补充是存在争议的，有人认为它破坏了模块化，并容易导致互操作性问题。这是由于是否进行了信息集补充，会使应用程序得到不同的信息。 \[3\]

[XML Schema支持信息集补充](../Page/XML_Schema.md "wikilink")，而[RELAX
NG并不支持信息集补充](https://zh.wikipedia.org/wiki/RELAX_NG "wikilink")。

## 参见

XML信息集的实例包括：

  - [文档对象模型](../Page/文档对象模型.md "wikilink")
  - [Xpath data
    model](https://zh.wikipedia.org/wiki/Xpath_data_model "wikilink")
  - [SXML](https://zh.wikipedia.org/wiki/SXML "wikilink")

## 参考文献

## 外部链接

  -
  -
[Category:W3C标准](https://zh.wikipedia.org/wiki/Category:W3C标准 "wikilink")
[Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink")

1.  [W3C XML
    Infoset](https://zh.wikipedia.org/wiki/#W3C_XML_Infoset "wikilink")
2.  [XML Schema 1.1 Part 1:
    Structures](http://www.w3.org/TR/xmlschema11-1/)
3.  [*RELAX NG and W3C XML
    Schema*](http://www.imc.org/ietf-xml-use/mail-archive/msg00217.html)
    , [James
    Clark](https://zh.wikipedia.org/wiki/James_Clark_\(XML_expert\) "wikilink"),
    4 Jun 2002