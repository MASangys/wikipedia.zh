**ISWIM** 是 [Peter J. Landin](https://zh.wikipedia.org/wiki/Peter_J._Landin "wikilink") 设计并描述于他在1966年于[ACM通讯](../Page/ACM通讯.md "wikilink")中出版的文章《The Next 700 Programming Languages》中的抽象计算机[编程语言](../Page/编程语言.md "wikilink")（或编程语言家族）。名称是如下首字母缩写“**I**f you **S**ee **W**hat **I** **M**ean”。

尽管没有实现，它被证明为在编程语言特别是[函数式编程](../Page/函数式编程.md "wikilink")语言开发中非常有影响力的语言，比如 [SASL](https://zh.wikipedia.org/wiki/SASL "wikilink")，[Miranda](https://zh.wikipedia.org/wiki/Miranda "wikilink")，[ML](../Page/ML语言.md "wikilink")，[Haskell](../Page/Haskell.md "wikilink") 和它们的后继者。

ISWIM 是带有由加了语法糖的 [lambda 演算组成的函数式核心的指令式语言](https://zh.wikipedia.org/wiki/lambda_演算 "wikilink")，它增加了（i）可变变量和赋值，（ii）强力控制机制 — Landin 的 [J 算子](https://zh.wikipedia.org/wiki/J算子 "wikilink")，它能够捕获当前的续体（[Scheme](../Page/Scheme.md "wikilink") 的 [call/cc](https://zh.wikipedia.org/wiki/call/cc "wikilink") 算子是简化版本的 Landin 的 J 算子）。因为基于 lambda 演算，ISWIM 有[高阶函数和](https://zh.wikipedia.org/wiki/高阶函数 "wikilink")[词法辖域变量](https://zh.wikipedia.org/wiki/词法辖域 "wikilink")。

ISWIM 的操作语义是使用 Landin 的 [SECD抽象机](../Page/SECD抽象机.md "wikilink")定义的，并且使用了传值调用因而是[及早求值的](https://zh.wikipedia.org/wiki/及早求值 "wikilink")。ISWIM 的目标之一就是看起来更像数学表示，所以 Landin 放弃了 [ALGOL](../Page/ALGOL.md "wikilink") 的语句间分号和 begin ... end 块结构并把它们替代为[越位规则](../Page/越位规则.md "wikilink")和基于缩进的辖域。

ISWIM 的一个概念上的特色是使用了 where 子句。ISWIM 程序是由 where 子句（包括变量间等式的辅助定义），条件表达式和函数定义量化的一个单一表达式。与 [CPL](https://zh.wikipedia.org/wiki/CPL语言 "wikilink") 一起，ISWIM 是最早使用 where 子句的语言之一。

显著的语义特征是有能力定义新数据类型为（可能递归的）乘积之和 - 这是使用了稍微冗余的自然语言风格描述来完成的，但是除了表示法之外完全等同于现代函数式语言中[代数数据类型](https://zh.wikipedia.org/wiki/代数数据类型 "wikilink")。ISWIM 变量没有明确的类型声明，Landin 好像（尽管在 1966 论文中没有明确的说）希望这个语言是动态类型的，像 LISP 而不像 [ALGOL](../Page/ALGOL.md "wikilink")；但是也有可能他想要开发某种形式的[类型推论](../Page/类型推论.md "wikilink")。

没有尝试过 ISWIM 的直接实现，但 Art Evan 的 PAL 和 John Reynold 的 Gedanken 捕获了 Landin 的多数概念，包括强力控制转移操作。这两者都是动态类型的。Milner 的 [ML](../Page/ML语言.md "wikilink") 可以被认为等价于没有 J 算子和有类型推论的 ISWIM。

从 ISWIM 衍生出的另一个行列是去掉指令式特征（赋值和 J 算子）而留下纯函数式语言。接着就有可能切换到[惰性求值](../Page/惰性求值.md "wikilink")。这条路导致了 [SASL](https://zh.wikipedia.org/wiki/SASL "wikilink")，[Miranda](https://zh.wikipedia.org/wiki/Miranda "wikilink") 和 [Haskell](../Page/Haskell.md "wikilink")。

## 引用

  - P. J. Landin [*The Next 700 Programming Languages*](http://www.cs.cmu.edu/~crary/819-f09/Landin66.pdf). CACM 9(3):157–65, March 1966.
  - Art Evans. PAL — a language designed for teaching programming linguistics. Proceedings ACM National Conference 1968.
  - J. C. Reynolds. GEDANKEN: a simple typeless language which permits functional data structures and co-routines. Argonne National Laboratory September 1969.
  - Mirjana Ivanović, Zoran Budimac. A definition of an ISWIM-like language via Scheme. ACM SIGPLAN Notices, Volume 28, No. 4 April 1993.

## 参见

  - [ALGOL 60](../Page/ALGOL.md "wikilink")
  - [SASL](https://zh.wikipedia.org/wiki/SASL "wikilink")
  - [ML](../Page/ML语言.md "wikilink")

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")