**Active
Record**是一种[领域模型模式](../Page/领域模型.md "wikilink")，特点是一个模型类对应[关系型数据库中的一个表](../Page/关系型数据库.md "wikilink")，而模型类的一个实例对应表中的一行记录。Active
Record和[Row
Gateway十分相似](../Page/Row_Gateway.md "wikilink")，但前者是[领域模型](../Page/领域模型.md "wikilink")，后者是一种[数据源模式](../Page/数据源模式.md "wikilink")。[关系型数据库往往通过](../Page/关系型数据库.md "wikilink")[外键来表述实体关系](../Page/外键.md "wikilink")，Active
Record在数据源层面上也将这种关系映射为对象的关联和[聚集](../Page/聚集.md "wikilink")。在[Martin
Fowler](../Page/Martin_Fowler.md "wikilink")2003年出版的《企业应用架构模式》一书中详细叙述并命名了本模式。\[1\]

Active
Record适合非常简单的领域需求，尤其在[领域模型和数据库模型十分相似的情况下](../Page/领域模型.md "wikilink")。如果遇到更加复杂的领域模型结构（例如用到继承、策略的领域模型），往往需要使用分离数据源的领域模型，结合[Data
Mapper](../Page/Data_Mapper.md "wikilink")（[数据映射器](../Page/数据映射器.md "wikilink")）使用。

Active Record驱动框架一般兼有[ORM框架的功能](../Page/ORM.md "wikilink")，但Active
Record不是简单的ORM，正如和Row
Gateway的区别。著名的例子是[全栈](../Page/全栈.md "wikilink")（[Full
Stack](../Page/Full_Stack.md "wikilink")）Web开发框架[Ruby on
Rails](../Page/Ruby_on_Rails.md "wikilink")，其默认使用一个纯[Ruby写成的Active](../Page/Ruby.md "wikilink")
Record框架来驱动[MVC中的模型层](../Page/MVC.md "wikilink")。

## 著名的 Active Record 驱动框架

  - SQLObject (Python)
  - SQLAlchemy (Python)
  - Orator (Python)
  - Ruby on Rails ActiveRecord (Ruby)
  - Yii Framework ActiveRecord (PHP)
  - Castle ActiveRecord (.NET)
  - ActiveJDBC (Java)
  - JFinal (Java)

## 资料来源

## 外部链接

  - [Martin Fowler 对 Active Record
    的定义](http://martinfowler.com/eaaCatalog/activeRecord.html)

[Category:软件设计模式](https://zh.wikipedia.org/wiki/Category:软件设计模式 "wikilink")

1.