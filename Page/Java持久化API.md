**Java 持久化 API** (**JPA**)是一个 [Java](../Page/Java.md "wikilink") [应用程序接口](../Page/应用程序接口.md "wikilink") 规范，描述了使用 [Java标准版平台](https://zh.wikipedia.org/wiki/Java_SE "wikilink")（Java SE） 和 [Java企业版平台](../Page/Jakarta_EE.md "wikilink")（Java EE）的应用中的 [关系数据](../Page/Jakarta_EE.md "wikilink") 的管理。

[持久化](https://zh.wikipedia.org/wiki/:en:Persistence_\(computer_science\) "wikilink")，在这里包括三个层面的意思：

  - [API](../Page/应用程序接口.md "wikilink") 本身，定义在 javax.persistence 包`内`
  - Java持久化查询语言 (JPQL)
  - 对象/关系 元数据

JPA 的 [参考实现](https://zh.wikipedia.org/wiki/:en:Reference_implementation "wikilink") 是 [EclipseLink](https://zh.wikipedia.org/wiki/:en:EclipseLink "wikilink")。

## 历史背景

2006年5月11号，JPA 1.0 规范作为 JCP JSR 220 的一部分最终被发布。JPA 2.0 规范，在2009年12月发布（Java EE 6 平台，依赖于 JPA 2.0。） JPA 2.1 规范，在2013年4月22日发布（Java EE 7 平台，依赖于 JPA 2.1\[1\]。）

## 实体

持久化实体是一个轻量级的 Java 类，其状态通常持久地保存到关系数据库的表中。 这种实体的实例对应于表中的各个行。 实体之间通常有关系，这些关系通过对象/关系元数据表示。 可以在实体类文件中直接使用注释来指定这种关系，也可以在随应用程序分发的单独XML描述文件中指定。

## Java 持久化查询语言（JPQL）

Java持久化查询语言 （JPQL）对存储在关系数据库中的实体进行查询。查询在语法上类似于SQL查询，但是操作的是实体对象而不是直接对数据库表进行操作。

## 动机

在引入EJB 3.0规范之前，许多企业级Java开发人员使用由持久化框架（例如Hibernate）或数据访问对象（DAO）提供的轻量级持久化对象，来代替实体bean（EJB的一种）。 这是因为在以前的EJB规范中，实体bean需要太多复杂的代码和繁重的资源占用，并且由于bean和DAO对象或持久化框架之间的源代码中的互连和依赖性，它们只能在Java EE应用程序服务器中使用。 因此，最初在第三方持久性框架中提供的许多功能都被合并到Java Persistence API中，并且从2006年开始，像Hibernate（版本3.2）和TopLink Essentials这样的项目已经实现Java Persistence API规范。

## 相关技术

### 企业 JavaBeans（EJB）

EJB 3.0规范（本身是Java EE 5平台的一部分）包含Java 持久化 API的定义。 无论如何，终端用户不需要EJB容器或Java EE应用程序服务器即可运行使用此持久性API的应用程序。\[2\] Java 持久化 API的未来版本将在单独的JSR和规范中定义，而不是在EJB JSR /规范中定义。

Java 持久化 API取代了EJB 2.0 CMP（持久化管理容器）的持久性解决方案

### Java数据对象的API

Java 持久化 API作为统一Java Data Objects API和EJB 2.0容器管理持久性（CMP）API的一部分来开发。截至2009年，支持这些API的大多数产品都支持Java 持久化 API。

Java 持久化 API仅为关系数据库管理系统提供持久化特性。也就是说，JPA专注于对象关系映射（ORM）（请注意，除了关系数据库之外，还有JPA提供程序支持其他数据库模型，但这超出了JPA的设计范围）。有关JPA角色的说明，请参阅JPA 2规范第1节简介，其中非常清楚地说明“这项工作的技术目标是为Java应用程序开发人员提供一个对象/关系映射工具，使用Java领域模型来管理关系数据库。”

Java 数据对象规范支持ORM，以及对其他类型的数据库模型的持久化，例如平面文件数据库和NoSQL数据库，包括文档数据库，图形数据库，以及字面上任何其他可想到的数据存储。

### 服务数据对象 API

Java 持久化 API的设计者旨在提供关系持久化，其中许多关键领域来自对象关系映射工具，如Hibernate和TopLink。Java 持久化 API改进并取代了EJB 2.0，其体现在EJB 3.0中。服务数据对象（SDO）API（JSR 235）与Java 持久化 API有着截然不同的目标，被认为是互补的。\[3\]\[4\] SDO API专为面向服务的体系结构，多种数据格式而非关系数据和多种编程语言而设计。JCP 管理SDO API的Java版本; SDO API的C ++版本通过OASIS进行管理。

### Hibernate

Hibernate为Java提供了一个开源的对象关系映射框架。版本3.2及更高版本提供了Java 持久化 API的实现。Gavin King创立了Hibernate项目。\[5\]他代表JBoss参加JSR 220，这是负责开发JPA的JCP专家组。\[6\]这引发了围绕JPA和Hibernate之间关系的持续争议和猜测。Sun Microsystems表示\[7\]，这些想法来自几个框架，包括Hibernate和Java 数据对象。

### Spring Data JPA

抽象存储库的实现是Java应用程序框架Spring的领域驱动设计的关键构建块。透明地支持所有可用的JPA实现，并支持CRUD操作以及方便地执行数据库查询。

## JPA 2.0

2007年7月，JPA 2.0 在JCP的JSR 317请求中作为新版本开发。2009年12月10日，JPA 2.0被批准为最终正式标准。JPA 2.0的重点是提供一些流行的ORM供应商中存在的特性，但在JPA 1.0中不能获得一致认可。

主要特性包括：

  - 扩大对象关系功能的映射
      - 支持内嵌对象的收集，通过多对一的关系映射来连接ORM
      - 有序列表
      - 访问类型的组合
  - 一种标准查询API
  - 标准化的 SQL提示
  - 标准化的附加元数据，以支持DDL生成
  - 支持验证
  - 支持共享对象的高速缓存。

支持 JPA 2.0 的供应商:

  - Batoo JPA
  - DataNucleus (formerly JPOX)
  - EclipseLink (formerly [Oracle TopLink](../Page/TopLink.md "wikilink"))
  - [IBM](../Page/IBM.md "wikilink"), for [WebSphere Application Server](../Page/IBM_WebSphere_Application_Server.md "wikilink")\[8\]
  - [JBoss](../Page/WildFly.md "wikilink") with [Hibernate](../Page/Hibernate.md "wikilink")
  - [Kundera](https://github.com/impetus-opensource/Kundera)
  - ObjectDB
  - OpenJPA
  - OrientDB from Orient Technologies
  - Versant Corporation JPA (not relational, object database)\[9\]

## JPA 2.1

2011年7月，JPA 2.1 在JCP的JSR 338请求中作为新版本开发。2013年5月22日，JPA 2.1被批准为最终正式标准。

主要特性包括：

  - 转换器-允许自定义的代码去装换不同的数据库和数据类型。
  - 标准Update/Delete-允许通过标准API批量更新和删除。
  - 实体图表-允许获取部分或合并对象。
  - JPQL/标准增强-算子查询，通用数据库的功能，Join 联合查询，TREAT 选项。
  - 模式生成
  - 存储过程，允许查询被定义为数据库的存储过程。

支持 JPA 2.1 的供应商:

  - DataNucleus
  - EclipseLink
  - Hibernate

## JPA 2.2

2017年，JPA 2.2 在JCP的JSR 338请求中作为维护版本发布开发。维护审查已于2017年6月19日获得批准。

主要特性包括：

  - 给所有有关的注释添加 @Repeatable
  - 允许所有 JPA 注释可用于元的注释。
  - 添加查询结果流处理能力
  - 允许AttributeConverters 的 CDI 注入
  - 支持Java8日期和时间类型

支持 JPA 2.2 的供应商:

  - DataNucleus
  - EclipseLink (from version 2.7)
  - [Hibernate](../Page/Hibernate.md "wikilink") (from version 5.3)

## JPA 未来工作

未来的JPA规范信息可在此处获得：

  - JPA Specification Mailing Lists 
  - JPA Specification JIRA

2015年11月，Linda DeMichiel在javaee-spec用户邮件中宣布Lukas Jungmann接任规范化主管。Linda的声明还表示，“计划在Java EE 8时间框架内为JPA 2.2做MR”。\[10\]\[11\]\[12\]

## 工具

  - NetBeans Jeddict
  - Eclipse JPA (Dali)

## 参见

  - .NET Persistence API (NPA)
  - [JDBC](../Page/Java数据库连接.md "wikilink")
  - [MyBatis](../Page/MyBatis.md "wikilink")
  - OpenXava
  - [pureQuery](../Page/IBM_DB2.md "wikilink")
  - [SAP NetWeaver Application Server](../Page/SAP_Web应用服务器.md "wikilink")
  - XQJ

## 参考文献

## 外部链接

### 一般信息

  - [Documentation for the final version of the EJB3 spec (called JSR220)](http://jcp.org/aboutJava/communityprocess/final/jsr220/index.html)
  - [GlassFish's Persistence page](http://glassfish.dev.java.net/javaee5/persistence/)
  - [JCP Persistence page](http://jcp.org/aboutJava/communityprocess/final/jsr317/index.html)

### 教程

  - [Java EE 6 Persistence API Javadoc](http://docs.oracle.com/javaee/6/api/javax/persistence/package-summary.html)
  - [Java EE 6 Persistence API tutorial](http://docs.oracle.com/javaee/6/tutorial/doc/bnbpy.html)
  - [Java EE 7 Persistence API Javadoc](http://docs.oracle.com/javaee/7/api/javax/persistence/package-summary.html)
  - [Java EE 7 Persistence API tutorial](http://docs.oracle.com/javaee/7/tutorial/partpersist.htm)
  - [JPA Tutorial by Prasad Kharkar](http://www.thejavageek.com/jpa-tutorials/)
  - [JPA Tutorial from Java Code Geeks](http://www.javacodegeeks.com/2015/02/jpa-tutorial.html)
  - [JPA Tutorial using OpenJPA as implementation](http://www.coderpanda.com/jpa-tutorial/)
  - [Persistence in the Java EE 5 tutorial](http://java.sun.com/javaee/5/docs/tutorial/doc/?wp406141&JavaEETutorialPartFour.html#wp996871)

[Category:含有冗余参数的引用的页面](https://zh.wikipedia.org/wiki/Category:含有冗余参数的引用的页面 "wikilink") [Category:Java企业平台](https://zh.wikipedia.org/wiki/Category:Java企业平台 "wikilink") [Category:Java规范请求](https://zh.wikipedia.org/wiki/Category:Java规范请求 "wikilink") [Category:对象关系映射](https://zh.wikipedia.org/wiki/Category:对象关系映射 "wikilink")

1.
2.  [Hibernate EntityManager: Java SE environments](http://docs.jboss.org/hibernate/entitymanager/3.5/reference/en/html_single/#architecture-javase)
    [Hibernate EntityManager: Obtaining an EntityManager in a Java SE environment](http://docs.jboss.org/hibernate/entitymanager/3.5/reference/en/html_single/#d0e980)
3.
4.
5.
6.
7.
8.
9.
10.
11. `|accessdate=`和`|access-date=`只需其一 ([帮助](https://zh.wikipedia.org/wiki/Help:引文格式1错误#redundant_parameters "wikilink"))
12.