> 本文内容由[CDATA](https://zh.wikipedia.org/wiki/CDATA)转换而来。


**CDATA**，意为**character data**，是[标记语言](https://zh.wikipedia.org/wiki/标记语言 "wikilink")[SGML](../Page/SGML.md "wikilink")与[XML](../Page/XML.md "wikilink")，表示文档的特定部分是普通的字符数据，而不是非字符数据或有特定、限定结构的字符数据。

## XML中CDATA

在XML文档或外部实体中，一个**CDATA section**是一段按字面解释的内容，不作为标记文本。字符用CDATA节表示或者按照标准语法表示，并无差异。例如"`<`" 与 "`&`" 分别表示 "`<`" 与 "`&`"。

### 语法与解释

一个CDATA节以下述序列开始：

``` xml
```

并以下述序列结束：

``` xml
]]>
```

被包围在上述两个序列之间的所有内容被解释为字符，而不当作标记（markup）或实体引用。每个字符都按字面解释，除了序列`]]>`。

在下例中：

``` xml
<sender>John Smith</sender>
```

开始与结束的"sender"标签被解释为标记。如果写成：

``` xml
John Smith</sender>]]>
```

则等价于写为：

``` xml
<sender>John Smith</sender>
```

也就是说，"标签"与"John Smith"具有相同状态—都被当作了文本。

类似地，如果[字符值引用](https://zh.wikipedia.org/wiki/字符值引用 "wikilink") `ð`在元素内容中出现，将被解释为单个[Unicode字符](https://zh.wikipedia.org/wiki/Unicode "wikilink")00F0 (小写字符[Ð](../Page/Ð.md "wikilink"))。如果出现在CDATA节中，将被解释为6个字符：[&](https://zh.wikipedia.org/wiki/& "wikilink")、[井號符](https://zh.wikipedia.org/wiki/井號符 "wikilink")、2、4、0、分号。

CDATA节不能嵌套。如果文本中需要包含3字符序列"`]]>`"，可以用两个相邻的CDATA节表示它，如下例：

``` xml
<![CDATA[>]]>
```

xml声明<code>

<?xml ...?>

</code>中指定的字符编码集之外的Unicode字符，可以用诸如`&#nnn;`的[字符值引用表示](https://zh.wikipedia.org/wiki/字符值引用 "wikilink")。但CDATA节中的文本，只能限于上述编码集中的字符。因此，CDATA节应该用来表示手工输入的文本，其可读性较好；对于程序自动生成的XML，应该避免使用CDATA。

## 参见

  -
## 参考文献

  - [CDATA Confusion](http://www.flightlab.com/~joe/sgml/cdata.html)
  - [Character Data and Markup (in XML)](http://www.w3.org/TR/REC-xml/#syntax)

[Category:XML](https://zh.wikipedia.org/wiki/Category:XML "wikilink")