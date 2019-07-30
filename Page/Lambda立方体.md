[有框](https://zh.wikipedia.org/wiki/File:Lambda_cube.png "fig:有框") 在[数理逻辑](../Page/数理逻辑.md "wikilink")和[类型论](../Page/类型论.md "wikilink")中，**λ-立方**是探索** **[Coquand](https://zh.wikipedia.org/wiki/Coquand "wikilink") 的[构造演算](../Page/构造演算.md "wikilink")中细化轴的框架，以[简单类型 λ-演算](../Page/简单类型λ演算.md "wikilink")（在立方图中写作 λ→）作为原点放在立方体的顶点，而构造演算（即高阶依赖类型化 λ-演算，在图中写作 λPω）则是其空间对顶点。立方体的每个轴都表示一种新的抽象形式：

  - 值依赖类型，或[多态](../Page/多型_\(计算机科学\).md "wikilink")。[系统F](../Page/系统F.md "wikilink")，即二阶λ-演算（图中写作 λ2）就是通过只加入此性质得到的。
  - 类型依赖类型，或[类型构造器](https://zh.wikipedia.org/wiki/型別構造器 "wikilink")。带类型构造器的[简单类型 λ-演算](../Page/简单类型λ演算.md "wikilink")（图中为λω）就是通过只加入此性质得到的。它与[系统F](../Page/系统F.md "wikilink")结合就产生了系统Fω（在图中写作不带下划线的λω）。
  - 类型依赖值，或[依赖类型](../Page/依赖类型.md "wikilink")。只加入此性质就得到了[λΠ](../Page/依赖类型.md "wikilink")（在图中写作λP），一种与[LF紧密相关的类型系统](../Page/逻辑框架.md "wikilink")。

所有的八种演算包含了最基本的抽象形式，值依赖值即[简单类型 λ-演算中的普通函数](../Page/简单类型λ演算.md "wikilink")。此立方中最丰富的演算即[构造演算](../Page/构造演算.md "wikilink")，它带有所有三种抽象。所有八种演算都是[强规范化的](https://zh.wikipedia.org/wiki/强规范化 "wikilink")。

然而[子类型](../Page/子类型.md "wikilink")并未展示在此立方中，尽管像\(F^\omega_{<:}\) 这样以[高阶有界量化闻名的](https://zh.wikipedia.org/wiki/高阶有界量化 "wikilink")，结合了子类型和多态的系统具有实际意义，它可被进一步推广为[有界类型构造器](https://zh.wikipedia.org/wiki/有界类型构造器 "wikilink")。进一步扩展到\(F^\omega_{<:}\)允许[纯函数对象的定义](https://zh.wikipedia.org/wiki/纯函数对象 "wikilink")；这些系统通常在λ-立方的论文发表后才被卡发出来。\(F^\omega_{<:}\)\[1\]

此立方的思想来源于Henk Barendregt (1991)。就此立方的所有角而言，[纯类型系统的框架涵盖了λ](https://zh.wikipedia.org/wiki/纯类型系统 "wikilink")-立方，其它一些系统也可表示为此通用框架的实例。\[2\] 此框架的出现比λ-立方早上几年。在 Barendregt 1991年的论文中，他也在此框架中定义了λ-立方的角。

Olivier Ridoux 在他的 Habilitation à diriger les recherches ''Lambda-Prolog de A à Z... ou presque ''中给出了此立方的一个截边角后的模版(p. 70) 的两种表示，一种将此立方表示为一个八面体，其中 8 个顶点以面代替，另一种将它表示为一个十二面体，其中 12 条棱则以面代替。

## 参见

  - Some of the systems included in the cube were first defined in Automath.
  - 同伦类型论

## 注记

## 参考来源

## 扩展阅读

  - Simon Peyton Jones and Erik Meijer, 1997. *[Henk: A Typed Intermediate Language](https://www.microsoft.com/en-us/research/wp-content/uploads/1997/01/henk.pdf)*

## 外部链接

  - [Barendregt's Lambda Cube](http://www.rbjones.com/rbjpub/logic/cl/tlc001.htm) in the context of pure type systems by Roger Bishop Jones

[Category:Lambda演算](https://zh.wikipedia.org/wiki/Category:Lambda演算 "wikilink") [Category:类型论](https://zh.wikipedia.org/wiki/Category:类型论 "wikilink")

1.  Pierce, 2002, chapters 31 and 32
2.  Pierce, 2002, p. 466