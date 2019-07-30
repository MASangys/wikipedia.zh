**Self语言**，是一种[基于原型的面向对象程序设计语言](https://zh.wikipedia.org/wiki/基于原型的面向对象程序设计语言 "wikilink")，于1986年由[施乐帕洛阿尔托研究中心的David](https://zh.wikipedia.org/wiki/施乐帕洛阿尔托研究中心 "wikilink") Ungar和Randy Smith给出了最初的设计。

## 基本特点

Self语言把概念上的精简作为设计原则。它取消了[类的概念](../Page/类_\(计算机科学\).md "wikilink")，只有[对象的概念](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink")，同时把[消息作为最基本的操作](https://zh.wikipedia.org/wiki/消息 "wikilink")。把对象的属性理解为获取或更改属性这两种方法，从而把属性的概念简化为[方法](https://zh.wikipedia.org/wiki/方法 "wikilink")；取消了[变量和](https://zh.wikipedia.org/wiki/变量 "wikilink")[赋值](https://zh.wikipedia.org/wiki/赋值 "wikilink")，并以通过消息来读槽和写槽的方式代之。

Self语言是在[Smalltalk](../Page/Smalltalk.md "wikilink")的基础上发展而来，沿用了Smalltalk中一切都是对象的风格。Self同Smalltalk一样既是一个[编程语言](../Page/编程语言.md "wikilink")，也是一个[集成开发环境](../Page/集成开发环境.md "wikilink")和[运行环境](https://zh.wikipedia.org/wiki/运行环境 "wikilink")。Self也拥有一个[图形用户界面](../Page/图形用户界面.md "wikilink")Morphic，Self的编程环境也是基于Morphic来实现的。Self在精简语言概念的同时也把大量的工作转交给环境来处理。如[可见性](https://zh.wikipedia.org/wiki/可见性 "wikilink")（visibility），[模块与代码的管理都是由环境来处理的](https://zh.wikipedia.org/wiki/模块 "wikilink")，语言中的[反馈机制](https://zh.wikipedia.org/wiki/反馈机制 "wikilink")（reflection）也同环境密切相关。

在发展Self的过程中，Self的设计研究人员也探索了Self的[程序设计](../Page/程序设计.md "wikilink")。他们提出了[traits的概念](https://zh.wikipedia.org/wiki/traits "wikilink")，用对象实现了名字（对象名或方法名）的管理，用[动态继承实现模式转换](https://zh.wikipedia.org/wiki/动态继承 "wikilink")。

在实现Self系统的过程中，设计研究人员发展出了一种[动态自适应编译技术](https://zh.wikipedia.org/wiki/动态自适应编译 "wikilink")。这种技术的采用提高了Self代码的执行效率。

## Self系统

尽管Self系统一次运行在一个[进程中](https://zh.wikipedia.org/wiki/进程 "wikilink")，但Self系统实际上可以分成两个部分：Self [虚拟机和Self世界](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")（Self world）。Self世界是一个Self对象库，Self [程序就是Self世界里的对象](https://zh.wikipedia.org/wiki/程序 "wikilink")，Self虚拟机用来执行这些Self程序。Self虚拟机还提供了一些可供调用的[原语](https://zh.wikipedia.org/wiki/原语 "wikilink")，用来实现[算术运算](https://zh.wikipedia.org/wiki/算术#算術運算 "wikilink")、对象复制、[输入输出等](https://zh.wikipedia.org/wiki/输入输出 "wikilink")。

当Self程序从[终端](https://zh.wikipedia.org/wiki/终端 "wikilink")、[文件或者](https://zh.wikipedia.org/wiki/文件 "wikilink")[图形用户界面](../Page/图形用户界面.md "wikilink")输入到系统中来时，Self系统把[源程序解析转化为Self对象](https://zh.wikipedia.org/wiki/源程序 "wikilink")。Self对象包括数据对象和方法对象，方法对象的代码部分是用一种指令非常简单的[字节码](https://zh.wikipedia.org/wiki/字节码 "wikilink")（bytecode）表示的，字节码由虚拟机来解释。对经常执行的方法，虚拟机将进一步把字节码转化为[本机代码](../Page/机器语言.md "wikilink")，这样可以提高运行效率。

## 发展简史

Self语言的最初设计是由David Ungar和Randy Smith于1986年在施乐帕洛阿托研究中心提出的，并在1987年的[OOPSLA](https://zh.wikipedia.org/wiki/OOPSLA "wikilink")'87的论文SELF: The Power of Simplicity上给出了描述。

1987年初Craig Chambers, Elgin Lee和Martin Rinard在Smalltalk上给出了Self的第一个实验性[解释器](https://zh.wikipedia.org/wiki/解释器 "wikilink")。

1987年夏Self[项目在Stanford大学正式开始](https://zh.wikipedia.org/wiki/项目 "wikilink")，1988年夏给出了第一个有效率的实现，并发布了1.0和1.1两个[版本](https://zh.wikipedia.org/wiki/版本 "wikilink")。在第一个版本中包括[内存管理系统和](https://zh.wikipedia.org/wiki/内存管理 "wikilink")[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")。

1991年初Self项目移至Sun Microsystems Laboratories Inc.，并且在1992年发布了2.0版。在第二个版本中采用了新的编译技术，并引入了[多重继承](../Page/多重继承.md "wikilink")。

1993年1月Self 3.0版发布。在这个版本中包括了一个实验性的图形用户界面，简化了上个版本中多重继承的设计，引入了可见性概念，并采用了更新的编译技术。

1995年7月Self 4.0版发布。在这个版本中包括了一个全新的图形用户环境Morphic，提供了工具transporter用于保存对象，改进了虚拟机，改善了内存管理，在环境的层次上引入了[模块的概念](https://zh.wikipedia.org/wiki/模块 "wikilink")，取消了语言层次上的可见性概念。

1995年之后Self的发展基本已经停滞，但在发展Self过程中探索出的一些技术在别的系统中得到了应用。在Self的实现中采用的各种编译优化技术直接导致了[Java Hotspot虚拟机的产生](https://zh.wikipedia.org/wiki/HotSpot_\(java\) "wikilink")；在Smalltalk的一个实现[Squeak](../Page/Squeak.md "wikilink")中采用了Self图形用户界面Morphic的设计方案，放弃了标准Smalltalk中采用的[MVC](../Page/MVC.md "wikilink")的方案。

## 站外链接

  - [Self主页](https://web.archive.org/web/20020606124955/http://research.sun.com/self/)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")