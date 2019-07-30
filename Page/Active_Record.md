**Active Record**是一种[领域模型模式](https://zh.wikipedia.org/wiki/领域模型 "wikilink")，特点是一个模型类对应[关系型数据库中的一个表](https://zh.wikipedia.org/wiki/关系型数据库 "wikilink")，而模型类的一个实例对应表中的一行记录。Active Record和[Row Gateway十分相似](https://zh.wikipedia.org/wiki/Row_Gateway "wikilink")，但前者是[领域模型](https://zh.wikipedia.org/wiki/领域模型 "wikilink")，后者是一种[数据源模式](https://zh.wikipedia.org/wiki/数据源模式 "wikilink")。[关系型数据库往往通过](https://zh.wikipedia.org/wiki/关系型数据库 "wikilink")[外键来表述实体关系](https://zh.wikipedia.org/wiki/外键 "wikilink")，Active Record在数据源层面上也将这种关系映射为对象的关联和[聚集](https://zh.wikipedia.org/wiki/聚集 "wikilink")。在[Martin Fowler](https://zh.wikipedia.org/wiki/Martin_Fowler "wikilink")2003年出版的《企业应用架构模式》一书中详细叙述并命名了本模式。\[1\]

Active Record适合非常简单的领域需求，尤其在[领域模型和数据库模型十分相似的情况下](https://zh.wikipedia.org/wiki/领域模型 "wikilink")。如果遇到更加复杂的领域模型结构（例如用到继承、策略的领域模型），往往需要使用分离数据源的领域模型，结合[Data Mapper](https://zh.wikipedia.org/wiki/Data_Mapper "wikilink")（[数据映射器](https://zh.wikipedia.org/wiki/数据映射器 "wikilink")）使用。

Active Record驱动框架一般兼有[ORM框架的功能](https://zh.wikipedia.org/wiki/ORM "wikilink")，但Active Record不是简单的ORM，正如和Row Gateway的区别。著名的例子是[全栈](https://zh.wikipedia.org/wiki/全栈 "wikilink")（[Full Stack](https://zh.wikipedia.org/wiki/Full_Stack "wikilink")）Web开发框架[Ruby on Rails](../Page/Ruby_on_Rails.md "wikilink")，其默认使用一个纯[Ruby](../Page/Ruby.md "wikilink")写成的Active Record框架来驱动[MVC](../Page/MVC.md "wikilink")中的模型层。

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

  - [Martin Fowler 对 Active Record 的定义](http://martinfowler.com/eaaCatalog/activeRecord.html)

[Category:软件设计模式](https://zh.wikipedia.org/wiki/Category:软件设计模式 "wikilink")

1.