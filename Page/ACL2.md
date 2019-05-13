**ACL2**（A Computational Logic for Applicative Common Lisp，应用 Common
Lisp
计算逻辑）是由一个[程序语言](https://zh.wikipedia.org/wiki/程序语言 "wikilink")、一套[一阶逻辑的可拓理论](../Page/一阶逻辑.md "wikilink")、以及一个机械化的[定理证明器所组成的](https://zh.wikipedia.org/wiki/定理机器证明 "wikilink")[软件系统](../Page/软件.md "wikilink")。ACL2从设计上支持基于[归纳逻辑理论的](https://zh.wikipedia.org/wiki/归纳逻辑 "wikilink")[自动推理](https://zh.wikipedia.org/wiki/自动推理 "wikilink")，可应用于软件或[硬件系统的验证](../Page/硬件.md "wikilink")。ACL2的编程语言与实现基于
[Common
Lisp](../Page/Common_Lisp.md "wikilink")。ACL2是基于[BSD授权发布的](https://zh.wikipedia.org/wiki/BSD授权 "wikilink")[开源软件](../Page/开源软件.md "wikilink")。

ACL2程序语言可看作是一个[函数式](../Page/函数式编程.md "wikilink")（无任何[副作用](../Page/副作用.md "wikilink")）的
Common Lisp
变体。和Lisp一样，ACL2使用动态类型。ACL2中所有的[函数均是完整的](../Page/子程序.md "wikilink")（）——意即，每一个函数均在ACL2的[全集中将各个对象](../Page/全集.md "wikilink")（输入）映射到另一个对象（输出）。

ACL2的基础理论将其程序语言的语义及其内置函数全部公理化。而程序语言中满足*定义原则（definitional
principle）*的用户自定义部分在扩展该理论的同时亦能保持其[逻辑自洽性](https://zh.wikipedia.org/wiki/自洽 "wikilink")。

ACL2定理证明器的核心基于[项重写](../Page/重写逻辑.md "wikilink")（term
rewriting）系统，此核心高度可扩展，用户已证得的定理可以在后续的[猜想中被用作现成的](../Page/猜想.md "wikilink")[数学证明](https://zh.wikipedia.org/wiki/数学证明 "wikilink")。

ACL2设计的目标是成为 Boyer–Moore 定理证明器
[NQTHM](https://zh.wikipedia.org/wiki/NQTHM "wikilink")
的一个“工业级别”版本。为了达成此目标，ACL2涵盖了支持许多数学和计算理论之工程学应用的有趣特性。ACL2因为基于
Common Lisp
实现而继承了其高效率；作为归纳验证基础的同一规范亦可以被编译器[编译及优化](https://zh.wikipedia.org/wiki/编译 "wikilink")，进而在本地执行。

2005年，Boyer-Moore 系列证明器（包括
ACL2）的开发者获得了[ACM软件系统奖](https://zh.wikipedia.org/wiki/ACM软件系统奖 "wikilink")，获奖理由是“作为最高效的定理证明器的先驱和工程师……开发了能够用于验证硬件和软件可靠性的形式化工具。”\[1\]\[2\]

## 证明

ACL2在若干领域得以应用。\[3\]\[4\]例如，在 [Pentium FDIV
bug](https://zh.wikipedia.org/wiki/Pentium_FDIV_bug "wikilink") 被曝光之后，J
Strother Moore 和 Matt Kaufmann 运用ACL2证明了[AMD
K5处理器的浮点数除法运算的正确性](../Page/AMD_K5.md "wikilink")。\[5\]
在ACL2文档的[有趣的应用](http://www.cs.utexas.edu/users/moore/acl2/v6-2/INTERESTING-APPLICATIONS.html)页面里有一些关于其实际应用的简介。

ACL2的工业级用户包括了[AMD](https://zh.wikipedia.org/wiki/AMD "wikilink")、[Centaur
Technology](https://zh.wikipedia.org/wiki/Centaur_Technology "wikilink")、[IBM](../Page/IBM.md "wikilink")、[Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")、[Oracle和](https://zh.wikipedia.org/wiki/Oracle "wikilink")[Rockwell
Collins](../Page/罗克韦尔柯林斯.md "wikilink")。

## 参考

## 外部链接

  - [ACL2 website](http://www.cs.utexas.edu/users/moore/acl2/)
  - [A Tutorial Introduction to
    ACL2](https://web.archive.org/web/20120316201709/http://www.cs.utexas.edu/users/moore/acl2/current/ACL2-TUTORIAL.html)
  - [ACL2s - ACL2 Sedan - An Eclipse-based interface developed by Peter
    Dillinger and Pete Manolios that includes powerful features to
    provide users with more automation and support for specifying
    conjectures and proving theorems with
    ACL2.](http://acl2s.ccs.neu.edu/)

[Category:LISP程式語言家族](https://zh.wikipedia.org/wiki/Category:LISP程式語言家族 "wikilink")
[Category:LISP程式語言](https://zh.wikipedia.org/wiki/Category:LISP程式語言 "wikilink")
[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")

1.  [ACM: Press Release,
    March 15, 2006](http://campus.acm.org/public/pressroom/press_releases/3_2006/software.cfm)
2.
3.  [Books and Papers about ACL2 and Its
    Applications](http://www.cs.utexas.edu/users/moore/publications/acl2-papers.html)
4.  [The ACL2 Workshop
    Series](http://www.cs.utexas.edu/users/moore/acl2/workshops.html)
5.