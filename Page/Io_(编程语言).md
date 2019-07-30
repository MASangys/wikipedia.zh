**Io语言**是一门计算机高级编程语言，其发展历史并不长，2002年3月7日由[Steve Dekorte研发出来](https://zh.wikipedia.org/wiki/Steve_Dekorte "wikilink")。 Io语言因为没有关键字，因而很容易进行扩展，并很灵活。

## 特点

Io language并非主流编程语言，但其学习价值和启发价值都很高。这门语言吸收了[LISP](../Page/LISP.md "wikilink")、[Lua](../Page/Lua.md "wikilink")、[Smalltalk](../Page/Smalltalk.md "wikilink")等语言的特点。

Io language是纯面向对象的原型继承语言，它的创造过程是综合了[Smalltalk](../Page/Smalltalk.md "wikilink")、[Self](../Page/Self.md "wikilink")、[NewtonScript](https://zh.wikipedia.org/wiki/NewtonScript "wikilink")、[Act1](https://zh.wikipedia.org/wiki/Act1 "wikilink")、[LISP](../Page/LISP.md "wikilink")和[Lua](../Page/Lua.md "wikilink")等语言的特点\[1\]；

Io语言主要吸取了这些语言的如下特点：

  - [Smalltalk](../Page/Smalltalk.md "wikilink")——所有的变量均为对象、所有的消息都是动态的；
  - [Self](../Page/Self.md "wikilink")——基于原型的面向对象设计
  - [NewtonScript](https://zh.wikipedia.org/wiki/NewtonScript "wikilink")——差异化继承
  - [Act1](https://zh.wikipedia.org/wiki/Act1 "wikilink")——并发行为和特征
  - [LISP](../Page/LISP.md "wikilink")——code is a runtime inspectable/modifiable tree
  - [Lua](../Page/Lua.md "wikilink")——小巧且具有可嵌入能力

## 历史

Io语言大约是2002年3月7日由[Steve Dekorte创造的](https://zh.wikipedia.org/wiki/Steve_Dekorte "wikilink")，创造初衷则是[Steve Dekorte为了帮助他的朋友](https://zh.wikipedia.org/wiki/Steve_Dekorte "wikilink")[Dru Nelson改造另一门称作](https://zh.wikipedia.org/wiki/Dru_Nelson "wikilink")“[Cel](https://zh.wikipedia.org/wiki/Cel "wikilink")”的语言，Steve Dekorte发现自己对编程语言的原理并不是很了解，于是决定写一个简单的语言（Io Language）来帮助自己理解相关的问题。

### 方法和块

在Io语言中有两种方法来创建匿名函数：方法和块。这两种方法除了[作用域](../Page/作用域.md "wikilink")不同外，几乎是没有区别的。块拥有[词法作用域](https://zh.wikipedia.org/wiki/词法作用域 "wikilink")，方法拥有[动态作用域](https://zh.wikipedia.org/wiki/动态作用域 "wikilink")。 *方法*和*块*都是[高阶函数](https://zh.wikipedia.org/wiki/高阶函数 "wikilink")。

## 示例

经典的[Hello World程序](../Page/Hello_World.md "wikilink")：

``` io
 "Hello, world!" println
```

新对象是通过[克隆其他对象来创建的](https://zh.wikipedia.org/wiki/克隆_\(信息学\) "wikilink")。特别是在Io中，一个新的空对象在创建后，其中只保存了与其父对象的不同之处，这种行为被称为[差别继承](https://zh.wikipedia.org/wiki/差别继承 "wikilink")。下面是一个例子：

``` io
 A := Object clone         // 创建一个新的空对象，命名为"A"
```

Io语言中一个简单的非递归的阶乘方法：

``` io
factorial := method(n,
    if(n == 0, return 1)
    res := 1
    Range 1 to(n) foreach(i, res = res * i)
)
```

由于将res \* i赋值给res是方法的最后一个操作，这个函数会隐式地返回这个结果，因此不需要显式地加上一个返回语句。上面这段代码展示了ranges的用法而没有用for()，后者会更快一些。

## 参考资料

<references/>

## 外部链接

  - [Io](http://iolanguage.com/) 官方网站

  - [Io Notes](https://web.archive.org/web/20120204202552/http://iota.flowsnake.org/)

  - [Io at Synrc Research Center](https://web.archive.org/web/20110716175739/http://synrc.com/io/index.htm)

  -
[Category:动态类型编程语言](https://zh.wikipedia.org/wiki/Category:动态类型编程语言 "wikilink") [Category:基于原型的编程语言](https://zh.wikipedia.org/wiki/Category:基于原型的编程语言 "wikilink") [Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink")

1.  [Io Programming Guide](http://iolanguage.org/scm/io/docs/IoGuide.html#Introduction)