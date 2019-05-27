在[程序设计领域](../Page/程序设计.md "wikilink")，
**SOLID**（**单一功能、开闭原则、里氏替换、接口隔离**以及**依赖反转**）是由[罗伯特·C·马丁在](https://zh.wikipedia.org/wiki/Robert_C._Martin "wikilink")21世纪早期\[1\]
引入的[记忆术](../Page/记忆术.md "wikilink")[首字母缩略字](https://zh.wikipedia.org/wiki/首字母缩略字 "wikilink")\[2\]\[3\]，指代了[面向对象编程和](https://zh.wikipedia.org/wiki/面向对象编程 "wikilink")[面向对象设计的五个基本原则](../Page/面向对象设计.md "wikilink")。当这些原则被一起应用时，它们使得一个[程序员开发一个容易进行](../Page/程序员.md "wikilink")[软件维护和扩展的系统变得更加可能](https://zh.wikipedia.org/wiki/软件维护 "wikilink")。\[4\]
SOLID所包含的原则是通过引发编程者进行软件[源代码的](../Page/源代码.md "wikilink")[代码重构进行软件的](../Page/代码重构.md "wikilink")[代码异味清扫](../Page/代码异味.md "wikilink")，从而使得软件清晰可读以及可扩展时可以应用的指南。SOLID被典型的应用在[测试驱动开发上](../Page/测试驱动开发.md "wikilink")，并且是[敏捷开发以及](https://zh.wikipedia.org/wiki/敏捷开发 "wikilink")[自适应软件开发的基本原则的重要组成部分](https://zh.wikipedia.org/wiki/adaptive_programming "wikilink")。\[5\]\[6\]

## 概述

<table>
<thead>
<tr class="header">
<th><p>首字母</p></th>
<th><p>指代</p></th>
<th><p>概念</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>S</p></td>
<td><p><a href="../Page/单一功能原则.md" title="wikilink">单一功能原则</a></p></td>
<td><p>认为<a href="https://zh.wikipedia.org/wiki/对象_(计算机科学)" title="wikilink">对象应该仅具有一种单一功能的概念</a>。</p></td>
</tr>
<tr class="even">
<td><p>O</p></td>
<td><p><a href="../Page/开闭原则.md" title="wikilink">开闭原则</a></p></td>
<td><p>认为“软件体应该是对于扩展开放的，但是对于修改封闭的”的概念。</p></td>
</tr>
<tr class="odd">
<td><p>L</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/里氏替换原则" title="wikilink">里氏替换原则</a></p></td>
<td><p>认为“程序中的对象应该是可以在不改变程序正确性的前提下被它的子类所替换的”的概念。 参考<a href="../Page/契约式设计.md" title="wikilink">契约式设计</a>。</p></td>
</tr>
<tr class="even">
<td><p>I</p></td>
<td><p><a href="../Page/接口隔离原则.md" title="wikilink">接口隔离原则</a></p></td>
<td><p>认为“多个特定客户端接口要好于一个宽泛用途的接口”[7] 的概念。</p></td>
</tr>
<tr class="odd">
<td><p>D</p></td>
<td><p><a href="../Page/依赖反转原则.md" title="wikilink">依赖反转原则</a></p></td>
<td><p>认为一个方法应该遵从“依赖于抽象而不是一个实例”[8] 的概念。<br />
<a href="../Page/依赖注入.md" title="wikilink">依赖注入是该原则的一种实现方式</a>。</p></td>
</tr>
</tbody>
</table>

## 参考

### 基本概念以及相关主题

  - [自适应软件开发](https://zh.wikipedia.org/wiki/自适应软件开发 "wikilink")
  - [敏捷软件开发](../Page/敏捷软件开发.md "wikilink")
  - [代码复用](../Page/代码复用.md "wikilink")
  - [程序设计](../Page/程序设计.md "wikilink")
  - [面向对象程序设计](../Page/面向对象程序设计.md "wikilink")
      - [继承
        (计算机科学)](https://zh.wikipedia.org/wiki/继承_\(计算机科学\) "wikilink")
  - [奥卡姆剃刀](../Page/奥卡姆剃刀.md "wikilink")

### 设计和开发原则

  - [不要重复你自己](https://zh.wikipedia.org/wiki/不要重复你自己 "wikilink")
  - [GRASP
    (面向对象设计)](https://zh.wikipedia.org/wiki/GRASP_\(面向对象设计\) "wikilink")
  - [KISS原则](../Page/KISS原则.md "wikilink")

## 引用

<references/>

[Category:軟體設計](https://zh.wikipedia.org/wiki/Category:軟體設計 "wikilink")
[Category:面向对象的程序设计](https://zh.wikipedia.org/wiki/Category:面向对象的程序设计 "wikilink")

1.  [“SOLID Object-Oriented
    Design”](http://goruco2009.confreaks.com/30-may-2009-15-40-solid-object-oriented-design-sandi-metz.html)
    , Sandi Metz (Duke University), Talk given at the 2009 Gotham
    [Ruby](https://zh.wikipedia.org/wiki/Ruby_\(programming_language\) "wikilink")
    Conference in May, 2009. Last verified 2009-01-15.

2.  [“Principles Of
    OOD”](http://butunclebob.com/ArticleS.UncleBob.PrinciplesOfOod),
    [Robert C.
    Martin](https://zh.wikipedia.org/wiki/Robert_C._Martin "wikilink")
    (“Uncle Bob”), butunclebob.com, Last verified 2009-01-14. (Note
    the “first five principles”, though the acronym is not used in this
    article.) Dates back to at least 2003.

3.  [“Getting a SOLID
    start.”](http://blog.objectmentor.com/articles/2009/02/12/getting-a-solid-start)
    , [Robert C.
    Martin](https://zh.wikipedia.org/wiki/Robert_C._Martin "wikilink")
    (“Uncle Bob”), objectmentor.com. Last verified 2009-01-14.

4.
5.
6.  [“Introducing SOLID Object-Oriented Design Principles and Microsoft
    Unity”](http://nonprofits.accesscomm.ca/springseminar/nug/Introducing_SOLID.ppt),
    Uwe Schmitz, Presentation given at the Regina .NET User Group in
    May, 2009. Last verified 2009-01-14.

7.  [“Design Principles and Design
    Patterns”](http://www.objectmentor.com/resources/articles/Principles_and_Patterns.pdf),
    [Robert C.
    Martin](https://zh.wikipedia.org/wiki/Robert_C._Martin "wikilink")
    (“Uncle Bob”), objectmentor.com. Last verified 2009-01-14.

8.