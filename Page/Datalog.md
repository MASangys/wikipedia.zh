**Datalog**是一种数据查询语言，专门设计与大型[关系数据库](../Page/关系数据库.md "wikilink")交互\[1\]，语法与[Prolog](../Page/Prolog.md "wikilink")相似。正如[SQL](../Page/SQL.md "wikilink")只是一个规范，[Transact-SQL](../Page/Transact-SQL.md "wikilink")、[PL-SQL](../Page/PL-SQL.md "wikilink")是其具体实现一样；Datalog也是一个规范，bddbddb\[2\]、 DES\[3\]、OverLog\[4\]、Deals\[5\]等都按照Datalog的语法实现了自己的语言，所以Datalog没有特定的执行环境（如[Java](../Page/Java.md "wikilink")之于[Java虚拟机](../Page/Java虚拟机.md "wikilink")，[Prolog](../Page/Prolog.md "wikilink")之于[SWI-Prolog](https://zh.wikipedia.org/wiki/SWI-Prolog "wikilink")）。

## 起源

二十世纪九十年代，为了解决更多的问题，带有[人工智能](../Page/人工智能.md "wikilink")的系统通常要携带一个自行开发的数据库。这样的数据库非常简陋，不能数据共享与恢复，也不能在其他人工智能系统间通用。为了降低智能系统与数据库之间的[耦合](https://zh.wikipedia.org/wiki/耦合性_\(计算机科学\) "wikilink")（智能系统可以使用现有的成熟的数据库，并方便地从一种数据库切换到另一种数据库），需要一种在数据库与智能系统间交互的语言。于是Datalog应运而生。\[6\]

发明了Datalog这个名称\[7\]。

## 与Prolog的异同

Datalog的语法是[Prolog](../Page/Prolog.md "wikilink")的子集；但是Datalog的语义与Prolog不同。

Prolog程序里的**事实**和**规则**的出现顺序决定了执行结果。很可能两条规则的出现顺序对换，程序就陷入死循环。Datalog程序对事实和规则的出现顺序不做要求，两条规则的出现顺序对换，执行结果仍然是一样的。

## 参考资料

  -
[Category:邏輯編程語言](https://zh.wikipedia.org/wiki/Category:邏輯編程語言 "wikilink") [Category:数据查询语言](https://zh.wikipedia.org/wiki/Category:数据查询语言 "wikilink")

1.

2.

3.

4.

5.

6.
7.