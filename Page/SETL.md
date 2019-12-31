> 本文内容由[SETL](https://zh.wikipedia.org/wiki/SETL)转换而来。


**SETL** （SET语言）是一种基于[数学](../Page/数学.md "wikilink")[集论的](https://zh.wikipedia.org/wiki/集论 "wikilink")[非常高阶编程语言](../Page/非常高阶编程语言.md "wikilink")。它最初由（Jack）Jacob T. Schwartz 于二十世纪六十年代末在[纽约大学](../Page/纽约大学.md "wikilink")[科朗数学研究所](../Page/科朗数学研究所.md "wikilink")开发。

## 设计

SETL提供两种基本的聚合数据类型： *无序集*和*序列* （后者也称为*元组* ）。 集合和元组的元素可以是任意类型，包括集合和元组本身。 *映射*是作为*对的*集合（即，长度为2的元组）提供的，并且可以具有任意的域和范围类型。 SETL中的原始操作包括集合成员资格，联合，交集和电源集构造等。

SETL提供使用[一阶谓词逻辑的](../Page/一阶逻辑.md "wikilink")[通用和](../Page/全称量化.md "wikilink")[存在量词构造的量化布尔表达式](../Page/存在量化.md "wikilink")。

SETL提供了几个[迭代器](../Page/迭代器.md "wikilink")，可以在聚合数据结构上生成各种循环。

## 例子

Print all prime numbers from 2 to N:

`   print([n in [2..N] | forall m in {2..n - 1} | n mod m > 0]);`

The notation is similar to [list comprehension](https://zh.wikipedia.org/wiki/list_comprehension "wikilink").

A factorial procedure definition:

`procedure factorial(n); -- calculates the factorial n!`
`  return if n = 1 then 1 else n * factorial(n - 1) end if;`
`end factorial;`

A more conventional SETL expression for factorial (n \> 0):

`*/[1..n]`

## 用途

在二十世纪七十年代，SETL 被移植到 BESM-6 ，ES EVM 和其他俄罗斯的计算机系统。

SETL 用于早期实现编程语言 [Ada](../Page/Ada.md "wikilink")，名为 NYU Ada / ED 翻译器。\[1\]这后来成为第一个经过验证的 Ada 实施，于 1983 年 4 月 11 日通过认证。\[2\]

根据[吉多·范罗苏姆](../Page/吉多·范罗苏姆.md "wikilink")的说法，“[Python](../Page/Python.md "wikilink") 的前身，[ABC](https://zh.wikipedia.org/wiki/ABC_\(程式語言\) "wikilink")，受到了 SETL 的启发 - 兰伯特梅尔滕斯在纽约大学的 SETL 小组工作了一年，然后才开始进行最终的 ABC 设计！”\[3\]

## 语言变种

*SET 语言 2*（SETL2）是SETL的一个不向后兼容的后继者，由纽约大学Courant数学科学研究所的柯克斯奈德于二十世纪八十年代后期创建。与其前身一样，它基于有限集的理论和符号，但也受到Ada语言的语法和风格的影响。

*交互式SET语言*（ISETL）是[离散数学](../Page/离散数学.md "wikilink")中使用的SETL变体。

## 参考

<references group="" responsive="1">

</references>

## 进一步阅读

  - Schwartz，Jacob T.，“将理论设定为程序规范和编程的语言”。 纽约大学Courant数学科学研究所，1970年。
  - Schwartz，Jacob T.，“关于编程，关于SETL项目的中期报告”，计算机科学系，Courant数学科学研究所，纽约大学（1973）。
  - Schwartz，Jacob T.，Dewar，RBK，Dubinsky，E。和Schonberg，E。， *Programming With Sets：An Introduction to SETL* ，1986。  [国际标准书号](https://zh.wikipedia.org/wiki/International_Standard_Book_Number "wikilink")   [0-387-96399-5](https://zh.wikipedia.org/wiki/Special:BookSources/0-387-96399-5 "wikilink") 。

## 外部链接

  - ，GNU SETL

  - [*在SETL*和其他东西*上编程*](http://www.settheory.com)

[Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.
2.
3.  [Python-Dev：SETL（是：关于范围文字的不冷不热）](http://mail.python.org/pipermail/python-dev/2000-August/008881.html)