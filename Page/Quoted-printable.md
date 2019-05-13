或，没有规范的中文译名，可译为**可打印字符引用编码**或**使用可打印字符的编码**。Quoted-printable是使用可打印的[ASCII字符](../Page/ASCII.md "wikilink")（如字母、数字与「=」）表示各种编码格式下的字符，以便能在7-bit数据通路上传输[8-bit数据](https://zh.wikipedia.org/wiki/8位元组 "wikilink"),
或者更一般地说在非[8-bit
clean媒体上正确处理数据](https://zh.wikipedia.org/wiki/8-bit_clean "wikilink")。这被定义为MIME
[content transfer
encoding](https://zh.wikipedia.org/wiki/MIME#Content-Transfer-Encoding "wikilink")，用于[e-mail](https://zh.wikipedia.org/wiki/e-mail "wikilink")。

QP使用「=」开头的[转义字符](../Page/转义字符.md "wikilink"). 一般限制行宽为76，因为有些软件限制了行宽.

## 综述

[MIME定义了在e](https://zh.wikipedia.org/wiki/MIME "wikilink")-mail中发送各种信息的方法,
包括非[英语的其它语言文本信息](../Page/英语.md "wikilink"),
使用非ASCII的其它[字符编码](../Page/字符编码.md "wikilink")。这些编码常常使用ASCII范围以外的值来编码字符，因此需要进一步被编码以便适用于non-8-bit-clean环境。Quoted-printable编码就是把任意字节序列映射为ASCII字符序列。Quoted-printable自身并不是一种[字符编码方案](https://zh.wikipedia.org/wiki/字符编码#现代编码模型 "wikilink"),
而是一种在面向字节的编码时的数据编码布置（data coding
layer），即由编码的字符序列如何表示为字节流QP是可逆的，即可以由原来的非ASCII字符流与QP编码后的字节流来回转换而不失信息。

Quoted-printable与[Base64是两种基本的MIME内容传输编码](../Page/Base64.md "wikilink"),
如果通常的「8bit」编码不适用。如果文本不含很多非ASCII字符，quoted-printable编码的结果的可读性相当好而且紧凑。但是，如果输入的大多数是非ASCII字符，那么quoted-printable编码将变得既不可读又非常低效。Base64并不是人可读的，但对于所有数据其成本均匀，适用于二进制数据与非拉丁字母语言文本。

## Quoted-printable编码

任何8-bit字节值可编码为3个字符：一个等号「=」后跟随两个[十六进制数字](../Page/十六进制.md "wikilink")（0–9或A–F）表示该字节的数值。例如，ASCII码[换页符](https://zh.wikipedia.org/wiki/换页符 "wikilink")（十进制值为12）可以表示为「=0C」,
等号「=」（十进制值为61）必须表示为「=3D」。除了可打印ASCII字符与[换行符以外](https://zh.wikipedia.org/wiki/换行 "wikilink")，所有字符必须表示为这种格式。

所有可打印ASCII字符（十进制值的范围为33到126）可用ASCII字符编码来直接表示, 但是等号「=」（十进制值为61）不可以这样直接表示。

ASCII的[水平制表符](https://zh.wikipedia.org/wiki/水平制表符 "wikilink")(tab)与[空格符](https://zh.wikipedia.org/wiki/空格符 "wikilink"),
十进制为9和32,
如果不出现在行尾则可以用其ASCII字符编码直接表示。如果这两个字符出现在行尾，必须QP编码表示为「=09」(tab)或「=20」(space)。

如果数据中包含有意义的行结束标志，必须转换为ASCII回车(CR)换行(LF)序列，既不能用原来的ASCII字符也不能用QP编码的「=」转义字符序列。
相反，如果字节值13与10有其它的不是行结束的含义，它们必须QP编码为=0D与=0A。

quoted-printable编码的数据的每行长度不能超过76个字符。为满足此要求又不改变被编码文本，在QP编码结果的每行末尾加上「软换行」（soft
line break）。即在每行末尾加上一个「=」,
但并不会出现在解码得到的文本中。这种软换行也适用于文本的行非常长，超过了软件限制（例如，某些SMTP软件要求最大行长为1000个字符），这也是RFC
2821允许的。

一个轻微修改的quoted-printable用于消息头（message
header）；参见[MIME\#Encoded-Word](https://zh.wikipedia.org/wiki/MIME#Encoded-Word "wikilink")。

## 例子

`If you believe that truth=3Dbeauty, then surely=20=`
`mathematics is the most beautiful branch of philosophy.`

这是下述字符串的QP解码:

> If you believe that truth=beauty, then surely mathematics is the most
> beautiful branch of philosophy.

## 类似编码方法

  - [百分号编码](../Page/百分号编码.md "wikilink") (data encoding in URL, most
    used for text)
  - [字符值引用](https://zh.wikipedia.org/wiki/字符值引用 "wikilink") (text
    encoding in SGML, HTML, XML)
  - [Rich Text Format\#Character
    encoding](https://zh.wikipedia.org/wiki/Rich_Text_Format#Character_encoding "wikilink")
    (a component of text encoding)

## 注释

## 参考文献

## 外部链接

  - [Online quoted-printable
    decoder](http://www.convertstring.com/EncodeDecode/QuotedPrintableDecode)
  - [Online quoted-printable
    encoder](http://www.convertstring.com/EncodeDecode/QuotedPrintableEncode)

## 参见

  - [RFC 1521](https://zh.wikipedia.org/wiki/RFC_1521 "wikilink")
    (obsolete)
  - [RFC 2045](https://zh.wikipedia.org/wiki/RFC_2045 "wikilink") (MIME)

[Category:字符编码](https://zh.wikipedia.org/wiki/Category:字符编码 "wikilink")
[Category:电子邮件](https://zh.wikipedia.org/wiki/Category:电子邮件 "wikilink")