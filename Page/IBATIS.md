{{ Infobox Software | name = Apache iBATIS | logo = | screenshot = | caption = | developer = [Apache Software Foundation](https://zh.wikipedia.org/wiki/Apache_Software_Foundation "wikilink") | status = Active | latest release version = | latest release date = | latest preview version = | latest preview date = | operating system = [Cross-platform](https://zh.wikipedia.org/wiki/Cross-platform "wikilink") | programming language = [Java](../Page/Java.md "wikilink"), [.NET](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink") and [Ruby](https://zh.wikipedia.org/wiki/Ruby_\(programming_language\) "wikilink") | genre = [Persistence Framework](https://zh.wikipedia.org/wiki/Persistence_Framework "wikilink") | license = [Apache License](https://zh.wikipedia.org/wiki/Apache_License "wikilink") 2.0 | website = <http://ibatis.apache.org> }}

**iBATIS**一词来源于“internet”和“abatis”的组合，是一个由Clinton Begin在2001年发起的[开放源代码](../Page/开放源代码.md "wikilink")项目。最初侧重于[密码](https://zh.wikipedia.org/wiki/密码 "wikilink")[软件](../Page/软件.md "wikilink")的开发，现在是一个基于[Java](../Page/Java.md "wikilink")的持久层框架。iBATIS提供的持久层框架包括[SQL](../Page/SQL.md "wikilink") Maps和Data Access Objects（[DAO](https://zh.wikipedia.org/wiki/DAO "wikilink")），同时还提供一个利用这个框架开发的JPetStore实例。 相对Hibernate和Apache OJB等“一站式”ORM解决方案而言，ibatis 是一种“半自动化”的ORM实现。iBATIS需要开发人员自己来写sql语句，这可以增加了程序的灵活性，在一定程度上可以作为ORM的一种补充。程序设计人员应该结合自己的项目的实际情况，来选择使用不同的策略。iBATIS和Hibernate都做了映射，但iBATIS是把实体类和sql语句之间建立了映射关系，这种策略可以允许开发人员自己来写合适的sql语句，而Hibernate在实体类和数据库之间建立了映射关系，sql对于开发人员是不可见的，对于那些数据量非常大的应用，无法去优化sql语句。所以在实际应用中，应该根据不同的应用场景，来选择适合自己的框架。

## 参见

  - [Hibernate](../Page/Hibernate.md "wikilink")
  - [Spring Framework](../Page/Spring_Framework.md "wikilink")
  - [myBatis](https://zh.wikipedia.org/wiki/myBatis "wikilink")

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink") [Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink") [Category:ORM](https://zh.wikipedia.org/wiki/Category:ORM "wikilink")