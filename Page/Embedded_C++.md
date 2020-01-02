> 本文内容由[Embedded C++](https://zh.wikipedia.org/wiki/Embedded_C++)转换而来。


**Embedded C++**是[嵌入式系统](../Page/嵌入式系统.md "wikilink")上使用的一种[C++](../Page/C++.md "wikilink")方言，由日本[CPU大廠](https://zh.wikipedia.org/wiki/CPU "wikilink")[NEC](https://zh.wikipedia.org/wiki/NEC "wikilink")、[日立](../Page/日立製作所.md "wikilink")、[富士通](../Page/富士通.md "wikilink")、[东芝](../Page/东芝.md "wikilink")于1996年提出，也可以缩写作**EC++**。提出这一方言的目的\[1\]是在保持C++语言[面向对象特性的同时](https://zh.wikipedia.org/wiki/面向对象 "wikilink")，尽可能减小代码、提升执行效率、简化[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")。

Embedded C++ 是C++的子集合。有某些C++的特性被移除：

  - [多重繼承](https://zh.wikipedia.org/wiki/多重繼承 "wikilink")
  - [虛擬基礎類別](../Page/虚继承.md "wikilink")
  - [執行期型態訊息](../Page/執行期型態訊息.md "wikilink")（typeid）
  - 新式C++轉型（static_cast, dynamic_cast, reinterpret_cast 和 const_cast）
  - **mutable** 型別
  - [命名空间](../Page/命名空间.md "wikilink")
  - [异常处理](../Page/异常处理.md "wikilink")
  - [模板](../Page/模板_\(C++\).md "wikilink")

有些编译器也允许在 Embedded C++ 中使用部分 ISO/ANSI C++ 的特性。\[2\]

這套語言並不被其他的 C++專家看好。特別是C++之父[比雅尼·史特勞斯特魯普](https://zh.wikipedia.org/wiki/比雅尼·史特勞斯特魯普 "wikilink") 稱，"To the best of my knowledge EC++ is dead (2004), and if it isn't it ought to be."\[3\] 事實上，Embedded C++的官方網站自2002年以後就沒再更新了。

## 注釋

<references/>

## 外部連結

  - [Official Embedded C++ Website](http://www.caravan.net/ec2plus/)
  - [Background and Objectives of the Embedded C++ Specification Development](http://www.caravan.net/ec2plus/objectives/object.html)
  - [Embedded C++: An Overview](https://web.archive.org/web/20081013110504/http://www.embedded.com/97/feat9712.htm)，by P.J. Plauger, Embedded Systems Programming, December 1997

[Category:C語言家族](https://zh.wikipedia.org/wiki/Category:C語言家族 "wikilink") [Category:C++語言家族](https://zh.wikipedia.org/wiki/Category:C++語言家族 "wikilink")

1.
2.
3.