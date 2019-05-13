**SuperCollider** 是一个最初由 James McCartney
在1996年发布的[编程语言和声音编程环境](../Page/编程语言.md "wikilink")，主要用于[实时](../Page/实时.md "wikilink")[声音合成和](../Page/合成器.md "wikilink")[算法作曲](https://zh.wikipedia.org/wiki/算法作曲 "wikilink")。\[1\]\[2\]

自此之后，它逐步变成一个被科学家与艺术家们共同开发和操作声音的系统。这个高效且有表现力的[动态语言](../Page/动态语言.md "wikilink")，为[声学](../Page/声学.md "wikilink")、
[算法音乐和](https://zh.wikipedia.org/wiki/算法作曲 "wikilink")提供了一个框架。\[3\]

在2002年以[GNU通用公共许可协议发布](https://zh.wikipedia.org/wiki/GNU通用公共许可协议 "wikilink")，SuperCollider
是[自由软件](../Page/自由软件.md "wikilink")。

## 架构

从版本3开始，SuperCollider被分为两部分：一个[服务器](../Page/服务器.md "wikilink")，scsynth；一个[客户端](https://zh.wikipedia.org/wiki/客户端 "wikilink")，sclang。两者通过OSC()通信。

SC 的语言结合了 [Smalltalk](../Page/Smalltalk.md "wikilink")
的面向对象特性、来自函数式编程语言的特性和类C语言的语法。

SC 的服务器支持简单的C扩展API，使它很简单的编写高效的声音算法。因为外界对服务器的操作都经过OSC，所以很方便地使用其他语言或应用操作它。

### SuperCollider 合成器服务器 (*scsynth*)

SuperCollider的声音产生捆绑在一个优化的命令行可执行程序(*scsynth*)。大部分情况下它将被SuperCollider编程语言控制，但也可以被独立地使用。这个音频服务器有下列的特点：\[4\]

  - 接入

  - 简单的 [ANSI C](../Page/ANSI_C.md "wikilink") 插件
    [API](https://zh.wikipedia.org/wiki/API "wikilink")

  - 支持任意数量的输入和输出频道\[5\]

  - 一个以合成节点构成的[有序树结构定义了执行的顺序](../Page/树_\(数据结构\).md "wikilink")

  - 能动态重建信号流向的总线系统

  - 可供读写的缓冲块

  - 根据需要以不同的速率计算：音频速率、控制速率和需求速率

### SuperCollider 编程语言 (*sclang*)

SuperCollider 编程语言是一个类似于 [Smalltalk](../Page/Smalltalk.md "wikilink")
的[动态类型](https://zh.wikipedia.org/wiki/动态类型 "wikilink")、
[垃圾回收](https://zh.wikipedia.org/wiki/垃圾回收_\(计算机科学\) "wikilink")、
单继承的[面向对象和](https://zh.wikipedia.org/wiki/面向对象的程序设计 "wikilink")[函数式编程语言](https://zh.wikipedia.org/wiki/函数式编程语言 "wikilink")，\[6\]
它的语法类似[LISP或者](../Page/LISP.md "wikilink")[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")。它的架构是在实时计算需求和抽象语言的灵活、简洁性之间的折衷。和许多函数式编程语言类似，它实现了[函数作为一级对象](https://zh.wikipedia.org/wiki/函数_\(计算机科学\) "wikilink")，使得函数可以[复合](../Page/复合函数.md "wikilink")。函数和方法支持缺省参数、可变参数，调用时可以使用任意次序的关键词参数。
[闭包](../Page/闭包_\(计算机科学\).md "wikilink") 是词法的,
[作用域](../Page/作用域.md "wikilink")
既有词法作用域和动态作用域。也支持函数式编程语言的其他典型特性，包括[尾调用优化](../Page/尾调用.md "wikilink")，和[协程](../Page/协程.md "wikilink")。
它特有功能包括隐式的元组扩展和无状态的模式系统。它的常量时间的消息查找和实时的[垃圾回收](https://zh.wikipedia.org/wiki/垃圾回收_\(计算机科学\) "wikilink")
让大型系统保持高效与信号处理的灵活。\[7\]

## 示例代码

``` c
// 打印 "Hello world!"
"Hello world!".postln;
```

``` c
// 播放一个800Hz正弦波与粉噪音的混合
{ SinOsc.ar(800, 0, 0.1) + PinkNoise.ar(0.01) }.play;
```

``` c
// 以一个频率由鼠标的水平位置决定的正弦波调制另外一个正弦波的频率和一个噪音的振幅
{
 var x = SinOsc.ar(MouseX.kr(1, 100));
 SinOsc.ar(300 * x + 800, 0, 0.1)
 + PinkNoise.ar(0.1 * x + 0.1)
}.play;
```

``` c
// 列表迭代: 将列表中元素值乘以它们的索引
[1, 2, 5, 10, -3].collect { |elem, idx| elem * idx };
```

``` c
// 阶乘函数
f = { |x| if(x == 0) { 1 } { f.(x-1) * x } };
```

## 参考资料

## 外部链接

  - [SuperCollider 官方网站](http://supercollider.github.io/)
  - [SuperCollider
    用户邮件列表](https://web.archive.org/web/20081015155331/http://www.beast.bham.ac.uk/research/sc_mailing_lists.shtml)
  - [Nick Collins 关于 SuperCollider
    的工作坊](https://web.archive.org/web/20110820003031/http://www.informatics.sussex.ac.uk/users/nc81/courses/cm1/workshop.html)
  - [SuperCollider 在线帮助文件](http://doc.sccode.org)

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink")
[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")
[Category:音频编程语言](https://zh.wikipedia.org/wiki/Category:音频编程语言 "wikilink")
[Category:電子音樂軟體](https://zh.wikipedia.org/wiki/Category:電子音樂軟體 "wikilink")
[Category:现场编程](https://zh.wikipedia.org/wiki/Category:现场编程 "wikilink")

1.  J. McCartney, [SuperCollider: A new real time synthesis
    language](http://www.audiosynth.com/icmc96paper.html), in Proc.
    International Computer Music Conference (ICMC’96), 1996, pp.
    257–258.

2.  J. McCartney, [Rethinking the computer music language:
    SuperCollider](http://dx.doi.org/10.1162/014892602320991383),
    Computer Music Journal, 26 (2002), pp. 61–68.

3.

4.
5.  [BEASTmulch tools for multichannel
    audio](http://www.beast.bham.ac.uk/research/mulch.shtml)

6.
7.