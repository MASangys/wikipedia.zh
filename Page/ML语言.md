> 本文内容由[ML语言](https://zh.wikipedia.org/wiki/ML语言)转换而来。


**ML**是一个通用的[函數式編程语言](https://zh.wikipedia.org/wiki/函數式編程 "wikilink")，它是由[爱丁堡大学的](https://zh.wikipedia.org/wiki/爱丁堡大学 "wikilink")[Robin Milner及他人在二十世纪七十年代晚期开发的](https://zh.wikipedia.org/wiki/Robin_Milner "wikilink")。它的语法是从[ISWIM](../Page/ISWIM.md "wikilink")得到的灵感。作为*元语言*的ML是为了帮助在[LCF定理证明机中寻找证明策略而构想出来的](https://zh.wikipedia.org/wiki/LCF定理证明机 "wikilink")。（之前的元语言是*pplambda*，它联合了[一阶逻辑](../Page/一阶逻辑.md "wikilink")演算和有类型的[多态的](https://zh.wikipedia.org/wiki/多态 "wikilink")[λ演算](https://zh.wikipedia.org/wiki/λ演算 "wikilink")）。它使用了[Hindley-Milner类型推论算法来推测大多数值的类型](https://zh.wikipedia.org/wiki/Hindley-Milner类型推论 "wikilink")，而不需要四处使用注解。

ML一般被归为非纯函数式编程语言，因为它允许副作用和[指令式编程](https://zh.wikipedia.org/wiki/指令式编程 "wikilink")。这一点和纯函数式编程语言——例如[Haskell](../Page/Haskell.md "wikilink")——很不一样。

ML特性包括：傳值呼叫（Call by value）的[求值策略](../Page/求值策略.md "wikilink")，一级函数，带有[垃圾收集的自动](../Page/垃圾回收_\(計算機科學\).md "wikilink")[内存管理](https://zh.wikipedia.org/wiki/内存管理 "wikilink")，参数[多态](https://zh.wikipedia.org/wiki/多态 "wikilink")，静态[数据类型](https://zh.wikipedia.org/wiki/数据类型 "wikilink")，[类型推论](../Page/类型推论.md "wikilink")，代数数据类型，[模式匹配和](https://zh.wikipedia.org/wiki/模式匹配 "wikilink")[异常处理](../Page/异常处理.md "wikilink")。

不像Haskell，ML使用[及早求值](https://zh.wikipedia.org/wiki/及早求值 "wikilink")，也就是说所有的子表达式总是被求值。导致的一个结果是你不能使用无穷表。然而，惰性求值产生的无穷表可以通过使用匿名函数来模拟。

今天在ML家族中有好几种语言：两种主要的方言是[Standard ML和](https://zh.wikipedia.org/wiki/Standard_ML "wikilink")[Caml](https://zh.wikipedia.org/wiki/Caml "wikilink")，其他的包括[F\#](https://zh.wikipedia.org/wiki/F_Sharp "wikilink")－针对Microsoft .NET平台的开放研究项目。ML中的思想影响了众多的语言，例如[Haskell](../Page/Haskell.md "wikilink")，[Cyclone和](https://zh.wikipedia.org/wiki/Cyclone "wikilink")[Nemerle](../Page/Nemerle.md "wikilink")。

ML的实力大多被用于语言设计和操作（编译器、分析器、定理证明机），但是它作为通用语言也被用于生化，金融系统，和宗谱数据库，一个P2P的客户／服务器程序等等。

## ML例子

### 剖析一个ML函数

函数式编程语言的"[Hello World](../Page/Hello_World.md "wikilink")" 程序是阶乘函数。用纯ML表达就是：

``` ocaml
fun fac (0 : int) : int = 1
  | fac (n : int) : int = n * fac (n - 1)
```

阶乘在这里被描述成一个递归函数，它有一个终止条件。可以看出它和数学课本中对于阶乘的描述很相似。很多ML代码的语法类似数学。

关于参数类型（int）和返回值类型（int）的声明是可选的。上述声明强制保证了函数 fac 是一个 *由整数至整数的函数* (fn: int -\> int)。也就是说，函数以一个整数作为参数，返回另一个整数。去掉非必要的类型声明后，这个函数如下：

``` ocaml
fun fac 0 = 1
   | fac n = n * fac(n-1);
```

这个函数也依赖[模式匹配](https://zh.wikipedia.org/wiki/模式匹配 "wikilink")，ML编程的重要部分。 注意一个函数的参数不是在圆括号中而是由空格分开。当函数的参数值为0时返回整数1。其他情况下将会尝试第二行。这一个递归，将会再一次调用函数直到满足基准条件。

## 参见

  - [OCaml](../Page/OCaml.md "wikilink")， ML的一种方言，支持面向对象编程
  - [Standard ML of New Jersey](https://zh.wikipedia.org/wiki/Standard_ML_of_New_Jersey "wikilink")，Standard ML的一种实现

## 外部链接

  - [Moscow ML，一个流行的Standard ML实现](https://archive.is/20121130085708/http://www.dina.kvl.dk/~sestoft/mosml.html)
  - [Standard ML of New Jersey，另一个流行的实现](http://smlnj.sf.net/)
  - [F\#，一个使用Microsoft .NET framework的ML实现](http://research.microsoft.com/en-us/projects/fsharp/)
  - [MLton，全程序优化的Standard ML编译器](http://mlton.org/)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink") [Category:ML語言家族](https://zh.wikipedia.org/wiki/Category:ML語言家族 "wikilink")