**Canonical XML**（规范化形式的XML）[XML](../Page/XML.md "wikilink")规范的一个子集。任何XML文档都可以转换为规范化形式的XML，因此将特定类型的微小差异去除却仍是该XML文档。由于这些特定的差异通常不认为是有意义的，转换成规范化形式的XML是判断两个XML文档逻辑上是否是同一个文档的好办法。

举例来说，XML允许在开始标签（tag）的不同点出现，属性可以按任何顺序书写，这些差异很少用来表达含义，因此这些形式通常被认为是相等的

在将一个任意XML文档到规范化形式的XML的转换中，属性将按标准书序（名字的字母顺序）排列，空格和引号被标准化。 这样上面的第二种形式将转换成第一种。

Canonical XML定义了一些规范化形式的规则，包括：

  - 使用[UTF-8](../Page/UTF-8.md "wikilink")编码
  - 用0x0A字符表示换行符
  - 属性值里的白空格被正规化
  - 添加缺省属性的说明
  - CDATA标记的部分替换为相应的文字字符
  - 展开实体引用
  - 删除XML的声明和DTD
  - 空元素使用开始/结束标签对，而不是用特殊的空元素语法
  - 属性按照属性名的字母顺序排序
  - 删除元素中多余的命名空间声明

讲一个文档转换为规范化形式的XML是[幂等的](https://zh.wikipedia.org/wiki/幂等 "wikilink")。 也就是说，第一次转换通常产生与原文档不同的字符串，而重复的转换将不再产生变化。

根据[W3C的规范](https://zh.wikipedia.org/wiki/W3C "wikilink")，如果两个[XML](../Page/XML.md "wikilink")文档具有相同的规范化形式，那么在一定的应用上下文（极少见的情形除外）中，这两个文档在逻辑上是相等的。

然而，在特殊的上下文中，用户可能关心规范形式的XML逻辑等价之外的特殊语义。比如说，[隐写术](../Page/隐写术.md "wikilink")系统可能在XML文档中通过不同的白空格，属性引号和顺序，使用十进制或十六进制数字字符等等来隐藏信息。显然，将这样的文件转换为标准化形式的XML将丢失这些特殊的语义。而另一方面，XML文件使用大小写的不同，单词使用古代的拼写或现代的拼写等，在某种意义上可以看作是相同的，这样的语境超过了标准化形式XML的范围。

## 参见

  - [XML Signature](../Page/XML_Signature.md "wikilink")

## 外部链接

  - [W3C Recommendation, Canonical XML Version 1.0, 15 March 2001](http://www.w3.org/TR/xml-c14n)
  - [W3C Recommendation, Exclusive XML Canonicalization Version 1.0, 18 July 2002](http://www.w3.org/TR/xml-exc-c14n/)

[分类:密码学](https://zh.wikipedia.org/wiki/分类:密码学 "wikilink") [分类:基于XML的标准](https://zh.wikipedia.org/wiki/分类:基于XML的标准 "wikilink") [分类:XML](https://zh.wikipedia.org/wiki/分类:XML "wikilink")