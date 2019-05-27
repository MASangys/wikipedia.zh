**Spring框架**是 [Java](../Page/Java.md "wikilink")
平台的一个[开源的全栈](../Page/开放源代码.md "wikilink")（Full-stack）[应用程序框架和](https://zh.wikipedia.org/wiki/软件框架 "wikilink")[控制反转容器实现](../Page/控制反转.md "wikilink")，一般被直接称为
Spring。该框架的一些核心功能理论上可用于任何 Java 应用，但 Spring
还为基于[Java企业版平台构建的](../Page/Jakarta_EE.md "wikilink")
Web 应用提供了大量的拓展支持。虽然 Spring 没有直接实现任何的编程模型，但它已经在 Java
社区中广为流行，基本上完全代替了[企业级JavaBeans](../Page/EJB.md "wikilink")（EJB）模型。

Spring框架以 [Apache License
2.0](https://zh.wikipedia.org/wiki/Apache_License_2.0 "wikilink")
开源许可协议的形式发布，该框架最初由 Rod Johnson 以及 Juergen Hoeller 等人开发。

## 版本历史

第一版由  开发，并在2002年10月发布在 *Expert One-on-One J2EE Design and Development*
一书中。2003年6月，Spring Framework 第一次发布在 [Apache 2.0
许可证下](../Page/Apache许可证.md "wikilink")。2004年3月，发布了里程碑的版本1.0，2004年9月以及2005年3月，又发布了新的里程碑版本。2006年，Spring
Framework 获得了 [Jolt
生产力奖](https://zh.wikipedia.org/wiki/Jolt_Awards "wikilink") 和
[JAX 创新奖](https://zh.wikipedia.org/wiki/JAX_创新奖 "wikilink")。\[1\]\[2\]

2006年10月发布Spring 2.0，2007年11月 Spring 2.5，2009年12月 Spring 3.0，2011年
Spring 3.1，2013年11月 Spring 3.2.5，2013年12月发布了4.0版本。\[3\]值得注意的是，Spring 4.0
版本中增加了对 [Java SE](https://zh.wikipedia.org/wiki/Java_SE "wikilink") 8,
[Groovy](../Page/Groovy.md "wikilink") 2, [Java
EE](https://zh.wikipedia.org/wiki/Java_EE "wikilink") 7 的一些方面以及
[WebSocket](../Page/WebSocket.md "wikilink") 的支持。

2017年9月 Spring Framework 正式发布了 5.0 版本，此版本引入了 Spring
WebFlux，一个高性能、响应式、异步的 Web 框架。Spring 5.0
重点加强了对函数式编程、[响应式程序设计](../Page/响应式编程.md "wikilink")（reactive
programming）的支持能力，是一个非常大的进步。

## 核心功能模块

  - 强大的基于 [JavaBeans](../Page/JavaBeans.md "wikilink")
    的采用[控制反转](../Page/控制反转.md "wikilink")（Inversion of
    Control，IoC）原则的配置管理，使得应用程序的组建更加简易快捷。

<!-- end list -->

  - 一个可用于 [Java EE](https://zh.wikipedia.org/wiki/Java_EE "wikilink")
    等运行环境的核心
    [Bean](https://zh.wikipedia.org/wiki/Enterprise_Java_Beans "wikilink")[工厂](https://zh.wikipedia.org/wiki/虚拟工厂模式 "wikilink")。

<!-- end list -->

  - 数据库[事务的一般化抽象层](../Page/事务处理.md "wikilink")，允许声明式（Declarative）事务管理器，简化事务的划分使之与底层无关。

<!-- end list -->

  - 内建的针对 [JTA](../Page/Java事务API.md "wikilink") 和单个
    [JDBC](https://zh.wikipedia.org/wiki/Java_Database_Connectivity "wikilink")
    数据源的一般化策略，使Spring的事务支持不要求 [Java
    EE](https://zh.wikipedia.org/wiki/Java_EE "wikilink") 环境，这与一般的 JTA
    或者 [EJB](../Page/EJB.md "wikilink") CMT 相反。

<!-- end list -->

  - JDBC 抽象层提供了有针对性的异常等级（不再从 SQL 异常中提取原始代码），简化了错误处理，大大减少了程序员的编码量。再次利用
    JDBC 时，你无需再写出另一个'终止'（finally）模块。并且面向 JDBC 的异常与 Spring
    通用[数据访问对象](../Page/数据访问对象.md "wikilink")（Data Access
    Object）异常等级相一致。

<!-- end list -->

  - 以资源容器，[DAO](https://zh.wikipedia.org/wiki/DAO "wikilink")
    实现和事务策略等形式与
    [Hibernate](../Page/Hibernate.md "wikilink")，[JDO](https://zh.wikipedia.org/wiki/Java_Data_Objects "wikilink")
    和 [MyBatis](../Page/MyBatis.md "wikilink") 、[SQL
    Maps](https://zh.wikipedia.org/wiki/SQL_Maps "wikilink")
    集成。利用控制反转机制全面解决了许多典型的 Hibernate
    集成问题。所有这些全部遵从 Spring
    通用事务处理和通用数据访问对象异常等级规范。

<!-- end list -->

  - 灵活的基于核心 Spring 功能的
    [MVC](https://zh.wikipedia.org/wiki/模型-视图-程序控制 "wikilink")
    [网页应用程序框架](https://zh.wikipedia.org/wiki/网页应用程序 "wikilink")。开发者通过策略接口将拥有对该框架的高度控制，因而该框架将适应于多种呈现（View）技术，例如
    [JSP](../Page/JSP.md "wikilink")、[FreeMarker](../Page/FreeMarker.md "wikilink")、[Velocity](../Page/Apache_Velocity.md "wikilink")、[Thymeleaf](../Page/Thymeleaf.md "wikilink")
    等。值得注意的是，Spring 中间层可以轻易地结合于任何基于 MVC 框架的网页层，例如
    [Struts](../Page/Struts.md "wikilink")、[WebWork](https://zh.wikipedia.org/wiki/WebWork "wikilink")
    或
    [Tapestry](https://zh.wikipedia.org/wiki/Tapestry_\(programming\) "wikilink")。

<!-- end list -->

  - 提供诸如事务管理等服务的[AOP框架](https://zh.wikipedia.org/wiki/面向切面编程 "wikilink")。

在设计应用程序 Model
时，[MVC](../Page/MVC.md "wikilink")[模式](../Page/设计模式_\(计算机\).md "wikilink")（例如
[Struts](../Page/Struts.md "wikilink")）通常难于给出一个简洁明了的框架结构。Spring
却具有能够让这部分工作变得简单的能力。程序开发员们可以使用Spring的JDBC抽象层重新设计那些复杂的框架结构。

### [控制反转容器](../Page/控制反转.md "wikilink")（[依赖注入](../Page/依赖注入.md "wikilink")）



### [面向切面编程](https://zh.wikipedia.org/wiki/面向切面编程 "wikilink")



### [处理访问](../Page/数据访问对象.md "wikilink")（DAO层支持）



### [事务管理](../Page/事务处理.md "wikilink")



### [模型-视图-控制器](../Page/MVC.md "wikilink")（MVC）

#### Spring MVC

### [远程访问](https://zh.wikipedia.org/wiki/远程访问服务 "wikilink")

### “[约定大于配置](../Page/约定优于配置.md "wikilink")”的快速应用开发

#### Spring Boot

### [批处理](../Page/批处理.md "wikilink")

#### Spring Batch



### 整合框架

## 相关链接

  - [Spring Framework](http://projects.spring.io/spring-framework/)
      - [Spring Framework API](http://docs.spring.io/spring/docs/)（）
      - <http://www.springframework.org/dtd/spring-beans.dtd>
          - <https://web.archive.org/web/20060428223906/http://www.springframework.org/docs/reference/springbeansdtd.html>
            (as HTML)
  - [Spring Framework .NET](http://www.springframework.net/)

<!-- end list -->

  - [Spring Framework MVC
    Tutorial](https://web.archive.org/web/20060425075408/http://www.springframework.org/docs/MVC-step-by-step/Spring-MVC-step-by-step.html)
  - [Simple Spring
    Demo](https://web.archive.org/web/20150705064622/http://www.drrockit.com/space/Java/Simple%20Spring%20Demo)
  - [Introduction to the Spring Framework by Rod
    Johnson](http://www.theserverside.com/articles/content/SpringFramework/article.html)
  - [The Spring Reference
    Documentation](http://static.springframework.org/spring/docs/1.1.5/spring-reference.pdf)（[PDF](https://zh.wikipedia.org/wiki/Portable_Document_Format "wikilink")，1329
    kb）- Rod Johnson et al. (2004-2005)

<!-- end list -->

  - [SpringHub](http://www.springhub.com/)
  - [Domain Specific Modeling (DSM) in IoC
    frameworks](http://www.theserverside.com/news/thread.tss?thread_id=47546)

## 参考资料

[分类:Java企业平台](https://zh.wikipedia.org/wiki/分类:Java企业平台 "wikilink")

1.  [Jolt winners 2006](http://www.ddj.com/architect/187900423?pgno=10)
2.  [JAX Innovation Award
    Gewinner 2006](http://jax-award.de/jax_award06/gewinner_de.php)
3.