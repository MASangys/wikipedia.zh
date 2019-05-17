**BSON**（）是一种[计算机数据交换格式](../Page/電子計算機.md "wikilink")，主要被用作[MongoDB数据库中的数据存储和网络传输格式](../Page/MongoDB.md "wikilink")。它是一种二进制表示形式，能用来表示简单[数据结构](../Page/数据结构.md "wikilink")、[关联数组](../Page/关联数组.md "wikilink")（MongoDB中称为“对象”或“文档”）以及MongoDB中的各种数据类型。BSON之名缘于[JSON](../Page/JSON.md "wikilink")，含义为Binary
JSON（二进制JSON）\[1\]。

## 数据类型和语法

BSON文档（对象）由一个有序的元素列表构成。\[2\]\[3\]每个元素由一个字段名、一个类型和一个值组成。字段名为字符串。类型包括：

  - string
  - integer（32或64位）
  - double（64位[IEEE 754浮点数](../Page/IEEE_754.md "wikilink")）
  - decimal128（128位IEEE
    754-2008浮点数；变体），适合作为任意精度为34个十进制数字的数字载体，最大值近似10<sup>6145</sup>
  - date（整数，自[UNIX时间的毫秒数](../Page/UNIX时间.md "wikilink"))
  - byte array（二进制数组）
  - [布林](https://zh.wikipedia.org/wiki/布爾_\(數據類型\) "wikilink")（`true`或`false`）
  - null
  - BSON对象
  - BSON数组
  - JavaScript代码
  - [MD5二进制数据](../Page/MD5.md "wikilink")
  - [正则表达式](../Page/正则表达式.md "wikilink")（[Perl兼容的正则表达式](../Page/Perl.md "wikilink")，即，版本8.41，含UTF-8支持；与[Python不完全兼容](../Page/Python.md "wikilink")）\[4\]

BSON的类型名义上是[JSON类型的一个](../Page/JSON.md "wikilink")[超集](https://zh.wikipedia.org/wiki/超集 "wikilink")（JSON没有date或字节数组类型\[5\]），但一个例外是没有像JSON那样的通用“数字”（number）类型。

## 效率

与JSON相比，BSON着眼于提高存储和扫描效率。BSON文档中的大型元素以长度字段为前缀以便于扫描。在某些情况下，由于长度前缀和显式数组索引的存在，BSON使用的空间会多于JSON。\[6\]

## 例子

一个内容为{"hello":"world"}的文档将存储为：

``` c

Bson:
  \x16\x00\x00\x00               // 总文档大小
  \x02                           // 0x02 = 类型：String（字符串）
  hello\x00                      // 字段名
  \x06\x00\x00\x00world\x00      // 字段值（值大小，值，空终止符）
  \x00                           // 0x00 = 类型：EOO（'end of object'，对象结尾）
```

## 参见

  -
  - [JSON](../Page/JSON.md "wikilink")

  -
  - （二进制JSON）

  -
  - [Protocol Buffers](../Page/Protocol_Buffers.md "wikilink")

  -
  - [Thrift](../Page/Thrift.md "wikilink")

  -
  - [文件導向的數據庫](../Page/文件導向的數據庫.md "wikilink")

      - [MongoDB](../Page/MongoDB.md "wikilink")

  - [ASN.1](../Page/ASN.1.md "wikilink")

  - （WBXML）

  -
  - [Sereal](https://github.com/Sereal/Sereal)

## 参考文献

## 外部链接

  - [BSON Specification](http://bsonspec.org/)
  - [BSON documentation on the MongoDB
    website](http://www.mongodb.org/display/DOCS/BSON)
  - [`bsondump` tool included with
    MongoDB](http://docs.mongodb.org/manual/reference/bsondump/)

[Category:数据序列化格式](https://zh.wikipedia.org/wiki/Category:数据序列化格式 "wikilink")
[Category:面向文档的数据库](https://zh.wikipedia.org/wiki/Category:面向文档的数据库 "wikilink")
[Category:JSON](https://zh.wikipedia.org/wiki/Category:JSON "wikilink")

1.  [BSON Specification](http://bsonspec.org)

2.

3.   What Is NoSQL? {{\!}} InformIT|accessdate=2018-01-17}}

4.

5.  [JSON Specification](http://www.json.org/)

6.