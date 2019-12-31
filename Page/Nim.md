> 本文内容由[Nim](https://zh.wikipedia.org/wiki/Nim)转换而来。


**Nim**是一个[命令式](../Page/指令式編程.md "wikilink")、[多范式支持](https://zh.wikipedia.org/wiki/多重编程范式 "wikilink")、[静态类型](https://zh.wikipedia.org/wiki/静态类型 "wikilink")、[编译型的](https://zh.wikipedia.org/wiki/編譯語言 "wikilink")[程序设计语言](../Page/编程语言.md "wikilink")，由Andreas Rumpf设计和开发，设计目标是高效、富有表现力以及优雅。Nim支持[元编程](../Page/元编程.md "wikilink")、[函数式](https://zh.wikipedia.org/wiki/函數程式語言 "wikilink")、[消息传递](https://zh.wikipedia.org/wiki/訊息傳遞_\(軟體\) "wikilink")、[面向过程以及](../Page/过去式.md "wikilink")[面向对象编程](../Page/面向对象程序设计.md "wikilink")。

## 语言设计

Nim的语法与[Python](../Page/Python.md "wikilink")相似。具体地说，它受以下语言的影响：

  - [Modula-3](../Page/Modula-3.md "wikilink")：受跟踪的和不受跟踪的指针
  - [Delphi](../Page/Delphi.md "wikilink")：类型安全的字符集
  - [Ada](../Page/Ada.md "wikilink")：subrange types、distinct type、safe variants / case objects
  - [C++](../Page/C++.md "wikilink")：Excessive overloading、[泛型](../Page/泛型.md "wikilink")
  - Python：[Off-side rule](https://zh.wikipedia.org/wiki/Off-side_rule "wikilink")
  - [Lisp](https://zh.wikipedia.org/wiki/Lisp "wikilink")：宏系统、embrace the AST、homoiconicity
  - [Oberon](https://zh.wikipedia.org/wiki/Oberon "wikilink")：成员导出标记
  - [C\#](../Page/C♯.md "wikilink")：Async / await、lambda 宏
  - [Go](../Page/Go.md "wikilink")：Defer

另外，Nim支持[统一调用语法](https://zh.wikipedia.org/wiki/统一调用语法 "wikilink")\[1\] 以及等价标识符。\[2\]

## 编译器

Nim编译器可生成优化过的C代码并将编译推迟给外部的编译器\[3\]（包括 [Clang](../Page/Clang.md "wikilink") 及 [GCC](../Page/GCC.md "wikilink") 在内的众多编译器都受支持）。编译器还可生成 [C++](../Page/C++.md "wikilink")、[Objective-C](../Page/Objective-C.md "wikilink") 以及[JavaScript](../Page/JavaScript.md "wikilink")的代码来便捷地与其他语言的[应用程序接口](../Page/应用程序接口.md "wikilink")（API）交互。这使得Nim可用以编写[iOS和](https://zh.wikipedia.org/wiki/iOS "wikilink")[Android](../Page/Android.md "wikilink")的应用程序。

Nim编译器自身是的，也就是使用Nim语言自身编写的。\[4\]

## 库

Nim程序可使用众多来自[C语言和](https://zh.wikipedia.org/wiki/C语言 "wikilink")[C++](../Page/C++.md "wikilink")的[类库](https://zh.wikipedia.org/wiki/类库 "wikilink")。[语言绑定可用于许多类库](https://zh.wikipedia.org/wiki/语言绑定 "wikilink")，例如[GTK+](https://zh.wikipedia.org/wiki/GTK+ "wikilink")2、[OpenGL](../Page/OpenGL.md "wikilink")、[WinAPI](https://zh.wikipedia.org/wiki/WinAPI "wikilink")、[zlib](https://zh.wikipedia.org/wiki/zlib "wikilink")、[libzip](https://zh.wikipedia.org/wiki/libzip "wikilink")、[OpenSSL](../Page/OpenSSL.md "wikilink") 以及 [cURL](https://zh.wikipedia.org/wiki/cURL "wikilink")。\[5\] Nim 可与 [PostgreSQL](../Page/PostgreSQL.md "wikilink")、[MySQL](../Page/MySQL.md "wikilink") 以及 [SQLite](../Page/SQLite.md "wikilink") 数据库共同工作，可与 [Lua](../Page/Lua.md "wikilink") 和 [Python](../Page/Python.md "wikilink") 语言的解释器交互。

## 参考文献

## 外部链接

  - [官方网站](https://nim-lang.org/)
  - [Nim 在 Github 上的托管地址](https://github.com/nim-lang/Nim)
  - [包管理器Nimble](https://github.com/nim-lang/nimble)

[Category:_系统编程语言](https://zh.wikipedia.org/wiki/Category:_系统编程语言 "wikilink") [Category:_函数式编程语言](https://zh.wikipedia.org/wiki/Category:_函数式编程语言 "wikilink") [Category:_过程式编程语言](https://zh.wikipedia.org/wiki/Category:_过程式编程语言 "wikilink") [Category:_静态类型编程语言](https://zh.wikipedia.org/wiki/Category:_静态类型编程语言 "wikilink")

1.  [Nim Manual:Method call syntax](http://nim-lang.org/docs/manual.html#procedures-method-call-syntax)
2.  [Nim Manual:Identifier equality](http://nim-lang.org/docs/manual.html#lexical-analysis-identifier-equality)
3.
4.  <https://github.com/nim-lang/Nim#compiling>
5.