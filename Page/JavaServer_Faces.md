**JavaServer
Faces**（**JSF**）是一个为[网络应用程序构建](../Page/网络应用程序.md "wikilink")[基于组件的](https://zh.wikipedia.org/wiki/基于组件的软件工程 "wikilink")[用户界面的](../Page/用户界面.md "wikilink")[Java规范](../Page/Java.md "wikilink")\[1\]，并已通过[JCP格式化为](../Page/JCP.md "wikilink")[Java
EE的一部分](https://zh.wikipedia.org/wiki/Java_EE "wikilink")。它也是一个[MVC](../Page/MVC.md "wikilink")
[Web应用框架](../Page/Web应用框架.md "wikilink")，通过在页面中使用可重用的UI组件简化了基于服务器的应用程序的[用户界面](../Page/用户界面.md "wikilink")（UI）。\[2\]

## 版本

  - JSF 2.2 (2013-04-16) — JSF 2.2 introduced new concepts like
    stateless views, page flow and the ability to create portable
    resource contracts.
  - JSF 2.1 (2010-10-22) — Maintenance release of 2.0. Only very minor
    amount of spec changes.
  - JSF 2.0 (2009-06-28) — Major release for ease of use, enhanced
    functionality, and performance. Coincides with [Java
    EE](https://zh.wikipedia.org/wiki/Java_Platform,_Enterprise_Edition "wikilink")
    6.
  - JSF 1.2 (2006-05-11) — 核心系统和API改进. Coincides with [Java
    EE](https://zh.wikipedia.org/wiki/Java_Platform,_Enterprise_Edition "wikilink")
    5. Initial adoption into Java EE.
  - JSF 1.1 (2004-05-27) — 错误修复,没有更改规范.
  - JSF 1.0 (2004-03-11) — 初始规范发布.

## 技术的主要组件

为了展现UI组件和管理它们的状态；操作事件、服务器端的确认和数据变换；定义页面导航；支持[国际化和可访问性](https://zh.wikipedia.org/wiki/国际化 "wikilink")；提供对所有特性的可扩展性的[API为了在](https://zh.wikipedia.org/wiki/API "wikilink")[JSP中表示UI组件和拍发组件给服务器端对象的两个JSP自定义tag库](../Page/JSP.md "wikilink")。

## JavaServer Faces技术好处

引入了基于组件和[事件驱动的开发模式](../Page/事件驅動程式設計.md "wikilink")，使开发人员可以使用类似于处理传统界面的方式来开发Web应用程序。提供了行为与表达的清晰分离。
不用特别的[脚本语言或者](../Page/脚本语言.md "wikilink")[标记语言来连接UI组件和Web层](https://zh.wikipedia.org/wiki/标记语言 "wikilink")。JSF技术API被直接分层在[Servlet](https://zh.wikipedia.org/wiki/Servlet "wikilink")
API的顶端。 技术为管理组件状态提供一个丰富的体系机构、处理组件数据、确认用户输入和操作事件。

## JavaServer Faces应用程序

典型的JSF应用程序包含下列部分：

:\*一组JSP页面

:\*一组后台bean（为在一个页面上的UI组件定义的属性和函数的JavaBean组件）

:\*应用程序配置资源文件（定义页面导航规则、配置bean和其它的自定对象，如自定义组件）

:\*部署描述文件（web.xml）

:\*一组由应用程序开发者创建的自定义对象（有可能）

:\*一些可能包含自定义组件、约束、转换器或者监听器的对象

:\*为在页面中表现自定义对象的一组自定义tag
包含JSP页面的JSF应用程序也使用由为了表现UI组件和在页面上的其他对象的JSF技术而定义的标准的tag库。

## JavaServer Faces应用程序开发角色

页面作者：使用JSF标记库创建页面。
应用程序开发者：编写自定义转换器、约束、监听器和后台bean。
组件作者：创建自定义UI组件和实施者（renderer）。
应用程序建造者：配置应用程序，包括定义导航规则、配置自定义对象和创建部署描述文件。

## 参见

  - [J2EE](https://zh.wikipedia.org/wiki/J2EE "wikilink")
  - [Struts](../Page/Struts.md "wikilink")

## 参考资料

## 外部链接

  - [Brief
    review](http://www.theserverside.com/tt/articles/article.tss?l=JavaEE6Overview)
    on the latest changes to JSF 2.0 to be reflected in Java EE 6

  - [Cloud Tutorial - JavaServer Faces in a
    Day](http://www.turngeek.press/jsfinaday) JSF Tutorial that embraces
    the use of a Cloud IDE to let you learn the fundamentals of JSF in
    just one day

  - [Core Servlets JSF
    Tutorials](http://www.coreservlets.com/JSF-Tutorial/) Tutorials with
    Source Code

  - [ICEfaces](http://www.icesoft.org) Official site of the ICEfaces
    Open Source Project

  - [James Holmes' JSF
    Resources](http://www.jamesholmes.com/JavaServerFaces/) Extensive
    listing of JSF articles, blog entries, tutorials, and more

  - [Java EE 4 Tutorial](http://java.sun.com/j2ee/1.4/docs/tutorial/doc)
    [Chapter 17: JavaServer Faces
    Technology](http://java.sun.com/j2ee/1.4/docs/tutorial/doc/JSFIntro.html)

  - [Java EE 5
    Tutorial](http://java.sun.com/javaee/5/docs/tutorial/doc/)
    [Chapter 10: JavaServer Faces
    Technology](http://download.oracle.com/javaee/5/tutorial/doc/bnaph.html)

  - [Java EE 6
    Tutorial](http://java.sun.com/javaee/6/docs/tutorial/doc/)
    [Chapter 4: JavaServer Faces
    Technology](http://download.oracle.com/javaee/6/tutorial/doc/bnaph.html)

  - [Java EE 7
    Tutorial](https://web.archive.org/web/20130816012958/http://docs.oracle.com/javaee/7/tutorial/doc/home.htm)
    [Chapter 7: JavaServer Faces
    Technology](https://docs.oracle.com/javaee/7/tutorial/jsf-intro.htm)

  - [JSF Central](http://www.jsfcentral.com/) JavaServer Faces Community

  - [JSF
    Matrix](https://web.archive.org/web/20071025100203/http://www.jsfmatrix.net/)
    listing various JSF implementations and their features

  - [JSF Tutorial
    Sitenol](http://www.sitenol.com/java-server-faces-jsf-tutorial-with-examples)
    JSF tutorials, examples and good email support for coding problems

  - [JSF Tutorials
    Memorynotfound](https://web.archive.org/web/20150810230104/http://memorynotfound.com/category/java/jsf/)
    JSF tutorials, Code Examples, Best Practices

  - [JSF Tutorials, Examples and Articles
    catalog](https://web.archive.org/web/20180720072828/http://www.jsftutorials.net/)

  - [JSR 276](http://www.jcp.org/en/jsr/detail?id=276) Design-Time
    [Metadata](https://zh.wikipedia.org/wiki/Metadata "wikilink") for
    JavaServer Faces Components

  - JSF在java.net上的项目页面

  - [PrimeFaces](http://www.primefaces.org) Official site PrimeFaces

[Category:Java企业平台](https://zh.wikipedia.org/wiki/Category:Java企业平台 "wikilink")
[Category:Java规范请求](https://zh.wikipedia.org/wiki/Category:Java规范请求 "wikilink")
[Category:網站開發](https://zh.wikipedia.org/wiki/Category:網站開發 "wikilink")

1.  [JavaServer Faces
    Technology](http://www.oracle.com/technetwork/java/javaee/javaserverfaces-139869.html)
2.