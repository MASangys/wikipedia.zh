**ACL2**（A Computational Logic for Applicative Common Lisp，应用Common Lisp计算逻辑）是由一个[程序语言](https://zh.wikipedia.org/wiki/程序语言 "wikilink")、一套[一阶逻辑](../Page/一阶逻辑.md "wikilink")的可拓理论、以及一个机械化的[定理证明器所组成的](https://zh.wikipedia.org/wiki/定理机器证明 "wikilink")[软件](../Page/软件.md "wikilink")系统。ACL2从设计上支持基于[归纳逻辑理论的](https://zh.wikipedia.org/wiki/归纳逻辑 "wikilink")[自动推理](https://zh.wikipedia.org/wiki/自动推理 "wikilink")，可应用于软件或[硬件](../Page/硬件.md "wikilink")系统的验证。ACL2的编程语言与实现基于[Common Lisp](../Page/Common_Lisp.md "wikilink")。ACL2是基于[BSD授权发布的](https://zh.wikipedia.org/wiki/BSD授权 "wikilink")[开源软件](../Page/开源软件.md "wikilink")。

ACL2程序语言可看作是一个[函数式](../Page/函数式编程.md "wikilink")（无任何[副作用](../Page/副作用.md "wikilink")）的Common Lisp变体。和Lisp一样，ACL2使用动态类型。ACL2中所有的[函数均是完整的](../Page/子程序.md "wikilink")（）——每一个函数均在ACL2的[全集](../Page/全集.md "wikilink")中将各个对象（输入）映射到另一个对象（输出）。

ACL2的基础理论将其程序语言的语义及其内置函数全部公理化。而程序语言中满足定义原则的用户自定义部分在扩展该理论的同时亦能保持其[逻辑自洽性](https://zh.wikipedia.org/wiki/自洽 "wikilink")。ACL2定理证明器的核心基于[项重写系统](../Page/重写逻辑.md "wikilink")，此核心高度可扩展，用户已证得的定理可以在后续的[猜想](../Page/猜想.md "wikilink")中被用作现成的[数学证明](https://zh.wikipedia.org/wiki/数学证明 "wikilink")。

ACL2设计的目标是成为Boyer–Moore定理证明器[NQTHM的一个](https://zh.wikipedia.org/wiki/NQTHM "wikilink")“工业级别”版本。为了达成此目标，ACL2涵盖了支持许多数学和计算理论之工程学应用的有趣特性。ACL2因为基于Common Lisp实现而继承了其高效率；作为归纳验证基础的同一规范亦可以被编译器[编译及优化](https://zh.wikipedia.org/wiki/编译 "wikilink")，进而在本地执行。

2005年，Boyer-Moore系列证明器（包括 ACL2）的开发者获得了[ACM软件系统奖](https://zh.wikipedia.org/wiki/ACM软件系统奖 "wikilink")，获奖理由是“作为最高效的定理证明器的先驱和工程师……开发了能够用于验证硬件和软件可靠性的形式化工具”。\[1\]

## 证明

ACL2在若干领域得以应用。\[2\]\[3\]例如，在奔腾浮点除错误被曝光之后，斯特罗瑟·摩尔 和马特·考夫曼运用ACL2证明了[AMD K5处理器的浮点数除法运算的正确性](../Page/AMD_K5.md "wikilink")。\[4\] 在ACL2文档的[有趣的应用](http://www.cs.utexas.edu/users/moore/acl2/v6-2/INTERESTING-APPLICATIONS.html)页面里有一些关于其实际应用的简介。

ACL2的工业级用户包括[超微半导体公司](https://zh.wikipedia.org/wiki/超微半导体公司 "wikilink")、[Centaur科技](https://zh.wikipedia.org/wiki/Centaur科技 "wikilink")、[国际商业机器股份有限公司](https://zh.wikipedia.org/wiki/国际商业机器股份有限公司 "wikilink")、[英特尔](../Page/英特尔.md "wikilink")、[甲骨文公司](../Page/甲骨文公司.md "wikilink")和罗克韦尔柯林斯。

## 参考

## 外部链接

  - [ACL2 website](http://www.cs.utexas.edu/users/moore/acl2/)
  - [A Tutorial Introduction to ACL2](https://web.archive.org/web/20120316201709/http://www.cs.utexas.edu/users/moore/acl2/current/ACL2-TUTORIAL.html)
  - [ACL2s - ACL2 Sedan - An Eclipse-based interface developed by Peter Dillinger and Pete Manolios that includes powerful features to provide users with more automation and support for specifying conjectures and proving theorems with ACL2.](http://acl2s.ccs.neu.edu/)

[Category:LISP程式語言家族](https://zh.wikipedia.org/wiki/Category:LISP程式語言家族 "wikilink") [Category:LISP程式語言](https://zh.wikipedia.org/wiki/Category:LISP程式語言 "wikilink") [Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")

1.
2.  [Books and Papers about ACL2 and Its Applications](http://www.cs.utexas.edu/users/moore/publications/acl2-papers.html)
3.  [The ACL2 Workshop Series](http://www.cs.utexas.edu/users/moore/acl2/workshops.html)
4.