**Arc**是一種程式語言，[LISP的](../Page/LISP.md "wikilink")之一，由[保羅·格雷厄姆與](https://zh.wikipedia.org/wiki/保羅·格雷厄姆 "wikilink")[羅伯特·泰潘·莫里斯設計](https://zh.wikipedia.org/wiki/羅伯特·泰潘·莫里斯 "wikilink")，2008年釋出第一個正式版本。

## 歷史

2001年，[保罗·格雷厄姆宣布正在制作一个名为](../Page/保罗·格雷厄姆.md "wikilink")“Arc”的新的[Lisp](../Page/LISP.md "wikilink")。多年以来，他已撰写数篇文章描述该语言的特点与目标，并且Y
Combinator的一些内部项目已经用Arc编写，最受关注的是[Hacker
News网络论坛和新闻聚合程序](../Page/Hacker_News.md "wikilink")。Arc本身以[Racket编写](https://zh.wikipedia.org/wiki/Racket "wikilink")。\[1\]

在论文“Being
Popular”\[2\]中，格雷厄姆描述了他对该语言的一些目标。虽然许多目标非常普遍（“Arc应该是可hack”、“它应该是良好的[函式庫](../Page/函式庫.md "wikilink")”），但也确实提供了一些细节。例如，他认为一门语言的简练很重要：

他还表示，一种语言只能实现少量的“公理”，即使这意味着语言可能没有大型组织想要的功能，比如[面向对象程序设计](../Page/面向对象程序设计.md "wikilink")（OO）。事实上，格雷厄姆认为OO是没有用的，因为它的方法和模式只是“好的设计”，并且他看到用于实现OO的语言特性部分存在谬误。\[3\]\[4\]Arc于2008年推出，Graham表示其优势之一是其简洁性。\[5\]

Lisp程序员之间的一个争议是，该种语言的[S-表达式是否及应在多大程度上应该用其他形式的语法来补充](../Page/S-表达式.md "wikilink")。格雷厄姆认为当纯粹的S表达式过于冗长的情况下，应该使用额外的语法，他说：“我不认为我们应该在宗教上反对引入语法到Lisp。”格雷厄姆也认为，应该给程序员一个好的[性能分析器解决方案来解决效率问题](../Page/性能分析.md "wikilink")。\[6\]

### 反响

在2008年发布后，Arc产生了多种反应，有人称它只是Lisp或[Scheme的一个扩展](../Page/Scheme.md "wikilink")，而不是一个独立的编程语言。其他人则称赞Arc拆去了Lisp非必要的东西。Arc发布不久后，它被移植到[JavaScript](../Page/JavaScript.md "wikilink")，以及被一个基于[Eclipse的](../Page/Eclipse.md "wikilink")[IDE](../Page/集成开发环境.md "wikilink")“Schemescript”支持。\[7\]

## 範例

Arc的[Hello world程式碼](../Page/Hello_world.md "wikilink")：

``` lisp
 (prn "Hello, World")
```

保罗·格雷厄姆（Paul
Graham）使用了一个程序来说明Arc的简洁性。\[8\]它产生一个表单，包含一个字段，url"/said"。提交表单后会被带到一个带有“click
here”链接的页面，该页面本身则会带回包含原来输入字段值的页面。

``` lisp
(defop said req
  (aform [onlink "click here" (pr "you said: " (arg _ "foo"))]
    (input "foo")
    (submit)))
```

## 版本

### 官方版本

Arc的第一个公开发布版本出现于2008年1月29日，\[9\]以[Racket](https://zh.wikipedia.org/wiki/Racket "wikilink")（那时为“PLT-Scheme”）实现。该版本以.tar压缩包形式发布，包含Arc的Racket源代码。一份教程\[10\]
and a discussion forum\[11\]同时可用。论坛使用也本身以Arc编写[Hacker
News程序](../Page/Hacker_News.md "wikilink")。

### 非官方版本

由于官方Arc分支发展缓慢，部分Arc社区的成员已开启非官方代码库存放非官方的修订、扩展和库。其中之一是**Anarki**，\[12\]
permitted\[13\] anyone to submit changes to the project.
社区管理的wiki\[14\]是比官方网站更好的信息来源。

**Rainbow**\[15\]是以[Java实现的一个Arc](../Page/Java.md "wikilink")。

**Arcadia**\[16\]是以[C语言实现的一个Arc](https://zh.wikipedia.org/wiki/C语言 "wikilink")。

### 时间线

## 外部連結

  - [Arc 網站](http://arclanguage.org/)

## 参考资料

## 外部链接

  -
  - [Arc](https://arclanguage.github.io)于[GitHub](../Page/GitHub.md "wikilink")

  - [教程](http://ycombinator.com/arc/tut.txt)

[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:函数式编程语言](https://zh.wikipedia.org/wiki/Category:函数式编程语言 "wikilink")
[Category:LISP程式語言家族](https://zh.wikipedia.org/wiki/Category:LISP程式語言家族 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10. .
11.
12.
13.
14.
15.
16.