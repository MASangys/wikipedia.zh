**Jess**是Java平台上的，它是的超集，由[桑迪亚国家实验室的](https://zh.wikipedia.org/wiki/桑迪亚国家实验室 "wikilink")开发。它的第一个版本写于1995年晚期。

Jess提供适合自动化[专家系统的](../Page/专家系统.md "wikilink")[逻辑编程](https://zh.wikipedia.org/wiki/逻辑编程 "wikilink")，它常被称作“专家系统外壳”。近年来，[智能代理系统也在相似的能力上发展起来](https://zh.wikipedia.org/wiki/智能代理 "wikilink")。

与一个程序中有一个只运行一次的循环的[指令式編程语言不同](../Page/指令式編程.md "wikilink")，Jess使用的[宣告式编程通过一个名为](https://zh.wikipedia.org/wiki/宣告式编程 "wikilink")“模式匹配”的过程连续的对一个事实的集合运用一系列规则。规则可以修改事实集合，或者运行任何Java代码。

Jess可以被用来构建使用规则定义形式的知识来推倒结论和推论的[Java
Servlet](../Page/Java_Servlet.md "wikilink")、[EJB](../Page/EJB.md "wikilink")、[Applet和应用程序](https://zh.wikipedia.org/wiki/Applet "wikilink")。因为不同的规则匹配不同的输入，所以有了一些有效的通用匹配算法。Jess规则引擎使用。

## 许可证

Jess不是开源软件，而CLIPS是。

## 代码实例

代码实例：

``` lisp
(deftemplate male   "" (declare (ordered TRUE)))
(deftemplate female "" (declare (ordered TRUE)))
(deftemplate parent "" (declare (ordered TRUE)))
(deftemplate father "" (declare (ordered TRUE)))
(deftemplate mother "" (declare (ordered TRUE)))

(deffacts initialFacts
  (male bill)
  (female jane)
  (female sally)
  (parent bill sally)
  (parent jane sally)
  )

(defrule father
  (parent ?x ?y)
  (male ?x)
  =>
  (printout t crlf ?x " is the father of " ?y crlf)
  )

(defrule mother
  (parent ?x ?y)
  (female ?x)
  =>
  (printout t crlf ?x " is the mother of " ?y crlf)
  )

(reset)
(facts)
(run)

(printout t crlf)
```

## 书籍

  - [Jess in Action: Java Rule-based
    Systems](http://www.manning.com/friedman-hill/) Ernest
    Friedman-Hill著 ISBN 1930110898

## 参见

  - [JSR-94](https://zh.wikipedia.org/wiki/JSR-94 "wikilink")

## 外部链接

  - [官方网站](http://www.jessrules.com/)

  - [用于Emacs的Jess-Mode](http://jess-mode.sourceforge.net/)

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:专家系统](https://zh.wikipedia.org/wiki/Category:专家系统 "wikilink")
[Category:规则引擎](https://zh.wikipedia.org/wiki/Category:规则引擎 "wikilink")