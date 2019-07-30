**JMX**（，即Java管理扩展）是[Java](../Page/Java.md "wikilink")平台上为应用程序、设备、系统等植入管理功能的框架。JMX可以跨越一系列异构[操作系统](../Page/操作系统.md "wikilink")平台、系统[体系结构和](https://zh.wikipedia.org/wiki/体系结构 "wikilink")[网络传输协议](../Page/网络传输协议.md "wikilink")，灵活的开发无缝集成的系统、网络和服务管理应用。

## 托管Bean

**托管Bean**（，**MBean**）是一种通过[依赖注入](../Page/依赖注入.md "wikilink")创建的[JavaBean](https://zh.wikipedia.org/wiki/JavaBean "wikilink")。托管Bean主要用在Java管理扩展技术中。在Java EE 6的规范中，对托管Bean做了更具体的规定。

MBean代表了运行在[Java虚拟机](../Page/Java虚拟机.md "wikilink")上的资源，例如应用程序或Java EE服务（事务监控、JDBC驱动程序等）。其可以用于收集如性能、资源使用率、问题信息等关键的统计信息（通过），获取或设置应用程序的配置或属性（通过[推送或](https://zh.wikipedia.org/wiki/推送 "wikilink")），以及对故障或状态变化等的通知事件（通过[推送](https://zh.wikipedia.org/wiki/推送 "wikilink")）。

Java EE 6规定，托管Bean是一种[Bean类](../Page/JavaBeans.md "wikilink")。如果一个Java的外部类被其他Java EE规范（例如[JavaServer Faces规范](../Page/JavaServer_Faces.md "wikilink")）定义为托管Bean，或者它满足下述所有条件，那么这个类就是一个托管Bean：

1.  它不是一个非静态内部类。
2.  它是一个具体类，或者是被`@Decorator`[注解](https://zh.wikipedia.org/wiki/Java_注解 "wikilink")。
3.  它没有被EJB组件定义[注解](https://zh.wikipedia.org/wiki/Java_注解 "wikilink")[注解](https://zh.wikipedia.org/wiki/Java_注解 "wikilink")，或在`ejb-jar.xml`中被声明为[EJB](../Page/EJB.md "wikilink") Bean类。

定义托管Bean时无需特殊的声明（如[注解等](https://zh.wikipedia.org/wiki/Java_注解 "wikilink")）。

一个实现了`javax.management.NotificationEmitter`的MBean，其内部的变化（针对属性）可以通知MBeanServer。对MBean的变化感兴趣的应用程序可以注册一个到MBeanServer的监听器（`javax.management.NotificationListener`）。注意，JMX并不保证所有通知都会被监听器接收。\[1\]

### 类型

有两种基本类型的MBean：

  - 标准MBean（Standard MBeans）：实现了业务接口，其包含属性的getter和setter和操作（即[方法](../Page/方法_\(電腦科學\).md "wikilink")）。
  - 动态MBean（Dynamic MBeans）：实现javax.management.DynamicMBean接口，其提供了列出属性和操作，以及获取和设置属性值的方式。

附加的类型有开放MBean（Open MBeans）、模型MBean（Model MBeans）和监视器MBean（Monitor MBeans）。 开放MBean是限定为基本数据类型的动态MBean，因而可移植性较好。 模型MBean是可以在运行期间配置的动态MBean。一般的MBean类也提供了用于在程序运行期间动态地配置资源的功能。

MXBean（Platform MBean，平台MBean）是一种特殊类型的MBean，它了[Java虚拟机](../Page/Java虚拟机.md "wikilink")子系统，例如[垃圾回收](../Page/垃圾回收_\(計算機科學\).md "wikilink")、[即时编译](https://zh.wikipedia.org/wiki/即时编译 "wikilink")、[内存池](https://zh.wikipedia.org/wiki/内存池 "wikilink")、[多线程等](../Page/线程.md "wikilink")。

MLet（Management applet，管理小程序）是一个实用程序MBean，在MBeanServer用来从[XML](../Page/XML.md "wikilink")描述中加载、实例化和注册MBean。这种XML描述符的格式是：\[2\]

```
 <MLET CODE = ''class'' | OBJECT = ''serfile''
   ARCHIVE = ''archiveList''
   [CODEBASE = ''codebaseURL'']
   [NAME = ''objectName'']
   [VERSION = ''version'']
 >
   [arglist]
 </MLET>
```

## 参见

  - [SNMP,JMX](https://zh.wikipedia.org/wiki/SNMP,JMX "wikilink")
  - [J2EE](https://zh.wikipedia.org/wiki/J2EE "wikilink")

## 参考文献

## 外部链接

  - [JMX官方网站](http://java.sun.com/javase/technologies/core/mntr-mgmt/javamanagement/)

[Category:Java_API](https://zh.wikipedia.org/wiki/Category:Java_API "wikilink") [Category:Java企业平台](https://zh.wikipedia.org/wiki/Category:Java企业平台 "wikilink") [Category:Java规范请求](https://zh.wikipedia.org/wiki/Category:Java规范请求 "wikilink") [Category:网络管理](https://zh.wikipedia.org/wiki/Category:网络管理 "wikilink")

1.  [Java Management Extensions (JMX) - Best Practices](http://www.oracle.com/technetwork/java/javase/tech/best-practices-jsp-136021.html)
2.