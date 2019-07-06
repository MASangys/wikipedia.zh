[CoqProofOfDecidablityOfEqualityOnNaturalNumbers.png](https://zh.wikipedia.org/wiki/File:CoqProofOfDecidablityOfEqualityOnNaturalNumbers.png "fig:CoqProofOfDecidablityOfEqualityOnNaturalNumbers.png")

**Coq**
是一个交互式的定理证明辅助工具。它允许用户输入包含数学断言的表达式、机械化地对这些断言执行检查、帮助构造形式化的证明、并从其形式化描述的[构造性证明中提取出可验证的](../Page/构造性证明.md "wikilink")（certified）程序。Coq
的理论基础是[归纳构造演算](https://zh.wikipedia.org/wiki/归纳构造演算 "wikilink")（calculus
of inductive
constructions）、一种[构造演算](../Page/构造演算.md "wikilink")（calculus
of constructions）的衍生理论。Coq
并非一个自动化[定理机器证明语言](https://zh.wikipedia.org/wiki/定理机器证明 "wikilink")；然而，它提供了自动化定理证明的策略（tactics）和不同的决策过程。

Coq
同时还是一个[依赖类型的](../Page/依赖类型.md "wikilink")[函数式编程语言](https://zh.wikipedia.org/wiki/函数式编程语言 "wikilink")\[1\]。它由[法国PPS实验室的PI](https://zh.wikipedia.org/wiki/法国 "wikilink").R2团队研究开发\[2\]，该团队由[INRIA](https://zh.wikipedia.org/wiki/INRIA "wikilink")、[巴黎综合理工学院](../Page/巴黎综合理工学院.md "wikilink")、[巴黎第十一大学](../Page/巴黎第十一大学.md "wikilink")、[巴黎第七大学和](../Page/巴黎第七大学.md "wikilink")[法国国家科学研究中心组成](https://zh.wikipedia.org/wiki/法国国家科学研究中心 "wikilink")。此前[里昂高等师范学校亦曾参与开发](../Page/里昂高等师范学校.md "wikilink")。Coq
项目当前由 Gérard Huet、Christine Paulin 和 Hugo Herbelin领导。Coq 使用
[OCaml](../Page/OCaml.md "wikilink") 以及少部分
[C](https://zh.wikipedia.org/wiki/C语言 "wikilink") 实现。

单词 *coq*
在[法语中意为](../Page/法语.md "wikilink")“[公鸡](../Page/鸡.md "wikilink")”，此命名体现了法国在研究活动中使用动物名称命名工具的传统。\[3\]
最初，它被简单地称作 Coc，意即构造演算（calculus of constructions）的缩写，同时也暗含了 Thierry
Coquand（与 Gérard Huet 共同提出了前述的构造演算）的姓氏。

Coq 自身提供了一套规范语言 Gallina\[4\] （gallina
在[西班牙语中意为](../Page/西班牙语.md "wikilink")“母鸡”）。使用
Gallina
书写的程序具有[规范化性质](../Page/规范化性质.md "wikilink")——它们总是会终止。此性质使之避开了[停机问题](../Page/停机问题.md "wikilink")
\[5\]。同时，这也使得 Coq
语言本身并非[图灵完全](https://zh.wikipedia.org/wiki/图灵完全 "wikilink")。

## 应用

  - [四色定理](../Page/四色定理.md "wikilink")：在2004年九月使用 Coq 完成正式的证明。
  - [法伊特-汤普森定理](https://zh.wikipedia.org/wiki/法伊特-汤普森定理 "wikilink")：在2012年九月使用
    Coq 完成正式的证明。

## 引用

## 外部链接

  - <http://coq.inria.fr/> - the official Coq English website
  - <http://www.cis.upenn.edu/~bcpierce/sf/> - Software Foundations

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")
[Category:函数式编程语言](https://zh.wikipedia.org/wiki/Category:函数式编程语言 "wikilink")

1.  [A short introduction to
    Coq](http://coq.inria.fr/a-short-introduction-to-coq).
2.  [PI.R2](http://www.pps.univ-paris-diderot.fr/pi.r2/)
3.  [Coq Version 8.0 for the Clueless (174
    Hints)](http://flint.cs.yale.edu/cs428/coq/doc/faq.html#htoc4).
    Flint.cs.yale.edu. Retrieved on 2013-11-07.
4.  Adam Chlipala. "Certified Programming with Dependent Types":
    ["Library
    Universes"](http://adam.chlipala.net/cpdt/html/Universes.html).
5.  Adam Chlipala. "Certified Programming with Dependent Types":
    ["Library
    GeneralRec"](http://adam.chlipala.net/cpdt/html/GeneralRec.html).
    ["Library
    InductiveTypes"](http://adam.chlipala.net/cpdt/html/InductiveTypes.html).