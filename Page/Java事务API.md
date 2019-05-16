**Java事务API**（**Java Transaction API**，简称**JTA** ）
是一个[Java企业版](https://zh.wikipedia.org/wiki/Java_EE "wikilink")
的[应用程序接口](../Page/应用程序接口.md "wikilink")，在[Java环境中](../Page/Java.md "wikilink")，允许完成跨越多个[XA资源的分布式事务](https://zh.wikipedia.org/wiki/X/Open_XA "wikilink")。JTA是在[Java社区过程下制定的规范](../Page/JCP.md "wikilink")，编号JSR
907。JTA提供：

  - 划分事务边界
  - X/Open XA API允许资源参与到事务中。

## X/Open XA体系结构

在X/Open
XA的体系结构中，事务管理器或[事务处理监控器](https://zh.wikipedia.org/wiki/事务处理监控器 "wikilink")
（TP monitor）协调
资源跨越多个资源，如数据库和消息队列，的事务。每一个资源都有自己的管理器。资源管理器通常拥有自己的用于操纵资源的API，例如关系型数据库使用的[JDBC](https://zh.wikipedia.org/wiki/Java_数据库连接 "wikilink")。
此外，资源适配器允许事务管理器协调该资源管理器和其他资源管理器之间的分布式事务。最后，与事务管理器通讯的应用程序开始，提交，或回滚事务。应用程序同样需要使用资源自己的API与不同的资源通讯，修改资源。

## JTA对X/Open XA体系结构的实现

JTA API包括两个Java包下的类：

  -
  -
JTA是以X/Open
XA体系结构为基础设计的，但他定义了两种不同的事务边界划分的API。应用服务器,如[EJB服务器](../Page/EJB.md "wikilink")，与应用组件区别对待。JTA提供了一个接口，，这是供应用服务器自己进行开始，提交或回滚事务使用悳，同时还提供了另外一个接口，这是供一般客户代码，如[Java
Servlet或是EJB管理事务使用的](../Page/Java_Servlet.md "wikilink")。

为了通过事务管理器管理，JTA架构要求每一个资源管理器必须实现接口，如前面所述，每一个资源会有一个自己的特定的API，例如：

  - 关系型数据库使用JDBC
  - 消息服务使用[JMS](../Page/Java消息服务.md "wikilink")
  - 一般的企业信息系统（EIS）的资源使用[J2EE连接器架构](https://zh.wikipedia.org/wiki/J2EE连接器架构 "wikilink")。

## Java事务API

Java事务API由三个部分组成：

  - UserTransaction - 高层的应用事务划分接口，供客户程序使用
  - TransactionManager - 高层的事务管理器接口，供应用服务器使用
  - XAResource，X/Open XA协议的标准Java映射，供事务性资源管理器使用。

### UserTransaction接口

javax.transaction.UserTransaction接口给应用程序提供了编程控制事务边界的能力。该接口可以供Java客户端程序或EJB使用。

UserTransaction的begin方法开始一个全局事务，并将该事务与调用线程关联。事务到线程的管理是由事务管理器完成的，对应用程序透明的。

对嵌套事务的支持不是必须的。如果调用线程的上下文已经与事务关联，并且事务管理器的实现并不支持嵌套的事务，UserTransaction的begin方法调用时将抛出NotSupportedException。

底层的事务管理器的实现负责提供不同应用程序间事务上下文的传播，事务管理器位于客户端和服务器计算机上。
传播的事务上下文的格式由客户端和服务器计算机协商确定。例如，如果事务管理器是JTS规范的实现，将使用CORBA
OTS 1.1规范中描述的事务上下文传播格式。事务上下文的传播对于应用程序来说是透明的。

## EJB服务器对UserTransaction的支持

，[EJB服务器需要支持UserTransaction接口](../Page/EJB.md "wikilink")，以供Bean管理事务的EJB使用。通过EJBContext的getUserTransaction方法，EJB构件可以获取到UserTransaction接口。这样，EJB应用程序不需要与事务管理器直接交互，就可以划分事务边界。取而代之的是EJB依赖于EJB服务器提供EJB规范中定义的所有事务处理。（EJB服务器和事务管理器之间的交互对于应用是透明。实现事务管理的责任是在EJB容器和服务的提供商。\[1\]）

下面的例子说明了Bean管理事务的会话Bean如何使用UserTransaction：

``` java
// 在会话Bean的setSessionContext方法中,
// 将Bean的上下文存放到一个实例变量中

this.ctx = sessionContext;

// 在Bean业务逻辑中
UserTransaction utx = ctx.getUserTransaction();

// 开始一个事务
utx.begin();

// 做一些事情

// 提交
utx.commit();
```

## 从JNDI获取UserTransaction

如果环境中安装了JTA的实现，应可以从`java:comp/UserTransaction`获取UserTransaction。

## Java标准版对UserTransaction的支持

要使用JTA或UserTransaction提供的功能，应用服务器并不是必需的。\[2\]
现存在独立的JTA实现，这样，在普通的Java应用程序中都可以利用JTA/XA带来的可靠性。特别是在与类似[Spring工具一同使用的时候](../Page/Spring_Framework.md "wikilink")，这为开发可靠的Java应用程序提供了不同的范式。

## 开源的JTA实现

到2010年4月为止，JTA的开源实现有：

  - [Bittronix Transaction
    Manager](https://web.archive.org/web/20100414140721/http://docs.codehaus.org/display/BTM/Home)
  - [Atomikos Transactions
    Essentials](http://www.atomikos.com/Main/TransactionsEssentials)
  - [JBossTM](http://www.jboss.org/jbosstm) （以前称作Arjuna）

以上所有事务管理器可以在J2SE环境中使用。

## 参见

  - [Java事务服务](https://zh.wikipedia.org/wiki/Java事务服务 "wikilink")

## 参考文献

## 外部链接

  - [JTA
    specifications](http://www.oracle.com/technetwork/java/javaee/jta/index.html)
  - [JSR 907](http://www.jcp.org/en/jsr/detail?id=907)
  - [Atomikos open source JTA implementation - for JTA in
    J2SE](http://www.atomikos.com/Main/TransactionsEssentials)

[分类:Java](https://zh.wikipedia.org/wiki/分类:Java "wikilink")
[分类:应用程序接口](https://zh.wikipedia.org/wiki/分类:应用程序接口 "wikilink")

1.  [JSR 220: Enterprise JavaBeans,Version 3.0, EJB 3.0 Expert Group,
    Sun
    Microsystems, 2006](http://cds-esd.sun.com/ESD24/JSCDL/ejb/3.0-fr/ejb-3_0-fr-spec-ejbcore.pdf?AuthParam=1269290256_bf79870723e592b88232b28f0bc403bc&TicketId=B%2Fw2nRyGS1lMTR1LO1BbkAHl&GroupName=CDS&FilePath=/ESD24/JSCDL/ejb/3.0-fr/ejb-3_0-fr-spec-ejbcore.pdf&File=ejb-3_0-fr-spec-ejbcore.pdf)
2.  [J2EE Without the Application Server, Guy Pardon, O'Reilly
    Media, 2006](http://www.onjava.com/pub/a/onjava/2006/02/08/j2ee-without-application-server.html)