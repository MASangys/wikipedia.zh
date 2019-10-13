{{ Infobox Software | name = jOOQ | logo = | screenshot = | caption = | developer = Data Geekery GmbH | status = Active | latest release version = 3.3.0 | latest release date =  | latest preview version = | latest preview date = | operating system = [跨平台](https://zh.wikipedia.org/wiki/跨平台 "wikilink") | platform = [Java](https://zh.wikipedia.org/wiki/Java平台 "wikilink") | programming language = [Java](../Page/Java.md "wikilink") | genre = [对象关系映射](../Page/对象关系映射.md "wikilink") | license = Dual-licensed: [ASL 2.0](../Page/Apache许可证.md "wikilink") and commercial | website = <http://www.jooq.org> }} **面向Java对象查询**（，[縮寫](../Page/縮寫.md "wikilink")：**JOOQ**），是一个轻量级的JAVA数据库映射类库。它实现了[Active Record](../Page/Active_Record.md "wikilink")，同时面向“关系”和“对象”提供[领域特定语言](../Page/领域特定语言.md "wikilink")以构造查询语句。

## 编程范式

jOOQ主张，在任何数据库集成中，都应首先考虑发挥[SQL](../Page/SQL.md "wikilink")的作用。这样一来，就不必再引入新的查询语言，而只是通过jOOQ对象以及依照数据库架构自动生成的代码来创建普通的SQL。jOOQ通过[JDBC来完成底层的SQL查询](https://zh.wikipedia.org/wiki/JDBC "wikilink")。 与诸如[Hibernate](../Page/Hibernate.md "wikilink")等通常[ORM类库不同的是](https://zh.wikipedia.org/wiki/ORM "wikilink")，jOOQ并不提供过多的功能，复杂性也不高，它只是提供了JDBC之上更便捷的抽象层封装而已。

## 代码范例

嵌套查询一个起了别名的表

``` sql
  -- 选取已售罄书籍的作者
  SELECT * FROM AUTHOR a
        WHERE EXISTS (SELECT 1
                   FROM BOOK
                  WHERE BOOK.STATUS = 'SOLD OUT'
                    AND BOOK.AUTHOR_ID = a.ID);
```

等价的jOOQ

``` java
  // 在Select语句中使用别名
  create.selectFrom(AUTHOR.as("a"))
        .where(exists(selectOne()
                     .from(BOOK)
                     .where(BOOK.STATUS.equal(BOOK_STATUS.SOLD_OUT))
                     .and(BOOK.AUTHOR_ID.equal(a.ID))));
```

## 详见

  - [Hibernate](../Page/Hibernate.md "wikilink")
  - [MyBatis](../Page/MyBatis.md "wikilink")
  - [Ebean](https://zh.wikipedia.org/wiki/Ebean "wikilink")
  - [对象关系映射软件列表](../Page/对象关系映射软件列表.md "wikilink")
  - [SQL](../Page/SQL.md "wikilink")

## 外部链接

  - [jOOQ Home](http://www.jooq.org)
  - [JSR-341](http://java.net/projects/el-spec/pages/CollectionOperations)
  - [JaQu](http://www.h2database.com/html/jaqu.html)
  - [Linq4j](https://github.com/julianhyde/linq4j)
  - [Quaere](https://web.archive.org/web/20140131202006/http://quaere.codehaus.org/)
  - [QueryDSL](http://www.querydsl.com)

[Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink") [Category:Java企业平台](https://zh.wikipedia.org/wiki/Category:Java企业平台 "wikilink")