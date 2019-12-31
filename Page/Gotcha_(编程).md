> 本文内容由[Gotcha \(编程\)](https://zh.wikipedia.org/wiki/Gotcha_\(编程\))转换而来。


**Gotcha**（发音\[英\]\[ˈɡɔtʃə\]\[美\]\[ˈɡɑtʃə\]），在[计算机编程领域中是指在系统或](https://zh.wikipedia.org/wiki/计算机编程 "wikilink")[程序](https://zh.wikipedia.org/wiki/電腦程式 "wikilink")、[程序设计语言中](https://zh.wikipedia.org/wiki/程序设计语言 "wikilink")，合法有效，但是會誤解意思的构造，程式容易造成错误，或是一些易于使用但其结果不如期望的構造。字面上是got you的简写，常用于口语，直译为： “逮着你了”、“捉弄到你了 ”、“你中计了” 、“骗到你了”。\[1\]

## 例子

一个典型的gotcha是[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")/[C++](../Page/C++.md "wikilink")中的：

``` c
if (a = b) code;
```

大多数情形，编程者的意图是：

``` c
if (a == b) code;
```

现代[编译器在这种情形](https://zh.wikipedia.org/wiki/编译器 "wikilink")（条件表达式中是个赋值而不是逻辑比较）会产生一条编译警告消息。通行的编程风格建议\[2\]在比较表达式的左侧是个常量，如： `42 == x` 而不是 `x == 42`

## 相關條目

  - [易用性](../Page/易用性.md "wikilink")
  - [防呆](../Page/防呆.md "wikilink")

## 参考文献

## 进一步阅读

  -
## 外部链接

  - [C Traps and Pitfalls](http://www.literateprogramming.com/ctraps.pdf) by Andrew Koenig
  - [C++ Gotchas](https://web.archive.org/web/20160817045649/http://buhoz.net/public/books/lenguajes/c++/tecnicas/C++.Gotchas-.Avoiding.Common.Problems.in.Coding.and.Design.pdf) A programmer's guide to avoiding and correcting ninety-nine of the most common, destructive, and interesting C++ design and programming errors, by Stephen C. Dewhurst

[Category:计算机编程](https://zh.wikipedia.org/wiki/Category:计算机编程 "wikilink")

1.  [Gotcha definition at The Jargon File](http://catb.org/jargon/html/G/gotcha.html)
2.  ["VOID EXP21-C. Place constants on the left of equality comparisons"](https://www.securecoding.cert.org/confluence/display/c/VOID+EXP21-C.+Place+constants+on+the+left+of+equality+comparisons)