> 本文内容由[系统F](https://zh.wikipedia.org/wiki/系统F)转换而来。


**系统F**，也叫做**多态lambda演算**或**二阶lambda演算**，是[有类型lambda演算](https://zh.wikipedia.org/wiki/有类型lambda演算 "wikilink")。它由[逻辑学家](../Page/逻辑学家.md "wikilink")[Jean-Yves Girard和](https://zh.wikipedia.org/wiki/Jean-Yves_Girard "wikilink")[计算机科学家](https://zh.wikipedia.org/wiki/计算机科学家 "wikilink")[John C. Reynolds独立发现的](https://zh.wikipedia.org/wiki/John_C._Reynolds "wikilink")。系统F形式化了[编程语言](../Page/编程语言.md "wikilink")中的参数[多态的概念](https://zh.wikipedia.org/wiki/多态_\(计算机科学\) "wikilink")。

正如同[lambda演算有取值于](https://zh.wikipedia.org/wiki/lambda演算 "wikilink")（rang over）函数的变量，和来自它们的粘合子（binder）；二阶lambda演算取值自**类型**，和来自它们的粘合子。

作为一个例子，恒等函数有形如A→ A的任何类型的事实可以在系统F中被形式化为判断

\[\vdash \Lambda\alpha. \lambda x^\alpha.x: \forall\alpha.\alpha \to \alpha\]

这里的α是[类型变量](https://zh.wikipedia.org/wiki/类型变量 "wikilink")。

在[Curry-Howard同构下](https://zh.wikipedia.org/wiki/Curry-Howard同构 "wikilink")，系统F对应于[二阶逻辑](https://zh.wikipedia.org/wiki/二阶逻辑 "wikilink")。

系统F，和甚至更加有表达力的lambda演算一起，可被看作[Lambda立方体](../Page/Lambda立方体.md "wikilink")的一部分。

## 逻辑和谓词

布尔类型被定义为： \(\forall\alpha.\alpha \to \alpha \to \alpha\)，这里的α是[类型变量](https://zh.wikipedia.org/wiki/类型变量 "wikilink")。这产生了下列对布尔值`TRUE`和`FALSE`的两个定义：

  -
    TRUE := \(\Lambda \alpha.\lambda x^\alpha \lambda y^\alpha.x\)
    FALSE := \(\Lambda \alpha.\lambda x^\alpha \lambda y^\alpha.y\)

接着，通过这两个λ-项，我们可以定义一些逻辑算子：

  -
    AND := \(\lambda x^{Boolean} \lambda y^{Boolean}.((x (Boolean)) y) FALSE\)
    OR := \(\lambda x^{Boolean} \lambda y^{Boolean}.((x (Boolean)) TRUE) y\)
    NOT := \(\lambda x^{Boolean}. ((x (Boolean)) FALSE) TRUE\)

实际上不需要*IFTHENELSE*函数，因为你可以只使用原始布尔类型的项作为判定（decision）函数。但是如果需要一个的话：

  -
    IFTHENELSE := \(\Lambda \alpha.\lambda x^{Boolean}\lambda y^{\alpha}\lambda z^{\alpha}.((x (\alpha)) y) z\)

*谓词*是返回布尔值的函数。最基本的谓词是`ISZERO`，它返回`TRUE`当且仅当它的参数是[邱奇数](../Page/邱奇数.md "wikilink") `0`:

  -
    ` ISZERO := λ  `*`n`*` .  `*`n`*`  (λ  `*`x`*`. FALSE) TRUE`

## 系统F结构

系统F允许以同[Martin-Löf类型论有关的自然的方式嵌入递归构造](https://zh.wikipedia.org/wiki/Martin-Löf类型论 "wikilink")。抽象结构（S）是使用*构造子*建立的。有函数被定类型为：

\[K_1\rightarrow K_2\rightarrow\dots\rightarrow S\]

当\(S\)自身出现类型\(K_i\)中的一个内的时候递归就出现了。如果你有\(m\)个这种构造子，你可以定义\(S\)为：

\[\forall \alpha.(K_1^1[\alpha/S]\rightarrow\dots\rightarrow \alpha)\dots\rightarrow(K_1^m[\alpha/S]\rightarrow\dots\rightarrow \alpha)\rightarrow \alpha\]

例如，自然数可以被定义为使用构造子的归纳数据类型\(N\)

\[\mathit{zero} : \mathrm{N}\]

\[\mathit{succ} : \mathrm{N} \to \mathrm{N}\] 对应于这个结构的系统F类型是 \(\forall \alpha. \alpha \to (\alpha \to \alpha) \to \alpha\)。这个类型的项由有类型版本的[邱奇数](../Page/邱奇数.md "wikilink")构成，前几个是：

  -
    `0 :=`\(\Lambda \alpha . \lambda x^\alpha . \lambda f^{\alpha\to\alpha} . x\)
    `1 :=`\(\Lambda \alpha . \lambda x^\alpha . \lambda f^{\alpha\to\alpha} . f x\)
    `2 :=`\(\Lambda \alpha . \lambda x^\alpha . \lambda f^{\alpha\to\alpha} . f (f x)\)
    `3 :=`\(\Lambda \alpha . \lambda x^\alpha . \lambda f^{\alpha\to\alpha} . f (f (f x))\)

如果我们反转curried参数的次序（比如\(\forall \alpha.(\alpha \to \alpha)\to \alpha \to \alpha\)），则\(n\)的邱奇数是接受函数*`f`*作为参数并返回*`f`*的*`n`*次幂的函数。就是说，邱奇数是一个[高阶函数](https://zh.wikipedia.org/wiki/高阶函数 "wikilink") -- 它接受一个单一参数函数*`f`*，并返回另一个单一参数函数。

## 用在编程语言中

本文用的系统F版本是显式类型的，或邱奇风格的演算。包含在λ-项内的类型信息使[类型检查直接了当](https://zh.wikipedia.org/wiki/类型检查 "wikilink")。[Joe Wells](https://zh.wikipedia.org/wiki/Joe_Wells "wikilink")（1994）设立了一个"难为人的公开问题"，证明系统 F的Curry-风格的变体是[不可判定的](https://zh.wikipedia.org/wiki/决定性问题 "wikilink")，它缺乏明显的类型提示。[1](https://web.archive.org/web/20041209225820/http://www.cee.hw.ac.uk/~jbw/research-summary.html) [2](https://web.archive.org/web/20070216230916/http://www.church-project.org/reports/Wells:APAL-1999-v98-no-note.html)

Wells的结果暗含着系统F的[类型推论](../Page/类型推论.md "wikilink")是不可能的。一个限制版本的系统F叫做"[Hindley-Milner](https://zh.wikipedia.org/wiki/Hindley-Milner "wikilink")"，或简称"HM"，有一个容易的类型推论算法，并用于了很多[强类型的](https://zh.wikipedia.org/wiki/强类型 "wikilink")[函数式编程语言](https://zh.wikipedia.org/wiki/函数式编程语言 "wikilink")，比如[Haskell](../Page/Haskell.md "wikilink")和[ML](https://zh.wikipedia.org/wiki/ML "wikilink")。

## 参考文献

  - Girard, Lafont and Taylor, 1997. [*Proofs and Types*](http://www.cs.man.ac.uk/~pt/stable/prot.pdf). Cambridge University Press.
  - J. B. Wells. "Typability and type checking in the second-order lambda-calculus are equivalent and undecidable." In *Proceedings of the 9th Annual [IEEE](https://zh.wikipedia.org/wiki/IEEE "wikilink") Symposium on Logic in Computer Science (LICS),* pages 176-185, 1994. [3](http://www.macs.hw.ac.uk/~jbw/papers/Wells:Typability-and-Type-Checking-in-the-Second-Order-Lambda-Calculus-Are-Equivalent-and-Undecidable:LICS-1994.ps.gz)

## 外部链接

  - [Summary of System F](http://www.site.uottawa.ca/~fbinard/Intuitionism/TypeTheory/SystemF/) by Franck Binard.

[Category:Lambda演算](https://zh.wikipedia.org/wiki/Category:Lambda演算 "wikilink") [Category:类型论](https://zh.wikipedia.org/wiki/Category:类型论 "wikilink")