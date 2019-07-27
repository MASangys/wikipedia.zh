**Chicken**是一个[Scheme](../Page/Scheme.md "wikilink")语言的[编译器和](https://zh.wikipedia.org/wiki/编译器 "wikilink")[解释器](https://zh.wikipedia.org/wiki/解释器 "wikilink")，能够将scheme代码编译成标准[C代码](https://zh.wikipedia.org/wiki/C语言 "wikilink")。它基本上遵守[R5RS标准并且提供了很多扩展](../Page/Scheme.md "wikilink")。Chicken是一个采用[BSD许可证](../Page/BSD许可证.md "wikilink")的[自由软件](../Page/自由软件.md "wikilink")。

## 目的

从Chicken的标志下的口号可以看出它的目的非常明确：**一个可移植的實用Scheme系统**。

Chicken的主要目的是将Scheme应用到业界的软件中。Scheme在计算机科学课程和编程语言实验中非常有名，但在工业界却没有什么应用。\[1\]
Chicken社区已经编写了大量的[库](https://zh.wikipedia.org/wiki/库_\(计算机\) "wikilink")，能胜任各类任务。Chicken的维基（底层也是Chicken编写）有一个用Chicken写的软件的[列表](http://wiki.call-cc.org/Software)

Chicken的另一个目的是可移植。通过编译成C代码，Chicken写的程序可以编译到常见的平台如[Linux](../Page/Linux.md "wikilink")、[Mac
OS
X和其他类Unix系统以及](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Windows和](https://zh.wikipedia.org/wiki/Windows "wikilink")[Haiku](../Page/Haiku.md "wikilink")\[2\]。它还内置程序和扩展的交叉编译功能\[3\]使它能够在嵌入式系统上使用。

## 设计

和许多Scheme编译器一样，Chicken使用标准C作为[中间语言](https://zh.wikipedia.org/wiki/中间语言 "wikilink")。一个Scheme程序透過Chicken编译器翻译成C，然后一个C编译器将C程序编译成目标机器的机器码，生成一个可执行程序。C的通用性使它非常适合。

Chicken的设计灵感来自電腦科學家的1944年论文\[4\]，这篇论文提出了一个将Scheme翻译为C的新方案，把一个Scheme程序翻译成一个C[函数](https://zh.wikipedia.org/wiki/函数_\(计算机科学\) "wikilink")。这些C函数从来不运行*return*[语句](https://zh.wikipedia.org/wiki/陈述_\(程式\) "wikilink")；而是在结束时调用一个[延续](https://zh.wikipedia.org/wiki/延续性 "wikilink")。这些延续由编译器计算獲得，而且也是C函数，並作为参数传递给其他的C函数。

这些正是的核心。Baker的新想法是使用C[调用栈来作为Scheme的堆](https://zh.wikipedia.org/wiki/调用栈 "wikilink")。如此一來，一般的C的栈操作如自动创建变量、变长数组分配等就可以用上了。当栈满时就會觸發一个[垃圾回收机制](https://zh.wikipedia.org/wiki/垃圾回收_\(计算机科学\) "wikilink")。垃圾回收设计用的是，这种方法将所有的活跃延续和其他活跃的对象都复制到堆\[5\]。尽管如此，C代码并不复制C栈中的帧，只复制Scheme对象，所以不需要了解C的实现。

总體而言，Scheme的堆有一个C栈作为「温床」，还有两个堆用来做。这种方式使得许多操作具备了C栈的速度，并且允许通过延续做简单的C调用。更重要的是，Baker的方案保证了渐进[尾部递归](https://zh.wikipedia.org/wiki/尾部递归 "wikilink")，这是Scheme标准所要求的。

## 不足

大部分Chicken Scheme是遵守的R5RS的。

目前只能保证每个过程最多120个参数。在常见平台上，支持最多2048个参数。

## 扩展

Chicken有一个站点提供了大量的叫做[eggs](http://wiki.call-cc.org/chicken-projects/egg-index-4.html)的附加的库和程序。这个eggs系统非常像[RubyGems](../Page/RubyGems.md "wikilink")，并不集成到用户操作系统的[软件包系统中去](https://zh.wikipedia.org/wiki/软件包 "wikilink")。

## 另见

  - [尾部递归](https://zh.wikipedia.org/wiki/尾部递归 "wikilink")

  -
<!-- end list -->

  -
  -
## 参考

## 外部链接

  - [Chicken Scheme
    website](http://www.call-with-current-continuation.org/)
  - [The Chicken Wiki](http://wiki.call-cc.org)

[Category:Scheme实现](https://zh.wikipedia.org/wiki/Category:Scheme实现 "wikilink")
[Category:LISP程式語言家族](https://zh.wikipedia.org/wiki/Category:LISP程式語言家族 "wikilink")

1.
2.
3.
4.  Baker, Henry
5.