> 本文内容由[ReStructuredText](https://zh.wikipedia.org/wiki/ReStructuredText)转换而来。


**reStructuredText**（**RST**、**ReST**或**reST**）是一种用于文本数据的文件格式，主要用于 Python 编程语言社区的技术文档。

它是Python Doc-SIG（Documentation Special Interest Group）的 Docutils 项目的一部分，旨在为 Python 创建一组类似于 Java 的 Javadoc 或 Perl 的 Plain Old Documentation（pod）的工具。Docutils 可以从 Python 程序中提取注释和信息，并将它们格式化为各种形式的程序文档。\[1\]

从这个意义上说，reStructuredText 是一种轻量级标记语言，其设计目的是（a）文档处理软件（如Docutils）可以处理它，（b）读和写 Python 源代码的程序员很容易读它。

## 历史

早期的轻量级标记语言 StructuredText（由 Zope 开发）存在许多问题，reST 就是为了解决这些问题而开发的。\[2\]选择了 reStructuredText 这个名称是为了表明 reST 是一个“经过修改、重写和重新解释的结构化文本”。\[3\]

reST 在 2002 年开始在 Python 社区中得到了重要的应用。

## 参考实现

reST 解析器的引用实现是 Python 编程语言中的 Docutils 文本处理框架的一个组件，但是还可以使用其他解析器。

没有正式的 mime 类型注册为 reStructuredText，但非官方的是\`\`text/x-rst\`\`。\[4\]

## 应用程序

reStructuredText 通常用于技术文档，例如 Python 库的文档。\[5\]然而，它也适用于广泛的文本。

自 2008 年以来，reST 一直是 Python 的 Sphinx 文档生成系统的核心组件。

Trac 也支持 reStructuredText，GitHub 和 Bitbucket 也是如此。\[6\]

为古登堡计划准备文本的分布式校对器正在考虑采用 reST 作为一种基本格式，其他电子书格式可以从这种格式生成。\[7\]

2016 年 7 月，Linux 内核项目决定从基于 DocBook 的文档过渡到 reStructuredText 和 Sphinx 工具链。\[8\]

在 3.0 版本中，软件构建工具 CMake 从自定义标记语言转换为 reStructuredText。\[9\]

## reST标记示例

### 标题

`节标题`
`==============`

`小节标题`
`------------------`

### 列表

``` restructuredtext
- A bullet list item
- Second item

  - A sub item

- Spacing between items creates separate lists

- Third item

1) An enumerated list item

2) Second item

   a) Sub item that goes on at length and thus needs
      to be wrapped. Note the indentation that must
      match the beginning of the text, not the
      enumerator.

      i) List items can even include

         paragraph breaks.

3) Third item

#) Another enumerated list item

#) Second item
```

### 图片

``` restructuredtext
.. image:: /path/to/image.jpg
```

### 指定链接

``` restructuredtext
A sentence with links to `Wikipedia`_ and the `Linux kernel archive`_.

.. _Wikipedia: https://www.wikipedia.org/
.. _Linux kernel archive: https://www.kernel.org/
```

### 匿名链接

``` restructuredtext
Another sentence with an `anonymous link to the Python website`__.

__ https://www.python.org/
```

N.B.: 指定链接和匿名链接用重字符(\`)括起来，而不是用引号(')括起来。

### 文字块

``` restructuredtext
::

  some literal text

This may also be used inline at the end of a paragraph, like so::

  some more literal text

.. code:: python

   print("A literal block directive explicitly marked as python code")
```

## 另请参阅

  - [Comparison of document markup languages](../Page/文档标记语言比较.md "wikilink")
  - [Comparison of documentation generators](https://zh.wikipedia.org/wiki/Comparison_of_documentation_generators "wikilink")
  - [Comparison of notetaking software](https://zh.wikipedia.org/wiki/Comparison_of_notetaking_software "wikilink")

## 参考文献

<references group="" responsive="">

</references>

## 外部链接

  - [reStructuredText官方网站，附有参考页面](http://docutils.sourceforge.net/rst.html)

[Category:轻量级标记语言](https://zh.wikipedia.org/wiki/Category:轻量级标记语言 "wikilink") [Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.