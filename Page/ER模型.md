**ER模型**，全称为**实体联系模型**、**实体关系模型**或**实体联系模式图（ERD）**（）由美籍华裔计算机科学家[陈品山发明](../Page/陈品山.md "wikilink")，是[概念数据模型的高层描述所使用的](https://zh.wikipedia.org/wiki/conceptual_schema "wikilink")[数据模型或](https://zh.wikipedia.org/wiki/数据模型 "wikilink")[模式图](https://zh.wikipedia.org/wiki/模式图 "wikilink")。

ER模型常用於信息系统设计中；比如它们在[概念结构设计阶段用来描述信息需求和](https://zh.wikipedia.org/wiki/概念结构设计 "wikilink")／或要存储在数据库中的信息的类型。但是[数据建模技术可以用来描述特定](../Page/数据建模.md "wikilink")[论域](https://zh.wikipedia.org/wiki/论域 "wikilink")（就是感兴趣的区域）的任何[本体](https://zh.wikipedia.org/wiki/本体 "wikilink")（就是对使用的术语和它们的联系的概述和分类）。在基于数据库的信息系统设计的情况下，在后面的阶段（通常叫做逻辑设计），概念模型要映射到逻辑模型如[关系模型上](../Page/关系模型.md "wikilink")；它依次要在物理设计期间映射到物理模型上。注意，有时这两个阶段被一起称为「物理设计」。

实体联系模式图（ERD）有一些约定。本文的余下部分描述经典概念，并且主要与概念建模有关。有一些概念更加典型的在逻辑和物理数据库设计中采用，包括[信息工程](https://zh.wikipedia.org/wiki/信息工程 "wikilink")、[IDEF1x](../Page/IDEF.md "wikilink")（ICAM
DEFinition
Language）和[空间建模](https://zh.wikipedia.org/wiki/空间数据库 "wikilink")。

## 常用符号

[erd-entity-relationship-example1.png](https://zh.wikipedia.org/wiki/File:erd-entity-relationship-example1.png "fig:erd-entity-relationship-example1.png")
[实体](https://zh.wikipedia.org/wiki/实体 "wikilink")（）表示一个离散对象。实体可以被（粗略地）认为是[名词](https://zh.wikipedia.org/wiki/名词 "wikilink")，如计算机、雇员、歌曲、数学定理。[關聯描述了两个或更多实体相互如何关联](https://zh.wikipedia.org/wiki/關聯 "wikilink")。联系可以被（粗略地）认为是[动词](https://zh.wikipedia.org/wiki/动词 "wikilink")，如：在公司和计算机之间的拥有关联，在雇员和部门之间的管理关联，在演员和歌曲之间的表演关联，在数学家和定理之间的证明关联。实体绘制为矩形，联系绘制为菱形。

[Erd-entity-with-attribute.svg](https://zh.wikipedia.org/wiki/File:Erd-entity-with-attribute.svg "fig:Erd-entity-with-attribute.svg")
[erd-relationship-with-attribute.png](https://zh.wikipedia.org/wiki/File:erd-relationship-with-attribute.png "fig:erd-relationship-with-attribute.png")
实体和联系都可以有属性，如雇员实体可以有一个[社会保障号码属性](https://zh.wikipedia.org/wiki/社会保障号码 "wikilink")（在美国）；证明关联可以有一个日期属性。属性绘制为椭圆形并通过一条线与所属的实体相连。

[Erd-id-as-primary-key.png](https://zh.wikipedia.org/wiki/File:Erd-id-as-primary-key.png "fig:Erd-id-as-primary-key.png")
每个实体（除非是[弱实体](https://zh.wikipedia.org/wiki/弱实体 "wikilink")）都必须有一个唯一标识属性的最小化集合。这个集合叫做实体的[主键](https://zh.wikipedia.org/wiki/主键 "wikilink")。

实体联系图不展示单一的实体或联系的单一的实例。它们展示实体集合和联系集合（分别显示为矩形和菱形），如特定的歌曲是实体。在数据库中所有歌曲的搜集是一个实体集合。在[安德魯·懷爾斯及](../Page/安德魯·懷爾斯.md "wikilink")[費馬最後定理之间的证明联系是一个单一联系](https://zh.wikipedia.org/wiki/費馬最後定理 "wikilink")。所有这种数学家-定理联系的集合是一个联系集合。

线条绘制于实体集合和它们所参与的联系集合之间。如果在实体集合中所有实体都必须在联系集合中参与一个联系，则绘制粗线。这叫做[参与约束](https://zh.wikipedia.org/wiki/参与约束 "wikilink")。如果实体集合的每个实体可以在联系集合中参与最多一个联系，则绘制从这个实体集合到联系集合的一个箭头。这叫做[键约束](https://zh.wikipedia.org/wiki/键约束 "wikilink")。要指示在实体集合中每个实体都必须精确的参与一个联系，则绘制粗箭头。

使用[关联实体来解决有多对多联系的两个实体的问题](https://zh.wikipedia.org/wiki/关联实体 "wikilink")
[1](https://web.archive.org/web/20050907061628/http://infocom.cqu.edu.au/Courses/spr2000/95169/Extra_Examples/ERD.htm)。

[一元联系](https://archive.is/20040730233837/http://www.utexas.edu/courses/mis325/faq/faq034.htm)
- 一元联系是在一个单一的表格的行之间的联系。
[ER_Diagram_MMORPG.png](https://zh.wikipedia.org/wiki/File:ER_Diagram_MMORPG.png "fig:ER_Diagram_MMORPG.png")

這是個很方便的程式。

## 不常用符号

弱实体是不能用它自己的属性唯一标识的实体，所以必须用它自己的属性和与之有关的实体的主键二者作为它的主键。弱实体集合指示为粗矩形（实体），通过一个粗箭头把它连接到一个粗菱形（联系）上。

有时两个实体是一个更一般的实体类型的更特殊化的子类型。例如，程序员和营销员都是软件公司的雇员的类型。要指示这种关联，绘制其中带有 "ISA"
的三角形。[超类是连接到顶点上而两个](https://zh.wikipedia.org/wiki/超类 "wikilink")（或更多）[子类连接到底边上](https://zh.wikipedia.org/wiki/子类 "wikilink")。

最后，通过[聚集](https://zh.wikipedia.org/wiki/聚集 "wikilink")，一个联系和所有它的参与实体集合可以被当作一个单一的实体集合，目的是让它可以参与另一个关联。这可以指示为在所有聚集的实体和联系之外绘制一个虚矩形。

## 分类

实体联系的模型可以依据是否只允许二元联系而分类为 BERM（二元实体关联模型）和
GERM（一般实体联系模型）。二元联系是在两个实体之间的联系。所以，在
GERM 中在在三个或更多实体之间的联系也是允许的。

## 参见

  - [实体](https://zh.wikipedia.org/wiki/实体 "wikilink")
  - [关系模型](../Page/关系模型.md "wikilink")
  - [统一建模语言](../Page/统一建模语言.md "wikilink")
  - [数据结构图](https://zh.wikipedia.org/wiki/数据结构图 "wikilink")

## 引用

  - Peter P. Chen, The Entity-Relationship Model - Toward a Unified View
    of Data. ACM Transactions on Database Systems (TODS) Volume 1 Number
    1: pp
    9-36（1976）https://dl.acm.org/citation.cfm?id=320440\&dl=ACM\&coll=DL\[[https://dl.acm.org/citation.cfm?id=320440\&dl=ACM\&coll=DL\]需付費取得密碼，才能查看全文](https://dl.acm.org/citation.cfm?id=320440&dl=ACM&coll=DL%5D需付費取得密碼，才能查看全文)
  - 本文是计算机领域被引用最多的论文之一。 在对 1,000
    多个计算机科学教授做的一次新近的调查中，它被选举为在计算机科学中最有影响的论文之一。例如，在
    [DBLP](https://zh.wikipedia.org/wiki/DBLP "wikilink")：http://dblp.uni-trier.de/
    [2](http://dblp.uni-trier.de/) 所列出的引用。

## 外部链接

  - [Dia](http://live.gnome.org/Dia) - 绘制 ER 图的开源软件
  - [Gershwin download at CSE2132 from Monash
    University](https://web.archive.org/web/20051124081450/http://www.csse.monash.edu.au/courseware/cse2132/gwin30495.exe)
    - Gershwin 是 [Monash
    University](https://zh.wikipedia.org/wiki/Monash_University "wikilink")
    开发的实体联系建模工具。
  - 陈品山在[路易斯安那州立大学的主页](https://zh.wikipedia.org/wiki/路易斯安那州立大学 "wikilink")
    <http://bit.csc.lsu.edu/~chen/chen.html>
      - [Origins of ER model
        pioneering](http://bit.csc.lsu.edu/~chen/pdf/Chen_Pioneers.pdf)
      - [more deepened analysis of Chinese
        language](http://bit.csc.lsu.edu/~chen/pdf/ER_C.pdf)
      - [The Entity-Relationship Model--Toward a Unified View of
        Data](https://web.archive.org/web/20051001074343/http://bit.csc.lsu.edu/~chen/pdf/erd.pdf)
  - [IDEF1X](https://web.archive.org/web/20031008072520/http://idbms.navo.navy.mil/DataModel/IDEF1X.html)
  - [DB Visual
    Architect](https://web.archive.org/web/20050329031547/http://www.visual-paradigm.com/dbva.php)

[Category:数据库](https://zh.wikipedia.org/wiki/Category:数据库 "wikilink")
[Category:数据建模](https://zh.wikipedia.org/wiki/Category:数据建模 "wikilink")
[Category:图表](https://zh.wikipedia.org/wiki/Category:图表 "wikilink")
[Category:建模语言](https://zh.wikipedia.org/wiki/Category:建模语言 "wikilink")