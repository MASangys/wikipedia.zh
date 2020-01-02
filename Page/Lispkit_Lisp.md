> 本文内容由[Lispkit Lisp](https://zh.wikipedia.org/wiki/Lispkit_Lisp)转换而来。


**Lispkit Lisp** 是为测试[函数式编程](../Page/函数式编程.md "wikilink")概念而开发的 [Lisp](../Page/LISP.md "wikilink") 语言的严格函数式子集（“**纯 Lisp**”）。它首先使用了对[惰性求值](../Page/惰性求值.md "wikilink")的早期经验。开发者 [Peter Henderson](https://zh.wikipedia.org/wiki/Peter_Henderson "wikilink") 于1980年出版了用一种变体 [ALGOL](../Page/ALGOL.md "wikilink") 语言写的基于 [SECD抽象机](../Page/SECD抽象机.md "wikilink")的实现。编译器和虚拟机都是高度可移植的，并已经在多种机器上实现。

## 基本函数

基本语言只提供了下列函数，扩展在 Henderson 书中关于对[惰性求值](../Page/惰性求值.md "wikilink")和非确定性编程的明确支持中讨论。

  - *atom* -- 接受一个表达式，如果它的值是原子则返回 True；否则返回 False。
  - *add* -- 接受两个表达式，返回它们的数值的和。
  - *car* -- 接受其值为点对的一个表达式，返回这个点对的第一个值。
  - *cdr* -- 接受其值为点对的一个表达式，返回这个点对的第二个值。
  - *cons* -- 接受两个表达式，返回由它们的值构成的一个点对值。
  - *div* -- 接受两个表达式，返回它们的数值的商。
  - *eq* -- 接受两个表达式，如果它们的值相等则返回 True；否则返回 False。
  - *if* -- 接受三个表达式，如果第一个为 True 则返回第二个的值，否则返回第三个的值。
  - *lambda* -- 接受一个表达式，返回这个表达式为可求值的值。
  - *let* -- 接受命名表达式的一个列表，返回这个列表为一个单一可求值的值。
  - *letrec* -- 接受命名表达式的一个列表，返回这个列表为一个单一可求值的值。
  - *leq* -- 接受两个表达式，如果第一个数值小于或等于第二个则返回 True；否则返回 False。
  - *rem* -- 接受两个表达式，返回它们的数值的余数。
  - *mul* -- 接受两个表达式，返回它们的数值的积。
  - *quote* -- 接受两个表达式，返回这个表达式为一个值。
  - *sub* -- 接受两个表达式，返回它们的数值的差。

函数 *lambda*、*let* 和 *letrec* 是类似的，但是在处理命名变量的方式上有着微妙的区别，故有不同的用处。*lambda* 定义并返回一个函数，*let* 把表达式赋值给变量名，而 *letrec* 本质上类似于 *let* ，除了它允许递归函数的定义之外。

## 进一步阅读

  - Peter Henderson, "Functional Programming: Application and Implementation", 1980, Prentice Hall (ISBN 0-13-331579-7)
  - Peter Henderson, Geraint A. Jones, and Simon B. Jones, "The LispKit Manual" (ISBN 0-902928-18-X)

## 外部链接

  - <https://archive.is/20060304194151/http://lispkit.members.beeb.net/> - New GNU Pascal LispKit port.
  - <https://web.archive.org/web/20070926221610/http://www.cs.uml.edu/~giam/DPL/Code/lispkit/LKIT-2/> - Archive of old LispKit LISP code and files.
  - <https://web.archive.org/web/20070810225304/http://perun.im.ns.ac.yu/radovanovic/publications/2002-prim-lisp.pdf> - Paper about a LispKit LISP implementation in Java.

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")