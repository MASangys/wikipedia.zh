**yacc**（**Yet Another Compiler Compiler**），是[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")/[Linux](../Page/Linux.md "wikilink")上一个用来生成[编译器的编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")（编译器代码生成器）。yacc生成的编译器主要是用C語言寫成的[语法解析器](https://zh.wikipedia.org/wiki/语法解析器 "wikilink")（Parser），需要与[词法解析器](https://zh.wikipedia.org/wiki/词法解析器 "wikilink")[Lex](../Page/Lex.md "wikilink")一起使用，再把兩部份產生出來的C程序一併編譯。yacc本來只在（类）Unix系統上才有，但現時已普遍移植往Windows及其他平台。

yacc的输入是[巴科斯范式](../Page/巴科斯范式.md "wikilink")（BNF）表达的语法规则以及语法规约的处理代码，输出的是基于表驱动的编译器，包含输入的语法规约的处理代码部分。

yacc是开发编译器的一个有用的工具，采用LALR（1）语法分析方法。

yacc最初由[AT\&T](../Page/AT&T.md "wikilink")的[Steven C. Johnson为Unix操作系统开发](https://zh.wikipedia.org/wiki/Steven_C._Johnson "wikilink")，后来一些兼容的程序如Berkeley Yacc，[GNU bison](https://zh.wikipedia.org/wiki/GNU_bison "wikilink")，MKS yacc和Abraxas yacc陆续出现。它们都在原先基础上做了少许改进或者增加，但是基本概念是相同的。

由于所产生的解析器需要[词法分析器配合](https://zh.wikipedia.org/wiki/词法分析器 "wikilink")，因此Yacc经常和词法分析器的产生器——一般就是[Lex](../Page/Lex.md "wikilink")——联合使用。[IEEE](https://zh.wikipedia.org/wiki/IEEE "wikilink") [POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink") P1003.2标准定义了Lex和Yacc的功能和需求。

## 参见

  - [编译原理](https://zh.wikipedia.org/wiki/编译原理 "wikilink")
  - [编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")
  - [JavaCC](../Page/JavaCC.md "wikilink")：產生[Java](../Page/Java.md "wikilink")的编译器代码生成器
  - [GNU bison](https://zh.wikipedia.org/wiki/GNU_bison "wikilink")
  - [CodeWorker](https://zh.wikipedia.org/wiki/CodeWorker "wikilink")
  - [ANTLR](../Page/ANTLR.md "wikilink")

## 外部連結

  - [Berkeley Yacc](http://dickey.his.com/byacc/byacc.html)一般认为是目前最好的yacc变种。与bison相比，避免了对特定编译器的依赖。
  - [Essence](https://web.archive.org/web/20050305150105/http://www.informatik.uni-freiburg.de/proglang/software/essence/)，[Scheme](../Page/Scheme.md "wikilink")的[LR(1)语法解析器的生成器](https://zh.wikipedia.org/wiki/LR\(1\) "wikilink")
  - [Coco/R](http://www.ssw.uni-linz.ac.at/Research/Projects/Coco/) [Java](../Page/Java.md "wikilink")和[C\#的扫描和解析器](../Page/C♯.md "wikilink")

[Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink") [Category:编译器软件](https://zh.wikipedia.org/wiki/Category:编译器软件 "wikilink")