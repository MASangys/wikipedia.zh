> 本文内容由[ANTLR](https://zh.wikipedia.org/wiki/ANTLR)转换而来。


**ANTLR**（全名：**AN**other **T**ool for **L**anguage **R**ecognition）是基于LL(\*)算法实现的语法解析器生成器（parser generator），用[Java](../Page/Java.md "wikilink")语言编写，使用自上而下（top-down）的递归下降[LL剖析器](../Page/LL剖析器.md "wikilink")方法。由[旧金山大学](../Page/旧金山大学.md "wikilink")的[Terence Parr博士等人於](https://zh.wikipedia.org/wiki/Terence_Parr "wikilink")1989年開始發展。

ANTLR最初叫做**PCCTS**，**P**urdue **C**ompiler **C**onstruction **T**ool **S**et，是Terence Parr在[普渡大学攻讀碩士學位時的創作](https://zh.wikipedia.org/wiki/普渡大学 "wikilink")，在Hank Dietz教授的指导下，开始研究构造自动化的分析器。1993年，Parr取得博士學位，並於同年发布ANTLR 1.10版。最早的ANTLR只支持Java, 直到ANTLR 3以後開始支持[Ada](../Page/Ada.md "wikilink")95、[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[C＃](https://zh.wikipedia.org/wiki/C＃ "wikilink")、[JavaScript](../Page/JavaScript.md "wikilink")、[Objective-C](../Page/Objective-C.md "wikilink")、[Perl](../Page/Perl.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")、[C++](../Page/C++.md "wikilink")和[Standard ML](https://zh.wikipedia.org/wiki/Standard_ML "wikilink")\[1\]。

如同一般的[詞法分析器](https://zh.wikipedia.org/wiki/詞法分析器 "wikilink")（lexer）和語法分析器（parser），ANTLR可以用來產生樹狀分析器（tree parsers）。ANTLR 文法定义使用類似EBNF（Extended Backus-Naur Form）的定义方式，形象十分簡潔直观。例如: ANTLR用A : a;来表示规则，舊式的方法則是以 A=\>a 表示，所以ANTLR是以“:”代替了“=\>”。ANTLR的规则要以分号“;”结束。又如其他ANTLR符號“|”代表“或”的关系，又如“\*，+”表示可以出现0次或多次。

ANTLR本身使用switch-case来匹配token，形成记号序列记号流，舊式的[Yacc](../Page/Yacc.md "wikilink")則利用符号表（parser table）。ANTLR是完全exception-driven，LL(k)语法比目前流行的[LR剖析器](../Page/LR剖析器.md "wikilink")(包含SLR, LALR等）强大，更可以避免LR剖析器既有的位移-歸約（shift-reduce）或歸約-歸約（reduce-reduce）之类的语法冲突，产生的代码清楚易懂，便於程序员阅读和理解。同時更支持[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")。

## ANTLR v4

早期Antlr的LL(\*)文法仍不支持“左递归”（left-recursion）\[2\]，這是所有[LL剖析器](../Page/LL剖析器.md "wikilink")的侷限，在左递归过程没有消耗掉任何token, LL剖析器很容易造成stack overflow。至於如何消除左递归問題，在ANTLR 3中会将parsing策略退化为LL(1) + 回溯的形式。ANTLRWorks則提供一些自动消除左递归的功能，但不實用。接下來的ANTLR v4大力支持Kleene Closure表示法，透過kleene star(\*)和kleene cross(+)的語法糖（syntax sugar），直接以while语句取代遞歸，總算可以順利解決LL分析法所不允许的左递归（但仍不能应付间接左递归，比如兩條分支拥有共同的递归规则作为前缀），因此可兼容Yacc的文法。再者，ANTLR对于LL(\*)不能正确分析的情况，還支持语义断言（Semantic Predicate）来辅助判断, Semantic Predicate可以是任何逻辑，只需返回bool值。

目前[Hibernate](../Page/Hibernate.md "wikilink")與[WebLogic](../Page/WebLogic.md "wikilink")都是使用ANTLR做為来解析[HQL](https://zh.wikipedia.org/wiki/HQL "wikilink")。在NetBeans IDE中更以ANTLR解析C++。[Twitter](../Page/Twitter.md "wikilink")搜索使用ANTLR解析，一天超過200億次查詢。

雖然ANTLR本身是免費的，但《The Definitive ANTLR Reference》這本參考書則屬於使用者付費。目前免費文件極少。

## 用於何處

下列為ANTLR的使用列表:

  - [Groovy](../Page/Groovy.md "wikilink")
  - [Jython](../Page/Jython.md "wikilink")
  - [Hibernate](../Page/Hibernate.md "wikilink")
  - [OpenJDK Compiler Grammar project](http://openjdk.java.net/projects/compiler-grammar/) experimental version of the [javac](https://zh.wikipedia.org/wiki/javac "wikilink") compiler based upon a grammar written in ANTLR
  - Apex, [Salesforce.com](../Page/Salesforce.com.md "wikilink")'s programming language
  - The expression evaluator in [Numbers](https://zh.wikipedia.org/wiki/Numbers_\(spreadsheet\) "wikilink"), Apple's spreadsheet
  - [Twitter](../Page/Twitter.md "wikilink")'s search query language
  - Weblogic server
  - [IntelliJ IDEA](http://confluence.jetbrains.com/display/IDEADEV/Third-Party+Software+Used+by+IntelliJ+IDEA) and [Clion.](http://confluence.jetbrains.com/display/CLION/Third-Party+Software+Used+by+CLion)
  - [Apache Cassandra](https://zh.wikipedia.org/wiki/Apache_Cassandra "wikilink")
  - [Processing](../Page/Processing.md "wikilink")

## 參見

  - [JavaCC](../Page/JavaCC.md "wikilink")
  - [SableCC](https://zh.wikipedia.org/wiki/SableCC "wikilink")
  - [DMS Software Reengineering Toolkit](https://zh.wikipedia.org/wiki/DMS_Software_Reengineering_Toolkit "wikilink")
  - [Coco/R](https://zh.wikipedia.org/wiki/Coco/R "wikilink")
  - [Modular Syntax Definition Formalism](https://zh.wikipedia.org/wiki/Modular_Syntax_Definition_Formalism "wikilink")
  - [Parboiled (Java)](https://zh.wikipedia.org/wiki/Parboiled_\(Java\) "wikilink")

## 注釋

## 文獻

  -
  -
  -
## 深入閱讀

  -
## 外部連結

  -
  - [ANTLRWorks](http://tunnelvisionlabs.com/products/demo/antlrworks)

  - [ANTLR Studio](http://www.placidsystems.com/antlrstudio.aspx)

  - [ANTLR tutorial](http://supportweb.cs.bham.ac.uk/docs/tutorials/docsystem/build/tutorials/antlr/antlr.html) at the University of Birmingham

  - [Why Use ANTLR?](http://www.bearcave.com/software/antlr/antlr_expr.html)

  - [Antlr plugin](https://web.archive.org/web/20070813022556/http://mojo.codehaus.org/antlr-maven-plugin/) for [Maven](https://zh.wikipedia.org/wiki/Maven "wikilink")

[Category:编译器软件](https://zh.wikipedia.org/wiki/Category:编译器软件 "wikilink")

1.  [SML/NJ Language Processing Tools: User Guide](http://www.classes.cs.uchicago.edu/archive/2007/winter/22610-1/docs/lpt-manual.pdf)
2.  ANTLR会提示:“rule is left-recursive”错误。