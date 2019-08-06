**Idris** 是一个通用的[依赖类型](../Page/依赖类型.md "wikilink")纯[函数式编程语言](https://zh.wikipedia.org/wiki/函数式编程语言 "wikilink")，其[类型系统与](https://zh.wikipedia.org/wiki/类型系统 "wikilink") [Agda](../Page/Agda.md "wikilink") 以及 [Epigram](https://zh.wikipedia.org/wiki/Epigram "wikilink") 相似。

Idris 语言具备堪与 [Coq](../Page/Coq.md "wikilink") 媲美的交互式定理证明能力，自带 tactics，而其设计目标侧重于通用系统编程更甚于辅助证明。Idris 的其他设计目标还包括“可观的”代码性能，对[副作用的控制](../Page/函数副作用.md "wikilink")，以及对于实现嵌入式[领域特定语言](https://zh.wikipedia.org/wiki/领域特定语言 "wikilink")（Embedded Domain Specific Language，EDSL）的支持。

Idris 通过一个依赖类型的核心语言 TT 生成[C语言的中间代码并编译到本地机器码](https://zh.wikipedia.org/wiki/C语言 "wikilink")，并利用了一个基于的[垃圾收集器实现](../Page/垃圾回收_\(計算機科學\).md "wikilink")。Idris亦拥有 [JavaScript](../Page/JavaScript.md "wikilink")、[Java](../Page/Java.md "wikilink") 和 [LLVM](../Page/LLVM.md "wikilink") 的编译器后端。\[1\]

*Idris* 的名字来自于20世纪70年代的英国儿童动画片《》里，一条会唱歌的[龙](../Page/龙_\(西方\).md "wikilink")。\[2\]

## 语言特性

### 依赖类型

Idris 支持对[依赖类型](../Page/依赖类型.md "wikilink")（\(\lambda \Pi\)）的定义。如下定义了\(\mbox{Vec}(a,n)\)，即元素类型 \(a\) 的 \(n\)-元组类型：

``` haskell
data Nat = O | S Nat
infixr 5 ::

data Vect : Type -> Nat -> Type where
    VNil : Vect a O
  | (::) : a -> Vect a k -> Vect a (S k)
```

### 嵌入式领域特定语言（EDSL）

Idris 对嵌入式领域特定语言的支持主要包括以下方面\[3\]：

1.  [编译期间求值](https://zh.wikipedia.org/wiki/编译期间 "wikilink")。
2.  可[重载的语法](https://zh.wikipedia.org/wiki/重载 "wikilink")。
3.  与C语言库的接口，以及高效的。

### 类型提供器（Type Provider）

Idris 拥有与 [F\#](../Page/F♯.md "wikilink") 相似的类型提供器，它允许编译器在编译期间根据所执行代码的需求而生成新的类型信息。这使得静态类型系统更具可扩展性。\[4\]

## 示例

### 语法

Idris 的语法与 [Haskell](../Page/Haskell.md "wikilink") 有许多相似之处。一个最简单的 [Hello World](../Page/Hello_World.md "wikilink") 程序如下：

``` haskell
module Main

main : IO ()
main = putStrLn "Hello, World!"
```

该程序与 Haskell 的等效写法仅有两点不同：类型签名使用单个冒号“:”而不是双冒号“::”；开头的模块声明中不必使用 where 从句。

Idris 亦支持 where 从句、let 表达式、with 规则、简单的 case 表达式和模式匹配等。

### 依赖类型

一个在 Idris 中使用依赖类型的示例：

``` haskell
total
append : Vect n a -> Vect m a -> Vect (n + m) a
append Nil       ys = ys
append (x :: xs) ys = x :: append xs ys
```

该函数将一个包含 m 个类型 a 的元素的 vector 连接到一个包含 n 个类型 a 的元素的 vector 之后。由于输入 vector 的确切类型依赖于它的值，故在编译（类型检查）时即可保证输出的 vector 必将包含 (n + m) 个类型 a 的元素。

关键字“total”将会执行函数的完整性（totality）检查。若函数定义未涵盖所有可能的情形（partial function），则检查器会报错。

另一个使用依赖类型的示例：

``` haskell
total
pairAdd : Num a => Vect n a -> Vect n a -> Vect n a
pairAdd Nil       Nil       = Nil
pairAdd (x :: xs) (y :: ys) = x + y :: pairAdd xs ys
```

Num a 标志着类型 a 属于  Num。注意在这里，该函数被认为是完整的（total），尽管并未定义一个参数是 Nil 而另一个参数非 Nil 的模式。原因在于两个作为参数的 vector 只能具备相同的长度，这一点通过依赖类型系统得到了保证，因此在编译时两者长度不同的情形绝无可能发生。这使得该函数定义仍然是完整的。

### 求值策略

Idris 默认采取[及早求值](https://zh.wikipedia.org/wiki/及早求值 "wikilink")（Eager evaluation），而非 Haskell 的[惰性求值](../Page/惰性求值.md "wikilink")（Lazy evaluation）方式。Idris 支持使用 Lazy 关键字显式地指定惰性求值：

``` haskell
data Lazy : Type -> Type where
  Delay : (val : a) -> Lazy a

Force : Lazy a -> a

boolCase : Bool -> Lazy a -> Lazy a -> a;
boolCase True t e = t;
boolCase False t e = e;
```

## 参考文献

## 外部链接

  - [The Idris homepage](http://idris-lang.org/), including documentation, frequently asked questions and examples
  - [Idris at the Hackage repository](http://hackage.haskell.org/package/idris)
  - [Idris Tutorial](https://web.archive.org/web/20120315161110/http://www.cs.st-andrews.ac.uk/~eb/writings/idris-tutorial.pdf)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink") [Category:函数式编程语言](https://zh.wikipedia.org/wiki/Category:函数式编程语言 "wikilink")

1.
2.
3.
4.