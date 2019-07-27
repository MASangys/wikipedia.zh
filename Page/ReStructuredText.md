**reStructuredText**（**RST**、**ReST**或**reST**）是一种用于文本数据的文件格式，主要用于
Python 编程语言社区的技术文档。

它是Python Doc-SIG（Documentation Special Interest Group）的 Docutils
项目的一部分，旨在为 Python 创建一组类似于 Java 的 Javadoc 或 Perl 的 Plain
Old Documentation（pod）的工具。Docutils 可以从 Python
程序中提取注释和信息，并将它们格式化为各种形式的程序文档。\[1\]

从这个意义上说，reStructuredText
是一种轻量级标记语言，其设计目的是（a）文档处理软件（如Docutils）可以处理它，（b）读和写
Python 源代码的程序员很容易读它。

## 历史

早期的轻量级标记语言 StructuredText（由 Zope 开发）存在许多问题，reST 就是为了解决这些问题而开发的。\[2\]选择了
reStructuredText 这个名称是为了表明 reST 是一个“经过修改、重写和重新解释的结构化文本”。\[3\]

reST 在 2002 年开始在 Python 社区中得到了重要的应用。

## 参考实现

reST 解析器的引用实现是 Python 编程语言中的 Docutils 文本处理框架的一个组件，但是还可以使用其他解析器。

没有正式的 mime 类型注册为 reStructuredText，但非官方的是\`\`text/x-rst\`\`。\[4\]

## 应用程序

reStructuredText 通常用于技术文档，例如 Python 库的文档。\[5\]然而，它也适用于广泛的文本。

自 2008 年以来，reST 一直是 Python 的 Sphinx 文档生成系统的核心组件。

Trac 也支持 reStructuredText，GitHub 和 Bitbucket 也是如此。\[6\]

为古登堡计划准备文本的分布式校对器正在考虑采用 reST 作为一种基本格式，其他电子书格式可以从这种格式生成。\[7\]

2016 年 7 月，Linux 内核项目决定从基于 DocBook 的文档过渡到 reStructuredText 和 Sphinx
工具链。<ref>{{Cite
web|url=[http://lwn.net/Articles/692704/|title=Kernel](http://lwn.net/Articles/692704/%7Ctitle=Kernel)
documen

1.
2.
3.
4.
5.
6.
7.