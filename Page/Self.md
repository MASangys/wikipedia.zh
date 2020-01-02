> 本文内容由[Self](https://zh.wikipedia.org/wiki/Self)转换而来。


**Self语言**，是一种[基于原型的](https://zh.wikipedia.org/wiki/基于原型的编程 "wikilink")[面向对象的](https://zh.wikipedia.org/wiki/面向对象编程语言 "wikilink")[程序设计语言](https://zh.wikipedia.org/wiki/程序设计语言 "wikilink")，于1986年由[施乐帕洛阿尔托研究中心的David](https://zh.wikipedia.org/wiki/施乐帕洛阿尔托研究中心 "wikilink") Ungar和Randy Smith给出了最初的设计。

## 简介

Self语言是在[Smalltalk](../Page/Smalltalk.md "wikilink")的基础上发展而来，沿用了Smalltalk中一切都是对象的风格。Self语言把概念上的精简作为设计原则。它取消了[类的概念](../Page/类_\(计算机科学\).md "wikilink")，只有[对象的概念](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")，同时把[消息作为最基本的操作](https://zh.wikipedia.org/wiki/消息 "wikilink")。把对象的属性理解为获取或更改属性这两种方法，从而把属性的概念简化为[方法](https://zh.wikipedia.org/wiki/方法 "wikilink")；取消了[变量和](https://zh.wikipedia.org/wiki/变量 "wikilink")[赋值](https://zh.wikipedia.org/wiki/赋值 "wikilink")，并以通过消息来读槽和写槽的方式代之。在发展Self的过程中，Self的设计研究人员也探索了Self的[程序设计](../Page/程序设计.md "wikilink")。他们提出了[traits的概念](../Page/Traits_\(计算机科学\).md "wikilink")，用对象实现了名字（对象名或方法名）的管理，用[动态继承实现模式转换](https://zh.wikipedia.org/wiki/动态继承 "wikilink")。

尽管Self系统一次运行在一个[进程中](https://zh.wikipedia.org/wiki/进程 "wikilink")，但Self系统实际上可以分成两个部分：Self[虚拟机和Self世界](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")（Self world）。Self世界是一个Self对象库，Self[程序就是Self世界里的对象](https://zh.wikipedia.org/wiki/程序 "wikilink")，Self虚拟机用来执行这些Self程序。当Self程序从[终端](https://zh.wikipedia.org/wiki/终端 "wikilink")、[文件或者](https://zh.wikipedia.org/wiki/文件 "wikilink")[图形用户界面](../Page/图形用户界面.md "wikilink")输入到系统中来时，Self系统把[源程序解析转化为Self对象](https://zh.wikipedia.org/wiki/源程序 "wikilink")。Self对象包括数据对象和方法对象，方法对象的代码部分是用一种指令非常简单的[字节码](https://zh.wikipedia.org/wiki/字节码 "wikilink")（bytecode）表示的，字节码由虚拟机来解释。在实现Self系统的过程中，设计研究人员发展出了一种[动态自适应编译技术](https://zh.wikipedia.org/wiki/动态自适应编译 "wikilink")。这种技术的采用提高了Self代码的执行效率。对经常执行的方法，虚拟机将进一步把字节码转化为[本机代码](../Page/机器语言.md "wikilink")。Self虚拟机还提供了一些可供调用的[原语](https://zh.wikipedia.org/wiki/原语 "wikilink")，用来实现[算术运算](https://zh.wikipedia.org/wiki/算术#算術運算 "wikilink")、对象复制、[输入输出等](https://zh.wikipedia.org/wiki/输入输出 "wikilink")。

Self同Smalltalk一样既是一个[编程语言](../Page/编程语言.md "wikilink")，也是一个[集成开发环境](../Page/集成开发环境.md "wikilink")和[运行环境](https://zh.wikipedia.org/wiki/运行环境 "wikilink")。Self也拥有一个[图形用户界面](../Page/图形用户界面.md "wikilink")Morphic，Self的编程环境也是基于Morphic来实现的。Self在精简语言概念的同时也把大量的工作转交给环境来处理。如[可见性](https://zh.wikipedia.org/wiki/可见性 "wikilink")（visibility），[模块与代码的管理都是由环境来处理的](https://zh.wikipedia.org/wiki/模块 "wikilink")，语言中的[反馈机制也同环境密切相关](../Page/反射_\(计算机科学\).md "wikilink")。

## 基于原型的编程语言

传统的基于类的面向对象语言，基于了根深蒂固的二元性：

1.  [类定义对象的基本特质和行为](../Page/类_\(计算机科学\).md "wikilink")。
2.  [对象实例是类的特定体现](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")。

例如，假设类`Vehicle`（车辆）的对象有一个“名字”，和进行各种动作的能力，比如“开车上班”和“运送建材”。`Bob's car`是类`Vehicle`的特定对象（实例），它的“名字”是“Bob's car”。在理论上，你可以向`Bob's car`发送消息，告诉它去“运送建材”。

这个例子展示了这种方式的一个问题：`Bob's car`，恰巧是一个运动车，（在任何意义上）不能装载和运送建材，但这是建模`Vehicle`所必须拥有的能力。通过使用[子类来建立特殊化的](https://zh.wikipedia.org/wiki/子类 "wikilink")`Vehicle`，可产生一个更有用的模型；例如`Sports Car`（运动车）和`Flatbed Truck`（平板卡车）。只有类`Flatbed Truck`的对象需要提供“运送建材”的机能；运动车，不适合这种工作，它只需要“快速行驶”。但是，这种深入建模在设计期间需要更多的洞察力，洞察那些可能只在引起了问题时才显现出的事情。

这个问题是在**原型**这个概念背后的动机因素之一。除非你能必然性的预测出一组对象和类在遥远未来时所要有的特质，你不能恰当的设计好一个类的层级。程序最终需要增加行为实在是太频繁了，而系统的很多节段将需要重新设计（或[重新构建](../Page/代码重构.md "wikilink")）来以不同的方式迸发出对象。早期的面向对象语言如[Smalltalk](../Page/Smalltalk.md "wikilink")的实验，显示出这种问题反反复复的出现。系统趋向与增长到一定程度后就变得非常僵化，因为在编程者的代码下的深层的基本类，逐渐成为一个简单的“错误”。 没有变更起初的类的容易方式，严重的问题就会出现。

动态语言如Smalltalk，允许通过周知的按照类的方法进行这种变更；即通过改变类，基于它的对象就可以改变它们的行为。但是，进行这种变更必须非常小心，因为基于相同类的其他对象可能把它当作“错误行为”：“错误”经常是依赖于场景的。（这是[脆弱基类问题的一种形式](https://zh.wikipedia.org/wiki/脆弱基类 "wikilink")）。进一步的说，在语言如[C++](../Page/C++.md "wikilink")中，这里的子类可以从[超类分别的编译](https://zh.wikipedia.org/wiki/超类 "wikilink")，对超类的变更实际上可以破坏预编译的子类方法。(这是脆弱基类问题的另一种形式，也是[脆弱二进制接口问题的一种形式](https://zh.wikipedia.org/wiki/脆弱二进制接口问题 "wikilink")。)

在Self和其他基于原型的编程语言中，消除了在类和对象之间的这种二元性。

不再有基于某种“类”的一个对象“实例”，在Self中，你可以复制一个现存的对象，并改变它。所以`Bob's car`可以通过制作现存的`Vehicle`对象的副本来建立，并增加“快速行驶”方法，建模它恰好是一辆[保时捷911](../Page/保时捷911.md "wikilink")的事实。主要用来制作副本的基本对象叫做“原型”（prototype）。这种技术被称为是一种非常简化的机制。如果一个现存的对象（或对象的集合）被证明是个不适当的模型，编程者可以简单的建立有正确行为的一个修改的对象，并转而使用它。使用现存对象的代码不会改变。

## 发展简史

Self语言的最初设计是由David Ungar和Randy Smith于1986年在施乐帕洛阿托研究中心提出的，并在1987年的[OOPSLA](https://zh.wikipedia.org/wiki/OOPSLA "wikilink")'87的论文SELF: The Power of Simplicity上给出了描述。

1987年初Craig Chambers, Elgin Lee和Martin Rinard在Smalltalk上给出了Self的第一个实验性[解释器](https://zh.wikipedia.org/wiki/解释器 "wikilink")。

1987年夏Self[项目在Stanford大学正式开始](https://zh.wikipedia.org/wiki/项目 "wikilink")，1988年夏给出了第一个有效率的实现，并发布了1.0和1.1两个[版本](https://zh.wikipedia.org/wiki/版本 "wikilink")。在第一个版本中包括[内存管理系统和](https://zh.wikipedia.org/wiki/内存管理 "wikilink")[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")。

1991年初Self项目移至Sun Microsystems Laboratories Inc.，并且在1992年发布了2.0版。在第二个版本中采用了新的编译技术，并引入了[多重继承](../Page/多重继承.md "wikilink")。

1993年1月Self 3.0版发布。在这个版本中包括了一个实验性的图形用户界面，简化了上个版本中多重继承的设计，引入了可见性概念，并采用了更新的编译技术。

1995年7月Self 4.0版发布。在这个版本中包括了一个全新的图形用户环境Morphic，提供了工具transporter用于保存对象，改进了虚拟机，改善了内存管理，在环境的层次上引入了[模块的概念](https://zh.wikipedia.org/wiki/模块 "wikilink")，取消了语言层次上的可见性概念。

1995年之后Self的发展基本已经停滞，但在发展Self过程中探索出的一些技术在别的系统中得到了应用。在Self的实现中采用的各种编译优化技术直接导致了[Java Hotspot虚拟机的产生](https://zh.wikipedia.org/wiki/HotSpot_\(java\) "wikilink")；在Smalltalk的一个实现[Squeak](../Page/Squeak.md "wikilink")中采用了Self图形用户界面Morphic的设计方案，放弃了标准Smalltalk中采用的[MVC](../Page/MVC.md "wikilink")的方案。

## 站外链接

  -
  -
  - [Former Self Home Page at Sun Microsystems](https://web.archive.org/web/20020606124955/http://research.sun.com/self/)

  - [Alternate source of papers on Self from UCSB (mirror for the Sun papers page)](http://www.cs.ucsb.edu/~urs/oocsb/self/papers/papers.html)

  - [Merlin Project](http://www.merlintec.com/lsi/)

  - [Self ported to Linux (without many optimizations)](https://web.archive.org/web/20030613141004/http://gliebe.de/self/index.html)

  - [Automated Refactoring application on sourceforge.net, written for and in Self](http://selfguru.sourceforge.net/)

  - [Gordon's Page on Self](http://www.self-support.com/)

  - [Prometheus object system on the Community Scheme Wiki](http://community.schemewiki.org/?prometheus)

  - [Video demonstrating self](http://www.smalltalk.org.br/movies/)

  - [dSelf: distributed extension to the delegation and language Self](http://www.ag-nbi.de/research/dself/)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")