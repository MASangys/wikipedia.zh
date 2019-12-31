> 本文内容由[ST类型论](https://zh.wikipedia.org/wiki/ST类型论)转换而来。


\-{下面}-的系统是Mendelson的（1997: 289-93）**ST**。[量化的域被划分成上升的类型层次](https://zh.wikipedia.org/wiki/论域 "wikilink")，带有所有的[个体都被指派了一个类型](https://zh.wikipedia.org/wiki/个体 "wikilink")。量化的变量确立范围只在一个类型上；所以底层逻辑是[一阶逻辑](../Page/一阶逻辑.md "wikilink")。**ST**是"简单的"（相对于《[数学原理](../Page/数学原理.md "wikilink")》中的类型论）主要是因为任何[关系的](../Page/关系_\(数学\).md "wikilink")[域和](../Page/定义域.md "wikilink")[陪域的所有成员都必须是同一个类型的](https://zh.wikipedia.org/wiki/陪域 "wikilink")。

有一个最低的类型，它的个体没有成员并且是次最低类型的成员。最低类型的个体对应于特定集合论中的[基本元素](https://zh.wikipedia.org/wiki/基本元素 "wikilink")（urelement）。每个类型都有一个更高的类型，类似于在[皮亚诺算术中](https://zh.wikipedia.org/wiki/皮亚诺算术 "wikilink")[后继者](https://zh.wikipedia.org/wiki/后继函数 "wikilink")。**ST**对是否有极大类型保持沉默，形成[超限数](../Page/超限数.md "wikilink")个类型没有困难。这些因素，和回应于皮亚诺公理，使它方便和习惯于指派[自然数](../Page/自然数.md "wikilink")到每个类型，开始于0给最低类型。这个类型论不要求自然数的先决定义。

**ST**的特有符号是加右上角标的变量和中缀\(\in\)。在任何给定的公式中，无角标的变量都有相同的类型，而有角标的变量（\(x'\)）取值于更高的类型上。**ST**的原子公式与两种形式，\(x=y\)（[同一性](https://zh.wikipedia.org/wiki/同一性 "wikilink")）和\(y \in x'\)。[中缀符号](https://zh.wikipedia.org/wiki/中缀 "wikilink")\(\in\)暗示了预想的[释义](../Page/模型论.md "wikilink")，[集合成员关系](https://zh.wikipedia.org/wiki/集合 "wikilink")。

出现在同一性定义和外延和概括公理中所有变量都取值于连贯的两个类型之上。一个"低层"类型和另一个"高层"类型。取值于高层类型上的变量加角标；而取值于低层类型的变量不加。**ST**的一阶公式化排除在类型上的量化。所以每对连续的类型都要求它自己的外延和概括公理，如果“外延”和“概括”公理采用[公理模式的方式取值于类型上就是可能的](https://zh.wikipedia.org/wiki/公理模式 "wikilink")。

[同一性定义](https://zh.wikipedia.org/wiki/同一性 "wikilink")：\(x=y \Leftrightarrow \forall z' [x \in z' \leftrightarrow y \in z']\)。

**[外延](../Page/外延公理.md "wikilink")**[公理模式](https://zh.wikipedia.org/wiki/公理模式 "wikilink")：\(\forall x[x \in y' \leftrightarrow x \in z'] \Rightarrow y'=z'\)。

设Φ(*x*)表示包含[自由变量](https://zh.wikipedia.org/wiki/自由变量 "wikilink")*x*的任何[一阶公式](../Page/一阶逻辑.md "wikilink")。

**概括**[公理模式](https://zh.wikipedia.org/wiki/公理模式 "wikilink")：\(\exists z' \forall x[x \in z' \leftrightarrow \Phi(x)]\)。

*备注*:相同类型的元素的任何搜集都可以形成更高类型的一个对象。概括公理有关于\(\Phi (x)\)也有关于类型。

**[无穷](../Page/无穷公理.md "wikilink")**[公理](../Page/公理.md "wikilink")。存在着在最低层类型的个体之上的非空[二元关系](../Page/二元关系.md "wikilink")*R*，它是[反自反的](../Page/自反关系.md "wikilink")、[传递的和](https://zh.wikipedia.org/wiki/传递关系 "wikilink")[强连接的](https://zh.wikipedia.org/wiki/完全关系 "wikilink")（\(\forall x ,y [xRy \lor yRx]\)）。

*备注*:无穷公理是**ST**的唯一真正的，并且本质上完全是数学的公理。*R*也是一个严格[全序](../Page/全序关系.md "wikilink")，带有同一的[域和](../Page/定义域.md "wikilink")[陪域](https://zh.wikipedia.org/wiki/陪域 "wikilink")。如果0被指派给最低层类型（依次1是对（双元素集合，单元素集合），2是有序对），*R*的类型是3。这个公理强迫一个无穷集合的存在，因为只有*R*的（陪）域是[无穷](../Page/无穷.md "wikilink")的时候它才可以被满足。如果关系以[有序对](../Page/有序对.md "wikilink")的方式定义，这个公理要求有序对的先决定义；**ST**接受Kuratowski的定义。文献没有给出[ZFC和其他集合论的](https://zh.wikipedia.org/wiki/ZFC "wikilink")[无穷公理](../Page/无穷公理.md "wikilink")（存在归纳集合）不能结合于**ST**的理由。

**ST**披露了类型论可以制定得何其类似于[公理化集合论](../Page/公理化集合论.md "wikilink")。而**ST**更加精致的[本体论](https://zh.wikipedia.org/wiki/本体论 "wikilink")，根源于现在所谓的“[集合的](https://zh.wikipedia.org/wiki/集合 "wikilink")[迭代](../Page/迭代.md "wikilink")构想”，导致了远比有着更简单的[本体论的常规集合论如](https://zh.wikipedia.org/wiki/本体论 "wikilink")[ZFC简单得多的](https://zh.wikipedia.org/wiki/ZFC "wikilink")[公理](../Page/公理.md "wikilink")（[模式](https://zh.wikipedia.org/wiki/模式 "wikilink")）。[公理化集合论](../Page/公理化集合论.md "wikilink")起步于类型论，但是它的公理、[本体论和术语不同于上面所述](https://zh.wikipedia.org/wiki/本体论 "wikilink")**ST**系统，还包括[新基础和](https://zh.wikipedia.org/wiki/新基础 "wikilink")[Scott-Potter集合论](https://zh.wikipedia.org/wiki/Scott-Potter集合论 "wikilink")。

## 参见

  - [类型论](../Page/类型论.md "wikilink")

## 参考文献

  - Mendelson, Elliot, 1997. *Introduction to Mathematical Logic*, 4th ed. Chapman & Hall.
  - W. Farmer, *The seven virtues of simple type theory*, Journal of Applied Logic, Vol. 6, No. 3. (September 2008), pp. 267–286.

[Category:类型论](https://zh.wikipedia.org/wiki/Category:类型论 "wikilink")