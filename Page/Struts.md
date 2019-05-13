**Struts**是[Apache软件基金会](../Page/Apache软件基金会.md "wikilink")（ASF）赞助的一个[开源项目](../Page/开源.md "wikilink")。它最初是[Jakarta项目中的一个子项目](../Page/Jakarta项目.md "wikilink")，并在2004年3月成为ASF的顶级项目。它通过采用[Java
Servlet](../Page/Java_Servlet.md "wikilink")／[JSP技术](../Page/JSP.md "wikilink")，实现了基于[Java
EE](../Page/Java_EE.md "wikilink")
[Web应用的Model](../Page/Web.md "wikilink")-View-Controller（[MVC](../Page/MVC.md "wikilink")）[设计模式的](../Page/设计模式.md "wikilink")[应用框架](../Page/軟體框架.md "wikilink")，是MVC经典设计模式中的一个经典产品。

## MVC结构

在Struts中，已经由一个名为*ActionServlet*的Servlet充当
**控制器**（**Controller**）的角色，根据描述模型、视图、控制器对应关系的*struts-config.xml*的配置文件，转发视图（**View**）的请求，组装响应数据模型（**Model**）。在[MVC的](../Page/MVC.md "wikilink")
**模型**（**Model**）部分，经常划分为两个主要子系统（*系统的内部数据状态*与*改变数据状态的逻辑动作*），这两个概念子系统分别具体对应Struts裡的*ActionForm*与*Action*两个需要继承实现超类。在这里，Struts可以与各种标准的数据访问技术结合在一起，包括[Enterprise
Java Beans](../Page/EJB.md "wikilink")（EJB）,
[JDBC与](../Page/JDBC.md "wikilink")[JNDI](../Page/JNDI.md "wikilink")。在Struts的**视图**（**View**）端，除了使用标准的JavaServer
Pages（JSP）以外，还提供了大量的标签库使用，同时也可以与其他表现层组件技术（产品）进行整合，比如Velocity
Templates，XSLT等。通过应用Struts的框架，最终用户可以把大部分的关注点放在自己的业务逻辑（*Action*）与
映射关系的配置文件（*struts-config.xml*）中。

## 发展历程

[Struts2_merger.png](https://zh.wikipedia.org/wiki/File:Struts2_merger.png "fig:Struts2_merger.png")

在[Java
EE的](../Page/Java_EE.md "wikilink")[Web应用发展的初期](../Page/Web.md "wikilink")，除了使用Servlet技术以外，普遍是在JavaServer
Pages（[JSP](../Page/JSP.md "wikilink")）的源代码中，采用[HTML与](../Page/HTML.md "wikilink")[Java代码混合的方式进行开发](../Page/Java.md "wikilink")。因为这两种方式不可避免的要把表现与业务逻辑代码混合在一起，都给前期开发与后期维护带来巨大的复杂度。为了摆脱上述的约束与局限，把业务逻辑代码从表现层中清晰的分离出来，2000年，Craig
McClanahan采用了[MVC的设计模式开发Struts](../Page/MVC.md "wikilink")。后来该框架产品一度被认为是最广泛、最流行JAVA的WEB应用框架。

2006年，[WebWork与Struts的](../Page/WebWork.md "wikilink")[Java
EE](../Page/Java_EE.md "wikilink")
Web[框架的团体](../Page/软件框架.md "wikilink")，决定合作共同开发一个新的，整合了[WebWork与Struts优点](../Page/WebWork.md "wikilink")，并且更加优雅、扩展性更强的框架，命名为“**Struts
2**”，原Struts的1.x版本产品称为“Struts 1”。Struts项目并行提供与维护两个主要版本的框架产品——Struts
1与[Struts 2](../Page/Struts2.md "wikilink")。

在2008年12月，Struts1发布了最后一个正式版（1.3.10），而2013年4月5日，Struts开发组宣布终止了Struts
1的[软件开发周期](../Page/软件开发周期.md "wikilink")。\[1\]

## 优缺点

Struts的优点主要集中体现在两个方面，Taglib和页面导航。Taglib是Struts的标记库，灵活动用，能大大提高开发效率。

Struts这个名字来源于在建筑和旧式飞机中使用的支持金属架。它的目的是为了减少在运用MVC设计模型来开发Web应用的时间。你仍然需要学习和应用该架构，不过它将可以完成其中一些繁重的工作。Struts跟Tomcat、Turbine等诸多Apache项目一样，是开源软件，这是它的一大优点，使开发者能更深入的了解其内部实现机制。

Struts2的漏洞处理机制常被诟病，一来OGNL的功能强大和请求处理机制极易产生远程执行问题，二来开发组对漏洞处理能力不足，要么修复后仍可以绕过，要么无法修复而长期闲置处理。\[2\]

## 参考文献

## 外部链接

  - <http://struts.apache.org> Struts官方站点
  - <http://www.apache.org>
    [Apache软件基金会官方站点](../Page/Apache软件基金会.md "wikilink")
  - <https://web.archive.org/web/20061228123120/http://struts.apache.org/2.x/>
    Struts 2官方站点

## 参见

  - [Struts2](../Page/Struts2.md "wikilink")
  - [MVC设计模式](../Page/MVC.md "wikilink")
  - [Apache软件基金会](../Page/Apache软件基金会.md "wikilink")
  - [J2EE](../Page/J2EE.md "wikilink")

{{-}}

[Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink")
[Category:網站開發](https://zh.wikipedia.org/wiki/Category:網站開發 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:Java企业平台](https://zh.wikipedia.org/wiki/Category:Java企业平台 "wikilink")
[Category:Web应用框架](https://zh.wikipedia.org/wiki/Category:Web应用框架 "wikilink")
[Category:MVC](https://zh.wikipedia.org/wiki/Category:MVC "wikilink")

1.
2.