**yacc**（**Yet Another Compiler
Compiler**），是[Unix](../Page/Unix.md "wikilink")/[Linux上一个用来生成](../Page/Linux.md "wikilink")[编译器的编译器](../Page/编译器.md "wikilink")（编译器代码生成器）。yacc生成的编译器主要是用C語言寫成的[语法解析器](../Page/语法解析器.md "wikilink")（Parser），需要与[词法解析器](../Page/词法解析器.md "wikilink")[Lex一起使用](../Page/Lex.md "wikilink")，再把兩部份產生出來的C程序一併編譯。yacc本來只在（类）Unix系統上才有，但現時已普遍移植往Windows及其他平台。

yacc的输入是[巴科斯范式](../Page/巴科斯范式.md "wikilink")（BNF）表达的语法规则以及语法规约的处理代码，输出的是基于表驱动的编译器，包含输入的语法规约的处理代码部分。

yacc是开发编译器的一个有用的工具，采用LALR（1）语法分析方法。

yacc最初由[AT\&T的](../Page/AT&T.md "wikilink")[Steven C.
Johnson为Unix操作系统开发](../Page/Steven_C._Johnson.md "wikilink")，后来一些兼容的程序如Berkeley
Yacc，[GNU bison](../Page/GNU_bison.md "wikilink")，MKS yacc和Abraxas
yacc陆续出现。它们都在原先基础上做了少许改进或者增加，但是基本概念是相同的。

由于所产生的解析器需要[词法分析器配合](../Page/词法分析器.md "wikilink")，因此Yacc经常和词法分析器的产生器——一般就是[Lex](../Page/Lex.md "wikilink")——联合使用。[IEEE](../Page/IEEE.md "wikilink")
[POSIX](../Page/POSIX.md "wikilink")
P1003.2标准定义了Lex和Yacc的[功能和](../Page/功能.md "wikilink")[需求](../Page/需求.md "wikilink")。

## 参见

  - [编译原理](../Page/编译原理.md "wikilink")
  - [编译器](../Page/编译器.md "wikilink")
  - [JavaCC](../Page/JavaCC.md "wikilink")：產生[Java的编译器代码生成器](../Page/Java.md "wikilink")
  - [GNU bison](../Page/GNU_bison.md "wikilink")
  - [CodeWorker](../Page/CodeWorker.md "wikilink")
  - [ANTLR](../Page/ANTLR.md "wikilink")

## 外部連結

  - [Berkeley
    Yacc](http://dickey.his.com/byacc/byacc.html)一般认为是目前最好的yacc变种。与bison相比，避免了对特定编译器的依赖。
  - [Essence](https://web.archive.org/web/20050305150105/http://www.informatik.uni-freiburg.de/proglang/software/essence/)，[Scheme的](../Page/Scheme.md "wikilink")[LR(1)语法解析器的生成器](../Page/LR\(1\).md "wikilink")
  - [Coco/R](http://www.ssw.uni-linz.ac.at/Research/Projects/Coco/)
    [Java和](../Page/Java.md "wikilink")[C\#的扫描和解析器](../Page/C♯.md "wikilink")

[Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink")
[Category:编译器软件](https://zh.wikipedia.org/wiki/Category:编译器软件 "wikilink")