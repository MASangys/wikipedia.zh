**Smalltalk**是一种[面向对象的](../Page/面向对象程序设计.md "wikilink")、[动态类型的](https://zh.wikipedia.org/wiki/动态类型 "wikilink")[编程语言](../Page/编程语言.md "wikilink")。Smalltalk由[艾伦·凯](../Page/艾伦·凯.md "wikilink")，Dan
Ingalls，Ted Kaehler，Adele Goldberg等于70年代初在[Xerox
PARC开发](https://zh.wikipedia.org/wiki/Xerox_PARC "wikilink")。

Smalltalk对其它众多的程序设计语言的产生起到了极大的推动作用，主要有：[C++](../Page/C++.md "wikilink")，[C\#](../Page/C♯.md "wikilink")，[Objective-C](../Page/Objective-C.md "wikilink")，[Actor](https://zh.wikipedia.org/wiki/Actor "wikilink")，[Java和](../Page/Java.md "wikilink")[Ruby等](../Page/Ruby.md "wikilink")。90年代的许多软件开发思想得利于Smalltalk，例如[设计模式](../Page/设计模式_\(计算机\).md "wikilink")、[敏捷编程和](https://zh.wikipedia.org/wiki/敏捷编程 "wikilink")[代码重构等](../Page/代码重构.md "wikilink")。

## 什么是Smalltalk

Smalltalk和许多程序设计语言不同，它不仅仅是一门语言。下面从几个不同的角度来解释Smalltalk。

  - 一种面向对象的程序设计语言：它是一种面向对象的语言，包含语言的语法和语义。一些编译器可以透过Smalltalk源程序产生可执行文件。这些编译器通常产生一种能在虚拟机上运行的二进制代码。Smalltalk语言本身非常精炼。

<!-- end list -->

  - 一种程序设计环境：这里指的是一种提供许多[-{zh-hans:对象;
    zh-hant:物件;}-的系统](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")，而不是某种特殊的开发环境。和许多语言不同（包括[C++](../Page/C++.md "wikilink")），Smalltalk附带有一个巨大的、相当标准的类库。这些[类使得开发Smalltalk程序的效率非常高](../Page/类_\(计算机科学\).md "wikilink")。在其它语言（例如[Ada](../Page/Ada.md "wikilink")、[C和](https://zh.wikipedia.org/wiki/C语言 "wikilink")[Pascal](../Page/Pascal_\(程式語言\).md "wikilink")）中通常被作为语言的一部分的功能（例如条件判断，循环等），在Smalltalk由特定的类提供。

<!-- end list -->

  - 一个应用开发环境（ADE）：由于Smalltalk的历史原因，它具有一个非常优秀的高度集成、开放的应用开发环境。由于开发环境中的浏览器、监视器以及调试器都由同样的源程序衍生出来的，不同的版本之间也具有相当好的兼容性。此外，这些工具的源程序都可以在ADE直接存取。

## Smalltalk中的-{zh-hans:对象; zh-hant:物件;}-

在Smalltalk中所有的东西都是-{zh-hans:对象; zh-hant:物件;}-，或者应该被当作-{zh-hans:对象;
zh-hant:物件;}-处理。例如下面的表达式：

2 + 3.

应当被理解为：向-{zh-hans:对象; zh-hant:物件;}-2发送消息+，参数为-{zh-hans:对象;
zh-hant:物件;}-3。

纯面向对象使得Smalltalk在语言结构方面有许多与其他语言不同的特点，例如在Smalltalk语言中没有条件语句，取而代之的是一些发送给-{zh-hans:对象;
zh-hant:物件;}-true或者false的消息，因此它们不属于语言部分，而属于Smalltalk的类库；也没有循环重复语句（C语言中的for,
while），Smalltalk用向数字-{zh-hans:对象; zh-hant:物件;}-或块-{zh-hans:对象;
zh-hant:物件;}-发送消息来实现重复执行。

## Smalltalk的历史

最早的Smalltalk原型由[艾伦·凯于](../Page/艾伦·凯.md "wikilink")70年代初提出。类（来自Simula-67）、海龟绘图（来自MIT的[LOGO](https://zh.wikipedia.org/wiki/Logo语言 "wikilink")）以及[图形界面等概念的有机组合](https://zh.wikipedia.org/wiki/图形界面 "wikilink")，构成了Smalltalk的最初的蓝图。

### Smalltalk-71與Smalltalk-72

在1971年到1975年之间，艾伦·凯在Xerox PARC的小组设计并实现了第一个真正的Smalltalk语言系统，編譯器由Dan
Ingalls負責主要實作。这个系统具有以下几个技术创新：

  - 语言完全基于[Simula的类和消息的概念](../Page/Simula.md "wikilink")。
  - 语言没有固定的语法，语法分析由类本身完成。

开发环境的革新相当迅速。虽然当时的[位图显示器十分昂贵](../Page/點陣式顯示器.md "wikilink")，但是艾伦·凯却说服了PARC让他使用这些位图显示器，这使得艾伦·凯和他的小组能够实现不同大小和字体的文字，使用多窗口环境，以及一些对图像处理的高端支持。

### Smalltalk-76

1975－76年间，艾伦·凯小组认识到应当对执行效率和规模进行优化。于是他们在许多重要方面重新设计了Smalltalk系统，在语言上：

  - 引入了继承和子类的概念。
  - 确定了语言的语法，这使得编译器能够产生高效、可执行、精炼的二进制代码。
  - [拉里·泰斯勒](https://zh.wikipedia.org/wiki/拉里·泰斯勒 "wikilink")（Larry
    Tesler）设计了浏览器，这极大地提高了Smalltalk程序员的编程效率。

前述的所有Smalltalk系统都是在特殊的硬件上实现的，直到1977－78年，Bruce Horn和Ted
Kaehler把Smalltalk-76移植到由Intel
8086处理器和自定显示器所组成的硬件环境（被称为NoteTaker）上。虽然这种硬件环境只生产了10台，但是它证明了在通常的处理器上实现Smalltalk的可能性。

### Smalltalk-80

在1979－80年，部分受NoteTaker项目的影响，Smalltalk小组的注意力转移到Smalltalk的销售可行性上。小组设计并实现了新一代的Smalltalk系统，这次修改的目标着重于在标准硬件上的移植性等方面，包括：

  - 采取[ASCII码集](../Page/ASCII.md "wikilink")，摒弃了原先在Smalltalk-72和-76中使用的特殊字符。
  - 取消了原始（primitive）方法直接存取内存的能力。取而代之的是引入一系列的原始方法提供相应的功能。
  - 引入了元类的概念。
  - 引入MVC（Model-View-Controller）系统以方便交互式应用软件的开发。

## 程序实例

### 数学计算

`(15 * 19) + (37 squared)`

可以理解为：向15发送消息'\*'，参数为19；向37发送消息squared；最后向15\*19的结果发送消息'+'，参数为37
squared的结果。

## 参考资料

## 外部链接

  - <http://www.smalltalk.org>
  - <http://www.squeak.org> 一个免费的多系统下运行的Smalltalk环境。
  - <http://www.pharo.org> 一个开源的Smalltalk环境
  - <http://www.cincomsmalltalk.com> 可以免费使用的商业软件，功能非常的强大，文档丰富，社区非常的活跃

[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink")