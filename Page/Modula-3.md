在计算机科学领域中，Modula-3是一种作为Modula-2继任者的，Modula-2的升级版被誉为Modula+的编程语言。虽然它已在研究界是有影响力的（影响的语言的设计，如Java，C\#和Python）还没有在工业上被广泛采用。它是由Luca
Cardelli, James Donahue, Lucille Glassman, Mick Jordan (before at the
Olivetti Software Technology Laboratory), Bill Kalsow and Greg
Nelson在上世纪80年代末数字设备公司（DEC）系统研究中心（SRC）和Olivetti研究中心（ORC）设计.

Modula-3的主要特点是简单、安全的同时保持一个系统编程语言的强大。Modula-3旨在继续[pascl类型安全的传统](https://zh.wikipedia.org/wiki/Pascal（程序设计语言） "wikilink")，同时引入实际编程的新构建。特别是Modula-3添加了支持[泛型编程](https://zh.wikipedia.org/wiki/泛型编程 "wikilink")（类似于[模板](https://zh.wikipedia.org/wiki/模板（编程） "wikilink")）[多线程](../Page/线程.md "wikilink")，[异常处理](../Page/异常处理.md "wikilink")，[垃圾收集](https://zh.wikipedia.org/wiki/垃圾收集（计算机科学） "wikilink")，[面向对象编程](https://zh.wikipedia.org/wiki/面向对象编程 "wikilink")，部分不安全的代码的暴露和显式标记。Modula-3的设计目标是用基本的形式实现大部分命令式编程语言重要的现代特征。因而涉嫌危险和复杂的特征如[多重继承和运算符重载被省略了](https://zh.wikipedia.org/wiki/多重继承和运算符重载 "wikilink")。

## 开发历史

Modula-3项目始于1986年11月，当时莫里斯威尔克斯向Niklaus
Wirth写了一些关于Modula新版本的想法。威尔克斯在此之前一直在DEC工作，并回到英格兰并加入了Olivetti的研究战略委员会。Wirth已经转移到了Oberon，但Wilkes的团队在Modula名下继续开发没有任何问题。语言定义于1988年8月完成，并于1989年1月更新版本.DEC和Olivetti的编译器很快就会出现，之后是第三方实现。

它的设计受到SRC和Acorn计算机研究中心（ARC，后来当Olivetti收购Acorn后ORC）的Modula-2
+语言工作的影响很大，这是该操作系统的语言。编写了DEC
Firefly多处理器VAX工作站，其中编写了用于基于ARM的Acorn
Archimedes系列计算机的ARX操作系统项目的ARC的Acorn C和Modula Execution
Library（CAMEL）的Acorn编译器。正如经修订的Modula-3报告所述，该语言受到其他语言的影响，如Mesa，Cedar，Object
Pascal，Oberon和Euclid。\[3\]

在20世纪90年代，Modula-3作为一种教学语言获得了可观的货币，但它从未广泛用于工业用途。造成这种情况的原因可能是DEC的消亡，这是一个关键的Modula-3支持者（特别是当它在1998年DEC被出售给康柏之前不再有效地维持它）。无论如何，尽管Modula-3的简单性和强大功能，似乎对于面向对象编程实现受限的过程编译语言的需求很少。有一段时间，一个名为CM3
的商业编译器由DEC
SRC之前的一个主要实现者维护，他们在DEC被出售给Compaq之前被雇用，这是一个集成开发环境被称为Reactor和可扩展的Java虚拟机（以二进制和源格式许可并可与Reactor构建）由Critical
Mass，Inc。提供，但该公司在2000年停止了活动，并将其产品的一些来源提供给elego Software
Solutions有限公司。Modula-3现在在大学教授，主要是比较编程语言课程，其教科书已绝版。基本上，Modula-3的唯一企业支持者是elego软件解决方案有限公司，它继承了Critical
Mass的资源，并且已经以源代码和二进制形式发布了几个版本的CM3系统。Reactor
IDE已经开源几年后才发布，新的名称是CM3-IDE。2002年3月，elego还接管了另一个活跃的Modula-3发行版PM3的存储库，直到后来在蒙特利尔ÉcolePolytechnique维护，但后来继续进行的HM3工作在几年后得到了改进，直到它被淘汰。

## 语法

语言语法的一个常见示例是Hello world程序。

`MODULE  Main ;  `
`IMPORT  IO ; `
`开始`
`  IO 。Put （“Hello World \ n” ）`
`END  Main 。`

Modula-3中的所有程序至少具有一个模块文件，而大多数程序还包括一个接口文件，客户端使用该文件来访问模块中的数据。与其他语言一样，Modula-3程序必须导出Main模块，该模块可以是名为Main.m3的文件，也可以是可以调用EXPORT以导出Main模块的文件。

MODULE Foo 出口 主要 建议模块文件名与实际模块名称相同，但编译器仅在它们不同时才会发出警告。

语法中的其他约定包括命名接口的导出类型T，因为类型通常由其全名限定，因此T将命名名为Foo的模块内的类型Foo.T。这有助于提高可读性。另一个类似的约定是命名公共对象，Public如上面的OOP示例中所示。

## 语言特性

### 模块化

首先，所有的编译单元要么INTERFACE或实施MODULE的一个味或其它S，。从关键字开始的接口编译单元INTERFACE定义常量，类型，变量，异常和过程。实现模块以关键字开头MODULE，提供实际代码以及实现接口所需的任何其他常量，类型或变量。默认情况下，实现模块将实现相同名称的接口，但模块可以显式EXPORT指向不同名称的模块。例如，主程序导出Main接口的实现模块。

`MODULE  HelloWorld  EXPORTS  Main ;  `
`IMPORT  IO ; `
`开始`
`  IO 。Put （“Hello World \ n” ）`
`END  HelloWorld 。`

任何编译单元都可以使用IMPORT其他接口，但禁止使用循环导入。这可以通过从实现MODULE导入来解决。可以使用以下FROM Module
IMPORT Item \[, Item\]\*语法导入导入模块中的实体，而不仅仅是模块名称：

`MODULE  HelloWorld  EXPORTS  Main ;  `
`来自 IO  IMPORT  Put ; `
`BEGIN `
`  Put （“Hello World \ n” ）`
`END  HelloWorld 。`

通常，只导入接口，并使用“点”表示法访问接口中的项目（类似于访问记录中的字段）。典型用法是为每个接口定义一个数据结构（记录或对象）以及任何支持过程。这里的主要类型将获得名称“T”，其中一个使用如下MyModule.T。

如果导入的模块与模块内的其他实体发生名称冲突，AS则可以使用保留字 IMPORT CollidingModule AS X;

### 安全vs不安全

某些功能被认为是不安全的，编译器无法再保证结果是一致的（例如，当与C编程语言接口时）。UNSAFE在INTERFACE或前面MODULE加上前缀的关键字可用于告诉编译器启用该语言的某些低级功能。例如，不安全操作绕过类型系统，使用LOOPHOLE将整数位复制为浮点数REAL。

导入不安全模块的接口本身必须是不安全的。安全接口可以由不安全的实现模块导出。这是连接外部库时的典型用法，其中构建了两个接口（一个不安全，另一个安全）。

### 泛型

通用接口及其对应的通用模块，前缀INTERFACE或MODULE关键字GENERIC，并作为其他接口的形式参数。因此（与C
++模板一样）可以轻松定义和使用抽象数据类型，但与C
++不同，粒度在模块级别。接口作为实际参数传递给通用接口和实现模块，编译器将生成具体模块。

例如，可以定义GenericStack，然后使用接口（例如IntegerElem，或RealElem甚至是Objects的接口）对其进行实例化
，只要每个接口定义通用模块所需的属性即可。

注意：裸类型INTEGER，或REAL不能使用，因为它们不是模块，泛型系统基于使用模块作为参数。相比之下，在C ++模板中，将使用裸类型。

### 可追溯性

与其他语言的“包含”功能不同，任何标识符都可以追溯到它的起源位置。编译单元必须使用IMPORT语句从其他编译单元导入标识符。即使枚举也使用与访问记录字段时使用的相同的“点”表示法。

### 动态编程

### 面向对象

### 异常

### 多线程

### 总结

## 标准库特性

## 实现

## 书籍

## 使用Modula的项目

## 对其他编程语言的影响

Python中的类机制也受到C++和Modula-3中的类机制的启发。\[1\]

## 註釋

[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink")
[Category:系統程式語言](https://zh.wikipedia.org/wiki/Category:系統程式語言 "wikilink")
[Category:Modula程式語言家族](https://zh.wikipedia.org/wiki/Category:Modula程式語言家族 "wikilink")

1.  Python文档中[Classes](https://docs.python.org/2/tutorial/classes.html#classes)一章表明了这一点。