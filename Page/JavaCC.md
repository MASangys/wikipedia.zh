**JavaCC**（**Java** **C**ompiler **C**ompiler）是一个开源的[语法分析器生成器和](https://zh.wikipedia.org/wiki/语法分析器 "wikilink")[词法分析器生成器](https://zh.wikipedia.org/wiki/词法分析器 "wikilink")。JavaCC根据输入的文法生成由[Java](../Page/Java.md "wikilink")语言编写的分析器。

和[YACC类似](https://zh.wikipedia.org/wiki/YACC "wikilink")，JavaCC根据由[EBNF格式撰写的](https://zh.wikipedia.org/wiki/EBNF "wikilink")[形式文法](../Page/形式文法.md "wikilink")生成语法分析器。不同的是，JavaCC生成的是自顶向下语法分析器，由于可以向前搜寻k个字符，所以可以用来分析[LL(k)文法](https://zh.wikipedia.org/wiki/LL分析器 "wikilink")。同时，JavaCC生成词法分析器的方式和[Lex](../Page/Lex.md "wikilink")也很像。\[1\]

另外，JavaCC还提供JJTree等辅助工具帮助使用者构建[语法树](https://zh.wikipedia.org/wiki/语法树 "wikilink")。

## 历史

在1996年，[Sun Microsystems推出了一个名叫](https://zh.wikipedia.org/wiki/Sun_Microsystems "wikilink")“Jack”的语法解析器生成器。后来，负责“Jack”的开发者创办了自己的公司——[Metamata](https://zh.wikipedia.org/wiki/Metamata "wikilink")，并将“Jack”改名为“JavaCC”。Metamata最后成为了[WebGain的一部分](https://zh.wikipedia.org/wiki/WebGain公司 "wikilink")，在WebGain关闭后，JavaCC才移动到了现在的主页。

## 使用

使用JavaCC构建的软件：

  - [Apache Derby](../Page/Apache_Derby.md "wikilink")
  - [BeanShell](https://zh.wikipedia.org/wiki/BeanShell "wikilink")
  - [FreeMarker](../Page/FreeMarker.md "wikilink")
  - [PMD](https://zh.wikipedia.org/wiki/PMD_\(software\) "wikilink")
  - [Vaadin](https://zh.wikipedia.org/wiki/Vaadin "wikilink")
  - [Apache Lucene](https://zh.wikipedia.org/wiki/Apache_Lucene "wikilink")\[2\]
  - [JavaParser](https://zh.wikipedia.org/wiki/JavaParser "wikilink")

## 另见

  - [ANTLR](../Page/ANTLR.md "wikilink")
  - [SableCC](https://zh.wikipedia.org/wiki/SableCC "wikilink")
  - [Coco/R](https://zh.wikipedia.org/wiki/Coco/R "wikilink")
  - [parboiled](https://zh.wikipedia.org/wiki/Parboiled_\(Java\) "wikilink")

## 外部链接

[JavaCC FAQ](http://www.engr.mun.ca/~theo/JavaCC-FAQ/javacc-faq-moz.htm)

## 参考

[Category:Java平台軟體](https://zh.wikipedia.org/wiki/Category:Java平台軟體 "wikilink") [Category:编译器软件](https://zh.wikipedia.org/wiki/Category:编译器软件 "wikilink")

1.
2.