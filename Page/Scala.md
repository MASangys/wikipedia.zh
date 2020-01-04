> 本文内容由[Scala](https://zh.wikipedia.org/wiki/Scala)转换而来。


**Scala**（）是一门[多范式的编程语言](https://zh.wikipedia.org/wiki/多范式 "wikilink")，设计初衷是要整合面向对象编程和[函数式编程](../Page/函数式编程.md "wikilink")的各种特性。\[1\]

## 平台和许可证

Scala运行于[Java平台](https://zh.wikipedia.org/wiki/Java平台 "wikilink")（[Java虚拟机](../Page/Java虚拟机.md "wikilink")），并兼容现有的[Java](../Page/Java.md "wikilink")程序。它也能运行于[CLDC](../Page/CLDC.md "wikilink")配置的[Java ME中](../Page/Java_ME.md "wikilink")。曾经有过另一[.NET平台的实现](https://zh.wikipedia.org/wiki/.NET "wikilink")\[2\]，不过该版本已被放弃。\[3\]

Scala的编译模型（独立编译，动态类加载）与[Java](../Page/Java.md "wikilink")和[C\#一样](https://zh.wikipedia.org/wiki/C＃ "wikilink")，所以Scala代码可以调用Java類別館（对于.NET实现则可调用.NET類別館）。

Scala套件包括编译器和類別館，以[BSD许可证](../Page/BSD许可证.md "wikilink")发布。\[4\]

## 历史

[洛桑联邦理工学院](../Page/洛桑联邦理工学院.md "wikilink")的Martin Odersky于2001年基于的工作开始设计Scala。Funnel是把[函数式编程](../Page/函数式编程.md "wikilink")思想和[佩特里网相结合的一种编程语言](https://zh.wikipedia.org/wiki/佩特里网 "wikilink")。\[5\] Odersky之前工作于和[javac](https://zh.wikipedia.org/wiki/javac "wikilink")。Java平台的Scala于2003年底/2004年初发布。\[6\].NET平台的Scala发布于2004年6月。\[7\]\[8\]\[9\]该语言第二个版本，v2.0，发布于2006年3月。\[10\]

Scala 2.8的特性包括重写的Scala容器庫、命名参数和默认参数、-{zh-hans:包对象; zh-hant:套件物件}-，以及[Continuation](https://zh.wikipedia.org/wiki/Continuation "wikilink").\[11\]

2012年1月，发布版本2.9.1。

2012年4月，发布版本2.9.2。

## 使用Scala的软件

2009年4月，[Twitter](../Page/Twitter.md "wikilink")宣布他们已经把大部分後端程式从[Ruby](../Page/Ruby.md "wikilink")迁移到Scala，其余部分也打算要迁移。\[12\]

此外，已经公开宣称，其整个平台都已经是基于Scala基础设施编写的。\[13\]

[瑞银集团](../Page/瑞银集团.md "wikilink")把Scala用于一般产品中。\[14\]

[Coursera](../Page/Coursera.md "wikilink")把Scala作为服务器语言使用。\[15\]

## 特性

### 支持的编程范式

#### 面向对象特性

Scala是一种纯[面向对象的语言](https://zh.wikipedia.org/wiki/面向对象 "wikilink")，每个值都是[对象](https://zh.wikipedia.org/wiki/对象 "wikilink")。对象的数据类型以及行为由[-{zh-hans:类; zh-hant:類別;}-和](../Page/类_\(计算机科学\).md "wikilink")[特质描述](https://zh.wikipedia.org/wiki/特质_\(程序设计\) "wikilink")。类抽象机制的扩展有两种途径。一种途径是子类[继承](https://zh.wikipedia.org/wiki/继承_\(计算机科学\) "wikilink")，另一种途径是灵活的机制。这两种途径能避免多重继承的种种问题。

#### 函数式编程

Scala也是一种函数式语言，其函数也能当成值来使用。Scala提供了轻量级的语法用以定义匿名函数，支持高阶函数，允许嵌套多层函数，并支持[柯里化](../Page/柯里化.md "wikilink")。Scala的**case class**及其内置的相当于函数式编程语言中常用的。

更进一步，程序员可以利用Scala的模式匹配，编写类似[正则表达式](../Page/正则表达式.md "wikilink")的代码处理XML数据。在这些情形中，功能对编写公式化查询非常有用。

由于JVM不支持[尾端遞迴](https://zh.wikipedia.org/wiki/尾端遞迴 "wikilink")，Scala也不能完全支持尾端遞迴-{zh-hans:优化; zh-hant:最佳化}-。不过，Scala编译器可以把某些简单的[尾递归](https://zh.wikipedia.org/wiki/尾递归 "wikilink")-{zh-hans:优化; zh-hant:最佳化}-成循环。\[16\]

以下代码以函数式风格实现了[快速排序](../Page/快速排序.md "wikilink")算法，可以与[Erlang](../Page/Erlang.md "wikilink")快速排序的例子做个比较：

``` scala
def qsort(list: List[Int]): List[Int] = list match {
  case Nil => Nil
  case pivot :: tail =>
    val(smaller, rest) = tail.partition(_ < pivot)
    qsort(smaller) ::: pivot :: qsort(rest)
}
```

### 静态类型

Scala具备[类型系统](https://zh.wikipedia.org/wiki/类型系统 "wikilink")，通过编译时检查，保证代码的安全性和一致性。类型系统具体支持以下特性：

  - [泛型](../Page/泛型.md "wikilink")類別，

  - [协变和逆变](https://zh.wikipedia.org/wiki/协变和逆变_\(计算机科学\) "wikilink")，

  - ，

  - 类型参数的上下限约束，

  - 把类別和抽象类型作为对象成员，

  - 复合类型，

  - 引用自己时显式指定类型，

  - 视图，

  - [多态方法](https://zh.wikipedia.org/wiki/多型_\(物件導向程式設計\) "wikilink")。

### 扩展性

Scala的设计秉承一项事实，即在实践中，某个领域特定的应用程序开发往往需要特定于该领域的语言扩展。Scala提供了许多独特的语言机制，可以以库的形式轻易无缝添加新的语言结构：

  - 任何方法可用作前缀或后缀操作符，
  - 可以根据预期类型自动构造[闭包](../Page/闭包_\(计算机科学\).md "wikilink")。

联合使用以上两个特性，使你可以定义新的语句而无须扩展语法也无须使用宏之类的元编程特性。

### 并发性

Scala使用[Actor作为其并发模型](https://zh.wikipedia.org/wiki/Actor "wikilink")，Actor是类似线程的实体，通过邮箱发收消息。Actor可以复用线程，因此可以在程序中可以使用数百万个Actor,而线程只能创建数千个。在2.10之后的版本中，使用Akka作为其默认Actor实现。\[17\] 以下代码是使用Actor模式的EchoServer实现

``` scala
val echoServer = actor(new Act {
  become {
    case msg => println("echo " + msg)
  }
})
echoServer ! "hi"
```

Actor模式可以简化并发编程，好利用多核CPU的能力。

## 使用Scala的框架

[Lift是开源的Web应用框架](https://zh.wikipedia.org/wiki/Lift_\(Web应用框架\) "wikilink")，旨在提供类似[Ruby on Rails的东西](../Page/Ruby_on_Rails.md "wikilink")。因为Lift使用了Scala，所以Lift应用程序可以使用目前所有的Java库和Web容器。

## [Hello World范例](../Page/Hello_World.md "wikilink")

以下是用Scala编写的典型Hello World程式：

``` scala
 object HelloWorld extends App {
   println("Hello, world!")
 }
```

或

``` scala
 object HelloWorld {
   def main(args: Array[String]) {
     println("Hello, world!")
   }
 }
```

请注意它与[Java](../Page/Java.md "wikilink")的Hello World应用程序有哪些相似之处。一处显著区别在于，Scala版的Hello World程序不通过**static**关键字把**main**[方法标记为静态方法](../Page/方法_\(電腦科學\).md "wikilink")，而是用**object**关键字创建了[单件](https://zh.wikipedia.org/wiki/单件 "wikilink")。

假设该程序保存为HelloWorld.scala文件，接下来可以通过以下命令行进行编译：

`> scalac HelloWorld.scala`

若要运行：

`> scala -classpath . HelloWorld`

这与编译和运行[Java](../Page/Java.md "wikilink")的“Hello World”程序是不是很像呢？事实上，Scala的编译和执行模型与[Java](../Page/Java.md "wikilink")是等效的，因而它也兼容于[Java](../Page/Java.md "wikilink")的构建工具，比如[Ant](../Page/Apache_Ant.md "wikilink").

直接使用Scala[解释器也可以运行该程序](https://zh.wikipedia.org/wiki/解释器 "wikilink")，使用选项**-i**（从文件加载代码）和选项**-e**（若要运行额外的代码，就得实际执行HelloWorld对象的方法）即可：

`> scala -i HelloWorld.scala -e 'HelloWorld.main(null)'`

## 测试

以下是测试Scala代码的一些方式：

  - [ScalaTest](http://www.artima.com/scalatest/)
  - [ScalaCheck](http://www.scalacheck.org/)，类似于Haskell的[QuickCheck](http://quviq.com/)的库
  - [specs](http://code.google.com/p/specs/)，用于Scala的行为驱动的开发工具库
  - [JUnit](../Page/JUnit.md "wikilink")

内置的Scala库**SUnit**已经不赞成使用，已在2.8.0版中移除。

## 参考文献

## 图书

  - [Programming in Scala](http://www.artima.com/shop/programming_in_scala)(ISBN 978-0-9815316-0-1) - A comprehensive step-by-step guide by , Lex Spoon, and Bill Venners.
  - [Beginning Scala](https://web.archive.org/web/20090714112635/http://www.apress.com/book/view/9781430219897)(ISBN 978-1-4302-1989-7) - A down–to–earth approach to teaching Scala by David Pollak.
  - [Programming Scala](http://www.pragprog.com/titles/vsscala/programming-scala)(ISBN 978-1-934356-31-9) - Creating highly scalable, highly concurrent applications on the Java platform by Venkat Subramaniam.
  - [Programming Scala (ebook)](http://programming-scala.labs.oreilly.com/index.html)

## 外部链接

  - [Scala website](http://www.scala-lang.org/)
  - [Scalachina](http://www.scalachina.com/)
  - [Scala Tour](https://web.archive.org/web/20130808005731/http://www.scala-tour.com/),开源Scala指南

{{-}}

[Category:函数式编程语言](https://zh.wikipedia.org/wiki/Category:函数式编程语言 "wikilink") [Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink") [Category:静态类型的编程语言](https://zh.wikipedia.org/wiki/Category:静态类型的编程语言 "wikilink") [Category:JVM编程语言](https://zh.wikipedia.org/wiki/Category:JVM编程语言 "wikilink") [Category:Scala平台軟體](https://zh.wikipedia.org/wiki/Category:Scala平台軟體 "wikilink") [Category:.NET编程语言](https://zh.wikipedia.org/wiki/Category:.NET编程语言 "wikilink") [Category:JVM程式語言](https://zh.wikipedia.org/wiki/Category:JVM程式語言 "wikilink")

1.
2.
3.  <https://github.com/scala/scala/pull/1718>
4.  <http://www.scala-lang.org/node/146>
5.  Martin Odersky, ["A Brief History of Scala"](http://www.artima.com/weblogs/viewpost.jsp?thread=163733), Artima.com weblogs, June 9, 2006
6.
7.
8.
9.  Martin Odersky, "The Scala Language Specification Version 2.7"
10.
11. [Scala 2.8 Preview](http://www.scala-lang.org/node/1564)
12.
13.
14. <http://drdobbs.com/article/print?articleId=231001802&siteSectionName=>
15. <https://tech.coursera.org/blog/2014/02/18/why-we-love-scala-at-coursera/>
16. [Tail calls, @tailrec and trampolines](http://blog.richdougherty.com/2009/04/tail-calls-tailrec-and-trampolines.html)
17. <http://zh.scala-tour.com/#/using-actor>