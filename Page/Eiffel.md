**Eiffel**是一套物件導向程式語言，1985年由[伯特蘭·邁耶所發明](../Page/伯特蘭·邁耶.md "wikilink")。文法類似[Pascal](../Page/Pascal_\(程式語言\).md "wikilink")，並且將語言本身與軟體工程、和工具結合為一。Eiffel实现[契约式设计](../Page/契约式设计.md "wikilink")（Design
by Contract）的風格。

## 語法與語意

### 整體架構

一個Eiffel
"system"或"program"是指一個*classes*的集合。Eiffel系统有一个Cluster的概念。通过一个叫做ACE的外部组件描述类之间的组合关系的，Cluster可以是几个类，或者几个子Cluster，或者是它们的混合。但是Cluster不是Eiffel语言的一个概念，Eiffel语言中，CLASS是惟一的模块。

#### "Hello, world\!"

一支程式語言都會有["Hello,
world\!"的程式碼](../Page/Hello_world_program.md "wikilink").以Eiffel的表示如下：

``` eiffel
class
    HELLO_WORLD
create
    make
feature
    make
        do
            print("Hello, world!%N")
        end
end
```

這支程式有類別（class）`HELLO_WORLD`.其建構元（create
routine）名稱是`make`,會呼叫`print`的系統函式程序（system
library routine）將`"Hello,` `world!"`的訊息給輸出。
Eiffel中不像C系列（C、C++、Java、C\#）的语言，通过约定某个叫做main的函数来启动应用，而是通过ACE来指定一个类作为整个应用的启动。这个类的构造函数也就成为应用的起始点。

## 外部連結

  - [Basic Eiffel Language
    Mechanisms](http://se.ethz.ch/~meyer/publications/online/eiffel/basic.html),
    [Bertrand Meyer](http://se.ethz.ch/~meyer/), August 2006.
  - [Eiffel Software's Open Source initiative](http://dev.eiffel.com)
  - [Eiffel Software](http://www.eiffel.com/) web site of the company
    that introduced Eiffel, was Interactive Software Engineering (ISE).
  - Eiffel tutorial (100 pages) by [Bertrand
    Meyer](../Page/Bertrand_Meyer.md "wikilink")（[HTML](http://archive.eiffel.com/doc/online/eiffel50/intro/language/tutorial-00.html),
    [PDF](http://www.eiffel.com/doc/online/eiffel50/intro/language/tutorial.pdf)）
  - [Eiffel
    standard](http://www.ecma-international.org/publications/standards/Ecma-367.htm),
    revision 2 (2006); this is the ECMA standard, with free access, its
    text identical to that of the ISO standard.
  - [SmartEiffel](http://smarteiffel.loria.fr/) (formerly SmallEiffel) a
    complete Eiffel compiler released under GNU GPL license, translates
    Eiffel code either to [C](../Page/C_language.md "wikilink") or [Java
    bytecode](../Page/Java_bytecode.md "wikilink"), not standard
    compliant, with emphasis on performance.
  - ["The Eiffel Compiler"
    (tecomp)](http://www.sourceforge.net/projects/tecomp) an [open
    source](../Page/open_source.md "wikilink") Eiffel compiler with
    [documentation](http://tecomp.sourceforge.net).
  - [Visual Eiffel](http://visual-eiffel.org) an [open
    source](../Page/open_source.md "wikilink") implementation of Eiffel
    creating [native code](../Page/native_code.md "wikilink") for X86
    systems（Windows, Linux）
  - [NICE](http://www.eiffel-nice.org/) Nonprofit International
    Consortium for Eiffel.
  - [eiffelroom.com](http://www.eiffelroom.com/) Community around
    standard Eiffel.
  - [eiffelzone.com](https://web.archive.org/web/20041129095939/http://eiffelzone.com/)
    Includes a comprehensive Eiffel Software Directory
  - [Cetus Eiffel
    Page](https://web.archive.org/web/20040604193933/http://cetus-links.org/oo_eiffel.html)
  - [Eiffel for
    .NET](https://web.archive.org/web/20060414005314/http://www.eiffel.com/products/envsn/)
  - [<cite>Eiffel: the
    Language</cite>](http://archive.eiffel.com/nice/language/) subset

[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink")
[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")