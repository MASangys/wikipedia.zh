Oz是一门多范式编程语言语言，由 Université catholique de
Louvain的编程系统实验室开发，主要用于计算机编程语言的教学。它还提供一本相关的语言教材《Concepts,
Techniques, and Models of Computer Programming》。

[Mozart Programming
System是](https://zh.wikipedia.org/wiki/Mozart_Programming_System "wikilink")
Oz 语言的主要实现，由Mozart Consortium作为开源软件发布。目前Mozart已经被移植到了不同的操作平台，包括Unix,
FreeBSD, Linux, Microsoft Windows, 和 Mac OS
X。Mozart-Oz项目本身包括运行虚拟机MVM等，请见于[Mozart2-GitHub](https://github.com/mozart/mozart2/wiki)以及\[www.mozart-oz.org\]

## 语言特性

Oz大量借鉴了[Haskell](../Page/Haskell.md "wikilink")，[Lisp](https://zh.wikipedia.org/wiki/Lisp "wikilink")，[Prolog](../Page/Prolog.md "wikilink")，[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")，[Perl](../Page/Perl.md "wikilink")，[Java](../Page/Java.md "wikilink")等语言的特性。他包含绝大多数的主要[编程范型](../Page/编程范型.md "wikilink")，包括逻辑，函数式（包括[惰性求值](../Page/惰性求值.md "wikilink")和[及早求值](https://zh.wikipedia.org/wiki/及早求值 "wikilink")）、[指令式编程](https://zh.wikipedia.org/wiki/指令式编程 "wikilink")、
[面向对象](https://zh.wikipedia.org/wiki/面向对象的程序设计 "wikilink")、[约束编程](https://zh.wikipedia.org/wiki/约束编程 "wikilink")、[分布式以及](../Page/分布式计算.md "wikilink")[并发计算](../Page/并发计算.md "wikilink")等。Oz
的正式语法简单（详见下文提到的书中第 13 章）而实现高效.
Oz是一个面向[并行编程的语言](https://zh.wikipedia.org/wiki/concurrency_\(computer_science\) "wikilink"),
这个名词最开始是由 [Erlang
language的主要设计者](https://zh.wikipedia.org/wiki/Erlang_\(programming_language\) "wikilink")
[Joe
Armstrong发明](https://zh.wikipedia.org/wiki/Joe_Armstrong_\(programmer\) "wikilink")。面向并行的编程语言可以让并行变得容易且高效。Oz还支持一个标准的图形界面语言
[QTk](http://www.mozart-oz.org/home/doc/mozart-stdlib/wp/qtk/html/)。

在支持多种编程范式的基础上，Oz
的主要优势来自于支持[约束编程和](https://zh.wikipedia.org/wiki/约束编程 "wikilink")[分布式计算](../Page/分布式计算.md "wikilink")。同时受益于模块化设计，Oz
成功得被实现为一种网络透明的分布式计算模型。这种模型使得使用 Oz
编写开放的、[可容错的应用变得简单](https://zh.wikipedia.org/wiki/容错计算机系统 "wikilink")。而在[约束编程方面](https://zh.wikipedia.org/wiki/约束编程 "wikilink")，Oz
引入了“计算空间（computation
space）”的概念，从而使得用户定义的搜索和部署策略与约束领域相[正交](../Page/正交.md "wikilink")。