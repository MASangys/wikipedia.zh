[Apache的](../Page/Apache软件基金会.md "wikilink")**Groovy**是[Java平台上设计的](https://zh.wikipedia.org/wiki/Java平台 "wikilink")[面向对象编程语言](https://zh.wikipedia.org/wiki/面向对象编程 "wikilink")。这门动态语言拥有类似[Python](../Page/Python.md "wikilink")、[Ruby和](../Page/Ruby.md "wikilink")[Smalltalk中的一些特性](../Page/Smalltalk.md "wikilink")，可以作为Java平台的[脚本语言使用](../Page/脚本语言.md "wikilink")，Groovy代码动态地编译成运行于Java虚拟机（JVM）上的Java字节码，并与其他Java代码和库进行互操作。由于其运行在JVM上的特性，Groovy可以使用其他Java语言编写的库。Groovy的语法与Java非常相似，大多数Java代码也符合Groovy的语法规则，尽管可能语义不同。
Groovy 1.0于2007年1月2日发布，并于2012年7月发布了Groovy
2.0。从版本2开始，Groovy也可以静态编译，提供[类型推论和Java相近的性能](../Page/类型推论.md "wikilink")。Groovy
2.4是Pivotal软件赞助的最后一个主要版本，截止于2015年3月。Groovy已经将其治理结构更改为Apache软件基金会的项目管理委员会（PMC）\[1\]。

## 特性

大部分有效的Java文件也是有效的Groovy文件。Groovy代码可以比Java代码更加紧凑，因为它不需要Java需要的所有元素。这两种语言的相似性，让Java程序员可以先从熟悉的Java语法开始逐步学习Groovy。
Groovy特性包括了Java中不支持的静态和动态类型（使用关键字
def），运算符重载，提供了lists（列表）和关联数组(maps)提供了原生语法，原生支持正则表达式，多态迭代，字符串内嵌表达式，添加帮助方法以及Null条件运算符，自动空指针检查（列：`variable?.method()`,或
`variable?.field`）。

从Groovy
2开始，支持模块化（能只根据项目需要添加所需的jar包，从而减少Groovy库的大小），使用JDK7的类型检查，静态编译，Project
Coin语法增强，多块模块和持续的性能增强 调用动态指令。

Groovy通过内联文档对象模型（DOM）语法对各种标记语言（如XML和HTML）的提供原生支持。该功能实现了使用统一简洁的语法和编程方法来定义和操纵许多类型的异构数据资源。

与Java不同的是，Groovy源代码文件可以作为（未编译的）脚本执行，如果它含有任何类定义之外的代码，或者它是具有main方法的类，或者它是Runnable或GroovyTestCase。
Groovy脚本在执行之前完成解析，编译和生成（类似于Perl和Ruby）。这发生在下一个层次，编译后的版本不会保存为进程的组件

## 程式範例

下面是来自于
<https://web.archive.org/web/20140302111159/http://groovy.codehaus.org/>
的一个示例程序：

``` Groovy
class Foo {
  doSomething() {
    data = ["name": "James", "location": "London"]
    for (e in data) {
      println("entry ${e.key} is ${e.value}")
    }
  }

  closureExample(collection) {
    collection.each { println("value ${it}") }
  }

  static void main(args) {
    values = [1, 2, 3, "abc"]
    foo = new Foo()
    foo.closureExample(values)
    foo.doSomething()
  }
}
```

## IDE支持

已经有许多的[集成开发环境支持了该门语言](../Page/集成开发环境.md "wikilink")：

  - [Eclipse](../Page/Eclipse.md "wikilink")，插件[Groovy-Eclipse](https://web.archive.org/web/20100722003921/http://groovy.codehaus.org/Eclipse+Plugin)
  - [IntelliJ IDEA](../Page/IntelliJ_IDEA.md "wikilink")，默认就支持Groovy开发。
  - [NetBeans](../Page/NetBeans.md "wikilink") 默认支持

## 参考信息

<references />

## 外部連結

  - [Groovy
    官方網站](https://web.archive.org/web/20140302111159/http://groovy.codehaus.org/)
  - [Groovy++](http://code.google.com/p/groovypptest/)

{{-}}

[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink")
[Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink")
[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:Java规范请求](https://zh.wikipedia.org/wiki/Category:Java规范请求 "wikilink")
[Category:JVM程式語言](https://zh.wikipedia.org/wiki/Category:JVM程式語言 "wikilink")

1.  ["Groovy joins Apache Incubator".11
    Mar 2015.](https://blogs.apache.org/foundation/entry/groovy_submitted_to_become_a)